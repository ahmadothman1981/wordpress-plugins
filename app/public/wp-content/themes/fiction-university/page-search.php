<?php get_header();?>

<?php

 while(have_posts()){
    the_post();
    pageBanner();
       
    
       
    ?>
   
  

    <div class="container container--narrow page-section">
        <?php 
        $theParent = wp_get_post_parent_id(get_the_ID());
        if($theParent)
        {?>
            <div class="metabox metabox--position-up metabox--with-home-link">
            <p>
              <a class="metabox__blog-home-link" href="<?php echo get_permalink($theParent ) ?>"><i class="fa fa-home" aria-hidden="true">
    
              </i>Back to <?php echo get_the_title($theParent); ?></a>
               <span class="metabox__main"><?php the_title(); ?></span>
            </p>
          </div>
          <?php 
        }
        
        ?>
      <?php
      
      get_the_title($theParent); ?>

        <?php
        // variable to test if page has a parent this is all to display the side list or not using if statement 
        $testArray = get_pages(array(
          'child_of' => get_the_ID()
        )); 
       
        if($theParent or $testArray) {?>
      <div class="page-links">
        <h2 class="page-links__title"><a href="<?php echo get_permalink($theParent) //display the parent permalink ?>"><?php echo get_the_title($theParent); //display the parent title ?></a></h2>
        <ul class="min-list">
         <?php 
         if($theParent){
            $findChildrenOf = $theParent;
         }else{
            $findChildrenOf = get_the_ID();
         }
         
         wp_list_pages(
          array(
            'title_li' => NULL, // remove the default title
            'child_of' => $findChildrenOf, // specify the children of this page
            'sort_column' => 'menu_order' // sort by menu order so we can display the menu in the correct order you can go to edit page from dashboard and change page order manually 
          )
           ); ?>
        </ul>
      </div>
      <?php } ?>
      <div class="generic-content">
      <?php get_search_form();?>
      </div>
    </div>
    
<?php }
get_footer();
?>