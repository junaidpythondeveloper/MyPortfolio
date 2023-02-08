-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 02:08 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myportfiliocomment`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add message', 7, 'add_message'),
(26, 'Can change message', 7, 'change_message'),
(27, 'Can delete message', 7, 'delete_message'),
(28, 'Can view message', 7, 'view_message'),
(29, 'Can add lastnews', 8, 'add_lastnews'),
(30, 'Can change lastnews', 8, 'change_lastnews'),
(31, 'Can delete lastnews', 8, 'delete_lastnews'),
(32, 'Can view lastnews', 8, 'view_lastnews'),
(33, 'Can add ip model', 9, 'add_ipmodel'),
(34, 'Can change ip model', 9, 'change_ipmodel'),
(35, 'Can delete ip model', 9, 'delete_ipmodel'),
(36, 'Can view ip model', 9, 'view_ipmodel'),
(37, 'Can add hire', 10, 'add_hire'),
(38, 'Can change hire', 10, 'change_hire'),
(39, 'Can delete hire', 10, 'delete_hire'),
(40, 'Can view hire', 10, 'view_hire'),
(41, 'Can add category', 11, 'add_category'),
(42, 'Can change category', 11, 'change_category'),
(43, 'Can delete category', 11, 'delete_category'),
(44, 'Can view category', 11, 'view_category'),
(45, 'Can add web', 12, 'add_web'),
(46, 'Can change web', 12, 'change_web'),
(47, 'Can delete web', 12, 'delete_web'),
(48, 'Can view web', 12, 'view_web'),
(49, 'Can add chat bot', 13, 'add_chatbot'),
(50, 'Can change chat bot', 13, 'change_chatbot'),
(51, 'Can delete chat bot', 13, 'delete_chatbot'),
(52, 'Can view chat bot', 13, 'view_chatbot'),
(53, 'Can add data analysis', 14, 'add_dataanalysis'),
(54, 'Can change data analysis', 14, 'change_dataanalysis'),
(55, 'Can delete data analysis', 14, 'delete_dataanalysis'),
(56, 'Can view data analysis', 14, 'view_dataanalysis'),
(57, 'Can add personal cv', 15, 'add_personalcv'),
(58, 'Can change personal cv', 15, 'change_personalcv'),
(59, 'Can delete personal cv', 15, 'delete_personalcv'),
(60, 'Can view personal cv', 15, 'view_personalcv');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$mTxY7T5oKPkQQfUjSgWyfO$URZpQzXDrSqYWYNRP4BwnltPHNwWFriLAHkEXhdksGk=', '2023-02-05 15:52:06.000000', 1, 'Mr.Junaid', '', '', 'junaid.sharif104@gmail.com', 1, 1, '2023-02-02 15:25:56.000000'),
(2, 'pbkdf2_sha256$390000$w6z25FvOizJc8Uv8DbxrXd$jisUCiXcGwlbcGISgSiE7eq61/0Qcn/iw91Zjaf3Zvc=', NULL, 0, 'Junaid', '', '', '', 0, 1, '2023-02-05 15:42:44.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(37, 1, 1),
(38, 1, 2),
(39, 1, 3),
(40, 1, 4),
(41, 1, 5),
(42, 1, 6),
(43, 1, 7),
(44, 1, 8),
(45, 1, 9),
(46, 1, 10),
(47, 1, 11),
(48, 1, 12),
(49, 1, 13),
(50, 1, 14),
(51, 1, 15),
(52, 1, 16),
(53, 1, 17),
(54, 1, 18),
(55, 1, 19),
(56, 1, 20),
(57, 1, 21),
(58, 1, 22),
(59, 1, 23),
(60, 1, 24),
(61, 1, 25),
(62, 1, 26),
(63, 1, 27),
(64, 1, 28),
(65, 1, 29),
(66, 1, 30),
(67, 1, 31),
(68, 1, 32),
(69, 1, 33),
(70, 1, 34),
(71, 1, 35),
(72, 1, 36),
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 2, 34),
(35, 2, 35),
(36, 2, 36);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-02-02 18:12:13.571434', '1', 'Lastnews object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-02-03 10:59:02.285722', '1', 'Lastnews object (1)', 2, '[{\"changed\": {\"fields\": [\"News desc\"]}}]', 8, 1),
(3, '2023-02-03 12:47:07.778855', '1', 'Lastnews object (1)', 2, '[{\"changed\": {\"fields\": [\"News image\"]}}]', 8, 1),
(4, '2023-02-03 12:48:26.133013', '1', 'Lastnews object (1)', 2, '[{\"changed\": {\"fields\": [\"News image\"]}}]', 8, 1),
(5, '2023-02-03 12:48:59.577912', '2', 'Lastnews object (2)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-02-03 17:35:33.303211', '3', 'Lastnews object (3)', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-02-03 17:37:45.106515', '3', 'Lastnews object (3)', 2, '[{\"changed\": {\"fields\": [\"News image\"]}}]', 8, 1),
(8, '2023-02-04 09:30:41.132410', '2', 'Lastnews object (2)', 3, '', 8, 1),
(9, '2023-02-04 09:30:41.152540', '1', 'Lastnews object (1)', 3, '', 8, 1),
(10, '2023-02-05 06:38:48.019770', '1', 'http://127.0.0.1', 1, '[{\"added\": {}}]', 9, 1),
(11, '2023-02-05 13:12:55.680696', '3', 'YouTube Data API v3 Project', 2, '[{\"changed\": {\"fields\": [\"Video\"]}}]', 8, 1),
(12, '2023-02-05 15:42:44.705252', '2', 'Junaid', 1, '[{\"added\": {}}]', 4, 1),
(13, '2023-02-05 15:44:51.653604', '2', 'Mr.Junaid', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(14, '2023-02-05 15:45:38.134463', '2', 'Mr.Junaid', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1),
(15, '2023-02-05 15:49:49.549870', '2', 'Mr.Junaid', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 4, 1),
(16, '2023-02-05 15:53:37.876388', '2', 'Junaid', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 4, 1),
(17, '2023-02-05 15:53:55.105774', '1', 'Mr.Junaid', 2, '[{\"changed\": {\"fields\": [\"Username\", \"User permissions\"]}}]', 4, 1),
(18, '2023-02-05 16:00:51.759086', '3', 'YouTube Data API v3 Project', 2, '[{\"changed\": {\"fields\": [\"News image1\", \"News image2\"]}}]', 8, 1),
(19, '2023-02-06 14:17:16.318489', '3', 'YouTube Data API v3 Project', 3, '', 8, 1),
(20, '2023-02-06 14:27:48.031436', '4', 'YouTube Data API', 1, '[{\"added\": {}}]', 8, 1),
(21, '2023-02-06 17:55:46.998057', '1', 'Category object (1)', 1, '[{\"added\": {}}]', 11, 1),
(22, '2023-02-06 17:55:58.917832', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 11, 1),
(23, '2023-02-06 18:04:50.270444', '4', 'YouTube Data API', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 8, 1),
(24, '2023-02-07 07:14:24.812209', '5', 'Google', 1, '[{\"added\": {}}]', 8, 1),
(25, '2023-02-07 08:09:45.194396', '1', 'Web object (1)', 1, '[{\"added\": {}}]', 12, 1),
(26, '2023-02-07 09:50:54.415280', '1', 'Web object (1)', 2, '[{\"changed\": {\"fields\": [\"Img1\"]}}]', 12, 1),
(27, '2023-02-07 10:25:23.211234', '1', 'Web object (1)', 2, '[{\"changed\": {\"fields\": [\"Img1\"]}}]', 12, 1),
(28, '2023-02-07 12:26:30.852562', '1', 'Web object (1)', 2, '[{\"changed\": {\"fields\": [\"Img2\", \"Img3\"]}}]', 12, 1),
(29, '2023-02-07 12:27:51.783052', '1', 'Web object (1)', 2, '[{\"changed\": {\"fields\": [\"Img4\"]}}]', 12, 1),
(30, '2023-02-07 12:33:38.855924', '1', 'Web object (1)', 2, '[{\"changed\": {\"fields\": [\"Img1\"]}}]', 12, 1),
(31, '2023-02-07 12:59:16.386093', '1', 'Web object (1)', 2, '[{\"changed\": {\"fields\": [\"Img4\"]}}]', 12, 1),
(32, '2023-02-07 13:39:36.934253', '1', 'Web object (1)', 2, '[{\"changed\": {\"fields\": [\"Img3\", \"Img4\", \"Img5\"]}}]', 12, 1),
(33, '2023-02-07 15:31:00.837487', '1', 'Web object (1)', 2, '[{\"changed\": {\"fields\": [\"Img6\", \"Img7\", \"Img8\"]}}]', 12, 1),
(34, '2023-02-07 15:46:11.918290', '1', 'ChatBOT object (1)', 1, '[{\"added\": {}}]', 13, 1),
(35, '2023-02-07 16:14:36.556383', '1', 'DataAnalysis object (1)', 1, '[{\"added\": {}}]', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'home', 'category'),
(13, 'home', 'chatbot'),
(14, 'home', 'dataanalysis'),
(10, 'home', 'hire'),
(9, 'home', 'ipmodel'),
(8, 'home', 'lastnews'),
(7, 'home', 'message'),
(15, 'home', 'personalcv'),
(12, 'home', 'web'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-30 15:39:32.322557'),
(2, 'auth', '0001_initial', '2023-01-30 15:39:32.999822'),
(3, 'admin', '0001_initial', '2023-01-30 15:39:33.220288'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-30 15:39:33.283951'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-30 15:39:33.299928'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-30 15:39:33.419957'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-30 15:39:33.507978'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-30 15:39:33.539986'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-30 15:39:33.563990'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-30 15:39:33.636009'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-30 15:39:33.644014'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-30 15:39:33.668018'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-30 15:39:33.700028'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-30 15:39:33.740039'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-30 15:39:33.780046'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-30 15:39:33.804056'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-30 15:39:33.852064'),
(18, 'home', '0001_initial', '2023-01-30 15:39:33.900079'),
(19, 'sessions', '0001_initial', '2023-01-30 15:39:33.964092'),
(20, 'home', '0002_lastnews', '2023-02-02 15:49:35.703481'),
(21, 'home', '0003_lastnews_title', '2023-02-02 17:45:22.017765'),
(22, 'home', '0004_alter_lastnews_news_image', '2023-02-02 18:08:16.964659'),
(23, 'home', '0005_lastnews_news_desc_alter_lastnews_news_image', '2023-02-03 10:57:19.120486'),
(24, 'home', '0006_ipmodel_lastnews_likes', '2023-02-04 18:04:17.344499'),
(25, 'home', '0007_lastnews_video', '2023-02-05 13:11:29.002397'),
(26, 'home', '0008_lastnews_author', '2023-02-05 15:39:03.874056'),
(27, 'home', '0009_rename_author_lastnews_authors', '2023-02-05 15:39:10.225807'),
(28, 'home', '0010_lastnews_news_image1_lastnews_news_image2', '2023-02-05 15:58:26.525163'),
(29, 'home', '0011_alter_lastnews_news_desc', '2023-02-06 14:14:54.795063'),
(30, 'home', '0011_hire', '2023-02-06 15:06:31.516696'),
(31, 'home', '0012_lastnews_post_data', '2023-02-06 17:03:22.662022'),
(32, 'home', '0013_category_lastnews_category', '2023-02-06 17:55:16.273414'),
(33, 'home', '0014_web', '2023-02-07 07:58:14.898776'),
(34, 'home', '0015_chatbot_dataanalysis', '2023-02-07 15:45:13.485156'),
(35, 'home', '0016_personalcv', '2023-02-08 11:00:17.231752');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hlw0ew8h2ql31cbu5mrvkjue94ggeuys', '.eJxVjMsOwiAQRf-FtSFDy_Bw6d5vIANMpWogKe3K-O_apAvd3nPOfYlA21rC1nkJcxZnocTpd4uUHlx3kO9Ub02mVtdljnJX5EG7vLbMz8vh_h0U6uVbayREmjKrMRGD5cGQR9A4WmPBJ5o8OedBg4PoYdDRakaTOWNEp4x4fwDY2DdJ:1pOhJG:kF45vOPWojBlULXf_pr84S_XCoc4GuEdUgA6zX50Th4', '2023-02-19 15:52:06.505762');

-- --------------------------------------------------------

--
-- Table structure for table `home_category`
--

CREATE TABLE `home_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_category`
--

INSERT INTO `home_category` (`id`, `name`) VALUES
(1, 'Web'),
(2, 'BoT');

-- --------------------------------------------------------

--
-- Table structure for table `home_chatbot`
--

CREATE TABLE `home_chatbot` (
  `id` bigint(20) NOT NULL,
  `img1` varchar(250) DEFAULT NULL,
  `img2` varchar(250) DEFAULT NULL,
  `img3` varchar(250) DEFAULT NULL,
  `img4` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_chatbot`
