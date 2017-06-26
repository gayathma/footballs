-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2017 at 11:31 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `v1football`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_actions`
--

CREATE TABLE IF NOT EXISTS `admin_actions` (
`id` int(10) unsigned NOT NULL,
  `controller_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inherit` int(11) NOT NULL DEFAULT '0',
  `edit_based` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_actions`
--

INSERT INTO `admin_actions` (`id`, `controller_id`, `action`, `inherit`, `edit_based`, `name`, `about`, `created_at`, `updated_at`) VALUES
(1, 1, 'index', -1, 0, 'Dashboard', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(2, 1, 'logs', -1, 0, 'View Admin Logs', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(3, 1, 'your-requests', -1, 0, 'View publish requests', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(4, 1, 'requests', -1, 0, 'View requests to moderate', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(5, 2, 'index', 0, 0, 'Show Page Management', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(6, 2, 'sort', 0, 0, 'Sort Pages', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(7, 2, 'add', 0, 0, 'Add Pages', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(8, 2, 'edit', 0, 0, 'Edit Pages', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(9, 2, 'delete', 0, 0, 'Delete Pages', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(10, 2, 'version-publish', 0, 0, 'Publish Versions', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(11, 2, 'version-rename', 0, 1, 'Rename Versions', 'required to be logged is as author or have publishing permission', '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(12, 2, 'versions', 0, 1, 'Ajax Versions Table', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(13, 2, 'request-publish', 0, 1, 'Make Requests', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(14, 2, 'request-publish-action', 0, 1, 'Action Requests (cancel/approve/deny)', 'required to be logged in as author to cancel or else have publish permissions', '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(15, 2, 'requests', 0, 1, 'Ajax Requests Table', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(16, 2, 'tinymce-page-list', 5, 0, 'TinyMce Page Links', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(17, 3, 'pages', 5, 0, 'List Group Pages', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(18, 4, 'index', 0, 0, 'Show Menu Items', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(19, 4, 'sort', 0, 0, 'Sort Menu Items', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(20, 4, 'add', 0, 0, 'Add Menu Items', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(21, 4, 'delete', 0, 0, 'Delete Menu Items', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(22, 4, 'rename', 0, 0, 'Rename Menu Items', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(23, 4, 'get-levels', 19, 0, 'Get Subpage Level', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(24, 4, 'save-levels', 22, 0, 'Set Subpage Level', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(25, 5, 'index', 0, 0, 'Edit Site-wide Content', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(26, 6, 'index', 0, 0, 'View Files', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(27, 6, 'edit', 0, 0, 'Manage Files', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(28, 7, 'index', 0, 0, 'View Redirects', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(29, 7, 'edit', 0, 0, 'Manage Redirects', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(30, 7, 'import', 29, 0, 'Import Redirects', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(31, 8, 'index', 0, 0, 'Show Account Settings', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(32, 8, 'password', 0, 0, 'Change Password', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(33, 8, 'blog', 0, 0, 'Auto Blog Login', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(34, 9, 'index', 0, 0, 'Show System Settings', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(35, 9, 'update', 0, 0, 'Updates System Settings', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(36, 9, 'search', 35, 0, 'Rebuild Search Indexes', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(37, 9, 'validate-db', 35, 0, 'Validate Database', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(38, 9, 'wp-login', 33, 0, 'WordPress Auto Login Script', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(39, 10, 'index', 0, 0, 'View User List', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(40, 10, 'edit', 0, 0, 'Edit Users', 'can edit roles of users (restricted by admin level)', '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(41, 10, 'add', 40, 0, 'Add Users', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(42, 10, 'delete', 40, 0, 'Remove Users', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(43, 11, 'index', 0, 0, 'Role Management', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(44, 11, 'add', 43, 0, 'Add Roles', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(45, 11, 'edit', 43, 0, 'Edit Roles', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(46, 11, 'delete', 43, 0, 'Delete Roles', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(47, 11, 'actions', 43, 0, 'Ajax Get Role Actions', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(48, 11, 'pages', 43, 0, 'Set Per Page Actions', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(49, 12, 'restore', 0, 0, 'Restore Deleted Item From Any User', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(50, 12, 'undo', -1, 0, 'Undo Own Actions', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(51, 13, 'index', -1, 0, 'Create Repeater Row', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(52, 14, 'list', 0, 1, 'Gallery List', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(53, 14, 'edit', 0, 1, 'Edit Galleries', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(54, 14, 'update', 0, 1, 'Run Gallery Upload Manager', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(55, 14, 'sort', 0, 1, 'Sort Images', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(56, 14, 'upload', 0, 1, 'Upload Images', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(57, 14, 'delete', 0, 1, 'Delete Images', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(58, 14, 'caption', 0, 1, 'Edit Captions', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(59, 15, 'list', 0, 1, 'Forms List', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(60, 15, 'submissions', 0, 1, 'View Form Submissions', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(61, 15, 'csv', 0, 1, 'Export Form Submissions', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(62, 16, 'index', 0, 0, 'Show Theme Management', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(63, 16, 'update', 0, 0, 'Theme Block Updater', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(64, 16, 'beacons', 0, 0, 'Import Beacons', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(65, 16, 'beacons-update', 0, 0, 'Update Beacon Blocks', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(66, 9, 'keys', -1, 0, 'Request browser API keys', 'only keys with the string browser in can be called', '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(67, 8, 'page-state', -1, 0, 'Save page list state', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(68, 8, 'language', -1, 0, 'Change current language', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(69, 9, 'upgrade', 0, 0, 'Upgrade CMS', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(70, 16, 'forms', 0, 0, 'Change Form Rules', NULL, '2017-04-06 02:10:37', '2017-04-06 02:10:37'),
(71, 16, 'selects', 0, 0, 'Change Select Block Options', NULL, '2017-04-06 02:10:37', '2017-04-06 02:10:37'),
(72, 16, 'manage', 0, 0, 'Add/Remove Themes', NULL, '2017-04-06 02:10:37', '2017-04-06 02:10:37'),
(73, 16, 'list', 62, 0, 'View Uploaded Themes', NULL, '2017-04-06 02:10:38', '2017-04-06 02:10:38'),
(74, 16, 'export', 0, 0, 'Export Uploaded Themes', NULL, '2017-04-06 02:10:38', '2017-04-06 02:10:38'),
(75, 2, 'version-schedule', 10, 0, 'Schedule Versions', NULL, '2017-04-06 02:10:39', '2017-04-06 02:10:39'),
(76, 17, 'index', -1, 0, 'View Search Log', NULL, '2017-04-06 02:10:40', '2017-04-06 02:10:40'),
(77, 16, 'edit', -1, 0, 'Edit Theme', NULL, '2017-04-06 02:10:40', '2017-04-06 02:10:40'),
(78, 8, 'name', -1, 0, 'Set Alias', NULL, '2017-04-06 02:10:40', '2017-04-06 02:10:40'),
(79, 3, 'edit', 0, 0, 'Edit Group Settings', NULL, '2017-04-06 02:10:40', '2017-04-06 02:10:40'),
(80, 18, 'index', -1, 0, 'Ajax Search', NULL, '2017-04-06 02:10:50', '2017-04-06 02:10:50'),
(81, 19, 'index', 0, 0, 'Show All Orders', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(82, 20, 'index', 0, 0, 'Show All Item Sizes', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(83, 21, 'index', 0, 0, 'Show All Products', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(84, 22, 'index', 0, 0, 'Show All Teams', NULL, '2017-04-06 02:10:25', '2017-04-06 02:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `admin_controllers`
--

CREATE TABLE IF NOT EXISTS `admin_controllers` (
`id` int(10) unsigned NOT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_order` int(11) NOT NULL,
  `role_section` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_controllers`
--

INSERT INTO `admin_controllers` (`id`, `controller`, `role_name`, `role_order`, `role_section`, `created_at`, `updated_at`) VALUES
(1, 'home', 'Dashboard', 1, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(2, 'pages', 'Pages', 1, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(3, 'groups', 'Groups', 1, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(4, 'menus', 'Menus', 2, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(5, 'blocks', 'Site-wide Content', 3, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(6, 'filemanager', 'Filemanager', 4, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(7, 'redirects', 'Redirects', 5, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(8, 'account', 'User Account', 1, 2, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(9, 'system', 'System Settings', 2, 2, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(10, 'users', 'Users', 1, 3, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(11, 'roles', 'Roles', 2, 3, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(12, 'backups', 'Backups', 3, 3, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(13, 'repeaters', 'Repeaters', 1, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(14, 'gallery', 'Galleries', 1, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(15, 'forms', 'Forms', 1, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(16, 'themes', 'Themes', 3, 2, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(17, 'search', 'Search log', 4, 3, '2017-04-06 02:10:40', '2017-04-06 02:10:40'),
(18, 'adminsearch', 'Admin Search', 0, 2, '2017-04-06 02:10:50', '2017-04-06 02:10:50'),
(19, 'orders', 'Orders', 1, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(20, 'sizes', 'Sizes', 1, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(21, 'products', 'Products', 1, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25'),
(22, 'teams', 'Teams', 1, 1, '2017-04-06 02:10:25', '2017-04-06 02:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `admin_logs`
--

CREATE TABLE IF NOT EXISTS `admin_logs` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `log` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_logs`
--

INSERT INTO `admin_logs` (`id`, `user_id`, `log`, `created_at`, `updated_at`) VALUES
(1, 1, 'Setup CMS', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(2, 1, 'Added page ''Home'' (Page ID 1)', '2017-04-06 02:14:54', '2017-04-06 02:14:54'),
(3, 1, 'System settings updated', '2017-04-23 23:36:27', '2017-04-23 23:36:27'),
(4, 1, 'Updated page ''Home'' (Page ID 1)', '2017-04-23 23:51:16', '2017-04-23 23:51:16'),
(5, 1, 'Updated page ''Home'' (Page ID 1)', '2017-04-24 00:45:35', '2017-04-24 00:45:35'),
(6, 1, 'Updated page ''Home'' (Page ID 1)', '2017-04-24 00:45:53', '2017-04-24 00:45:53'),
(7, 1, 'Updated page ''Home'' (Page ID 1)', '2017-04-24 01:17:05', '2017-04-24 01:17:05'),
(8, 1, 'Updated page ''Contact'' (Page ID 3)', '2017-04-24 01:34:54', '2017-04-24 01:34:54'),
(9, 1, 'Updated page ''Contact'' (Page ID 3)', '2017-04-24 01:37:51', '2017-04-24 01:37:51'),
(10, 1, 'Added page ''Editor'' (Page ID 6)', '2017-04-26 22:35:44', '2017-04-26 22:35:44'),
(11, 1, 'Menu Item ''About'' deleted from ''Main Menu''', '2017-04-28 02:59:43', '2017-04-28 02:59:43'),
(12, 1, 'Menu Item ''Contact'' deleted from ''Main Menu''', '2017-04-28 02:59:46', '2017-04-28 02:59:46'),
(13, 1, 'Menu Item ''Contact &raquo; Thank You'' added to ''Main Menu''', '2017-03-28 11:54:42', '2017-03-28 11:54:42'),
(14, 1, 'Menu Item ''Contact &raquo; Thank You'' deleted from ''Main Menu''', '2017-03-28 11:54:58', '2017-03-28 11:54:58'),
(15, 1, 'Menu Item ''Contact'' added to ''Main Menu''', '2017-03-28 11:55:10', '2017-03-28 11:55:10'),
(16, 1, 'Menu Item ''Contact'' deleted from ''Main Menu''', '2017-03-28 12:34:14', '2017-03-28 12:34:14'),
(17, 1, 'Order # ''3'' deleted', '2017-04-30 22:29:27', '2017-04-30 22:29:27'),
(18, 1, 'User ''puka@deka.com'' deleted', '2017-05-02 20:56:58', '2017-05-02 20:56:58'),
(19, 1, 'User ''puka@puka.com'' deleted', '2017-05-02 20:57:05', '2017-05-02 20:57:05'),
(20, 1, 'User ''asdsd@asdasd.com'' deleted', '2017-05-02 20:57:08', '2017-05-02 20:57:08'),
(21, 1, 'User ''chuta@gmail.com'' deleted', '2017-05-02 20:57:12', '2017-05-02 20:57:12'),
(22, 1, 'User ''asdsd@asdsad.com'' deleted', '2017-05-02 20:57:22', '2017-05-02 20:57:22'),
(23, 1, 'User ''sff@asdsd.dasdsad'' added', '2017-05-02 20:57:42', '2017-05-02 20:57:42'),
(24, 1, 'Menu Item ''Sitemap'' added to ''Main Menu''', '2017-05-02 23:07:52', '2017-05-02 23:07:52'),
(25, 1, 'Menu Item ''Sitemap'' deleted from ''Main Menu''', '2017-05-02 23:09:03', '2017-05-02 23:09:03'),
(26, 1, 'Added page ''Share'' (Page ID 7)', '2017-05-02 23:27:19', '2017-05-02 23:27:19'),
(27, 1, 'Updated page ''Share'' (Page ID 7)', '2017-05-02 23:56:05', '2017-05-02 23:56:05'),
(28, 1, 'Updated page ''Share'' (Page ID 7)', '2017-05-02 23:56:28', '2017-05-02 23:56:28'),
(29, 1, 'Updated page ''Share'' (Page ID 7)', '2017-05-03 00:18:17', '2017-05-03 00:18:17'),
(30, 1, 'Updated page ''Share'' (Page ID 7)', '2017-05-03 00:18:33', '2017-05-03 00:18:33'),
(31, 1, 'Added page ''PLEDGE A BALL'' (Page ID 8)', '2017-05-09 23:09:20', '2017-05-09 23:09:20'),
(32, 1, 'Updated page ''PLEDGE A BALL'' (Page ID 8)', '2017-05-09 23:14:34', '2017-05-09 23:14:34'),
(33, 1, 'Size ID ''5'' deleted', '2017-05-15 16:11:29', '2017-05-15 16:11:29'),
(34, 1, 'Size ID ''6'' deleted', '2017-05-15 16:38:50', '2017-05-15 16:38:50'),
(35, 1, 'Added page ''Our Story'' (Page ID 9)', '2017-05-19 23:14:50', '2017-05-19 23:14:50'),
(36, 1, 'Items re-ordered in menu ''Main Menu''', '2017-05-19 23:15:05', '2017-05-19 23:15:05'),
(37, 1, 'Renamed menu item ''Editor'' in ''Main Menu'' to Design', '2017-05-23 23:28:07', '2017-05-23 23:28:07'),
(38, 1, 'Updated page ''Design'' (Page ID 6)', '2017-05-23 23:30:35', '2017-05-23 23:30:35'),
(39, 1, 'Added page ''News'' (Page ID 10)', '2017-05-23 23:49:59', '2017-05-23 23:49:59'),
(40, 1, 'Added page ''News'' (Page ID 11)', '2017-05-24 22:16:49', '2017-05-24 22:16:49'),
(41, 1, 'Updated page ''News'' (Page ID 11)', '2017-05-24 22:18:20', '2017-05-24 22:18:20'),
(42, 1, 'Page ''News'' deleted (Page ID 11)', '2017-05-24 22:18:59', '2017-05-24 22:18:59'),
(43, 1, 'Updated page ''News'' (Page ID 10)', '2017-05-24 22:19:15', '2017-05-24 22:19:15'),
(44, 1, 'Updated page ''News'' (Page ID 10)', '2017-05-24 22:27:56', '2017-05-24 22:27:56'),
(45, 1, 'Updated page ''News'' (Page ID 10)', '2017-05-24 22:28:32', '2017-05-24 22:28:32'),
(46, 1, 'Added page ''Team'' (Page ID 12)', '2017-05-24 22:30:58', '2017-05-24 22:30:58'),
(47, 1, 'Added page ''Terms & Conditions'' (Page ID 13)', '2017-05-24 22:33:38', '2017-05-24 22:33:38'),
(48, 1, 'Added page ''Privacy'' (Page ID 14)', '2017-05-24 22:34:53', '2017-05-24 22:34:53'),
(49, 1, 'Added page ''Ideas'' (Page ID 15)', '2017-05-24 22:36:13', '2017-05-24 22:36:13'),
(50, 1, 'Updated page ''News'' (Page ID 10)', '2017-05-29 00:45:05', '2017-05-29 00:45:05'),
(51, 1, 'Added page ''faq'' (Page ID 16)', '2017-05-29 06:19:06', '2017-05-29 06:19:06'),
(52, 1, 'Updated page ''Team'' (Page ID 12)', '2017-05-29 06:34:39', '2017-05-29 06:34:39'),
(53, 1, 'Updated page ''Ideas'' (Page ID 15)', '2017-05-29 06:34:52', '2017-05-29 06:34:52'),
(54, 1, 'Updated page ''News'' (Page ID 10)', '2017-05-29 07:49:16', '2017-05-29 07:49:16'),
(55, 1, 'Updated page ''News'' (Page ID 10)', '2017-05-29 07:51:11', '2017-05-29 07:51:11'),
(56, 1, 'Updated page ''News'' (Page ID 10)', '2017-05-29 08:09:22', '2017-05-29 08:09:22'),
(57, 1, 'Updated page ''News'' (Page ID 10)', '2017-05-29 08:10:19', '2017-05-29 08:10:19'),
(58, 1, 'Updated page ''News'' (Page ID 10)', '2017-05-29 08:10:45', '2017-05-29 08:10:45'),
(59, 1, 'Updated page ''Team'' (Page ID 12)', '2017-06-25 07:49:18', '2017-06-25 07:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE IF NOT EXISTS `admin_menu` (
`id` int(10) unsigned NOT NULL,
  `action_id` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `action_id`, `parent`, `order`, `icon`, `item_name`, `item_desc`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 1, 'fa fa-home', 'Dashboard', '', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(2, 5, 0, 3, 'fa fa-file-text-o', 'Pages', '', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(3, 18, 0, 3, 'fa fa-bars', 'Menus', '', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(4, 25, 0, 4, 'fa fa-globe', 'Site-wide Content', '', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(5, 28, 0, 5, 'fa fa-exchange', 'Redirects', '', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(6, 26, 0, 6, 'fa fa-folder-open', 'File Manager', '', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(7, 39, 0, 7, 'fa fa-user', 'Users', '', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(8, 43, 0, 8, 'fa fa-bullhorn', 'Roles', '', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(9, 62, 0, 9, 'fa fa-tint', 'Theme', '', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(10, 64, 0, 9, 'fa fa-bluetooth-b', 'Beacons', '', '2017-04-06 02:10:26', '2017-04-06 02:10:26'),
(11, 81, 0, 2, 'fa fa-shopping-cart', 'Orders', NULL, NULL, NULL),
(14, 82, 0, 2, 'fa fa-th-large', 'Item Sizes', NULL, NULL, NULL),
(15, 83, 0, 2, 'fa fa-shopping-cart', 'Products', NULL, NULL, NULL),
(16, 84, 0, 2, 'fa fa-users', 'Teams', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE IF NOT EXISTS `backups` (
`id` int(10) unsigned NOT NULL,
  `log_id` int(11) NOT NULL,
  `primary_id` int(11) NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backups`
--

INSERT INTO `backups` (`id`, `log_id`, `primary_id`, `model`, `data`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 'CoasterCms\\Models\\MenuItem', 'O:26:"CoasterCms\\Models\\MenuItem":24:{s:8:"\0*\0table";s:10:"menu_items";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:2;s:7:"menu_id";i:1;s:7:"page_id";s:1:"2";s:5:"order";i:2;s:10:"sub_levels";i:0;s:11:"custom_name";s:0:"";s:10:"created_at";s:19:"2017-04-24 04:44:30";s:10:"updated_at";s:19:"2017-04-24 04:44:30";}s:11:"\0*\0original";a:8:{s:2:"id";i:2;s:7:"menu_id";i:1;s:7:"page_id";s:1:"2";s:5:"order";i:2;s:10:"sub_levels";i:0;s:11:"custom_name";s:0:"";s:10:"created_at";s:19:"2017-04-24 04:44:30";s:10:"updated_at";s:19:"2017-04-24 04:44:30";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:0;s:18:"wasRecentlyCreated";b:0;s:10:"\0*\0_logger";a:0:{}}', '2017-04-28 02:59:43', '2017-04-28 02:59:43'),
(2, 12, 4, 'CoasterCms\\Models\\MenuItem', 'O:26:"CoasterCms\\Models\\MenuItem":24:{s:8:"\0*\0table";s:10:"menu_items";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:4;s:7:"menu_id";i:1;s:7:"page_id";s:1:"3";s:5:"order";i:3;s:10:"sub_levels";i:0;s:11:"custom_name";s:0:"";s:10:"created_at";s:19:"2017-04-24 04:44:30";s:10:"updated_at";s:19:"2017-04-24 04:44:30";}s:11:"\0*\0original";a:8:{s:2:"id";i:4;s:7:"menu_id";i:1;s:7:"page_id";s:1:"3";s:5:"order";i:3;s:10:"sub_levels";i:0;s:11:"custom_name";s:0:"";s:10:"created_at";s:19:"2017-04-24 04:44:30";s:10:"updated_at";s:19:"2017-04-24 04:44:30";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:0;s:18:"wasRecentlyCreated";b:0;s:10:"\0*\0_logger";a:0:{}}', '2017-04-28 02:59:46', '2017-04-28 02:59:46'),
(3, 14, 8, 'CoasterCms\\Models\\MenuItem', 'O:26:"CoasterCms\\Models\\MenuItem":24:{s:8:"\0*\0table";s:10:"menu_items";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:8;s:7:"menu_id";i:1;s:7:"page_id";s:1:"5";s:5:"order";i:7;s:10:"sub_levels";i:0;s:11:"custom_name";N;s:10:"created_at";s:19:"2017-03-28 17:24:42";s:10:"updated_at";s:19:"2017-03-28 17:24:42";}s:11:"\0*\0original";a:8:{s:2:"id";i:8;s:7:"menu_id";i:1;s:7:"page_id";s:1:"5";s:5:"order";i:7;s:10:"sub_levels";i:0;s:11:"custom_name";N;s:10:"created_at";s:19:"2017-03-28 17:24:42";s:10:"updated_at";s:19:"2017-03-28 17:24:42";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:0;s:18:"wasRecentlyCreated";b:0;s:10:"\0*\0_logger";a:0:{}}', '2017-03-28 11:54:58', '2017-03-28 11:54:58'),
(4, 16, 9, 'CoasterCms\\Models\\MenuItem', 'O:26:"CoasterCms\\Models\\MenuItem":24:{s:8:"\0*\0table";s:10:"menu_items";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:9;s:7:"menu_id";i:1;s:7:"page_id";s:1:"3";s:5:"order";i:7;s:10:"sub_levels";i:0;s:11:"custom_name";N;s:10:"created_at";s:19:"2017-03-28 17:25:10";s:10:"updated_at";s:19:"2017-03-28 17:25:10";}s:11:"\0*\0original";a:8:{s:2:"id";i:9;s:7:"menu_id";i:1;s:7:"page_id";s:1:"3";s:5:"order";i:7;s:10:"sub_levels";i:0;s:11:"custom_name";N;s:10:"created_at";s:19:"2017-03-28 17:25:10";s:10:"updated_at";s:19:"2017-03-28 17:25:10";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:0;s:18:"wasRecentlyCreated";b:0;s:10:"\0*\0_logger";a:0:{}}', '2017-03-28 12:34:14', '2017-03-28 12:34:14'),
(5, 17, 3, '\\App\\Order', 'O:9:"App\\Order":24:{s:8:"\0*\0table";s:6:"orders";s:11:"\0*\0fillable";a:2:{i:0;s:7:"user_id";i:1;s:10:"statusCode";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:5:{s:2:"id";i:3;s:7:"user_id";i:1;s:10:"statusCode";s:7:"pending";s:10:"created_at";s:19:"2017-05-01 03:11:39";s:10:"updated_at";s:19:"2017-05-01 03:11:39";}s:11:"\0*\0original";a:5:{s:2:"id";i:3;s:7:"user_id";i:1;s:10:"statusCode";s:7:"pending";s:10:"created_at";s:19:"2017-05-01 03:11:39";s:10:"updated_at";s:19:"2017-05-01 03:11:39";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:60:"\0Amsgames\\LaravelShop\\Models\\ShopOrderModel\0shopCalculations";N;}', '2017-04-30 22:29:27', '2017-04-30 22:29:27'),
(6, 18, 8, '\\CoasterCms\\Models\\User', 'O:22:"CoasterCms\\Models\\User":24:{s:8:"\0*\0table";s:5:"users";s:9:"\0*\0hidden";a:2:{i:0;s:8:"password";i:1;s:14:"remember_token";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:14:{s:2:"id";i:8;s:6:"active";i:1;s:8:"password";s:60:"$2y$10$y9sFWBzo8ZYv7HkfoU3QpuEpsEYT6tW8YiOvA08VkrTXGU8AcDg4O";s:5:"email";s:13:"puka@deka.com";s:4:"name";s:4:"puka";s:18:"stripe_customer_id";N;s:7:"role_id";i:5;s:14:"remember_token";N;s:8:"tmp_code";N;s:16:"tmp_code_created";N;s:10:"blog_login";N;s:11:"page_states";N;s:10:"created_at";s:19:"2017-05-02 04:53:33";s:10:"updated_at";s:19:"2017-05-02 04:53:33";}s:11:"\0*\0original";a:14:{s:2:"id";i:8;s:6:"active";i:1;s:8:"password";s:60:"$2y$10$y9sFWBzo8ZYv7HkfoU3QpuEpsEYT6tW8YiOvA08VkrTXGU8AcDg4O";s:5:"email";s:13:"puka@deka.com";s:4:"name";s:4:"puka";s:18:"stripe_customer_id";N;s:7:"role_id";i:5;s:14:"remember_token";N;s:8:"tmp_code";N;s:16:"tmp_code_created";N;s:10:"blog_login";N;s:11:"page_states";N;s:10:"created_at";s:19:"2017-05-02 04:53:33";s:10:"updated_at";s:19:"2017-05-02 04:53:33";}s:12:"\0*\0relations";a:1:{s:4:"role";O:26:"CoasterCms\\Models\\UserRole":26:{s:8:"\0*\0table";s:10:"user_roles";s:44:"\0CoasterCms\\Models\\UserRole\0_allowed_actions";N;s:49:"\0CoasterCms\\Models\\UserRole\0_allowed_page_actions";N;s:46:"\0CoasterCms\\Models\\UserRole\0_processed_actions";N;s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:6:{s:2:"id";i:5;s:4:"name";s:22:"Frontend Guest Account";s:5:"admin";i:0;s:11:"description";s:39:"Default Guest Account (no admin access)";s:10:"created_at";s:19:"2017-04-06 07:40:35";s:10:"updated_at";s:19:"2017-04-06 07:40:35";}s:11:"\0*\0original";a:6:{s:2:"id";i:5;s:4:"name";s:22:"Frontend Guest Account";s:5:"admin";i:0;s:11:"description";s:39:"Default Guest Account (no admin access)";s:10:"created_at";s:19:"2017-04-06 07:40:35";s:10:"updated_at";s:19:"2017-04-06 07:40:35";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:20:"\0*\0rememberTokenName";s:14:"remember_token";}', '2017-05-02 20:56:58', '2017-05-02 20:56:58'),
(7, 19, 7, '\\CoasterCms\\Models\\User', 'O:22:"CoasterCms\\Models\\User":24:{s:8:"\0*\0table";s:5:"users";s:9:"\0*\0hidden";a:2:{i:0;s:8:"password";i:1;s:14:"remember_token";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:14:{s:2:"id";i:7;s:6:"active";i:1;s:8:"password";s:60:"$2y$10$UdHfXry6uURflrrpcnm5AuY.VE6NwgoO9RQA779vfyX.wz.HbDFVO";s:5:"email";s:13:"puka@puka.com";s:4:"name";s:4:"puka";s:18:"stripe_customer_id";N;s:7:"role_id";i:5;s:14:"remember_token";N;s:8:"tmp_code";N;s:16:"tmp_code_created";N;s:10:"blog_login";N;s:11:"page_states";N;s:10:"created_at";s:19:"2017-05-02 04:52:05";s:10:"updated_at";s:19:"2017-05-02 04:52:05";}s:11:"\0*\0original";a:14:{s:2:"id";i:7;s:6:"active";i:1;s:8:"password";s:60:"$2y$10$UdHfXry6uURflrrpcnm5AuY.VE6NwgoO9RQA779vfyX.wz.HbDFVO";s:5:"email";s:13:"puka@puka.com";s:4:"name";s:4:"puka";s:18:"stripe_customer_id";N;s:7:"role_id";i:5;s:14:"remember_token";N;s:8:"tmp_code";N;s:16:"tmp_code_created";N;s:10:"blog_login";N;s:11:"page_states";N;s:10:"created_at";s:19:"2017-05-02 04:52:05";s:10:"updated_at";s:19:"2017-05-02 04:52:05";}s:12:"\0*\0relations";a:1:{s:4:"role";O:26:"CoasterCms\\Models\\UserRole":26:{s:8:"\0*\0table";s:10:"user_roles";s:44:"\0CoasterCms\\Models\\UserRole\0_allowed_actions";N;s:49:"\0CoasterCms\\Models\\UserRole\0_allowed_page_actions";N;s:46:"\0CoasterCms\\Models\\UserRole\0_processed_actions";N;s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:6:{s:2:"id";i:5;s:4:"name";s:22:"Frontend Guest Account";s:5:"admin";i:0;s:11:"description";s:39:"Default Guest Account (no admin access)";s:10:"created_at";s:19:"2017-04-06 07:40:35";s:10:"updated_at";s:19:"2017-04-06 07:40:35";}s:11:"\0*\0original";a:6:{s:2:"id";i:5;s:4:"name";s:22:"Frontend Guest Account";s:5:"admin";i:0;s:11:"description";s:39:"Default Guest Account (no admin access)";s:10:"created_at";s:19:"2017-04-06 07:40:35";s:10:"updated_at";s:19:"2017-04-06 07:40:35";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:20:"\0*\0rememberTokenName";s:14:"remember_token";}', '2017-05-02 20:57:05', '2017-05-02 20:57:05'),
(8, 20, 6, '\\CoasterCms\\Models\\User', 'O:22:"CoasterCms\\Models\\User":24:{s:8:"\0*\0table";s:5:"users";s:9:"\0*\0hidden";a:2:{i:0;s:8:"password";i:1;s:14:"remember_token";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:14:{s:2:"id";i:6;s:6:"active";i:1;s:8:"password";s:60:"$2y$10$XwmMVjj9gubZLTERIn.qD.cqWgL8mFKtJvTKxJjXgbDo2ICK7Dy/O";s:5:"email";s:16:"asdsd@asdasd.com";s:4:"name";s:5:"asdas";s:18:"stripe_customer_id";N;s:7:"role_id";i:5;s:14:"remember_token";N;s:8:"tmp_code";N;s:16:"tmp_code_created";N;s:10:"blog_login";N;s:11:"page_states";N;s:10:"created_at";s:19:"2017-05-02 04:49:34";s:10:"updated_at";s:19:"2017-05-02 04:49:34";}s:11:"\0*\0original";a:14:{s:2:"id";i:6;s:6:"active";i:1;s:8:"password";s:60:"$2y$10$XwmMVjj9gubZLTERIn.qD.cqWgL8mFKtJvTKxJjXgbDo2ICK7Dy/O";s:5:"email";s:16:"asdsd@asdasd.com";s:4:"name";s:5:"asdas";s:18:"stripe_customer_id";N;s:7:"role_id";i:5;s:14:"remember_token";N;s:8:"tmp_code";N;s:16:"tmp_code_created";N;s:10:"blog_login";N;s:11:"page_states";N;s:10:"created_at";s:19:"2017-05-02 04:49:34";s:10:"updated_at";s:19:"2017-05-02 04:49:34";}s:12:"\0*\0relations";a:1:{s:4:"role";O:26:"CoasterCms\\Models\\UserRole":26:{s:8:"\0*\0table";s:10:"user_roles";s:44:"\0CoasterCms\\Models\\UserRole\0_allowed_actions";N;s:49:"\0CoasterCms\\Models\\UserRole\0_allowed_page_actions";N;s:46:"\0CoasterCms\\Models\\UserRole\0_processed_actions";N;s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:6:{s:2:"id";i:5;s:4:"name";s:22:"Frontend Guest Account";s:5:"admin";i:0;s:11:"description";s:39:"Default Guest Account (no admin access)";s:10:"created_at";s:19:"2017-04-06 07:40:35";s:10:"updated_at";s:19:"2017-04-06 07:40:35";}s:11:"\0*\0original";a:6:{s:2:"id";i:5;s:4:"name";s:22:"Frontend Guest Account";s:5:"admin";i:0;s:11:"description";s:39:"Default Guest Account (no admin access)";s:10:"created_at";s:19:"2017-04-06 07:40:35";s:10:"updated_at";s:19:"2017-04-06 07:40:35";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:20:"\0*\0rememberTokenName";s:14:"remember_token";}', '2017-05-02 20:57:08', '2017-05-02 20:57:08'),
(9, 21, 4, '\\CoasterCms\\Models\\User', 'O:22:"CoasterCms\\Models\\User":24:{s:8:"\0*\0table";s:5:"users";s:9:"\0*\0hidden";a:2:{i:0;s:8:"password";i:1;s:14:"remember_token";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:14:{s:2:"id";i:4;s:6:"active";i:1;s:8:"password";s:60:"$2y$10$BsBHUxt.I7smRIv/wvMwxOuCJtXMzr9eqxUdxQJVRPf3ojhd65dAq";s:5:"email";s:15:"chuta@gmail.com";s:4:"name";s:5:"chuta";s:18:"stripe_customer_id";N;s:7:"role_id";i:5;s:14:"remember_token";N;s:8:"tmp_code";N;s:16:"tmp_code_created";N;s:10:"blog_login";N;s:11:"page_states";N;s:10:"created_at";s:19:"2017-05-02 04:47:36";s:10:"updated_at";s:19:"2017-05-02 04:47:36";}s:11:"\0*\0original";a:14:{s:2:"id";i:4;s:6:"active";i:1;s:8:"password";s:60:"$2y$10$BsBHUxt.I7smRIv/wvMwxOuCJtXMzr9eqxUdxQJVRPf3ojhd65dAq";s:5:"email";s:15:"chuta@gmail.com";s:4:"name";s:5:"chuta";s:18:"stripe_customer_id";N;s:7:"role_id";i:5;s:14:"remember_token";N;s:8:"tmp_code";N;s:16:"tmp_code_created";N;s:10:"blog_login";N;s:11:"page_states";N;s:10:"created_at";s:19:"2017-05-02 04:47:36";s:10:"updated_at";s:19:"2017-05-02 04:47:36";}s:12:"\0*\0relations";a:1:{s:4:"role";O:26:"CoasterCms\\Models\\UserRole":26:{s:8:"\0*\0table";s:10:"user_roles";s:44:"\0CoasterCms\\Models\\UserRole\0_allowed_actions";N;s:49:"\0CoasterCms\\Models\\UserRole\0_allowed_page_actions";N;s:46:"\0CoasterCms\\Models\\UserRole\0_processed_actions";N;s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:6:{s:2:"id";i:5;s:4:"name";s:22:"Frontend Guest Account";s:5:"admin";i:0;s:11:"description";s:39:"Default Guest Account (no admin access)";s:10:"created_at";s:19:"2017-04-06 07:40:35";s:10:"updated_at";s:19:"2017-04-06 07:40:35";}s:11:"\0*\0original";a:6:{s:2:"id";i:5;s:4:"name";s:22:"Frontend Guest Account";s:5:"admin";i:0;s:11:"description";s:39:"Default Guest Account (no admin access)";s:10:"created_at";s:19:"2017-04-06 07:40:35";s:10:"updated_at";s:19:"2017-04-06 07:40:35";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:20:"\0*\0rememberTokenName";s:14:"remember_token";}', '2017-05-02 20:57:12', '2017-05-02 20:57:12'),
(10, 22, 5, '\\CoasterCms\\Models\\User', 'O:22:"CoasterCms\\Models\\User":24:{s:8:"\0*\0table";s:5:"users";s:9:"\0*\0hidden";a:2:{i:0;s:8:"password";i:1;s:14:"remember_token";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:14:{s:2:"id";i:5;s:6:"active";i:1;s:8:"password";s:60:"$2y$10$jDoxGaGUPNYfnE9JwqrFJe.pByCDcwJ6XXCLDF4hHp/60sBiK9dNq";s:5:"email";s:16:"asdsd@asdsad.com";s:4:"name";s:5:"asdad";s:18:"stripe_customer_id";N;s:7:"role_id";i:5;s:14:"remember_token";N;s:8:"tmp_code";N;s:16:"tmp_code_created";N;s:10:"blog_login";N;s:11:"page_states";N;s:10:"created_at";s:19:"2017-05-02 04:48:37";s:10:"updated_at";s:19:"2017-05-02 04:48:37";}s:11:"\0*\0original";a:14:{s:2:"id";i:5;s:6:"active";i:1;s:8:"password";s:60:"$2y$10$jDoxGaGUPNYfnE9JwqrFJe.pByCDcwJ6XXCLDF4hHp/60sBiK9dNq";s:5:"email";s:16:"asdsd@asdsad.com";s:4:"name";s:5:"asdad";s:18:"stripe_customer_id";N;s:7:"role_id";i:5;s:14:"remember_token";N;s:8:"tmp_code";N;s:16:"tmp_code_created";N;s:10:"blog_login";N;s:11:"page_states";N;s:10:"created_at";s:19:"2017-05-02 04:48:37";s:10:"updated_at";s:19:"2017-05-02 04:48:37";}s:12:"\0*\0relations";a:1:{s:4:"role";O:26:"CoasterCms\\Models\\UserRole":26:{s:8:"\0*\0table";s:10:"user_roles";s:44:"\0CoasterCms\\Models\\UserRole\0_allowed_actions";N;s:49:"\0CoasterCms\\Models\\UserRole\0_allowed_page_actions";N;s:46:"\0CoasterCms\\Models\\UserRole\0_processed_actions";N;s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:6:{s:2:"id";i:5;s:4:"name";s:22:"Frontend Guest Account";s:5:"admin";i:0;s:11:"description";s:39:"Default Guest Account (no admin access)";s:10:"created_at";s:19:"2017-04-06 07:40:35";s:10:"updated_at";s:19:"2017-04-06 07:40:35";}s:11:"\0*\0original";a:6:{s:2:"id";i:5;s:4:"name";s:22:"Frontend Guest Account";s:5:"admin";i:0;s:11:"description";s:39:"Default Guest Account (no admin access)";s:10:"created_at";s:19:"2017-04-06 07:40:35";s:10:"updated_at";s:19:"2017-04-06 07:40:35";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:20:"\0*\0rememberTokenName";s:14:"remember_token";}', '2017-05-02 20:57:22', '2017-05-02 20:57:22'),
(11, 25, 10, 'CoasterCms\\Models\\MenuItem', 'O:26:"CoasterCms\\Models\\MenuItem":24:{s:8:"\0*\0table";s:10:"menu_items";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:10;s:7:"menu_id";i:1;s:7:"page_id";s:1:"4";s:5:"order";i:7;s:10:"sub_levels";i:0;s:11:"custom_name";N;s:10:"created_at";s:19:"2017-05-03 04:37:52";s:10:"updated_at";s:19:"2017-05-03 04:37:52";}s:11:"\0*\0original";a:8:{s:2:"id";i:10;s:7:"menu_id";i:1;s:7:"page_id";s:1:"4";s:5:"order";i:7;s:10:"sub_levels";i:0;s:11:"custom_name";N;s:10:"created_at";s:19:"2017-05-03 04:37:52";s:10:"updated_at";s:19:"2017-05-03 04:37:52";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:0;s:18:"wasRecentlyCreated";b:0;s:10:"\0*\0_logger";a:0:{}}', '2017-05-02 23:09:03', '2017-05-02 23:09:03'),
(12, 33, 5, '\\App\\Size', 'O:8:"App\\Size":23:{s:8:"\0*\0table";s:9:"item_size";s:11:"\0*\0fillable";a:1:{i:0;s:4:"size";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:4:{s:2:"id";i:5;s:4:"size";s:4:"gdfg";s:10:"created_at";s:19:"2017-05-15 21:41:25";s:10:"updated_at";s:19:"2017-05-15 21:41:25";}s:11:"\0*\0original";a:4:{s:2:"id";i:5;s:4:"size";s:4:"gdfg";s:10:"created_at";s:19:"2017-05-15 21:41:25";s:10:"updated_at";s:19:"2017-05-15 21:41:25";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}', '2017-05-15 16:11:29', '2017-05-15 16:11:29'),
(13, 34, 6, '\\App\\Size', 'O:8:"App\\Size":23:{s:8:"\0*\0table";s:9:"item_size";s:11:"\0*\0fillable";a:1:{i:0;s:4:"size";}s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:4:{s:2:"id";i:6;s:4:"size";s:3:"ccx";s:10:"created_at";s:19:"2017-05-15 22:08:43";s:10:"updated_at";s:19:"2017-05-15 22:08:43";}s:11:"\0*\0original";a:4:{s:2:"id";i:6;s:4:"size";s:3:"ccx";s:10:"created_at";s:19:"2017-05-15 22:08:43";s:10:"updated_at";s:19:"2017-05-15 22:08:43";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}', '2017-05-15 16:38:50', '2017-05-15 16:38:50'),
(14, 42, 11, '\\CoasterCms\\Models\\Page', 'O:22:"CoasterCms\\Models\\Page":23:{s:8:"\0*\0table";s:5:"pages";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:15:{s:2:"id";i:11;s:8:"template";i:26;s:6:"parent";i:0;s:14:"child_template";i:0;s:5:"order";i:9;s:15:"group_container";i:0;s:28:"group_container_url_priority";i:0;s:16:"canonical_parent";i:0;s:4:"link";i:0;s:4:"live";i:1;s:7:"sitemap";i:1;s:10:"live_start";N;s:8:"live_end";N;s:10:"created_at";s:19:"2017-05-25 03:46:49";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:11:"\0*\0original";a:15:{s:2:"id";i:11;s:8:"template";i:26;s:6:"parent";i:0;s:14:"child_template";i:0;s:5:"order";i:9;s:15:"group_container";i:0;s:28:"group_container_url_priority";i:0;s:16:"canonical_parent";i:0;s:4:"link";i:0;s:4:"live";i:1;s:7:"sitemap";i:1;s:10:"live_start";N;s:8:"live_end";N;s:10:"created_at";s:19:"2017-05-25 03:46:49";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}', '2017-05-24 22:18:59', '2017-05-24 22:18:59'),
(15, 42, 0, '\\CoasterCms\\Models\\PageVersion', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":1:{s:8:"\0*\0items";a:2:{i:0;O:29:"CoasterCms\\Models\\PageVersion":23:{s:8:"\0*\0table";s:13:"page_versions";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:9:{s:2:"id";i:23;s:7:"page_id";i:11;s:10:"version_id";i:1;s:8:"template";s:2:"12";s:5:"label";N;s:11:"preview_key";s:11:"14imp2pk2pz";s:7:"user_id";i:1;s:10:"created_at";s:19:"2017-05-25 03:46:49";s:10:"updated_at";s:19:"2017-05-25 03:46:49";}s:11:"\0*\0original";a:9:{s:2:"id";i:23;s:7:"page_id";i:11;s:10:"version_id";i:1;s:8:"template";s:2:"12";s:5:"label";N;s:11:"preview_key";s:11:"14imp2pk2pz";s:7:"user_id";i:1;s:10:"created_at";s:19:"2017-05-25 03:46:49";s:10:"updated_at";s:19:"2017-05-25 03:46:49";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}i:1;O:29:"CoasterCms\\Models\\PageVersion":23:{s:8:"\0*\0table";s:13:"page_versions";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:9:{s:2:"id";i:24;s:7:"page_id";i:11;s:10:"version_id";i:2;s:8:"template";s:2:"26";s:5:"label";N;s:11:"preview_key";s:10:"orh780vch1";s:7:"user_id";i:1;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:11:"\0*\0original";a:9:{s:2:"id";i:24;s:7:"page_id";i:11;s:10:"version_id";i:2;s:8:"template";s:2:"26";s:5:"label";N;s:11:"preview_key";s:10:"orh780vch1";s:7:"user_id";i:1;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}', '2017-05-24 22:18:59', '2017-05-24 22:18:59'),
(16, 42, 0, '\\CoasterCms\\Models\\PageLang', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":1:{s:8:"\0*\0items";a:1:{i:0;O:26:"CoasterCms\\Models\\PageLang":23:{s:8:"\0*\0table";s:9:"page_lang";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:11;s:7:"page_id";i:11;s:11:"language_id";i:1;s:3:"url";s:13:"news-articles";s:4:"name";s:4:"News";s:12:"live_version";i:2;s:10:"created_at";s:19:"2017-05-25 03:46:49";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:11:"\0*\0original";a:8:{s:2:"id";i:11;s:7:"page_id";i:11;s:11:"language_id";i:1;s:3:"url";s:13:"news-articles";s:4:"name";s:4:"News";s:12:"live_version";i:2;s:10:"created_at";s:19:"2017-05-25 03:46:49";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}', '2017-05-24 22:18:59', '2017-05-24 22:18:59'),
(17, 42, 0, '\\CoasterCms\\Models\\PageBlock', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":1:{s:8:"\0*\0items";a:7:{i:0;O:27:"CoasterCms\\Models\\PageBlock":23:{s:8:"\0*\0table";s:11:"page_blocks";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:35;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:8;s:7:"content";s:4:"News";s:7:"version";i:1;s:10:"created_at";s:19:"2017-05-25 03:46:49";s:10:"updated_at";s:19:"2017-05-25 03:46:49";}s:11:"\0*\0original";a:8:{s:2:"id";i:35;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:8;s:7:"content";s:4:"News";s:7:"version";i:1;s:10:"created_at";s:19:"2017-05-25 03:46:49";s:10:"updated_at";s:19:"2017-05-25 03:46:49";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}i:1;O:27:"CoasterCms\\Models\\PageBlock":23:{s:8:"\0*\0table";s:11:"page_blocks";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:36;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:1;s:7:"content";s:0:"";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:11:"\0*\0original";a:8:{s:2:"id";i:36;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:1;s:7:"content";s:0:"";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}i:2;O:27:"CoasterCms\\Models\\PageBlock":23:{s:8:"\0*\0table";s:11:"page_blocks";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:37;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:2;s:7:"content";s:0:"";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:11:"\0*\0original";a:8:{s:2:"id";i:37;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:2;s:7:"content";s:0:"";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}i:3;O:27:"CoasterCms\\Models\\PageBlock":23:{s:8:"\0*\0table";s:11:"page_blocks";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:38;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:3;s:7:"content";s:0:"";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:11:"\0*\0original";a:8:{s:2:"id";i:38;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:3;s:7:"content";s:0:"";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}i:4;O:27:"CoasterCms\\Models\\PageBlock":23:{s:8:"\0*\0table";s:11:"page_blocks";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:39;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:32;s:7:"content";s:0:"";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:11:"\0*\0original";a:8:{s:2:"id";i:39;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:32;s:7:"content";s:0:"";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}i:5;O:27:"CoasterCms\\Models\\PageBlock":23:{s:8:"\0*\0table";s:11:"page_blocks";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:40;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:33;s:7:"content";s:125:"O:8:"stdClass":5:{s:7:"captcha";b:0;s:10:"email_from";s:0:"";s:8:"email_to";s:0:"";s:8:"template";i:0;s:7:"page_to";s:1:"2";}";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:11:"\0*\0original";a:8:{s:2:"id";i:40;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:33;s:7:"content";s:125:"O:8:"stdClass":5:{s:7:"captcha";b:0;s:10:"email_from";s:0:"";s:8:"email_to";s:0:"";s:8:"template";i:0;s:7:"page_to";s:1:"2";}";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}i:6;O:27:"CoasterCms\\Models\\PageBlock":23:{s:8:"\0*\0table";s:11:"page_blocks";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:41;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:10;s:7:"content";s:0:"";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:11:"\0*\0original";a:8:{s:2:"id";i:41;s:11:"language_id";i:1;s:7:"page_id";i:11;s:8:"block_id";i:10;s:7:"content";s:0:"";s:7:"version";i:2;s:10:"created_at";s:19:"2017-05-25 03:48:20";s:10:"updated_at";s:19:"2017-05-25 03:48:20";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;}}}', '2017-05-24 22:18:59', '2017-05-24 22:18:59'),
(18, 42, 0, '\\CoasterCms\\Models\\MenuItem', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":1:{s:8:"\0*\0items";a:1:{i:0;O:26:"CoasterCms\\Models\\MenuItem":24:{s:8:"\0*\0table";s:10:"menu_items";s:13:"\0*\0connection";N;s:13:"\0*\0primaryKey";s:2:"id";s:10:"\0*\0keyType";s:3:"int";s:10:"\0*\0perPage";i:15;s:12:"incrementing";b:1;s:10:"timestamps";b:1;s:13:"\0*\0attributes";a:8:{s:2:"id";i:9;s:7:"menu_id";i:1;s:7:"page_id";s:2:"11";s:5:"order";i:6;s:10:"sub_levels";i:0;s:11:"custom_name";s:0:"";s:10:"created_at";s:19:"2017-05-25 03:46:49";s:10:"updated_at";s:19:"2017-05-25 03:46:49";}s:11:"\0*\0original";a:8:{s:2:"id";i:9;s:7:"menu_id";i:1;s:7:"page_id";s:2:"11";s:5:"order";i:6;s:10:"sub_levels";i:0;s:11:"custom_name";s:0:"";s:10:"created_at";s:19:"2017-05-25 03:46:49";s:10:"updated_at";s:19:"2017-05-25 03:46:49";}s:12:"\0*\0relations";a:0:{}s:9:"\0*\0hidden";a:0:{}s:10:"\0*\0visible";a:0:{}s:10:"\0*\0appends";a:0:{}s:11:"\0*\0fillable";a:0:{}s:10:"\0*\0guarded";a:1:{i:0;s:1:"*";}s:8:"\0*\0dates";a:0:{}s:13:"\0*\0dateFormat";N;s:8:"\0*\0casts";a:0:{}s:10:"\0*\0touches";a:0:{}s:14:"\0*\0observables";a:0:{}s:7:"\0*\0with";a:0:{}s:6:"exists";b:1;s:18:"wasRecentlyCreated";b:0;s:10:"\0*\0_logger";a:0:{}}}}', '2017-05-24 22:18:59', '2017-05-24 22:18:59'),
(19, 42, 0, '\\CoasterCms\\Models\\UserRolePageAction', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":1:{s:8:"\0*\0items";a:0:{}}', '2017-05-24 22:18:59', '2017-05-24 22:18:59'),
(20, 42, 0, '\\CoasterCms\\Models\\PageGroupPage', 'O:39:"Illuminate\\Database\\Eloquent\\Collection":1:{s:8:"\0*\0items";a:0:{}}', '2017-05-24 22:18:59', '2017-05-24 22:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
`id` int(10) unsigned NOT NULL,
  `category_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `search_weight` int(11) NOT NULL DEFAULT '1',
  `active` int(11) NOT NULL DEFAULT '1',
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `category_id`, `label`, `name`, `type`, `order`, `search_weight`, `active`, `note`, `created_at`, `updated_at`) VALUES
(1, 16, 'Meta Title', 'meta_title', 'string', 20, 1, 1, '', '2017-04-06 02:11:38', '2017-04-23 23:14:21'),
(2, 16, 'Meta Description', 'meta_description', 'text', 30, 1, 1, '', '2017-04-06 02:11:38', '2017-04-23 23:14:21'),
(3, 16, 'Meta Keywords', 'meta_keywords', 'text', 40, 1, 1, '', '2017-04-06 02:11:38', '2017-04-23 23:14:22'),
(4, 6, 'Header Html', 'header_html', 'text', 50, 1, 1, '', '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(5, 6, 'Logo', 'logo', 'image', 140, 1, 1, '', '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(6, 3, 'Internal Banner', 'internal_banner', 'image', 70, 1, 1, '', '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(7, 1, 'Category View', 'category_view', 'select', 110, 1, 1, '', '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(8, 1, 'Title', 'title', 'string', 80, 1, 1, '', '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(9, 1, 'Lead Text', 'lead_text', 'text', 90, 1, 1, '', '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(10, 1, 'Content', 'content', 'richtext', 100, 1, 1, '', '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(11, 7, 'Blog Category Page', 'blog_category_page', 'selectpage', 120, 1, 1, '', '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(12, 7, 'Blog Main Page', 'blog_main_page', 'selectpage', 100, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(13, 7, 'Blog Archive Page', 'blog_archive_page', 'selectpage', 130, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(14, 8, 'Show Features', 'show_features', 'select', 120, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(15, 8, 'Features Title', 'features_title', 'string', 130, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(16, 8, 'Features Lead Text', 'features_lead_text', 'text', 140, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(17, 8, 'Feature', 'feature', 'repeater', 150, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(18, 8, 'Social', 'social', 'repeater', 160, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(19, 1, 'Scroll To Top Text', 'scroll_to_top_text', 'text', 170, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(20, 8, 'Copyright', 'copyright', 'string', 180, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(21, 7, 'Blog Search Page', 'blog_search_page', 'selectpage', 110, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(22, 8, 'Footer Html', 'footer_html', 'text', 130, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(23, 1, 'Page Icon', 'icon', 'selectclass', 200, 1, 1, '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(24, 1, 'Post Date', 'post_date', 'datetime', 85, 1, 1, '', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(25, 1, 'Post Author', 'post_author', 'selectuser', 84, 1, 1, '', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(26, 1, 'Video', 'video', 'video', 110, 1, 1, '', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(27, 2, 'Categories', 'categories', 'selectmultiplewnew', 110, 1, 1, '', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(28, 1, 'Comments', 'comments', 'repeater', 130, 1, 1, '', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(29, 8, 'Email', 'email', 'string', 110, 1, 1, '', '2017-04-06 02:12:01', '2017-04-23 23:14:22'),
(30, 8, 'Phone', 'phone', 'string', 110, 1, 1, '', '2017-04-06 02:12:01', '2017-04-23 23:14:23'),
(31, 1, 'Address', 'address', 'text', 130, 1, 1, '', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(32, 1, 'Contact Form Text', 'contact_form_text', 'string', 75, 1, 1, '', '2017-04-06 02:12:01', '2017-04-23 23:14:22'),
(33, 1, 'Contact', 'contact_form', 'form', 80, 1, 1, '', '2017-04-06 02:12:01', '2017-04-23 23:14:22'),
(34, 1, 'Map Link', 'map_link', 'string', 150, 1, 1, '', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(35, 15, 'Carousel', 'carousel', 'repeater', 60, 1, 1, '', '2017-04-06 02:12:01', '2017-04-23 23:14:23'),
(36, 1, 'Show Sub Pages', 'show_sub_pages', 'selectpage', 100, 1, 1, '', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(37, 1, 'Mini Banner', 'banner', 'repeater', 110, 1, 1, '', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(38, 4, 'Sidebar Title', 'sidebar_title', 'string', 80, 1, 1, '', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(39, 4, 'Sidebar Content', 'sidebar_content', 'richtext', 90, 1, 1, '', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(40, 1, 'Team', 'team', 'repeater', 110, 1, 1, '', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(41, 1, 'Feature Icon', 'feature_icon', 'selectclass', 50, 1, 1, '', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(42, 8, 'Footer Left', 'footer_left', 'string', 90, 1, 1, '', '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(43, 1, 'Image', 'image', 'image', 80, 1, 1, '', '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(44, 1, 'Slide Image', 'slide_image', 'image', 20, 1, 1, '', '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(45, 1, 'Slide Title', 'slide_title', 'string', 30, 1, 1, '', '2017-04-23 23:14:23', '2017-04-23 23:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `block_beacons`
--

CREATE TABLE IF NOT EXISTS `block_beacons` (
`id` int(10) unsigned NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Kontakt',
  `unique_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `removed` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block_category`
--

CREATE TABLE IF NOT EXISTS `block_category` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `block_category`
--

INSERT INTO `block_category` (`id`, `name`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Main Content', 50, '2017-04-06 02:11:36', '2017-04-06 02:11:36'),
(2, 'Filters', 90, '2017-04-06 02:11:36', '2017-04-06 02:11:36'),
(3, 'Banners', 55, '2017-04-06 02:11:36', '2017-04-06 02:11:36'),
(4, 'Sidebar', 60, '2017-04-06 02:11:36', '2017-04-06 02:11:36'),
(5, 'SEO Content', 100, '2017-04-06 02:11:37', '2017-04-06 02:11:37'),
(6, 'Header', 10, '2017-04-06 02:11:37', '2017-04-06 02:11:37'),
(7, 'Blog', 95, '2017-04-06 02:11:37', '2017-04-06 02:11:37'),
(8, 'Footer', 90, '2017-04-06 02:11:37', '2017-04-23 23:14:20'),
(9, 'Features', 10, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(10, 'Socials', 10, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(11, 'Comments', 10, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(12, 'Carousels', 10, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(13, 'Banners', 10, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(14, 'Teams', 10, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(15, 'Banner', 20, '2017-04-23 23:14:20', '2017-04-23 23:14:20'),
(16, 'SEO Conent', 100, '2017-04-23 23:14:20', '2017-04-23 23:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `block_form_rules`
--

CREATE TABLE IF NOT EXISTS `block_form_rules` (
`id` int(10) unsigned NOT NULL,
  `form_template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rule` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `block_form_rules`
--

INSERT INTO `block_form_rules` (`id`, `form_template`, `field`, `rule`, `created_at`, `updated_at`) VALUES
(1, 'contact_form', 'name', 'required', '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(2, 'contact_form', 'email', 'required|email', '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(3, 'contact_form', 'message', 'required', '2017-04-23 23:14:23', '2017-04-23 23:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `block_repeaters`
--

CREATE TABLE IF NOT EXISTS `block_repeaters` (
`id` int(10) unsigned NOT NULL,
  `block_id` int(11) NOT NULL,
  `blocks` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `block_repeaters`
--

INSERT INTO `block_repeaters` (`id`, `block_id`, `blocks`, `created_at`, `updated_at`) VALUES
(1, 35, '44,45', '2017-04-23 23:14:23', '2017-04-23 23:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `block_selectopts`
--

CREATE TABLE IF NOT EXISTS `block_selectopts` (
`id` int(10) unsigned NOT NULL,
  `block_id` int(11) NOT NULL,
  `option` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=783 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `block_selectopts`
--

INSERT INTO `block_selectopts` (`id`, `block_id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(1, 7, 'Default (3Cols)', '', '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(2, 7, 'Detailed (3Cols)', 'detailed', '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(3, 7, 'Home View w/icons', 'home', '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(4, 7, 'Blog Posts', 'posts', '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(5, 14, 'Yes', '1', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(6, 14, 'No', '0', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(7, 19, 'Default (3Cols)', '', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(8, 19, 'Detailed (3Cols)', 'detailed', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(9, 19, 'Detailed with Icon (4Cols)', 'home', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(10, 20, 'Yes', '1', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(11, 20, 'No', '0', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(12, 23, 'fa fa-glass', '<i class="fa fa-glass fa-2x"></i>', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(13, 23, 'fa fa-music', '<i class="fa fa-music fa-2x"></i>', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(14, 23, 'fa fa-search', '<i class="fa fa-search fa-2x"></i>', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(15, 23, 'fa fa-envelope-o', '<i class="fa fa-envelope-o fa-2x"></i>', '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(16, 23, 'fa fa-heart', '<i class="fa fa-heart fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(17, 23, 'fa fa-star', '<i class="fa fa-star fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(18, 23, 'fa fa-star-o', '<i class="fa fa-star-o fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(19, 23, 'fa fa-user', '<i class="fa fa-user fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(20, 23, 'fa fa-film', '<i class="fa fa-film fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(21, 23, 'fa fa-th-large', '<i class="fa fa-th-large fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(22, 23, 'fa fa-th', '<i class="fa fa-th fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(23, 23, 'fa fa-th-list', '<i class="fa fa-th-list fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(24, 23, 'fa fa-check', '<i class="fa fa-check fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(25, 23, 'fa fa-times', '<i class="fa fa-times fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(26, 23, 'fa fa-search-plus', '<i class="fa fa-search-plus fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(27, 23, 'fa fa-search-minus', '<i class="fa fa-search-minus fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(28, 23, 'fa fa-power-off', '<i class="fa fa-power-off fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(29, 23, 'fa fa-signal', '<i class="fa fa-signal fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(30, 23, 'fa fa-cog', '<i class="fa fa-cog fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(31, 23, 'fa fa-trash-o', '<i class="fa fa-trash-o fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(32, 23, 'fa fa-home', '<i class="fa fa-home fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(33, 23, 'fa fa-file-o', '<i class="fa fa-file-o fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(34, 23, 'fa fa-clock-o', '<i class="fa fa-clock-o fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(35, 23, 'fa fa-road', '<i class="fa fa-road fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(36, 23, 'fa fa-download', '<i class="fa fa-download fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(37, 23, 'fa fa-arrow-circle-o-down', '<i class="fa fa-arrow-circle-o-down fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(38, 23, 'fa fa-arrow-circle-o-up', '<i class="fa fa-arrow-circle-o-up fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(39, 23, 'fa fa-inbox', '<i class="fa fa-inbox fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(40, 23, 'fa fa-play-circle-o', '<i class="fa fa-play-circle-o fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(41, 23, 'fa fa-repeat', '<i class="fa fa-repeat fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(42, 23, 'fa fa-refresh', '<i class="fa fa-refresh fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(43, 23, 'fa fa-list-alt', '<i class="fa fa-list-alt fa-2x"></i>', '2017-04-06 02:11:42', '2017-04-06 02:11:42'),
(44, 23, 'fa fa-lock', '<i class="fa fa-lock fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(45, 23, 'fa fa-flag', '<i class="fa fa-flag fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(46, 23, 'fa fa-headphones', '<i class="fa fa-headphones fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(47, 23, 'fa fa-volume-off', '<i class="fa fa-volume-off fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(48, 23, 'fa fa-volume-down', '<i class="fa fa-volume-down fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(49, 23, 'fa fa-volume-up', '<i class="fa fa-volume-up fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(50, 23, 'fa fa-qrcode', '<i class="fa fa-qrcode fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(51, 23, 'fa fa-barcode', '<i class="fa fa-barcode fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(52, 23, 'fa fa-tag', '<i class="fa fa-tag fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(53, 23, 'fa fa-tags', '<i class="fa fa-tags fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(54, 23, 'fa fa-book', '<i class="fa fa-book fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(55, 23, 'fa fa-bookmark', '<i class="fa fa-bookmark fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(56, 23, 'fa fa-print', '<i class="fa fa-print fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(57, 23, 'fa fa-camera', '<i class="fa fa-camera fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(58, 23, 'fa fa-font', '<i class="fa fa-font fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(59, 23, 'fa fa-bold', '<i class="fa fa-bold fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(60, 23, 'fa fa-italic', '<i class="fa fa-italic fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(61, 23, 'fa fa-text-height', '<i class="fa fa-text-height fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(62, 23, 'fa fa-text-width', '<i class="fa fa-text-width fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(63, 23, 'fa fa-align-left', '<i class="fa fa-align-left fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(64, 23, 'fa fa-align-center', '<i class="fa fa-align-center fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(65, 23, 'fa fa-align-right', '<i class="fa fa-align-right fa-2x"></i>', '2017-04-06 02:11:43', '2017-04-06 02:11:43'),
(66, 23, 'fa fa-align-justify', '<i class="fa fa-align-justify fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(67, 23, 'fa fa-list', '<i class="fa fa-list fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(68, 23, 'fa fa-outdent', '<i class="fa fa-outdent fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(69, 23, 'fa fa-indent', '<i class="fa fa-indent fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(70, 23, 'fa fa-video-camera', '<i class="fa fa-video-camera fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(71, 23, 'fa fa-picture-o', '<i class="fa fa-picture-o fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(72, 23, 'fa fa-pencil', '<i class="fa fa-pencil fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(73, 23, 'fa fa-map-marker', '<i class="fa fa-map-marker fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(74, 23, 'fa fa-adjust', '<i class="fa fa-adjust fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(75, 23, 'fa fa-tint', '<i class="fa fa-tint fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(76, 23, 'fa fa-pencil-square-o', '<i class="fa fa-pencil-square-o fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(77, 23, 'fa fa-share-square-o', '<i class="fa fa-share-square-o fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(78, 23, 'fa fa-check-square-o', '<i class="fa fa-check-square-o fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(79, 23, 'fa fa-arrows', '<i class="fa fa-arrows fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(80, 23, 'fa fa-step-backward', '<i class="fa fa-step-backward fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(81, 23, 'fa fa-fast-backward', '<i class="fa fa-fast-backward fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(82, 23, 'fa fa-backward', '<i class="fa fa-backward fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(83, 23, 'fa fa-play', '<i class="fa fa-play fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(84, 23, 'fa fa-pause', '<i class="fa fa-pause fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(85, 23, 'fa fa-stop', '<i class="fa fa-stop fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(86, 23, 'fa fa-forward', '<i class="fa fa-forward fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(87, 23, 'fa fa-fast-forward', '<i class="fa fa-fast-forward fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(88, 23, 'fa fa-step-forward', '<i class="fa fa-step-forward fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(89, 23, 'fa fa-eject', '<i class="fa fa-eject fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(90, 23, 'fa fa-chevron-left', '<i class="fa fa-chevron-left fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(91, 23, 'fa fa-chevron-right', '<i class="fa fa-chevron-right fa-2x"></i>', '2017-04-06 02:11:44', '2017-04-06 02:11:44'),
(92, 23, 'fa fa-plus-circle', '<i class="fa fa-plus-circle fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(93, 23, 'fa fa-minus-circle', '<i class="fa fa-minus-circle fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(94, 23, 'fa fa-times-circle', '<i class="fa fa-times-circle fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(95, 23, 'fa fa-check-circle', '<i class="fa fa-check-circle fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(96, 23, 'fa fa-question-circle', '<i class="fa fa-question-circle fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(97, 23, 'fa fa-info-circle', '<i class="fa fa-info-circle fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(98, 23, 'fa fa-crosshairs', '<i class="fa fa-crosshairs fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(99, 23, 'fa fa-times-circle-o', '<i class="fa fa-times-circle-o fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(100, 23, 'fa fa-check-circle-o', '<i class="fa fa-check-circle-o fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(101, 23, 'fa fa-ban', '<i class="fa fa-ban fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(102, 23, 'fa fa-arrow-left', '<i class="fa fa-arrow-left fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(103, 23, 'fa fa-arrow-right', '<i class="fa fa-arrow-right fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(104, 23, 'fa fa-arrow-up', '<i class="fa fa-arrow-up fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(105, 23, 'fa fa-arrow-down', '<i class="fa fa-arrow-down fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(106, 23, 'fa fa-share', '<i class="fa fa-share fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(107, 23, 'fa fa-expand', '<i class="fa fa-expand fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(108, 23, 'fa fa-compress', '<i class="fa fa-compress fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(109, 23, 'fa fa-plus', '<i class="fa fa-plus fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(110, 23, 'fa fa-minus', '<i class="fa fa-minus fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(111, 23, 'fa fa-asterisk', '<i class="fa fa-asterisk fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(112, 23, 'fa fa-exclamation-circle', '<i class="fa fa-exclamation-circle fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(113, 23, 'fa fa-gift', '<i class="fa fa-gift fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(114, 23, 'fa fa-leaf', '<i class="fa fa-leaf fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(115, 23, 'fa fa-fire', '<i class="fa fa-fire fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(116, 23, 'fa fa-eye', '<i class="fa fa-eye fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(117, 23, 'fa fa-eye-slash', '<i class="fa fa-eye-slash fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(118, 23, 'fa fa-exclamation-triangle', '<i class="fa fa-exclamation-triangle fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(119, 23, 'fa fa-plane', '<i class="fa fa-plane fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(120, 23, 'fa fa-calendar', '<i class="fa fa-calendar fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(121, 23, 'fa fa-random', '<i class="fa fa-random fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(122, 23, 'fa fa-comment', '<i class="fa fa-comment fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(123, 23, 'fa fa-magnet', '<i class="fa fa-magnet fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(124, 23, 'fa fa-chevron-up', '<i class="fa fa-chevron-up fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(125, 23, 'fa fa-chevron-down', '<i class="fa fa-chevron-down fa-2x"></i>', '2017-04-06 02:11:45', '2017-04-06 02:11:45'),
(126, 23, 'fa fa-retweet', '<i class="fa fa-retweet fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(127, 23, 'fa fa-shopping-cart', '<i class="fa fa-shopping-cart fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(128, 23, 'fa fa-folder', '<i class="fa fa-folder fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(129, 23, 'fa fa-folder-open', '<i class="fa fa-folder-open fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(130, 23, 'fa fa-arrows-v', '<i class="fa fa-arrows-v fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(131, 23, 'fa fa-arrows-h', '<i class="fa fa-arrows-h fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(132, 23, 'fa fa-bar-chart', '<i class="fa fa-bar-chart fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(133, 23, 'fa fa-twitter-square', '<i class="fa fa-twitter-square fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(134, 23, 'fa fa-facebook-square', '<i class="fa fa-facebook-square fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(135, 23, 'fa fa-camera-retro', '<i class="fa fa-camera-retro fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(136, 23, 'fa fa-key', '<i class="fa fa-key fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(137, 23, 'fa fa-cogs', '<i class="fa fa-cogs fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(138, 23, 'fa fa-comments', '<i class="fa fa-comments fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(139, 23, 'fa fa-thumbs-o-up', '<i class="fa fa-thumbs-o-up fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(140, 23, 'fa fa-thumbs-o-down', '<i class="fa fa-thumbs-o-down fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(141, 23, 'fa fa-star-half', '<i class="fa fa-star-half fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(142, 23, 'fa fa-heart-o', '<i class="fa fa-heart-o fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(143, 23, 'fa fa-sign-out', '<i class="fa fa-sign-out fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(144, 23, 'fa fa-linkedin-square', '<i class="fa fa-linkedin-square fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(145, 23, 'fa fa-thumb-tack', '<i class="fa fa-thumb-tack fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(146, 23, 'fa fa-external-link', '<i class="fa fa-external-link fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(147, 23, 'fa fa-sign-in', '<i class="fa fa-sign-in fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(148, 23, 'fa fa-trophy', '<i class="fa fa-trophy fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(149, 23, 'fa fa-github-square', '<i class="fa fa-github-square fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(150, 23, 'fa fa-upload', '<i class="fa fa-upload fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(151, 23, 'fa fa-lemon-o', '<i class="fa fa-lemon-o fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(152, 23, 'fa fa-phone', '<i class="fa fa-phone fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(153, 23, 'fa fa-square-o', '<i class="fa fa-square-o fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(154, 23, 'fa fa-bookmark-o', '<i class="fa fa-bookmark-o fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(155, 23, 'fa fa-phone-square', '<i class="fa fa-phone-square fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(156, 23, 'fa fa-twitter', '<i class="fa fa-twitter fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(157, 23, 'fa fa-facebook', '<i class="fa fa-facebook fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(158, 23, 'fa fa-github', '<i class="fa fa-github fa-2x"></i>', '2017-04-06 02:11:46', '2017-04-06 02:11:46'),
(159, 23, 'fa fa-unlock', '<i class="fa fa-unlock fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(160, 23, 'fa fa-credit-card', '<i class="fa fa-credit-card fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(161, 23, 'fa fa-rss', '<i class="fa fa-rss fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(162, 23, 'fa fa-hdd-o', '<i class="fa fa-hdd-o fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(163, 23, 'fa fa-bullhorn', '<i class="fa fa-bullhorn fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(164, 23, 'fa fa-bell', '<i class="fa fa-bell fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(165, 23, 'fa fa-certificate', '<i class="fa fa-certificate fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(166, 23, 'fa fa-hand-o-right', '<i class="fa fa-hand-o-right fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(167, 23, 'fa fa-hand-o-left', '<i class="fa fa-hand-o-left fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(168, 23, 'fa fa-hand-o-up', '<i class="fa fa-hand-o-up fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(169, 23, 'fa fa-hand-o-down', '<i class="fa fa-hand-o-down fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(170, 23, 'fa fa-arrow-circle-left', '<i class="fa fa-arrow-circle-left fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(171, 23, 'fa fa-arrow-circle-right', '<i class="fa fa-arrow-circle-right fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(172, 23, 'fa fa-arrow-circle-up', '<i class="fa fa-arrow-circle-up fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(173, 23, 'fa fa-arrow-circle-down', '<i class="fa fa-arrow-circle-down fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(174, 23, 'fa fa-globe', '<i class="fa fa-globe fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(175, 23, 'fa fa-wrench', '<i class="fa fa-wrench fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(176, 23, 'fa fa-tasks', '<i class="fa fa-tasks fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(177, 23, 'fa fa-filter', '<i class="fa fa-filter fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(178, 23, 'fa fa-briefcase', '<i class="fa fa-briefcase fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(179, 23, 'fa fa-arrows-alt', '<i class="fa fa-arrows-alt fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(180, 23, 'fa fa-users', '<i class="fa fa-users fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(181, 23, 'fa fa-link', '<i class="fa fa-link fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(182, 23, 'fa fa-cloud', '<i class="fa fa-cloud fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(183, 23, 'fa fa-flask', '<i class="fa fa-flask fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(184, 23, 'fa fa-scissors', '<i class="fa fa-scissors fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(185, 23, 'fa fa-files-o', '<i class="fa fa-files-o fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(186, 23, 'fa fa-paperclip', '<i class="fa fa-paperclip fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(187, 23, 'fa fa-floppy-o', '<i class="fa fa-floppy-o fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(188, 23, 'fa fa-square', '<i class="fa fa-square fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(189, 23, 'fa fa-bars', '<i class="fa fa-bars fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(190, 23, 'fa fa-list-ul', '<i class="fa fa-list-ul fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(191, 23, 'fa fa-list-ol', '<i class="fa fa-list-ol fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(192, 23, 'fa fa-strikethrough', '<i class="fa fa-strikethrough fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(193, 23, 'fa fa-underline', '<i class="fa fa-underline fa-2x"></i>', '2017-04-06 02:11:47', '2017-04-06 02:11:47'),
(194, 23, 'fa fa-table', '<i class="fa fa-table fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(195, 23, 'fa fa-magic', '<i class="fa fa-magic fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(196, 23, 'fa fa-truck', '<i class="fa fa-truck fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(197, 23, 'fa fa-pinterest', '<i class="fa fa-pinterest fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(198, 23, 'fa fa-pinterest-square', '<i class="fa fa-pinterest-square fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(199, 23, 'fa fa-google-plus-square', '<i class="fa fa-google-plus-square fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(200, 23, 'fa fa-google-plus', '<i class="fa fa-google-plus fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(201, 23, 'fa fa-money', '<i class="fa fa-money fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(202, 23, 'fa fa-caret-down', '<i class="fa fa-caret-down fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(203, 23, 'fa fa-caret-up', '<i class="fa fa-caret-up fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(204, 23, 'fa fa-caret-left', '<i class="fa fa-caret-left fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(205, 23, 'fa fa-caret-right', '<i class="fa fa-caret-right fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(206, 23, 'fa fa-columns', '<i class="fa fa-columns fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(207, 23, 'fa fa-sort', '<i class="fa fa-sort fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(208, 23, 'fa fa-sort-desc', '<i class="fa fa-sort-desc fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(209, 23, 'fa fa-sort-asc', '<i class="fa fa-sort-asc fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(210, 23, 'fa fa-envelope', '<i class="fa fa-envelope fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(211, 23, 'fa fa-linkedin', '<i class="fa fa-linkedin fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(212, 23, 'fa fa-undo', '<i class="fa fa-undo fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(213, 23, 'fa fa-gavel', '<i class="fa fa-gavel fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(214, 23, 'fa fa-tachometer', '<i class="fa fa-tachometer fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(215, 23, 'fa fa-comment-o', '<i class="fa fa-comment-o fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(216, 23, 'fa fa-comments-o', '<i class="fa fa-comments-o fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(217, 23, 'fa fa-bolt', '<i class="fa fa-bolt fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(218, 23, 'fa fa-sitemap', '<i class="fa fa-sitemap fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(219, 23, 'fa fa-umbrella', '<i class="fa fa-umbrella fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(220, 23, 'fa fa-clipboard', '<i class="fa fa-clipboard fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(221, 23, 'fa fa-lightbulb-o', '<i class="fa fa-lightbulb-o fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(222, 23, 'fa fa-exchange', '<i class="fa fa-exchange fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(223, 23, 'fa fa-cloud-download', '<i class="fa fa-cloud-download fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(224, 23, 'fa fa-cloud-upload', '<i class="fa fa-cloud-upload fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(225, 23, 'fa fa-user-md', '<i class="fa fa-user-md fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(226, 23, 'fa fa-stethoscope', '<i class="fa fa-stethoscope fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(227, 23, 'fa fa-suitcase', '<i class="fa fa-suitcase fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(228, 23, 'fa fa-bell-o', '<i class="fa fa-bell-o fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(229, 23, 'fa fa-coffee', '<i class="fa fa-coffee fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(230, 23, 'fa fa-cutlery', '<i class="fa fa-cutlery fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(231, 23, 'fa fa-file-text-o', '<i class="fa fa-file-text-o fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(232, 23, 'fa fa-building-o', '<i class="fa fa-building-o fa-2x"></i>', '2017-04-06 02:11:48', '2017-04-06 02:11:48'),
(233, 23, 'fa fa-hospital-o', '<i class="fa fa-hospital-o fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(234, 23, 'fa fa-ambulance', '<i class="fa fa-ambulance fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(235, 23, 'fa fa-medkit', '<i class="fa fa-medkit fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(236, 23, 'fa fa-fighter-jet', '<i class="fa fa-fighter-jet fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(237, 23, 'fa fa-beer', '<i class="fa fa-beer fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(238, 23, 'fa fa-h-square', '<i class="fa fa-h-square fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(239, 23, 'fa fa-plus-square', '<i class="fa fa-plus-square fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(240, 23, 'fa fa-angle-double-left', '<i class="fa fa-angle-double-left fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(241, 23, 'fa fa-angle-double-right', '<i class="fa fa-angle-double-right fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(242, 23, 'fa fa-angle-double-up', '<i class="fa fa-angle-double-up fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(243, 23, 'fa fa-angle-double-down', '<i class="fa fa-angle-double-down fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(244, 23, 'fa fa-angle-left', '<i class="fa fa-angle-left fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(245, 23, 'fa fa-angle-right', '<i class="fa fa-angle-right fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(246, 23, 'fa fa-angle-up', '<i class="fa fa-angle-up fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(247, 23, 'fa fa-angle-down', '<i class="fa fa-angle-down fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(248, 23, 'fa fa-desktop', '<i class="fa fa-desktop fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(249, 23, 'fa fa-laptop', '<i class="fa fa-laptop fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(250, 23, 'fa fa-tablet', '<i class="fa fa-tablet fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(251, 23, 'fa fa-mobile', '<i class="fa fa-mobile fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(252, 23, 'fa fa-circle-o', '<i class="fa fa-circle-o fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(253, 23, 'fa fa-quote-left', '<i class="fa fa-quote-left fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(254, 23, 'fa fa-quote-right', '<i class="fa fa-quote-right fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(255, 23, 'fa fa-spinner', '<i class="fa fa-spinner fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(256, 23, 'fa fa-circle', '<i class="fa fa-circle fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(257, 23, 'fa fa-reply', '<i class="fa fa-reply fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(258, 23, 'fa fa-github-alt', '<i class="fa fa-github-alt fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(259, 23, 'fa fa-folder-o', '<i class="fa fa-folder-o fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(260, 23, 'fa fa-folder-open-o', '<i class="fa fa-folder-open-o fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(261, 23, 'fa fa-smile-o', '<i class="fa fa-smile-o fa-2x"></i>', '2017-04-06 02:11:49', '2017-04-06 02:11:49'),
(262, 23, 'fa fa-frown-o', '<i class="fa fa-frown-o fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(263, 23, 'fa fa-meh-o', '<i class="fa fa-meh-o fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(264, 23, 'fa fa-gamepad', '<i class="fa fa-gamepad fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(265, 23, 'fa fa-keyboard-o', '<i class="fa fa-keyboard-o fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(266, 23, 'fa fa-flag-o', '<i class="fa fa-flag-o fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(267, 23, 'fa fa-flag-checkered', '<i class="fa fa-flag-checkered fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(268, 23, 'fa fa-terminal', '<i class="fa fa-terminal fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(269, 23, 'fa fa-code', '<i class="fa fa-code fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(270, 23, 'fa fa-reply-all', '<i class="fa fa-reply-all fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(271, 23, 'fa fa-star-half-o', '<i class="fa fa-star-half-o fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(272, 23, 'fa fa-location-arrow', '<i class="fa fa-location-arrow fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(273, 23, 'fa fa-crop', '<i class="fa fa-crop fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(274, 23, 'fa fa-code-fork', '<i class="fa fa-code-fork fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(275, 23, 'fa fa-chain-broken', '<i class="fa fa-chain-broken fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(276, 23, 'fa fa-question', '<i class="fa fa-question fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(277, 23, 'fa fa-info', '<i class="fa fa-info fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(278, 23, 'fa fa-exclamation', '<i class="fa fa-exclamation fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(279, 23, 'fa fa-superscript', '<i class="fa fa-superscript fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(280, 23, 'fa fa-subscript', '<i class="fa fa-subscript fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(281, 23, 'fa fa-eraser', '<i class="fa fa-eraser fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(282, 23, 'fa fa-puzzle-piece', '<i class="fa fa-puzzle-piece fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(283, 23, 'fa fa-microphone', '<i class="fa fa-microphone fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(284, 23, 'fa fa-microphone-slash', '<i class="fa fa-microphone-slash fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(285, 23, 'fa fa-shield', '<i class="fa fa-shield fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(286, 23, 'fa fa-calendar-o', '<i class="fa fa-calendar-o fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(287, 23, 'fa fa-fire-extinguisher', '<i class="fa fa-fire-extinguisher fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(288, 23, 'fa fa-rocket', '<i class="fa fa-rocket fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(289, 23, 'fa fa-maxcdn', '<i class="fa fa-maxcdn fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(290, 23, 'fa fa-chevron-circle-left', '<i class="fa fa-chevron-circle-left fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(291, 23, 'fa fa-chevron-circle-right', '<i class="fa fa-chevron-circle-right fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(292, 23, 'fa fa-chevron-circle-up', '<i class="fa fa-chevron-circle-up fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(293, 23, 'fa fa-chevron-circle-down', '<i class="fa fa-chevron-circle-down fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(294, 23, 'fa fa-html5', '<i class="fa fa-html5 fa-2x"></i>', '2017-04-06 02:11:50', '2017-04-06 02:11:50'),
(295, 23, 'fa fa-css3', '<i class="fa fa-css3 fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(296, 23, 'fa fa-anchor', '<i class="fa fa-anchor fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(297, 23, 'fa fa-unlock-alt', '<i class="fa fa-unlock-alt fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(298, 23, 'fa fa-bullseye', '<i class="fa fa-bullseye fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(299, 23, 'fa fa-ellipsis-h', '<i class="fa fa-ellipsis-h fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(300, 23, 'fa fa-ellipsis-v', '<i class="fa fa-ellipsis-v fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(301, 23, 'fa fa-rss-square', '<i class="fa fa-rss-square fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(302, 23, 'fa fa-play-circle', '<i class="fa fa-play-circle fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(303, 23, 'fa fa-ticket', '<i class="fa fa-ticket fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(304, 23, 'fa fa-minus-square', '<i class="fa fa-minus-square fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(305, 23, 'fa fa-minus-square-o', '<i class="fa fa-minus-square-o fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(306, 23, 'fa fa-level-up', '<i class="fa fa-level-up fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(307, 23, 'fa fa-level-down', '<i class="fa fa-level-down fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(308, 23, 'fa fa-check-square', '<i class="fa fa-check-square fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(309, 23, 'fa fa-pencil-square', '<i class="fa fa-pencil-square fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(310, 23, 'fa fa-external-link-square', '<i class="fa fa-external-link-square fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(311, 23, 'fa fa-share-square', '<i class="fa fa-share-square fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(312, 23, 'fa fa-compass', '<i class="fa fa-compass fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(313, 23, 'fa fa-caret-square-o-down', '<i class="fa fa-caret-square-o-down fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(314, 23, 'fa fa-caret-square-o-up', '<i class="fa fa-caret-square-o-up fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(315, 23, 'fa fa-caret-square-o-right', '<i class="fa fa-caret-square-o-right fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(316, 23, 'fa fa-eur', '<i class="fa fa-eur fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(317, 23, 'fa fa-gbp', '<i class="fa fa-gbp fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(318, 23, 'fa fa-usd', '<i class="fa fa-usd fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(319, 23, 'fa fa-inr', '<i class="fa fa-inr fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(320, 23, 'fa fa-jpy', '<i class="fa fa-jpy fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(321, 23, 'fa fa-rub', '<i class="fa fa-rub fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(322, 23, 'fa fa-krw', '<i class="fa fa-krw fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(323, 23, 'fa fa-btc', '<i class="fa fa-btc fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(324, 23, 'fa fa-file', '<i class="fa fa-file fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(325, 23, 'fa fa-file-text', '<i class="fa fa-file-text fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(326, 23, 'fa fa-sort-alpha-asc', '<i class="fa fa-sort-alpha-asc fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(327, 23, 'fa fa-sort-alpha-desc', '<i class="fa fa-sort-alpha-desc fa-2x"></i>', '2017-04-06 02:11:51', '2017-04-06 02:11:51'),
(328, 23, 'fa fa-sort-amount-asc', '<i class="fa fa-sort-amount-asc fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(329, 23, 'fa fa-sort-amount-desc', '<i class="fa fa-sort-amount-desc fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(330, 23, 'fa fa-sort-numeric-asc', '<i class="fa fa-sort-numeric-asc fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(331, 23, 'fa fa-sort-numeric-desc', '<i class="fa fa-sort-numeric-desc fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(332, 23, 'fa fa-thumbs-up', '<i class="fa fa-thumbs-up fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(333, 23, 'fa fa-thumbs-down', '<i class="fa fa-thumbs-down fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(334, 23, 'fa fa-youtube-square', '<i class="fa fa-youtube-square fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(335, 23, 'fa fa-youtube', '<i class="fa fa-youtube fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(336, 23, 'fa fa-xing', '<i class="fa fa-xing fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(337, 23, 'fa fa-xing-square', '<i class="fa fa-xing-square fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(338, 23, 'fa fa-youtube-play', '<i class="fa fa-youtube-play fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(339, 23, 'fa fa-dropbox', '<i class="fa fa-dropbox fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(340, 23, 'fa fa-stack-overflow', '<i class="fa fa-stack-overflow fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(341, 23, 'fa fa-instagram', '<i class="fa fa-instagram fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(342, 23, 'fa fa-flickr', '<i class="fa fa-flickr fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(343, 23, 'fa fa-adn', '<i class="fa fa-adn fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(344, 23, 'fa fa-bitbucket', '<i class="fa fa-bitbucket fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(345, 23, 'fa fa-bitbucket-square', '<i class="fa fa-bitbucket-square fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(346, 23, 'fa fa-tumblr', '<i class="fa fa-tumblr fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(347, 23, 'fa fa-tumblr-square', '<i class="fa fa-tumblr-square fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(348, 23, 'fa fa-long-arrow-down', '<i class="fa fa-long-arrow-down fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(349, 23, 'fa fa-long-arrow-up', '<i class="fa fa-long-arrow-up fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(350, 23, 'fa fa-long-arrow-left', '<i class="fa fa-long-arrow-left fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(351, 23, 'fa fa-long-arrow-right', '<i class="fa fa-long-arrow-right fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(352, 23, 'fa fa-apple', '<i class="fa fa-apple fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(353, 23, 'fa fa-windows', '<i class="fa fa-windows fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(354, 23, 'fa fa-android', '<i class="fa fa-android fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(355, 23, 'fa fa-linux', '<i class="fa fa-linux fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(356, 23, 'fa fa-dribbble', '<i class="fa fa-dribbble fa-2x"></i>', '2017-04-06 02:11:52', '2017-04-06 02:11:52'),
(357, 23, 'fa fa-skype', '<i class="fa fa-skype fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(358, 23, 'fa fa-foursquare', '<i class="fa fa-foursquare fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(359, 23, 'fa fa-trello', '<i class="fa fa-trello fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(360, 23, 'fa fa-female', '<i class="fa fa-female fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(361, 23, 'fa fa-male', '<i class="fa fa-male fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(362, 23, 'fa fa-gratipay', '<i class="fa fa-gratipay fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(363, 23, 'fa fa-sun-o', '<i class="fa fa-sun-o fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(364, 23, 'fa fa-moon-o', '<i class="fa fa-moon-o fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(365, 23, 'fa fa-archive', '<i class="fa fa-archive fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(366, 23, 'fa fa-bug', '<i class="fa fa-bug fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(367, 23, 'fa fa-vk', '<i class="fa fa-vk fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(368, 23, 'fa fa-weibo', '<i class="fa fa-weibo fa-2x"></i>', '2017-04-06 02:11:53', '2017-04-06 02:11:53'),
(369, 23, 'fa fa-renren', '<i class="fa fa-renren fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(370, 23, 'fa fa-pagelines', '<i class="fa fa-pagelines fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(371, 23, 'fa fa-stack-exchange', '<i class="fa fa-stack-exchange fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(372, 23, 'fa fa-arrow-circle-o-right', '<i class="fa fa-arrow-circle-o-right fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(373, 23, 'fa fa-arrow-circle-o-left', '<i class="fa fa-arrow-circle-o-left fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(374, 23, 'fa fa-caret-square-o-left', '<i class="fa fa-caret-square-o-left fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(375, 23, 'fa fa-dot-circle-o', '<i class="fa fa-dot-circle-o fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(376, 23, 'fa fa-wheelchair', '<i class="fa fa-wheelchair fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(377, 23, 'fa fa-vimeo-square', '<i class="fa fa-vimeo-square fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(378, 23, 'fa fa-try', '<i class="fa fa-try fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(379, 23, 'fa fa-plus-square-o', '<i class="fa fa-plus-square-o fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(380, 23, 'fa fa-space-shuttle', '<i class="fa fa-space-shuttle fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(381, 23, 'fa fa-slack', '<i class="fa fa-slack fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(382, 23, 'fa fa-envelope-square', '<i class="fa fa-envelope-square fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(383, 23, 'fa fa-wordpress', '<i class="fa fa-wordpress fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(384, 23, 'fa fa-openid', '<i class="fa fa-openid fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(385, 23, 'fa fa-university', '<i class="fa fa-university fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(386, 23, 'fa fa-graduation-cap', '<i class="fa fa-graduation-cap fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(387, 23, 'fa fa-yahoo', '<i class="fa fa-yahoo fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(388, 23, 'fa fa-google', '<i class="fa fa-google fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(389, 23, 'fa fa-reddit', '<i class="fa fa-reddit fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(390, 23, 'fa fa-reddit-square', '<i class="fa fa-reddit-square fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(391, 23, 'fa fa-stumbleupon-circle', '<i class="fa fa-stumbleupon-circle fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(392, 23, 'fa fa-stumbleupon', '<i class="fa fa-stumbleupon fa-2x"></i>', '2017-04-06 02:11:54', '2017-04-06 02:11:54'),
(393, 23, 'fa fa-delicious', '<i class="fa fa-delicious fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(394, 23, 'fa fa-digg', '<i class="fa fa-digg fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(395, 23, 'fa fa-pied-piper', '<i class="fa fa-pied-piper fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(396, 23, 'fa fa-pied-piper-alt', '<i class="fa fa-pied-piper-alt fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(397, 23, 'fa fa-drupal', '<i class="fa fa-drupal fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(398, 23, 'fa fa-joomla', '<i class="fa fa-joomla fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(399, 23, 'fa fa-language', '<i class="fa fa-language fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(400, 23, 'fa fa-fax', '<i class="fa fa-fax fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(401, 23, 'fa fa-building', '<i class="fa fa-building fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(402, 23, 'fa fa-child', '<i class="fa fa-child fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(403, 23, 'fa fa-paw', '<i class="fa fa-paw fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(404, 23, 'fa fa-spoon', '<i class="fa fa-spoon fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(405, 23, 'fa fa-cube', '<i class="fa fa-cube fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(406, 23, 'fa fa-cubes', '<i class="fa fa-cubes fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(407, 23, 'fa fa-behance', '<i class="fa fa-behance fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(408, 23, 'fa fa-behance-square', '<i class="fa fa-behance-square fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(409, 23, 'fa fa-steam', '<i class="fa fa-steam fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(410, 23, 'fa fa-steam-square', '<i class="fa fa-steam-square fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(411, 23, 'fa fa-recycle', '<i class="fa fa-recycle fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(412, 23, 'fa fa-car', '<i class="fa fa-car fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(413, 23, 'fa fa-taxi', '<i class="fa fa-taxi fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(414, 23, 'fa fa-tree', '<i class="fa fa-tree fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(415, 23, 'fa fa-spotify', '<i class="fa fa-spotify fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(416, 23, 'fa fa-deviantart', '<i class="fa fa-deviantart fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(417, 23, 'fa fa-soundcloud', '<i class="fa fa-soundcloud fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(418, 23, 'fa fa-database', '<i class="fa fa-database fa-2x"></i>', '2017-04-06 02:11:55', '2017-04-06 02:11:55'),
(419, 23, 'fa fa-file-pdf-o', '<i class="fa fa-file-pdf-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(420, 23, 'fa fa-file-word-o', '<i class="fa fa-file-word-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(421, 23, 'fa fa-file-excel-o', '<i class="fa fa-file-excel-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(422, 23, 'fa fa-file-powerpoint-o', '<i class="fa fa-file-powerpoint-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(423, 23, 'fa fa-file-image-o', '<i class="fa fa-file-image-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(424, 23, 'fa fa-file-archive-o', '<i class="fa fa-file-archive-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(425, 23, 'fa fa-file-audio-o', '<i class="fa fa-file-audio-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(426, 23, 'fa fa-file-video-o', '<i class="fa fa-file-video-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(427, 23, 'fa fa-file-code-o', '<i class="fa fa-file-code-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(428, 23, 'fa fa-vine', '<i class="fa fa-vine fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(429, 23, 'fa fa-codepen', '<i class="fa fa-codepen fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(430, 23, 'fa fa-jsfiddle', '<i class="fa fa-jsfiddle fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(431, 23, 'fa fa-life-ring', '<i class="fa fa-life-ring fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(432, 23, 'fa fa-circle-o-notch', '<i class="fa fa-circle-o-notch fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(433, 23, 'fa fa-rebel', '<i class="fa fa-rebel fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(434, 23, 'fa fa-empire', '<i class="fa fa-empire fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(435, 23, 'fa fa-git-square', '<i class="fa fa-git-square fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(436, 23, 'fa fa-git', '<i class="fa fa-git fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(437, 23, 'fa fa-hacker-news', '<i class="fa fa-hacker-news fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(438, 23, 'fa fa-tencent-weibo', '<i class="fa fa-tencent-weibo fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(439, 23, 'fa fa-qq', '<i class="fa fa-qq fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56');
INSERT INTO `block_selectopts` (`id`, `block_id`, `option`, `value`, `created_at`, `updated_at`) VALUES
(440, 23, 'fa fa-weixin', '<i class="fa fa-weixin fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(441, 23, 'fa fa-paper-plane', '<i class="fa fa-paper-plane fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(442, 23, 'fa fa-paper-plane-o', '<i class="fa fa-paper-plane-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(443, 23, 'fa fa-history', '<i class="fa fa-history fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(444, 23, 'fa fa-circle-thin', '<i class="fa fa-circle-thin fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(445, 23, 'fa fa-header', '<i class="fa fa-header fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(446, 23, 'fa fa-paragraph', '<i class="fa fa-paragraph fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(447, 23, 'fa fa-sliders', '<i class="fa fa-sliders fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(448, 23, 'fa fa-share-alt', '<i class="fa fa-share-alt fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(449, 23, 'fa fa-share-alt-square', '<i class="fa fa-share-alt-square fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(450, 23, 'fa fa-bomb', '<i class="fa fa-bomb fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(451, 23, 'fa fa-futbol-o', '<i class="fa fa-futbol-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(452, 23, 'fa fa-tty', '<i class="fa fa-tty fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(453, 23, 'fa fa-binoculars', '<i class="fa fa-binoculars fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(454, 23, 'fa fa-plug', '<i class="fa fa-plug fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(455, 23, 'fa fa-slideshare', '<i class="fa fa-slideshare fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(456, 23, 'fa fa-twitch', '<i class="fa fa-twitch fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(457, 23, 'fa fa-yelp', '<i class="fa fa-yelp fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(458, 23, 'fa fa-newspaper-o', '<i class="fa fa-newspaper-o fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(459, 23, 'fa fa-wifi', '<i class="fa fa-wifi fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(460, 23, 'fa fa-calculator', '<i class="fa fa-calculator fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(461, 23, 'fa fa-paypal', '<i class="fa fa-paypal fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(462, 23, 'fa fa-google-wallet', '<i class="fa fa-google-wallet fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(463, 23, 'fa fa-cc-visa', '<i class="fa fa-cc-visa fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(464, 23, 'fa fa-cc-mastercard', '<i class="fa fa-cc-mastercard fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(465, 23, 'fa fa-cc-discover', '<i class="fa fa-cc-discover fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(466, 23, 'fa fa-cc-amex', '<i class="fa fa-cc-amex fa-2x"></i>', '2017-04-06 02:11:56', '2017-04-06 02:11:56'),
(467, 23, 'fa fa-cc-paypal', '<i class="fa fa-cc-paypal fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(468, 23, 'fa fa-cc-stripe', '<i class="fa fa-cc-stripe fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(469, 23, 'fa fa-bell-slash', '<i class="fa fa-bell-slash fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(470, 23, 'fa fa-bell-slash-o', '<i class="fa fa-bell-slash-o fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(471, 23, 'fa fa-trash', '<i class="fa fa-trash fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(472, 23, 'fa fa-copyright', '<i class="fa fa-copyright fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(473, 23, 'fa fa-at', '<i class="fa fa-at fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(474, 23, 'fa fa-eyedropper', '<i class="fa fa-eyedropper fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(475, 23, 'fa fa-paint-brush', '<i class="fa fa-paint-brush fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(476, 23, 'fa fa-birthday-cake', '<i class="fa fa-birthday-cake fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(477, 23, 'fa fa-area-chart', '<i class="fa fa-area-chart fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(478, 23, 'fa fa-pie-chart', '<i class="fa fa-pie-chart fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(479, 23, 'fa fa-line-chart', '<i class="fa fa-line-chart fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(480, 23, 'fa fa-lastfm', '<i class="fa fa-lastfm fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(481, 23, 'fa fa-lastfm-square', '<i class="fa fa-lastfm-square fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(482, 23, 'fa fa-toggle-off', '<i class="fa fa-toggle-off fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(483, 23, 'fa fa-toggle-on', '<i class="fa fa-toggle-on fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(484, 23, 'fa fa-bicycle', '<i class="fa fa-bicycle fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(485, 23, 'fa fa-bus', '<i class="fa fa-bus fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(486, 23, 'fa fa-ioxhost', '<i class="fa fa-ioxhost fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(487, 23, 'fa fa-angellist', '<i class="fa fa-angellist fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(488, 23, 'fa fa-cc', '<i class="fa fa-cc fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(489, 23, 'fa fa-ils', '<i class="fa fa-ils fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(490, 23, 'fa fa-meanpath', '<i class="fa fa-meanpath fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(491, 23, 'fa fa-buysellads', '<i class="fa fa-buysellads fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(492, 23, 'fa fa-connectdevelop', '<i class="fa fa-connectdevelop fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(493, 23, 'fa fa-dashcube', '<i class="fa fa-dashcube fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(494, 23, 'fa fa-forumbee', '<i class="fa fa-forumbee fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(495, 23, 'fa fa-leanpub', '<i class="fa fa-leanpub fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(496, 23, 'fa fa-sellsy', '<i class="fa fa-sellsy fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(497, 23, 'fa fa-shirtsinbulk', '<i class="fa fa-shirtsinbulk fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(498, 23, 'fa fa-simplybuilt', '<i class="fa fa-simplybuilt fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(499, 23, 'fa fa-skyatlas', '<i class="fa fa-skyatlas fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(500, 23, 'fa fa-cart-plus', '<i class="fa fa-cart-plus fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(501, 23, 'fa fa-cart-arrow-down', '<i class="fa fa-cart-arrow-down fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(502, 23, 'fa fa-diamond', '<i class="fa fa-diamond fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(503, 23, 'fa fa-ship', '<i class="fa fa-ship fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(504, 23, 'fa fa-user-secret', '<i class="fa fa-user-secret fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(505, 23, 'fa fa-motorcycle', '<i class="fa fa-motorcycle fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(506, 23, 'fa fa-street-view', '<i class="fa fa-street-view fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(507, 23, 'fa fa-heartbeat', '<i class="fa fa-heartbeat fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(508, 23, 'fa fa-venus', '<i class="fa fa-venus fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(509, 23, 'fa fa-mars', '<i class="fa fa-mars fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(510, 23, 'fa fa-mercury', '<i class="fa fa-mercury fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(511, 23, 'fa fa-transgender', '<i class="fa fa-transgender fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(512, 23, 'fa fa-transgender-alt', '<i class="fa fa-transgender-alt fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(513, 23, 'fa fa-venus-double', '<i class="fa fa-venus-double fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(514, 23, 'fa fa-mars-double', '<i class="fa fa-mars-double fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(515, 23, 'fa fa-venus-mars', '<i class="fa fa-venus-mars fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(516, 23, 'fa fa-mars-stroke', '<i class="fa fa-mars-stroke fa-2x"></i>', '2017-04-06 02:11:57', '2017-04-06 02:11:57'),
(517, 23, 'fa fa-mars-stroke-v', '<i class="fa fa-mars-stroke-v fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(518, 23, 'fa fa-mars-stroke-h', '<i class="fa fa-mars-stroke-h fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(519, 23, 'fa fa-neuter', '<i class="fa fa-neuter fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(520, 23, 'fa fa-genderless', '<i class="fa fa-genderless fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(521, 23, 'fa fa-facebook-official', '<i class="fa fa-facebook-official fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(522, 23, 'fa fa-pinterest-p', '<i class="fa fa-pinterest-p fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(523, 23, 'fa fa-whatsapp', '<i class="fa fa-whatsapp fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(524, 23, 'fa fa-server', '<i class="fa fa-server fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(525, 23, 'fa fa-user-plus', '<i class="fa fa-user-plus fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(526, 23, 'fa fa-user-times', '<i class="fa fa-user-times fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(527, 23, 'fa fa-bed', '<i class="fa fa-bed fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(528, 23, 'fa fa-viacoin', '<i class="fa fa-viacoin fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(529, 23, 'fa fa-train', '<i class="fa fa-train fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(530, 23, 'fa fa-subway', '<i class="fa fa-subway fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(531, 23, 'fa fa-medium', '<i class="fa fa-medium fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(532, 23, 'fa fa-y-combinator', '<i class="fa fa-y-combinator fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(533, 23, 'fa fa-optin-monster', '<i class="fa fa-optin-monster fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(534, 23, 'fa fa-opencart', '<i class="fa fa-opencart fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(535, 23, 'fa fa-expeditedssl', '<i class="fa fa-expeditedssl fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(536, 23, 'fa fa-battery-full', '<i class="fa fa-battery-full fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(537, 23, 'fa fa-battery-three-quarters', '<i class="fa fa-battery-three-quarters fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(538, 23, 'fa fa-battery-half', '<i class="fa fa-battery-half fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(539, 23, 'fa fa-battery-quarter', '<i class="fa fa-battery-quarter fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(540, 23, 'fa fa-battery-empty', '<i class="fa fa-battery-empty fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(541, 23, 'fa fa-mouse-pointer', '<i class="fa fa-mouse-pointer fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(542, 23, 'fa fa-i-cursor', '<i class="fa fa-i-cursor fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(543, 23, 'fa fa-object-group', '<i class="fa fa-object-group fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(544, 23, 'fa fa-object-ungroup', '<i class="fa fa-object-ungroup fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(545, 23, 'fa fa-sticky-note', '<i class="fa fa-sticky-note fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(546, 23, 'fa fa-sticky-note-o', '<i class="fa fa-sticky-note-o fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(547, 23, 'fa fa-cc-jcb', '<i class="fa fa-cc-jcb fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(548, 23, 'fa fa-cc-diners-club', '<i class="fa fa-cc-diners-club fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(549, 23, 'fa fa-clone', '<i class="fa fa-clone fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(550, 23, 'fa fa-balance-scale', '<i class="fa fa-balance-scale fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(551, 23, 'fa fa-hourglass-o', '<i class="fa fa-hourglass-o fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(552, 23, 'fa fa-hourglass-start', '<i class="fa fa-hourglass-start fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(553, 23, 'fa fa-hourglass-half', '<i class="fa fa-hourglass-half fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(554, 23, 'fa fa-hourglass-end', '<i class="fa fa-hourglass-end fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(555, 23, 'fa fa-hourglass', '<i class="fa fa-hourglass fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(556, 23, 'fa fa-hand-rock-o', '<i class="fa fa-hand-rock-o fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(557, 23, 'fa fa-hand-paper-o', '<i class="fa fa-hand-paper-o fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(558, 23, 'fa fa-hand-scissors-o', '<i class="fa fa-hand-scissors-o fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(559, 23, 'fa fa-hand-lizard-o', '<i class="fa fa-hand-lizard-o fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(560, 23, 'fa fa-hand-spock-o', '<i class="fa fa-hand-spock-o fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(561, 23, 'fa fa-hand-pointer-o', '<i class="fa fa-hand-pointer-o fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(562, 23, 'fa fa-hand-peace-o', '<i class="fa fa-hand-peace-o fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(563, 23, 'fa fa-trademark', '<i class="fa fa-trademark fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(564, 23, 'fa fa-registered', '<i class="fa fa-registered fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(565, 23, 'fa fa-creative-commons', '<i class="fa fa-creative-commons fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(566, 23, 'fa fa-gg', '<i class="fa fa-gg fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(567, 23, 'fa fa-gg-circle', '<i class="fa fa-gg-circle fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(568, 23, 'fa fa-tripadvisor', '<i class="fa fa-tripadvisor fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(569, 23, 'fa fa-odnoklassniki', '<i class="fa fa-odnoklassniki fa-2x"></i>', '2017-04-06 02:11:58', '2017-04-06 02:11:58'),
(570, 23, 'fa fa-odnoklassniki-square', '<i class="fa fa-odnoklassniki-square fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(571, 23, 'fa fa-get-pocket', '<i class="fa fa-get-pocket fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(572, 23, 'fa fa-wikipedia-w', '<i class="fa fa-wikipedia-w fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(573, 23, 'fa fa-safari', '<i class="fa fa-safari fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(574, 23, 'fa fa-chrome', '<i class="fa fa-chrome fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(575, 23, 'fa fa-firefox', '<i class="fa fa-firefox fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(576, 23, 'fa fa-opera', '<i class="fa fa-opera fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(577, 23, 'fa fa-internet-explorer', '<i class="fa fa-internet-explorer fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(578, 23, 'fa fa-television', '<i class="fa fa-television fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(579, 23, 'fa fa-contao', '<i class="fa fa-contao fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(580, 23, 'fa fa-500px', '<i class="fa fa-500px fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(581, 23, 'fa fa-amazon', '<i class="fa fa-amazon fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(582, 23, 'fa fa-calendar-plus-o', '<i class="fa fa-calendar-plus-o fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(583, 23, 'fa fa-calendar-minus-o', '<i class="fa fa-calendar-minus-o fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(584, 23, 'fa fa-calendar-times-o', '<i class="fa fa-calendar-times-o fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(585, 23, 'fa fa-calendar-check-o', '<i class="fa fa-calendar-check-o fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(586, 23, 'fa fa-industry', '<i class="fa fa-industry fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(587, 23, 'fa fa-map-pin', '<i class="fa fa-map-pin fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(588, 23, 'fa fa-map-signs', '<i class="fa fa-map-signs fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(589, 23, 'fa fa-map-o', '<i class="fa fa-map-o fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(590, 23, 'fa fa-map', '<i class="fa fa-map fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(591, 23, 'fa fa-commenting', '<i class="fa fa-commenting fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(592, 23, 'fa fa-commenting-o', '<i class="fa fa-commenting-o fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(593, 23, 'fa fa-houzz', '<i class="fa fa-houzz fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(594, 23, 'fa fa-vimeo', '<i class="fa fa-vimeo fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(595, 23, 'fa fa-black-tie', '<i class="fa fa-black-tie fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(596, 23, 'fa fa-fonticons', '<i class="fa fa-fonticons fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(597, 23, 'fa fa-reddit-alien', '<i class="fa fa-reddit-alien fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(598, 23, 'fa fa-edge', '<i class="fa fa-edge fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(599, 23, 'fa fa-credit-card-alt', '<i class="fa fa-credit-card-alt fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(600, 23, 'fa fa-codiepie', '<i class="fa fa-codiepie fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(601, 23, 'fa fa-modx', '<i class="fa fa-modx fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(602, 23, 'fa fa-fort-awesome', '<i class="fa fa-fort-awesome fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(603, 23, 'fa fa-usb', '<i class="fa fa-usb fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(604, 23, 'fa fa-product-hunt', '<i class="fa fa-product-hunt fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(605, 23, 'fa fa-mixcloud', '<i class="fa fa-mixcloud fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(606, 23, 'fa fa-scribd', '<i class="fa fa-scribd fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(607, 23, 'fa fa-pause-circle', '<i class="fa fa-pause-circle fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(608, 23, 'fa fa-pause-circle-o', '<i class="fa fa-pause-circle-o fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(609, 23, 'fa fa-stop-circle', '<i class="fa fa-stop-circle fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(610, 23, 'fa fa-stop-circle-o', '<i class="fa fa-stop-circle-o fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(611, 23, 'fa fa-shopping-bag', '<i class="fa fa-shopping-bag fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(612, 23, 'fa fa-shopping-basket', '<i class="fa fa-shopping-basket fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(613, 23, 'fa fa-hashtag', '<i class="fa fa-hashtag fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(614, 23, 'fa fa-bluetooth', '<i class="fa fa-bluetooth fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(615, 23, 'fa fa-bluetooth-b', '<i class="fa fa-bluetooth-b fa-2x"></i>', '2017-04-06 02:11:59', '2017-04-06 02:11:59'),
(616, 23, 'fa fa-percent', '<i class="fa fa-percent fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(617, 23, 'fa fa-gitlab', '<i class="fa fa-gitlab fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(618, 23, 'fa fa-wpbeginner', '<i class="fa fa-wpbeginner fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(619, 23, 'fa fa-wpforms', '<i class="fa fa-wpforms fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(620, 23, 'fa fa-envira', '<i class="fa fa-envira fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(621, 23, 'fa fa-universal-access', '<i class="fa fa-universal-access fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(622, 23, 'fa fa-wheelchair-alt', '<i class="fa fa-wheelchair-alt fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(623, 23, 'fa fa-question-circle-o', '<i class="fa fa-question-circle-o fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(624, 23, 'fa fa-blind', '<i class="fa fa-blind fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(625, 23, 'fa fa-audio-description', '<i class="fa fa-audio-description fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(626, 23, 'fa fa-volume-control-phone', '<i class="fa fa-volume-control-phone fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(627, 23, 'fa fa-braille', '<i class="fa fa-braille fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(628, 23, 'fa fa-assistive-listening-systems', '<i class="fa fa-assistive-listening-systems fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(629, 23, 'fa fa-american-sign-language-interpreting', '<i class="fa fa-american-sign-language-interpreting fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(630, 23, 'fa fa-deaf', '<i class="fa fa-deaf fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(631, 23, 'fa fa-glide', '<i class="fa fa-glide fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(632, 23, 'fa fa-glide-g', '<i class="fa fa-glide-g fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(633, 23, 'fa fa-sign-language', '<i class="fa fa-sign-language fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(634, 23, 'fa fa-low-vision', '<i class="fa fa-low-vision fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(635, 23, 'fa fa-viadeo', '<i class="fa fa-viadeo fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(636, 23, 'fa fa-viadeo-square', '<i class="fa fa-viadeo-square fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(637, 23, 'fa fa-snapchat', '<i class="fa fa-snapchat fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(638, 23, 'fa fa-snapchat-ghost', '<i class="fa fa-snapchat-ghost fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(639, 23, 'fa fa-snapchat-square', '<i class="fa fa-snapchat-square fa-2x"></i>', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(640, 27, 'Laravel', 'Laravel', '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(641, 27, 'Innovation', 'Innovation', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(642, 27, 'Cms', 'Cms', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(643, 27, 'Coaster', 'Coaster', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(644, 41, 'fa fa-signal', '<i class="fa fa-signal fa-2x"></i>', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(645, 41, 'fa fa-glass', '<i class="fa fa-glass fa-2x"></i>', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(646, 41, 'fa fa-music', '<i class="fa fa-music fa-2x"></i>', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(647, 41, 'fa fa-search', '<i class="fa fa-search fa-2x"></i>', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(648, 41, 'fa fa-envelope-o', '<i class="fa fa-envelope-o fa-2x"></i>', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(649, 41, 'fa fa-heart', '<i class="fa fa-heart fa-2x"></i>', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(650, 41, 'fa fa-star', '<i class="fa fa-star fa-2x"></i>', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(651, 41, 'fa fa-star-o', '<i class="fa fa-star-o fa-2x"></i>', '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(652, 41, 'fa fa-user', '<i class="fa fa-user fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(653, 41, 'fa fa-film', '<i class="fa fa-film fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(654, 41, 'fa fa-th-large', '<i class="fa fa-th-large fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(655, 41, 'fa fa-th', '<i class="fa fa-th fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(656, 41, 'fa fa-th-list', '<i class="fa fa-th-list fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(657, 41, 'fa fa-check', '<i class="fa fa-check fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(658, 41, 'fa fa-times', '<i class="fa fa-times fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(659, 41, 'fa fa-search-plus', '<i class="fa fa-search-plus fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(660, 41, 'fa fa-search-minus', '<i class="fa fa-search-minus fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(661, 41, 'fa fa-power-off', '<i class="fa fa-power-off fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(662, 41, 'fa fa-cog', '<i class="fa fa-cog fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(663, 41, 'fa fa-trash-o', '<i class="fa fa-trash-o fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(664, 41, 'fa fa-home', '<i class="fa fa-home fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(665, 41, 'fa fa-file-o', '<i class="fa fa-file-o fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(666, 41, 'fa fa-clock-o', '<i class="fa fa-clock-o fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(667, 41, 'fa fa-road', '<i class="fa fa-road fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(668, 41, 'fa fa-download', '<i class="fa fa-download fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(669, 41, 'fa fa-arrow-circle-o-down', '<i class="fa fa-arrow-circle-o-down fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(670, 41, 'fa fa-arrow-circle-o-up', '<i class="fa fa-arrow-circle-o-up fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(671, 41, 'fa fa-inbox', '<i class="fa fa-inbox fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(672, 41, 'fa fa-play-circle-o', '<i class="fa fa-play-circle-o fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(673, 41, 'fa fa-repeat', '<i class="fa fa-repeat fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(674, 41, 'fa fa-refresh', '<i class="fa fa-refresh fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(675, 41, 'fa fa-list-alt', '<i class="fa fa-list-alt fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(676, 41, 'fa fa-lock', '<i class="fa fa-lock fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(677, 41, 'fa fa-flag', '<i class="fa fa-flag fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(678, 41, 'fa fa-headphones', '<i class="fa fa-headphones fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(679, 41, 'fa fa-volume-off', '<i class="fa fa-volume-off fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(680, 41, 'fa fa-volume-down', '<i class="fa fa-volume-down fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(681, 41, 'fa fa-volume-up', '<i class="fa fa-volume-up fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(682, 41, 'fa fa-qrcode', '<i class="fa fa-qrcode fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(683, 41, 'fa fa-barcode', '<i class="fa fa-barcode fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(684, 41, 'fa fa-tag', '<i class="fa fa-tag fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(685, 41, 'fa fa-tags', '<i class="fa fa-tags fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(686, 41, 'fa fa-book', '<i class="fa fa-book fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(687, 41, 'fa fa-bookmark', '<i class="fa fa-bookmark fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(688, 41, 'fa fa-print', '<i class="fa fa-print fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(689, 41, 'fa fa-camera', '<i class="fa fa-camera fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(690, 41, 'fa fa-font', '<i class="fa fa-font fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(691, 41, 'fa fa-bold', '<i class="fa fa-bold fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(692, 41, 'fa fa-italic', '<i class="fa fa-italic fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(693, 41, 'fa fa-text-height', '<i class="fa fa-text-height fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(694, 41, 'fa fa-text-width', '<i class="fa fa-text-width fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(695, 41, 'fa fa-align-left', '<i class="fa fa-align-left fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(696, 41, 'fa fa-align-center', '<i class="fa fa-align-center fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(697, 41, 'fa fa-align-right', '<i class="fa fa-align-right fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(698, 41, 'fa fa-align-justify', '<i class="fa fa-align-justify fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(699, 41, 'fa fa-list', '<i class="fa fa-list fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(700, 41, 'fa fa-outdent', '<i class="fa fa-outdent fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(701, 41, 'fa fa-indent', '<i class="fa fa-indent fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(702, 41, 'fa fa-video-camera', '<i class="fa fa-video-camera fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(703, 41, 'fa fa-picture-o', '<i class="fa fa-picture-o fa-2x"></i>', '2017-04-06 02:12:02', '2017-04-06 02:12:02'),
(704, 41, 'fa fa-pencil', '<i class="fa fa-pencil fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(705, 41, 'fa fa-map-marker', '<i class="fa fa-map-marker fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(706, 41, 'fa fa-adjust', '<i class="fa fa-adjust fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(707, 41, 'fa fa-tint', '<i class="fa fa-tint fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(708, 41, 'fa fa-pencil-square-o', '<i class="fa fa-pencil-square-o fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(709, 41, 'fa fa-share-square-o', '<i class="fa fa-share-square-o fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(710, 41, 'fa fa-check-square-o', '<i class="fa fa-check-square-o fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(711, 41, 'fa fa-arrows', '<i class="fa fa-arrows fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(712, 41, 'fa fa-step-backward', '<i class="fa fa-step-backward fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(713, 41, 'fa fa-fast-backward', '<i class="fa fa-fast-backward fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(714, 41, 'fa fa-backward', '<i class="fa fa-backward fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(715, 41, 'fa fa-play', '<i class="fa fa-play fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(716, 41, 'fa fa-pause', '<i class="fa fa-pause fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(717, 41, 'fa fa-stop', '<i class="fa fa-stop fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(718, 41, 'fa fa-forward', '<i class="fa fa-forward fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(719, 41, 'fa fa-fast-forward', '<i class="fa fa-fast-forward fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(720, 41, 'fa fa-step-forward', '<i class="fa fa-step-forward fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(721, 41, 'fa fa-eject', '<i class="fa fa-eject fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(722, 41, 'fa fa-chevron-left', '<i class="fa fa-chevron-left fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(723, 41, 'fa fa-chevron-right', '<i class="fa fa-chevron-right fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(724, 41, 'fa fa-plus-circle', '<i class="fa fa-plus-circle fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(725, 41, 'fa fa-minus-circle', '<i class="fa fa-minus-circle fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(726, 41, 'fa fa-times-circle', '<i class="fa fa-times-circle fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(727, 41, 'fa fa-check-circle', '<i class="fa fa-check-circle fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(728, 41, 'fa fa-question-circle', '<i class="fa fa-question-circle fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(729, 41, 'fa fa-info-circle', '<i class="fa fa-info-circle fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(730, 41, 'fa fa-crosshairs', '<i class="fa fa-crosshairs fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(731, 41, 'fa fa-times-circle-o', '<i class="fa fa-times-circle-o fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(732, 41, 'fa fa-check-circle-o', '<i class="fa fa-check-circle-o fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(733, 41, 'fa fa-ban', '<i class="fa fa-ban fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(734, 41, 'fa fa-arrow-left', '<i class="fa fa-arrow-left fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(735, 41, 'fa fa-arrow-right', '<i class="fa fa-arrow-right fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(736, 41, 'fa fa-arrow-up', '<i class="fa fa-arrow-up fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(737, 41, 'fa fa-arrow-down', '<i class="fa fa-arrow-down fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(738, 41, 'fa fa-share', '<i class="fa fa-share fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(739, 41, 'fa fa-expand', '<i class="fa fa-expand fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(740, 41, 'fa fa-compress', '<i class="fa fa-compress fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(741, 41, 'fa fa-plus', '<i class="fa fa-plus fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(742, 41, 'fa fa-minus', '<i class="fa fa-minus fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(743, 41, 'fa fa-asterisk', '<i class="fa fa-asterisk fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(744, 41, 'fa fa-exclamation-circle', '<i class="fa fa-exclamation-circle fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(745, 41, 'fa fa-gift', '<i class="fa fa-gift fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(746, 41, 'fa fa-leaf', '<i class="fa fa-leaf fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(747, 41, 'fa fa-fire', '<i class="fa fa-fire fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(748, 41, 'fa fa-eye', '<i class="fa fa-eye fa-2x"></i>', '2017-04-06 02:12:03', '2017-04-06 02:12:03'),
(749, 41, 'fa fa-eye-slash', '<i class="fa fa-eye-slash fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(750, 41, 'fa fa-exclamation-triangle', '<i class="fa fa-exclamation-triangle fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(751, 41, 'fa fa-plane', '<i class="fa fa-plane fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(752, 41, 'fa fa-calendar', '<i class="fa fa-calendar fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(753, 41, 'fa fa-random', '<i class="fa fa-random fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(754, 41, 'fa fa-comment', '<i class="fa fa-comment fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(755, 41, 'fa fa-magnet', '<i class="fa fa-magnet fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(756, 41, 'fa fa-chevron-up', '<i class="fa fa-chevron-up fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(757, 41, 'fa fa-chevron-down', '<i class="fa fa-chevron-down fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(758, 41, 'fa fa-retweet', '<i class="fa fa-retweet fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(759, 41, 'fa fa-shopping-cart', '<i class="fa fa-shopping-cart fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(760, 41, 'fa fa-folder', '<i class="fa fa-folder fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(761, 41, 'fa fa-folder-open', '<i class="fa fa-folder-open fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(762, 41, 'fa fa-arrows-v', '<i class="fa fa-arrows-v fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(763, 41, 'fa fa-arrows-h', '<i class="fa fa-arrows-h fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(764, 41, 'fa fa-bar-chart', '<i class="fa fa-bar-chart fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(765, 41, 'fa fa-twitter-square', '<i class="fa fa-twitter-square fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(766, 41, 'fa fa-facebook-square', '<i class="fa fa-facebook-square fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(767, 41, 'fa fa-camera-retro', '<i class="fa fa-camera-retro fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(768, 41, 'fa fa-key', '<i class="fa fa-key fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(769, 41, 'fa fa-cogs', '<i class="fa fa-cogs fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(770, 41, 'fa fa-comments', '<i class="fa fa-comments fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(771, 41, 'fa fa-thumbs-o-up', '<i class="fa fa-thumbs-o-up fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(772, 41, 'fa fa-thumbs-o-down', '<i class="fa fa-thumbs-o-down fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(773, 41, 'fa fa-star-half', '<i class="fa fa-star-half fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(774, 41, 'fa fa-heart-o', '<i class="fa fa-heart-o fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(775, 41, 'fa fa-sign-out', '<i class="fa fa-sign-out fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(776, 41, 'fa fa-linkedin-square', '<i class="fa fa-linkedin-square fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(777, 41, 'fa fa-thumb-tack', '<i class="fa fa-thumb-tack fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(778, 41, 'fa fa-external-link', '<i class="fa fa-external-link fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(779, 41, 'fa fa-sign-in', '<i class="fa fa-sign-in fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(780, 41, 'fa fa-trophy', '<i class="fa fa-trophy fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(781, 41, 'fa fa-github-square', '<i class="fa fa-github-square fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04'),
(782, 41, 'fa fa-upload', '<i class="fa fa-upload fa-2x"></i>', '2017-04-06 02:12:04', '2017-04-06 02:12:04');

-- --------------------------------------------------------

--
-- Table structure for table `block_video_cache`
--

CREATE TABLE IF NOT EXISTS `block_video_cache` (
`id` int(10) unsigned NOT NULL,
  `videoId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `videoInfo` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
`id` bigint(20) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2017-05-01 14:51:37', '2017-05-01 14:51:37'),
(2, 1, '2017-05-01 16:37:38', '2017-05-01 16:37:38'),
(8, 10, '2017-05-02 22:51:34', '2017-05-02 22:51:34'),
(9, 11, '2017-05-09 12:11:06', '2017-05-09 12:11:06');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
`id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(20,2) DEFAULT NULL,
  `discount` decimal(3,2) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `expires_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_submissions`
--

CREATE TABLE IF NOT EXISTS `form_submissions` (
`id` int(10) unsigned NOT NULL,
  `form_block_id` int(11) NOT NULL,
  `from_page_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sent` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `form_submissions`
--

INSERT INTO `form_submissions` (`id`, `form_block_id`, `from_page_id`, `content`, `sent`, `created_at`, `updated_at`) VALUES
(1, 33, 3, 'a:3:{s:4:"name";s:4:"dfdf";s:5:"email";s:19:"gayathma3@gmail.com";s:7:"message";s:4:"ccsc";}', 0, '2017-03-28 11:55:40', '2017-03-28 11:55:40'),
(2, 33, 3, 'a:3:{s:4:"name";s:6:"fsdfdf";s:5:"email";s:19:"gayathma3@gmail.com";s:7:"message";s:7:"fsfdfff";}', 0, '2017-03-28 12:33:41', '2017-03-28 12:33:41');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` bigint(20) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `cart_id` bigint(20) unsigned DEFAULT NULL,
  `order_id` bigint(20) unsigned DEFAULT NULL,
  `size_id` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `tax` decimal(20,2) NOT NULL DEFAULT '0.00',
  `shipping` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `user_id`, `cart_id`, `order_id`, `size_id`, `sku`, `price`, `tax`, `shipping`, `currency`, `quantity`, `class`, `reference_id`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 3, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 15:15:52', '2017-05-01 15:15:52'),
(2, 3, NULL, 3, 2, 'Training', '49.98', '0.00', '0.00', 'GBP', 2, 'App\\MyCustomProduct', '1', '2017-05-01 15:15:52', '2017-05-01 15:15:52'),
(3, 3, NULL, 4, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 15:16:50', '2017-05-01 15:16:50'),
(4, 3, NULL, 4, 2, 'Training', '49.98', '0.00', '0.00', 'GBP', 2, 'App\\MyCustomProduct', '1', '2017-05-01 15:16:50', '2017-05-01 15:16:50'),
(5, 1, NULL, 5, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:37:38', '2017-05-01 16:37:38'),
(6, 1, NULL, 6, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:37:56', '2017-05-01 16:37:56'),
(7, 1, NULL, 7, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:38:54', '2017-05-01 16:38:54'),
(8, 1, NULL, 8, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:39:16', '2017-05-01 16:39:16'),
(9, 1, NULL, 9, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:42:35', '2017-05-01 16:42:35'),
(10, 1, NULL, 10, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:44:32', '2017-05-01 16:44:32'),
(11, 1, NULL, 11, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:45:46', '2017-05-01 16:45:46'),
(12, 1, NULL, 12, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:46:58', '2017-05-01 16:46:58'),
(13, 1, NULL, 13, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:48:03', '2017-05-01 16:48:03'),
(14, 1, NULL, 14, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:48:52', '2017-05-01 16:48:52'),
(15, 1, NULL, 15, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:50:43', '2017-05-01 16:50:43'),
(16, 1, NULL, 16, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:52:11', '2017-05-01 16:52:11'),
(17, 1, NULL, 17, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 16:52:52', '2017-05-01 16:52:52'),
(18, 1, NULL, 18, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 17:07:46', '2017-05-01 17:07:46'),
(19, 1, NULL, 19, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 17:08:40', '2017-05-01 17:08:40'),
(20, 1, NULL, 20, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 17:09:50', '2017-05-01 17:09:50'),
(21, 1, NULL, 21, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 17:10:50', '2017-05-01 17:10:50'),
(22, 1, NULL, 22, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 17:11:14', '2017-05-01 17:11:14'),
(23, 1, NULL, 23, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-01 17:12:11', '2017-05-01 17:12:11'),
(24, 1, NULL, 24, 1, 'Training', '49.98', '0.00', '0.00', 'GBP', 2, 'App\\MyCustomProduct', '1', '2017-05-01 23:09:55', '2017-05-01 23:09:56'),
(25, 1, NULL, 25, 1, 'Training', '49.98', '0.00', '0.00', 'GBP', 2, 'App\\MyCustomProduct', '1', '2017-05-01 23:10:46', '2017-05-01 23:10:46'),
(26, 1, NULL, 26, 1, 'Training', '49.98', '0.00', '0.00', 'GBP', 2, 'App\\MyCustomProduct', '1', '2017-05-01 23:12:30', '2017-05-01 23:12:30'),
(33, 1, NULL, 33, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-02 20:25:56', '2017-05-02 20:25:56'),
(34, 1, NULL, 34, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-02 20:59:30', '2017-05-02 20:59:30'),
(35, 1, NULL, 35, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-02 21:02:25', '2017-05-02 21:02:25'),
(36, 1, NULL, 36, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-02 21:04:10', '2017-05-02 21:04:10'),
(37, 3, NULL, 37, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-02 21:10:01', '2017-05-02 21:10:01'),
(38, 3, NULL, 37, 1, 'Match', '29.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '2', '2017-05-02 21:10:01', '2017-05-02 21:10:01'),
(39, 3, NULL, 38, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-02 22:26:39', '2017-05-02 22:26:39'),
(40, 3, NULL, 38, 1, 'Elite', '34.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '3', '2017-05-02 22:26:39', '2017-05-02 22:26:39'),
(41, 10, NULL, 39, 1, 'Training', '68.97', '0.00', '0.00', 'GBP', 3, 'App\\MyCustomProduct', '1', '2017-05-02 22:51:34', '2017-05-02 22:51:34'),
(42, 3, NULL, 40, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-04 01:45:52', '2017-05-04 01:45:52'),
(43, 3, NULL, 41, 1, 'Training', '49.98', '0.00', '0.00', 'GBP', 2, 'App\\MyCustomProduct', '1', '2017-05-04 02:01:29', '2017-05-04 02:01:29'),
(44, 3, NULL, 41, 1, 'Match', '59.98', '0.00', '0.00', 'GBP', 2, 'App\\MyCustomProduct', '2', '2017-05-04 02:01:29', '2017-05-04 02:01:29'),
(45, 3, NULL, 41, 1, 'Elite', '34.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '3', '2017-05-04 02:01:29', '2017-05-04 02:01:29'),
(46, 10, NULL, 42, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-04 02:04:07', '2017-05-04 02:04:07'),
(47, 10, NULL, 42, 2, 'Training', '74.97', '0.00', '0.00', 'GBP', 3, 'App\\MyCustomProduct', '1', '2017-05-04 02:04:07', '2017-05-04 02:04:07'),
(48, 11, NULL, 43, 1, 'Training', '349.86', '0.00', '0.00', 'GBP', 14, 'App\\MyCustomProduct', '1', '2017-05-09 12:11:06', '2017-05-09 12:11:06'),
(49, 11, NULL, 43, 1, 'Match', '209.93', '0.00', '0.00', 'GBP', 7, 'App\\MyCustomProduct', '2', '2017-05-09 12:11:06', '2017-05-09 12:11:06'),
(50, 11, NULL, 43, 1, 'Elite', '174.95', '0.00', '0.00', 'GBP', 5, 'App\\MyCustomProduct', '3', '2017-05-09 12:11:06', '2017-05-09 12:11:06'),
(51, 11, NULL, 43, 2, 'Match', '89.97', '0.00', '0.00', 'GBP', 3, 'App\\MyCustomProduct', '2', '2017-05-09 12:11:06', '2017-05-09 12:11:06'),
(52, 11, NULL, 43, 2, 'Training', '191.92', '0.00', '0.00', 'GBP', 8, 'App\\MyCustomProduct', '1', '2017-05-09 12:11:06', '2017-05-09 12:11:06'),
(53, 3, NULL, 44, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-10 01:45:02', '2017-05-10 01:45:02'),
(54, 3, NULL, 45, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-05-15 04:11:40', '2017-05-15 04:11:41'),
(55, 3, NULL, 46, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-06-04 09:07:16', '2017-06-04 09:07:17'),
(56, 3, NULL, 47, 1, 'Training', '24.99', '0.00', '0.00', 'GBP', 1, 'App\\MyCustomProduct', '1', '2017-06-04 09:30:22', '2017-06-04 09:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `item_size`
--

CREATE TABLE IF NOT EXISTS `item_size` (
`id` bigint(20) unsigned NOT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `item_size`
--

INSERT INTO `item_size` (`id`, `size`, `created_at`, `updated_at`) VALUES
(1, 'Size 3', NULL, NULL),
(2, 'Size 4', NULL, NULL),
(3, 'Size 5', NULL, NULL),
(4, 'Futsal', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
`id` int(10) unsigned NOT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `created_at`, `updated_at`) VALUES
(1, 'English', '2017-04-06 02:10:29', '2017-04-06 02:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
`id` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `max_sublevel` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `label`, `name`, `max_sublevel`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', 'main_menu', 1, '2017-04-23 23:14:30', '2017-04-23 23:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
`id` int(10) unsigned NOT NULL,
  `menu_id` int(11) NOT NULL,
  `page_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `sub_levels` int(11) NOT NULL DEFAULT '0',
  `custom_name` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `page_id`, `order`, `sub_levels`, `custom_name`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 1, 0, '', '2017-04-23 23:14:30', '2017-04-23 23:14:30'),
(5, 1, '8', 2, 1, '', '2017-04-23 23:14:30', '2017-05-19 23:15:05'),
(6, 1, '9', 4, 1, '', '2017-04-23 23:14:30', '2017-05-19 23:15:05'),
(7, 1, '6', 3, 0, '', '2017-04-26 22:35:44', '2017-05-23 23:28:07'),
(8, 1, '10', 5, 0, '', '2017-05-23 23:49:59', '2017-05-23 23:49:59'),
(10, 1, '12', 6, 0, '', '2017-05-24 22:30:58', '2017-05-24 22:30:58'),
(11, 1, '15', 7, 0, '', '2017-05-24 22:36:13', '2017-05-24 22:36:13');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
`id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '5_2_0_0_create_admin_actions', 1),
(2, '5_2_0_0_create_admin_controllers', 1),
(3, '5_2_0_0_create_admin_logs', 1),
(4, '5_2_0_0_create_admin_menu', 1),
(5, '5_2_0_0_create_backups', 1),
(6, '5_2_0_0_create_block_beacons', 1),
(7, '5_2_0_0_create_block_category', 1),
(8, '5_2_0_0_create_block_form_rules', 1),
(9, '5_2_0_0_create_block_repeaters', 1),
(10, '5_2_0_0_create_block_selectopts', 1),
(11, '5_2_0_0_create_block_video_cache', 1),
(12, '5_2_0_0_create_blocks', 1),
(13, '5_2_0_0_create_form_submissions', 1),
(14, '5_2_0_0_create_languages', 1),
(15, '5_2_0_0_create_menu_items', 1),
(16, '5_2_0_0_create_menus', 1),
(17, '5_2_0_0_create_page_blocks', 1),
(18, '5_2_0_0_create_page_blocks_default', 1),
(19, '5_2_0_0_create_page_blocks_repeater_data', 1),
(20, '5_2_0_0_create_page_blocks_repeater_rows', 1),
(21, '5_2_0_0_create_page_group', 1),
(22, '5_2_0_0_create_page_group_attributes', 1),
(23, '5_2_0_0_create_page_lang', 1),
(24, '5_2_0_0_create_page_publish_requests', 1),
(25, '5_2_0_0_create_page_redirects', 1),
(26, '5_2_0_0_create_page_search_data', 1),
(27, '5_2_0_0_create_page_search_log', 1),
(28, '5_2_0_0_create_page_versions', 1),
(29, '5_2_0_0_create_pages', 1),
(30, '5_2_0_0_create_settings', 1),
(31, '5_2_0_0_create_template_blocks', 1),
(32, '5_2_0_0_create_templates', 1),
(33, '5_2_0_0_create_theme_blocks', 1),
(34, '5_2_0_0_create_themes', 1),
(35, '5_2_0_0_create_user_roles', 1),
(36, '5_2_0_0_create_user_roles_actions', 1),
(37, '5_2_0_0_create_user_roles_page_actions', 1),
(38, '5_2_0_0_create_users', 1),
(39, '5_2_19_0_update_theme_actions', 1),
(40, '5_2_20_0_update_theme_select_actions', 1),
(41, '5_2_22_0_update_theme_manage_actions', 1),
(42, '5_2_23_0_add_secure_folders_setting', 1),
(43, '5_2_26_0_add_theme_actions', 1),
(44, '5_2_27_0_add_block_notes', 1),
(45, '5_2_30_0_add_pages_sitemap', 1),
(46, '5_2_35_0_create_page_versions_schedule', 1),
(47, '5_2_36_0_update_search_log_admin', 1),
(48, '5_3_0_0_add_theme_editor_actions', 1),
(49, '5_3_0_0_add_user_name', 1),
(50, '5_3_0_0_create_page_group_pages', 1),
(51, '5_3_0_0_update_group_pages', 1),
(52, '5_3_15_0_update_menu_items', 1),
(53, '5_3_23_0_add_estimote_support', 1),
(54, '5_3_5_0_add_search_action', 1),
(65, '2017_04_27_052548_shop_setup_tables', 2),
(66, '2017_04_30_231330_create_my_custom_products_table', 2),
(67, '2017_05_01_170751_add_column_for_order_table', 2),
(68, '2017_05_03_022024_add_column_for_user_table', 3),
(69, '2017_05_03_032650_create_share_table', 4),
(70, '2017_05_31_104308_add_columns_for_order_table', 5),
(71, '2017_06_26_050433_create_team_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `my_custom_products`
--

CREATE TABLE IF NOT EXISTS `my_custom_products` (
`id` bigint(20) unsigned NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `1_2_price` decimal(20,2) NOT NULL,
  `3_4_price` decimal(20,2) NOT NULL,
  `5_9_price` decimal(20,2) NOT NULL,
  `10_15_price` decimal(20,2) NOT NULL,
  `16_24_price` decimal(20,2) NOT NULL,
  `25_49_price` decimal(20,2) NOT NULL,
  `50_5000_price` decimal(20,2) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `my_custom_products`
--

INSERT INTO `my_custom_products` (`id`, `product_name`, `sku`, `1_2_price`, `3_4_price`, `5_9_price`, `10_15_price`, `16_24_price`, `25_49_price`, `50_5000_price`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Training', 'Training', '24.99', '22.99', '15.99', '12.99', '11.99', '10.99', '9.99', 1, NULL, NULL),
(2, 'Match', 'Match', '29.99', '24.99', '17.99', '15.99', '14.99', '13.99', '12.99', 1, NULL, NULL),
(3, 'Elite', 'Elite', '34.99', '28.99', '22.99', '18.99', '17.99', '15.99', '14.99', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`id` bigint(20) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `team_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8_unicode_ci,
  `comments` text COLLATE utf8_unicode_ci,
  `statusCode` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `team_name`, `shipping_address`, `comments`, `statusCode`, `created_at`, `updated_at`) VALUES
(37, 3, 'sdsdsd', NULL, NULL, 'pending', '2017-05-02 21:10:01', '2017-05-02 21:10:01'),
(38, 3, 'ras team', NULL, NULL, 'pending', '2017-05-02 22:26:39', '2017-05-02 22:26:39'),
(39, 10, 'raman team', NULL, NULL, 'pending', '2017-05-02 22:51:34', '2017-05-02 22:51:34'),
(40, 3, 'team gaya', NULL, NULL, 'pending', '2017-05-04 01:45:52', '2017-05-04 01:45:52'),
(41, 3, 'team rich', NULL, NULL, 'pending', '2017-05-04 02:01:29', '2017-05-04 02:01:29'),
(42, 10, 'Team Gaya', NULL, NULL, 'pending', '2017-05-04 02:04:07', '2017-05-04 02:04:07'),
(43, 11, 'mat mat', NULL, NULL, 'pending', '2017-05-09 12:11:06', '2017-05-09 12:11:06'),
(44, 3, 'team shamain', NULL, NULL, 'pending', '2017-05-10 01:45:02', '2017-05-10 01:45:02'),
(45, 3, 'hkhk', NULL, NULL, 'pending', '2017-05-15 04:11:40', '2017-05-15 04:11:40'),
(46, 3, 'team shamain', NULL, NULL, 'pending', '2017-06-04 09:07:17', '2017-06-04 09:07:17'),
(47, 3, 'team shamain', 'no/22/a egodauyana moratuwa', 'this is a test comment', 'pending', '2017-06-04 09:30:22', '2017-06-04 09:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE IF NOT EXISTS `order_status` (
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`code`, `name`, `description`, `created_at`, `updated_at`) VALUES
('canceled', 'Canceled', 'Canceled order.', NULL, NULL),
('completed', 'Completed', 'Completed order. Payment and other processes have been made.', NULL, NULL),
('failed', 'Failed', 'Failed order. Payment or other process failed.', NULL, NULL),
('in_creation', 'In creation', 'Order being created.', NULL, NULL),
('in_process', 'In process', 'Completed order in process of shipping or revision.', NULL, NULL),
('pending', 'Pending', 'Created / placed order pending payment or similar.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
`id` int(10) unsigned NOT NULL,
  `template` int(11) NOT NULL DEFAULT '0',
  `parent` int(11) NOT NULL DEFAULT '0',
  `child_template` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `group_container` int(11) NOT NULL DEFAULT '0',
  `group_container_url_priority` int(11) NOT NULL DEFAULT '0',
  `canonical_parent` int(11) NOT NULL DEFAULT '0',
  `link` int(11) NOT NULL DEFAULT '0',
  `live` int(11) NOT NULL DEFAULT '1',
  `sitemap` int(11) NOT NULL DEFAULT '1',
  `live_start` timestamp NULL DEFAULT NULL,
  `live_end` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `template`, `parent`, `child_template`, `order`, `group_container`, `group_container_url_priority`, `canonical_parent`, `link`, `live`, `sitemap`, `live_start`, `live_end`, `created_at`, `updated_at`) VALUES
(1, 13, 0, 0, 0, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-04-23 23:14:29', '2017-04-23 23:30:16'),
(2, 14, 0, 0, 1, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-04-23 23:14:29', '2017-04-23 23:30:16'),
(3, 12, 0, 0, 2, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-04-23 23:14:29', '2017-04-23 23:30:16'),
(4, 15, 0, 0, 3, 0, 0, 0, 0, 1, 0, NULL, NULL, '2017-04-23 23:14:29', '2017-04-23 23:30:16'),
(5, 14, 3, 0, 0, 0, 0, 0, 0, 1, 0, NULL, NULL, '2017-04-23 23:14:29', '2017-04-23 23:30:16'),
(6, 16, 0, 0, 4, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-04-26 22:35:44', '2017-04-26 22:35:44'),
(7, 18, 0, 0, 5, 0, 0, 0, 0, 1, 0, NULL, NULL, '2017-05-02 23:27:19', '2017-05-02 23:27:19'),
(8, 20, 0, 0, 6, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-05-09 23:09:20', '2017-05-09 23:14:34'),
(9, 22, 0, 0, 7, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-05-19 23:14:50', '2017-05-19 23:14:50'),
(10, 26, 0, 0, 8, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-05-23 23:49:58', '2017-05-29 08:09:22'),
(12, 28, 0, 0, 9, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-05-24 22:30:58', '2017-06-25 07:49:18'),
(13, 34, 0, 0, 10, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-05-24 22:33:38', '2017-05-24 22:33:38'),
(14, 36, 0, 0, 11, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-05-24 22:34:53', '2017-05-24 22:34:53'),
(15, 38, 0, 0, 12, 0, 0, 0, 0, 0, 0, NULL, NULL, '2017-05-24 22:36:13', '2017-05-29 06:34:52'),
(16, 32, 0, 0, 13, 0, 0, 0, 0, 1, 1, NULL, NULL, '2017-05-29 06:19:05', '2017-05-29 06:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `page_blocks`
--

CREATE TABLE IF NOT EXISTS `page_blocks` (
`id` int(10) unsigned NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `page_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_blocks`
--

INSERT INTO `page_blocks` (`id`, `language_id`, `page_id`, `block_id`, `content`, `version`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 35, '4', 1, '2017-04-23 23:14:30', '2017-04-23 23:14:30'),
(2, 1, 1, 8, 'Home', 1, '2017-04-23 23:14:30', '2017-04-23 23:14:30'),
(3, 1, 2, 8, 'About', 1, '2017-04-23 23:14:31', '2017-04-23 23:14:31'),
(4, 1, 3, 33, 'O:8:"stdClass":5:{s:10:"email_from";s:0:"";s:8:"email_to";s:0:"";s:8:"template";s:12:"contact_form";s:7:"page_to";s:1:"5";s:7:"captcha";b:0;}', 1, '2017-04-23 23:14:31', '2017-04-23 23:14:31'),
(5, 1, 3, 8, 'Contact', 1, '2017-04-23 23:14:31', '2017-04-23 23:14:31'),
(6, 1, 4, 8, 'Sitemap', 1, '2017-04-23 23:14:31', '2017-04-23 23:14:31'),
(7, 1, 5, 8, 'Thank You', 1, '2017-04-23 23:14:32', '2017-04-23 23:14:32'),
(8, 1, 1, 1, '1v1 Footballs', 2, '2017-04-23 23:51:16', '2017-04-23 23:51:16'),
(9, 1, 1, 2, '', 2, '2017-04-23 23:51:17', '2017-04-23 23:51:17'),
(10, 1, 1, 3, '', 2, '2017-04-23 23:51:17', '2017-04-23 23:51:17'),
(11, 1, 1, 10, '', 2, '2017-04-23 23:51:17', '2017-04-23 23:51:17'),
(12, 1, 3, 1, '', 2, '2017-04-24 01:34:54', '2017-04-24 01:34:54'),
(13, 1, 3, 2, '', 2, '2017-04-24 01:34:54', '2017-04-24 01:34:54'),
(14, 1, 3, 3, '', 2, '2017-04-24 01:34:54', '2017-04-24 01:34:54'),
(15, 1, 3, 32, '', 2, '2017-04-24 01:34:54', '2017-04-24 01:34:54'),
(16, 1, 3, 33, 'O:8:"stdClass":5:{s:7:"captcha";b:0;s:10:"email_from";s:0:"";s:8:"email_to";s:0:"";s:8:"template";s:12:"contact_form";s:7:"page_to";s:1:"5";}', 2, '2017-04-24 01:34:54', '2017-04-24 01:34:54'),
(17, 1, 3, 10, '<div class="tm-bottom-a-box  ">\r\n<div class="uk-container uk-container-center">\r\n<section id="tm-bottom-a" class="tm-bottom-a uk-grid" data-uk-grid-match="{target:''&gt; div &gt; .uk-panel''}" data-uk-grid-margin="">\r\n<div class="uk-width-1-1 uk-row-first">\r\n<div class="uk-panel">\r\n<div class="contact-page">\r\n<div class="uk-grid">\r\n<div class="uk-width-1-1">\r\n<div class="contact-title">\r\n<h2>Nulla vehicula sem id nisl fringilla porta</h2>\r\n</div>\r\n<div class="contact-text">Aenean aliquam, dolor eu lacinia pellentesque, dui arcu condimentum nisl, quis sollicitudin mi lorem quis leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis sapien a ante rutrum pulvinar quis ac tellus. Proin facilisis dui at mollis tincidunt. Sed dignissim orci non arcu luctus pretium. Donec at ex aliquet, porttitor lacus eget, ullamcorper quam. Integer pellentesque egestas arcu, nec molestie leo sollicitudin et</div>\r\n</div>\r\n<div class="uk-width-1-1">\r\n<div class="contact-socials-wrap">\r\n<ul class="contact-socials">\r\n<li><a href="#"><i class="uk-icon-facebook"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-twitter"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-google-plus"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-pinterest-p"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-youtube"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-instagram"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-flickr"></i></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="uk-grid" data-uk-grid-match="{target:''.contact-enquiries''}">\r\n<div class="uk-width-medium-1-3 uk-panel">\r\n<div style="min-height: 139px;" class="contact-enquiries">\r\n<div class="title">CLUB ENQUIRIES</div>\r\n<div class="phone"><i class="uk-icon-phone"></i>(846)-356-9322</div>\r\n<div class="mail"><i class="uk-icon-envelope"></i> <a href="malto:support@torbara.com"> support@torbara.com </a></div>\r\n<div class="location"><i class="uk-icon-map-marker"></i>9478 Chestnut Street, Woodstock, GA 30188</div>\r\n</div>\r\n</div>\r\n<div class="uk-width-medium-1-3 uk-panel">\r\n<div style="min-height: 139px;" class="contact-enquiries">\r\n<div class="title">MEDIA ENQUIRIES</div>\r\n<div class="phone"><i class="uk-icon-phone"></i>(748)-864-2151</div>\r\n<div class="mail"><i class="uk-icon-envelope"></i> <a href="malto:support@torbara.com"> support@torbara.com </a></div>\r\n<div class="location"><i class="uk-icon-map-marker"></i>217 Route 70, Lumberton, NC 28358</div>\r\n</div>\r\n</div>\r\n<div class="uk-width-medium-1-3 uk-panel">\r\n<div style="min-height: 139px;" class="contact-enquiries">\r\n<div class="title">HEAD OFFICE</div>\r\n<div class="phone"><i class="uk-icon-phone"></i>(846)-356-9322</div>\r\n<div class="mail"><i class="uk-icon-envelope"></i> <a href="malto:support@torbara.com"> support@torbara.com </a></div>\r\n<div class="location"><i class="uk-icon-map-marker"></i>241 Adams Street, Huntington, NY 11743</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n</div>\r\n</div>', 2, '2017-04-24 01:34:54', '2017-04-24 01:34:54'),
(18, 1, 3, 1, 'Contact', 3, '2017-04-24 01:37:51', '2017-04-24 01:37:51'),
(19, 1, 6, 8, 'Editor', 1, '2017-04-26 22:35:44', '2017-04-26 22:35:44'),
(20, 1, 7, 8, 'Share', 1, '2017-05-02 23:27:19', '2017-05-02 23:27:19'),
(21, 1, 7, 1, '', 2, '2017-05-02 23:56:05', '2017-05-02 23:56:05'),
(22, 1, 7, 2, '', 2, '2017-05-02 23:56:05', '2017-05-02 23:56:05'),
(23, 1, 7, 3, '', 2, '2017-05-02 23:56:05', '2017-05-02 23:56:05'),
(24, 1, 8, 8, 'PLEDGE A BALL', 1, '2017-05-09 23:09:20', '2017-05-09 23:09:20'),
(25, 1, 8, 1, '', 2, '2017-05-09 23:14:34', '2017-05-09 23:14:34'),
(26, 1, 8, 2, '', 2, '2017-05-09 23:14:34', '2017-05-09 23:14:34'),
(27, 1, 8, 3, '', 2, '2017-05-09 23:14:34', '2017-05-09 23:14:34'),
(28, 1, 8, 43, '', 2, '2017-05-09 23:14:34', '2017-05-09 23:14:34'),
(29, 1, 8, 10, '', 2, '2017-05-09 23:14:34', '2017-05-09 23:14:34'),
(30, 1, 9, 8, 'Our Story', 1, '2017-05-19 23:14:50', '2017-05-19 23:14:50'),
(31, 1, 6, 1, '', 2, '2017-05-23 23:30:35', '2017-05-23 23:30:35'),
(32, 1, 6, 2, '', 2, '2017-05-23 23:30:35', '2017-05-23 23:30:35'),
(33, 1, 6, 3, '', 2, '2017-05-23 23:30:35', '2017-05-23 23:30:35'),
(34, 1, 10, 8, 'News', 1, '2017-05-23 23:49:58', '2017-05-23 23:49:58'),
(42, 1, 10, 1, '', 2, '2017-05-24 22:19:15', '2017-05-24 22:19:15'),
(43, 1, 10, 2, '', 2, '2017-05-24 22:19:15', '2017-05-24 22:19:15'),
(44, 1, 10, 3, '', 2, '2017-05-24 22:19:15', '2017-05-24 22:19:15'),
(45, 1, 10, 43, 'O:8:"stdClass":2:{s:4:"file";s:38:"/uploads/share/sh_18/5907b8ba66062.png";s:5:"title";s:0:"";}', 4, '2017-05-24 22:28:32', '2017-05-24 22:28:32'),
(46, 1, 10, 10, '<p>news</p>\r\n<p></p>\r\n<p>news</p>\r\n<p></p>\r\n<p>news</p>', 4, '2017-05-24 22:28:32', '2017-05-24 22:28:32'),
(47, 1, 12, 8, 'Team', 1, '2017-05-24 22:30:58', '2017-05-24 22:30:58'),
(48, 1, 13, 8, 'Terms & Conditions', 1, '2017-05-24 22:33:38', '2017-05-24 22:33:38'),
(49, 1, 14, 8, 'Privacy', 1, '2017-05-24 22:34:53', '2017-05-24 22:34:53'),
(50, 1, 15, 8, 'Ideas', 1, '2017-05-24 22:36:13', '2017-05-24 22:36:13'),
(51, 1, 16, 8, 'faq', 1, '2017-05-29 06:19:06', '2017-05-29 06:19:06'),
(52, 1, 12, 1, '', 2, '2017-05-29 06:34:39', '2017-05-29 06:34:39'),
(53, 1, 12, 2, '', 2, '2017-05-29 06:34:39', '2017-05-29 06:34:39'),
(54, 1, 12, 3, '', 2, '2017-05-29 06:34:39', '2017-05-29 06:34:39'),
(55, 1, 12, 43, '', 2, '2017-05-29 06:34:39', '2017-05-29 06:34:39'),
(56, 1, 12, 10, '', 2, '2017-05-29 06:34:39', '2017-05-29 06:34:39'),
(57, 1, 15, 1, '', 2, '2017-05-29 06:34:52', '2017-05-29 06:34:52'),
(58, 1, 15, 2, '', 2, '2017-05-29 06:34:52', '2017-05-29 06:34:52'),
(59, 1, 15, 3, '', 2, '2017-05-29 06:34:52', '2017-05-29 06:34:52'),
(60, 1, 15, 43, '', 2, '2017-05-29 06:34:52', '2017-05-29 06:34:52'),
(61, 1, 15, 10, '', 2, '2017-05-29 06:34:52', '2017-05-29 06:34:52'),
(62, 1, 10, 10, '<p></p>\r\n<p>test news</p>', 9, '2017-05-29 08:10:19', '2017-05-29 08:10:19'),
(63, 1, 10, 10, '', 10, '2017-05-29 08:10:45', '2017-05-29 08:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `page_blocks_default`
--

CREATE TABLE IF NOT EXISTS `page_blocks_default` (
`id` int(10) unsigned NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `block_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_blocks_repeater_data`
--

CREATE TABLE IF NOT EXISTS `page_blocks_repeater_data` (
`id` int(10) unsigned NOT NULL,
  `row_key` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_blocks_repeater_data`
--

INSERT INTO `page_blocks_repeater_data` (`id`, `row_key`, `block_id`, `content`, `version`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '1', 3, '2017-04-24 00:45:35', '2017-04-24 00:45:35'),
(2, 1, 44, 'O:8:"stdClass":2:{s:4:"file";s:47:"/uploads/images/home_slider/main-slider-img.jpg";s:5:"title";s:0:"";}', 3, '2017-04-24 00:45:35', '2017-04-24 00:45:35'),
(3, 1, 45, '', 3, '2017-04-24 00:45:35', '2017-04-24 00:45:35'),
(4, 2, 0, '2', 3, '2017-04-24 00:45:35', '2017-04-24 00:45:35'),
(5, 2, 44, 'O:8:"stdClass":2:{s:4:"file";s:48:"/uploads/images/home_slider/main-slider-img1.jpg";s:5:"title";s:0:"";}', 3, '2017-04-24 00:45:35', '2017-04-24 00:45:35'),
(6, 2, 45, '', 3, '2017-04-24 00:45:35', '2017-04-24 00:45:35'),
(7, 3, 0, '3', 4, '2017-04-24 00:45:53', '2017-04-24 00:45:53'),
(8, 3, 44, 'O:8:"stdClass":2:{s:4:"file";s:48:"/uploads/images/home_slider/main-slider-img2.jpg";s:5:"title";s:0:"";}', 4, '2017-04-24 00:45:54', '2017-04-24 00:45:54'),
(9, 3, 45, '', 4, '2017-04-24 00:45:54', '2017-04-24 00:45:54'),
(10, 1, 0, '', 5, '2017-04-24 01:17:05', '2017-04-24 01:17:05'),
(11, 1, 44, '', 5, '2017-04-24 01:17:05', '2017-04-24 01:17:05'),
(12, 2, 0, '', 5, '2017-04-24 01:17:05', '2017-04-24 01:17:05'),
(13, 2, 44, '', 5, '2017-04-24 01:17:05', '2017-04-24 01:17:05'),
(14, 3, 0, '', 5, '2017-04-24 01:17:05', '2017-04-24 01:17:05'),
(15, 3, 44, '', 5, '2017-04-24 01:17:05', '2017-04-24 01:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `page_blocks_repeater_rows`
--

CREATE TABLE IF NOT EXISTS `page_blocks_repeater_rows` (
`id` int(10) unsigned NOT NULL,
  `repeater_id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_blocks_repeater_rows`
--

INSERT INTO `page_blocks_repeater_rows` (`id`, `repeater_id`, `row_id`, `created_at`, `updated_at`) VALUES
(1, 4, 1, '2017-04-24 00:42:34', '2017-04-24 00:42:34'),
(2, 4, 2, '2017-04-24 00:45:23', '2017-04-24 00:45:23'),
(3, 4, 3, '2017-04-24 00:45:42', '2017-04-24 00:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `page_group`
--

CREATE TABLE IF NOT EXISTS `page_group` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_priority` int(11) NOT NULL DEFAULT '50',
  `default_template` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_group_attributes`
--

CREATE TABLE IF NOT EXISTS `page_group_attributes` (
`id` int(10) unsigned NOT NULL,
  `group_id` int(11) NOT NULL,
  `item_block_id` int(11) NOT NULL,
  `item_block_order_priority` int(11) NOT NULL DEFAULT '0',
  `item_block_order_dir` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'asc',
  `filter_by_block_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_group_pages`
--

CREATE TABLE IF NOT EXISTS `page_group_pages` (
`id` int(10) unsigned NOT NULL,
  `page_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_lang`
--

CREATE TABLE IF NOT EXISTS `page_lang` (
`id` int(10) unsigned NOT NULL,
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `live_version` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_lang`
--

INSERT INTO `page_lang` (`id`, `page_id`, `language_id`, `url`, `name`, `live_version`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '/', 'Home', 5, '2017-04-23 23:14:29', '2017-04-24 01:17:05'),
(2, 2, 1, 'about', 'About', 1, '2017-04-23 23:14:29', '2017-04-23 23:14:29'),
(3, 3, 1, 'contact', 'Contact', 3, '2017-04-23 23:14:29', '2017-04-24 01:37:51'),
(4, 4, 1, 'sitemap', 'Sitemap', 1, '2017-04-23 23:14:29', '2017-04-23 23:14:29'),
(5, 5, 1, 'thank-you', 'Thank You', 1, '2017-04-23 23:14:29', '2017-04-23 23:14:29'),
(6, 6, 1, 'editor', 'Design', 2, '2017-04-26 22:35:44', '2017-05-23 23:30:35'),
(7, 7, 1, 'share', 'Share', 5, '2017-05-02 23:27:19', '2017-05-03 00:18:33'),
(8, 8, 1, 'pledge-a-ball', 'PLEDGE A BALL', 2, '2017-05-09 23:09:20', '2017-05-09 23:14:34'),
(9, 9, 1, 'our-story', 'Our Story', 1, '2017-05-19 23:14:50', '2017-05-19 23:14:50'),
(10, 10, 1, 'news', 'News', 10, '2017-05-23 23:49:58', '2017-05-29 08:10:45'),
(12, 12, 1, 'team', 'Team', 3, '2017-05-24 22:30:58', '2017-06-25 07:49:18'),
(13, 13, 1, 'terms-conditions', 'Terms & Conditions', 1, '2017-05-24 22:33:38', '2017-05-24 22:33:38'),
(14, 14, 1, 'privacy', 'Privacy', 1, '2017-05-24 22:34:53', '2017-05-24 22:34:53'),
(15, 15, 1, 'ideas', 'Ideas', 2, '2017-05-24 22:36:13', '2017-05-29 06:34:52'),
(16, 16, 1, 'faq', 'faq', 1, '2017-05-29 06:19:05', '2017-05-29 06:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `page_publish_requests`
--

CREATE TABLE IF NOT EXISTS `page_publish_requests` (
`id` int(10) unsigned NOT NULL,
  `page_version_id` int(11) NOT NULL,
  `status` enum('awaiting','approved','denied','cancelled') COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `mod_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_redirects`
--

CREATE TABLE IF NOT EXISTS `page_redirects` (
`id` int(10) unsigned NOT NULL,
  `redirect` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL DEFAULT '301',
  `force` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_search_data`
--

CREATE TABLE IF NOT EXISTS `page_search_data` (
`id` int(10) unsigned NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `search_text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_search_data`
--

INSERT INTO `page_search_data` (`id`, `language_id`, `page_id`, `block_id`, `search_text`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 'Home', '2017-04-23 23:14:32', '2017-04-23 23:14:32'),
(2, 1, 1, 8, 'Home', '2017-04-23 23:14:32', '2017-04-23 23:14:32'),
(3, 1, 2, 0, 'About', '2017-04-23 23:14:33', '2017-04-23 23:14:33'),
(4, 1, 2, 8, 'About', '2017-04-23 23:14:33', '2017-04-23 23:14:33'),
(5, 1, 3, 0, 'Contact', '2017-04-23 23:14:33', '2017-04-23 23:14:33'),
(6, 1, 3, 8, 'Contact', '2017-04-23 23:14:33', '2017-04-23 23:14:33'),
(7, 1, 4, 0, 'Sitemap', '2017-04-23 23:14:33', '2017-04-23 23:14:33'),
(8, 1, 4, 8, 'Sitemap', '2017-04-23 23:14:33', '2017-04-23 23:14:33'),
(9, 1, 5, 0, 'Thank You', '2017-04-23 23:14:33', '2017-04-23 23:14:33'),
(10, 1, 5, 8, 'Thank You', '2017-04-23 23:14:33', '2017-04-23 23:14:33'),
(11, 1, 1, 1, '1v1 Footballs', '2017-04-23 23:51:16', '2017-04-23 23:51:16'),
(13, 1, 3, 10, '<div class="tm-bottom-a-box  ">\r\n<div class="uk-container uk-container-center">\r\n<section id="tm-bottom-a" class="tm-bottom-a uk-grid" data-uk-grid-match="{target:''&gt; div &gt; .uk-panel''}" data-uk-grid-margin="">\r\n<div class="uk-width-1-1 uk-row-first">\r\n<div class="uk-panel">\r\n<div class="contact-page">\r\n<div class="uk-grid">\r\n<div class="uk-width-1-1">\r\n<div class="contact-title">\r\n<h2>Nulla vehicula sem id nisl fringilla porta</h2>\r\n</div>\r\n<div class="contact-text">Aenean aliquam, dolor eu lacinia pellentesque, dui arcu condimentum nisl, quis sollicitudin mi lorem quis leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc quis sapien a ante rutrum pulvinar quis ac tellus. Proin facilisis dui at mollis tincidunt. Sed dignissim orci non arcu luctus pretium. Donec at ex aliquet, porttitor lacus eget, ullamcorper quam. Integer pellentesque egestas arcu, nec molestie leo sollicitudin et</div>\r\n</div>\r\n<div class="uk-width-1-1">\r\n<div class="contact-socials-wrap">\r\n<ul class="contact-socials">\r\n<li><a href="#"><i class="uk-icon-facebook"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-twitter"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-google-plus"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-pinterest-p"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-youtube"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-instagram"></i></a></li>\r\n<li><a href="#"><i class="uk-icon-flickr"></i></a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n<div class="uk-grid" data-uk-grid-match="{target:''.contact-enquiries''}">\r\n<div class="uk-width-medium-1-3 uk-panel">\r\n<div style="min-height: 139px;" class="contact-enquiries">\r\n<div class="title">CLUB ENQUIRIES</div>\r\n<div class="phone"><i class="uk-icon-phone"></i>(846)-356-9322</div>\r\n<div class="mail"><i class="uk-icon-envelope"></i> <a href="malto:support@torbara.com"> support@torbara.com </a></div>\r\n<div class="location"><i class="uk-icon-map-marker"></i>9478 Chestnut Street, Woodstock, GA 30188</div>\r\n</div>\r\n</div>\r\n<div class="uk-width-medium-1-3 uk-panel">\r\n<div style="min-height: 139px;" class="contact-enquiries">\r\n<div class="title">MEDIA ENQUIRIES</div>\r\n<div class="phone"><i class="uk-icon-phone"></i>(748)-864-2151</div>\r\n<div class="mail"><i class="uk-icon-envelope"></i> <a href="malto:support@torbara.com"> support@torbara.com </a></div>\r\n<div class="location"><i class="uk-icon-map-marker"></i>217 Route 70, Lumberton, NC 28358</div>\r\n</div>\r\n</div>\r\n<div class="uk-width-medium-1-3 uk-panel">\r\n<div style="min-height: 139px;" class="contact-enquiries">\r\n<div class="title">HEAD OFFICE</div>\r\n<div class="phone"><i class="uk-icon-phone"></i>(846)-356-9322</div>\r\n<div class="mail"><i class="uk-icon-envelope"></i> <a href="malto:support@torbara.com"> support@torbara.com </a></div>\r\n<div class="location"><i class="uk-icon-map-marker"></i>241 Adams Street, Huntington, NY 11743</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>\r\n</div>\r\n</div>', '2017-04-24 01:34:54', '2017-04-24 01:34:54'),
(14, 1, 3, 1, 'Contact', '2017-04-24 01:37:51', '2017-04-24 01:37:51'),
(15, 1, 6, 0, 'Design', '2017-04-26 22:35:44', '2017-05-23 23:30:35'),
(16, 1, 7, 0, 'Share', '2017-05-02 23:27:19', '2017-05-02 23:27:19'),
(17, 1, 8, 0, 'PLEDGE A BALL', '2017-05-09 23:09:20', '2017-05-09 23:09:20'),
(18, 1, 8, 8, 'PLEDGE A BALL', '2017-05-09 23:14:34', '2017-05-09 23:14:34'),
(19, 1, 9, 0, 'Our Story', '2017-05-19 23:14:50', '2017-05-19 23:14:50'),
(20, 1, 10, 0, 'News', '2017-05-23 23:49:58', '2017-05-23 23:49:58'),
(23, 1, 10, 8, 'News', '2017-05-24 22:28:32', '2017-05-24 22:28:32'),
(24, 1, 10, 43, '5907b8ba66062.png', '2017-05-24 22:28:32', '2017-05-24 22:28:32'),
(26, 1, 12, 0, 'Team', '2017-05-24 22:30:58', '2017-05-24 22:30:58'),
(27, 1, 13, 0, 'Terms & Conditions', '2017-05-24 22:33:38', '2017-05-24 22:33:38'),
(28, 1, 14, 0, 'Privacy', '2017-05-24 22:34:53', '2017-05-24 22:34:53'),
(29, 1, 15, 0, 'Ideas', '2017-05-24 22:36:13', '2017-05-24 22:36:13'),
(30, 1, 16, 0, 'faq', '2017-05-29 06:19:06', '2017-05-29 06:19:06'),
(31, 1, 12, 8, 'Team', '2017-05-29 06:34:39', '2017-05-29 06:34:39'),
(32, 1, 15, 8, 'Ideas', '2017-05-29 06:34:52', '2017-05-29 06:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `page_search_log`
--

CREATE TABLE IF NOT EXISTS `page_search_log` (
`id` int(10) unsigned NOT NULL,
  `term` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page_versions`
--

CREATE TABLE IF NOT EXISTS `page_versions` (
`id` int(10) unsigned NOT NULL,
  `page_id` int(11) NOT NULL,
  `version_id` int(11) NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preview_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_versions`
--

INSERT INTO `page_versions` (`id`, `page_id`, `version_id`, `template`, `label`, `preview_key`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '13', NULL, '28vy6s8se5h', 0, '2017-04-23 23:14:29', '2017-04-23 23:14:29'),
(2, 2, 1, '14', NULL, '15i2g5hq8sq', 0, '2017-04-23 23:14:29', '2017-04-23 23:14:29'),
(3, 3, 1, '12', NULL, '2hqz12rh94w', 0, '2017-04-23 23:14:29', '2017-04-23 23:14:29'),
(4, 4, 1, '15', NULL, '1y215rdy8mk', 0, '2017-04-23 23:14:29', '2017-04-23 23:14:29'),
(5, 5, 1, '14', NULL, '18geq8zyna2', 0, '2017-04-23 23:14:30', '2017-04-23 23:14:30'),
(6, 1, 2, '13', NULL, 'qqd1obq10q', 1, '2017-04-23 23:51:16', '2017-04-23 23:51:16'),
(7, 1, 3, '13', NULL, 'rpt52177au', 1, '2017-04-24 00:45:35', '2017-04-24 00:45:35'),
(8, 1, 4, '13', NULL, 'az7ju60d26', 1, '2017-04-24 00:45:53', '2017-04-24 00:45:53'),
(9, 1, 5, '13', NULL, '1m8o1ektnl1', 1, '2017-04-24 01:17:05', '2017-04-24 01:17:05'),
(10, 3, 2, '12', NULL, '1hp6xj6k31', 1, '2017-04-24 01:34:54', '2017-04-24 01:34:54'),
(11, 3, 3, '12', NULL, '2auudk05m8w', 1, '2017-04-24 01:37:51', '2017-04-24 01:37:51'),
(12, 6, 1, '16', NULL, '1y216xvbar5', 1, '2017-04-26 22:35:44', '2017-04-26 22:35:44'),
(13, 7, 1, '18', NULL, '1ce77aeh9xt', 1, '2017-05-02 23:27:19', '2017-05-02 23:27:19'),
(14, 7, 2, '18', NULL, '23yptjew9wr', 1, '2017-05-02 23:56:05', '2017-05-02 23:56:05'),
(15, 7, 3, '18', NULL, '210djfwsx8k', 1, '2017-05-02 23:56:28', '2017-05-02 23:56:28'),
(16, 7, 4, '18', NULL, '1ce77awoost', 1, '2017-05-03 00:18:17', '2017-05-03 00:18:17'),
(17, 7, 5, '18', NULL, 'lt4ofcpsmf', 1, '2017-05-03 00:18:33', '2017-05-03 00:18:33'),
(18, 8, 1, '14', NULL, '1l984crkgbe', 1, '2017-05-09 23:09:20', '2017-05-09 23:09:20'),
(19, 8, 2, '20', NULL, '200xiuckzh0', 1, '2017-05-09 23:14:34', '2017-05-09 23:14:34'),
(20, 9, 1, '22', NULL, '1iavy87c2lc', 1, '2017-05-19 23:14:50', '2017-05-19 23:14:50'),
(21, 6, 2, '16', NULL, '2hqzczlbraa', 1, '2017-05-23 23:30:35', '2017-05-23 23:30:35'),
(22, 10, 1, '26', NULL, 'ju8q0stm5k', 1, '2017-05-23 23:49:58', '2017-05-23 23:49:58'),
(25, 10, 2, '14', NULL, 'orh78176ie', 1, '2017-05-24 22:19:15', '2017-05-24 22:19:15'),
(26, 10, 3, '14', NULL, 'qqddyggfkd', 1, '2017-05-24 22:27:56', '2017-05-24 22:27:56'),
(27, 10, 4, '14', NULL, '1q6gr4jf9ij', 1, '2017-05-24 22:28:32', '2017-05-24 22:28:32'),
(28, 12, 1, '28', NULL, 'sp9kotoz7z', 1, '2017-05-24 22:30:58', '2017-05-24 22:30:58'),
(29, 13, 1, '34', NULL, '9rgetv76zd', 1, '2017-05-24 22:33:38', '2017-05-24 22:33:38'),
(30, 14, 1, '36', NULL, '2lorqu055bb', 1, '2017-05-24 22:34:53', '2017-05-24 22:34:53'),
(31, 15, 1, '38', NULL, 'ju8qecvkyk', 1, '2017-05-24 22:36:13', '2017-05-24 22:36:13'),
(32, 10, 5, '14', NULL, '28vykp99nal', 1, '2017-05-29 00:45:05', '2017-05-29 00:45:05'),
(33, 16, 1, '32', NULL, '1q6gsud4q2o', 1, '2017-05-29 06:19:06', '2017-05-29 06:19:06'),
(34, 12, 2, '28', NULL, 'toppry5yvl', 1, '2017-05-29 06:34:39', '2017-05-29 06:34:39'),
(35, 15, 2, '38', NULL, '2fs38cwr9p8', 1, '2017-05-29 06:34:52', '2017-05-29 06:34:52'),
(36, 10, 6, '14', NULL, '2esn50h9b12', 1, '2017-05-29 07:49:16', '2017-05-29 07:49:16'),
(37, 10, 7, '14', NULL, 'rptj2dcn9r', 1, '2017-05-29 07:51:11', '2017-05-29 07:51:11'),
(38, 10, 8, '26', NULL, 'pqxcc7oyxh', 1, '2017-05-29 08:09:22', '2017-05-29 08:09:22'),
(39, 10, 9, '26', NULL, '5q4flrg4zx', 1, '2017-05-29 08:10:19', '2017-05-29 08:10:19'),
(40, 10, 10, '26', NULL, '12jqk3f6kg4', 1, '2017-05-29 08:10:45', '2017-05-29 08:10:45'),
(41, 12, 3, '28', NULL, 'lt59l53ut0', 1, '2017-06-25 07:49:18', '2017-06-25 07:49:18');

-- --------------------------------------------------------

--
-- Table structure for table `page_versions_schedule`
--

CREATE TABLE IF NOT EXISTS `page_versions_schedule` (
`id` int(10) unsigned NOT NULL,
  `page_version_id` int(11) NOT NULL,
  `live_from` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `repeat_in` int(11) NOT NULL DEFAULT '0',
  `repeat_in_func` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`id` int(10) unsigned NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `editable` int(11) NOT NULL,
  `hidden` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `label`, `name`, `value`, `editable`, `hidden`, `created_at`, `updated_at`) VALUES
(1, 'Site Name', 'site.name', '1v1 Footballs', 1, 0, '2017-04-06 02:10:33', '2017-04-23 23:36:27'),
(2, 'Site Email', 'site.email', 'info@example.com', 1, 0, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(3, 'Site Page Limit', 'site.pages', '0', 1, 0, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(4, 'Admin Path', 'admin.url', 'admin', 1, 0, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(5, 'Admin Publishing', 'admin.publishing', '0', 1, 0, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(6, 'Admin Per Page Permissions', 'admin.advanced_permissions', '0', 1, 0, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(7, 'Default Template', 'admin.default_template', '12', 1, 0, '2017-04-06 02:10:33', '2017-04-23 23:30:16'),
(8, 'Pre-fill Title Block', 'admin.title_block', 'title', 1, 0, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(9, 'Language', 'frontend.language', '1', 1, 0, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(10, 'Theme', 'frontend.theme', '2', 1, 0, '2017-04-06 02:10:33', '2017-04-23 23:30:16'),
(11, 'WP Blog Url (relative ie. /blog/)', 'blog.url', '', 1, 0, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(12, 'Kontakt API Key for Beacons', 'key.kontakt', '', 1, 1, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(13, 'Bitly Access Token', 'key.bitly', '', 1, 1, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(14, 'Youtube Server API Key', 'key.yt_server', '', 1, 1, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(15, 'Youtube Browser API Key', 'key.yt_browser', '', 1, 1, '2017-04-06 02:10:33', '2017-04-06 02:10:33'),
(16, 'Secure Upload Folders', 'site.secure_folders', '/secure/', 1, 0, '2017-04-06 02:10:37', '2017-04-23 23:36:27'),
(17, 'Estimote APP ID', 'appid.estimote', '', 1, 0, '2017-04-06 02:10:49', '2017-04-06 02:10:49'),
(18, 'Estimote API Key', 'key.estimote', '', 1, 0, '2017-04-06 02:10:49', '2017-04-06 02:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `share`
--

CREATE TABLE IF NOT EXISTS `share` (
`id` int(10) unsigned NOT NULL,
  `layer_one_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layer_two_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_one` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_two` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `design` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `share`
--

INSERT INTO `share` (`id`, `layer_one_color`, `layer_two_color`, `logo_one`, `logo_two`, `design`, `created_at`, `updated_at`) VALUES
(1, 'dasd', 'dasd', 'dasd', 'dsadas', 'dasd', '2017-05-02 22:24:34', '2017-05-02 22:24:34'),
(2, 'not selected any color for layer 1', 'not selected any color for layer 2', 'logo1.png', 'logo2.png', 'blast', '2017-05-03 03:24:41', '2017-05-03 03:24:41'),
(3, 'not selected any color for layer 1', 'not selected any color for layer 2', 'logo1.png', 'logo2.png', 'blast', '2017-05-03 03:25:05', '2017-05-03 03:25:05'),
(4, 'p2715', 'p3135', 'logo1.png', 'logo2.png', 'blast', '2017-05-03 04:38:25', '2017-05-03 04:38:25'),
(5, 'p183', 'p2925', 'logo1.png', 'logo2.png', 'blast', '2017-05-03 05:06:45', '2017-05-03 05:06:45'),
(6, 'p237', 'p2945', 'logo1.png', 'logo2.png', 'blast', '2017-05-03 14:55:16', '2017-05-03 14:55:16'),
(7, 'p2665', 'p2925', 'logo1.png', 'logo2.png', 'prem', '2017-05-04 00:15:39', '2017-05-04 00:15:39'),
(8, 'p184', 'p3135', 'logo1.png', 'logo2.png', 'prem', '2017-05-04 01:08:16', '2017-05-04 01:08:16'),
(9, 'p2915', 'p4655', 'logo1.png', 'logo2.png', 'prem', '2017-05-04 01:33:11', '2017-05-04 01:33:11'),
(10, 'p3125', 'p3435', 'logo1.png', 'logo2.png', 'prem', '2017-05-04 01:34:10', '2017-05-04 01:34:10'),
(11, 'p2375', 'p305', 'logo1.png', 'logo2.png', 'flame', '2017-05-04 01:41:16', '2017-05-04 01:41:16'),
(12, 'p2705', 'p305', 'logo1.png', 'logo2.png', 'blast', '2017-05-04 01:43:16', '2017-05-04 01:43:16'),
(13, 'p3115', 'p2925', 'logo1.png', 'logo2.png', 'flame', '2017-05-04 01:44:59', '2017-05-04 01:44:59'),
(14, 'p3125', 'p247', 'logo1.png', 'logo2.png', 'flame', '2017-05-04 01:57:24', '2017-05-04 01:57:24'),
(15, 'p184', 'p105', 'logo1.png', 'logo2.png', 'world', '2017-05-04 01:58:31', '2017-05-04 01:58:31'),
(16, 'p184', 'p105', 'logo1.png', 'logo2.png', 'world', '2017-05-04 01:58:47', '2017-05-04 01:58:47'),
(17, 'not selected any color for layer 1', 'not selected any color for layer 2', 'logo1.png', 'logo2.png', 'blast', '2017-05-04 02:10:56', '2017-05-04 02:10:56'),
(18, 'not selected any color for layer 1', 'not selected any color for layer 2', 'logo1.png', 'logo2.png', 'blast', '2017-05-09 12:16:39', '2017-05-09 12:16:39'),
(19, 'p2705', 'p3135', 'logo1.png', 'logo2.png', 'blast', '2017-05-10 01:44:45', '2017-05-10 01:44:45'),
(20, 'p184', 'p1675', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 01:42:11', '2017-06-16 01:42:11'),
(21, 'p2945', 'p2915', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 01:43:26', '2017-06-16 01:43:26'),
(22, 'p2715', 'p2685', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 01:46:28', '2017-06-16 01:46:28'),
(23, 'p184', 'p1655', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 01:47:45', '2017-06-16 01:47:45'),
(24, 'p2375', 'p2945', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 01:49:17', '2017-06-16 01:49:17'),
(25, 'p2375', 'p2945', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:06:34', '2017-06-16 02:06:34'),
(26, 'p184', 'p350', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:23:37', '2017-06-16 02:23:37'),
(27, 'p2915', 'p2955', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:24:35', '2017-06-16 02:24:35'),
(28, 'p3135', 'p3105', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:27:07', '2017-06-16 02:27:07'),
(29, 'p2655', 'p2695', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:27:50', '2017-06-16 02:27:50'),
(30, 'p183', 'p1817', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:29:59', '2017-06-16 02:29:59'),
(31, 'p2655', 'p1817', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:30:19', '2017-06-16 02:30:19'),
(32, 'p237', 'p2945', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:31:26', '2017-06-16 02:31:26'),
(33, 'p183', 'p2665', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:32:08', '2017-06-16 02:32:08'),
(34, 'p2655', 'p3145', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:32:54', '2017-06-16 02:32:54'),
(35, 'p2375', 'p249', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:33:44', '2017-06-16 02:33:44'),
(36, 'p238', 'p1817', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:37:24', '2017-06-16 02:37:24'),
(37, 'p237', 'p248', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:39:57', '2017-06-16 02:39:57'),
(38, 'p2375', 'p2955', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 02:42:49', '2017-06-16 02:42:49'),
(39, 'p2905', 'p3145', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 08:19:37', '2017-06-16 08:19:37'),
(40, 'p2715', 'p2695', 'logo1.png', 'logo2.png', 'blast', '2017-06-16 08:35:06', '2017-06-16 08:35:06'),
(41, 'p2715', 'p2695', 'logo1.png', 'logo2.png', 'world', '2017-06-16 08:36:57', '2017-06-16 08:36:57'),
(42, 'p237', 'p236', 'logo1.png', 'logo2.png', 'world', '2017-06-16 09:29:10', '2017-06-16 09:29:10'),
(43, 'p305', 'p3035', 'logo1.png', 'logo2.png', 'blast', '2017-06-18 00:12:08', '2017-06-18 00:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE IF NOT EXISTS `team` (
`id` int(10) unsigned NOT NULL,
  `team_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
`id` int(10) unsigned NOT NULL,
  `theme_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `child_template` int(11) NOT NULL DEFAULT '0',
  `hidden` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `theme_id`, `label`, `template`, `child_template`, `hidden`, `created_at`, `updated_at`) VALUES
(1, 1, 'Blog-archives Template', 'blog-archives', 0, 0, '2017-04-06 02:11:37', '2017-04-06 02:11:37'),
(2, 1, 'Blog-category Template', 'blog-category', 0, 0, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(3, 1, 'Blog-post Template', 'blog-post', 0, 0, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(4, 1, 'Blog-search Template', 'blog-search', 0, 0, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(5, 1, 'Blog Template', 'blog', 0, 0, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(6, 1, 'Category Template', 'category', 0, 0, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(7, 1, 'Contact Template', 'contact', 0, 0, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(8, 1, 'Home Template', 'home', 0, 0, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(9, 1, 'Internal Template', 'internal', 0, 0, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(10, 1, 'Sitemap Template', 'sitemap', 0, 0, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(11, 1, 'Team Template', 'team', 0, 0, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(12, 2, 'Contact Template', 'contact', 0, 0, '2017-04-23 23:14:20', '2017-04-23 23:14:20'),
(13, 2, 'Home Template', 'home', 0, 0, '2017-04-23 23:14:21', '2017-04-23 23:14:21'),
(14, 2, 'Internal Template', 'internal', 0, 0, '2017-04-23 23:14:21', '2017-04-23 23:14:21'),
(15, 2, 'Sitemap Template', 'sitemap', 0, 0, '2017-04-23 23:14:21', '2017-04-23 23:14:21'),
(16, 2, 'Editor Template', 'editor', 0, 0, NULL, NULL),
(17, 1, 'Editor Template', 'editor', 0, 0, NULL, NULL),
(18, 2, 'Share Editor Template', 'shareeditor', 0, 0, NULL, NULL),
(19, 1, 'Share Editor Template', 'shareeditor', 0, 0, NULL, NULL),
(20, 2, 'Pledge Template', 'pledge', 0, 0, NULL, NULL),
(21, 1, 'Pledge Template', 'pledge', 0, 0, NULL, NULL),
(22, 2, 'Our Story Template', 'ourstory', 0, 0, NULL, NULL),
(23, 1, 'Our Story Template', 'ourstory', 0, 0, NULL, NULL),
(24, 2, 'Profiles Template', 'profiles', 0, 0, NULL, NULL),
(25, 1, 'Profiles Template', 'profiles', 0, 0, NULL, NULL),
(26, 2, 'News Template', 'news', 0, 0, NULL, NULL),
(27, 1, 'News Template', 'news', 0, 0, NULL, NULL),
(28, 2, 'Team Template', 'team', 0, 0, NULL, NULL),
(29, 1, 'Team Template', 'team', 0, 0, NULL, NULL),
(30, 2, 'Newsletter Template', 'newsletter', 0, 0, NULL, NULL),
(31, 1, 'Newsletter Template', 'newsletter', 0, 0, NULL, NULL),
(32, 2, 'FAQ Template', 'faq', 0, 0, NULL, NULL),
(33, 1, 'FAQ Template', 'faq', 0, 0, NULL, NULL),
(34, 2, 'Terms Template', 'terms', 0, 0, NULL, NULL),
(35, 1, 'Terms Template', 'terms', 0, 0, NULL, NULL),
(36, 2, 'Privacy Template', 'privacy', 0, 0, NULL, NULL),
(37, 1, 'Privacy Template', 'privacy', 0, 0, NULL, NULL),
(38, 2, 'Ideas Template', 'ideas', 0, 0, NULL, NULL),
(39, 1, 'Ideas Template', 'ideas', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_blocks`
--

CREATE TABLE IF NOT EXISTS `template_blocks` (
`id` int(10) unsigned NOT NULL,
  `template_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `template_blocks`
--

INSERT INTO `template_blocks` (`id`, `template_id`, `block_id`, `created_at`, `updated_at`) VALUES
(1, 1, 7, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(2, 2, 7, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(3, 4, 7, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(4, 5, 7, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(5, 6, 7, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(6, 1, 8, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(7, 2, 8, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(8, 3, 8, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(9, 4, 8, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(10, 5, 8, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(11, 6, 8, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(12, 7, 8, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(13, 8, 8, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(14, 9, 8, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(15, 10, 8, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(16, 11, 8, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(17, 1, 9, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(18, 2, 9, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(19, 3, 9, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(20, 4, 9, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(21, 5, 9, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(22, 6, 9, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(23, 7, 9, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(24, 8, 9, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(25, 9, 9, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(26, 11, 9, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(27, 1, 10, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(28, 2, 10, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(29, 3, 10, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(30, 4, 10, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(31, 5, 10, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(32, 6, 10, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(33, 7, 10, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(34, 9, 10, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(35, 11, 10, '2017-04-06 02:11:40', '2017-04-06 02:11:40'),
(36, 1, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(37, 2, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(38, 3, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(39, 4, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(40, 5, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(41, 6, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(42, 7, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(43, 8, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(44, 9, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(45, 10, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(46, 11, 23, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(47, 3, 24, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(48, 3, 25, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(49, 3, 26, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(50, 9, 26, '2017-04-06 02:12:00', '2017-04-06 02:12:00'),
(51, 3, 27, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(52, 3, 28, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(53, 7, 29, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(54, 7, 30, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(55, 7, 31, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(56, 7, 32, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(57, 7, 33, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(58, 7, 34, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(59, 8, 35, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(60, 8, 36, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(61, 8, 37, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(62, 9, 38, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(63, 9, 39, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(64, 11, 40, '2017-04-06 02:12:01', '2017-04-06 02:12:01'),
(65, 12, 8, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(66, 13, 8, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(67, 14, 8, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(68, 15, 8, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(69, 12, 10, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(70, 13, 10, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(71, 14, 10, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(72, 12, 32, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(73, 12, 33, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(74, 13, 35, '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(75, 14, 43, '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(76, 26, 8, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(77, 26, 10, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(78, 26, 43, '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(79, 28, 8, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(80, 28, 10, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(81, 28, 43, '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(82, 34, 8, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(83, 34, 10, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(84, 34, 43, '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(85, 36, 8, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(86, 36, 10, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(87, 36, 43, '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(88, 38, 8, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(89, 38, 10, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(90, 38, 43, '2017-04-23 23:14:23', '2017-04-23 23:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE IF NOT EXISTS `themes` (
`id` int(10) unsigned NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme`, `created_at`, `updated_at`) VALUES
(1, 'coaster2016', '2017-04-06 02:11:36', '2017-04-06 02:11:36'),
(2, 'default', '2017-04-23 23:14:20', '2017-04-23 23:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `theme_blocks`
--

CREATE TABLE IF NOT EXISTS `theme_blocks` (
`id` int(10) unsigned NOT NULL,
  `theme_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `show_in_pages` int(11) NOT NULL DEFAULT '0',
  `exclude_templates` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `show_in_global` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theme_blocks`
--

INSERT INTO `theme_blocks` (`id`, `theme_id`, `block_id`, `show_in_pages`, `exclude_templates`, `show_in_global`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '', 1, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(2, 1, 2, 1, '', 1, '2017-04-06 02:11:38', '2017-04-06 02:11:38'),
(3, 1, 3, 1, '', 1, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(4, 1, 4, 0, '', 1, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(5, 1, 5, 0, '', 1, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(6, 1, 6, 0, '8', 1, '2017-04-06 02:11:39', '2017-04-06 02:11:39'),
(7, 1, 11, 0, '6,7,8,9,10,11', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(8, 1, 12, 0, '6,7,8,9,10,11', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(9, 1, 13, 0, '6,7,8,9,10,11', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(10, 1, 14, 1, '', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(11, 1, 15, 0, '', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(12, 1, 16, 0, '', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(13, 1, 17, 0, '', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(14, 1, 18, 0, '', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(15, 1, 19, 0, '', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(16, 1, 20, 0, '', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(17, 1, 21, 0, '', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(18, 1, 22, 0, '', 1, '2017-04-06 02:11:41', '2017-04-06 02:11:41'),
(19, 2, 1, 1, '', 1, '2017-04-23 23:14:21', '2017-04-23 23:14:21'),
(20, 2, 2, 1, '', 1, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(21, 2, 3, 1, '', 1, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(22, 2, 4, 0, '', 1, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(23, 2, 42, 0, '', 1, '2017-04-23 23:14:22', '2017-04-23 23:14:22'),
(24, 2, 29, 0, '', 1, '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(25, 2, 30, 0, '', 1, '2017-04-23 23:14:23', '2017-04-23 23:14:23'),
(26, 2, 22, 0, '', 1, '2017-04-23 23:14:23', '2017-04-23 23:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
`id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `gateway` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `gateway`, `transaction_id`, `detail`, `token`, `created_at`, `updated_at`) VALUES
(3, 38, 'stripe', 'tok_1AFEbuEK9nHrfu3LGzJgjpNi', 'ch_1AFEbzEK9nHrfu3L1LJpliF0', 'cus_AaCasonRh8LsGf', '2017-05-02 22:27:06', '2017-05-02 22:27:06'),
(4, 39, 'stripe', 'tok_1AFEzxEK9nHrfu3Ls7lDkmIR', 'ch_1AFF06EK9nHrfu3LcBCojiAS', 'cus_AaPpaJSrLrpeNK', '2017-05-02 22:52:01', '2017-05-02 22:52:01'),
(5, 40, 'stripe', 'tok_1AFeCBEK9nHrfu3Lpk91jGtj', 'ch_1AFeCIEK9nHrfu3LX6IMEMDH', 'cus_AaCasonRh8LsGf', '2017-05-04 01:46:16', '2017-05-04 01:46:16'),
(6, 41, 'stripe', 'tok_1AFeRJEK9nHrfu3LE2uXoEbm', 'ch_1AFeROEK9nHrfu3LKndhx6dB', 'cus_AaCasonRh8LsGf', '2017-05-04 02:01:52', '2017-05-04 02:01:52'),
(7, 42, 'stripe', 'tok_1AFeTuEK9nHrfu3L79qwOqvO', 'ch_1AFeU1EK9nHrfu3L6hA8jpYT', 'cus_AaPpaJSrLrpeNK', '2017-05-04 02:04:35', '2017-05-04 02:04:35'),
(8, 43, 'stripe', 'tok_1AHcKvEK9nHrfu3Lze91VRLc', 'ch_1AHcL3EK9nHrfu3LZC60LCB5', 'cus_Acs5JYCgYL15HP', '2017-05-09 12:11:31', '2017-05-09 12:11:31'),
(9, 44, 'stripe', 'tok_1AHp2cEK9nHrfu3LLDmC9d71', 'ch_1AHp2kEK9nHrfu3L9n0lf9Vc', 'cus_Ad5Dbs6mfY3fBg', '2017-05-10 01:45:27', '2017-05-10 01:45:27'),
(10, 46, 'stripe', 'tok_1AQzrMEK9nHrfu3LsWGicozt', 'ch_1AQzrSEK9nHrfu3LlklyD0gN', 'cus_AaCasonRh8LsGf', '2017-06-04 09:07:43', '2017-06-04 09:07:43'),
(11, 47, 'stripe', 'tok_1AR0DqEK9nHrfu3LMVJ4eEwT', 'ch_1AR0DvEK9nHrfu3LBNpo5RPM', 'cus_AaCasonRh8LsGf', '2017-06-04 09:30:57', '2017-06-04 09:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_customer_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmp_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tmp_code_created` timestamp NULL DEFAULT NULL,
  `blog_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_states` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `active`, `password`, `email`, `name`, `stripe_customer_id`, `role_id`, `remember_token`, `tmp_code`, `tmp_code_created`, `blog_login`, `page_states`, `created_at`, `updated_at`) VALUES
(1, 1, '$2y$10$Cs6VtHBSzfG3/j4gIv8.bOeWzaqHqY5n6Ph43fP5urD5wFDUq25fK', 'gayathma3@gmail.com', NULL, 'cus_AaCUKrVm0Xi0Wm', 1, 'e5DmQGIAnstEfsUsjGkoXsolbUxm2TYqbfRpV2WmhZKQurCvOCUqd3uNRci1', NULL, NULL, NULL, 'a:0:{}', '2017-04-06 02:11:26', '2017-05-29 06:17:51'),
(3, 1, '$2y$10$.eDUthVut6jcH08PeKGC2ORJ7n5gwRKBB59XxP8Cwrh2uP2oKnEki', 'shamaingdd@yahoo.com', 'fsdf', 'cus_AaCasonRh8LsGf', 5, NULL, NULL, NULL, NULL, NULL, '2017-04-30 17:14:37', '2017-05-02 21:10:38'),
(9, 1, '$2y$10$1uceM8AkFDHUctzy0oVNo.zzIxZ73HLtl6tpAwzZeJKLh9.EAu9IG', 'sff@asdsd.dasdsad', NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, '2017-05-02 20:57:42', '2017-05-02 20:57:42'),
(10, 1, '$2y$10$5ZfQmeJ1ygQfCJO6d6mCtuBtjj13oKuIsJLt3aHoUJoKGNUhNanAe', 'shamain.kolourbox@gmail.com', 'raman', 'cus_AaPpaJSrLrpeNK', 5, NULL, NULL, NULL, NULL, NULL, '2017-05-02 22:51:34', '2017-05-02 22:51:58'),
(11, 1, '$2y$10$3401fAt9u4tERDBXsTbTOOxrL84gOvuyW.caWT3Tcx6iQZHadGz0K', 'mat@gmail.com', 'mat mat', 'cus_Acs5JYCgYL15HP', 5, NULL, NULL, NULL, NULL, NULL, '2017-05-09 12:11:06', '2017-05-09 12:11:28'),
(12, 1, '$2y$10$lYdqaf1zMKOqfz32L0HBd.LFJNdAJidr/09ord8NCEqot1Zjy66Nm', 'shamanigdd@yahoo.com', 'Stripe User', 'cus_Ad5Dbs6mfY3fBg', 5, NULL, NULL, NULL, NULL, NULL, '2017-05-10 01:45:25', '2017-05-10 01:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE IF NOT EXISTS `user_roles` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '1',
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `name`, `admin`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Coaster Superuser', 2, 'Unrestricted Account (can only be removed by superusers)', '2017-04-06 02:10:35', '2017-04-06 02:10:35'),
(2, 'Coaster Admin', 1, 'Default Admin Account', '2017-04-06 02:10:35', '2017-04-06 02:10:35'),
(3, 'Coaster Editor', 1, 'Default Editor Account', '2017-04-06 02:10:35', '2017-04-06 02:10:35'),
(4, 'Coaster Account (Login Access Only)', 1, 'Base Account With Login Access', '2017-04-06 02:10:35', '2017-04-06 02:10:35'),
(5, 'Frontend Guest Account', 0, 'Default Guest Account (no admin access)', '2017-04-06 02:10:35', '2017-04-06 02:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles_actions`
--

CREATE TABLE IF NOT EXISTS `user_roles_actions` (
`id` int(10) unsigned NOT NULL,
  `role_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles_actions`
--

INSERT INTO `user_roles_actions` (`id`, `role_id`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 2, 5, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(2, 2, 6, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(3, 2, 7, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(4, 2, 8, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(5, 2, 9, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(6, 2, 10, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(7, 2, 18, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(8, 2, 19, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(9, 2, 20, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(10, 2, 21, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(11, 2, 22, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(12, 2, 25, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(13, 2, 26, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(14, 2, 27, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(15, 2, 28, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(16, 2, 29, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(17, 2, 31, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(18, 2, 32, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(19, 2, 33, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(20, 2, 34, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(21, 2, 35, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(22, 2, 39, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(23, 2, 40, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(24, 2, 43, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(25, 2, 49, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(26, 2, 62, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(27, 2, 64, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(28, 2, 65, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(29, 3, 5, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(30, 3, 6, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(31, 3, 8, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(32, 3, 18, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(33, 3, 19, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(34, 3, 22, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(35, 3, 25, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(36, 3, 26, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(37, 3, 27, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(38, 3, 28, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(39, 3, 29, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(40, 3, 31, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(41, 3, 32, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(42, 3, 33, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(43, 3, 34, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(44, 3, 39, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(45, 4, 31, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(46, 4, 32, '2017-04-06 02:10:36', '2017-04-06 02:10:36'),
(47, 2, 63, '2017-04-06 02:10:37', '2017-04-06 02:10:37'),
(48, 2, 70, '2017-04-06 02:10:37', '2017-04-06 02:10:37'),
(49, 2, 71, '2017-04-06 02:10:37', '2017-04-06 02:10:37'),
(50, 2, 72, '2017-04-06 02:10:37', '2017-04-06 02:10:37'),
(51, 2, 73, '2017-04-06 02:10:38', '2017-04-06 02:10:38'),
(52, 2, 79, '2017-04-06 02:10:40', '2017-04-06 02:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles_page_actions`
--

CREATE TABLE IF NOT EXISTS `user_roles_page_actions` (
`id` int(10) unsigned NOT NULL,
  `role_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `access` enum('allow','deny') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_actions`
--
ALTER TABLE `admin_actions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_controllers`
--
ALTER TABLE `admin_controllers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_logs`
--
ALTER TABLE `admin_logs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_beacons`
--
ALTER TABLE `block_beacons`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_category`
--
ALTER TABLE `block_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_form_rules`
--
ALTER TABLE `block_form_rules`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_repeaters`
--
ALTER TABLE `block_repeaters`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_selectopts`
--
ALTER TABLE `block_selectopts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `block_video_cache`
--
ALTER TABLE `block_video_cache`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `cart_user_id_unique` (`user_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `coupons_code_unique` (`code`), ADD KEY `coupons_code_expires_at_index` (`code`,`expires_at`), ADD KEY `coupons_code_active_index` (`code`,`active`), ADD KEY `coupons_code_active_expires_at_index` (`code`,`active`,`expires_at`), ADD KEY `coupons_sku_index` (`sku`);

--
-- Indexes for table `form_submissions`
--
ALTER TABLE `form_submissions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `items_sku_cart_id_size_id_unique` (`sku`,`cart_id`,`size_id`), ADD UNIQUE KEY `items_sku_order_id_size_id_unique` (`sku`,`order_id`,`size_id`), ADD KEY `items_cart_id_foreign` (`cart_id`), ADD KEY `items_user_id_sku_index` (`user_id`,`sku`), ADD KEY `items_user_id_sku_cart_id_index` (`user_id`,`sku`,`cart_id`), ADD KEY `items_user_id_sku_order_id_index` (`user_id`,`sku`,`order_id`), ADD KEY `items_reference_id_index` (`reference_id`);

--
-- Indexes for table `item_size`
--
ALTER TABLE `item_size`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_custom_products`
--
ALTER TABLE `my_custom_products`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `my_custom_products_product_name_unique` (`product_name`), ADD KEY `my_custom_products_user_id_foreign` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`id`), ADD KEY `orders_statuscode_foreign` (`statusCode`), ADD KEY `orders_user_id_statuscode_index` (`user_id`,`statusCode`), ADD KEY `orders_id_user_id_statuscode_index` (`id`,`user_id`,`statusCode`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
 ADD PRIMARY KEY (`code`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blocks`
--
ALTER TABLE `page_blocks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blocks_default`
--
ALTER TABLE `page_blocks_default`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blocks_repeater_data`
--
ALTER TABLE `page_blocks_repeater_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_blocks_repeater_rows`
--
ALTER TABLE `page_blocks_repeater_rows`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_group`
--
ALTER TABLE `page_group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_group_attributes`
--
ALTER TABLE `page_group_attributes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_group_pages`
--
ALTER TABLE `page_group_pages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_lang`
--
ALTER TABLE `page_lang`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_publish_requests`
--
ALTER TABLE `page_publish_requests`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_redirects`
--
ALTER TABLE `page_redirects`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_search_data`
--
ALTER TABLE `page_search_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_search_log`
--
ALTER TABLE `page_search_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_versions`
--
ALTER TABLE `page_versions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_versions_schedule`
--
ALTER TABLE `page_versions_schedule`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share`
--
ALTER TABLE `share`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_blocks`
--
ALTER TABLE `template_blocks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme_blocks`
--
ALTER TABLE `theme_blocks`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
 ADD PRIMARY KEY (`id`), ADD KEY `transactions_order_id_index` (`order_id`), ADD KEY `transactions_gateway_transaction_id_index` (`gateway`,`transaction_id`), ADD KEY `transactions_order_id_token_index` (`order_id`,`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_stripe_customer_id_unique` (`stripe_customer_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles_actions`
--
ALTER TABLE `user_roles_actions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles_page_actions`
--
ALTER TABLE `user_roles_page_actions`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_actions`
--
ALTER TABLE `admin_actions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `admin_controllers`
--
ALTER TABLE `admin_controllers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `admin_logs`
--
ALTER TABLE `admin_logs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `block_beacons`
--
ALTER TABLE `block_beacons`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `block_category`
--
ALTER TABLE `block_category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `block_form_rules`
--
ALTER TABLE `block_form_rules`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `block_repeaters`
--
ALTER TABLE `block_repeaters`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `block_selectopts`
--
ALTER TABLE `block_selectopts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=783;
--
-- AUTO_INCREMENT for table `block_video_cache`
--
ALTER TABLE `block_video_cache`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `form_submissions`
--
ALTER TABLE `form_submissions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `item_size`
--
ALTER TABLE `item_size`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `my_custom_products`
--
ALTER TABLE `my_custom_products`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `page_blocks`
--
ALTER TABLE `page_blocks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `page_blocks_default`
--
ALTER TABLE `page_blocks_default`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_blocks_repeater_data`
--
ALTER TABLE `page_blocks_repeater_data`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `page_blocks_repeater_rows`
--
ALTER TABLE `page_blocks_repeater_rows`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `page_group`
--
ALTER TABLE `page_group`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_group_attributes`
--
ALTER TABLE `page_group_attributes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_group_pages`
--
ALTER TABLE `page_group_pages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_lang`
--
ALTER TABLE `page_lang`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `page_publish_requests`
--
ALTER TABLE `page_publish_requests`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_redirects`
--
ALTER TABLE `page_redirects`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_search_data`
--
ALTER TABLE `page_search_data`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `page_search_log`
--
ALTER TABLE `page_search_log`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `page_versions`
--
ALTER TABLE `page_versions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `page_versions_schedule`
--
ALTER TABLE `page_versions_schedule`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `share`
--
ALTER TABLE `share`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `template_blocks`
--
ALTER TABLE `template_blocks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `theme_blocks`
--
ALTER TABLE `theme_blocks`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_roles_actions`
--
ALTER TABLE `user_roles_actions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `user_roles_page_actions`
--
ALTER TABLE `user_roles_page_actions`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
ADD CONSTRAINT `items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `my_custom_products`
--
ALTER TABLE `my_custom_products`
ADD CONSTRAINT `my_custom_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_statuscode_foreign` FOREIGN KEY (`statusCode`) REFERENCES `order_status` (`code`) ON UPDATE CASCADE,
ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
