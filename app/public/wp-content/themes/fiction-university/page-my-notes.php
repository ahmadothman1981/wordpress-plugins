<?php 

if(! is_user_logged_in())
{
   wp_redirect(esc_url(site_url('/')));
   
   exit;
}


get_header();?>

<?php

 while(have_posts()){
    the_post();
    pageBanner();
       
    
       
    ?>
    
   

    <div class="container container--narrow page-section">
        
        <div class="create-note">
            <h2 class="headline headline--medium">Create Note</h2>
            <input placeholder="Title" class="new-note-title">
            <textarea placeholder="Your Note Here ...." class="new-note-body"></textarea>
            <span class="submit-note">Create Note</span>
            <span class="note-limit-message"> Note:: Limits Reached The limit  </span>
        </div>
        <ul class="min-list link-list" id="my-notes">
            <?php 
            $userNotes = new WP_Query(array(
                'post_type' => 'note',
                'post_per_page' =>-1, // negative brings all posts
                'author' => get_current_user_id(),
            ));
            
            while($userNotes->have_posts())
            {
                $userNotes->the_post();?>
            <li data-id ="<?php the_ID();?>">
                <input class="note-title-field" readonly value="<?php echo str_replace('Private: ', '', esc_attr(get_the_title()))?>">
                <span class="edit-note"><i class="fa fa-pencil" area-hidden="true">Edit</i></span>
                <span class="delete-note"><i class="fa fa-trash-o" area-hidden="true">Delete</i></span>

                <textarea class="note-body-field" readonly> <?php echo esc_textarea(wp_strip_all_tags(get_the_content())); ?></textarea>
            
                <span class="update-note btn btn--blue btn--small"><i class="fa fa-arrow-right" area-hidden="true">Save</i></span>
                
            </li>
         <?php   }
            ?>
        </ul>
    </div>
    
<?php }
get_footer();
?>
