<?php
get_header();
pageBanner(array(
    'title'=> 'All Campus all over the world',
    'subtitle' =>' Have a look around to check all our campus all over the world. '
));
?>

<div class="container container--narrow page-section">
    <div class="acf-map">
        <?php 
        while(have_posts()) {
            the_post();
            $mapLocation = get_field('map_location'); ?>
            <div class="marker" data-lat="<?php echo esc_attr($mapLocation['lat']); ?>" data-lng="<?php echo esc_attr($mapLocation['lng']); ?>">
                <h3><a href="<?php the_permalink();?>"><?php the_title(); ?></a></h3>
                <?php echo $mapLocation['address'];?>
            </div>
        <?php }  ?>
       
       
    </div>
</div>

<script src="<?php echo get_theme_file_uri('/js/GoogleMap.js'); ?>"></script>

<?php get_footer(); ?>
