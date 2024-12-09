<?php 
get_header();
pageBanner(array(
    'title'=> 'Past Events',
    'subtitle'=> 'Our Past Events in our Blog'
));
?>

<div class="container container--narrow page-section">
  <?php 
     $today = date('Ymd');
    $pastEvents = new WP_Query(array(
        'paged' =>get_query_var('paged',1),
        
        'post_type' => 'event' ,
        'meta_key' => 'event_date', //theses tree argument to display events with there custom field date ascending
        'orderby' =>'meta_value_num',//meta_value means the data associated with the post which means custom field,meta_key point to the custom field
        'order' => 'ASC',
        'meta_query' => array(//to display events date greater than today
            array(
                'key' => 'event_date',
                'compare' => '<',
                'value' => $today,
                'type' => 'numeric'
            ))
        
    ));
  while($pastEvents->have_posts()) {
    $pastEvents->the_post();
    get_template_part('template-parts/event');
     
  }
   echo paginate_links(
       array(
           'total' => $pastEvents->max_num_pages,
       ));
   ?>
  
</div>
<?php
get_footer();
?>