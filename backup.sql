/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.16-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: andika
-- ------------------------------------------------------
-- Server version	10.11.16-MariaDB-ubu2204-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity_log`
--

DROP TABLE IF EXISTS `activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) unsigned DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) unsigned DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` uuid DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject` (`subject_type`,`subject_id`),
  KEY `causer` (`causer_type`,`causer_id`),
  KEY `activity_log_log_name_index` (`log_name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_log`
--

LOCK TABLES `activity_log` WRITE;
/*!40000 ALTER TABLE `activity_log` DISABLE KEYS */;
INSERT INTO `activity_log` VALUES
(1,'Resource','Role Created','Spatie\\Permission\\Models\\Role','Created',1,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"super_admin\",\"updated_at\":\"2026-06-16 18:26:30\",\"created_at\":\"2026-06-16 18:26:30\",\"id\":1}',NULL,'2026-06-16 18:26:30','2026-06-16 18:26:30'),
(2,'Resource','Role Created','Spatie\\Permission\\Models\\Role','Created',2,NULL,NULL,'{\"guard_name\":\"web\",\"name\":\"user\",\"updated_at\":\"2026-06-16 18:26:31\",\"created_at\":\"2026-06-16 18:26:31\",\"id\":2}',NULL,'2026-06-16 18:26:31','2026-06-16 18:26:31'),
(3,'Resource','User Created','App\\Models\\User','Created',1,NULL,NULL,'{\"email\":\"admin@admin.com\",\"name\":\"Super Admin\",\"updated_at\":\"2026-06-16 18:26:31\",\"created_at\":\"2026-06-16 18:26:31\",\"id\":1}',NULL,'2026-06-16 18:26:31','2026-06-16 18:26:31'),
(4,'Resource','User Created','App\\Models\\User','Created',2,NULL,NULL,'{\"email\":\"user@admin.com\",\"name\":\"User Account\",\"updated_at\":\"2026-06-16 18:26:31\",\"created_at\":\"2026-06-16 18:26:31\",\"id\":2}',NULL,'2026-06-16 18:26:31','2026-06-16 18:26:31'),
(5,'Access','Super Admin logged in',NULL,'Login',NULL,'App\\Models\\User',1,'{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/149.0.0.0 Safari\\/537.36\"}',NULL,'2026-06-16 18:27:30','2026-06-16 18:27:30'),
(6,'Access','Super Admin logged in',NULL,'Login',NULL,'App\\Models\\User',1,'{\"ip\":\"172.18.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/149.0.0.0 Safari\\/537.36\"}',NULL,'2026-06-16 18:59:01','2026-06-16 18:59:01'),
(7,'Resource','Portfolio Created by Super Admin','App\\Models\\Portfolio','Created',1,'App\\Models\\User',1,'{\"name\":\"Andika Nur Hidayat\",\"title\":\"Mahasiswa Ilmu Komputer MNC University (Semester 2)\",\"about\":\"Saya adalah mahasiswa Ilmu Komputer yang memiliki minat pada pengembangan aplikasi web dan teknologi digital. Saat ini saya aktif mempelajari Laravel, Filament, Livewire, Docker, dan manajemen basis data. Saya senang membangun solusi berbasis web yang tidak hanya berfungsi dengan baik tetapi juga memberikan pengalaman pengguna yang nyaman.\",\"photo\":null,\"email\":\"dikanurhidayat584@gmail.com\",\"github\":null,\"linkedin\":null,\"updated_at\":\"2026-06-16 19:17:10\",\"created_at\":\"2026-06-16 19:17:10\",\"id\":1}',NULL,'2026-06-16 19:17:10','2026-06-16 19:17:10'),
(8,'Resource','Portfolio Updated by Super Admin','App\\Models\\Portfolio','Updated',1,'App\\Models\\User',1,'{\"photo\":\"portfolio\\/01KV85TRBBZWBDJPVSB2FZBPFA.jpeg\",\"updated_at\":\"2026-06-16 19:17:21\"}',NULL,'2026-06-16 19:17:21','2026-06-16 19:17:21'),
(9,'Resource','Project Created by Super Admin','App\\Models\\Project','Created',1,'App\\Models\\User',1,'{\"title\":\"Portfolio Website\",\"description\":\"tes\",\"photo\":\"projects\\/01KV85YN2E44KZWX4NXCH1WSSY.png\",\"sort_order\":\"1\",\"updated_at\":\"2026-06-16 19:19:28\",\"created_at\":\"2026-06-16 19:19:28\",\"id\":1}',NULL,'2026-06-16 19:19:28','2026-06-16 19:19:28'),
(10,'Resource','Project Created by Super Admin','App\\Models\\Project','Created',2,'App\\Models\\User',1,'{\"title\":\"Membuat Rawa Rontek\",\"description\":\"erere\",\"photo\":\"projects\\/01KV85Z7RWPVY7DPFGVGK2X4P2.png\",\"sort_order\":\"1\",\"updated_at\":\"2026-06-16 19:19:48\",\"created_at\":\"2026-06-16 19:19:48\",\"id\":2}',NULL,'2026-06-16 19:19:48','2026-06-16 19:19:48'),
(11,'Resource','Project Created by Super Admin','App\\Models\\Project','Created',3,'App\\Models\\User',1,'{\"title\":\"asas\",\"description\":\"as\",\"photo\":\"projects\\/01KV86GDFVPG331GA9Q9JD5X7H.png\",\"sort_order\":\"3\",\"updated_at\":\"2026-06-16 19:29:11\",\"created_at\":\"2026-06-16 19:29:11\",\"id\":3}',NULL,'2026-06-16 19:29:11','2026-06-16 19:29:11'),
(12,'Resource','Project Created by Super Admin','App\\Models\\Project','Created',4,'App\\Models\\User',1,'{\"title\":\"tes\",\"description\":\"as\",\"photo\":\"projects\\/01KV86GX8NEQWKBZ0AK2AEJ56P.png\",\"sort_order\":\"4\",\"updated_at\":\"2026-06-16 19:29:27\",\"created_at\":\"2026-06-16 19:29:27\",\"id\":4}',NULL,'2026-06-16 19:29:27','2026-06-16 19:29:27'),
(13,'Resource','Project Deleted by Super Admin','App\\Models\\Project','Deleted',4,'App\\Models\\User',1,'[]',NULL,'2026-06-16 19:46:00','2026-06-16 19:46:00'),
(14,'Resource','Skill Created by Super Admin','App\\Models\\Skill','Created',1,'App\\Models\\User',1,'{\"name\":\"Laravel\",\"percentage\":\"50\",\"level\":\"Beginner\",\"updated_at\":\"2026-06-16 19:49:13\",\"created_at\":\"2026-06-16 19:49:13\",\"id\":1}',NULL,'2026-06-16 19:49:13','2026-06-16 19:49:13'),
(15,'Resource','Technology Created by Super Admin','App\\Models\\Technology','Created',1,'App\\Models\\User',1,'{\"name\":\"Docker\",\"updated_at\":\"2026-06-16 19:49:29\",\"created_at\":\"2026-06-16 19:49:29\",\"id\":1}',NULL,'2026-06-16 19:49:29','2026-06-16 19:49:29'),
(16,'Resource','Technology Created by Super Admin','App\\Models\\Technology','Created',2,'App\\Models\\User',1,'{\"name\":\"php\",\"updated_at\":\"2026-06-16 19:49:41\",\"created_at\":\"2026-06-16 19:49:41\",\"id\":2}',NULL,'2026-06-16 19:49:41','2026-06-16 19:49:41'),
(17,'Resource','Technology Created by Super Admin','App\\Models\\Technology','Created',3,'App\\Models\\User',1,'{\"name\":\"Laravel\",\"updated_at\":\"2026-06-16 19:49:45\",\"created_at\":\"2026-06-16 19:49:45\",\"id\":3}',NULL,'2026-06-16 19:49:45','2026-06-16 19:49:45'),
(18,'Resource','Skill Created by Super Admin','App\\Models\\Skill','Created',2,'App\\Models\\User',1,'{\"name\":\"Andika Nur Hidayat\",\"percentage\":\"79\",\"level\":\"Intermediate\",\"updated_at\":\"2026-06-16 19:49:57\",\"created_at\":\"2026-06-16 19:49:57\",\"id\":2}',NULL,'2026-06-16 19:49:57','2026-06-16 19:49:57'),
(19,'Resource','Skill Created by Super Admin','App\\Models\\Skill','Created',3,'App\\Models\\User',1,'{\"name\":\"php\",\"percentage\":\"100\",\"level\":\"Intermediate\",\"updated_at\":\"2026-06-16 19:50:10\",\"created_at\":\"2026-06-16 19:50:10\",\"id\":3}',NULL,'2026-06-16 19:50:10','2026-06-16 19:50:10'),
(20,'Resource','Portfolio Updated by Super Admin','App\\Models\\Portfolio','Updated',1,'App\\Models\\User',1,'{\"title\":\"Mahasiswa MNC University\",\"updated_at\":\"2026-06-16 19:52:17\"}',NULL,'2026-06-16 19:52:17','2026-06-16 19:52:17');
/*!40000 ALTER TABLE `activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES
('andika_cache_356a192b7913b04c54574d18c28d46e6395428ab','i:2;',1781613006),
('andika_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer','i:1781613006;',1781613006),
('andika_cache_livewire-rate-limiter:a2331dbf3d025cc23a020658fcd2d1b45edd8e83','i:1;',1781611200),
('andika_cache_livewire-rate-limiter:a2331dbf3d025cc23a020658fcd2d1b45edd8e83:timer','i:1781611200;',1781611200),
('andika_cache_spatie.permission.cache','a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:44:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:13:\"view_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:17:\"view_any_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:15:\"create_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:15:\"update_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:15:\"delete_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:19:\"delete_any_activity\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:14:\"view_portfolio\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:18:\"view_any_portfolio\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:16:\"create_portfolio\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:16:\"update_portfolio\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:16:\"delete_portfolio\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:20:\"delete_any_portfolio\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:12:\"view_project\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:16:\"view_any_project\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:14:\"create_project\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:14:\"update_project\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:14:\"delete_project\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:18:\"delete_any_project\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:9:\"view_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:13:\"view_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:11:\"create_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:11:\"update_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:11:\"delete_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:24;s:1:\"b\";s:15:\"delete_any_role\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:25;s:1:\"b\";s:10:\"view_skill\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:14:\"view_any_skill\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:12:\"create_skill\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:28;s:1:\"b\";s:12:\"update_skill\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:28;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:12:\"delete_skill\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:29;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:16:\"delete_any_skill\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:30;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:15:\"view_technology\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:31;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:19:\"view_any_technology\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:32;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:17:\"create_technology\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:33;a:4:{s:1:\"a\";i:34;s:1:\"b\";s:17:\"update_technology\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:34;a:4:{s:1:\"a\";i:35;s:1:\"b\";s:17:\"delete_technology\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:35;a:4:{s:1:\"a\";i:36;s:1:\"b\";s:21:\"delete_any_technology\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:36;a:4:{s:1:\"a\";i:37;s:1:\"b\";s:9:\"view_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:37;a:4:{s:1:\"a\";i:38;s:1:\"b\";s:13:\"view_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:38;a:4:{s:1:\"a\";i:39;s:1:\"b\";s:11:\"create_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:39;a:4:{s:1:\"a\";i:40;s:1:\"b\";s:11:\"update_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:40;a:4:{s:1:\"a\";i:41;s:1:\"b\";s:11:\"delete_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:41;a:4:{s:1:\"a\";i:42;s:1:\"b\";s:15:\"delete_any_user\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:42;a:4:{s:1:\"a\";i:43;s:1:\"b\";s:21:\"widget_OverlookWidget\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:43;a:4:{s:1:\"a\";i:44;s:1:\"b\";s:23:\"widget_LatestAccessLogs\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:1:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:11:\"super_admin\";s:1:\"c\";s:3:\"web\";}}}',1781695650);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES
(1,'0001_01_01_000000_create_users_table',1),
(2,'0001_01_01_000001_create_cache_table',1),
(3,'0001_01_01_000002_create_jobs_table',1),
(4,'2025_04_12_082932_create_permission_tables',1),
(5,'2025_04_12_083218_create_activity_log_table',1),
(6,'2025_04_12_083219_add_event_column_to_activity_log_table',1),
(7,'2025_04_12_083220_add_batch_uuid_column_to_activity_log_table',1),
(8,'2025_04_12_083341_add_themes_settings_to_users_table',1),
(9,'2026_06_04_143726_create_projects_table',1),
(10,'2026_06_04_143743_create_skills_table',1),
(11,'2026_06_04_143755_create_technologies_table',1),
(12,'2026_06_04_145550_create_portfolios_table',1),
(13,'2026_06_11_000000_add_fields_to_portfolios_table',1),
(14,'2026_06_16_180846_add_image_to_projects_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES
(1,'App\\Models\\User',1),
(2,'App\\Models\\User',2);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES
(1,'view_activity','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(2,'view_any_activity','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(3,'create_activity','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(4,'update_activity','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(5,'delete_activity','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(6,'delete_any_activity','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(7,'view_portfolio','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(8,'view_any_portfolio','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(9,'create_portfolio','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(10,'update_portfolio','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(11,'delete_portfolio','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(12,'delete_any_portfolio','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(13,'view_project','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(14,'view_any_project','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(15,'create_project','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(16,'update_project','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(17,'delete_project','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(18,'delete_any_project','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(19,'view_role','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(20,'view_any_role','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(21,'create_role','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(22,'update_role','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(23,'delete_role','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(24,'delete_any_role','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(25,'view_skill','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(26,'view_any_skill','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(27,'create_skill','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(28,'update_skill','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(29,'delete_skill','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(30,'delete_any_skill','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(31,'view_technology','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(32,'view_any_technology','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(33,'create_technology','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(34,'update_technology','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(35,'delete_technology','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(36,'delete_any_technology','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(37,'view_user','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(38,'view_any_user','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(39,'create_user','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(40,'update_user','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(41,'delete_user','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(42,'delete_any_user','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(43,'widget_OverlookWidget','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(44,'widget_LatestAccessLogs','web','2026-06-16 18:26:31','2026-06-16 18:26:31');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `portfolios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `projects` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`projects`)),
  `skills` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`skills`)),
  `technologies` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`technologies`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portfolios`
--

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;
INSERT INTO `portfolios` VALUES
(1,'Andika Nur Hidayat','Mahasiswa MNC University','Saya adalah mahasiswa Ilmu Komputer yang memiliki minat pada pengembangan aplikasi web dan teknologi digital. Saat ini saya aktif mempelajari Laravel, Filament, Livewire, Docker, dan manajemen basis data. Saya senang membangun solusi berbasis web yang tidak hanya berfungsi dengan baik tetapi juga memberikan pengalaman pengguna yang nyaman.','portfolio/01KV85TRBBZWBDJPVSB2FZBPFA.jpeg','dikanurhidayat584@gmail.com',NULL,NULL,NULL,NULL,NULL,'2026-06-16 19:17:10','2026-06-16 19:52:17');
/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES
(1,'Portfolio Website','tes','projects/01KV85YN2E44KZWX4NXCH1WSSY.png',1,'2026-06-16 19:19:28','2026-06-16 19:19:28',NULL),
(2,'Membuat Rawa Rontek','erere','projects/01KV85Z7RWPVY7DPFGVGK2X4P2.png',1,'2026-06-16 19:19:48','2026-06-16 19:19:48',NULL),
(3,'asas','as','projects/01KV86GDFVPG331GA9Q9JD5X7H.png',3,'2026-06-16 19:29:11','2026-06-16 19:29:11',NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1),
(8,1),
(9,1),
(10,1),
(11,1),
(12,1),
(13,1),
(14,1),
(15,1),
(16,1),
(17,1),
(18,1),
(19,1),
(20,1),
(21,1),
(22,1),
(23,1),
(24,1),
(25,1),
(26,1),
(27,1),
(28,1),
(29,1),
(30,1),
(31,1),
(32,1),
(33,1),
(34,1),
(35,1),
(36,1),
(37,1),
(38,1),
(39,1),
(40,1),
(41,1),
(42,1),
(43,1),
(44,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'super_admin','web','2026-06-16 18:26:30','2026-06-16 18:26:30'),
(2,'user','web','2026-06-16 18:26:31','2026-06-16 18:26:31');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES
('1jS2qvTvO09pIYNh098tPbr0ZkL8CaRNR2Fzecsl',1,'172.18.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','ZXlKcGRpSTZJbnAwV2tsS2EwRmFhWE5MYjJ0MVRFSjFXWFpoTkVFOVBTSXNJblpoYkhWbElqb2lSbE4xUW1Vd01FRnVVMDQxUmtrMVFWZzNVak4zUW1WMFJHbGpWMHREUjNrd0sxRllZM05JTUM4NWFVMVNSRXBRUW01Wk1tRkdha05XYTNoVlVIUkdkV0Y0VGs1TlZGUnVXVFpSYm5JMVpISmhaekp0ZDBWTllXVkdVQzlvY0c4d01XMU1RVEE1U0U5eFZXWnhSazQwWm5walZEWkRhbkI0TVVvNFkyOUdWVEZSZFhsNE9HeHhPVEJUTlZSQ1RWZEphVE0xYmxwbWIyWnJhbVJEU0dKQmJWaGFOMVYxVnpsalFXUktRMGhEV25KT1MwOUljVWc0Tm5KVGJrRm1WekV6WVZsMVVrNVFSMFpFVWxGVVFUUnpXaXN6VmpSVFMwY3dVM2dyU1d0bU1raGxXbWR5ZEhwVFJUVldWMVl3Tkc1UE1FRmplQ3RvZVhoUlpuTm9SSGMyTXpoS1VqWjRTR000VWpkVFFsWnlLMFV6ZUZkalkwdFZhRFJVY0hKRlRVVjRRVVYyVFVwaWFqQlBTV05WTlhoU2JHdFVaVW8xVFhBM0wxcFBkV296Tm5sWVN6WnFWMFZoT0RaMFRXeFlLMGhwYkVSSVdWaFRXazV0Y0RGUFFWbGxUM0IyVEVaMFJuQnNVM0JCZEZSVlNreENRbWROYkRsd1kwMVRRVzV0V25OTlMxQjVWMDlqT0hGcFRGQkJOa1JUZEdsaVdWZFlXRmRUWWpGUGFuVlFiamx0TDAxV2RqTkpMekpzZFRsSFNUZFpjalJYWVRJMVptbGFaVFp2TDJ0eGRFaE9kREkwV1VoaGFHeHVURzVNZFN0UmVHVTBlVVk1VlVWMFVTdFhiSE42V1RWcFNYQTJSalZFYUVOR1NUSjZRVk5yVUVSTVpVUm5lR3RuU21KUWFpc2lMQ0p0WVdNaU9pSmtPRFUzTVRrMk9XSXhaalUwTWpSa05UWmhaalZrTVRVNE9XRTRZek01Tm1SbFlXWTBaRGM1Tm1Sa05XSmpZMkkxWVRaaU1UY3hOVGt6TnpKaU5qZ3pJaXdpZEdGbklqb2lJbjA9',1781614356),
('iTyayy8qGkdcB1E0xvfoqNHOy2u6uWMesPYVZ0nK',1,'172.18.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36','ZXlKcGRpSTZJazlXZURCak5sZEtaMnhIZFROak5WbG1VbTF5YW1jOVBTSXNJblpoYkhWbElqb2llVTAzVjBKQmVFSXpWblJQVkRJMVFrbDJTamxGUmxCc1puUk9TRU5OZVdGWUsyWlNaeXRQVm1kM1dWcEhNVkJpT1cxbE1tUlhNMU4xU1ZsT2FubE1jME5GVDBKMVFXNW5TMmh0WldvMmNFdFhiSGhKUlc1Wk5rTnNWVkJ4U1ZKTVkwRlRRbGM1U1hSbE5YTTJNM1JoWTNKbmVFeGxUazA0ZVhWeVZVRXlPVGhtYVdsNGJEVllibmxCTkRKRGNYSTVhblZ2ZG0xV00xcDRZV1ZTWjI0elVFcDJVR1JMU2tOdFNWbGlaalJ4WjFWeVpUWjFiRkIxU0hwMloyaHJLMGQ0TW1SRldtdFZURzk2Vm5SV1RqbFpiSE5KUTJOVFJtOHpkWFZ3WTA1UFNUTXpNSGt2WmtnNFRHaEVaMmgxTW1aM1VtcHhXbGgyTVhCV1NEVlNiRWN3YjBsNWNGZFZaSEpCUW5sVGJHeHVaMGc0YTNoM1pFNVFVblJvUkV0MFRISjJaVEJMYjIxdlJHdzJPVFJwUWl0UlJUWnpXRTloTVZwVldFTnRabVFyT1ZaUFVFZDZNelZ3T1VsbmFUWXZNVFpKWW5OcGFEWm1kRFZvWjA1MWVXWkxLelZ0Ym5wemRuRm1iekJsYVdWbVVqYzNSbkJqYUZFdmJsUlpaRGhVTkdkc1VpdG9UVEJuUlhsNU9EVXplSEIyWkM5WFpIQXJaR0pCVDNobE1rMUViblZPWmpKeGFGTkdVWE4zVFdSWVExUkZTMnhNVUdGeFZVZFRaRTFwYlVSaGNtODJhR1kwYWt0NlZGbHdaVk01UjNZdlIyaHZNaThyY0VoR01HUndUMkpJTW0xcVNtNUdiR0ZvTlhGRlpHbE5RM0pWZEZreWVHdDZjM056UkdaYU16VWlMQ0p0WVdNaU9pSTJaR1l5Tm1ReVltSXpaVEpsWkRkak5EWXpNMk16TVRnME1XTmtOVEF3Tm1VelpEYzRZbU0wWkRBMVkyVTBZalJpTmpoak1EVm1ZV0prTnpBeU1qTmtJaXdpZEdGbklqb2lJbjA9',1781609253);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `skills` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `percentage` int(11) NOT NULL,
  `level` enum('Beginner','Intermediate','Advanced') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES
(1,'Laravel',50,'Beginner','2026-06-16 19:49:13','2026-06-16 19:49:13'),
(2,'Andika Nur Hidayat',79,'Intermediate','2026-06-16 19:49:57','2026-06-16 19:49:57'),
(3,'php',100,'Intermediate','2026-06-16 19:50:10','2026-06-16 19:50:10');
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technologies`
--

DROP TABLE IF EXISTS `technologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `technologies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technologies`
--

LOCK TABLES `technologies` WRITE;
/*!40000 ALTER TABLE `technologies` DISABLE KEYS */;
INSERT INTO `technologies` VALUES
(1,'Docker','2026-06-16 19:49:29','2026-06-16 19:49:29'),
(2,'php','2026-06-16 19:49:41','2026-06-16 19:49:41'),
(3,'Laravel','2026-06-16 19:49:45','2026-06-16 19:49:45');
/*!40000 ALTER TABLE `technologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `avatar_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `theme` varchar(255) DEFAULT 'sunset',
  `theme_color` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,NULL,'Super Admin','admin@admin.com',NULL,'$2y$12$u8caaWvw9afebtc83X0CheYsOmvBu7nBsH8ZpKM5dCZNWYV9SZMmq',NULL,'2026-06-16 18:26:31','2026-06-16 18:26:31','sunset',NULL),
(2,NULL,'User Account','user@admin.com',NULL,'$2y$12$L4D4Yz2USoLqqgbEq.mzx.BV5G5YwKNH/8F3ckcIyjfTrldZvO.wa',NULL,'2026-06-16 18:26:31','2026-06-16 18:26:31','sunset',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-16 12:57:05
