<?php get_header(); 
 while(have_posts()){
    the_post(); 
    pageBanner();
    ?>
 
<div class="container container--narrow page-section">
    <div class="metabox metabox--position-up metabox--with-home-link">
            <p>
              <a class="metabox__blog-home-link" href="<?php  echo get_post_type_archive_link('program') ?>"><i class="fa fa-home" aria-hidden="true">
    
              </i>Program Home </a>
               <span class="metabox__main"><?php the_title(); ?></span>
            </p>
          </div>
    <div class="generic-content" >
        <?php the_field('main_body_content'); ?>
    </div>
    
     <?php
     $relatedProfessor = new WP_Query(array(
         'posts_per_page' => -1,
         'post_type' => 'professor' ,
         'orderby' =>'title',
         'order' => 'ASC',
         'meta_query' => array(
             array(
                 'key' =>'related_program',
                 'compare'=>'like',
                 'value' =>'"'. get_the_ID() . '"' //double qutation to serilize the id to database,
             )
             
             
         )
     ));
     if($relatedProfessor->have_posts())
     {
         echo '<hr class="section-break ">';
         echo '<h2 class= "headline headline--small">'  ." ".  get_the_title() ." ".  'Professors </h2>';
         echo '<ul class="professor-cards">';
         while($relatedProfessor->have_posts())
         {
             $relatedProfessor->the_post(); ?>
             
               <li class="professor-card__list-item" >
               <a class="professor-card" href="<?php the_permalink();?>">
               <img class="professor-card__image" src="<?php the_post_thumbnail_url('professorLandscape');?>"> 
               <span class="professor-card__name"><?php the_title();?></span>
               </a>
               </li>
               
          <?php
          }
            echo '</ul>';
         }
     
         wp_reset_postdata();//to reset data to refresh the posts if there is new posted published
         
     
            $today = date('Ymd');
           $homepageEvents = new WP_Query(array(
              'posts_per_page' => 2,
              'post_type' => 'event' ,
              'meta_key' => 'event_date', //theses tree argument to display events with there custom field date ascending
              'orderby' =>'meta_value_num',//meta_value means the data associated with the post which means custom field,meta_key point to the custom field  
              'order' => 'ASC',
              'meta_query' => array(//to display events date greater than today
                array(
                    'key' => 'event_date',
                    'compare' => '>=',
                    'value' => $today,
                    'type' => 'numeric'
              ),
                  array(
                      'key' =>'related_program',
                      'compare'=>'like',
                      'value' =>'"'. get_the_ID() . '"' //double qutation to serilize the id to database,
                  )
              
              
              )
          ));
         if($homepageEvents->have_posts())
         {
             echo '<hr class="section-break ">';
             echo '<h2 class= "headline headline--small">Up Coming'  ." ".  get_the_title() ." ".  'Events </h2>';
             while($homepageEvents->have_posts())
             {
                 $homepageEvents->the_post(); 
                get_template_part('template-parts/event');
         
          }
            wp_reset_postdata();//to reset data to refresh the posts if there is new posted published 
      
         }
         
         $relatesCampus = get_field('related_campus');
         
         if($relatesCampus)
         {
             echo '<hr>';
             echo '<h2 class="headline headline--small">'. get_the_title() . ' Available in this Campus'.'</h2>'; 
             echo '<ul class = "min-list link-list">';
             foreach($relatesCampus as $campus)
             {?>
               <li><a href="<?php echo get_the_permalink($campus);?>"><?php echo get_the_title($campus);?></a></li>  
             <?php } 
             
             echo '</ul>';
         }
         
         
          ?>
</div>
    <hr>
   
<?php }
get_footer();
?>