<?php

// create a new post type added to dashboard 
function university_post_type()
{
    //create event post type
    register_post_type('event',array(
        'show_in_rest' => true,
        'capability_type' =>'event',
        'map_meta_cap' =>true ,
        'supports' => array('title', 'editor', 'excerpt', 'thumbnail', 'comments'),
        'rewrite' => array('slug' =>'events'),
        'has_archive' => true,// register achive page 
        'public' => true,
        'labels' => array(
            'name' =>'Events',
            'name_admin_bar' => 'Event',
            'add_new' => 'Add New Event',
            'add_new_item' => 'Add New Event',
            'edit_item' => 'Edit Event',
            'all_items' => 'All Events',
            'singular_name' => 'Event',
        ),
       
        'menu_icon' => 'dashicons-calendar-alt', 
    ));
    
    //create program post type
    
    register_post_type('program',array(
        'show_in_rest' => true,
        'supports' => array('title',  'thumbnail', 'comments'),
        'rewrite' => array('slug' =>'programs'),
        'has_archive' => true,// register archive page
        'public' => true,
        'labels' => array(
            'name' =>'Programs',
            'name_admin_bar' => 'Program',
            'add_new' => 'Add New Program',
            'add_new_item' => 'Add New Program',
            'edit_item' => 'Edit Program',
            'all_items' => 'All Programs',
            'singular_name' => 'Program',
        ),
        
        'menu_icon' => 'dashicons-awards',
    ));
    
    //create  proffessors post type
    
    register_post_type('professor',array(
        'show_in_rest' => true,
        'supports' => array('title', 'editor', 'thumbnail', 'comments'),
        'public' => true,
        'labels' => array(
            'name' =>'professors',
            'name_admin_bar' => 'professor',
            'add_new' => 'Add New professor',
            'add_new_item' => 'Add New professor',
            'edit_item' => 'Edit professor',
            'all_items' => 'All professors',
            'singular_name' => 'professor',
        ),
        
        'menu_icon' => 'dashicons-welcome-learn-more',
    ));
    
    //create campus  post type
    
    register_post_type('campus',array(
        'capability_type' => 'campus',
        'map_meta_cap' => true,
        'show_in_rest' => true,
        'supports' => array('title', 'editor', 'excerpt', 'thumbnail', 'comments'),
        'rewrite' => array('slug' =>'Campuses'),
        'has_archive' => true,// register achive page
        'public' => true,
        'labels' => array(
            'name' =>'Campues',
            'name_admin_bar' => 'Campus',
            'add_new' => 'Add New Campus',
            'add_new_item' => 'Add New Campus',
            'edit_item' => 'Edit Campus',
            'all_items' => 'All Campuses',
            'singular_name' => 'Campus',
        ),
        
        'menu_icon' => 'dashicons-location-alt',
    ));
    
    
    
    //create Notes  post type
    
   register_post_type('note',array(
       'capability_type' => 'note',
       'map_meta_cap' => true,
        'show_in_rest' => true,
        'supports' => array('title','editor',  'comments'),
        'public' => false, //hide ij queres,search result, dashboard
       'show_ui' =>true,//show in dashboard
        'labels' => array(
            'name' =>'notes',
            'name_admin_bar' => 'note',
            'add_new' => 'Add New Note',
            'add_new_item' => 'Add New Note',
            'edit_item' => 'Edit Note',
            'all_items' => 'All notes',
            'singular_name' => 'note',
        ),
        
        'menu_icon' => 'dashicons-welcome-write-blog',
    ));
   
   
    //like  post type
    
   register_post_type('like',array(
        'supports' => array('title'),
        'public' => false, //hide  queres,search result, dashboard
       'show_ui' =>true,//show in dashboard
        'labels' => array(
            'name' =>'Likes',
            'name_admin_bar' => 'like',
            'add_new' => 'Add New Like',
            'add_new_item' => 'Add New Like',
            'edit_item' => 'Edit Like',
            'all_items' => 'All Likes',
            'singular_name' => 'Like',
        ),
        
        'menu_icon' => 'dashicons-heart',
    ));
}
add_action('init','university_post_type');