--

INSERT INTO `home_chatbot` (`id`, `img1`, `img2`, `img3`, `img4`) VALUES
(1, 'news/bot.jpg', 'news/bot1.jpg', 'news/bot2.gif', 'news/whatsappbot.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `home_dataanalysis`
--

CREATE TABLE `home_dataanalysis` (
  `id` bigint(20) NOT NULL,
  `img1` varchar(250) DEFAULT NULL,
  `img2` varchar(250) DEFAULT NULL,
  `img3` varchar(250) DEFAULT NULL,
  `img4` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_dataanalysis`
--

INSERT INTO `home_dataanalysis` (`id`, `img1`, `img2`, `img3`, `img4`) VALUES
(1, 'news/Covid19.jpg', 'news/CovidTracker.png', 'news/Bitcoin.jfif', 'news/MIKE.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `home_hire`
--

CREATE TABLE `home_hire` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(254) NOT NULL,
  `whatsapp` varchar(70) NOT NULL,
  `Requirement` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_hire`
--

INSERT INTO `home_hire` (`id`, `name`, `email`, `whatsapp`, `Requirement`) VALUES
(1, 'junaid', 'junaid.sharif@gmail.com', '0311', '<p>Welcome Dear!</p>');

-- --------------------------------------------------------

--
-- Table structure for table `home_ipmodel`
--

CREATE TABLE `home_ipmodel` (
  `id` bigint(20) NOT NULL,
  `ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_ipmodel`
--

INSERT INTO `home_ipmodel` (`id`, `ip`) VALUES
(2, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `home_lastnews`
--

CREATE TABLE `home_lastnews` (
  `id` bigint(20) NOT NULL,
  `news_image` varchar(250) DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `news_desc` longtext DEFAULT NULL,
  `video` varchar(250) DEFAULT NULL,
  `authors_id` int(11) NOT NULL,
  `news_image1` varchar(250) DEFAULT NULL,
  `news_image2` varchar(250) DEFAULT NULL,
  `post_data` date NOT NULL,
  `category` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_lastnews`
--

INSERT INTO `home_lastnews` (`id`, `news_image`, `title`, `news_desc`, `video`, `authors_id`, `news_image1`, `news_image2`, `post_data`, `category`) VALUES
(4, 'news/WhatsApp_Image_2023-01-15_at_9.03.56_PM_6Kx449r.jpeg', 'YouTube Data API', '<h1>Hello Vistor</h1>', 'news/WhatsApp_Video_2023-01-15_at_12.17.09_AM_7ovVwOw.mp4', 1, 'news/WhatsApp_Image_2022-12-26_at_4.51.42_PM.jpeg', 'news/pexels-ekrulila-3837464.jpg', '2023-02-06', 'Web'),
(5, 'news/Screenshot_4.png', 'Google', '<h1>HI</h1>', 'news/2023-01-13_21-52-40.mkv', 1, 'news/Screenshot_3.png', 'news/Screenshot_61.png', '2023-02-07', 'Web');

-- --------------------------------------------------------

--
-- Table structure for table `home_lastnews_likes`
--

CREATE TABLE `home_lastnews_likes` (
  `id` bigint(20) NOT NULL,
  `lastnews_id` bigint(20) NOT NULL,
  `ipmodel_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_lastnews_likes`
--

INSERT INTO `home_lastnews_likes` (`id`, `lastnews_id`, `ipmodel_id`) VALUES
(41, 4, 2),
(42, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `home_message`
--

CREATE TABLE `home_message` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Comment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_message`
--

INSERT INTO `home_message` (`id`, `name`, `Email`, `Comment`) VALUES
(1, 'junaid', 'junaid.sharif@gamil.com', 'Greet'),
(2, 'Nasir', 'muhammadNasir@gmail.com', 'Greet JOB'),
(3, 'Fasial', 'junaid.sharif@gamil.com', 'Hello'),
(4, 'Fasial', 'junaid.sharif@gamil.com', 'Hello'),
(5, 'Fasial', 'junaid.sharif@gamil.com', 'Hello'),
(6, 'Fasial', 'junaid.sharif@gamil.com', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `home_personalcv`
--

CREATE TABLE `home_personalcv` (
  `id` bigint(20) NOT NULL,
  `cv` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_web`
--

CREATE TABLE `home_web` (
  `id` bigint(20) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `img4` varchar(100) NOT NULL,
  `img5` varchar(100) NOT NULL,
  `img6` varchar(100) NOT NULL,
  `img7` varchar(100) NOT NULL,
  `img8` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_web`
--

INSERT INTO `home_web` (`id`, `img1`, `img2`, `img3`, `img4`, `img5`, `img6`, `img7`, `img8`) VALUES
(1, 'news/FreshFood_5YRhCDf.gif', 'news/coffe.gif', 'news/MutiShop.gif', 'news/scorilo_8nTCmD0.gif', 'news/googlenews.gif', 'news/Cake.gif', 'news/Eflyer.gif', 'news/jewellery.gif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_category`
--
ALTER TABLE `home_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_chatbot`
--
ALTER TABLE `home_chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_dataanalysis`
--
ALTER TABLE `home_dataanalysis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_hire`
--
ALTER TABLE `home_hire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_ipmodel`
--
ALTER TABLE `home_ipmodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_lastnews`
--
ALTER TABLE `home_lastnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_lastnews_authors_id_349359ca_fk_auth_user_id` (`authors_id`);

--
-- Indexes for table `home_lastnews_likes`
--
ALTER TABLE `home_lastnews_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_lastnews_likes_lastnews_id_ipmodel_id_4aead83a_uniq` (`lastnews_id`,`ipmodel_id`),
  ADD KEY `home_lastnews_likes_ipmodel_id_4436181b_fk_home_ipmodel_id` (`ipmodel_id`);

--
-- Indexes for table `home_message`
--
ALTER TABLE `home_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_personalcv`
--
ALTER TABLE `home_personalcv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_web`
--
ALTER TABLE `home_web`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `home_category`
--
ALTER TABLE `home_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_chatbot`
--
ALTER TABLE `home_chatbot`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_dataanalysis`
--
ALTER TABLE `home_dataanalysis`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_hire`
--
ALTER TABLE `home_hire`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_ipmodel`
--
ALTER TABLE `home_ipmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_lastnews`
--
ALTER TABLE `home_lastnews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_lastnews_likes`
--
ALTER TABLE `home_lastnews_likes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `home_message`
--
ALTER TABLE `home_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_personalcv`
--
ALTER TABLE `home_personalcv`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_web`
--
ALTER TABLE `home_web`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_lastnews`
--
ALTER TABLE `home_lastnews`
  ADD CONSTRAINT `home_lastnews_authors_id_349359ca_fk_auth_user_id` FOREIGN KEY (`authors_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `home_lastnews_likes`
--
ALTER TABLE `home_lastnews_likes`
  ADD CONSTRAINT `home_lastnews_likes_ipmodel_id_4436181b_fk_home_ipmodel_id` FOREIGN KEY (`ipmodel_id`) REFERENCES `home_ipmodel` (`id`),
  ADD CONSTRAINT `home_lastnews_likes_lastnews_id_0b29e8d1_fk_home_lastnews_id` FOREIGN KEY (`lastnews_id`) REFERENCES `home_lastnews` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
