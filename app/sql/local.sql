-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-10-31 07:53:52','2024-10-31 07:53:52','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=2122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:12:{i:1733759632;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1733774040;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733777632;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733779432;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733781232;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1733817232;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1733817240;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1733817247;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1733940247;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1733990073;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1734076432;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://fictional-university.local','on');
INSERT INTO `wp_options` VALUES (3,'home','http://fictional-university.local','on');
INSERT INTO `wp_options` VALUES (4,'blogname','Fiction University','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','1','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','ahmadothmanshoap1981@gmail.com','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','password','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','10','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:181:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:11:\"Campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"Campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"Campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"Campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"Campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"Campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"Campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"Campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"Campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"Campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"Campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"Campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"Campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"Campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"Campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"Campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"Campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"Campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"Campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"Campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"Campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"Campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"Campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=37&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:10:{i:0;s:25:\"Gutenberg-block/index.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";i:2;s:41:\"featured-professor/featured-professor.php\";i:3;s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";i:4;s:23:\"loco-translate/loco.php\";i:5;s:39:\"manual-image-crop/manual-image-crop.php\";i:6;s:19:\"members/members.php\";i:7;s:41:\"new-database-table/new-database-table.php\";i:8;s:51:\"our-first-unique-plugin/our-first-unique-plugin.php\";i:9;s:32:\"our-word-filter-plugin/index.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','http://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','a:2:{i:0;s:105:\"C:\\Users\\Ahmed\\Local Sites\\fictional-university\\app\\public/wp-content/themes/fiction-university/style.css\";i:2;s:0:\"\";}','off');
INSERT INTO `wp_options` VALUES (41,'template','fiction-university','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','fiction-university','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','58975','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','page','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','39','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','37','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1745913232','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','57155','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:97:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:13:\"delete_events\";b:1;s:20:\"delete_others_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:14:\"delete_campuss\";b:1;s:21:\"delete_others_campuss\";b:1;s:22:\"delete_private_campuss\";b:1;s:24:\"delete_published_campuss\";b:1;s:12:\"edit_campuss\";b:1;s:19:\"edit_others_campuss\";b:1;s:20:\"edit_private_campuss\";b:1;s:22:\"edit_published_campuss\";b:1;s:15:\"publish_campuss\";b:1;s:20:\"read_private_campuss\";b:1;s:10:\"edit_notes\";b:1;s:17:\"edit_others_notes\";b:1;s:12:\"delete_notes\";b:1;s:13:\"publish_notes\";b:1;s:18:\"read_private_notes\";b:1;s:20:\"delete_private_notes\";b:1;s:22:\"delete_published_notes\";b:1;s:19:\"delete_others_notes\";b:1;s:18:\"edit_private_notes\";b:1;s:20:\"edit_published_notes\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:6:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_notes\";b:1;s:10:\"edit_notes\";b:1;s:13:\"publish_notes\";b:1;s:22:\"delete_published_notes\";b:1;}}s:13:\"event_planner\";a:2:{s:4:\"name\";s:13:\"Event Planner\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:13:\"delete_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:20:\"delete_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;}}s:14:\"campus_manager\";a:2:{s:4:\"name\";s:14:\"Campus Manager\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:12:\"edit_campuss\";b:1;s:19:\"edit_others_campuss\";b:1;s:14:\"delete_campuss\";b:1;s:15:\"publish_campuss\";b:1;s:20:\"read_private_campuss\";b:1;s:22:\"delete_private_campuss\";b:1;s:24:\"delete_published_campuss\";b:1;s:21:\"delete_others_campuss\";b:1;s:20:\"edit_private_campuss\";b:1;s:22:\"edit_published_campuss\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}','on');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','off');
INSERT INTO `wp_options` VALUES (104,'user_count','3','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.6.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (125,'recovery_keys','a:0:{}','off');
INSERT INTO `wp_options` VALUES (149,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1730366035;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (159,'WPLANG','','auto');
INSERT INTO `wp_options` VALUES (160,'new_admin_email','ahmadothmanshoap1981@gmail.com','auto');
INSERT INTO `wp_options` VALUES (165,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (175,'current_theme','','auto');
INSERT INTO `wp_options` VALUES (176,'theme_mods_fiction-university','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:3;s:17:\"footerLocationOne\";i:4;s:17:\"footerLocationTwo\";i:5;}s:18:\"custom_css_post_id\";i:78;}','on');
INSERT INTO `wp_options` VALUES (177,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (202,'wp_calendar_block_has_published_posts','1','auto');
INSERT INTO `wp_options` VALUES (204,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":3,\"critical\":0}','on');
INSERT INTO `wp_options` VALUES (291,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (327,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (388,'category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (482,'recently_activated','a:1:{s:47:\"pets-custom-post-type/pets-custom-post-type.php\";i:1733756167;}','off');
INSERT INTO `wp_options` VALUES (489,'acf_first_activated_version','6.3.10.2','on');
INSERT INTO `wp_options` VALUES (490,'acf_site_health','{\"version\":\"6.3.10.2\",\"plugin_type\":\"Free\",\"wp_version\":\"6.7.1\",\"mysql_version\":\"8.0.16\",\"is_multisite\":false,\"active_theme\":{\"name\":\"\",\"version\":\"1.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"force-regenerate-thumbnails\\/force-regenerate-thumbnails.php\":{\"name\":\"Force Regenerate Thumbnails\",\"version\":\"2.2.1\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins\\/force-regenerate-thumbnails\\/\"},\"Gutenberg-block\\/index.php\":{\"name\":\"Gutenberg Block\",\"version\":\"1.0\",\"plugin_uri\":\"\"},\"loco-translate\\/loco.php\":{\"name\":\"Loco Translate\",\"version\":\"2.6.14\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins\\/loco-translate\\/\"},\"manual-image-crop\\/manual-image-crop.php\":{\"name\":\"Manual Image Crop\",\"version\":\"1.12\",\"plugin_uri\":\"https:\\/\\/github.com\\/tomaszsita\\/wp-manual-image-crop\"},\"members\\/members.php\":{\"name\":\"Members\",\"version\":\"3.2.14\",\"plugin_uri\":\"https:\\/\\/members-plugin.com\\/\"},\"advanced-custom-fields\\/acf.php\":{\"name\":\"Secure Custom Fields\",\"version\":\"6.3.10.2\",\"plugin_uri\":\"http:\\/\\/wordpress.org\\/plugins\\/advanced-custom-fields\\/\"},\"our-first-unique-plugin\\/our-first-unique-plugin.php\":{\"name\":\"Test Plugin\",\"version\":\"1.0\",\"plugin_uri\":\"\"},\"our-word-filter-plugin\\/index.php\":{\"name\":\"Word Filter Plugin\",\"version\":\"1.0\",\"plugin_uri\":\"\"}},\"ui_field_groups\":\"7\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"date_picker\":1,\"number\":1,\"wysiwyg\":1,\"google_map\":1,\"text\":1,\"image\":1,\"relationship\":2},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"9\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1730916247,\"event_first_created_field_group\":1730916518,\"last_updated\":1733383315}','off');
INSERT INTO `wp_options` VALUES (492,'acf_version','6.3.10.2','auto');
INSERT INTO `wp_options` VALUES (689,'ms_was_installed_on','1731381837','auto');
INSERT INTO `wp_options` VALUES (690,'metaslider_new_user','new','auto');
INSERT INTO `wp_options` VALUES (691,'widget_metaslider_widget','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (692,'ms_hide_all_ads_until','1732591470','auto');
INSERT INTO `wp_options` VALUES (695,'mic_make2x','true','auto');
INSERT INTO `wp_options` VALUES (742,'recovery_mode_email_last_sent','1733320984','auto');
INSERT INTO `wp_options` VALUES (766,'db_upgraded','','on');
INSERT INTO `wp_options` VALUES (770,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:30:\"ahmadothmanshoap1981@gmail.com\";s:7:\"version\";s:5:\"6.7.1\";s:9:\"timestamp\";i:1732285144;}','off');
INSERT INTO `wp_options` VALUES (775,'can_compress_scripts','0','on');
INSERT INTO `wp_options` VALUES (805,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on');
INSERT INTO `wp_options` VALUES (962,'_transient_timeout_dirsize_cache','2047108904','off');
INSERT INTO `wp_options` VALUES (1185,'_transient_timeout_members_30days_flag','1734704984','off');
INSERT INTO `wp_options` VALUES (1186,'_transient_members_30days_flag','1','off');
INSERT INTO `wp_options` VALUES (1187,'members_activated','1732112984','auto');
INSERT INTO `wp_options` VALUES (1188,'members_addons_migrated','1','auto');
INSERT INTO `wp_options` VALUES (1189,'widget_members-widget-login','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (1190,'widget_members-widget-users','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (1192,'members_notifications','a:4:{s:6:\"update\";i:1733751766;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','auto');
INSERT INTO `wp_options` VALUES (1484,'wcp_location','0','auto');
INSERT INTO `wp_options` VALUES (1491,'wcp_headline','Word Count Info','auto');
INSERT INTO `wp_options` VALUES (1497,'wcp_wordcount','1','auto');
INSERT INTO `wp_options` VALUES (1504,'wcp_realtime','1','auto');
INSERT INTO `wp_options` VALUES (1524,'wcp_charactercount','1','auto');
INSERT INTO `wp_options` VALUES (1575,'loco_recent','a:4:{s:1:\"c\";s:21:\"Loco_data_RecentItems\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:6:\"bundle\";a:2:{s:58:\"plugin.our-first-unique-plugin/our-first-unique-plugin.php\";i:1732893213;s:48:\"plugin.featured-professor/featured-professor.php\";i:1733752805;}}s:1:\"t\";i:1733752805;}','off');
INSERT INTO `wp_options` VALUES (1576,'_transient_timeout_loco_po_65eda2af76e37aa2bf80d2647160c657','1733757058','off');
INSERT INTO `wp_options` VALUES (1577,'_transient_loco_po_65eda2af76e37aa2bf80d2647160c657','a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:55:\"plugins/our-first-unique-plugin/languages/wcpdomain.pot\";s:5:\"bytes\";i:906;s:5:\"mtime\";i:1732893058;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:6;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1732893058;}','off');
INSERT INTO `wp_options` VALUES (1615,'_site_transient_timeout_browser_ffc3218438300d069a0fd5dfa5c6e851','1733817034','off');
INSERT INTO `wp_options` VALUES (1616,'_site_transient_browser_ffc3218438300d069a0fd5dfa5c6e851','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"131.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `wp_options` VALUES (1643,'plugin_words_to_filter','Ipsum','auto');
INSERT INTO `wp_options` VALUES (1660,'replacementText','####','auto');
INSERT INTO `wp_options` VALUES (1873,'_site_transient_timeout_php_check_a34f4a08303dd29cee70e79d780daa9d','1734160977','off');
INSERT INTO `wp_options` VALUES (1874,'_site_transient_php_check_a34f4a08303dd29cee70e79d780daa9d','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (2013,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1733772964','off');
INSERT INTO `wp_options` VALUES (2014,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 11825 bytes received</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10001 milliseconds with 32539 bytes received</p></div>','off');
INSERT INTO `wp_options` VALUES (2036,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1733798392','off');
INSERT INTO `wp_options` VALUES (2037,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (2060,'loco_settings','a:4:{s:1:\"c\";s:18:\"Loco_data_Settings\";s:1:\"v\";i:0;s:1:\"d\";a:23:{s:7:\"version\";s:6:\"2.6.14\";s:8:\"gen_hash\";b:0;s:9:\"use_fuzzy\";b:1;s:9:\"fuzziness\";i:20;s:11:\"num_backups\";i:5;s:9:\"pot_alias\";a:3:{i:0;s:10:\"default.po\";i:1;s:8:\"en_US.po\";i:2;s:5:\"en.po\";}s:9:\"php_alias\";a:2:{i:0;s:3:\"php\";i:1;s:4:\"twig\";}s:9:\"jsx_alias\";a:1:{i:0;s:2:\"js\";}s:10:\"fs_persist\";b:0;s:10:\"fs_protect\";i:1;s:11:\"pot_protect\";i:1;s:12:\"pot_expected\";i:1;s:12:\"max_php_size\";s:4:\"100K\";s:11:\"po_utf8_bom\";b:0;s:8:\"po_width\";s:2:\"79\";s:10:\"jed_pretty\";b:0;s:9:\"jed_clean\";b:0;s:10:\"ajax_files\";b:1;s:13:\"deepl_api_key\";s:0:\"\";s:14:\"google_api_key\";s:0:\"\";s:17:\"microsoft_api_key\";s:0:\"\";s:20:\"microsoft_api_region\";s:6:\"global\";s:13:\"lecto_api_key\";s:0:\"\";}s:1:\"t\";i:1733752607;}','auto');
INSERT INTO `wp_options` VALUES (2061,'_site_transient_timeout_available_translations','1733763420','off');
INSERT INTO `wp_options` VALUES (2062,'_site_transient_available_translations','a:131:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.0.9/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-02-13 12:49:38\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.4.5/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.8.25/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-01 09:05:28\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-01-19 08:58:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.4.5/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.9.26/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-23 13:50:30\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-11 11:12:13\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:28:\"চালিয়ে যান\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.6/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-22 12:21:36\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-07-23 09:49:04\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.6.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-22 10:31:12\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-09 11:59:07\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-05 18:08:14\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:72:\"http://downloads.wordpress.org/translation/core/6.7.1/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-05 18:11:40\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-27 07:13:28\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-05 03:48:30\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/6.7.1/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-05 03:49:05\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.2.6/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-22 01:55:00\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-14 20:17:10\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-04 17:25:09\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-09 02:33:22\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-12 00:03:39\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-08 19:43:34\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-19 14:30:41\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-21 03:48:07\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-20 15:25:26\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-21 04:23:19\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-05 20:01:59\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-06 20:24:12\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-10-16 16:00:04\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.4.5/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-04-21 13:32:10\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.6/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:6:\"5.8.10\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.8.10/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.4.16/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-10-16 21:04:12\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.21\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.2.21/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-21 17:51:13\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-06 09:50:37\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.5/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-02 17:45:36\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-06-20 17:15:28\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-06 09:18:04\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-22 05:44:18\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-09-30 11:36:50\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-28 10:44:04\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-02-01 23:56:53\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2023-04-30 13:56:46\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.8.25/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.2.6/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-05 13:21:22\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-12 11:31:44\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ચાલુ રાખો\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.33\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.4.33/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2024-05-04 18:39:24\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.6/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-02-25 08:05:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.4.5/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-11 08:43:38\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.2.6/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-01 12:06:55\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-14 03:56:14\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.9.26/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-21 17:43:13\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-24 14:00:08\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.26\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.9.26/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-08 06:38:31\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2023-07-05 11:40:39\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.2.6/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-07-18 02:49:24\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.21\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.2.21/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-12 23:54:38\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-21 02:38:23\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-29 22:10:00\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.7.1/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:3:\"kir\";a:8:{s:8:\"language\";s:3:\"kir\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-23 15:58:26\";s:12:\"english_name\";s:6:\"Kyrgyz\";s:11:\"native_name\";s:16:\"Кыргызча\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.7.1/kir.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ky\";i:2;s:3:\"kir\";i:3;s:3:\"kir\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Улантуу\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-13 13:11:03\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.5.5/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-02 13:58:02\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.9\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.0.9/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-10-05 15:57:37\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.6.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"6.5.5\";s:7:\"updated\";s:19:\"2024-06-20 17:22:06\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.5.5/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-02 06:24:36\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.15\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/5.5.15/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.38\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.2.38/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-03 18:10:34\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-08-30 11:32:23\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.6.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-03 12:23:03\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-01 09:55:23\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/translation/core/6.7.1/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-23 21:43:18\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/4.8.25/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-03 16:35:22\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.34\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.3.34/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-21 13:50:09\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2023-08-21 12:15:00\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.4.5/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-25 10:54:59\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-22 09:42:36\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:68:\"http://downloads.wordpress.org/translation/core/6.7.1/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-04 18:34:07\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-20 15:32:31\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/translation/core/5.4.16/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-09 05:03:16\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"6.6.2\";s:7:\"updated\";s:19:\"2024-09-21 09:44:08\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/6.6.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-08-30 07:14:35\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-26 10:25:18\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-09-20 22:15:56\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-21 05:08:10\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-06 16:56:18\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.38\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/translation/core/4.2.38/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:6:\"5.8.10\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.8.10/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.25\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.8.25/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-12-06 13:44:46\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-18 17:37:18\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.4.5\";s:7:\"updated\";s:19:\"2024-03-06 18:52:07\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.4.5/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.16\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/translation/core/5.4.16/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:66:\"http://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-20 13:04:32\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:60:\"http://downloads.wordpress.org/translation/core/6.7.1/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-24 10:26:45\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"6.7.1\";s:7:\"updated\";s:19:\"2024-11-21 08:38:08\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.7.1/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"6.2.6\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/translation/core/6.2.6/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}','off');
INSERT INTO `wp_options` VALUES (2063,'_transient_timeout_loco_po_84391344d0b1965bb84cb36d41d62022','1734616683','off');
INSERT INTO `wp_options` VALUES (2064,'_transient_loco_po_84391344d0b1965bb84cb36d41d62022','a:4:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:59:\"plugins/featured-professor/languages/featured-professor.pot\";s:5:\"bytes\";i:817;s:5:\"mtime\";i:1733752683;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:4;s:1:\"p\";i:0;s:1:\"f\";i:0;}}s:1:\"t\";i:1733752683;}','off');
INSERT INTO `wp_options` VALUES (2094,'_site_transient_timeout_wp_remote_block_patterns_3c384faaf1511f1d7551d394cd1b1967','1733754053','off');
INSERT INTO `wp_options` VALUES (2095,'_site_transient_wp_remote_block_patterns_3c384faaf1511f1d7551d394cd1b1967','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:80:\"cURL error 28: Operation timed out after 5005 milliseconds with 0 bytes received\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (2096,'_site_transient_timeout_wp_remote_block_patterns_f1b8761776390024e4c73711007662d3','1733754058','off');
INSERT INTO `wp_options` VALUES (2097,'_site_transient_wp_remote_block_patterns_f1b8761776390024e4c73711007662d3','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:83:\"cURL error 28: Operation timed out after 5013 milliseconds with 3500 bytes received\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (2102,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.7.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.7.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.7.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.7.1\";s:7:\"version\";s:5:\"6.7.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1733754085;s:15:\"version_checked\";s:5:\"6.7.1\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (2103,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1733756477;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.5.3.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/force-regenerate-thumbnails\";s:4:\"slug\";s:27:\"force-regenerate-thumbnails\";s:6:\"plugin\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"2.2.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/force-regenerate-thumbnails/\";s:7:\"package\";s:75:\"http://downloads.wordpress.org/plugin/force-regenerate-thumbnails.2.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/force-regenerate-thumbnails/assets/icon-256x256.jpg?rev=2816275\";s:2:\"1x\";s:80:\"https://ps.w.org/force-regenerate-thumbnails/assets/icon-128x128.jpg?rev=2816275\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/force-regenerate-thumbnails/assets/banner-1544x500.jpg?rev=2816275\";s:2:\"1x\";s:82:\"https://ps.w.org/force-regenerate-thumbnails/assets/banner-772x250.jpg?rev=2816275\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.4\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:59:\"http://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:6:\"2.6.14\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/plugin/loco-translate.2.6.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:19:\"members/members.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:6:\"3.2.14\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"http://downloads.wordpress.org/plugin/members.3.2.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=2503334\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=2503334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.jpg?rev=3148950\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.jpg?rev=3148950\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:6:\"3.93.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/plugin/ml-slider.3.93.0.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=2771717\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=2771717\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=2907610\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=2907610\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:8:\"6.3.10.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:73:\"http://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.10.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3167679\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3167679\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3167679\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3167679\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}}s:7:\"checked\";a:14:{s:19:\"akismet/akismet.php\";s:5:\"5.3.5\";s:41:\"featured-professor/featured-professor.php\";s:3:\"1.0\";s:59:\"force-regenerate-thumbnails/force-regenerate-thumbnails.php\";s:5:\"2.2.1\";s:25:\"Gutenberg-block/index.php\";s:3:\"1.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"loco-translate/loco.php\";s:6:\"2.6.14\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:19:\"members/members.php\";s:6:\"3.2.14\";s:23:\"ml-slider/ml-slider.php\";s:6:\"3.93.0\";s:47:\"pets-custom-post-type/pets-custom-post-type.php\";s:3:\"1.0\";s:41:\"new-database-table/new-database-table.php\";s:3:\"1.0\";s:30:\"advanced-custom-fields/acf.php\";s:8:\"6.3.10.2\";s:51:\"our-first-unique-plugin/our-first-unique-plugin.php\";s:3:\"1.0\";s:32:\"our-word-filter-plugin/index.php\";s:3:\"1.0\";}}','off');
INSERT INTO `wp_options` VALUES (2104,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1733754096;s:7:\"checked\";a:1:{s:18:\"fiction-university\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (2105,'_site_transient_timeout_theme_roots','1733756671','off');
INSERT INTO `wp_options` VALUES (2106,'_site_transient_theme_roots','a:1:{s:18:\"fiction-university\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (2115,'_site_transient_timeout_wp_remote_block_patterns_85af6059a330bd91042ca9e9b0b885aa','1733755268','off');
INSERT INTO `wp_options` VALUES (2116,'_site_transient_wp_remote_block_patterns_85af6059a330bd91042ca9e9b0b885aa','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:83:\"cURL error 28: Operation timed out after 5012 milliseconds with 3500 bytes received\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (2117,'_site_transient_timeout_wp_remote_block_patterns_5885320ebf198b1e7efa7c4fef986031','1733755273','off');
INSERT INTO `wp_options` VALUES (2118,'_site_transient_wp_remote_block_patterns_5885320ebf198b1e7efa7c4fef986031','O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:19:\"http_request_failed\";a:1:{i:0;s:59:\"cURL error 28: Connection timed out after 5015 milliseconds\";}}s:10:\"error_data\";a:0:{}s:18:\"\0*\0additional_data\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (2119,'_site_transient_timeout_wp_theme_files_patterns-d86f734f5b560883dffcafb30919e88a','1733757961','off');
INSERT INTO `wp_options` VALUES (2120,'_site_transient_wp_theme_files_patterns-d86f734f5b560883dffcafb30919e88a','a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pets`
--

DROP TABLE IF EXISTS `wp_pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_pets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `birthyear` smallint(5) NOT NULL DEFAULT '0',
  `petweight` smallint(5) NOT NULL DEFAULT '0',
  `favfood` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `favhobby` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `favcolor` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `petname` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `species` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pets`
--

LOCK TABLES `wp_pets` WRITE;
/*!40000 ALTER TABLE `wp_pets` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=1571 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,7,'_edit_lock','1731692455:1');
INSERT INTO `wp_postmeta` VALUES (6,9,'_edit_lock','1733736495:1');
INSERT INTO `wp_postmeta` VALUES (9,11,'_edit_lock','1730472912:1');
INSERT INTO `wp_postmeta` VALUES (10,13,'_edit_lock','1731400044:1');
INSERT INTO `wp_postmeta` VALUES (11,3,'_edit_lock','1730574975:1');
INSERT INTO `wp_postmeta` VALUES (12,16,'_edit_lock','1730714198:1');
INSERT INTO `wp_postmeta` VALUES (13,19,'_edit_lock','1730711706:1');
INSERT INTO `wp_postmeta` VALUES (14,21,'_edit_lock','1730574897:1');
INSERT INTO `wp_postmeta` VALUES (15,23,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (16,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (17,23,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (18,23,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (19,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (20,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (21,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (22,23,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (23,23,'_menu_item_orphaned','1730714973');
INSERT INTO `wp_postmeta` VALUES (24,24,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (25,24,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (26,24,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (27,24,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (28,24,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (29,24,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (30,24,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (31,24,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (33,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (34,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (35,25,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (36,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (37,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (38,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (39,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (40,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (41,25,'_menu_item_orphaned','1730714973');
INSERT INTO `wp_postmeta` VALUES (42,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (43,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (44,26,'_menu_item_object_id','13');
INSERT INTO `wp_postmeta` VALUES (45,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (46,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (47,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (48,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (49,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (51,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (52,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (53,27,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (54,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (55,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (56,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (57,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (58,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (59,27,'_menu_item_orphaned','1730714973');
INSERT INTO `wp_postmeta` VALUES (60,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (61,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (62,28,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (63,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (64,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (65,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (66,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (67,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (68,28,'_menu_item_orphaned','1730714973');
INSERT INTO `wp_postmeta` VALUES (69,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (70,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (71,29,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (72,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (73,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (74,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (75,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (76,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (77,29,'_menu_item_orphaned','1730714973');
INSERT INTO `wp_postmeta` VALUES (78,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (79,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (80,30,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (81,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (82,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (83,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (84,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (85,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (86,30,'_menu_item_orphaned','1730714973');
INSERT INTO `wp_postmeta` VALUES (87,31,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (88,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (89,31,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (90,31,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (91,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (92,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (93,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (94,31,'_menu_item_url','http://fictional-university.local/');
INSERT INTO `wp_postmeta` VALUES (96,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (97,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (98,32,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (99,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (100,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (101,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (102,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (103,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (105,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (106,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (107,33,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (108,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (109,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (110,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (111,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (112,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (114,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (115,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (116,34,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (117,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (118,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (119,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (120,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (121,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (123,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (124,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (125,35,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (126,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (127,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (128,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (129,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (130,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (132,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (133,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (134,36,'_menu_item_object_id','21');
INSERT INTO `wp_postmeta` VALUES (135,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (136,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (137,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (138,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (139,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (141,37,'_edit_lock','1730728749:1');
INSERT INTO `wp_postmeta` VALUES (142,39,'_edit_lock','1732031642:1');
INSERT INTO `wp_postmeta` VALUES (143,41,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (144,41,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (145,41,'_menu_item_object_id','39');
INSERT INTO `wp_postmeta` VALUES (146,41,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (147,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (148,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (149,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (150,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (152,32,'_wp_old_date','2024-11-04');
INSERT INTO `wp_postmeta` VALUES (153,33,'_wp_old_date','2024-11-04');
INSERT INTO `wp_postmeta` VALUES (154,34,'_wp_old_date','2024-11-04');
INSERT INTO `wp_postmeta` VALUES (155,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (156,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (157,42,'_menu_item_object_id','39');
INSERT INTO `wp_postmeta` VALUES (158,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (159,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (160,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (161,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (162,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (164,31,'_wp_old_date','2024-11-04');
INSERT INTO `wp_postmeta` VALUES (165,24,'_wp_old_date','2024-11-04');
INSERT INTO `wp_postmeta` VALUES (166,26,'_wp_old_date','2024-11-04');
INSERT INTO `wp_postmeta` VALUES (167,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (168,43,'_edit_lock','1731315543:1');
INSERT INTO `wp_postmeta` VALUES (169,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (170,44,'_edit_lock','1731315443:1');
INSERT INTO `wp_postmeta` VALUES (171,45,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (172,45,'_edit_lock','1730812457:1');
INSERT INTO `wp_postmeta` VALUES (179,59,'_menu_item_type','post_type_archive');
INSERT INTO `wp_postmeta` VALUES (180,59,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (181,59,'_menu_item_object_id','-24');
INSERT INTO `wp_postmeta` VALUES (182,59,'_menu_item_object','event');
INSERT INTO `wp_postmeta` VALUES (183,59,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (184,59,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (185,59,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (186,59,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (188,31,'_wp_old_date','2024-11-05');
INSERT INTO `wp_postmeta` VALUES (189,24,'_wp_old_date','2024-11-05');
INSERT INTO `wp_postmeta` VALUES (190,26,'_wp_old_date','2024-11-05');
INSERT INTO `wp_postmeta` VALUES (191,42,'_wp_old_date','2024-11-05');
INSERT INTO `wp_postmeta` VALUES (192,60,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (193,60,'_edit_lock','1730917750:1');
INSERT INTO `wp_postmeta` VALUES (194,44,'event_date','20241129');
INSERT INTO `wp_postmeta` VALUES (195,44,'_event_date','field_672bb0740feb9');
INSERT INTO `wp_postmeta` VALUES (196,43,'event_date','20241130');
INSERT INTO `wp_postmeta` VALUES (197,43,'_event_date','field_672bb0740feb9');
INSERT INTO `wp_postmeta` VALUES (198,62,'_edit_lock','1731315521:1');
INSERT INTO `wp_postmeta` VALUES (199,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (200,62,'event_date','20231123');
INSERT INTO `wp_postmeta` VALUES (201,62,'_event_date','field_672bb0740feb9');
INSERT INTO `wp_postmeta` VALUES (202,64,'_edit_lock','1731407967:1');
INSERT INTO `wp_postmeta` VALUES (203,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (204,64,'event_date','20251120');
INSERT INTO `wp_postmeta` VALUES (205,64,'_event_date','field_672bb0740feb9');
INSERT INTO `wp_postmeta` VALUES (206,65,'_edit_lock','1731229781:1');
INSERT INTO `wp_postmeta` VALUES (207,67,'_edit_lock','1731352835:1');
INSERT INTO `wp_postmeta` VALUES (208,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (209,67,'event_date','20231129');
INSERT INTO `wp_postmeta` VALUES (210,67,'_event_date','field_672bb0740feb9');
INSERT INTO `wp_postmeta` VALUES (212,70,'_edit_lock','1732012028:1');
INSERT INTO `wp_postmeta` VALUES (213,71,'_edit_lock','1732007770:1');
INSERT INTO `wp_postmeta` VALUES (214,72,'_edit_lock','1732007909:1');
INSERT INTO `wp_postmeta` VALUES (215,73,'_edit_lock','1732007749:1');
INSERT INTO `wp_postmeta` VALUES (216,74,'_edit_lock','1732008159:1');
INSERT INTO `wp_postmeta` VALUES (217,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (218,75,'_edit_lock','1733658203:1');
INSERT INTO `wp_postmeta` VALUES (219,64,'related_program','a:1:{i:0;s:2:\"71\";}');
INSERT INTO `wp_postmeta` VALUES (220,64,'_related_program','field_6731c5b940ad7');
INSERT INTO `wp_postmeta` VALUES (221,67,'related_program','a:1:{i:0;s:2:\"72\";}');
INSERT INTO `wp_postmeta` VALUES (222,67,'_related_program','field_6731c5b940ad7');
INSERT INTO `wp_postmeta` VALUES (223,62,'related_program','a:1:{i:0;s:2:\"70\";}');
INSERT INTO `wp_postmeta` VALUES (224,62,'_related_program','field_6731c5b940ad7');
INSERT INTO `wp_postmeta` VALUES (225,44,'related_program','a:1:{i:0;s:2:\"73\";}');
INSERT INTO `wp_postmeta` VALUES (226,44,'_related_program','field_6731c5b940ad7');
INSERT INTO `wp_postmeta` VALUES (227,43,'related_program','a:1:{i:0;s:2:\"74\";}');
INSERT INTO `wp_postmeta` VALUES (228,43,'_related_program','field_6731c5b940ad7');
INSERT INTO `wp_postmeta` VALUES (229,77,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (230,77,'_wp_trash_meta_time','1731333591');
INSERT INTO `wp_postmeta` VALUES (231,80,'_edit_lock','1733655305:1');
INSERT INTO `wp_postmeta` VALUES (232,81,'_edit_lock','1732549404:1');
INSERT INTO `wp_postmeta` VALUES (233,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (234,81,'related_program','a:1:{i:0;s:2:\"74\";}');
INSERT INTO `wp_postmeta` VALUES (235,81,'_related_program','field_6731c5b940ad7');
INSERT INTO `wp_postmeta` VALUES (236,80,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (237,80,'related_program','a:1:{i:0;s:2:\"71\";}');
INSERT INTO `wp_postmeta` VALUES (238,80,'_related_program','field_6731c5b940ad7');
INSERT INTO `wp_postmeta` VALUES (241,84,'_wp_attached_file','2024/11/003-barksalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (242,84,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:32:\"2024/11/003-barksalot-scaled.jpg\";s:8:\"filesize\";i:374833;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"003-barksalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11675;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"003-barksalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71338;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"003-barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7432;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"003-barksalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:44407;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"003-barksalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:146676;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:27:\"003-barksalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:243223;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:25:\"003-barksalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16765;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:25:\"003-barksalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45563;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:17:\"003-barksalot.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (243,81,'_thumbnail_id','84');
INSERT INTO `wp_postmeta` VALUES (244,85,'_wp_attached_file','2024/11/003-meowsalot-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (245,85,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:32:\"2024/11/003-meowsalot-scaled.jpg\";s:8:\"filesize\";i:255959;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"003-meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9572;}s:5:\"large\";a:5:{s:4:\"file\";s:26:\"003-meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46925;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"003-meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6670;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:25:\"003-meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:30452;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:27:\"003-meowsalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:92531;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:27:\"003-meowsalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:159913;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:25:\"003-meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12908;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:25:\"003-meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32741;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:17:\"003-meowsalot.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (246,80,'_thumbnail_id','85');
INSERT INTO `wp_postmeta` VALUES (247,86,'_edit_lock','1732548614:1');
INSERT INTO `wp_postmeta` VALUES (248,87,'_wp_attached_file','2024/11/003-frog-bio-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (249,87,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:31:\"2024/11/003-frog-bio-scaled.jpg\";s:8:\"filesize\";i:297483;s:5:\"sizes\";a:8:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"003-frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15208;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"003-frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76066;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"003-frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8428;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"003-frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50646;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"003-frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:137587;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"003-frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:211428;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:24:\"003-frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19001;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:24:\"003-frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39609;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"003-frog-bio.jpg\";s:15:\"micSelectedArea\";a:1:{s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:3:\"138\";s:1:\"y\";s:2:\"29\";s:1:\"w\";s:18:\"179.44615384615417\";s:1:\"h\";s:18:\"242.99999999999994\";s:5:\"scale\";s:15:\"5.7114285714286\";}}}');
INSERT INTO `wp_postmeta` VALUES (250,86,'_thumbnail_id','87');
INSERT INTO `wp_postmeta` VALUES (251,86,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (252,86,'related_program','a:2:{i:0;s:2:\"73\";i:1;s:2:\"74\";}');
INSERT INTO `wp_postmeta` VALUES (253,86,'_related_program','field_6731c5b940ad7');
INSERT INTO `wp_postmeta` VALUES (254,88,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (255,88,'_edit_lock','1731409927:1');
INSERT INTO `wp_postmeta` VALUES (257,93,'_wp_attached_file','2024/11/005-field-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (258,93,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2024/11/005-field-scaled.jpg\";s:8:\"filesize\";i:819686;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"005-field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14530;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"005-field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:127360;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"005-field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7958;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"005-field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:72315;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:23:\"005-field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:287660;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:23:\"005-field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:520004;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:21:\"005-field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22416;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:21:\"005-field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59364;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:22:\"005-field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:106079;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"005-field.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"52\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (259,80,'field_banner_subtitle','Arabic Teacher');
INSERT INTO `wp_postmeta` VALUES (260,80,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (261,80,'page_banner_background_image','93');
INSERT INTO `wp_postmeta` VALUES (262,80,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (264,81,'field_banner_subtitle','English Teacher');
INSERT INTO `wp_postmeta` VALUES (265,81,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (266,81,'page_banner_background_image','93');
INSERT INTO `wp_postmeta` VALUES (267,81,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (268,86,'field_banner_subtitle','History Teacher');
INSERT INTO `wp_postmeta` VALUES (269,86,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (270,86,'page_banner_background_image','93');
INSERT INTO `wp_postmeta` VALUES (271,86,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (274,96,'_wp_attached_file','2024/11/002-building-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (275,96,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:31:\"2024/11/002-building-scaled.jpg\";s:8:\"filesize\";i:439362;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"002-building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11417;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"002-building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:77256;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"002-building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6700;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"002-building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:45540;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"002-building-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:167871;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"002-building-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:290287;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:24:\"002-building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15886;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:24:\"002-building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35294;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:25:\"002-building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76516;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"002-building.jpg\";s:15:\"micSelectedArea\";a:1:{s:9:\"thumbnail\";a:5:{s:1:\"x\";s:3:\"166\";s:1:\"y\";s:1:\"0\";s:1:\"w\";s:3:\"334\";s:1:\"h\";s:3:\"334\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (277,13,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (279,97,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (281,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (282,13,'field_banner_subtitle','this is about page for the website');
INSERT INTO `wp_postmeta` VALUES (283,13,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (284,13,'page_banner_background_image','96');
INSERT INTO `wp_postmeta` VALUES (285,13,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (286,97,'field_banner_subtitle','this is about page for the website');
INSERT INTO `wp_postmeta` VALUES (287,97,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (288,97,'page_banner_background_image','96');
INSERT INTO `wp_postmeta` VALUES (289,97,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (290,98,'_wp_attached_file','2024/11/005-notebook-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (291,98,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1922;s:4:\"file\";s:31:\"2024/11/005-notebook-scaled.jpg\";s:8:\"filesize\";i:288549;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"005-notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12317;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"005-notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:58524;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"005-notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7169;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"005-notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39195;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:26:\"005-notebook-1536x1153.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:107329;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:26:\"005-notebook-2048x1538.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:180033;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:24:\"005-notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15871;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:24:\"005-notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:27183;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:25:\"005-notebook-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:35710;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:16:\"005-notebook.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:3:\"180\";s:1:\"w\";s:3:\"466\";s:1:\"h\";s:18:\"108.73333333333301\";s:5:\"scale\";s:15:\"5.4914285714286\";}}}');
INSERT INTO `wp_postmeta` VALUES (292,64,'field_banner_subtitle','our event this year');
INSERT INTO `wp_postmeta` VALUES (293,64,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (294,64,'page_banner_background_image','98');
INSERT INTO `wp_postmeta` VALUES (295,64,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (296,99,'_edit_lock','1731487518:1');
INSERT INTO `wp_postmeta` VALUES (297,99,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (298,99,'field_banner_subtitle','campus number one');
INSERT INTO `wp_postmeta` VALUES (299,99,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (300,99,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (301,99,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (302,100,'_edit_lock','1731487307:1');
INSERT INTO `wp_postmeta` VALUES (303,100,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (304,100,'field_banner_subtitle','campus number two');
INSERT INTO `wp_postmeta` VALUES (305,100,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (306,100,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (307,100,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (308,101,'_edit_lock','1731487485:1');
INSERT INTO `wp_postmeta` VALUES (309,101,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (310,101,'field_banner_subtitle','campus number three');
INSERT INTO `wp_postmeta` VALUES (311,101,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (312,101,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (313,101,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (314,102,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (315,102,'_edit_lock','1731511358:1');
INSERT INTO `wp_postmeta` VALUES (318,100,'map_location','a:9:{s:7:\"address\";s:69:\"5GR6+QXP, Sherbeen City, Shirbin, Dakahlia Governorate 7746010, Egypt\";s:3:\"lat\";d:31.191802909098932;s:3:\"lng\";d:31.512555823217777;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJZ_TTlTd79xQRZTmHNkHlbhU\";s:5:\"state\";s:20:\"Dakahlia Governorate\";s:9:\"post_code\";s:7:\"7746010\";s:7:\"country\";s:5:\"Egypt\";s:13:\"country_short\";s:2:\"EG\";}');
INSERT INTO `wp_postmeta` VALUES (319,100,'_map_location','field_67342c4493315');
INSERT INTO `wp_postmeta` VALUES (320,101,'map_location','a:8:{s:7:\"address\";s:22:\"6H56+C5 Shirbin, Egypt\";s:3:\"lat\";d:31.208541841260224;s:3:\"lng\";d:31.560449347387699;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"GhIJV9nS_mI1P0AR65D2mnmPP0A\";s:5:\"state\";s:20:\"Dakahlia Governorate\";s:7:\"country\";s:5:\"Egypt\";s:13:\"country_short\";s:2:\"EG\";}');
INSERT INTO `wp_postmeta` VALUES (321,101,'_map_location','field_67342c4493315');
INSERT INTO `wp_postmeta` VALUES (322,99,'map_location','a:9:{s:7:\"address\";s:73:\"5G55+3Q4, Menyat Bedway, El Mansoura, Dakahlia Governorate 7684325, Egypt\";s:3:\"lat\";d:31.158036137937188;s:3:\"lng\";d:31.510710463415531;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJ5X6KI6F79xQR9SZehz3RIlg\";s:5:\"state\";s:20:\"Dakahlia Governorate\";s:9:\"post_code\";s:7:\"7684325\";s:7:\"country\";s:5:\"Egypt\";s:13:\"country_short\";s:2:\"EG\";}');
INSERT INTO `wp_postmeta` VALUES (323,99,'_map_location','field_67342c4493315');
INSERT INTO `wp_postmeta` VALUES (324,106,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (325,106,'_edit_lock','1732013122:1');
INSERT INTO `wp_postmeta` VALUES (326,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (327,74,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (328,74,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (329,74,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (330,74,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (331,74,'related_campus','a:1:{i:0;s:2:\"99\";}');
INSERT INTO `wp_postmeta` VALUES (332,74,'_related_campus','field_6735aa733d547');
INSERT INTO `wp_postmeta` VALUES (333,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (334,73,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (335,73,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (336,73,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (337,73,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (338,73,'related_campus','a:1:{i:0;s:3:\"101\";}');
INSERT INTO `wp_postmeta` VALUES (339,73,'_related_campus','field_6735aa733d547');
INSERT INTO `wp_postmeta` VALUES (340,72,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (341,72,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (342,72,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (343,72,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (344,72,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (345,72,'related_campus','a:1:{i:0;s:3:\"100\";}');
INSERT INTO `wp_postmeta` VALUES (346,72,'_related_campus','field_6735aa733d547');
INSERT INTO `wp_postmeta` VALUES (347,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (348,71,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (349,71,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (350,71,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (351,71,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (352,71,'related_campus','a:1:{i:0;s:2:\"99\";}');
INSERT INTO `wp_postmeta` VALUES (353,71,'_related_campus','field_6735aa733d547');
INSERT INTO `wp_postmeta` VALUES (354,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (355,70,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (356,70,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (357,70,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (358,70,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (359,70,'related_campus','a:1:{i:0;s:3:\"100\";}');
INSERT INTO `wp_postmeta` VALUES (360,70,'_related_campus','field_6735aa733d547');
INSERT INTO `wp_postmeta` VALUES (361,1,'_edit_lock','1731686304:1');
INSERT INTO `wp_postmeta` VALUES (362,109,'_edit_lock','1732031733:1');
INSERT INTO `wp_postmeta` VALUES (365,109,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (368,109,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (369,109,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (370,109,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (371,109,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (372,110,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (373,110,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (374,110,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (375,110,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (376,111,'_edit_lock','1733753305:1');
INSERT INTO `wp_postmeta` VALUES (379,111,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (382,111,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (383,111,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (384,111,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (385,111,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (386,112,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (387,112,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (388,112,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (389,112,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (390,113,'_edit_lock','1733754053:1');
INSERT INTO `wp_postmeta` VALUES (393,113,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (396,113,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (397,113,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (398,113,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (399,113,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (400,114,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (401,114,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (402,114,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (403,114,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (406,115,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (407,115,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (408,115,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (409,115,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (414,116,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (415,116,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (416,116,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (417,116,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (422,117,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (423,117,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (424,117,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (425,117,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (426,118,'_edit_lock','1733734285:1');
INSERT INTO `wp_postmeta` VALUES (427,118,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (428,118,'field_banner_subtitle','Dr Sport');
INSERT INTO `wp_postmeta` VALUES (429,118,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (430,118,'page_banner_background_image','84');
INSERT INTO `wp_postmeta` VALUES (431,118,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (432,118,'related_program','a:2:{i:0;s:2:\"72\";i:1;s:2:\"70\";}');
INSERT INTO `wp_postmeta` VALUES (433,118,'_related_program','field_6731c5b940ad7');
INSERT INTO `wp_postmeta` VALUES (434,118,'_thumbnail_id','85');
INSERT INTO `wp_postmeta` VALUES (435,119,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (436,119,'_edit_lock','1732008146:1');
INSERT INTO `wp_postmeta` VALUES (437,74,'main_body_content','<!-- wp:paragraph -->\r\n\r\narabic expert\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nThe lorem ipsum text is usually a section of a <a href=\"https://simple.wikipedia.org/wiki/Latin\">Latin</a> text by <a href=\"https://simple.wikipedia.org/wiki/Cicero\">Cicero</a> with words altered, added and removed to make it nonsensical.<sup><a href=\"https://simple.wikipedia.org/wiki/Lorem_ipsum#cite_note-SDop-1\">[1]</a></sup> Lorem ipsum text is used in mock-ups of visual design projects before the actual words are put into the finished product. This is often called <strong>greeking</strong>. The text is derived from <a href=\"https://simple.wikipedia.org/wiki/Cicero\">Cicero</a>\'s <em>De finibus bonorum et malorum</em> (<em>On the Ends of Goods and Evils</em>, sometimes the title is translated as <em>[About] The Purposes of Good and Evil</em> ).<sup><a href=\"https://simple.wikipedia.org/wiki/Lorem_ipsum#cite_note-microsoft-2\">[2]</a></sup> The words \"Lorem ipsum...\" make no sense.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nThe text was frequently used in <a href=\"https://simple.wikipedia.org/wiki/Desktop_publishing\">desktop publishing</a> templates. To experiment with the text, it can be copy-pasted into the desktop publishing software, and the typeface and its setting can be tried out. The distribution of letters in Lorem Ipsum is close to that in <a href=\"https://simple.wikipedia.org/wiki/English_language\">English language</a>. This way, you can see what your own text would look like\r\n\r\n<!-- /wp:paragraph -->');
INSERT INTO `wp_postmeta` VALUES (438,74,'_main_body_content','field_673c56c732bf2');
INSERT INTO `wp_postmeta` VALUES (439,73,'main_body_content','<!-- wp:paragraph -->\r\n\r\nThe lorem ipsum text is usually a section of a <a href=\"https://simple.wikipedia.org/wiki/Latin\">Latin</a> text by <a href=\"https://simple.wikipedia.org/wiki/Cicero\">Cicero</a> with words altered, added and removed to make it nonsensical.<sup><a href=\"https://simple.wikipedia.org/wiki/Lorem_ipsum#cite_note-SDop-1\">[1]</a></sup> Lorem ipsum text is used in mock-ups of visual design projects before the actual words are put into the finished product. This is often called <strong>greeking</strong>. The text is derived from <a href=\"https://simple.wikipedia.org/wiki/Cicero\">Cicero</a>\'s <em>De finibus bonorum et malorum</em> (<em>On the Ends of Goods and Evils</em>, sometimes the title is translated as <em>[About] The Purposes of Good and Evil</em> ).<sup><a href=\"https://simple.wikipedia.org/wiki/Lorem_ipsum#cite_note-microsoft-2\">[2]</a></sup> The words \"Lorem ipsum...\" make no sense.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nThe text was frequently used in <a href=\"https://simple.wikipedia.org/wiki/Desktop_publishing\">desktop publishing</a> templates. To experiment with the text, it can be copy-pasted into the desktop publishing software, and the typeface and its setting can be tried out. The distribution of letters in Lorem Ipsum is close to that in <a href=\"https://simple.wikipedia.org/wiki/English_language\">English language</a>. This way, you can see what your own text would look like\r\n\r\n<!-- /wp:paragraph -->');
INSERT INTO `wp_postmeta` VALUES (440,73,'_main_body_content','field_673c56c732bf2');
INSERT INTO `wp_postmeta` VALUES (441,72,'main_body_content','The lorem ipsum text is usually a section of a <a href=\"https://simple.wikipedia.org/wiki/Latin\">Latin</a> text by <a href=\"https://simple.wikipedia.org/wiki/Cicero\">Cicero</a> with words altered, added and removed to make it nonsensical.<sup><a href=\"https://simple.wikipedia.org/wiki/Lorem_ipsum#cite_note-SDop-1\">[1]</a></sup> Lorem ipsum text is used in mock-ups of visual design projects before the actual words are put into the finished product. This is often called <strong>greeking</strong>. The text is derived from <a href=\"https://simple.wikipedia.org/wiki/Cicero\">Cicero</a>\'s <em>De finibus bonorum et malorum</em> (<em>On the Ends of Goods and Evils</em>, sometimes the title is translated as <em>[About] The Purposes of Good and Evil</em> ).<sup><a href=\"https://simple.wikipedia.org/wiki/Lorem_ipsum#cite_note-microsoft-2\">[2]</a></sup> The words \"Lorem ipsum...\" make no sense.\r\n\r\nThe text was frequently used in <a href=\"https://simple.wikipedia.org/wiki/Desktop_publishing\">desktop publishing</a> templates. To experiment with the text, it can be copy-pasted into the desktop publishing software, and the typeface and its setting can be tried out. The distribution of letters in Lorem Ipsum is close to that in <a href=\"https://simple.wikipedia.org/wiki/English_language\">English language</a>. This way, you can see what your own text would look like');
INSERT INTO `wp_postmeta` VALUES (442,72,'_main_body_content','field_673c56c732bf2');
INSERT INTO `wp_postmeta` VALUES (443,71,'main_body_content','<!-- wp:paragraph -->\r\n\r\nThe lorem ipsum text is usually a section of a <a href=\"https://simple.wikipedia.org/wiki/Latin\">Latin</a> text by <a href=\"https://simple.wikipedia.org/wiki/Cicero\">Cicero</a> with words altered, added and removed to make it nonsensical.<sup><a href=\"https://simple.wikipedia.org/wiki/Lorem_ipsum#cite_note-SDop-1\">[1]</a></sup> Lorem ipsum text is used in mock-ups of visual design projects before the actual words are put into the finished product. This is often called <strong>greeking</strong>. The text is derived from <a href=\"https://simple.wikipedia.org/wiki/Cicero\">Cicero</a>\'s <em>De finibus bonorum et malorum</em> (<em>On the Ends of Goods and Evils</em>, sometimes the title is translated as <em>[About] The Purposes of Good and Evil</em> ).<sup><a href=\"https://simple.wikipedia.org/wiki/Lorem_ipsum#cite_note-microsoft-2\">[2]</a></sup> The words \"Lorem ipsum...\" make no sense.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nThe text was frequently used in <a href=\"https://simple.wikipedia.org/wiki/Desktop_publishing\">desktop publishing</a> templates. To experiment with the text, it can be copy-pasted into the desktop publishing software, and the typeface and its setting can be tried out. The distribution of letters in Lorem Ipsum is close to that in <a href=\"https://simple.wikipedia.org/wiki/English_language\">English language</a>. This way, you can see what your own text would look like\r\n\r\n<!-- /wp:paragraph -->');
INSERT INTO `wp_postmeta` VALUES (444,71,'_main_body_content','field_673c56c732bf2');
INSERT INTO `wp_postmeta` VALUES (445,70,'main_body_content','<!-- wp:paragraph -->\r\n\r\nThe lorem ipsum text is usually a section of a <a href=\"https://simple.wikipedia.org/wiki/Latin\">Latin</a> text by <a href=\"https://simple.wikipedia.org/wiki/Cicero\">Cicero</a> with words altered, added and removed to make it nonsensical.<sup><a href=\"https://simple.wikipedia.org/wiki/Lorem_ipsum#cite_note-SDop-1\">[1]</a></sup> Lorem ipsum text is used in mock-ups of visual design projects before the actual words are put into the finished product. This is often called <strong>greeking</strong>. The text is derived from <a href=\"https://simple.wikipedia.org/wiki/Cicero\">Cicero</a>\'s <em>De finibus bonorum et malorum</em> (<em>On the Ends of Goods and Evils</em>, sometimes the title is translated as <em>[About] The Purposes of Good and Evil</em> ).<sup><a href=\"https://simple.wikipedia.org/wiki/Lorem_ipsum#cite_note-microsoft-2\">[2]</a></sup> The words \"Lorem ipsum...\" make no sense.\r\n\r\n<!-- /wp:paragraph --> <!-- wp:paragraph -->\r\n\r\nThe text was frequently used in <a href=\"https://simple.wikipedia.org/wiki/Desktop_publishing\">desktop publishing</a> templates. To experiment with the text, it can be copy-pasted into the desktop publishing software, and the typeface and its setting can be tried out. The distribution of letters in Lorem Ipsum is close to that in <a href=\"https://simple.wikipedia.org/wiki/English_language\">English language</a>. This way, you can see what your own text would look like\r\n\r\n<!-- /wp:paragraph -->');
INSERT INTO `wp_postmeta` VALUES (446,70,'_main_body_content','field_673c56c732bf2');
INSERT INTO `wp_postmeta` VALUES (447,121,'_edit_lock','1732031548:1');
INSERT INTO `wp_postmeta` VALUES (448,121,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (449,121,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (450,121,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (451,121,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (452,121,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (453,122,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (454,122,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (455,122,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (456,122,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (461,123,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (462,123,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (463,123,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (464,123,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (469,124,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (470,124,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (471,124,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (472,124,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (477,125,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (478,125,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (479,125,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (480,125,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (482,127,'_edit_lock','1732113688:2');
INSERT INTO `wp_postmeta` VALUES (483,127,'_edit_last','2');
INSERT INTO `wp_postmeta` VALUES (484,127,'event_date','20241130');
INSERT INTO `wp_postmeta` VALUES (485,127,'_event_date','field_672bb0740feb9');
INSERT INTO `wp_postmeta` VALUES (486,127,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (487,127,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (488,127,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (489,127,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (490,127,'related_program','a:1:{i:0;s:2:\"71\";}');
INSERT INTO `wp_postmeta` VALUES (491,127,'_related_program','field_6731c5b940ad7');
INSERT INTO `wp_postmeta` VALUES (492,129,'_edit_lock','1732184211:1');
INSERT INTO `wp_postmeta` VALUES (493,129,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (494,129,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (495,129,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (496,129,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (497,129,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (498,130,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (499,130,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (500,130,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (501,130,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (510,140,'_edit_lock','1732439321:1');
INSERT INTO `wp_postmeta` VALUES (511,140,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (512,140,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (513,140,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (514,140,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (515,140,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (516,141,'_edit_lock','1732301173:1');
INSERT INTO `wp_postmeta` VALUES (517,141,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (518,141,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (519,141,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (520,141,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (521,141,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (546,146,'_edit_lock','1732436011:1');
INSERT INTO `wp_postmeta` VALUES (547,147,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (548,147,'_wp_trash_meta_time','1732436240');
INSERT INTO `wp_postmeta` VALUES (549,147,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (550,146,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (551,146,'_wp_trash_meta_time','1732436240');
INSERT INTO `wp_postmeta` VALUES (552,146,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (553,145,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (554,145,'_wp_trash_meta_time','1732436240');
INSERT INTO `wp_postmeta` VALUES (555,145,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (556,144,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (557,144,'_wp_trash_meta_time','1732436240');
INSERT INTO `wp_postmeta` VALUES (558,144,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (559,143,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (560,143,'_wp_trash_meta_time','1732436240');
INSERT INTO `wp_postmeta` VALUES (561,143,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (562,142,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (563,142,'_wp_trash_meta_time','1732436240');
INSERT INTO `wp_postmeta` VALUES (564,142,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (565,148,'_edit_lock','1732436352:1');
INSERT INTO `wp_postmeta` VALUES (566,151,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (567,151,'_wp_trash_meta_time','1732437953');
INSERT INTO `wp_postmeta` VALUES (568,151,'_wp_desired_post_slug','this-is-real-time');
INSERT INTO `wp_postmeta` VALUES (569,150,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (570,150,'_wp_trash_meta_time','1732437963');
INSERT INTO `wp_postmeta` VALUES (571,150,'_wp_desired_post_slug','test');
INSERT INTO `wp_postmeta` VALUES (572,141,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (573,141,'_wp_trash_meta_time','1732437965');
INSERT INTO `wp_postmeta` VALUES (574,141,'_wp_desired_post_slug','arabic-lecture-1');
INSERT INTO `wp_postmeta` VALUES (575,149,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (576,149,'_wp_trash_meta_time','1732438002');
INSERT INTO `wp_postmeta` VALUES (577,149,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (578,148,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (579,148,'_wp_trash_meta_time','1732438004');
INSERT INTO `wp_postmeta` VALUES (580,148,'_wp_desired_post_slug','');
INSERT INTO `wp_postmeta` VALUES (584,152,'_edit_lock','1732438674:1');
INSERT INTO `wp_postmeta` VALUES (585,152,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (586,152,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (587,152,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (588,152,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (589,152,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (590,152,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (591,152,'_wp_trash_meta_time','1732438201');
INSERT INTO `wp_postmeta` VALUES (592,152,'_wp_desired_post_slug','lecture-1');
INSERT INTO `wp_postmeta` VALUES (593,153,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (594,153,'_wp_trash_meta_time','1732439082');
INSERT INTO `wp_postmeta` VALUES (595,153,'_wp_desired_post_slug','test-register');
INSERT INTO `wp_postmeta` VALUES (596,154,'_edit_lock','1732439298:1');
INSERT INTO `wp_postmeta` VALUES (597,154,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (598,154,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (599,154,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (600,154,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (601,154,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (602,158,'_edit_lock','1732440117:1');
INSERT INTO `wp_postmeta` VALUES (603,160,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (604,160,'_wp_trash_meta_time','1732440898');
INSERT INTO `wp_postmeta` VALUES (605,160,'_wp_desired_post_slug','secret');
INSERT INTO `wp_postmeta` VALUES (606,161,'_edit_lock','1732444098:1');
INSERT INTO `wp_postmeta` VALUES (607,161,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (608,161,'_wp_trash_meta_time','1732444933');
INSERT INTO `wp_postmeta` VALUES (609,161,'_wp_desired_post_slug','hi');
INSERT INTO `wp_postmeta` VALUES (610,161,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (611,161,'_wp_trash_meta_time','1732445409');
INSERT INTO `wp_postmeta` VALUES (612,162,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (613,162,'_wp_trash_meta_time','1732448084');
INSERT INTO `wp_postmeta` VALUES (614,162,'_wp_desired_post_slug','yrtyrty');
INSERT INTO `wp_postmeta` VALUES (615,159,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (616,159,'_wp_trash_meta_time','1732448109');
INSERT INTO `wp_postmeta` VALUES (617,159,'_wp_desired_post_slug','test-filter');
INSERT INTO `wp_postmeta` VALUES (618,164,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (619,164,'_wp_trash_meta_time','1732448445');
INSERT INTO `wp_postmeta` VALUES (620,164,'_wp_desired_post_slug','fghfhfgh');
INSERT INTO `wp_postmeta` VALUES (621,158,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (622,158,'_wp_trash_meta_time','1732448447');
INSERT INTO `wp_postmeta` VALUES (623,158,'_wp_desired_post_slug','filter-filter-2');
INSERT INTO `wp_postmeta` VALUES (624,157,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (625,157,'_wp_trash_meta_time','1732448451');
INSERT INTO `wp_postmeta` VALUES (626,157,'_wp_desired_post_slug','filter-filter');
INSERT INTO `wp_postmeta` VALUES (627,167,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (628,167,'_wp_trash_meta_time','1732448569');
INSERT INTO `wp_postmeta` VALUES (629,167,'_wp_desired_post_slug','hfghfgh');
INSERT INTO `wp_postmeta` VALUES (630,166,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (631,166,'_wp_trash_meta_time','1732448573');
INSERT INTO `wp_postmeta` VALUES (632,166,'_wp_desired_post_slug','hfhfgh');
INSERT INTO `wp_postmeta` VALUES (633,169,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (634,169,'_wp_trash_meta_time','1732448691');
INSERT INTO `wp_postmeta` VALUES (635,169,'_wp_desired_post_slug','fhffgh');
INSERT INTO `wp_postmeta` VALUES (636,168,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (637,168,'_wp_trash_meta_time','1732448700');
INSERT INTO `wp_postmeta` VALUES (638,168,'_wp_desired_post_slug','thhf');
INSERT INTO `wp_postmeta` VALUES (639,163,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (640,163,'_wp_trash_meta_time','1732448759');
INSERT INTO `wp_postmeta` VALUES (641,163,'_wp_desired_post_slug','fghghfgh');
INSERT INTO `wp_postmeta` VALUES (642,171,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (643,171,'_wp_trash_meta_time','1732448791');
INSERT INTO `wp_postmeta` VALUES (644,171,'_wp_desired_post_slug','khjkjhk');
INSERT INTO `wp_postmeta` VALUES (646,173,'_edit_lock','1732546223:1');
INSERT INTO `wp_postmeta` VALUES (647,173,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (679,182,'liked_professor_id','86');
INSERT INTO `wp_postmeta` VALUES (680,183,'liked_professor_id','80');
INSERT INTO `wp_postmeta` VALUES (681,184,'liked_professor_id','80');
INSERT INTO `wp_postmeta` VALUES (682,184,'_edit_lock','1732548481:1');
INSERT INTO `wp_postmeta` VALUES (683,183,'_edit_lock','1732548484:1');
INSERT INTO `wp_postmeta` VALUES (684,182,'_edit_lock','1732548487:1');
INSERT INTO `wp_postmeta` VALUES (685,185,'liked_professor_id','81');
INSERT INTO `wp_postmeta` VALUES (686,185,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (687,185,'_wp_trash_meta_time','1732549495');
INSERT INTO `wp_postmeta` VALUES (688,185,'_wp_desired_post_slug','test-like-4');
INSERT INTO `wp_postmeta` VALUES (689,184,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (690,184,'_wp_trash_meta_time','1732549495');
INSERT INTO `wp_postmeta` VALUES (691,184,'_wp_desired_post_slug','test-like-3');
INSERT INTO `wp_postmeta` VALUES (692,183,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (693,183,'_wp_trash_meta_time','1732549495');
INSERT INTO `wp_postmeta` VALUES (694,183,'_wp_desired_post_slug','test-like-2');
INSERT INTO `wp_postmeta` VALUES (695,182,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (696,182,'_wp_trash_meta_time','1732549495');
INSERT INTO `wp_postmeta` VALUES (697,182,'_wp_desired_post_slug','test-like');
INSERT INTO `wp_postmeta` VALUES (698,186,'liked_professor_id','81');
INSERT INTO `wp_postmeta` VALUES (699,186,'_edit_lock','1732556278:1');
INSERT INTO `wp_postmeta` VALUES (700,187,'liked_professor_id','86');
INSERT INTO `wp_postmeta` VALUES (701,187,'_edit_lock','1732556386:1');
INSERT INTO `wp_postmeta` VALUES (702,188,'liked_professor_id','80');
INSERT INTO `wp_postmeta` VALUES (703,188,'_edit_lock','1732557744:1');
INSERT INTO `wp_postmeta` VALUES (704,188,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (705,188,'_wp_trash_meta_time','1732558100');
INSERT INTO `wp_postmeta` VALUES (706,188,'_wp_desired_post_slug','test-like-3');
INSERT INTO `wp_postmeta` VALUES (707,187,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (708,187,'_wp_trash_meta_time','1732558100');
INSERT INTO `wp_postmeta` VALUES (709,187,'_wp_desired_post_slug','test-like-2');
INSERT INTO `wp_postmeta` VALUES (710,186,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (711,186,'_wp_trash_meta_time','1732558100');
INSERT INTO `wp_postmeta` VALUES (712,186,'_wp_desired_post_slug','test-like');
INSERT INTO `wp_postmeta` VALUES (719,195,'liked_professor_id','80');
INSERT INTO `wp_postmeta` VALUES (726,199,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (727,199,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (728,199,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (729,199,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (734,200,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (735,200,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (736,200,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (737,200,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (740,201,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (741,201,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (742,201,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (743,201,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (750,203,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (751,203,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (752,203,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (753,203,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (756,204,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (757,204,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (758,204,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (759,204,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (762,205,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (763,205,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (764,205,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (765,205,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (768,206,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (769,206,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (770,206,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (771,206,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (774,207,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (775,207,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (776,207,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (777,207,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (780,208,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (781,208,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (782,208,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (783,208,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (784,209,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (785,209,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (786,209,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (787,209,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (792,210,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (793,210,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (794,210,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (795,210,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (806,212,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (807,212,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (808,212,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (809,212,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (812,213,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (813,213,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (814,213,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (815,213,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (820,215,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (821,215,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (822,215,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (823,215,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (828,217,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (829,217,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (830,217,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (831,217,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (836,219,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (837,219,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (838,219,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (839,219,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (844,221,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (845,221,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (846,221,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (847,221,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (850,222,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (851,222,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (852,222,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (853,222,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (856,223,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (857,223,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (858,223,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (859,223,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (864,224,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (865,224,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (866,224,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (867,224,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (870,226,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (871,226,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (872,226,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (873,226,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (878,228,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (879,228,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (880,228,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (881,228,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (884,229,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (885,229,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (886,229,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (887,229,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (892,230,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (893,230,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (894,230,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (895,230,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (898,231,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (899,231,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (900,231,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (901,231,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (906,232,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (907,232,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (908,232,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (909,232,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (916,233,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (917,233,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (918,233,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (919,233,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (924,235,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (925,235,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (926,235,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (927,235,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (930,236,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (931,236,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (932,236,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (933,236,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (938,238,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (939,238,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (940,238,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (941,238,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (949,111,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (951,240,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (955,240,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (956,240,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (957,240,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (958,240,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (965,242,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (969,242,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (970,242,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (971,242,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (972,242,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (977,244,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (981,244,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (982,244,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (983,244,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (984,244,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (988,111,'featuredprofessor','80');
INSERT INTO `wp_postmeta` VALUES (990,245,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (994,245,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (995,245,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (996,245,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (997,245,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (998,246,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (999,246,'_acf_changed','');
INSERT INTO `wp_postmeta` VALUES (1003,9,'featuredprofessor','80');
INSERT INTO `wp_postmeta` VALUES (1004,9,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1006,247,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1008,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1009,9,'_pingme','1');
INSERT INTO `wp_postmeta` VALUES (1010,9,'_encloseme','1');
INSERT INTO `wp_postmeta` VALUES (1011,9,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (1012,9,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (1013,9,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (1014,9,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (1015,247,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (1016,247,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (1017,247,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (1018,247,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (1019,248,'_acf_changed','');
INSERT INTO `wp_postmeta` VALUES (1020,248,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (1021,249,'_edit_lock','1733755124:1');
INSERT INTO `wp_postmeta` VALUES (1022,249,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (1023,249,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (1024,249,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (1025,249,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (1026,249,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (1027,250,'field_banner_subtitle','');
INSERT INTO `wp_postmeta` VALUES (1028,250,'_field_banner_subtitle','field_6732d8638f31f');
INSERT INTO `wp_postmeta` VALUES (1029,250,'page_banner_background_image','');
INSERT INTO `wp_postmeta` VALUES (1030,250,'_page_banner_background_image','field_6732d8958f320');
INSERT INTO `wp_postmeta` VALUES (1031,251,'species','fish');
INSERT INTO `wp_postmeta` VALUES (1032,251,'favFood','Goji berry');
INSERT INTO `wp_postmeta` VALUES (1033,251,'birthYear','2007');
INSERT INTO `wp_postmeta` VALUES (1034,251,'weight','65');
INSERT INTO `wp_postmeta` VALUES (1035,251,'favColor','pink');
INSERT INTO `wp_postmeta` VALUES (1036,251,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1037,252,'species','guinea pig');
INSERT INTO `wp_postmeta` VALUES (1038,252,'favFood','Marionberry');
INSERT INTO `wp_postmeta` VALUES (1039,252,'birthYear','2017');
INSERT INTO `wp_postmeta` VALUES (1040,252,'weight','25');
INSERT INTO `wp_postmeta` VALUES (1041,252,'favColor','blue');
INSERT INTO `wp_postmeta` VALUES (1042,252,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1043,253,'species','hamster');
INSERT INTO `wp_postmeta` VALUES (1044,253,'favFood','Cherry');
INSERT INTO `wp_postmeta` VALUES (1045,253,'birthYear','2014');
INSERT INTO `wp_postmeta` VALUES (1046,253,'weight','28');
INSERT INTO `wp_postmeta` VALUES (1047,253,'favColor','green');
INSERT INTO `wp_postmeta` VALUES (1048,253,'favHobby','playing fetch');
INSERT INTO `wp_postmeta` VALUES (1049,254,'species','guinea pig');
INSERT INTO `wp_postmeta` VALUES (1050,254,'favFood','Fig');
INSERT INTO `wp_postmeta` VALUES (1051,254,'birthYear','2014');
INSERT INTO `wp_postmeta` VALUES (1052,254,'weight','47');
INSERT INTO `wp_postmeta` VALUES (1053,254,'favColor','orange');
INSERT INTO `wp_postmeta` VALUES (1054,254,'favHobby','sunbathing');
INSERT INTO `wp_postmeta` VALUES (1055,255,'species','cat');
INSERT INTO `wp_postmeta` VALUES (1056,255,'favFood','Olive');
INSERT INTO `wp_postmeta` VALUES (1057,255,'birthYear','2020');
INSERT INTO `wp_postmeta` VALUES (1058,255,'weight','59');
INSERT INTO `wp_postmeta` VALUES (1059,255,'favColor','gold');
INSERT INTO `wp_postmeta` VALUES (1060,255,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1061,256,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1062,256,'favFood','Honeydew');
INSERT INTO `wp_postmeta` VALUES (1063,256,'birthYear','2021');
INSERT INTO `wp_postmeta` VALUES (1064,256,'weight','14');
INSERT INTO `wp_postmeta` VALUES (1065,256,'favColor','bronze');
INSERT INTO `wp_postmeta` VALUES (1066,256,'favHobby','playing fetch');
INSERT INTO `wp_postmeta` VALUES (1067,257,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1068,257,'favFood','Olive');
INSERT INTO `wp_postmeta` VALUES (1069,257,'birthYear','2019');
INSERT INTO `wp_postmeta` VALUES (1070,257,'weight','8');
INSERT INTO `wp_postmeta` VALUES (1071,257,'favColor','teal');
INSERT INTO `wp_postmeta` VALUES (1072,257,'favHobby','sunbathing');
INSERT INTO `wp_postmeta` VALUES (1073,258,'species','goat');
INSERT INTO `wp_postmeta` VALUES (1074,258,'favFood','Dragonfruit');
INSERT INTO `wp_postmeta` VALUES (1075,258,'birthYear','2019');
INSERT INTO `wp_postmeta` VALUES (1076,258,'weight','71');
INSERT INTO `wp_postmeta` VALUES (1077,258,'favColor','beige');
INSERT INTO `wp_postmeta` VALUES (1078,258,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1079,259,'species','llama');
INSERT INTO `wp_postmeta` VALUES (1080,259,'favFood','Boysenberry');
INSERT INTO `wp_postmeta` VALUES (1081,259,'birthYear','2016');
INSERT INTO `wp_postmeta` VALUES (1082,259,'weight','44');
INSERT INTO `wp_postmeta` VALUES (1083,259,'favColor','gold');
INSERT INTO `wp_postmeta` VALUES (1084,259,'favHobby','running');
INSERT INTO `wp_postmeta` VALUES (1085,260,'species','chicken');
INSERT INTO `wp_postmeta` VALUES (1086,260,'favFood','Passionfruit');
INSERT INTO `wp_postmeta` VALUES (1087,260,'birthYear','2021');
INSERT INTO `wp_postmeta` VALUES (1088,260,'weight','89');
INSERT INTO `wp_postmeta` VALUES (1089,260,'favColor','blue');
INSERT INTO `wp_postmeta` VALUES (1090,260,'favHobby','playing fetch');
INSERT INTO `wp_postmeta` VALUES (1091,261,'species','cat');
INSERT INTO `wp_postmeta` VALUES (1092,261,'favFood','Tamarind');
INSERT INTO `wp_postmeta` VALUES (1093,261,'birthYear','2019');
INSERT INTO `wp_postmeta` VALUES (1094,261,'weight','91');
INSERT INTO `wp_postmeta` VALUES (1095,261,'favColor','orange');
INSERT INTO `wp_postmeta` VALUES (1096,261,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1097,262,'species','hedgehog');
INSERT INTO `wp_postmeta` VALUES (1098,262,'favFood','Kiwifruit');
INSERT INTO `wp_postmeta` VALUES (1099,262,'birthYear','2018');
INSERT INTO `wp_postmeta` VALUES (1100,262,'weight','42');
INSERT INTO `wp_postmeta` VALUES (1101,262,'favColor','blue');
INSERT INTO `wp_postmeta` VALUES (1102,262,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1103,263,'species','guinea pig');
INSERT INTO `wp_postmeta` VALUES (1104,263,'favFood','Pomegranate');
INSERT INTO `wp_postmeta` VALUES (1105,263,'birthYear','2014');
INSERT INTO `wp_postmeta` VALUES (1106,263,'weight','59');
INSERT INTO `wp_postmeta` VALUES (1107,263,'favColor','beige');
INSERT INTO `wp_postmeta` VALUES (1108,263,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1109,264,'species','mouse');
INSERT INTO `wp_postmeta` VALUES (1110,264,'favFood','Pomegranate');
INSERT INTO `wp_postmeta` VALUES (1111,264,'birthYear','2021');
INSERT INTO `wp_postmeta` VALUES (1112,264,'weight','61');
INSERT INTO `wp_postmeta` VALUES (1113,264,'favColor','pink');
INSERT INTO `wp_postmeta` VALUES (1114,264,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1115,265,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1116,265,'favFood','Kumquat');
INSERT INTO `wp_postmeta` VALUES (1117,265,'birthYear','2008');
INSERT INTO `wp_postmeta` VALUES (1118,265,'weight','39');
INSERT INTO `wp_postmeta` VALUES (1119,265,'favColor','bronze');
INSERT INTO `wp_postmeta` VALUES (1120,265,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1121,266,'species','goat');
INSERT INTO `wp_postmeta` VALUES (1122,266,'favFood','Jackfruit');
INSERT INTO `wp_postmeta` VALUES (1123,266,'birthYear','2013');
INSERT INTO `wp_postmeta` VALUES (1124,266,'weight','51');
INSERT INTO `wp_postmeta` VALUES (1125,266,'favColor','black');
INSERT INTO `wp_postmeta` VALUES (1126,266,'favHobby','sunbathing');
INSERT INTO `wp_postmeta` VALUES (1127,267,'species','llama');
INSERT INTO `wp_postmeta` VALUES (1128,267,'favFood','Blueberry');
INSERT INTO `wp_postmeta` VALUES (1129,267,'birthYear','2017');
INSERT INTO `wp_postmeta` VALUES (1130,267,'weight','63');
INSERT INTO `wp_postmeta` VALUES (1131,267,'favColor','purple');
INSERT INTO `wp_postmeta` VALUES (1132,267,'favHobby','eating');
INSERT INTO `wp_postmeta` VALUES (1133,268,'species','guinea pig');
INSERT INTO `wp_postmeta` VALUES (1134,268,'favFood','Grapefruit');
INSERT INTO `wp_postmeta` VALUES (1135,268,'birthYear','2009');
INSERT INTO `wp_postmeta` VALUES (1136,268,'weight','85');
INSERT INTO `wp_postmeta` VALUES (1137,268,'favColor','gold');
INSERT INTO `wp_postmeta` VALUES (1138,268,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1139,269,'species','hedgehog');
INSERT INTO `wp_postmeta` VALUES (1140,269,'favFood','Cantaloupe');
INSERT INTO `wp_postmeta` VALUES (1141,269,'birthYear','2006');
INSERT INTO `wp_postmeta` VALUES (1142,269,'weight','12');
INSERT INTO `wp_postmeta` VALUES (1143,269,'favColor','silver');
INSERT INTO `wp_postmeta` VALUES (1144,269,'favHobby','sunbathing');
INSERT INTO `wp_postmeta` VALUES (1145,270,'species','lizard');
INSERT INTO `wp_postmeta` VALUES (1146,270,'favFood','Cucumber');
INSERT INTO `wp_postmeta` VALUES (1147,270,'birthYear','2008');
INSERT INTO `wp_postmeta` VALUES (1148,270,'weight','67');
INSERT INTO `wp_postmeta` VALUES (1149,270,'favColor','blue');
INSERT INTO `wp_postmeta` VALUES (1150,270,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1151,271,'species','guinea pig');
INSERT INTO `wp_postmeta` VALUES (1152,271,'favFood','Tangerine');
INSERT INTO `wp_postmeta` VALUES (1153,271,'birthYear','2013');
INSERT INTO `wp_postmeta` VALUES (1154,271,'weight','44');
INSERT INTO `wp_postmeta` VALUES (1155,271,'favColor','green');
INSERT INTO `wp_postmeta` VALUES (1156,271,'favHobby','playing fetch');
INSERT INTO `wp_postmeta` VALUES (1157,272,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1158,272,'favFood','Pineapple');
INSERT INTO `wp_postmeta` VALUES (1159,272,'birthYear','2020');
INSERT INTO `wp_postmeta` VALUES (1160,272,'weight','77');
INSERT INTO `wp_postmeta` VALUES (1161,272,'favColor','gray');
INSERT INTO `wp_postmeta` VALUES (1162,272,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1163,273,'species','goat');
INSERT INTO `wp_postmeta` VALUES (1164,273,'favFood','Asparagus');
INSERT INTO `wp_postmeta` VALUES (1165,273,'birthYear','2011');
INSERT INTO `wp_postmeta` VALUES (1166,273,'weight','45');
INSERT INTO `wp_postmeta` VALUES (1167,273,'favColor','silver');
INSERT INTO `wp_postmeta` VALUES (1168,273,'favHobby','walking');
INSERT INTO `wp_postmeta` VALUES (1169,274,'species','cat');
INSERT INTO `wp_postmeta` VALUES (1170,274,'favFood','Cantaloupe');
INSERT INTO `wp_postmeta` VALUES (1171,274,'birthYear','2018');
INSERT INTO `wp_postmeta` VALUES (1172,274,'weight','71');
INSERT INTO `wp_postmeta` VALUES (1173,274,'favColor','red');
INSERT INTO `wp_postmeta` VALUES (1174,274,'favHobby','scratching furniture');
INSERT INTO `wp_postmeta` VALUES (1175,275,'species','rabbit');
INSERT INTO `wp_postmeta` VALUES (1176,275,'favFood','Jackfruit');
INSERT INTO `wp_postmeta` VALUES (1177,275,'birthYear','2013');
INSERT INTO `wp_postmeta` VALUES (1178,275,'weight','17');
INSERT INTO `wp_postmeta` VALUES (1179,275,'favColor','gray');
INSERT INTO `wp_postmeta` VALUES (1180,275,'favHobby','walking');
INSERT INTO `wp_postmeta` VALUES (1181,276,'species','goat');
INSERT INTO `wp_postmeta` VALUES (1182,276,'favFood','Clementine');
INSERT INTO `wp_postmeta` VALUES (1183,276,'birthYear','2014');
INSERT INTO `wp_postmeta` VALUES (1184,276,'weight','36');
INSERT INTO `wp_postmeta` VALUES (1185,276,'favColor','gold');
INSERT INTO `wp_postmeta` VALUES (1186,276,'favHobby','running');
INSERT INTO `wp_postmeta` VALUES (1187,277,'species','guinea pig');
INSERT INTO `wp_postmeta` VALUES (1188,277,'favFood','Onion');
INSERT INTO `wp_postmeta` VALUES (1189,277,'birthYear','2007');
INSERT INTO `wp_postmeta` VALUES (1190,277,'weight','2');
INSERT INTO `wp_postmeta` VALUES (1191,277,'favColor','silver');
INSERT INTO `wp_postmeta` VALUES (1192,277,'favHobby','playing fetch');
INSERT INTO `wp_postmeta` VALUES (1193,278,'species','cat');
INSERT INTO `wp_postmeta` VALUES (1194,278,'favFood','Pear');
INSERT INTO `wp_postmeta` VALUES (1195,278,'birthYear','2016');
INSERT INTO `wp_postmeta` VALUES (1196,278,'weight','6');
INSERT INTO `wp_postmeta` VALUES (1197,278,'favColor','white');
INSERT INTO `wp_postmeta` VALUES (1198,278,'favHobby','sunbathing');
INSERT INTO `wp_postmeta` VALUES (1199,279,'species','lizard');
INSERT INTO `wp_postmeta` VALUES (1200,279,'favFood','Strawberry');
INSERT INTO `wp_postmeta` VALUES (1201,279,'birthYear','2006');
INSERT INTO `wp_postmeta` VALUES (1202,279,'weight','19');
INSERT INTO `wp_postmeta` VALUES (1203,279,'favColor','red');
INSERT INTO `wp_postmeta` VALUES (1204,279,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1205,280,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1206,280,'favFood','Coconut');
INSERT INTO `wp_postmeta` VALUES (1207,280,'birthYear','2021');
INSERT INTO `wp_postmeta` VALUES (1208,280,'weight','21');
INSERT INTO `wp_postmeta` VALUES (1209,280,'favColor','bronze');
INSERT INTO `wp_postmeta` VALUES (1210,280,'favHobby','walking');
INSERT INTO `wp_postmeta` VALUES (1211,281,'species','rabbit');
INSERT INTO `wp_postmeta` VALUES (1212,281,'favFood','Celery');
INSERT INTO `wp_postmeta` VALUES (1213,281,'birthYear','2013');
INSERT INTO `wp_postmeta` VALUES (1214,281,'weight','9');
INSERT INTO `wp_postmeta` VALUES (1215,281,'favColor','silver');
INSERT INTO `wp_postmeta` VALUES (1216,281,'favHobby','sunbathing');
INSERT INTO `wp_postmeta` VALUES (1217,282,'species','cat');
INSERT INTO `wp_postmeta` VALUES (1218,282,'favFood','Boysenberry');
INSERT INTO `wp_postmeta` VALUES (1219,282,'birthYear','2007');
INSERT INTO `wp_postmeta` VALUES (1220,282,'weight','32');
INSERT INTO `wp_postmeta` VALUES (1221,282,'favColor','beige');
INSERT INTO `wp_postmeta` VALUES (1222,282,'favHobby','running');
INSERT INTO `wp_postmeta` VALUES (1223,283,'species','fish');
INSERT INTO `wp_postmeta` VALUES (1224,283,'favFood','Avocado');
INSERT INTO `wp_postmeta` VALUES (1225,283,'birthYear','2020');
INSERT INTO `wp_postmeta` VALUES (1226,283,'weight','5');
INSERT INTO `wp_postmeta` VALUES (1227,283,'favColor','red');
INSERT INTO `wp_postmeta` VALUES (1228,283,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1229,284,'species','dog');
INSERT INTO `wp_postmeta` VALUES (1230,284,'favFood','Broccoli');
INSERT INTO `wp_postmeta` VALUES (1231,284,'birthYear','2010');
INSERT INTO `wp_postmeta` VALUES (1232,284,'weight','48');
INSERT INTO `wp_postmeta` VALUES (1233,284,'favColor','purple');
INSERT INTO `wp_postmeta` VALUES (1234,284,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1235,285,'species','chicken');
INSERT INTO `wp_postmeta` VALUES (1236,285,'favFood','Tangerine');
INSERT INTO `wp_postmeta` VALUES (1237,285,'birthYear','2011');
INSERT INTO `wp_postmeta` VALUES (1238,285,'weight','66');
INSERT INTO `wp_postmeta` VALUES (1239,285,'favColor','purple');
INSERT INTO `wp_postmeta` VALUES (1240,285,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1241,286,'species','lizard');
INSERT INTO `wp_postmeta` VALUES (1242,286,'favFood','Asparagus');
INSERT INTO `wp_postmeta` VALUES (1243,286,'birthYear','2015');
INSERT INTO `wp_postmeta` VALUES (1244,286,'weight','6');
INSERT INTO `wp_postmeta` VALUES (1245,286,'favColor','white');
INSERT INTO `wp_postmeta` VALUES (1246,286,'favHobby','playing fetch');
INSERT INTO `wp_postmeta` VALUES (1247,287,'species','fish');
INSERT INTO `wp_postmeta` VALUES (1248,287,'favFood','Lemon');
INSERT INTO `wp_postmeta` VALUES (1249,287,'birthYear','2008');
INSERT INTO `wp_postmeta` VALUES (1250,287,'weight','47');
INSERT INTO `wp_postmeta` VALUES (1251,287,'favColor','orange');
INSERT INTO `wp_postmeta` VALUES (1252,287,'favHobby','eating');
INSERT INTO `wp_postmeta` VALUES (1253,288,'species','rabbit');
INSERT INTO `wp_postmeta` VALUES (1254,288,'favFood','Orange');
INSERT INTO `wp_postmeta` VALUES (1255,288,'birthYear','2008');
INSERT INTO `wp_postmeta` VALUES (1256,288,'weight','1');
INSERT INTO `wp_postmeta` VALUES (1257,288,'favColor','yellow');
INSERT INTO `wp_postmeta` VALUES (1258,288,'favHobby','scratching furniture');
INSERT INTO `wp_postmeta` VALUES (1259,289,'species','mouse');
INSERT INTO `wp_postmeta` VALUES (1260,289,'favFood','Nance');
INSERT INTO `wp_postmeta` VALUES (1261,289,'birthYear','2011');
INSERT INTO `wp_postmeta` VALUES (1262,289,'weight','87');
INSERT INTO `wp_postmeta` VALUES (1263,289,'favColor','yellow');
INSERT INTO `wp_postmeta` VALUES (1264,289,'favHobby','walking');
INSERT INTO `wp_postmeta` VALUES (1265,290,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1266,290,'favFood','Prune');
INSERT INTO `wp_postmeta` VALUES (1267,290,'birthYear','2009');
INSERT INTO `wp_postmeta` VALUES (1268,290,'weight','22');
INSERT INTO `wp_postmeta` VALUES (1269,290,'favColor','yellow');
INSERT INTO `wp_postmeta` VALUES (1270,290,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1271,291,'species','llama');
INSERT INTO `wp_postmeta` VALUES (1272,291,'favFood','Coconut');
INSERT INTO `wp_postmeta` VALUES (1273,291,'birthYear','2016');
INSERT INTO `wp_postmeta` VALUES (1274,291,'weight','58');
INSERT INTO `wp_postmeta` VALUES (1275,291,'favColor','orange');
INSERT INTO `wp_postmeta` VALUES (1276,291,'favHobby','running');
INSERT INTO `wp_postmeta` VALUES (1277,292,'species','lizard');
INSERT INTO `wp_postmeta` VALUES (1278,292,'favFood','Persimmon');
INSERT INTO `wp_postmeta` VALUES (1279,292,'birthYear','2009');
INSERT INTO `wp_postmeta` VALUES (1280,292,'weight','5');
INSERT INTO `wp_postmeta` VALUES (1281,292,'favColor','teal');
INSERT INTO `wp_postmeta` VALUES (1282,292,'favHobby','walking');
INSERT INTO `wp_postmeta` VALUES (1283,293,'species','mouse');
INSERT INTO `wp_postmeta` VALUES (1284,293,'favFood','Honeydew');
INSERT INTO `wp_postmeta` VALUES (1285,293,'birthYear','2006');
INSERT INTO `wp_postmeta` VALUES (1286,293,'weight','31');
INSERT INTO `wp_postmeta` VALUES (1287,293,'favColor','gray');
INSERT INTO `wp_postmeta` VALUES (1288,293,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1289,294,'species','goat');
INSERT INTO `wp_postmeta` VALUES (1290,294,'favFood','Mulberry');
INSERT INTO `wp_postmeta` VALUES (1291,294,'birthYear','2006');
INSERT INTO `wp_postmeta` VALUES (1292,294,'weight','62');
INSERT INTO `wp_postmeta` VALUES (1293,294,'favColor','green');
INSERT INTO `wp_postmeta` VALUES (1294,294,'favHobby','walking');
INSERT INTO `wp_postmeta` VALUES (1295,295,'species','fish');
INSERT INTO `wp_postmeta` VALUES (1296,295,'favFood','Goji berry');
INSERT INTO `wp_postmeta` VALUES (1297,295,'birthYear','2016');
INSERT INTO `wp_postmeta` VALUES (1298,295,'weight','21');
INSERT INTO `wp_postmeta` VALUES (1299,295,'favColor','orange');
INSERT INTO `wp_postmeta` VALUES (1300,295,'favHobby','eating');
INSERT INTO `wp_postmeta` VALUES (1301,296,'species','goat');
INSERT INTO `wp_postmeta` VALUES (1302,296,'favFood','Mango');
INSERT INTO `wp_postmeta` VALUES (1303,296,'birthYear','2012');
INSERT INTO `wp_postmeta` VALUES (1304,296,'weight','44');
INSERT INTO `wp_postmeta` VALUES (1305,296,'favColor','red');
INSERT INTO `wp_postmeta` VALUES (1306,296,'favHobby','running');
INSERT INTO `wp_postmeta` VALUES (1307,297,'species','dog');
INSERT INTO `wp_postmeta` VALUES (1308,297,'favFood','Tamarind');
INSERT INTO `wp_postmeta` VALUES (1309,297,'birthYear','2018');
INSERT INTO `wp_postmeta` VALUES (1310,297,'weight','8');
INSERT INTO `wp_postmeta` VALUES (1311,297,'favColor','yellow');
INSERT INTO `wp_postmeta` VALUES (1312,297,'favHobby','eating');
INSERT INTO `wp_postmeta` VALUES (1313,298,'species','hamster');
INSERT INTO `wp_postmeta` VALUES (1314,298,'favFood','Mulberry');
INSERT INTO `wp_postmeta` VALUES (1315,298,'birthYear','2008');
INSERT INTO `wp_postmeta` VALUES (1316,298,'weight','26');
INSERT INTO `wp_postmeta` VALUES (1317,298,'favColor','gray');
INSERT INTO `wp_postmeta` VALUES (1318,298,'favHobby','playing fetch');
INSERT INTO `wp_postmeta` VALUES (1319,299,'species','hedgehog');
INSERT INTO `wp_postmeta` VALUES (1320,299,'favFood','Raspberry');
INSERT INTO `wp_postmeta` VALUES (1321,299,'birthYear','2020');
INSERT INTO `wp_postmeta` VALUES (1322,299,'weight','17');
INSERT INTO `wp_postmeta` VALUES (1323,299,'favColor','green');
INSERT INTO `wp_postmeta` VALUES (1324,299,'favHobby','scratching furniture');
INSERT INTO `wp_postmeta` VALUES (1325,300,'species','fish');
INSERT INTO `wp_postmeta` VALUES (1326,300,'favFood','Papaya');
INSERT INTO `wp_postmeta` VALUES (1327,300,'birthYear','2014');
INSERT INTO `wp_postmeta` VALUES (1328,300,'weight','40');
INSERT INTO `wp_postmeta` VALUES (1329,300,'favColor','gold');
INSERT INTO `wp_postmeta` VALUES (1330,300,'favHobby','running');
INSERT INTO `wp_postmeta` VALUES (1331,301,'species','rabbit');
INSERT INTO `wp_postmeta` VALUES (1332,301,'favFood','Loquat');
INSERT INTO `wp_postmeta` VALUES (1333,301,'birthYear','2014');
INSERT INTO `wp_postmeta` VALUES (1334,301,'weight','52');
INSERT INTO `wp_postmeta` VALUES (1335,301,'favColor','gold');
INSERT INTO `wp_postmeta` VALUES (1336,301,'favHobby','running');
INSERT INTO `wp_postmeta` VALUES (1337,302,'species','fish');
INSERT INTO `wp_postmeta` VALUES (1338,302,'favFood','Cilantro');
INSERT INTO `wp_postmeta` VALUES (1339,302,'birthYear','2011');
INSERT INTO `wp_postmeta` VALUES (1340,302,'weight','59');
INSERT INTO `wp_postmeta` VALUES (1341,302,'favColor','purple');
INSERT INTO `wp_postmeta` VALUES (1342,302,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1343,303,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1344,303,'favFood','Pomegranate');
INSERT INTO `wp_postmeta` VALUES (1345,303,'birthYear','2008');
INSERT INTO `wp_postmeta` VALUES (1346,303,'weight','11');
INSERT INTO `wp_postmeta` VALUES (1347,303,'favColor','pink');
INSERT INTO `wp_postmeta` VALUES (1348,303,'favHobby','sunbathing');
INSERT INTO `wp_postmeta` VALUES (1349,304,'species','hedgehog');
INSERT INTO `wp_postmeta` VALUES (1350,304,'favFood','Grape');
INSERT INTO `wp_postmeta` VALUES (1351,304,'birthYear','2013');
INSERT INTO `wp_postmeta` VALUES (1352,304,'weight','86');
INSERT INTO `wp_postmeta` VALUES (1353,304,'favColor','purple');
INSERT INTO `wp_postmeta` VALUES (1354,304,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1355,305,'species','llama');
INSERT INTO `wp_postmeta` VALUES (1356,305,'favFood','Gooseberry');
INSERT INTO `wp_postmeta` VALUES (1357,305,'birthYear','2006');
INSERT INTO `wp_postmeta` VALUES (1358,305,'weight','37');
INSERT INTO `wp_postmeta` VALUES (1359,305,'favColor','black');
INSERT INTO `wp_postmeta` VALUES (1360,305,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1361,306,'species','hamster');
INSERT INTO `wp_postmeta` VALUES (1362,306,'favFood','Clementine');
INSERT INTO `wp_postmeta` VALUES (1363,306,'birthYear','2010');
INSERT INTO `wp_postmeta` VALUES (1364,306,'weight','44');
INSERT INTO `wp_postmeta` VALUES (1365,306,'favColor','bronze');
INSERT INTO `wp_postmeta` VALUES (1366,306,'favHobby','playing fetch');
INSERT INTO `wp_postmeta` VALUES (1367,307,'species','llama');
INSERT INTO `wp_postmeta` VALUES (1368,307,'favFood','Mandarine');
INSERT INTO `wp_postmeta` VALUES (1369,307,'birthYear','2007');
INSERT INTO `wp_postmeta` VALUES (1370,307,'weight','35');
INSERT INTO `wp_postmeta` VALUES (1371,307,'favColor','bronze');
INSERT INTO `wp_postmeta` VALUES (1372,307,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1373,308,'species','rabbit');
INSERT INTO `wp_postmeta` VALUES (1374,308,'favFood','Peach');
INSERT INTO `wp_postmeta` VALUES (1375,308,'birthYear','2008');
INSERT INTO `wp_postmeta` VALUES (1376,308,'weight','38');
INSERT INTO `wp_postmeta` VALUES (1377,308,'favColor','white');
INSERT INTO `wp_postmeta` VALUES (1378,308,'favHobby','walking');
INSERT INTO `wp_postmeta` VALUES (1379,309,'species','cat');
INSERT INTO `wp_postmeta` VALUES (1380,309,'favFood','Tamarind');
INSERT INTO `wp_postmeta` VALUES (1381,309,'birthYear','2020');
INSERT INTO `wp_postmeta` VALUES (1382,309,'weight','73');
INSERT INTO `wp_postmeta` VALUES (1383,309,'favColor','pink');
INSERT INTO `wp_postmeta` VALUES (1384,309,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1385,310,'species','lizard');
INSERT INTO `wp_postmeta` VALUES (1386,310,'favFood','Loquat');
INSERT INTO `wp_postmeta` VALUES (1387,310,'birthYear','2006');
INSERT INTO `wp_postmeta` VALUES (1388,310,'weight','86');
INSERT INTO `wp_postmeta` VALUES (1389,310,'favColor','green');
INSERT INTO `wp_postmeta` VALUES (1390,310,'favHobby','scratching furniture');
INSERT INTO `wp_postmeta` VALUES (1391,311,'species','rabbit');
INSERT INTO `wp_postmeta` VALUES (1392,311,'favFood','Tamarind');
INSERT INTO `wp_postmeta` VALUES (1393,311,'birthYear','2020');
INSERT INTO `wp_postmeta` VALUES (1394,311,'weight','30');
INSERT INTO `wp_postmeta` VALUES (1395,311,'favColor','blue');
INSERT INTO `wp_postmeta` VALUES (1396,311,'favHobby','scratching furniture');
INSERT INTO `wp_postmeta` VALUES (1397,312,'species','chicken');
INSERT INTO `wp_postmeta` VALUES (1398,312,'favFood','Onion');
INSERT INTO `wp_postmeta` VALUES (1399,312,'birthYear','2009');
INSERT INTO `wp_postmeta` VALUES (1400,312,'weight','15');
INSERT INTO `wp_postmeta` VALUES (1401,312,'favColor','teal');
INSERT INTO `wp_postmeta` VALUES (1402,312,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1403,313,'species','dog');
INSERT INTO `wp_postmeta` VALUES (1404,313,'favFood','Broccoli');
INSERT INTO `wp_postmeta` VALUES (1405,313,'birthYear','2006');
INSERT INTO `wp_postmeta` VALUES (1406,313,'weight','15');
INSERT INTO `wp_postmeta` VALUES (1407,313,'favColor','black');
INSERT INTO `wp_postmeta` VALUES (1408,313,'favHobby','eating');
INSERT INTO `wp_postmeta` VALUES (1409,314,'species','guinea pig');
INSERT INTO `wp_postmeta` VALUES (1410,314,'favFood','Dragonfruit');
INSERT INTO `wp_postmeta` VALUES (1411,314,'birthYear','2017');
INSERT INTO `wp_postmeta` VALUES (1412,314,'weight','64');
INSERT INTO `wp_postmeta` VALUES (1413,314,'favColor','blue');
INSERT INTO `wp_postmeta` VALUES (1414,314,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1415,315,'species','chicken');
INSERT INTO `wp_postmeta` VALUES (1416,315,'favFood','Cantaloupe');
INSERT INTO `wp_postmeta` VALUES (1417,315,'birthYear','2016');
INSERT INTO `wp_postmeta` VALUES (1418,315,'weight','4');
INSERT INTO `wp_postmeta` VALUES (1419,315,'favColor','pink');
INSERT INTO `wp_postmeta` VALUES (1420,315,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1421,316,'species','chicken');
INSERT INTO `wp_postmeta` VALUES (1422,316,'favFood','Tamarind');
INSERT INTO `wp_postmeta` VALUES (1423,316,'birthYear','2015');
INSERT INTO `wp_postmeta` VALUES (1424,316,'weight','80');
INSERT INTO `wp_postmeta` VALUES (1425,316,'favColor','gray');
INSERT INTO `wp_postmeta` VALUES (1426,316,'favHobby','scratching furniture');
INSERT INTO `wp_postmeta` VALUES (1427,317,'species','mouse');
INSERT INTO `wp_postmeta` VALUES (1428,317,'favFood','Pineapple');
INSERT INTO `wp_postmeta` VALUES (1429,317,'birthYear','2011');
INSERT INTO `wp_postmeta` VALUES (1430,317,'weight','45');
INSERT INTO `wp_postmeta` VALUES (1431,317,'favColor','bronze');
INSERT INTO `wp_postmeta` VALUES (1432,317,'favHobby','scratching furniture');
INSERT INTO `wp_postmeta` VALUES (1433,318,'species','mouse');
INSERT INTO `wp_postmeta` VALUES (1434,318,'favFood','Olive');
INSERT INTO `wp_postmeta` VALUES (1435,318,'birthYear','2008');
INSERT INTO `wp_postmeta` VALUES (1436,318,'weight','86');
INSERT INTO `wp_postmeta` VALUES (1437,318,'favColor','purple');
INSERT INTO `wp_postmeta` VALUES (1438,318,'favHobby','sunbathing');
INSERT INTO `wp_postmeta` VALUES (1439,319,'species','guinea pig');
INSERT INTO `wp_postmeta` VALUES (1440,319,'favFood','Mango');
INSERT INTO `wp_postmeta` VALUES (1441,319,'birthYear','2006');
INSERT INTO `wp_postmeta` VALUES (1442,319,'weight','38');
INSERT INTO `wp_postmeta` VALUES (1443,319,'favColor','yellow');
INSERT INTO `wp_postmeta` VALUES (1444,319,'favHobby','running');
INSERT INTO `wp_postmeta` VALUES (1445,320,'species','llama');
INSERT INTO `wp_postmeta` VALUES (1446,320,'favFood','Asparagus');
INSERT INTO `wp_postmeta` VALUES (1447,320,'birthYear','2020');
INSERT INTO `wp_postmeta` VALUES (1448,320,'weight','62');
INSERT INTO `wp_postmeta` VALUES (1449,320,'favColor','orange');
INSERT INTO `wp_postmeta` VALUES (1450,320,'favHobby','scratching furniture');
INSERT INTO `wp_postmeta` VALUES (1451,321,'species','mouse');
INSERT INTO `wp_postmeta` VALUES (1452,321,'favFood','Turnip');
INSERT INTO `wp_postmeta` VALUES (1453,321,'birthYear','2011');
INSERT INTO `wp_postmeta` VALUES (1454,321,'weight','19');
INSERT INTO `wp_postmeta` VALUES (1455,321,'favColor','green');
INSERT INTO `wp_postmeta` VALUES (1456,321,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1457,322,'species','chicken');
INSERT INTO `wp_postmeta` VALUES (1458,322,'favFood','Onion');
INSERT INTO `wp_postmeta` VALUES (1459,322,'birthYear','2020');
INSERT INTO `wp_postmeta` VALUES (1460,322,'weight','27');
INSERT INTO `wp_postmeta` VALUES (1461,322,'favColor','teal');
INSERT INTO `wp_postmeta` VALUES (1462,322,'favHobby','scratching furniture');
INSERT INTO `wp_postmeta` VALUES (1463,323,'species','guinea pig');
INSERT INTO `wp_postmeta` VALUES (1464,323,'favFood','Apple');
INSERT INTO `wp_postmeta` VALUES (1465,323,'birthYear','2013');
INSERT INTO `wp_postmeta` VALUES (1466,323,'weight','38');
INSERT INTO `wp_postmeta` VALUES (1467,323,'favColor','beige');
INSERT INTO `wp_postmeta` VALUES (1468,323,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1469,324,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1470,324,'favFood','Jackfruit');
INSERT INTO `wp_postmeta` VALUES (1471,324,'birthYear','2014');
INSERT INTO `wp_postmeta` VALUES (1472,324,'weight','90');
INSERT INTO `wp_postmeta` VALUES (1473,324,'favColor','black');
INSERT INTO `wp_postmeta` VALUES (1474,324,'favHobby','playing fetch');
INSERT INTO `wp_postmeta` VALUES (1475,325,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1476,325,'favFood','Tamarind');
INSERT INTO `wp_postmeta` VALUES (1477,325,'birthYear','2012');
INSERT INTO `wp_postmeta` VALUES (1478,325,'weight','59');
INSERT INTO `wp_postmeta` VALUES (1479,325,'favColor','beige');
INSERT INTO `wp_postmeta` VALUES (1480,325,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1481,326,'species','fish');
INSERT INTO `wp_postmeta` VALUES (1482,326,'favFood','Cantaloupe');
INSERT INTO `wp_postmeta` VALUES (1483,326,'birthYear','2011');
INSERT INTO `wp_postmeta` VALUES (1484,326,'weight','100');
INSERT INTO `wp_postmeta` VALUES (1485,326,'favColor','silver');
INSERT INTO `wp_postmeta` VALUES (1486,326,'favHobby','eating');
INSERT INTO `wp_postmeta` VALUES (1487,327,'species','hamster');
INSERT INTO `wp_postmeta` VALUES (1488,327,'favFood','Olive');
INSERT INTO `wp_postmeta` VALUES (1489,327,'birthYear','2007');
INSERT INTO `wp_postmeta` VALUES (1490,327,'weight','22');
INSERT INTO `wp_postmeta` VALUES (1491,327,'favColor','white');
INSERT INTO `wp_postmeta` VALUES (1492,327,'favHobby','scratching furniture');
INSERT INTO `wp_postmeta` VALUES (1493,328,'species','goat');
INSERT INTO `wp_postmeta` VALUES (1494,328,'favFood','Plum');
INSERT INTO `wp_postmeta` VALUES (1495,328,'birthYear','2009');
INSERT INTO `wp_postmeta` VALUES (1496,328,'weight','50');
INSERT INTO `wp_postmeta` VALUES (1497,328,'favColor','silver');
INSERT INTO `wp_postmeta` VALUES (1498,328,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1499,329,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1500,329,'favFood','Dragonfruit');
INSERT INTO `wp_postmeta` VALUES (1501,329,'birthYear','2010');
INSERT INTO `wp_postmeta` VALUES (1502,329,'weight','78');
INSERT INTO `wp_postmeta` VALUES (1503,329,'favColor','black');
INSERT INTO `wp_postmeta` VALUES (1504,329,'favHobby','running');
INSERT INTO `wp_postmeta` VALUES (1505,330,'species','goat');
INSERT INTO `wp_postmeta` VALUES (1506,330,'favFood','Papaya');
INSERT INTO `wp_postmeta` VALUES (1507,330,'birthYear','2016');
INSERT INTO `wp_postmeta` VALUES (1508,330,'weight','68');
INSERT INTO `wp_postmeta` VALUES (1509,330,'favColor','beige');
INSERT INTO `wp_postmeta` VALUES (1510,330,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1511,331,'species','hamster');
INSERT INTO `wp_postmeta` VALUES (1512,331,'favFood','Guava');
INSERT INTO `wp_postmeta` VALUES (1513,331,'birthYear','2011');
INSERT INTO `wp_postmeta` VALUES (1514,331,'weight','4');
INSERT INTO `wp_postmeta` VALUES (1515,331,'favColor','bronze');
INSERT INTO `wp_postmeta` VALUES (1516,331,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1517,332,'species','guinea pig');
INSERT INTO `wp_postmeta` VALUES (1518,332,'favFood','Blackberry');
INSERT INTO `wp_postmeta` VALUES (1519,332,'birthYear','2014');
INSERT INTO `wp_postmeta` VALUES (1520,332,'weight','78');
INSERT INTO `wp_postmeta` VALUES (1521,332,'favColor','white');
INSERT INTO `wp_postmeta` VALUES (1522,332,'favHobby','eating');
INSERT INTO `wp_postmeta` VALUES (1523,333,'species','dog');
INSERT INTO `wp_postmeta` VALUES (1524,333,'favFood','Garlic');
INSERT INTO `wp_postmeta` VALUES (1525,333,'birthYear','2018');
INSERT INTO `wp_postmeta` VALUES (1526,333,'weight','88');
INSERT INTO `wp_postmeta` VALUES (1527,333,'favColor','gray');
INSERT INTO `wp_postmeta` VALUES (1528,333,'favHobby','destroying stuff');
INSERT INTO `wp_postmeta` VALUES (1529,334,'species','bird');
INSERT INTO `wp_postmeta` VALUES (1530,334,'favFood','Corn');
INSERT INTO `wp_postmeta` VALUES (1531,334,'birthYear','2012');
INSERT INTO `wp_postmeta` VALUES (1532,334,'weight','6');
INSERT INTO `wp_postmeta` VALUES (1533,334,'favColor','red');
INSERT INTO `wp_postmeta` VALUES (1534,334,'favHobby','sleeping');
INSERT INTO `wp_postmeta` VALUES (1535,335,'species','hamster');
INSERT INTO `wp_postmeta` VALUES (1536,335,'favFood','Nance');
INSERT INTO `wp_postmeta` VALUES (1537,335,'birthYear','2018');
INSERT INTO `wp_postmeta` VALUES (1538,335,'weight','53');
INSERT INTO `wp_postmeta` VALUES (1539,335,'favColor','purple');
INSERT INTO `wp_postmeta` VALUES (1540,335,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1541,336,'species','lizard');
INSERT INTO `wp_postmeta` VALUES (1542,336,'favFood','Yam');
INSERT INTO `wp_postmeta` VALUES (1543,336,'birthYear','2009');
INSERT INTO `wp_postmeta` VALUES (1544,336,'weight','83');
INSERT INTO `wp_postmeta` VALUES (1545,336,'favColor','green');
INSERT INTO `wp_postmeta` VALUES (1546,336,'favHobby','walking');
INSERT INTO `wp_postmeta` VALUES (1547,337,'species','chicken');
INSERT INTO `wp_postmeta` VALUES (1548,337,'favFood','Huckleberry');
INSERT INTO `wp_postmeta` VALUES (1549,337,'birthYear','2011');
INSERT INTO `wp_postmeta` VALUES (1550,337,'weight','4');
INSERT INTO `wp_postmeta` VALUES (1551,337,'favColor','red');
INSERT INTO `wp_postmeta` VALUES (1552,337,'favHobby','eating');
INSERT INTO `wp_postmeta` VALUES (1553,338,'species','goat');
INSERT INTO `wp_postmeta` VALUES (1554,338,'favFood','Pomegranate');
INSERT INTO `wp_postmeta` VALUES (1555,338,'birthYear','2016');
INSERT INTO `wp_postmeta` VALUES (1556,338,'weight','11');
INSERT INTO `wp_postmeta` VALUES (1557,338,'favColor','silver');
INSERT INTO `wp_postmeta` VALUES (1558,338,'favHobby','eating');
INSERT INTO `wp_postmeta` VALUES (1559,339,'species','rabbit');
INSERT INTO `wp_postmeta` VALUES (1560,339,'favFood','Guava');
INSERT INTO `wp_postmeta` VALUES (1561,339,'birthYear','2014');
INSERT INTO `wp_postmeta` VALUES (1562,339,'weight','31');
INSERT INTO `wp_postmeta` VALUES (1563,339,'favColor','bronze');
INSERT INTO `wp_postmeta` VALUES (1564,339,'favHobby','chasing stuff');
INSERT INTO `wp_postmeta` VALUES (1565,340,'species','hamster');
INSERT INTO `wp_postmeta` VALUES (1566,340,'favFood','Passionfruit');
INSERT INTO `wp_postmeta` VALUES (1567,340,'birthYear','2011');
INSERT INTO `wp_postmeta` VALUES (1568,340,'weight','11');
INSERT INTO `wp_postmeta` VALUES (1569,340,'favColor','white');
INSERT INTO `wp_postmeta` VALUES (1570,340,'favHobby','playing fetch');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-10-31 07:53:52','2024-10-31 07:53:52','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-10-31 07:53:52','2024-10-31 07:53:52','',0,'http://fictional-university.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-10-31 07:53:52','2024-10-31 07:53:52','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-10-31 07:53:52','2024-10-31 07:53:52','',0,'http://fictional-university.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-10-31 07:53:52','2024-10-31 07:53:52','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','publish','closed','open','','privacy-policy','','','2024-11-02 17:33:43','2024-11-02 17:33:43','',0,'http://fictional-university.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2024-10-31 07:54:12','2024-10-31 07:54:12','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-10-31 07:54:12','2024-10-31 07:54:12','',0,'http://fictional-university.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2024-10-31 07:54:22','2024-10-31 07:54:22','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfour','','','2024-10-31 07:54:22','2024-10-31 07:54:22','',0,'http://fictional-university.local/wp-global-styles-twentytwentyfour/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-11-01 14:27:04','2024-11-01 14:27:04','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Demo Post Number 1','','publish','open','open','','demo-post-number-1','','','2024-11-01 14:27:04','2024-11-01 14:27:04','',0,'http://fictional-university.local/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-11-01 14:27:04','2024-11-01 14:27:04','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Demo Post Number 1','','inherit','closed','closed','','7-revision-v1','','','2024-11-01 14:27:04','2024-11-01 14:27:04','',7,'http://fictional-university.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-11-01 14:27:37','2024-11-01 14:27:37','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"80\"} /-->','Demo Post Number 2','This is so good the know WordPress\n','publish','open','open','','demo-post-number-2','','','2024-12-09 09:28:15','2024-12-09 09:28:15','',0,'http://fictional-university.local/?p=9',0,'post','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-11-01 14:27:37','2024-11-01 14:27:37','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Demo Post Number 2','','inherit','closed','closed','','9-revision-v1','','','2024-11-01 14:27:37','2024-11-01 14:27:37','',9,'http://fictional-university.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-11-01 14:57:20','2024-11-01 14:57:20','<!-- wp:paragraph -->\n<p>this is a new page not post</p>\n<!-- /wp:paragraph -->','this is a new page not post','','publish','closed','closed','','this-is-a-new-page-not-post','','','2024-11-01 14:57:20','2024-11-01 14:57:20','',0,'http://fictional-university.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-11-01 14:57:20','2024-11-01 14:57:20','<!-- wp:paragraph -->\n<p>this is a new page not post</p>\n<!-- /wp:paragraph -->','this is a new page not post','','inherit','closed','closed','','11-revision-v1','','','2024-11-01 14:57:20','2024-11-01 14:57:20','',11,'http://fictional-university.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-11-02 17:20:11','2024-11-02 17:20:11','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->','About Page','','publish','closed','closed','','about-page','','','2024-11-12 08:27:24','2024-11-12 08:27:24','',0,'http://fictional-university.local/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-11-02 17:20:11','2024-11-02 17:20:11','<!-- wp:paragraph -->\n<p>this is about page</p>\n<!-- /wp:paragraph -->','About Page','','inherit','closed','closed','','13-revision-v1','','','2024-11-02 17:20:11','2024-11-02 17:20:11','',13,'http://fictional-university.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-11-02 17:33:43','2024-11-02 17:33:43','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://fictional-university.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-11-02 17:33:43','2024-11-02 17:33:43','',3,'http://fictional-university.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-11-02 18:50:49','2024-11-02 18:50:49','<!-- wp:paragraph -->\n<p>this is our history page</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer facilisis, nisi vel fermentum feugiat, justo mauris semper nunc, ac ultricies dui tortor quis diam. Fusce lacinia ornare tincidunt. Donec et est in libero venenatis venenatis id nec enim. Aliquam erat volutpat. Proin dignissim sapien dignissim varius malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis blandit massa vitae rhoncus dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Fusce sodales justo et magna tincidunt, sit amet luctus nunc efficitur. Phasellus nec libero maximus, blandit urna non, euismod leo. Cras a enim in odio pretium pharetra sit amet et nisl. Sed mollis tellus at tortor posuere euismod. Phasellus vel metus vel enim pharetra mattis. Pellentesque ultrices mauris eget sem mattis, a commodo massa sollicitudin. Phasellus interdum vitae arcu quis scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur tincidunt neque nec scelerisque blandit. Aliquam venenatis velit quis lectus aliquam, eu porttitor orci elementum. In at interdum nibh, quis porttitor ipsum. Duis posuere lectus ac mi eleifend sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam eget lorem non nisl vehicula facilisis. Aliquam nec ultricies nisi. Curabitur tempus tortor malesuada metus finibus, vel hendrerit odio fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent ornare eros nec felis elementum, eu pellentesque dui pulvinar. Aenean malesuada rhoncus feugiat. Nulla a suscipit ex, a lobortis leo.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2024-11-04 09:15:22','2024-11-04 09:15:22','',13,'http://fictional-university.local/?page_id=16',2,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2024-11-02 18:50:49','2024-11-02 18:50:49','<!-- wp:paragraph -->\n<p>this is our history page</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','16-revision-v1','','','2024-11-02 18:50:49','2024-11-02 18:50:49','',16,'http://fictional-university.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-11-02 18:52:52','2024-11-02 18:52:52','<!-- wp:paragraph -->\n<p>this is our history page</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer facilisis, nisi vel fermentum feugiat, justo mauris semper nunc, ac ultricies dui tortor quis diam. Fusce lacinia ornare tincidunt. Donec et est in libero venenatis venenatis id nec enim. Aliquam erat volutpat. Proin dignissim sapien dignissim varius malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis blandit massa vitae rhoncus dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Fusce sodales justo et magna tincidunt, sit amet luctus nunc efficitur. Phasellus nec libero maximus, blandit urna non, euismod leo. Cras a enim in odio pretium pharetra sit amet et nisl. Sed mollis tellus at tortor posuere euismod. Phasellus vel metus vel enim pharetra mattis. Pellentesque ultrices mauris eget sem mattis, a commodo massa sollicitudin. Phasellus interdum vitae arcu quis scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur tincidunt neque nec scelerisque blandit. Aliquam venenatis velit quis lectus aliquam, eu porttitor orci elementum. In at interdum nibh, quis porttitor ipsum. Duis posuere lectus ac mi eleifend sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam eget lorem non nisl vehicula facilisis. Aliquam nec ultricies nisi. Curabitur tempus tortor malesuada metus finibus, vel hendrerit odio fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent ornare eros nec felis elementum, eu pellentesque dui pulvinar. Aenean malesuada rhoncus feugiat. Nulla a suscipit ex, a lobortis leo.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','16-revision-v1','','','2024-11-02 18:52:52','2024-11-02 18:52:52','',16,'http://fictional-university.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-11-02 18:54:35','2024-11-02 18:54:35','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer facilisis, nisi vel fermentum feugiat, justo mauris semper nunc, ac ultricies dui tortor quis diam. Fusce lacinia ornare tincidunt. Donec et est in libero venenatis venenatis id nec enim. Aliquam erat volutpat. Proin dignissim sapien dignissim varius malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis blandit massa vitae rhoncus dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Fusce sodales justo et magna tincidunt, sit amet luctus nunc efficitur. Phasellus nec libero maximus, blandit urna non, euismod leo. Cras a enim in odio pretium pharetra sit amet et nisl. Sed mollis tellus at tortor posuere euismod. Phasellus vel metus vel enim pharetra mattis. Pellentesque ultrices mauris eget sem mattis, a commodo massa sollicitudin. Phasellus interdum vitae arcu quis scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur tincidunt neque nec scelerisque blandit. Aliquam venenatis velit quis lectus aliquam, eu porttitor orci elementum. In at interdum nibh, quis porttitor ipsum. Duis posuere lectus ac mi eleifend sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam eget lorem non nisl vehicula facilisis. Aliquam nec ultricies nisi. Curabitur tempus tortor malesuada metus finibus, vel hendrerit odio fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent ornare eros nec felis elementum, eu pellentesque dui pulvinar. Aenean malesuada rhoncus feugiat. Nulla a suscipit ex, a lobortis leo.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2024-11-04 09:15:11','2024-11-04 09:15:11','',13,'http://fictional-university.local/?page_id=19',1,'page','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-11-02 18:54:35','2024-11-02 18:54:35','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer facilisis, nisi vel fermentum feugiat, justo mauris semper nunc, ac ultricies dui tortor quis diam. Fusce lacinia ornare tincidunt. Donec et est in libero venenatis venenatis id nec enim. Aliquam erat volutpat. Proin dignissim sapien dignissim varius malesuada. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Duis blandit massa vitae rhoncus dignissim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Fusce sodales justo et magna tincidunt, sit amet luctus nunc efficitur. Phasellus nec libero maximus, blandit urna non, euismod leo. Cras a enim in odio pretium pharetra sit amet et nisl. Sed mollis tellus at tortor posuere euismod. Phasellus vel metus vel enim pharetra mattis. Pellentesque ultrices mauris eget sem mattis, a commodo massa sollicitudin. Phasellus interdum vitae arcu quis scelerisque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Curabitur tincidunt neque nec scelerisque blandit. Aliquam venenatis velit quis lectus aliquam, eu porttitor orci elementum. In at interdum nibh, quis porttitor ipsum. Duis posuere lectus ac mi eleifend sodales. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam eget lorem non nisl vehicula facilisis. Aliquam nec ultricies nisi. Curabitur tempus tortor malesuada metus finibus, vel hendrerit odio fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Praesent ornare eros nec felis elementum, eu pellentesque dui pulvinar. Aenean malesuada rhoncus feugiat. Nulla a suscipit ex, a lobortis leo.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','19-revision-v1','','','2024-11-02 18:54:35','2024-11-02 18:54:35','',19,'http://fictional-university.local/?p=20',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-11-02 19:17:21','2024-11-02 19:17:21','<!-- wp:paragraph -->\n<p>this is demo page</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2024-11-02 19:17:21','2024-11-02 19:17:21','',3,'http://fictional-university.local/?page_id=21',0,'page','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-11-02 19:17:21','2024-11-02 19:17:21','<!-- wp:paragraph -->\n<p>this is demo page</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','21-revision-v1','','','2024-11-02 19:17:21','2024-11-02 19:17:21','',21,'http://fictional-university.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-11-04 10:09:33','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2024-11-04 10:09:33','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=23',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-11-06 09:39:50','2024-11-04 10:11:05',' ','','','publish','closed','closed','','24','','','2024-11-06 09:39:50','2024-11-06 09:39:50','',0,'http://fictional-university.local/?p=24',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-11-04 10:09:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-11-04 10:09:33','0000-00-00 00:00:00','',3,'http://fictional-university.local/?p=25',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-11-06 09:39:50','2024-11-04 10:11:05',' ','','','publish','closed','closed','','26','','','2024-11-06 09:39:50','2024-11-06 09:39:50','',0,'http://fictional-university.local/?p=26',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-11-04 10:09:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-11-04 10:09:33','0000-00-00 00:00:00','',13,'http://fictional-university.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-11-04 10:09:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-11-04 10:09:33','0000-00-00 00:00:00','',13,'http://fictional-university.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-11-04 10:09:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-11-04 10:09:33','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-11-04 10:09:33','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-11-04 10:09:33','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-11-06 09:39:50','2024-11-04 10:16:36','','Home','','publish','closed','closed','','home','','','2024-11-06 09:39:50','2024-11-06 09:39:50','',0,'http://fictional-university.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-11-05 10:09:13','2024-11-04 10:32:31',' ','','','publish','closed','closed','','32','','','2024-11-05 10:09:13','2024-11-05 10:09:13','',13,'http://fictional-university.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-11-05 10:09:13','2024-11-04 10:32:31',' ','','','publish','closed','closed','','33','','','2024-11-05 10:09:13','2024-11-05 10:09:13','',13,'http://fictional-university.local/?p=33',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-11-05 10:09:13','2024-11-04 10:32:31',' ','','','publish','closed','closed','','34','','','2024-11-05 10:09:13','2024-11-05 10:09:13','',0,'http://fictional-university.local/?p=34',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-11-04 10:33:31','2024-11-04 10:33:31',' ','','','publish','closed','closed','','35','','','2024-11-04 10:33:31','2024-11-04 10:33:31','',0,'http://fictional-university.local/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-11-04 10:33:31','2024-11-04 10:33:31',' ','','','publish','closed','closed','','36','','','2024-11-04 10:33:31','2024-11-04 10:33:31','',3,'http://fictional-university.local/?p=36',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-11-04 14:01:29','2024-11-04 14:01:29','','Home','','publish','closed','closed','','home','','','2024-11-04 14:01:29','2024-11-04 14:01:29','',0,'http://fictional-university.local/?page_id=37',0,'page','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-11-04 14:01:29','2024-11-04 14:01:29','','Home','','inherit','closed','closed','','37-revision-v1','','','2024-11-04 14:01:29','2024-11-04 14:01:29','',37,'http://fictional-university.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-11-04 14:02:25','2024-11-04 14:02:25','','Blog','','publish','closed','closed','','blog','','','2024-11-04 14:02:25','2024-11-04 14:02:25','',0,'http://fictional-university.local/?page_id=39',0,'page','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-11-04 14:02:25','2024-11-04 14:02:25','','Blog','','inherit','closed','closed','','39-revision-v1','','','2024-11-04 14:02:25','2024-11-04 14:02:25','',39,'http://fictional-university.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-11-05 10:09:13','2024-11-05 10:09:13',' ','','','publish','closed','closed','','41','','','2024-11-05 10:09:13','2024-11-05 10:09:13','',0,'http://fictional-university.local/?p=41',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-11-06 09:39:50','2024-11-05 10:10:23',' ','','','publish','closed','closed','','42','','','2024-11-06 09:39:50','2024-11-06 09:39:50','',0,'http://fictional-university.local/?p=42',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-11-05 13:13:30','2024-11-05 13:13:30','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','First New Event english','','publish','closed','closed','','first-new-event','','','2024-11-11 08:59:03','2024-11-11 08:59:03','',0,'http://fictional-university.local/?post_type=event&#038;p=43',0,'event','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-11-05 13:14:02','2024-11-05 13:14:02','<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','Second New Event history','this is awesome','publish','closed','closed','','second-new-event','','','2024-11-11 08:58:50','2024-11-11 08:58:50','',0,'http://fictional-university.local/?post_type=event&#038;p=44',0,'event','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-11-05 13:14:17','0000-00-00 00:00:00','','T','','draft','closed','closed','','','','','2024-11-05 13:14:17','2024-11-05 13:14:17','',0,'http://fictional-university.local/?post_type=event&#038;p=45',0,'event','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2024-11-06 09:13:06','2024-11-06 09:13:06','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Demo Post Number 2','this is so good the know wordpress\n','inherit','closed','closed','','9-revision-v1','','','2024-11-06 09:13:06','2024-11-06 09:13:06','',9,'http://fictional-university.local/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2024-11-06 09:15:08','2024-11-06 09:15:08','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Demo Post Number 2','This is so good the know WordPress\n','inherit','closed','closed','','9-revision-v1','','','2024-11-06 09:15:08','2024-11-06 09:15:08','',9,'http://fictional-university.local/?p=55',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2024-11-06 09:15:32','2024-11-06 09:15:32','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Demo Post Number 2','This is so good the know WordPress\n','inherit','closed','closed','','9-revision-v1','','','2024-11-06 09:15:32','2024-11-06 09:15:32','',9,'http://fictional-university.local/?p=56',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2024-11-06 09:39:50','2024-11-06 09:39:06',' ','','','publish','closed','closed','','59','','','2024-11-06 09:39:50','2024-11-06 09:39:50','',0,'http://fictional-university.local/?p=59',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2024-11-06 18:08:38','2024-11-06 18:08:38','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_672bb0739107c','','','2024-11-06 18:11:54','2024-11-06 18:11:54','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=60',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2024-11-06 18:08:38','2024-11-06 18:08:38','a:10:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;s:17:\"allow_in_bindings\";i:1;}','Event Date','event_date','publish','closed','closed','','field_672bb0740feb9','','','2024-11-06 18:11:54','2024-11-06 18:11:54','',60,'http://fictional-university.local/?post_type=acf-field&#038;p=61',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2024-11-06 19:01:55','2024-11-06 19:01:55','<!-- wp:paragraph -->\n<p>last year event</p>\n<!-- /wp:paragraph -->','last year event math','','publish','open','closed','','last-year-event','','','2024-11-11 08:58:41','2024-11-11 08:58:41','',0,'http://fictional-university.local/?post_type=event&#038;p=62',0,'event','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2024-11-10 08:50:09','2024-11-10 08:50:09','<!-- wp:paragraph -->\n<p>future event</p>\n<!-- /wp:paragraph -->','future event arabic','','publish','open','closed','','future-event','','','2024-11-12 10:29:52','2024-11-12 10:29:52','',0,'http://fictional-university.local/?post_type=event&#038;p=64',0,'event','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2024-11-10 08:53:29','2024-11-10 08:53:29','','Past Events','','publish','closed','closed','','past-events','','','2024-11-10 08:53:29','2024-11-10 08:53:29','',0,'http://fictional-university.local/?page_id=65',0,'page','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2024-11-10 08:53:29','2024-11-10 08:53:29','','Past Events','','inherit','closed','closed','','65-revision-v1','','','2024-11-10 08:53:29','2024-11-10 08:53:29','',65,'http://fictional-university.local/?p=66',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2024-11-10 09:10:08','2024-11-10 09:10:08','<!-- wp:paragraph -->\n<p>past event</p>\n<!-- /wp:paragraph -->','past event science','','publish','open','closed','','past-event','','','2024-11-11 08:58:32','2024-11-11 08:58:32','',0,'http://fictional-university.local/?post_type=event&#038;p=67',0,'event','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2024-11-10 12:00:49','2024-11-10 12:00:49','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->','About Page','','inherit','closed','closed','','13-revision-v1','','','2024-11-10 12:00:49','2024-11-10 12:00:49','',13,'http://fictional-university.local/?p=68',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-11-11 08:13:33','2024-11-11 08:13:33','','Math','','publish','open','closed','','math','','','2024-11-19 09:18:47','2024-11-19 09:18:47','',0,'http://fictional-university.local/?post_type=program&#038;p=70',0,'program','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2024-11-11 08:13:50','2024-11-11 08:13:50','','Arabic','','publish','open','closed','','arabic','','','2024-11-19 09:18:03','2024-11-19 09:18:03','',0,'http://fictional-university.local/?post_type=program&#038;p=71',0,'program','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2024-11-11 08:14:04','2024-11-11 08:14:04','<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Science','','publish','open','closed','','science','','','2024-11-19 09:18:29','2024-11-19 09:18:29','',0,'http://fictional-university.local/?post_type=program&#038;p=72',0,'program','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2024-11-11 08:14:17','2024-11-11 08:14:17','','History','','publish','open','closed','','history','','','2024-11-19 09:17:17','2024-11-19 09:17:17','',0,'http://fictional-university.local/?post_type=program&#038;p=73',0,'program','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2024-11-11 08:14:30','2024-11-11 08:14:30','','English','','publish','open','closed','','english','','','2024-11-19 09:16:49','2024-11-19 09:16:49','',0,'http://fictional-university.local/?post_type=program&#038;p=74',0,'program','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-11-11 08:52:48','2024-11-11 08:52:48','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Programs','related-programs','publish','closed','closed','','group_6731c5b84fb4d','','','2024-11-11 14:23:28','2024-11-11 14:23:28','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=75',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2024-11-11 08:52:48','2024-11-11 08:52:48','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Programs','related_program','publish','closed','closed','','field_6731c5b940ad7','','','2024-11-11 08:57:01','2024-11-11 08:57:01','',75,'http://fictional-university.local/?post_type=acf-field&#038;p=76',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2024-11-11 13:59:51','2024-11-11 13:59:51','{\n    \"custom_css[fiction-university]\": {\n        \"value\": \"/* Remove white separator */\\n.site-header {\\n    border-bottom: none;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2024-11-11 13:59:51\"\n    }\n}','','','trash','closed','closed','','b9f7cd1c-b411-4ae7-a21f-d75e3761f5ef','','','2024-11-11 13:59:51','2024-11-11 13:59:51','',0,'http://fictional-university.local/b9f7cd1c-b411-4ae7-a21f-d75e3761f5ef/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2024-11-11 13:59:51','2024-11-11 13:59:51','/* Remove white separator */\n.site-header {\n    border-bottom: none;\n}\n','fiction-university','','publish','closed','closed','','fiction-university','','','2024-11-11 13:59:51','2024-11-11 13:59:51','',0,'http://fictional-university.local/fiction-university/',0,'custom_css','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2024-11-11 13:59:51','2024-11-11 13:59:51','/* Remove white separator */\n.site-header {\n    border-bottom: none;\n}\n','fiction-university','','inherit','closed','closed','','78-revision-v1','','','2024-11-11 13:59:51','2024-11-11 13:59:51','',78,'http://fictional-university.local/?p=79',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2024-11-11 14:15:19','2024-11-11 14:15:19','<!-- wp:paragraph -->\n<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Why do we use it?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->','Dr Arabic','','publish','open','closed','','dr-arabic','','','2024-11-12 04:46:23','2024-11-12 04:46:23','',0,'http://fictional-university.local/?post_type=professor&#038;p=80',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2024-11-11 14:15:36','2024-11-11 14:15:36','<!-- wp:paragraph -->\n<p>is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Why do we use it?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->','Dr English','','publish','open','closed','','dr-english','','','2024-11-12 08:16:54','2024-11-12 08:16:54','',0,'http://fictional-university.local/?post_type=professor&#038;p=81',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2024-11-11 19:23:46','2024-11-11 19:23:46','','003 barksalot','','inherit','open','closed','','003-barksalot','','','2024-11-11 19:23:46','2024-11-11 19:23:46','',81,'http://fictional-university.local/wp-content/uploads/2024/11/003-barksalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (85,1,'2024-11-11 19:24:22','2024-11-11 19:24:22','','003 meowsalot','','inherit','open','closed','','003-meowsalot','','','2024-11-11 19:24:22','2024-11-11 19:24:22','',80,'http://fictional-university.local/wp-content/uploads/2024/11/003-meowsalot.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (86,1,'2024-11-11 20:08:07','2024-11-11 20:08:07','<!-- wp:paragraph -->\n<p> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Dr history','','publish','open','closed','','dr-history','','','2024-11-12 08:17:47','2024-11-12 08:17:47','',0,'http://fictional-university.local/?post_type=professor&#038;p=86',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2024-11-11 20:07:43','2024-11-11 20:07:43','','003 frog-bio','','inherit','open','closed','','003-frog-bio','','','2024-11-11 20:07:43','2024-11-11 20:07:43','',86,'http://fictional-university.local/wp-content/uploads/2024/11/003-frog-bio.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (88,1,'2024-11-12 04:25:24','2024-11-12 04:25:24','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner','page-banner','publish','closed','closed','','group_6732d8578fbc2','','','2024-11-12 04:28:56','2024-11-12 04:28:56','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=88',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2024-11-12 04:25:24','2024-11-12 04:25:24','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Field Banner Subtitle','field_banner_subtitle','publish','closed','closed','','field_6732d8638f31f','','','2024-11-12 04:28:56','2024-11-12 04:28:56','',88,'http://fictional-university.local/?post_type=acf-field&#038;p=90',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2024-11-12 04:25:24','2024-11-12 04:25:24','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_6732d8958f320','','','2024-11-12 04:28:56','2024-11-12 04:28:56','',88,'http://fictional-university.local/?post_type=acf-field&#038;p=91',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2024-11-12 04:31:44','2024-11-12 04:31:44','','005 field','','inherit','open','closed','','005-field','','','2024-11-12 04:31:44','2024-11-12 04:31:44','',80,'http://fictional-university.local/wp-content/uploads/2024/11/005-field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (96,1,'2024-11-12 08:26:47','2024-11-12 08:26:47','','002 building','','inherit','open','closed','','002-building','','','2024-11-12 08:26:47','2024-11-12 08:26:47','',13,'http://fictional-university.local/wp-content/uploads/2024/11/002-building.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (97,1,'2024-11-12 08:27:23','2024-11-12 08:27:23','<!-- wp:paragraph -->\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n<!-- /wp:paragraph -->','About Page','','inherit','closed','closed','','13-revision-v1','','','2024-11-12 08:27:23','2024-11-12 08:27:23','',13,'http://fictional-university.local/?p=97',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2024-11-12 10:28:55','2024-11-12 10:28:55','','005 notebook','','inherit','open','closed','','005-notebook','','','2024-11-12 10:28:55','2024-11-12 10:28:55','',64,'http://fictional-university.local/wp-content/uploads/2024/11/005-notebook.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (99,1,'2024-11-13 04:31:17','2024-11-13 04:31:17','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Campus number one','','publish','open','closed','','campus-number-one','','','2024-11-13 08:45:18','2024-11-13 08:45:18','',0,'http://fictional-university.local/?post_type=campus&#038;p=99',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2024-11-13 04:31:53','2024-11-13 04:31:53','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Campus number two','','publish','open','closed','','campus-number-two','','','2024-11-13 08:44:02','2024-11-13 08:44:02','',0,'http://fictional-university.local/?post_type=campus&#038;p=100',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2024-11-13 04:32:21','2024-11-13 04:32:21','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->','Campus number three','','publish','open','closed','','campus-number-three','','','2024-11-13 08:44:43','2024-11-13 08:44:43','',0,'http://fictional-university.local/?post_type=campus&#038;p=101',0,'campus','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2024-11-13 04:37:11','2024-11-13 04:37:11','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Map Location','map-location','publish','closed','closed','','group_67342c4318c05','','','2024-11-13 04:37:11','2024-11-13 04:37:11','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=102',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2024-11-13 04:37:11','2024-11-13 04:37:11','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;}','Map Location','map_location','publish','closed','closed','','field_67342c4493315','','','2024-11-13 04:37:11','2024-11-13 04:37:11','',102,'http://fictional-university.local/?post_type=acf-field&p=103',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2024-11-14 07:45:37','2024-11-14 07:45:37','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Campus','related-campus','publish','closed','closed','','group_6735aa714e6d3','','','2024-11-14 07:48:21','2024-11-14 07:48:21','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=106',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2024-11-14 07:45:37','2024-11-14 07:45:37','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Campus','related_campus','publish','closed','closed','','field_6735aa733d547','','','2024-11-14 07:48:21','2024-11-14 07:48:21','',106,'http://fictional-university.local/?post_type=acf-field&#038;p=107',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2024-11-15 17:45:36','2024-11-15 17:45:36','<!-- wp:paragraph -->\n<p> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','History','','publish','open','open','','history','','','2024-11-19 15:55:33','2024-11-19 15:55:33','',0,'http://fictional-university.local/?p=109',0,'post','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2024-11-15 17:45:36','2024-11-15 17:45:36','','history','','inherit','closed','closed','','109-revision-v1','','','2024-11-15 17:45:36','2024-11-15 17:45:36','',109,'http://fictional-university.local/?p=110',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2024-11-15 17:45:46','2024-11-15 17:45:46','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"80\"} /-->','Arabic','','publish','open','open','','arabic','','','2024-12-09 09:02:02','2024-12-09 09:02:02','',0,'http://fictional-university.local/?p=111',0,'post','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2024-11-15 17:45:46','2024-11-15 17:45:46','','arabic','','inherit','closed','closed','','111-revision-v1','','','2024-11-15 17:45:46','2024-11-15 17:45:46','',111,'http://fictional-university.local/?p=112',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2024-11-15 17:45:55','2024-11-15 17:45:55','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"What is English??\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2,\"bgColor\":\"#b2d87a\",\"theAlignment\":\"center\"} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"Which is Next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0,\"bgColor\":\"#c6abab\"} /-->','English','','publish','open','open','','english','','','2024-12-07 12:29:48','2024-12-07 12:29:48','',0,'http://fictional-university.local/?p=113',0,'post','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2024-11-15 17:45:55','2024-11-15 17:45:55','','english','','inherit','closed','closed','','113-revision-v1','','','2024-11-15 17:45:55','2024-11-15 17:45:55','',113,'http://fictional-university.local/?p=114',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2024-11-16 14:39:03','2024-11-16 14:39:03','','English','','inherit','closed','closed','','113-revision-v1','','','2024-11-16 14:39:03','2024-11-16 14:39:03','',113,'http://fictional-university.local/?p=115',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2024-11-16 14:39:17','2024-11-16 14:39:17','','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-11-16 14:39:17','2024-11-16 14:39:17','',111,'http://fictional-university.local/?p=116',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2024-11-16 14:39:27','2024-11-16 14:39:27','','History','','inherit','closed','closed','','109-revision-v1','','','2024-11-16 14:39:27','2024-11-16 14:39:27','',109,'http://fictional-university.local/?p=117',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2024-11-17 11:47:39','2024-11-17 11:47:39','<!-- wp:paragraph -->\n<p>this is Science professor</p>\n<!-- /wp:paragraph -->','Sport','','publish','open','closed','','sport','','','2024-11-19 10:25:23','2024-11-19 10:25:23','',0,'http://fictional-university.local/?post_type=professor&#038;p=118',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2024-11-19 09:16:01','2024-11-19 09:16:01','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Main Body Content','main-body-content','publish','closed','closed','','group_673c56c74aaa0','','','2024-11-19 09:16:01','2024-11-19 09:16:01','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=119',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2024-11-19 09:16:01','2024-11-19 09:16:01','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Main Body Content','main_body_content','publish','closed','closed','','field_673c56c732bf2','','','2024-11-19 09:16:01','2024-11-19 09:16:01','',119,'http://fictional-university.local/?post_type=acf-field&p=120',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2024-11-19 14:32:27','2024-11-19 14:32:27','','Search','','publish','closed','closed','','search','','','2024-11-19 14:32:27','2024-11-19 14:32:27','',0,'http://fictional-university.local/?page_id=121',0,'page','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2024-11-19 14:32:27','2024-11-19 14:32:27','','Search','','inherit','closed','closed','','121-revision-v1','','','2024-11-19 14:32:27','2024-11-19 14:32:27','',121,'http://fictional-university.local/?p=122',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2024-11-19 15:54:59','2024-11-19 15:54:59','<!-- wp:paragraph -->\n<p> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','English','','inherit','closed','closed','','113-revision-v1','','','2024-11-19 15:54:59','2024-11-19 15:54:59','',113,'http://fictional-university.local/?p=123',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2024-11-19 15:55:23','2024-11-19 15:55:23','<!-- wp:paragraph -->\n<p> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-11-19 15:55:23','2024-11-19 15:55:23','',111,'http://fictional-university.local/?p=124',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2024-11-19 15:55:32','2024-11-19 15:55:32','<!-- wp:paragraph -->\n<p> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','History','','inherit','closed','closed','','109-revision-v1','','','2024-11-19 15:55:32','2024-11-19 15:55:32','',109,'http://fictional-university.local/?p=125',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (127,2,'2024-11-20 14:41:24','2024-11-20 14:41:24','<!-- wp:paragraph -->\n<p>This is demo professor test</p>\n<!-- /wp:paragraph -->','Professor Event','','publish','open','closed','','professor-event','','','2024-11-20 14:41:24','2024-11-20 14:41:24','',0,'http://fictional-university.local/?post_type=event&#038;p=127',0,'event','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2024-11-21 10:18:40','2024-11-21 10:18:40','','My Notes','','publish','closed','closed','','my-notes','','','2024-11-21 10:18:40','2024-11-21 10:18:40','',0,'http://fictional-university.local/?page_id=129',0,'page','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2024-11-21 10:18:40','2024-11-21 10:18:40','','My Notes','','inherit','closed','closed','','129-revision-v1','','','2024-11-21 10:18:40','2024-11-21 10:18:40','',129,'http://fictional-university.local/?p=130',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2024-11-22 15:41:03','2024-11-22 15:41:03',' this is number 4 lecture','Biology lecture no 4','','private','open','closed','','biology-lecture-no-4','','','2024-11-24 09:08:41','2024-11-24 09:08:41','',0,'http://fictional-university.local/?post_type=note&#038;p=140',0,'note','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2024-11-22 15:41:33','2024-11-22 15:41:33','<!-- wp:paragraph -->\n<p>i learn arabic lecture number 1</p>\n<!-- /wp:paragraph -->','Arabic lecture #2024','','trash','open','closed','','arabic-lecture-1__trashed','','','2024-11-24 08:46:05','2024-11-24 08:46:05','',0,'http://fictional-university.local/?post_type=note&#038;p=141',0,'note','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2024-11-24 08:17:20','2024-11-24 08:17:20','dgdfgdfg','','','trash','open','closed','','__trashed-6','','','2024-11-24 08:17:20','2024-11-24 08:17:20','',0,'http://fictional-university.local/?post_type=note&#038;p=142',0,'note','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2024-11-24 08:17:20','2024-11-24 08:17:20','dgdfgdfg','','','trash','open','closed','','__trashed-5','','','2024-11-24 08:17:20','2024-11-24 08:17:20','',0,'http://fictional-university.local/?post_type=note&#038;p=143',0,'note','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2024-11-24 08:17:20','2024-11-24 08:17:20','fgdfgdfg','','','trash','open','closed','','__trashed-4','','','2024-11-24 08:17:20','2024-11-24 08:17:20','',0,'http://fictional-university.local/?post_type=note&#038;p=144',0,'note','',0);
INSERT INTO `wp_posts` VALUES (145,1,'2024-11-24 08:17:20','2024-11-24 08:17:20','fgdfgdfg','','','trash','open','closed','','__trashed-3','','','2024-11-24 08:17:20','2024-11-24 08:17:20','',0,'http://fictional-university.local/?post_type=note&#038;p=145',0,'note','',0);
INSERT INTO `wp_posts` VALUES (146,1,'2024-11-24 08:17:20','2024-11-24 08:17:20','ghfgh','','','trash','open','closed','','__trashed-2','','','2024-11-24 08:17:20','2024-11-24 08:17:20','',0,'http://fictional-university.local/?post_type=note&#038;p=146',0,'note','',0);
INSERT INTO `wp_posts` VALUES (147,1,'2024-11-24 08:17:20','2024-11-24 08:17:20','hfghfghfh','fhfghfgh','','trash','open','closed','','__trashed','','','2024-11-24 08:17:20','2024-11-24 08:17:20','',0,'http://fictional-university.local/?post_type=note&#038;p=147',0,'note','',0);
INSERT INTO `wp_posts` VALUES (148,1,'2024-11-24 08:46:44','2024-11-24 08:46:44','gdfgdfgfdg','gdfgfdg','','trash','open','closed','','__trashed-8','','','2024-11-24 08:46:44','2024-11-24 08:46:44','',0,'http://fictional-university.local/?post_type=note&#038;p=148',0,'note','',0);
INSERT INTO `wp_posts` VALUES (149,1,'2024-11-24 08:46:42','2024-11-24 08:46:42','hfghfg','hfghfh','','trash','open','closed','','__trashed-7','','','2024-11-24 08:46:42','2024-11-24 08:46:42','',0,'http://fictional-university.local/?post_type=note&#038;p=149',0,'note','',0);
INSERT INTO `wp_posts` VALUES (150,1,'2024-11-24 08:27:07','2024-11-24 08:27:07','test test test test test test test test test test test test','test','','trash','open','closed','','test__trashed','','','2024-11-24 08:46:03','2024-11-24 08:46:03','',0,'http://fictional-university.local/note/test/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (151,1,'2024-11-24 08:41:17','2024-11-24 08:41:17','this is real time','this is real time','','trash','open','closed','','this-is-real-time__trashed','','','2024-11-24 08:45:53','2024-11-24 08:45:53','',0,'http://fictional-university.local/note/this-is-real-time/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (152,1,'2024-11-24 08:47:18','2024-11-24 08:47:18','this is lecture number 1','lecture #1','','trash','open','closed','','lecture-1__trashed','','','2024-11-24 08:50:01','2024-11-24 08:50:01','',0,'http://fictional-university.local/note/lecture-1/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (153,3,'2024-11-24 09:03:54','2024-11-24 09:03:54',' test register note updated','test register updated','','trash','open','closed','','test-register__trashed','','','2024-11-24 09:04:42','2024-11-24 09:04:42','',0,'http://fictional-university.local/note/test-register/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (154,1,'2024-11-24 09:05:11','2024-11-24 09:05:11','security notes and publish','security','','private','open','closed','','security','','','2024-11-24 09:08:18','2024-11-24 09:08:18','',0,'http://fictional-university.local/note/security/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (155,3,'2024-11-24 09:20:43','2024-11-24 09:20:43','test after filter','title privacy','','publish','open','closed','','title-privacy','','','2024-11-24 09:20:43','2024-11-24 09:20:43','',0,'http://fictional-university.local/note/title-privacy/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (156,3,'2024-11-24 09:20:46','2024-11-24 09:20:46','test after filter','title privacy','','publish','open','closed','','title-privacy-2','','','2024-11-24 09:20:46','2024-11-24 09:20:46','',0,'http://fictional-university.local/note/title-privacy-2/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (157,3,'2024-11-24 09:21:04','2024-11-24 09:21:04','filter filetr','filter filter','','trash','open','closed','','filter-filter__trashed','','','2024-11-24 11:40:51','2024-11-24 11:40:51','',0,'http://fictional-university.local/note/filter-filter/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (158,3,'2024-11-24 09:21:23','2024-11-24 09:21:23','filter filetr','filter filter','','trash','open','closed','','filter-filter-2__trashed','','','2024-11-24 11:40:47','2024-11-24 11:40:47','',0,'http://fictional-university.local/note/filter-filter-2/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (159,3,'2024-11-24 09:25:05','2024-11-24 09:25:05','test filter','test filter','','trash','open','closed','','test-filter__trashed','','','2024-11-24 11:35:09','2024-11-24 11:35:09','',0,'http://fictional-university.local/note/test-filter/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (160,3,'2024-11-24 09:26:11','2024-11-24 09:26:11',' secret','secrethhh','','trash','open','closed','','secret__trashed','','','2024-11-24 09:34:58','2024-11-24 09:34:58','',0,'http://fictional-university.local/note/secret/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (161,3,'2024-11-24 10:29:53','2024-11-24 10:29:53','this is test','hi','','trash','open','closed','','hi__trashed','','','2024-11-24 10:50:09','2024-11-24 10:50:09','',0,'http://fictional-university.local/note/hi/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (162,1,'2024-11-24 11:34:41','2024-11-24 11:34:41','yrtyrty','yrtyrty','','trash','open','closed','','yrtyrty__trashed','','','2024-11-24 11:34:44','2024-11-24 11:34:44','',0,'http://fictional-university.local/note/yrtyrty/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (163,1,'2024-11-24 11:38:03','2024-11-24 11:38:03','hfghfghfhf','fghghfgh','','trash','open','closed','','fghghfgh__trashed','','','2024-11-24 11:45:59','2024-11-24 11:45:59','',0,'http://fictional-university.local/note/fghghfgh/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (164,3,'2024-11-24 11:40:40','2024-11-24 11:40:40','fghfhfgh','fghfhfgh','','trash','open','closed','','fghfhfgh__trashed','','','2024-11-24 11:40:45','2024-11-24 11:40:45','',0,'http://fictional-university.local/note/fghfhfgh/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (165,3,'2024-11-24 11:42:40','2024-11-24 11:42:40','hfhfgh','fghfgh','','private','open','closed','','fghfgh','','','2024-11-24 11:42:40','2024-11-24 11:42:40','',0,'http://fictional-university.local/note/fghfgh/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (166,3,'2024-11-24 11:42:42','2024-11-24 11:42:42','hfhfgh','hfhfgh','','trash','open','closed','','hfhfgh__trashed','','','2024-11-24 11:42:53','2024-11-24 11:42:53','',0,'http://fictional-university.local/note/hfhfgh/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (167,3,'2024-11-24 11:42:45','2024-11-24 11:42:45','gfhfh','hfghfgh','','trash','open','closed','','hfghfgh__trashed','','','2024-11-24 11:42:49','2024-11-24 11:42:49','',0,'http://fictional-university.local/note/hfghfgh/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (168,1,'2024-11-24 11:43:49','2024-11-24 11:43:49','fghfgh','thhf','','trash','open','closed','','thhf__trashed','','','2024-11-24 11:45:00','2024-11-24 11:45:00','',0,'http://fictional-university.local/note/thhf/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (169,1,'2024-11-24 11:44:46','2024-11-24 11:44:46','fghfhfgh','fhffgh','','trash','open','closed','','fhffgh__trashed','','','2024-11-24 11:44:51','2024-11-24 11:44:51','',0,'http://fictional-university.local/note/fhffgh/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (170,3,'2024-11-24 11:46:23','2024-11-24 11:46:23','jhkjhkhk','jhkhjk','','private','open','closed','','jhkhjk','','','2024-11-24 11:46:23','2024-11-24 11:46:23','',0,'http://fictional-university.local/note/jhkhjk/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (171,3,'2024-11-24 11:46:26','2024-11-24 11:46:26','jhkjhk','khjkjhk','','trash','open','closed','','khjkjhk__trashed','','','2024-11-24 11:46:31','2024-11-24 11:46:31','',0,'http://fictional-university.local/note/khjkjhk/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (173,1,'2024-11-25 08:14:43','2024-11-25 08:14:43','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"like\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Liked Profesors ID','liked-profesors-id','publish','closed','closed','','group_674431d8b98a1','','','2024-11-25 08:18:53','2024-11-25 08:18:53','',0,'http://fictional-university.local/?post_type=acf-field-group&#038;p=173',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (174,1,'2024-11-25 08:14:43','2024-11-25 08:14:43','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Liked Professor ID','liked_professor_id','publish','closed','closed','','field_674431d9b7b4b','','','2024-11-25 08:18:47','2024-11-25 08:18:47','',173,'http://fictional-university.local/?post_type=acf-field&#038;p=174',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (182,1,'2024-11-25 15:29:04','2024-11-25 15:29:04','','test like','','trash','closed','closed','','test-like__trashed','','','2024-11-25 15:44:55','2024-11-25 15:44:55','',0,'http://fictional-university.local/like/test-like/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (183,1,'2024-11-25 15:30:00','2024-11-25 15:30:00','','test like','','trash','closed','closed','','test-like-2__trashed','','','2024-11-25 15:44:55','2024-11-25 15:44:55','',0,'http://fictional-university.local/like/test-like-2/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (184,1,'2024-11-25 15:30:04','2024-11-25 15:30:04','','test like','','trash','closed','closed','','test-like-3__trashed','','','2024-11-25 15:44:55','2024-11-25 15:44:55','',0,'http://fictional-university.local/like/test-like-3/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (185,1,'2024-11-25 15:36:11','2024-11-25 15:36:11','','test like','','trash','closed','closed','','test-like-4__trashed','','','2024-11-25 15:44:55','2024-11-25 15:44:55','',0,'http://fictional-university.local/like/test-like-4/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (186,1,'2024-11-25 15:45:02','2024-11-25 15:45:02','','test like','','trash','closed','closed','','test-like__trashed-2','','','2024-11-25 18:08:20','2024-11-25 18:08:20','',0,'http://fictional-university.local/like/test-like/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (187,1,'2024-11-25 17:40:25','2024-11-25 17:40:25','','test like','','trash','closed','closed','','test-like-2__trashed-2','','','2024-11-25 18:08:20','2024-11-25 18:08:20','',0,'http://fictional-university.local/like/test-like-2/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (188,1,'2024-11-25 17:53:47','2024-11-25 17:53:47','','test like','','trash','closed','closed','','test-like-3__trashed-2','','','2024-11-25 18:08:20','2024-11-25 18:08:20','',0,'http://fictional-university.local/like/test-like-3/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (195,1,'2024-11-25 18:37:40','2024-11-25 18:37:40','','test like','','publish','closed','closed','','test-like','','','2024-11-25 18:37:40','2024-11-25 18:37:40','',0,'http://fictional-university.local/like/test-like/',0,'like','',0);
INSERT INTO `wp_posts` VALUES (199,1,'2024-12-04 09:32:53','2024-12-04 09:32:53','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block -->\n<h1 class=\"wp-block-ourplugin-our-gutenberg-block\">This is the frontend.</h1>\n<!-- /wp:ourplugin/our-gutenberg-block -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-04 09:32:53','2024-12-04 09:32:53','',111,'http://fictional-university.local/?p=199',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (200,1,'2024-12-04 10:05:42','2024-12-04 10:05:42','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block -->\n<h3>this is frontend h3</h3><h4>this is frontend h4</h4>\n<!-- /wp:ourplugin/our-gutenberg-block -->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-04 10:05:42','2024-12-04 10:05:42','',111,'http://fictional-university.local/?p=200',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (201,1,'2024-12-04 12:56:52','2024-12-04 12:56:52','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-04 12:56:52','2024-12-04 12:56:52','',111,'http://fictional-university.local/?p=201',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (203,1,'2024-12-04 13:22:45','2024-12-04 13:22:45','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"skyColor\":\"blue\",\"grassColor\":\"green\"} -->\n<p class=\"wp-block-ourplugin-our-gutenberg-block\">Today the sky color is blue and the grass color is green.</p>\n<!-- /wp:ourplugin/our-gutenberg-block -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-04 13:22:45','2024-12-04 13:22:45','',113,'http://fictional-university.local/?p=203',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (204,1,'2024-12-04 13:30:04','2024-12-04 13:30:04','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-04 13:30:04','2024-12-04 13:30:04','',113,'http://fictional-university.local/?p=204',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (205,1,'2024-12-04 13:30:16','2024-12-04 13:30:16','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block -->\n<p class=\"wp-block-ourplugin-our-gutenberg-block\">Today the sky color is <span class=\"skyColor\"> blue</span> and the grass color is <span class=\"grassColor\">green</span>.</p>\n<!-- /wp:ourplugin/our-gutenberg-block -->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-04 13:30:16','2024-12-04 13:30:16','',113,'http://fictional-university.local/?p=205',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (206,1,'2024-12-04 13:33:03','2024-12-04 13:33:03','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-04 13:33:03','2024-12-04 13:33:03','',113,'http://fictional-university.local/?p=206',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (207,1,'2024-12-04 13:33:46','2024-12-04 13:33:46','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"skyColor\":\"blue\",\"grassColor\":\"green\"} -->\n<p class=\"wp-block-ourplugin-our-gutenberg-block\">Today the sky color is <span class=\"skyColor\"> blue</span> and the grass color is <span class=\"grassColor\">green</span>.</p>\n<!-- /wp:ourplugin/our-gutenberg-block -->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-04 13:33:46','2024-12-04 13:33:46','',113,'http://fictional-university.local/?p=207',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (208,1,'2024-12-04 13:43:31','2024-12-04 13:43:31','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"skyColor\":\"bluee\",\"grassColor\":\"green\"} -->\n<h3 class=\"wp-block-ourplugin-our-gutenberg-block\">Today the sky color is <span class=\"skyColor\"> bluee</span> and the grass color is <span class=\"grassColor\">green</span>.</h3>\n<!-- /wp:ourplugin/our-gutenberg-block -->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-04 13:43:31','2024-12-04 13:43:31','',113,'http://fictional-university.local/?p=208',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (209,1,'2024-12-04 14:03:42','2024-12-04 14:03:42','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-04 14:03:42','2024-12-04 14:03:42','',113,'http://fictional-university.local/?p=209',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (210,1,'2024-12-04 14:03:59','2024-12-04 14:03:59','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"skyColor\":\"gray\",\"grassColor\":\"red\"} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-04 14:03:59','2024-12-04 14:03:59','',113,'http://fictional-university.local/?p=210',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (212,1,'2024-12-05 09:16:30','2024-12-05 09:16:30','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"what is 2+2\"} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-05 09:16:30','2024-12-05 09:16:30','',113,'http://fictional-university.local/?p=212',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (213,1,'2024-12-05 09:24:53','2024-12-05 09:24:53','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"what is 2+2\",\"answers\":[\"yellow\",\"blue\",\"green\"]} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-05 09:24:53','2024-12-05 09:24:53','',113,'http://fictional-university.local/?p=213',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (215,1,'2024-12-05 11:27:28','2024-12-05 11:27:28','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"what is 2+2\",\"answers\":[\"yellow\",\"blue\",\"green\"],\"correctAnswer\":0} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-05 11:27:28','2024-12-05 11:27:28','',113,'http://fictional-university.local/?p=215',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (217,1,'2024-12-05 11:39:49','2024-12-05 11:39:49','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"what is 2+2\",\"answers\":[\"blue\",\"green\",\"bink\"]} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-05 11:39:49','2024-12-05 11:39:49','',113,'http://fictional-university.local/?p=217',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (219,1,'2024-12-05 13:08:42','2024-12-05 13:08:42','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"what is english\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"which is next?\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-05 13:08:42','2024-12-05 13:08:42','',113,'http://fictional-university.local/?p=219',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (221,1,'2024-12-05 18:25:21','2024-12-05 18:25:21','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"what is english??\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"which is next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-05 18:25:21','2024-12-05 18:25:21','',113,'http://fictional-university.local/?p=221',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (222,1,'2024-12-05 18:34:09','2024-12-05 18:34:09','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"what is english?\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"which is next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-05 18:34:09','2024-12-05 18:34:09','',113,'http://fictional-university.local/?p=222',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (223,1,'2024-12-05 18:36:11','2024-12-05 18:36:11','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"what is english??\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"which is next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-05 18:36:11','2024-12-05 18:36:11','',113,'http://fictional-university.local/?p=223',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (224,1,'2024-12-05 18:52:07','2024-12-05 18:52:07','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"What is English??\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"Which is Next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-05 18:52:07','2024-12-05 18:52:07','',113,'http://fictional-university.local/?p=224',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (225,1,'2024-12-07 07:23:18','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-12-07 07:23:18','0000-00-00 00:00:00','',0,'http://fictional-university.local/?p=225',0,'post','',0);
INSERT INTO `wp_posts` VALUES (226,1,'2024-12-07 09:41:46','2024-12-07 09:41:46','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"What is English??\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2,\"bgColor\":\"#add192\"} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"Which is Next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-07 09:41:46','2024-12-07 09:41:46','',113,'http://fictional-university.local/?p=226',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (228,1,'2024-12-07 09:50:46','2024-12-07 09:50:46','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"What is English??\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2,\"bgColor\":\"#1c1d1c\"} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"Which is Next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-07 09:50:46','2024-12-07 09:50:46','',113,'http://fictional-university.local/?p=228',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (229,1,'2024-12-07 11:51:28','2024-12-07 11:51:28','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"What is English??\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2,\"bgColor\":\"#518851\"} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"Which is Next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-07 11:51:28','2024-12-07 11:51:28','',113,'http://fictional-university.local/?p=229',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (230,1,'2024-12-07 12:04:35','2024-12-07 12:04:35','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"What is English??\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2,\"bgColor\":\"#b2d87a\"} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"Which is Next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0,\"bgColor\":\"#c6abab\"} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-07 12:04:35','2024-12-07 12:04:35','',113,'http://fictional-university.local/?p=230',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (231,1,'2024-12-07 12:29:47','2024-12-07 12:29:47','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"What is English??\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2,\"bgColor\":\"#b2d87a\",\"theAlignment\":\"center\"} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"Which is Next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0,\"bgColor\":\"#c6abab\"} /-->','English','','inherit','closed','closed','','113-revision-v1','','','2024-12-07 12:29:47','2024-12-07 12:29:47','',113,'http://fictional-university.local/?p=231',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (232,1,'2024-12-08 09:01:09','2024-12-08 09:01:09','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/featured-professor /-->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-08 09:01:09','2024-12-08 09:01:09','',111,'http://fictional-university.local/?p=232',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (233,1,'2024-12-08 09:05:57','2024-12-08 09:05:57','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"1\"} /-->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-08 09:05:57','2024-12-08 09:05:57','',111,'http://fictional-university.local/?p=233',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (235,1,'2024-12-08 09:25:01','2024-12-08 09:25:01','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"80\"} /-->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-08 09:25:01','2024-12-08 09:25:01','',111,'http://fictional-university.local/?p=235',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (236,1,'2024-12-08 10:57:00','2024-12-08 10:57:00','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"80\"} /-->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-08 10:57:00','2024-12-08 10:57:00','',111,'http://fictional-university.local/?p=236',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (238,1,'2024-12-09 08:30:01','2024-12-09 08:30:01','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"80\"} /-->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"86\"} /-->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-09 08:30:01','2024-12-09 08:30:01','',111,'http://fictional-university.local/?p=238',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (240,1,'2024-12-09 08:44:41','2024-12-09 08:44:41','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"86\"} /-->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"86\"} /-->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-09 08:44:41','2024-12-09 08:44:41','',111,'http://fictional-university.local/?p=240',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (242,1,'2024-12-09 08:51:44','2024-12-09 08:51:44','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"118\"} /-->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"86\"} /-->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-09 08:51:44','2024-12-09 08:51:44','',111,'http://fictional-university.local/?p=242',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (244,1,'2024-12-09 08:57:30','2024-12-09 08:57:30','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"118\"} /-->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-09 08:57:30','2024-12-09 08:57:30','',111,'http://fictional-university.local/?p=244',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (245,1,'2024-12-09 09:02:01','2024-12-09 09:02:01','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"80\"} /-->','Arabic','','inherit','closed','closed','','111-revision-v1','','','2024-12-09 09:02:01','2024-12-09 09:02:01','',111,'http://fictional-university.local/?p=245',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (246,1,'2024-12-09 14:02:17','2024-12-09 14:02:17','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator has-alpha-channel-opacity\"/>\n<!-- /wp:separator -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"80\"} /-->\n\n<!-- wp:ourplugin/featured-professor /-->','Arabic','','inherit','closed','closed','','111-autosave-v1','','','2024-12-09 14:02:17','2024-12-09 14:02:17','',111,'http://fictional-university.local/?p=246',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (247,1,'2024-12-09 09:28:14','2024-12-09 09:28:14','<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/featured-professor {\"profId\":\"80\"} /-->','Demo Post Number 2','This is so good the know WordPress\n','inherit','closed','closed','','9-revision-v1','','','2024-12-09 09:28:14','2024-12-09 09:28:14','',9,'http://fictional-university.local/?p=247',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (248,1,'2024-12-09 14:19:40','2024-12-09 14:19:40','<!-- wp:paragraph -->\n<p>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"What is English??\",\"answers\":[\"grammer\",\"spelling\",\"language\"],\"correctAnswer\":2,\"bgColor\":\"#b2d87a\",\"theAlignment\":\"center\"} /-->\n\n<!-- wp:ourplugin/our-gutenberg-block {\"question\":\"Which is Next??\",\"answers\":[\"arabic\",\"history\",\"science\"],\"correctAnswer\":0,\"bgColor\":\"#c6abab\"} /-->\n\n<!-- wp:ourplugin/featured-professor /-->','English','','inherit','closed','closed','','113-autosave-v1','','','2024-12-09 14:19:40','2024-12-09 14:19:40','',113,'http://fictional-university.local/?p=248',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (249,1,'2024-12-09 14:34:51','2024-12-09 14:34:51','','Pet Adoption','','publish','closed','closed','','pet-adoption','','','2024-12-09 14:34:51','2024-12-09 14:34:51','',0,'http://fictional-university.local/?page_id=249',0,'page','',0);
INSERT INTO `wp_posts` VALUES (250,1,'2024-12-09 14:34:51','2024-12-09 14:34:51','','Pet Adoption','','inherit','closed','closed','','249-revision-v1','','','2024-12-09 14:34:51','2024-12-09 14:34:51','',249,'http://fictional-university.local/?p=250',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (251,1,'2024-12-09 14:39:47','2024-12-09 14:39:47','','Spectacular Gus The Seventh','','publish','closed','closed','','spectacular-gus-the-seventh','','','2024-12-09 14:39:47','2024-12-09 14:39:47','',0,'http://fictional-university.local/pet/spectacular-gus-the-seventh/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (252,1,'2024-12-09 14:39:47','2024-12-09 14:39:47','','Ultimate Romeo Senior','','publish','closed','closed','','ultimate-romeo-senior','','','2024-12-09 14:39:47','2024-12-09 14:39:47','',0,'http://fictional-university.local/pet/ultimate-romeo-senior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (253,1,'2024-12-09 14:39:47','2024-12-09 14:39:47','','Outstanding Toby The Seventh','','publish','closed','closed','','outstanding-toby-the-seventh','','','2024-12-09 14:39:47','2024-12-09 14:39:47','',0,'http://fictional-university.local/pet/outstanding-toby-the-seventh/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (254,1,'2024-12-09 14:39:47','2024-12-09 14:39:47','','Phenomenal Snowball Junior','','publish','closed','closed','','phenomenal-snowball-junior','','','2024-12-09 14:39:47','2024-12-09 14:39:47','',0,'http://fictional-university.local/pet/phenomenal-snowball-junior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (255,1,'2024-12-09 14:39:47','2024-12-09 14:39:47','','Amazing Tiger The Third','','publish','closed','closed','','amazing-tiger-the-third','','','2024-12-09 14:39:47','2024-12-09 14:39:47','',0,'http://fictional-university.local/pet/amazing-tiger-the-third/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (256,1,'2024-12-09 14:39:47','2024-12-09 14:39:47','','Fabulous Brady The Ninth','','publish','closed','closed','','fabulous-brady-the-ninth','','','2024-12-09 14:39:47','2024-12-09 14:39:47','',0,'http://fictional-university.local/pet/fabulous-brady-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (257,1,'2024-12-09 14:39:47','2024-12-09 14:39:47','','Impeccable Snuggles Senior','','publish','closed','closed','','impeccable-snuggles-senior','','','2024-12-09 14:39:47','2024-12-09 14:39:47','',0,'http://fictional-university.local/pet/impeccable-snuggles-senior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (258,1,'2024-12-09 14:39:47','2024-12-09 14:39:47','','Excellent Zeus Junior','','publish','closed','closed','','excellent-zeus-junior','','','2024-12-09 14:39:47','2024-12-09 14:39:47','',0,'http://fictional-university.local/pet/excellent-zeus-junior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (259,1,'2024-12-09 14:39:47','2024-12-09 14:39:47','','Groundbreaking Toby The Ninth','','publish','closed','closed','','groundbreaking-toby-the-ninth','','','2024-12-09 14:39:47','2024-12-09 14:39:47','',0,'http://fictional-university.local/pet/groundbreaking-toby-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (260,1,'2024-12-09 14:39:47','2024-12-09 14:39:47','','Brilliant Diesel The Eighth','','publish','closed','closed','','brilliant-diesel-the-eighth','','','2024-12-09 14:39:47','2024-12-09 14:39:47','',0,'http://fictional-university.local/pet/brilliant-diesel-the-eighth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (261,1,'2024-12-09 14:39:55','2024-12-09 14:39:55','','Good Phoebe The Third','','publish','closed','closed','','good-phoebe-the-third','','','2024-12-09 14:39:55','2024-12-09 14:39:55','',0,'http://fictional-university.local/pet/good-phoebe-the-third/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (262,1,'2024-12-09 14:39:55','2024-12-09 14:39:55','','Spectacular Copper The Sixth','','publish','closed','closed','','spectacular-copper-the-sixth','','','2024-12-09 14:39:55','2024-12-09 14:39:55','',0,'http://fictional-university.local/pet/spectacular-copper-the-sixth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (263,1,'2024-12-09 14:39:55','2024-12-09 14:39:55','','Dazzling Bandit The Fifth','','publish','closed','closed','','dazzling-bandit-the-fifth','','','2024-12-09 14:39:55','2024-12-09 14:39:55','',0,'http://fictional-university.local/pet/dazzling-bandit-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (264,1,'2024-12-09 14:39:55','2024-12-09 14:39:55','','Striking Gigi The Fifth','','publish','closed','closed','','striking-gigi-the-fifth','','','2024-12-09 14:39:55','2024-12-09 14:39:55','',0,'http://fictional-university.local/pet/striking-gigi-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (265,1,'2024-12-09 14:39:55','2024-12-09 14:39:55','','Brilliant Gizmo The Seventh','','publish','closed','closed','','brilliant-gizmo-the-seventh','','','2024-12-09 14:39:55','2024-12-09 14:39:55','',0,'http://fictional-university.local/pet/brilliant-gizmo-the-seventh/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (266,1,'2024-12-09 14:39:55','2024-12-09 14:39:55','','Wondrous Snuggles The Sixth','','publish','closed','closed','','wondrous-snuggles-the-sixth','','','2024-12-09 14:39:55','2024-12-09 14:39:55','',0,'http://fictional-university.local/pet/wondrous-snuggles-the-sixth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (267,1,'2024-12-09 14:39:55','2024-12-09 14:39:55','','Stellar Scooter The Fourth','','publish','closed','closed','','stellar-scooter-the-fourth','','','2024-12-09 14:39:55','2024-12-09 14:39:55','',0,'http://fictional-university.local/pet/stellar-scooter-the-fourth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (268,1,'2024-12-09 14:39:56','2024-12-09 14:39:56','','Good Max The Fifth','','publish','closed','closed','','good-max-the-fifth','','','2024-12-09 14:39:56','2024-12-09 14:39:56','',0,'http://fictional-university.local/pet/good-max-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (269,1,'2024-12-09 14:39:56','2024-12-09 14:39:56','','Marvelous Angel The Ninth','','publish','closed','closed','','marvelous-angel-the-ninth','','','2024-12-09 14:39:56','2024-12-09 14:39:56','',0,'http://fictional-university.local/pet/marvelous-angel-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (270,1,'2024-12-09 14:39:56','2024-12-09 14:39:56','','Superb Lola The Ninth','','publish','closed','closed','','superb-lola-the-ninth','','','2024-12-09 14:39:56','2024-12-09 14:39:56','',0,'http://fictional-university.local/pet/superb-lola-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (271,1,'2024-12-09 14:40:01','2024-12-09 14:40:01','','Swell Bubba The Fifth','','publish','closed','closed','','swell-bubba-the-fifth','','','2024-12-09 14:40:01','2024-12-09 14:40:01','',0,'http://fictional-university.local/pet/swell-bubba-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (272,1,'2024-12-09 14:40:01','2024-12-09 14:40:01','','Solid Jackson The Ninth','','publish','closed','closed','','solid-jackson-the-ninth','','','2024-12-09 14:40:01','2024-12-09 14:40:01','',0,'http://fictional-university.local/pet/solid-jackson-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (273,1,'2024-12-09 14:40:01','2024-12-09 14:40:01','','Brilliant Grace The Third','','publish','closed','closed','','brilliant-grace-the-third','','','2024-12-09 14:40:01','2024-12-09 14:40:01','',0,'http://fictional-university.local/pet/brilliant-grace-the-third/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (274,1,'2024-12-09 14:40:01','2024-12-09 14:40:01','','Riveting Macy The Third','','publish','closed','closed','','riveting-macy-the-third','','','2024-12-09 14:40:01','2024-12-09 14:40:01','',0,'http://fictional-university.local/pet/riveting-macy-the-third/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (275,1,'2024-12-09 14:40:01','2024-12-09 14:40:01','','Polished George The Sixth','','publish','closed','closed','','polished-george-the-sixth','','','2024-12-09 14:40:01','2024-12-09 14:40:01','',0,'http://fictional-university.local/pet/polished-george-the-sixth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (276,1,'2024-12-09 14:40:01','2024-12-09 14:40:01','','Striking Sandy The Fifth','','publish','closed','closed','','striking-sandy-the-fifth','','','2024-12-09 14:40:01','2024-12-09 14:40:01','',0,'http://fictional-university.local/pet/striking-sandy-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (277,1,'2024-12-09 14:40:01','2024-12-09 14:40:01','','Glorious Garfield The Fifth','','publish','closed','closed','','glorious-garfield-the-fifth','','','2024-12-09 14:40:01','2024-12-09 14:40:01','',0,'http://fictional-university.local/pet/glorious-garfield-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (278,1,'2024-12-09 14:40:01','2024-12-09 14:40:01','','Classy Cash Senior','','publish','closed','closed','','classy-cash-senior','','','2024-12-09 14:40:01','2024-12-09 14:40:01','',0,'http://fictional-university.local/pet/classy-cash-senior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (279,1,'2024-12-09 14:40:02','2024-12-09 14:40:02','','Superb Snuggles Junior','','publish','closed','closed','','superb-snuggles-junior','','','2024-12-09 14:40:02','2024-12-09 14:40:02','',0,'http://fictional-university.local/pet/superb-snuggles-junior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (280,1,'2024-12-09 14:40:02','2024-12-09 14:40:02','','Groundbreaking Zoe The Seventh','','publish','closed','closed','','groundbreaking-zoe-the-seventh','','','2024-12-09 14:40:02','2024-12-09 14:40:02','',0,'http://fictional-university.local/pet/groundbreaking-zoe-the-seventh/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (281,1,'2024-12-09 14:40:09','2024-12-09 14:40:09','','Sweet Sophie The Fifth','','publish','closed','closed','','sweet-sophie-the-fifth','','','2024-12-09 14:40:09','2024-12-09 14:40:09','',0,'http://fictional-university.local/pet/sweet-sophie-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (282,1,'2024-12-09 14:40:09','2024-12-09 14:40:09','','Phenomenal Shadow The Fifth','','publish','closed','closed','','phenomenal-shadow-the-fifth','','','2024-12-09 14:40:09','2024-12-09 14:40:09','',0,'http://fictional-university.local/pet/phenomenal-shadow-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (283,1,'2024-12-09 14:40:09','2024-12-09 14:40:09','','Smashing Joey Junior','','publish','closed','closed','','smashing-joey-junior','','','2024-12-09 14:40:09','2024-12-09 14:40:09','',0,'http://fictional-university.local/pet/smashing-joey-junior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (284,1,'2024-12-09 14:40:09','2024-12-09 14:40:09','','Astounding Dakota Senior','','publish','closed','closed','','astounding-dakota-senior','','','2024-12-09 14:40:09','2024-12-09 14:40:09','',0,'http://fictional-university.local/pet/astounding-dakota-senior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (285,1,'2024-12-09 14:40:09','2024-12-09 14:40:09','','Excellent Smokey The Sixth','','publish','closed','closed','','excellent-smokey-the-sixth','','','2024-12-09 14:40:09','2024-12-09 14:40:09','',0,'http://fictional-university.local/pet/excellent-smokey-the-sixth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (286,1,'2024-12-09 14:40:09','2024-12-09 14:40:09','','Wondrous Precious The Eighth','','publish','closed','closed','','wondrous-precious-the-eighth','','','2024-12-09 14:40:09','2024-12-09 14:40:09','',0,'http://fictional-university.local/pet/wondrous-precious-the-eighth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (287,1,'2024-12-09 14:40:09','2024-12-09 14:40:09','','Stylish Minnie The Eighth','','publish','closed','closed','','stylish-minnie-the-eighth','','','2024-12-09 14:40:09','2024-12-09 14:40:09','',0,'http://fictional-university.local/pet/stylish-minnie-the-eighth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (288,1,'2024-12-09 14:40:09','2024-12-09 14:40:09','','Spectacular Heidi The Third','','publish','closed','closed','','spectacular-heidi-the-third','','','2024-12-09 14:40:09','2024-12-09 14:40:09','',0,'http://fictional-university.local/pet/spectacular-heidi-the-third/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (289,1,'2024-12-09 14:40:09','2024-12-09 14:40:09','','Groovy Misty The Seventh','','publish','closed','closed','','groovy-misty-the-seventh','','','2024-12-09 14:40:09','2024-12-09 14:40:09','',0,'http://fictional-university.local/pet/groovy-misty-the-seventh/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (290,1,'2024-12-09 14:40:09','2024-12-09 14:40:09','','Tremendous Copper The Third','','publish','closed','closed','','tremendous-copper-the-third','','','2024-12-09 14:40:09','2024-12-09 14:40:09','',0,'http://fictional-university.local/pet/tremendous-copper-the-third/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (291,1,'2024-12-09 14:40:21','2024-12-09 14:40:21','','Rad Rusty Junior','','publish','closed','closed','','rad-rusty-junior','','','2024-12-09 14:40:21','2024-12-09 14:40:21','',0,'http://fictional-university.local/pet/rad-rusty-junior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (292,1,'2024-12-09 14:40:21','2024-12-09 14:40:21','','Marvelous Bob The Fourth','','publish','closed','closed','','marvelous-bob-the-fourth','','','2024-12-09 14:40:21','2024-12-09 14:40:21','',0,'http://fictional-university.local/pet/marvelous-bob-the-fourth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (293,1,'2024-12-09 14:40:21','2024-12-09 14:40:21','','Premium Tucker The Eighth','','publish','closed','closed','','premium-tucker-the-eighth','','','2024-12-09 14:40:21','2024-12-09 14:40:21','',0,'http://fictional-university.local/pet/premium-tucker-the-eighth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (294,1,'2024-12-09 14:40:21','2024-12-09 14:40:21','','Supreme Salem The Seventh','','publish','closed','closed','','supreme-salem-the-seventh','','','2024-12-09 14:40:21','2024-12-09 14:40:21','',0,'http://fictional-university.local/pet/supreme-salem-the-seventh/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (295,1,'2024-12-09 14:40:21','2024-12-09 14:40:21','','Rad Roxie The Fifth','','publish','closed','closed','','rad-roxie-the-fifth','','','2024-12-09 14:40:21','2024-12-09 14:40:21','',0,'http://fictional-university.local/pet/rad-roxie-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (296,1,'2024-12-09 14:40:21','2024-12-09 14:40:21','','Good Moose Junior','','publish','closed','closed','','good-moose-junior','','','2024-12-09 14:40:21','2024-12-09 14:40:21','',0,'http://fictional-university.local/pet/good-moose-junior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (297,1,'2024-12-09 14:40:21','2024-12-09 14:40:21','','Breathtaking Dakota The Seventh','','publish','closed','closed','','breathtaking-dakota-the-seventh','','','2024-12-09 14:40:21','2024-12-09 14:40:21','',0,'http://fictional-university.local/pet/breathtaking-dakota-the-seventh/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (298,1,'2024-12-09 14:40:21','2024-12-09 14:40:21','','Wondrous Mittens The Fifth','','publish','closed','closed','','wondrous-mittens-the-fifth','','','2024-12-09 14:40:21','2024-12-09 14:40:21','',0,'http://fictional-university.local/pet/wondrous-mittens-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (299,1,'2024-12-09 14:40:21','2024-12-09 14:40:21','','Laudable Hunter The Ninth','','publish','closed','closed','','laudable-hunter-the-ninth','','','2024-12-09 14:40:21','2024-12-09 14:40:21','',0,'http://fictional-university.local/pet/laudable-hunter-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (300,1,'2024-12-09 14:40:21','2024-12-09 14:40:21','','Dazzling Boomer The Fifth','','publish','closed','closed','','dazzling-boomer-the-fifth','','','2024-12-09 14:40:21','2024-12-09 14:40:21','',0,'http://fictional-university.local/pet/dazzling-boomer-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (301,1,'2024-12-09 14:40:27','2024-12-09 14:40:27','','Legendary Mia The Sixth','','publish','closed','closed','','legendary-mia-the-sixth','','','2024-12-09 14:40:27','2024-12-09 14:40:27','',0,'http://fictional-university.local/pet/legendary-mia-the-sixth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (302,1,'2024-12-09 14:40:27','2024-12-09 14:40:27','','Exceptional Casper The Ninth','','publish','closed','closed','','exceptional-casper-the-ninth','','','2024-12-09 14:40:27','2024-12-09 14:40:27','',0,'http://fictional-university.local/pet/exceptional-casper-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (303,1,'2024-12-09 14:40:27','2024-12-09 14:40:27','','Tremendous Zoe Junior','','publish','closed','closed','','tremendous-zoe-junior','','','2024-12-09 14:40:27','2024-12-09 14:40:27','',0,'http://fictional-university.local/pet/tremendous-zoe-junior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (304,1,'2024-12-09 14:40:27','2024-12-09 14:40:27','','Flawless Josie The Fifth','','publish','closed','closed','','flawless-josie-the-fifth','','','2024-12-09 14:40:27','2024-12-09 14:40:27','',0,'http://fictional-university.local/pet/flawless-josie-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (305,1,'2024-12-09 14:40:27','2024-12-09 14:40:27','','Flawless Athena The Third','','publish','closed','closed','','flawless-athena-the-third','','','2024-12-09 14:40:27','2024-12-09 14:40:27','',0,'http://fictional-university.local/pet/flawless-athena-the-third/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (306,1,'2024-12-09 14:40:27','2024-12-09 14:40:27','','Cool Boo Senior','','publish','closed','closed','','cool-boo-senior','','','2024-12-09 14:40:27','2024-12-09 14:40:27','',0,'http://fictional-university.local/pet/cool-boo-senior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (307,1,'2024-12-09 14:40:27','2024-12-09 14:40:27','','Exquisite Loki The Eighth','','publish','closed','closed','','exquisite-loki-the-eighth','','','2024-12-09 14:40:27','2024-12-09 14:40:27','',0,'http://fictional-university.local/pet/exquisite-loki-the-eighth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (308,1,'2024-12-09 14:40:27','2024-12-09 14:40:27','','Dazzling Charlie Senior','','publish','closed','closed','','dazzling-charlie-senior','','','2024-12-09 14:40:27','2024-12-09 14:40:27','',0,'http://fictional-university.local/pet/dazzling-charlie-senior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (309,1,'2024-12-09 14:40:27','2024-12-09 14:40:27','','Neat Heidi The Fifth','','publish','closed','closed','','neat-heidi-the-fifth','','','2024-12-09 14:40:27','2024-12-09 14:40:27','',0,'http://fictional-university.local/pet/neat-heidi-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (310,1,'2024-12-09 14:40:27','2024-12-09 14:40:27','','Laudable Copper The Fifth','','publish','closed','closed','','laudable-copper-the-fifth','','','2024-12-09 14:40:27','2024-12-09 14:40:27','',0,'http://fictional-university.local/pet/laudable-copper-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (311,1,'2024-12-09 14:40:44','2024-12-09 14:40:44','','Astonishing Oliver The Ninth','','publish','closed','closed','','astonishing-oliver-the-ninth','','','2024-12-09 14:40:44','2024-12-09 14:40:44','',0,'http://fictional-university.local/pet/astonishing-oliver-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (312,1,'2024-12-09 14:40:44','2024-12-09 14:40:44','','Fabulous Diesel The Seventh','','publish','closed','closed','','fabulous-diesel-the-seventh','','','2024-12-09 14:40:44','2024-12-09 14:40:44','',0,'http://fictional-university.local/pet/fabulous-diesel-the-seventh/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (313,1,'2024-12-09 14:40:44','2024-12-09 14:40:44','','Stunning Hannah The Ninth','','publish','closed','closed','','stunning-hannah-the-ninth','','','2024-12-09 14:40:44','2024-12-09 14:40:44','',0,'http://fictional-university.local/pet/stunning-hannah-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (314,1,'2024-12-09 14:40:44','2024-12-09 14:40:44','','Gnarly Macy The Fifth','','publish','closed','closed','','gnarly-macy-the-fifth','','','2024-12-09 14:40:44','2024-12-09 14:40:44','',0,'http://fictional-university.local/pet/gnarly-macy-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (315,1,'2024-12-09 14:40:44','2024-12-09 14:40:44','','Superb Annie Senior','','publish','closed','closed','','superb-annie-senior','','','2024-12-09 14:40:44','2024-12-09 14:40:44','',0,'http://fictional-university.local/pet/superb-annie-senior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (316,1,'2024-12-09 14:40:44','2024-12-09 14:40:44','','Groundbreaking Thor The Eighth','','publish','closed','closed','','groundbreaking-thor-the-eighth','','','2024-12-09 14:40:44','2024-12-09 14:40:44','',0,'http://fictional-university.local/pet/groundbreaking-thor-the-eighth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (317,1,'2024-12-09 14:40:44','2024-12-09 14:40:44','','Wondrous Piper Junior','','publish','closed','closed','','wondrous-piper-junior','','','2024-12-09 14:40:44','2024-12-09 14:40:44','',0,'http://fictional-university.local/pet/wondrous-piper-junior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (318,1,'2024-12-09 14:40:44','2024-12-09 14:40:44','','Sweet Jake The Ninth','','publish','closed','closed','','sweet-jake-the-ninth','','','2024-12-09 14:40:44','2024-12-09 14:40:44','',0,'http://fictional-university.local/pet/sweet-jake-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (319,1,'2024-12-09 14:40:44','2024-12-09 14:40:44','','Solid Ginger The Ninth','','publish','closed','closed','','solid-ginger-the-ninth','','','2024-12-09 14:40:44','2024-12-09 14:40:44','',0,'http://fictional-university.local/pet/solid-ginger-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (320,1,'2024-12-09 14:40:44','2024-12-09 14:40:44','','Lovely Oliver The Third','','publish','closed','closed','','lovely-oliver-the-third','','','2024-12-09 14:40:44','2024-12-09 14:40:44','',0,'http://fictional-university.local/pet/lovely-oliver-the-third/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (321,1,'2024-12-09 14:40:52','2024-12-09 14:40:52','','Astounding Tiger The Third','','publish','closed','closed','','astounding-tiger-the-third','','','2024-12-09 14:40:52','2024-12-09 14:40:52','',0,'http://fictional-university.local/pet/astounding-tiger-the-third/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (322,1,'2024-12-09 14:40:52','2024-12-09 14:40:52','','Supreme Snowball The Fourth','','publish','closed','closed','','supreme-snowball-the-fourth','','','2024-12-09 14:40:52','2024-12-09 14:40:52','',0,'http://fictional-university.local/pet/supreme-snowball-the-fourth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (323,1,'2024-12-09 14:40:52','2024-12-09 14:40:52','','Wonderful Molly The Sixth','','publish','closed','closed','','wonderful-molly-the-sixth','','','2024-12-09 14:40:52','2024-12-09 14:40:52','',0,'http://fictional-university.local/pet/wonderful-molly-the-sixth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (324,1,'2024-12-09 14:40:52','2024-12-09 14:40:52','','Remarkable Simon The Fourth','','publish','closed','closed','','remarkable-simon-the-fourth','','','2024-12-09 14:40:52','2024-12-09 14:40:52','',0,'http://fictional-university.local/pet/remarkable-simon-the-fourth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (325,1,'2024-12-09 14:40:52','2024-12-09 14:40:52','','Outstanding Scooter The Seventh','','publish','closed','closed','','outstanding-scooter-the-seventh','','','2024-12-09 14:40:52','2024-12-09 14:40:52','',0,'http://fictional-university.local/pet/outstanding-scooter-the-seventh/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (326,1,'2024-12-09 14:40:52','2024-12-09 14:40:52','','Phenomenal Katie Senior','','publish','closed','closed','','phenomenal-katie-senior','','','2024-12-09 14:40:52','2024-12-09 14:40:52','',0,'http://fictional-university.local/pet/phenomenal-katie-senior/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (327,1,'2024-12-09 14:40:52','2024-12-09 14:40:52','','Brilliant Ace The Seventh','','publish','closed','closed','','brilliant-ace-the-seventh','','','2024-12-09 14:40:52','2024-12-09 14:40:52','',0,'http://fictional-university.local/pet/brilliant-ace-the-seventh/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (328,1,'2024-12-09 14:40:52','2024-12-09 14:40:52','','Superb Callie The Sixth','','publish','closed','closed','','superb-callie-the-sixth','','','2024-12-09 14:40:52','2024-12-09 14:40:52','',0,'http://fictional-university.local/pet/superb-callie-the-sixth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (329,1,'2024-12-09 14:40:52','2024-12-09 14:40:52','','Polished Bear The Ninth','','publish','closed','closed','','polished-bear-the-ninth','','','2024-12-09 14:40:52','2024-12-09 14:40:52','',0,'http://fictional-university.local/pet/polished-bear-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (330,1,'2024-12-09 14:40:52','2024-12-09 14:40:52','','Extraordinary Apollo The Third','','publish','closed','closed','','extraordinary-apollo-the-third','','','2024-12-09 14:40:52','2024-12-09 14:40:52','',0,'http://fictional-university.local/pet/extraordinary-apollo-the-third/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (331,1,'2024-12-09 14:40:57','2024-12-09 14:40:57','','Spectacular Sydney The Sixth','','publish','closed','closed','','spectacular-sydney-the-sixth','','','2024-12-09 14:40:57','2024-12-09 14:40:57','',0,'http://fictional-university.local/pet/spectacular-sydney-the-sixth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (332,1,'2024-12-09 14:40:57','2024-12-09 14:40:57','','Luminous Sadie The Eighth','','publish','closed','closed','','luminous-sadie-the-eighth','','','2024-12-09 14:40:57','2024-12-09 14:40:57','',0,'http://fictional-university.local/pet/luminous-sadie-the-eighth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (333,1,'2024-12-09 14:40:57','2024-12-09 14:40:57','','Spectacular Hazel The Ninth','','publish','closed','closed','','spectacular-hazel-the-ninth','','','2024-12-09 14:40:57','2024-12-09 14:40:57','',0,'http://fictional-university.local/pet/spectacular-hazel-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (334,1,'2024-12-09 14:40:57','2024-12-09 14:40:57','','Flawless Layla The Sixth','','publish','closed','closed','','flawless-layla-the-sixth','','','2024-12-09 14:40:57','2024-12-09 14:40:57','',0,'http://fictional-university.local/pet/flawless-layla-the-sixth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (335,1,'2024-12-09 14:40:57','2024-12-09 14:40:57','','Majestic Oscar The Ninth','','publish','closed','closed','','majestic-oscar-the-ninth','','','2024-12-09 14:40:57','2024-12-09 14:40:57','',0,'http://fictional-university.local/pet/majestic-oscar-the-ninth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (336,1,'2024-12-09 14:40:57','2024-12-09 14:40:57','','Fantastic Chance The Eighth','','publish','closed','closed','','fantastic-chance-the-eighth','','','2024-12-09 14:40:57','2024-12-09 14:40:57','',0,'http://fictional-university.local/pet/fantastic-chance-the-eighth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (337,1,'2024-12-09 14:40:57','2024-12-09 14:40:57','','Supreme Lacey The Sixth','','publish','closed','closed','','supreme-lacey-the-sixth','','','2024-12-09 14:40:57','2024-12-09 14:40:57','',0,'http://fictional-university.local/pet/supreme-lacey-the-sixth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (338,1,'2024-12-09 14:40:57','2024-12-09 14:40:57','','Delightful Hank The Eighth','','publish','closed','closed','','delightful-hank-the-eighth','','','2024-12-09 14:40:57','2024-12-09 14:40:57','',0,'http://fictional-university.local/pet/delightful-hank-the-eighth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (339,1,'2024-12-09 14:40:57','2024-12-09 14:40:57','','Smashing Toby The Fifth','','publish','closed','closed','','smashing-toby-the-fifth','','','2024-12-09 14:40:57','2024-12-09 14:40:57','',0,'http://fictional-university.local/pet/smashing-toby-the-fifth/',0,'pet','',0);
INSERT INTO `wp_posts` VALUES (340,1,'2024-12-09 14:40:57','2024-12-09 14:40:57','','Rad Cleo Junior','','publish','closed','closed','','rad-cleo-junior','','','2024-12-09 14:40:57','2024-12-09 14:40:57','',0,'http://fictional-university.local/pet/rad-cleo-junior/',0,'pet','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (9,1,0);
INSERT INTO `wp_term_relationships` VALUES (24,3,0);
INSERT INTO `wp_term_relationships` VALUES (26,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (32,4,0);
INSERT INTO `wp_term_relationships` VALUES (33,4,0);
INSERT INTO `wp_term_relationships` VALUES (34,4,0);
INSERT INTO `wp_term_relationships` VALUES (35,5,0);
INSERT INTO `wp_term_relationships` VALUES (36,5,0);
INSERT INTO `wp_term_relationships` VALUES (41,4,0);
INSERT INTO `wp_term_relationships` VALUES (42,3,0);
INSERT INTO `wp_term_relationships` VALUES (59,3,0);
INSERT INTO `wp_term_relationships` VALUES (109,1,0);
INSERT INTO `wp_term_relationships` VALUES (111,1,0);
INSERT INTO `wp_term_relationships` VALUES (113,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','This is Uncategorized Description Page',0,6);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,2);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentyfour','twentytwentyfour',0);
INSERT INTO `wp_terms` VALUES (3,'My Name Header Menu','my-name-header-menu',0);
INSERT INTO `wp_terms` VALUES (4,'footer Location One','footer-location-one',0);
INSERT INTO `wp_terms` VALUES (5,'footer Location Two','footer-location-two',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Ahmad Othman');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','ahmad');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','othman');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','This is Description of Author');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','0');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:3:{s:64:\"1f47e9cad46950e66f10fcf5a8e8acf42a3170183c1b6c1967a1b939bf6f11ba\";a:4:{s:10:\"expiration\";i:1733819398;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0\";s:5:\"login\";i:1733646598;}s:64:\"919f38ac6c2c4db6b04e994748f56aff74fae5c6c2b371c65dbdea12c7f00fd1\";a:4:{s:10:\"expiration\";i:1733902540;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0\";s:5:\"login\";i:1733729740;}s:64:\"44fcff9179c1f14365c3ff0c6afa5a7ed8f4edd34baff0c8ec8cf30237a0284d\";a:5:{s:10:\"expiration\";i:1733924499;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0\";s:5:\"login\";i:1733751699;s:4:\"loco\";a:4:{s:1:\"c\";s:17:\"Loco_data_Session\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:7:\"success\";a:0:{}}s:1:\"t\";i:1733752683;}}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','225');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:4:{s:4:\"core\";a:5:{s:26:\"isComplementaryAreaVisible\";b:0;s:15:\"distractionFree\";b:0;s:12:\"fixedToolbar\";b:1;s:10:\"editorMode\";s:6:\"visual\";s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}}s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-12-09T08:28:20.731Z\";s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:318;}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','mfold=o&editor_expand=on&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1731353038');
INSERT INTO `wp_usermeta` VALUES (21,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_event','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'meta-box-order_event','a:3:{s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'screen_layout_event','2');
INSERT INTO `wp_usermeta` VALUES (28,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (29,1,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (30,1,'acf_user_settings','a:1:{s:19:\"post-type-first-run\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (31,2,'nickname','professor');
INSERT INTO `wp_usermeta` VALUES (32,2,'first_name','professor');
INSERT INTO `wp_usermeta` VALUES (33,2,'last_name','arabic');
INSERT INTO `wp_usermeta` VALUES (34,2,'description','');
INSERT INTO `wp_usermeta` VALUES (35,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (36,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (37,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (38,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (39,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (40,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (41,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (42,2,'wp_capabilities','a:3:{s:10:\"subscriber\";b:1;s:13:\"event_planner\";b:1;s:14:\"campus_manager\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (43,2,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (44,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (45,2,'session_tokens','a:2:{s:64:\"d7443e484e436934d095ebfcb91e902f19b07668e6d4fef9347356fbb0cdbc0e\";a:4:{s:10:\"expiration\";i:1732285291;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0\";s:5:\"login\";i:1732112491;}s:64:\"cbc502da9626b6358ebfffec2c6e786b4e76b25a5cdef04bd5a4a14369ba3017\";a:4:{s:10:\"expiration\";i:1732286387;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:125:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0\";s:5:\"login\";i:1732113587;}}');
INSERT INTO `wp_usermeta` VALUES (46,2,'wp_user-settings','mfold=o');
INSERT INTO `wp_usermeta` VALUES (47,2,'wp_user-settings-time','1732112493');
INSERT INTO `wp_usermeta` VALUES (48,2,'wp_persisted_preferences','a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-11-20T14:40:06.217Z\";}');
INSERT INTO `wp_usermeta` VALUES (49,3,'nickname','register');
INSERT INTO `wp_usermeta` VALUES (50,3,'first_name','');
INSERT INTO `wp_usermeta` VALUES (51,3,'last_name','');
INSERT INTO `wp_usermeta` VALUES (52,3,'description','');
INSERT INTO `wp_usermeta` VALUES (53,3,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (54,3,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (55,3,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (56,3,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (57,3,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (58,3,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (59,3,'locale','');
INSERT INTO `wp_usermeta` VALUES (60,3,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (61,3,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (62,3,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (78,3,'session_tokens','a:1:{s:64:\"6519b78f5dfcd307ae433a5f88750e10a80f548428efdf4fd4031650bfb592e2\";a:4:{s:10:\"expiration\";i:1732611811;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36\";s:5:\"login\";i:1732439011;}}');
INSERT INTO `wp_usermeta` VALUES (79,1,'meta-box-order_note','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:50:\"submitdiv,acf-group_6732d8578fbc2,commentstatusdiv\";s:6:\"normal\";s:7:\"slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (80,1,'screen_layout_note','2');
INSERT INTO `wp_usermeta` VALUES (81,1,'closedpostboxes_note','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (82,1,'metaboxhidden_note','a:0:{}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'mansoura-dev','$P$BUIBp4lvMHN9aEx/b5f3CwahCDoNU..','mansoura-dev','ahmadothmanshoap1981@gmail.com','http://fictional-university.local','2024-10-31 07:53:52','',0,'Ahmad Othman');
INSERT INTO `wp_users` VALUES (2,'professor','$P$Byywcn.HgWpkaDxksyOThrWBzkyXGm1','professor','professor@hotmail.com','','2024-11-20 14:18:52','',0,'professor arabic');
INSERT INTO `wp_users` VALUES (3,'register','$P$BLIOCfmhXHbZo.eGLvlUYZo6L5zAlG1','register','mail@mail.com','','2024-11-20 15:06:50','',0,'register');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09 17:24:38