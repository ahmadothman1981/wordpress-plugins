<?php get_header(); 
 while(have_posts()){
    the_post(); 
    pageBanner();
    ?>
 
<div class="container container--narrow page-section">
    
    <div class="generic-content" >
       <div class="row group">
        <div class="one-third"> 
            <?php the_post_thumbnail('professorPortrait'); ?> 
        </div>
        <div class="two-thirds">
            <?php
                $likeCount = new WP_Query(array(
                    'post_type' => 'like',
                    'meta_query' => array(
                        array(
                            'key' => 'liked_professor_id',
                            'compare' => '=',
                            'value' => get_the_ID(),
                        )
                    )
                ));
                
                $existStatus = 'no';
                $existLikeID = '';
                if(is_user_logged_in()) {
                    $existQuery = new WP_Query(array(
                        'author' => get_current_user_id(),
                        'post_type' => 'like',
                        'meta_query' => array(
                            array(
                                'key' => 'liked_professor_id',
                                'compare' => '=',
                                'value' => get_the_ID(),
                            )
                        )
                    ));
                    
                    if($existQuery->found_posts) {
                        $existStatus = 'yes';
                        $existLikeID = $existQuery->posts[0]->ID;  
                    }  
                }
            ?>
            <span class="like-box" 
                  data-like="<?php echo $existLikeID; ?>" 
                  data-professor="<?php the_ID(); ?>" 
                  data-exists="<?php echo $existStatus; ?>"> 
                <i class="fa fa-heart-o" aria-hidden="true"></i>
                <i class="fa fa-heart" aria-hidden="true"></i>
                <span class="like-count"><?php echo $likeCount->found_posts; ?></span>
            </span>  
            
            <?php the_content(); ?>
            
        </div>
       </div>
    </div>
    <?php
    $relatedProgram = get_field('related_program');
    if($relatedProgram) {
        echo '<hr class="section-break">';
        echo '<h3 class="headline headline--small">Teaching Subject:</h3>';
        echo "<ul class='link-list min-list'>";
        foreach ($relatedProgram as $program) { ?>
            <li><a href="<?php echo get_the_permalink($program); ?>"><?php echo get_the_title($program); ?></a></li>
        <?php } 
        echo "</ul>";
    }
    ?>
</div>
<hr>
<?php }
get_footer();
?>
