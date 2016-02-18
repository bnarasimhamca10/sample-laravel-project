-- MySQL dump 10.13  Distrib 5.6.25, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: matrix
-- ------------------------------------------------------
-- Server version	5.6.25-0ubuntu0.15.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ats_data`
--

DROP TABLE IF EXISTS `ats_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_data` (
  `req_id` varchar(25) DEFAULT NULL,
  `job_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `hm_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hm_firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hm_lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hm_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `recruiter_firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruiter_lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruiter_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_id` bigint(10) DEFAULT NULL,
  `candidate_firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `req_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(400) DEFAULT NULL,
  `division` varchar(400) DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit` (
  `audit_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `int_id` varchar(75) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(75) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `req_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `action_module` varchar(50) DEFAULT NULL,
  `action_comments` varchar(1000) DEFAULT NULL,
  `action_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`audit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1697 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `auth_check`
--

DROP TABLE IF EXISTS `auth_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_check` (
  `auth_check_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uri` varchar(150) DEFAULT NULL,
  `controller_path` varchar(250) DEFAULT NULL,
  `user_role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`auth_check_id`),
  KEY `uni_cont_path` (`controller_path`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `candidates`
--

DROP TABLE IF EXISTS `candidates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidates` (
  `candidate_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `first_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `req_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `locked` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '0',
  `hm_justification` text COLLATE utf8_unicode_ci,
  `hm_hire` enum('','Yes','No') COLLATE utf8_unicode_ci DEFAULT NULL,
  `hm_score` enum('1','2','3','4','5','6','7') COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_created_date` datetime DEFAULT '0000-00-00 00:00:00',
  `ip_updated_date` datetime DEFAULT '0000-00-00 00:00:00',
  `reminder_sent_date` datetime DEFAULT NULL,
  `hm_justification_updated_time` datetime DEFAULT NULL,
  `download_feedback_time` datetime DEFAULT NULL,
  `completed_feedback_time` datetime DEFAULT NULL,
  `downloaded_user_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `downloaded_user_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taleo_export_flag` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0',
  `candidate_email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_status` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '1',
  `application_id` int(11) DEFAULT NULL,
  `source` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '1',
  UNIQUE KEY `req_id_2` (`req_id`,`candidate_id`),
  KEY `candidate_id` (`candidate_id`),
  KEY `req_id` (`req_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_config`
--

DROP TABLE IF EXISTS `email_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_config` (
  `demo_server` enum('true','false') NOT NULL DEFAULT 'false',
  `email_id` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `email_logs`
--

DROP TABLE IF EXISTS `email_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `req_id` varchar(25) NOT NULL,
  `candidate_id` varchar(50) NOT NULL,
  `sent_to` varchar(255) NOT NULL,
  `sent_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sent_by` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_details` (
  `user_id` varchar(75) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_id` bigint(8) DEFAULT '0',
  `manager_id` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `division` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_level` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_id` (`user_id`),
  KEY `email_id` (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_questions`
--

DROP TABLE IF EXISTS `feedback_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_questions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `int_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `question_feedback` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_questions_draft`
--

DROP TABLE IF EXISTS `feedback_questions_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_questions_draft` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `int_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `question_id` bigint(20) NOT NULL,
  `question_feedback` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_sections`
--

DROP TABLE IF EXISTS `feedback_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_sections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `int_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `section_score` enum('1','2','3','4','5') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_feedback` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `feedback_sections_draft`
--

DROP TABLE IF EXISTS `feedback_sections_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_sections_draft` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `int_id` bigint(20) NOT NULL,
  `section_id` bigint(20) NOT NULL,
  `section_score` enum('1','2','3','4','5') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `section_feedback` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interview_details`
--

DROP TABLE IF EXISTS `interview_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview_details` (
  `int_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `req_id` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hire` int(1) DEFAULT NULL,
  `overall_rating` double DEFAULT NULL,
  `overall_strength` text COLLATE utf8_unicode_ci,
  `overall_concern` text COLLATE utf8_unicode_ci,
  `feedback_status` enum('Pending','draft','Submitted') COLLATE utf8_unicode_ci DEFAULT 'Pending',
  `feedback_submitted_time` datetime DEFAULT NULL,
  `alternate_position` text COLLATE utf8_unicode_ci,
  `questions_assigned` enum('1','0') COLLATE utf8_unicode_ci DEFAULT '0',
  `round_id` int(11) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`int_id`),
  KEY `interviewer_user_id` (`user_id`),
  KEY `req_id` (`req_id`),
  KEY `candidate_id` (`candidate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interview_details_draft`
--

DROP TABLE IF EXISTS `interview_details_draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview_details_draft` (
  `int_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(75) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `req_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hire` int(1) DEFAULT NULL,
  `overall_rating` double DEFAULT NULL,
  `overall_strength` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `overall_concern` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `feedback_status` enum('Pending','draft','Submitted') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'Pending',
  `feedback_submitted_time` datetime DEFAULT NULL,
  `alternate_position` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `questions_assigned` enum('1','0') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `round_id` int(11) unsigned NOT NULL DEFAULT '1',
  `last_updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`int_id`),
  KEY `interviewer_user_id` (`user_id`),
  KEY `req_id` (`req_id`),
  KEY `candidate_id` (`candidate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interview_round`
--

DROP TABLE IF EXISTS `interview_round`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interview_round` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` varchar(50) DEFAULT NULL,
  `req_id` varchar(25) DEFAULT NULL,
  `round` int(11) DEFAULT NULL,
  `interview_date` datetime DEFAULT NULL,
  `reminder_interview_date` datetime DEFAULT NULL,
  `comments` text NOT NULL,
  `created_by` varchar(120) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(120) DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jobvite_candidate_step`
--

DROP TABLE IF EXISTS `jobvite_candidate_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobvite_candidate_step` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `step` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `panel_logs`
--

DROP TABLE IF EXISTS `panel_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panel_logs` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `req_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(75) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `copy_panel_candidate_id` varchar(50) DEFAULT NULL,
  `random_key` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `section_id` bigint(20) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `is_active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'None',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2226 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requisitions`
--

DROP TABLE IF EXISTS `requisitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisitions` (
  `req_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `job_title` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_desc` text COLLATE utf8_unicode_ci,
  `hiring_manager` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hiring_manager_email_id` varchar(75) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruiter_email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `division` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `City` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `State` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Region` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `updated_time` datetime DEFAULT NULL,
  `req_type` enum('E','R') COLLATE utf8_unicode_ci DEFAULT 'R',
  `JobLevel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`req_id`),
  KEY `hiring_manager` (`hiring_manager`),
  KEY `hiring_manager_email_id` (`hiring_manager_email_id`),
  KEY `recruiter` (`recruiter_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `requisitions_private`
--

DROP TABLE IF EXISTS `requisitions_private`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requisitions_private` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `req_id` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `email_id` varchar(100) NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`email_id`),
  UNIQUE KEY `email_id` (`email_id`),
  KEY `email_id_2` (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sections` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` bigint(20) NOT NULL,
  `is_scorable` enum('0','1') NOT NULL DEFAULT '0',
  `is_active` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `weight` int(11) NOT NULL,
  `positive_themes` text,
  `negative_themes` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=531 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_ats_data`
--

DROP TABLE IF EXISTS `temp_ats_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_ats_data` (
  `req_id` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `job_title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `hm_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hm_firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hm_lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hm_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruiter_id` int(11) DEFAULT NULL,
  `recruiter_firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruiter_lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruiter_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_id` varchar(50) DEFAULT NULL,
  `candidate_firstname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_lastname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `candidate_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `req_status` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `source_type` varchar(100) DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `jobvite_step` varchar(150) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_ats_requisitions`
--

DROP TABLE IF EXISTS `temp_ats_requisitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_ats_requisitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `req_id` varchar(25) NOT NULL,
  `job_title` varchar(250) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  `private` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `req_id` (`req_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `templates`
--

DROP TABLE IF EXISTS `templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templates` (
  `type` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created_on` timestamp NULL DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-30 10:22:05
