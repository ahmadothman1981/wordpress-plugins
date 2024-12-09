<?php 
get_header();
pageBanner(array(
    'title'=>' All Events',
    'subtitle' =>' All Events in our Blog all over the world'));
?>

<div class="container container--narrow page-section">
  <?php 

  while(have_posts()) {
    the_post();
    get_template_part('template-parts/event');
     
    }
   echo paginate_links();
   ?>
   <hr class="section-break">
  <p>Looking for <a href="<?php  echo site_url('/past-events')?> ">Past Events</a></p>
</div>
<?php
get_footer();
?>