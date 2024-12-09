<?php
/*
  Plugin Name: Gutenberg Block
  Description: Gutenberg Block Plugin
  Version: 1.0
  Author: Ahmad Othman
*/

if (!defined('ABSPATH')) exit; // Exit if accessed directly

class GutenbergBlock {
  
  function __construct() {
    add_action('init', array($this, 'adminAssets'));
  }

  function adminAssets() {
 /*   wp_register_style('quizeditcss', plugin_dir_url(__FILE__) . 'build/index.css');
    wp_register_script('ournewblocktype', plugin_dir_url(__FILE__) . 'build/index.js', array('wp-blocks', 'wp-element', 'wp-editor'));*/

    register_block_type(__DIR__, array(
      'render_callback' => array($this, 'theHTML')
    ));
  }

  function theHTML($attributes) {
    if (!is_admin()) {
      wp_enqueue_script('attensionFrontend', plugin_dir_url(__FILE__) . 'build/frontend.js', array('wp-element'));
      //wp_enqueue_style('attensionFrontendStyles', plugin_dir_url(__FILE__) . 'build/frontend.css');
    }

    ob_start(); ?>

    <div class="paying-attention-update-me">
      <pre><?php echo wp_json_encode($attributes) ?></pre>
    </div>

    <?php
    return ob_get_clean();
  }
}

$gutenbergBlock = new GutenbergBlock();
