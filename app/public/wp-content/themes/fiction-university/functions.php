<?php 
require get_theme_file_path('/include-files/search-routes.php');
require get_theme_file_path('/include-files/like-route.php');

//custom rest api property
function university_custom_rest()
{
    register_rest_field('post','authorName',array(
        'get_callback' => function (){return get_the_author();}
    ));
    
     register_rest_field('note','userNoteCount',array(
        'get_callback' => function (){return count_user_posts(get_current_user_id(),'note');}
    ));
}
add_Action('rest_api_init','university_custom_rest');
// Page Banner Function
function pageBanner($data = []) {
    $data = array_merge([
        'title' => get_the_title(),
        'subtitle' => get_field('field_banner_subtitle'),
        'photo' => get_theme_file_uri('images/ocean.jpg')
    ], $data);
    
    if (get_field('page_banner_background_image')) {
        $data['photo'] = get_field('page_banner_background_image')['sizes']['pageBanner'];
    }
    ?>
    <div class="page-banner">
        <div class="page-banner__bg-image" style="background-image: url(<?php echo $data['photo']; ?>)"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title"><?php echo $data['title']; ?></h1>
            <div class="page-banner__intro">
                <p><?php echo $data['subtitle']; ?></p>
            </div>
        </div>
    </div>
    <?php 
}

// Enqueue Scripts and Styles
function university_files() {
    wp_enqueue_script('google-maps-api', 'https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap', array(), null, true);
    wp_enqueue_script('main-university-js', get_theme_file_uri('/build/index.js'), array('jquery'), '1.0', true);
    
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('university_main_styles', get_theme_file_uri('/build/style-index.css'));
    wp_enqueue_style('university_extra_styles', get_theme_file_uri('/build/index.css'));
    
    //make root url flexable function take 3 params 1-
    wp_localize_script('main-university-js','universityData',array(
        'root_url' =>get_site_url(),
        'nonce' => wp_create_nonce('wp_rest'), 
        
    ));
}
add_action('wp_enqueue_scripts', 'university_files');

// Add Theme Support and Custom Image Sizes
function university_features() {
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_image_size('professorLandscape', 400, 260, true);
    add_image_size('professorPortrait', 480, 650, true);
    add_image_size('pageBanner', 1500, 350, true);
}
add_action('after_setup_theme', 'university_features');

// Adjust Queries for Custom Post Types
function university_adjust_queries($query) {
    if (!is_admin() && $query->is_main_query()) {
        if (is_post_type_archive('program')) {
            $query->set('orderby', 'title');
            $query->set('order', 'ASC');
            $query->set('posts_per_page', -1);
        }
        
        if (is_post_type_archive('campus')) {
            $query->set('posts_per_page', -1);
        } 
        
        if (is_post_type_archive('event')) {
            $today = date('Ymd');
            $query->set('meta_key', 'event_date');
            $query->set('orderby', 'meta_value_num');
            $query->set('order', 'ASC');
            $query->set('meta_query', array(
                array(
                    'key' => 'event_date',
                    'compare' => '>=',
                    'value' => $today,
                    'type' => 'numeric'
                )
            ));
        }
    }
}
add_action('pre_get_posts', 'university_adjust_queries');

// Enqueue Google Maps Script with Async and Defer
function enqueue_google_maps_script() {
    wp_enqueue_script(
        'google-maps-api',
        'https://maps.googleapis.com/maps/api/js?key=//google api key here//',
        array(),
        null,
        true
    );
}
add_action('wp_enqueue_scripts', 'enqueue_google_maps_script');

function add_async_defer_attributes($tag, $handle) {
    if ('google-maps-api' !== $handle) {
        return $tag;
    }
    return str_replace(' src', ' async defer src', $tag);
}
add_filter('script_loader_tag', 'add_async_defer_attributes', 10, 2);

// Google Maps API Key for ACF
function universityMapKey($api) {
    $api['key'] = '//google api key here';
    return $api;
}
add_filter('acf/fields/google_map/api', 'universityMapKey');


//redirect subscribers logout to homepage


function noSubAdminBar() {
    $ourCurrentUser = wp_get_current_user();
    
    if (count($ourCurrentUser->roles) == 1 && in_array('subscriber', $ourCurrentUser->roles)) {
        show_admin_bar(false);
       
    }
}
add_action('wp_loaded', 'noSubAdminBar');

//customize login screen 

add_filter('login_headerurl' , 'OurHeaderUrl');

function OurHeaderUrl()
{
    return esc_url(site_url('/'));
}

//force note posts to be private

add_filter('wp_insert_post_data', 'makeNotePrivate' , 10 , 2);

function makeNotePrivate($data , $postarr) {
    
    if($data['post_type'] == 'note')
    {
        if(count_user_posts(get_current_user_id(),'note')> 4 AND !$postarr['ID'])
        {
            die("you have reached you notes limit");
        }
        $data['post_content'] = sanitize_textarea_field($data['post_content']);
        $data['post_title'] = sanitize_text_field($data['post_title']);
    }
  if($data['post_type'] == 'note' AND $data['post_status'] != 'trash') {
    $data['post_status'] = "private";
  }
  
  return $data;
}

/*
 * function OurLoginCss()
{
    wp_enqueue_style('login-styles', get_theme_file_uri('/css/modules/login.css'));
    wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('font-awesome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('university_main_styles', get_theme_file_uri('/build/style-index.css'));
    wp_enqueue_style('university_extra_styles', get_theme_file_uri('/build/index.css'));
}

add_action('login_enqueue_script','OurLoginCss');
*/
