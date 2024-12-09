<?php 

add_action('rest_api_init', 'universityLikeRoutes');

function universityLikeRoutes() {
    register_rest_route('university/v1', 'manageLike', array(
        'methods' => 'POST',
        'callback' => 'createLike',
    ));
    
    register_rest_route('university/v1', 'manageLike', array(
        'methods' => 'DELETE',
        'callback' => 'deleteLike',
    ));
}

function createLike($data) {
    if (is_user_logged_in()) {
        $professorId = sanitize_text_field($data['professorId']);
        
        $existQuery = new WP_Query(array(
            'author' => get_current_user_id(),
            'post_type' => 'like',
            'meta_query' => array(
                array(
                    'key' => 'liked_professor_id',
                    'compare' => '=',
                    'value' => $professorId,
                )
            )
        ));
        
        if ($existQuery->found_posts == 0) {
            return wp_insert_post(array(
                'post_type' => 'like',
                'post_status' => 'publish',
                'post_title' => 'test like',
                'meta_input' => array(
                    'liked_professor_id' => $professorId
                )
            ));
        } else {
            return new WP_Error('invalid', 'You have already liked this professor.', array('status' => 400));
        }

    } else {
        return new WP_Error('unauthorized', 'You must be logged in to like a professor.', array('status' => 401));
    }
}

function deleteLike($data) {
    $likeID = sanitize_text_field($data['like']);
    
    if (get_current_user_id() == get_post_field('post_author', $likeID) && get_post_type($likeID) == 'like') {
        wp_delete_post($likeID, true);
        return 'Like successfully deleted';
    } else {
        return new WP_Error('permission_denied', 'You do not have permission to delete this like.', array('status' => 403));
    }
}

