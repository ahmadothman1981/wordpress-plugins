<?php

/*
  Plugin Name:Test Plugin
  Description: Our First Plugin in WordPress world
  Version: 1.0
  Author: Ahmad Othman
 * Text Domain: wcpdomain
 * Domain Path: /languages
 * Text Domain: wcpdomain
 * Domain Path: /languages
  
 */

class WordCountAndTimePlugin {
   function __construct()
   {
       add_action('admin_menu' , array($this , 'adminPage'));
       add_action('admin_init' , array($this , 'settings'));
       add_filter('the_content' , array($this , 'ifWrap'));
       add_action('init' , array($this , 'languages'));
   }
   
   function languages()
   {
       load_plugin_textdomain('wcpdomain' , false , dirname(plugin_basename(__FILE__)) . '/languages');
   }
   
   function ifWrap($content) 
   {
       if((is_main_query() AND is_single()) AND
           (
           get_option('wcp_wordcount' , '1')OR
           get_option('wcp_charactercount', '1') OR
           get_option('wcp_realtime' , '1')
           ))
   {
       return $this->createHTML($content);
   } 
        return $content;         
   } 
   function createHTML($content)
   {
       $html= '<h3>' . esc_html(get_option('wcp_headline', 'Post Statictics')) . '</h3><p>' ;
       
       if(get_option('wcp_wordcount' , '1')  OR get_option('wcp_realtime' , '1'))
       {
           $wordCount = str_word_count(strip_tags($content)); 
       }
       
       if(get_option('wcp_wordcount' , '1'))
       {
           $html.= esc_html__("This Post Has" , 'wcpdomain'). " " . $wordCount ." ".esc_html__("words" , "wcpdomain").".<br>";
       }
       
       if(get_option('wcp_charactercount' , '1'))
       {
           $html.= "This Post Has" . " ". strlen(strip_tags($content)) . " charcters.<br>";
       }
       
       if(get_option('wcp_realtime' , '1'))
       {
           $html.= "This Post Has" . " ". round($wordCount/225) . " minutes to read .<br>";
       }
       
       $html.= '</p>';
      
       if(get_option('wcp_location' , '0') == '0')
       {
         return $html . $content ;  
       }
       return $content . $html ;
   }
   
   function settings()
   {
       add_settings_section('wcp_first_section' , null , null , 'word-count-settings-page');
       
       //adding Display location field
       add_settings_field('wcp_location','Display Location' , array($this , 'locationHTML'),'word-count-settings-page' , 'wcp_first_section' );
       register_setting('wordcountplugin','wcp_location',array('sanitize_callback' => array($this , 'sanitizeLocation'),'default' => '0'));
       
       //adding headline field
       
       add_settings_field('wcp_headline','Headline Text' , array($this , 'headlineHTML'),'word-count-settings-page' , 'wcp_first_section' );
       register_setting('wordcountplugin','wcp_headline',array('sanitize_callback' =>'sanitize_text_field','default' => 'Post Statistics'));
       
      //add check box fields 
      
       add_settings_field('wcp_wordcount','Word Count' , array($this , 'wordcountHTML'),'word-count-settings-page' , 'wcp_first_section' );
       register_setting('wordcountplugin','wcp_wordcount',array('sanitize_callback' =>'sanitize_text_field','default' => '1'));
       
        //add check box fields 
      
       add_settings_field('wcp_charactercount','Character Count' , array($this , 'charactercountHTML'),'word-count-settings-page' , 'wcp_first_section' );
       register_setting('wordcountplugin','wcp_charactercount',array('sanitize_callback' =>'sanitize_text_field','default' => '1'));
       
       // add real time check box
             
       add_settings_field('wcp_realtime','Real Time' , array($this , 'realtimeHTML'),'word-count-settings-page' , 'wcp_first_section' );
       register_setting('wordcountplugin','wcp_realtime',array('sanitize_callback' =>'sanitize_text_field','default' => '1'));
   }
   
   function sanitizeLocation($input)
   {
       if($input != '0' && $input != '1')
       {
           add_settings_error('wcp_location' , 'wcp_location_error' , 'Display Location Must be 0 or 1');
           
           return get_option('wcp_location');
       }
       
       return $input ;
   }
   
   
   function realtimeHTML()
   {?>
              <input type="checkbox" name="wcp_realtime" value="1" <?php checked(get_option('wcp_realtime'),'1' ) ?>> 

   <?php }
   
   function charactercountHTML()
   {?>
       <input type="checkbox" name="wcp_charactercount" value="1" <?php checked(get_option('wcp_charactercount'),'1' ) ?>> 

   <?php }
   
   function wordcountHTML()
   {?>
<input type="checkbox" name="wcp_wordcount" value="1" <?php checked(get_option('wcp_wordcount'),'1' ) ?>> 
   <?php }


   function headlineHTML()
   {?>
<input name="wcp_headline" type="text" value="<?php echo esc_attr(get_option('wcp_headline')); ?>"> 
   <?php }
   
   function locationHTML()
   {?>
<select name="wcp_location">
    <option value="0" <?php selected(get_option('wcp_location') ,'0') ?> >Beginning of Post</option>
    <option value="1" <?php selected(get_option('wcp_location') ,'1') ?> >End of Post</option>
</select>
   <?php }
   
   function adminPage()
{
    add_options_page('Word Count Settings',__('Word Count' , 'wcpdomain' ),'manage_options','word-count-settings-page',array($this,'ourHtml'));
}   

function ourHtml()
{?>
<div class="wrap">
    <h1>Word Count Setting</h1>
    <form action="options.php" method="POST">

        <?php
        settings_fields('wordcountplugin');
        do_settings_sections('word-count-settings-page');
        submit_button();
        ?>
    </form>
</div>
<?php } 
}

$wordCountAndTimePlugin = new WordCountAndTimePlugin;




