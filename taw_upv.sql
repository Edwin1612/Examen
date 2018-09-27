-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2018 a las 06:31:13
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taw_upv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_assets`
--

CREATE TABLE `bak_taw_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_assets`
--

INSERT INTO `bak_taw_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 105, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 35, 38, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 39, 40, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 41, 74, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 75, 78, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 79, 80, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 81, 82, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 83, 84, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 85, 86, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 87, 90, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 91, 92, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 76, 77, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 88, 89, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 93, 94, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 95, 96, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 97, 98, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 99, 100, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 101, 102, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 103, 104, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 42, 43, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 44, 45, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 46, 47, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 48, 49, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 50, 51, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 52, 53, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 54, 55, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 56, 57, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 58, 59, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 60, 61, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 62, 63, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 64, 65, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 66, 67, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 68, 69, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 70, 71, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 36, 37, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 72, 73, 2, 'com_modules.module.87', 'Sample Data', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_associations`
--

CREATE TABLE `bak_taw_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_banners`
--

CREATE TABLE `bak_taw_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_banner_clients`
--

CREATE TABLE `bak_taw_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_banner_tracks`
--

CREATE TABLE `bak_taw_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_categories`
--

CREATE TABLE `bak_taw_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_categories`
--

INSERT INTO `bak_taw_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_contact_details`
--

CREATE TABLE `bak_taw_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_content`
--

CREATE TABLE `bak_taw_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_contentitem_tag_map`
--

CREATE TABLE `bak_taw_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_content_frontpage`
--

CREATE TABLE `bak_taw_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_content_rating`
--

CREATE TABLE `bak_taw_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_content_types`
--

CREATE TABLE `bak_taw_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_content_types`
--

INSERT INTO `bak_taw_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_core_log_searches`
--

CREATE TABLE `bak_taw_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_extensions`
--

CREATE TABLE `bak_taw_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_extensions`
--

INSERT INTO `bak_taw_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'plg_installer_folderinstaller', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'plg_installer_urlinstaller', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_fields`
--

CREATE TABLE `bak_taw_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_fields_categories`
--

CREATE TABLE `bak_taw_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_fields_groups`
--

CREATE TABLE `bak_taw_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_fields_values`
--

CREATE TABLE `bak_taw_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_filters`
--

CREATE TABLE `bak_taw_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links`
--

CREATE TABLE `bak_taw_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_terms0`
--

CREATE TABLE `bak_taw_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_terms1`
--

CREATE TABLE `bak_taw_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_terms2`
--

CREATE TABLE `bak_taw_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_terms3`
--

CREATE TABLE `bak_taw_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_terms4`
--

CREATE TABLE `bak_taw_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_terms5`
--

CREATE TABLE `bak_taw_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_terms6`
--

CREATE TABLE `bak_taw_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_terms7`
--

CREATE TABLE `bak_taw_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_terms8`
--

CREATE TABLE `bak_taw_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_terms9`
--

CREATE TABLE `bak_taw_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_termsa`
--

CREATE TABLE `bak_taw_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_termsb`
--

CREATE TABLE `bak_taw_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_termsc`
--

CREATE TABLE `bak_taw_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_termsd`
--

CREATE TABLE `bak_taw_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_termse`
--

CREATE TABLE `bak_taw_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_links_termsf`
--

CREATE TABLE `bak_taw_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_taxonomy`
--

CREATE TABLE `bak_taw_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bak_taw_finder_taxonomy`
--

INSERT INTO `bak_taw_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_taxonomy_map`
--

CREATE TABLE `bak_taw_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_terms`
--

CREATE TABLE `bak_taw_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_terms_common`
--

CREATE TABLE `bak_taw_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bak_taw_finder_terms_common`
--

INSERT INTO `bak_taw_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_tokens`
--

CREATE TABLE `bak_taw_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_tokens_aggregate`
--

CREATE TABLE `bak_taw_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_finder_types`
--

CREATE TABLE `bak_taw_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_languages`
--

CREATE TABLE `bak_taw_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_languages`
--

INSERT INTO `bak_taw_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_menu`
--

CREATE TABLE `bak_taw_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_menu`
--

INSERT INTO `bak_taw_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 43, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_menu_types`
--

CREATE TABLE `bak_taw_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_menu_types`
--

INSERT INTO `bak_taw_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_messages`
--

CREATE TABLE `bak_taw_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_messages_cfg`
--

CREATE TABLE `bak_taw_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_modules`
--

CREATE TABLE `bak_taw_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_modules`
--

INSERT INTO `bak_taw_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_modules_menu`
--

CREATE TABLE `bak_taw_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_modules_menu`
--

INSERT INTO `bak_taw_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_newsfeeds`
--

CREATE TABLE `bak_taw_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_overrider`
--

CREATE TABLE `bak_taw_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_postinstall_messages`
--

CREATE TABLE `bak_taw_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_postinstall_messages`
--

INSERT INTO `bak_taw_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_redirect_links`
--

CREATE TABLE `bak_taw_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_schemas`
--

CREATE TABLE `bak_taw_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_session`
--

CREATE TABLE `bak_taw_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_tags`
--

CREATE TABLE `bak_taw_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_tags`
--

INSERT INTO `bak_taw_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_template_styles`
--

CREATE TABLE `bak_taw_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_template_styles`
--

INSERT INTO `bak_taw_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_ucm_base`
--

CREATE TABLE `bak_taw_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_ucm_content`
--

CREATE TABLE `bak_taw_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_ucm_history`
--

CREATE TABLE `bak_taw_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_updates`
--

CREATE TABLE `bak_taw_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_update_sites`
--

CREATE TABLE `bak_taw_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Volcado de datos para la tabla `bak_taw_update_sites`
--

INSERT INTO `bak_taw_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 0, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_update_sites_extensions`
--

CREATE TABLE `bak_taw_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `bak_taw_update_sites_extensions`
--

INSERT INTO `bak_taw_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_usergroups`
--

CREATE TABLE `bak_taw_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_usergroups`
--

INSERT INTO `bak_taw_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_users`
--

CREATE TABLE `bak_taw_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_user_keys`
--

CREATE TABLE `bak_taw_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_user_notes`
--

CREATE TABLE `bak_taw_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_user_profiles`
--

CREATE TABLE `bak_taw_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_user_usergroup_map`
--

CREATE TABLE `bak_taw_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bak_taw_utf8_conversion`
--

CREATE TABLE `bak_taw_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `bak_taw_utf8_conversion`
--

INSERT INTO `bak_taw_utf8_conversion` (`converted`) VALUES
(0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_assets`
--

CREATE TABLE `taw_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_assets`
--

INSERT INTO `taw_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 185, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 88, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 89, 90, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 91, 92, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 93, 94, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 95, 96, 1, 'com_login', 'com_login', '{}'),
(13, 1, 97, 98, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 99, 100, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 101, 102, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 103, 104, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 105, 106, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 107, 152, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 153, 156, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 157, 158, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 159, 160, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 161, 162, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 163, 164, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 165, 168, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 169, 170, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 154, 155, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 166, 167, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 171, 172, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 173, 174, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 175, 176, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 177, 178, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 179, 180, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 181, 182, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 108, 109, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 110, 111, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 112, 113, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 114, 115, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 116, 117, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 118, 119, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 120, 121, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 122, 123, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 124, 125, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 126, 127, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 128, 129, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 130, 131, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 132, 133, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 134, 135, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 136, 137, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 18, 138, 139, 2, 'com_modules.module.87', 'Popular Tags', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(55, 18, 140, 141, 2, 'com_modules.module.88', 'Site Information', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(56, 18, 142, 143, 2, 'com_modules.module.89', 'Release News', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(57, 18, 144, 145, 2, 'com_modules.module.90', 'Latest Articles', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(58, 18, 146, 147, 2, 'com_modules.module.91', 'User Menu', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(59, 18, 148, 149, 2, 'com_modules.module.92', 'Image Module', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(60, 18, 150, 151, 2, 'com_modules.module.93', 'Search', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(61, 27, 19, 20, 3, 'com_content.article.1', 'Getting Started', '{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}'),
(62, 1, 183, 184, 1, '#__ucm_content.1', '#__ucm_content.1', '{}'),
(63, 8, 22, 39, 2, 'com_content.category.8', 'Paises', '{}'),
(64, 63, 23, 24, 3, 'com_content.category.9', 'Paises', '{}'),
(65, 8, 40, 53, 2, 'com_content.category.10', 'Continentes', '{}'),
(66, 65, 41, 42, 3, 'com_content.article.2', 'Europa', '{}'),
(67, 63, 25, 26, 3, 'com_content.article.3', 'Continentes', '{}'),
(68, 65, 43, 44, 3, 'com_content.category.11', 'America', '{}'),
(69, 65, 45, 46, 3, 'com_content.article.4', 'America', '{}'),
(70, 65, 47, 48, 3, 'com_content.article.5', 'Africa', '{}'),
(71, 65, 49, 50, 3, 'com_content.article.6', 'Oceania', '{}'),
(72, 65, 51, 52, 3, 'com_content.article.7', 'Asia', '{}'),
(73, 8, 54, 65, 2, 'com_content.category.12', 'Estados', '{}'),
(74, 73, 55, 56, 3, 'com_content.article.8', 'Tamaulipas', '{}'),
(75, 73, 57, 58, 3, 'com_content.article.9', 'Monterrey', '{}'),
(76, 73, 59, 60, 3, 'com_content.article.10', 'Jalisco', '{}'),
(77, 73, 61, 62, 3, 'com_content.article.11', 'Sonora', '{}'),
(78, 73, 63, 64, 3, 'com_content.article.12', 'Chiapas', '{}'),
(79, 63, 27, 28, 3, 'com_content.article.13', 'Mexico', '{}'),
(80, 63, 29, 30, 3, 'com_content.article.14', 'Argentina', '{}'),
(81, 63, 31, 32, 3, 'com_content.article.15', 'Colombia', '{}'),
(82, 63, 33, 34, 3, 'com_content.article.16', 'Estados Unidos', '{}'),
(83, 63, 35, 36, 3, 'com_content.article.17', 'Cuba', '{}'),
(84, 8, 66, 77, 2, 'com_content.category.13', 'Lenguajes', '{}'),
(85, 84, 67, 68, 3, 'com_content.article.18', 'Ingles', '{}'),
(86, 84, 69, 70, 3, 'com_content.article.19', 'Español', '{}'),
(87, 84, 71, 72, 3, 'com_content.article.20', 'Japones', '{}'),
(88, 84, 73, 74, 3, 'com_content.article.21', 'Aleman', '{}'),
(89, 84, 75, 76, 3, 'com_content.article.22', 'Chino Mandarin', '{}'),
(90, 8, 78, 87, 2, 'com_content.category.14', 'Tipos de cambio', '{}'),
(91, 90, 79, 80, 3, 'com_content.article.23', 'Peso Mexicano', '{}'),
(92, 90, 81, 82, 3, 'com_content.article.24', 'Moneda Argentina', '{}'),
(93, 90, 83, 84, 3, 'com_content.article.25', 'Dolar', '{}'),
(94, 90, 85, 86, 3, 'com_content.article.26', 'Peso venezolano', '{}'),
(95, 63, 37, 38, 3, 'com_content.article.27', 'Ejemplo', '{}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_associations`
--

CREATE TABLE `taw_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_banners`
--

CREATE TABLE `taw_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_banner_clients`
--

CREATE TABLE `taw_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_banner_tracks`
--

CREATE TABLE `taw_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_categories`
--

CREATE TABLE `taw_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_categories`
--

INSERT INTO `taw_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 25, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 100, '2018-09-27 02:57:51', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 02:57:51', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 02:57:51', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 02:57:51', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 02:57:51', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 02:57:51', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 63, 1, 11, 14, 1, 'paises', 'com_content', 'Paises', 'paises', '', '<p>Ejemplo</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 03:07:00', 0, '2018-09-27 03:07:00', 0, '*', 1),
(9, 64, 8, 12, 13, 2, 'paises/paises', 'com_content', 'Paises', 'paises', '', '<p>Ejemplo</p>', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 03:08:54', 0, '2018-09-27 03:08:54', 0, '*', 1),
(10, 65, 1, 15, 18, 1, 'continentes', 'com_content', 'Continentes', 'continentes', '', '<div class=\"rellink noprint\">Para otros usos de este término, véase <a class=\"mw-disambig\" title=\"Continente (desambiguación)\" href=\"https://es.wikipedia.org/wiki/Continente_(desambiguaci%C3%B3n)\">Continente (desambiguación)</a>.</div>\r\n<p>Se considera como <b>continente</b> a una gran <a title=\"Territorio\" href=\"https://es.wikipedia.org/wiki/Territorio\">extensión</a> de <a title=\"Tierra\" href=\"https://es.wikipedia.org/wiki/Tierra\">tierra</a> que se diferencia de otras menores o sumergidas por conceptos <a title=\"Geografía\" href=\"https://es.wikipedia.org/wiki/Geograf%C3%ADa\">geográficos</a>, como son los <a title=\"Océano\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano\">océanos</a>; y <a title=\"Cultura\" href=\"https://es.wikipedia.org/wiki/Cultura\">culturales</a>, como la <a title=\"Etnografía\" href=\"https://es.wikipedia.org/wiki/Etnograf%C3%ADa\">etnografía</a>.</p>\r\n<p>La división de la <a title=\"Tierra\" href=\"https://es.wikipedia.org/wiki/Tierra\">Tierra</a> en continentes es convencional, y suelen reconocerse entre cuatro<sup id=\"cite_ref-Columbia_1-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Continente#cite_note-Columbia-1\">1</a></sup>​ y siete<sup id=\"cite_ref-EB_2-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Continente#cite_note-EB-2\">2</a></sup>​ continentes; por ejemplo, una división en 7 continentes suele ser: <a title=\"Asia\" href=\"https://es.wikipedia.org/wiki/Asia\">Asia</a>, <a title=\"Antártida\" href=\"https://es.wikipedia.org/wiki/Ant%C3%A1rtida\">Antártida</a>, <a title=\"Europa\" href=\"https://es.wikipedia.org/wiki/Europa\">Europa</a>, <a title=\"África\" href=\"https://es.wikipedia.org/wiki/%C3%81frica\">África</a>, <a title=\"Oceanía\" href=\"https://es.wikipedia.org/wiki/Ocean%C3%ADa\">Oceanía</a> (o el <a title=\"Sahul\" href=\"https://es.wikipedia.org/wiki/Sahul\">continente australiano</a>), <a title=\"América del Norte\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_del_Norte\">Norteamérica</a> y <a title=\"América del Sur\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_del_Sur\">Sudamérica</a>.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 03:20:31', 0, '2018-09-27 03:20:31', 0, '*', 1),
(11, 68, 10, 16, 17, 2, 'continentes/america', 'com_content', 'America', 'america', '', '<p><b>América</b> es el segundo <a title=\"Continente\" href=\"https://es.wikipedia.org/wiki/Continente\">continente</a> más grande de la <a title=\"Tierra\" href=\"https://es.wikipedia.org/wiki/Tierra\">Tierra</a>, después de <a title=\"Asia\" href=\"https://es.wikipedia.org/wiki/Asia\">Asia</a>. Ocupa gran parte del <a title=\"Hemisferio occidental\" href=\"https://es.wikipedia.org/wiki/Hemisferio_occidental\">hemisferio occidental</a> del planeta. Se extiende desde el <a title=\"Océano Ártico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_%C3%81rtico\">océano Glacial Ártico</a> por el norte hasta las <a title=\"Islas Diego Ramírez\" href=\"https://es.wikipedia.org/wiki/Islas_Diego_Ram%C3%ADrez\">islas Diego Ramírez</a> por el sur, en la confluencia de los océanos <a title=\"Océano Atlántico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Atl%C3%A1ntico\">Atlántico</a> y <a title=\"Océano Pacífico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\">Pacífico</a>, los cuales a su vez delimitan al continente por el este y el oeste, respectivamente.</p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 03:38:26', 0, '2018-09-27 03:38:26', 0, '*', 1),
(12, 73, 1, 19, 20, 1, 'estados', 'com_content', 'Estados', 'estados', '', '<p>La <b>organización territorial de <a title=\"México\" href=\"https://es.wikipedia.org/wiki/M%C3%A9xico\">México</a></b> es el conjunto de normas y procesos, bajo los cuales, se dividen y administran las partes integrantes del área geográfica que ocupa el país. Ambos aspectos (normas y procesos) han sido resultado de los eventos históricos que delimitaron el espacio físico; pero también de los distintos sistemas de gobierno y regímenes constitucionales que tuvo el país.</p>\r\n<p>La actual estructura y su conducción responden a la de una <a title=\"Federación\" href=\"https://es.wikipedia.org/wiki/Federaci%C3%B3n\">Federación</a>, es decir, unidades territoriales soberanas; además el gobierno central es responsable directo de aquellos componentes territoriales que le adjudique la ley (<a title=\"Espacio aéreo\" href=\"https://es.wikipedia.org/wiki/Espacio_a%C3%A9reo\">espacio aéreo</a>, <a title=\"Mar territorial\" href=\"https://es.wikipedia.org/wiki/Mar_territorial\">mares</a> e <a title=\"Anexo:Islas de México\" href=\"https://es.wikipedia.org/wiki/Anexo:Islas_de_M%C3%A9xico\">islas adyacentes</a>). Entendiendo este concepto como un ordenamiento de división política, el país se compone de 32 entidades federativas (31 estados y la <a title=\"Ciudad de México\" href=\"https://es.wikipedia.org/wiki/Ciudad_de_M%C3%A9xico\">Ciudad de México</a>, capital de la república). Y estos a la vez se dividen <a title=\"Municipios de México\" href=\"https://es.wikipedia.org/wiki/Municipios_de_M%C3%A9xico\">Municipios</a>.<sup id=\"cite_ref-1\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_territorial_de_M%C3%A9xico#cite_note-1\">1</a></sup></p>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 03:57:55', 0, '2018-09-27 03:57:55', 0, '*', 1),
(13, 84, 1, 21, 22, 1, 'lenguajes', 'com_content', 'Lenguajes', 'lenguajes', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 04:13:10', 0, '2018-09-27 04:13:10', 0, '*', 1),
(14, 90, 1, 23, 24, 1, 'cambio', 'com_content', 'Tipos de cambio', 'cambio', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 04:18:52', 0, '2018-09-27 04:18:52', 0, '*', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_contact_details`
--

CREATE TABLE `taw_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_content`
--

CREATE TABLE `taw_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_content`
--

INSERT INTO `taw_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 61, 'Getting Started', 'getting-started', '<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"Submit Article\" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \"Template Settings\" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the \"Site Settings\" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"User Menu\" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\"https://docs.joomla.org/\" target=\"_blank\">Joomla! documentation site</a> and on the<a href=\"https://forum.joomla.org/\" target=\"_blank\"> Joomla! forums</a>.</p>', '', 1, 2, '2018-09-27 02:57:51', 100, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2018-09-27 02:57:51', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 30, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(2, 66, 'Europa', 'europa', '<div class=\"rellink noprint\"><b>Europa</b> es uno de los <a title=\"Continente\" href=\"https://es.wikipedia.org/wiki/Continente\">continentes</a> que conforman el <a title=\"Supercontinente\" href=\"https://es.wikipedia.org/wiki/Supercontinente\">supercontinente</a> <a title=\"Eurasia\" href=\"https://es.wikipedia.org/wiki/Eurasia\">euroasiático</a>, situado entre los <a title=\"Paralelo\" href=\"https://es.wikipedia.org/wiki/Paralelo\">paralelos</a> 35º 30’ y 70º 30’ de <a title=\"Latitud\" href=\"https://es.wikipedia.org/wiki/Latitud\">latitud</a> norte. De forma convencional y por motivos histórico-culturales es considerada un continente, tras la delimitación realizada por el geógrafo ruso <a title=\"Vasili Tatíshchev\" href=\"https://es.wikipedia.org/wiki/Vasili_Tat%C3%ADshchev\">Vasili Tatíshchev</a> quien deseaba señalar la pertenencia de <a title=\"Rusia\" href=\"https://es.wikipedia.org/wiki/Rusia\">Rusia</a> a Europa y a <a title=\"Asia\" href=\"https://es.wikipedia.org/wiki/Asia\">Asia</a>.<sup id=\"cite_ref-1\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Europa#cite_note-1\">1</a></sup>​ Las fronteras de Europa y su población son objeto de controversia, ya que el término continente puede referirse a un bien cultural y político o a distinciones fisiográficas. Andreas Kaplan describe a Europa como «una máxima diversidad cultural en una superficie geográfica mínima».<sup id=\"cite_ref-2\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Europa#cite_note-2\">2</a></sup>​</div>', '', 1, 10, '2018-09-27 03:21:36', 100, '', '2018-09-27 03:52:17', 100, 0, '0000-00-00 00:00:00', '2018-09-27 03:21:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 5, '', '', 1, 30, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(3, 67, 'Continentes', 'continentes', '<div class=\"rellink noprint\">Para otros usos de este término, véase <a class=\"mw-disambig\" title=\"Continente (desambiguación)\" href=\"https://es.wikipedia.org/wiki/Continente_(desambiguaci%C3%B3n)\">Continente (desambiguación)</a>.</div>\r\n<p>Se considera como <b>continente</b> a una gran <a title=\"Territorio\" href=\"https://es.wikipedia.org/wiki/Territorio\">extensión</a> de <a title=\"Tierra\" href=\"https://es.wikipedia.org/wiki/Tierra\">tierra</a> que se diferencia de otras menores o sumergidas por conceptos <a title=\"Geografía\" href=\"https://es.wikipedia.org/wiki/Geograf%C3%ADa\">geográficos</a>, como son los <a title=\"Océano\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano\">océanos</a>; y <a title=\"Cultura\" href=\"https://es.wikipedia.org/wiki/Cultura\">culturales</a>, como la <a title=\"Etnografía\" href=\"https://es.wikipedia.org/wiki/Etnograf%C3%ADa\">etnografía</a>.</p>\r\n<p>La división de la <a title=\"Tierra\" href=\"https://es.wikipedia.org/wiki/Tierra\">Tierra</a> en continentes es convencional, y suelen reconocerse entre cuatro<sup id=\"cite_ref-Columbia_1-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Continente#cite_note-Columbia-1\">1</a></sup>​ y siete<sup id=\"cite_ref-EB_2-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Continente#cite_note-EB-2\">2</a></sup>​ continentes; por ejemplo, una división en 7 continentes suele ser: <a title=\"Asia\" href=\"https://es.wikipedia.org/wiki/Asia\">Asia</a>, <a title=\"Antártida\" href=\"https://es.wikipedia.org/wiki/Ant%C3%A1rtida\">Antártida</a>, <a title=\"Europa\" href=\"https://es.wikipedia.org/wiki/Europa\">Europa</a>, <a title=\"África\" href=\"https://es.wikipedia.org/wiki/%C3%81frica\">África</a>, <a title=\"Oceanía\" href=\"https://es.wikipedia.org/wiki/Ocean%C3%ADa\">Oceanía</a> (o el <a title=\"Sahul\" href=\"https://es.wikipedia.org/wiki/Sahul\">continente australiano</a>), <a title=\"América del Norte\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_del_Norte\">Norteamérica</a> y <a title=\"América del Sur\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_del_Sur\">Sudamérica</a>.</p>', '', 1, 8, '2018-09-27 03:34:56', 100, '', '2018-09-27 03:35:03', 100, 0, '0000-00-00 00:00:00', '2018-09-27 03:34:56', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 6, '', '', 1, 3, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(4, 69, 'America', 'america', '<p><b>América</b> es el segundo <a title=\"Continente\" href=\"https://es.wikipedia.org/wiki/Continente\">continente</a> más grande de la <a title=\"Tierra\" href=\"https://es.wikipedia.org/wiki/Tierra\">Tierra</a>, después de <a title=\"Asia\" href=\"https://es.wikipedia.org/wiki/Asia\">Asia</a>. Ocupa gran parte del <a title=\"Hemisferio occidental\" href=\"https://es.wikipedia.org/wiki/Hemisferio_occidental\">hemisferio occidental</a> del planeta. Se extiende desde el <a title=\"Océano Ártico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_%C3%81rtico\">océano Glacial Ártico</a> por el norte hasta las <a title=\"Islas Diego Ramírez\" href=\"https://es.wikipedia.org/wiki/Islas_Diego_Ram%C3%ADrez\">islas Diego Ramírez</a> por el sur, en la confluencia de los océanos <a title=\"Océano Atlántico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Atl%C3%A1ntico\">Atlántico</a> y <a title=\"Océano Pacífico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\">Pacífico</a>, los cuales a su vez delimitan al continente por el este y el oeste, respectivamente.</p>', '', 1, 10, '2018-09-27 03:40:20', 100, '', '2018-09-27 03:40:20', 0, 0, '0000-00-00 00:00:00', '2018-09-27 03:40:20', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 4, '', '', 1, 9, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(5, 70, 'Africa', 'africa', '<p><b>África</b> es el tercer <a title=\"Continente\" href=\"https://es.wikipedia.org/wiki/Continente\">continente</a> más extenso, tras <a title=\"Asia\" href=\"https://es.wikipedia.org/wiki/Asia\">Asia</a> y <a title=\"América\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica\">América</a>. Está situado entre los océanos <a title=\"Océano Atlántico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Atl%C3%A1ntico\">Atlántico</a>, al oeste, e <a class=\"mw-redirect\" title=\"Índico\" href=\"https://es.wikipedia.org/wiki/%C3%8Dndico\">Índico</a>, al este. El <a title=\"Mar Mediterráneo\" href=\"https://es.wikipedia.org/wiki/Mar_Mediterr%C3%A1neo\">mar Mediterráneo</a> lo separa al norte del continente europeo; el punto en el que los dos continentes se hallan más cercanos es el <a title=\"Estrecho de Gibraltar\" href=\"https://es.wikipedia.org/wiki/Estrecho_de_Gibraltar\">estrecho de Gibraltar</a> de 14,4 km de anchura. El <a title=\"Mar Rojo\" href=\"https://es.wikipedia.org/wiki/Mar_Rojo\">mar Rojo</a> lo separa al este de la <a title=\"Arabia\" href=\"https://es.wikipedia.org/wiki/Arabia\">península arábiga</a> y queda unido a <a title=\"Asia\" href=\"https://es.wikipedia.org/wiki/Asia\">Asia</a> a través del <a title=\"Istmo de Suez\" href=\"https://es.wikipedia.org/wiki/Istmo_de_Suez\">istmo de Suez</a>, en territorio egipcio. Posee una superficie total de 30 272 922 <a class=\"mw-redirect\" title=\"Kilómetros cuadrados\" href=\"https://es.wikipedia.org/wiki/Kil%C3%B3metros_cuadrados\">km²</a> (621 600 <a class=\"mw-redirect\" title=\"Kilómetros cuadrados\" href=\"https://es.wikipedia.org/wiki/Kil%C3%B3metros_cuadrados\">km²</a> en masa <a class=\"mw-redirect\" title=\"Insular\" href=\"https://es.wikipedia.org/wiki/Insular\">insular</a>), que representa el 20,4 % del total de las tierras emergidas del planeta. La población es de mil millones de habitantes, menos del 15 % del total mundial. El continente se divide en 54 <a title=\"Estado soberano\" href=\"https://es.wikipedia.org/wiki/Estado_soberano\">estados soberanos</a>, además de dos <a title=\"Estado con reconocimiento limitado\" href=\"https://es.wikipedia.org/wiki/Estado_con_reconocimiento_limitado\">estados con reconocimiento limitado</a> y dos <a title=\"Territorio dependiente\" href=\"https://es.wikipedia.org/wiki/Territorio_dependiente\">territorios dependientes</a></p>', '', 1, 10, '2018-09-27 03:44:08', 100, '', '2018-09-27 03:50:18', 100, 0, '0000-00-00 00:00:00', '2018-09-27 03:44:08', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 3, '', '', 1, 5, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(6, 71, 'Oceania', 'oceania', '<p><b>Oceanía</b> es un <a title=\"Continente\" href=\"https://es.wikipedia.org/wiki/Continente\">continente</a> <a title=\"Isla\" href=\"https://es.wikipedia.org/wiki/Isla\">insular</a> de la <a title=\"Tierra\" href=\"https://es.wikipedia.org/wiki/Tierra\">Tierra</a> constituido por la <a title=\"Sahul\" href=\"https://es.wikipedia.org/wiki/Sahul\">plataforma continental de Australia</a>, las islas de <a title=\"Nueva Guinea\" href=\"https://es.wikipedia.org/wiki/Nueva_Guinea\">Nueva Guinea</a>, <a title=\"Nueva Zelanda\" href=\"https://es.wikipedia.org/wiki/Nueva_Zelanda\">Nueva Zelanda</a> y los archipiélagos <a title=\"Coral\" href=\"https://es.wikipedia.org/wiki/Coral\">coralinos</a> y <a title=\"Volcán\" href=\"https://es.wikipedia.org/wiki/Volc%C3%A1n\">volcánicos</a> de <a title=\"Melanesia\" href=\"https://es.wikipedia.org/wiki/Melanesia\">Melanesia</a>, <a title=\"Micronesia\" href=\"https://es.wikipedia.org/wiki/Micronesia\">Micronesia</a> y <a title=\"Polinesia\" href=\"https://es.wikipedia.org/wiki/Polinesia\">Polinesia</a>. Un sector de los expertos considera que <a class=\"mw-redirect\" title=\"Insulindia\" href=\"https://es.wikipedia.org/wiki/Insulindia\">Insulindia</a> también forma parte de Oceanía.<sup id=\"cite_ref-d\'urville_1-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Ocean%C3%ADa#cite_note-d\'urville-1\">1</a></sup>​ Todas estas islas están distribuidas por el <a title=\"Océano Pacífico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\">océano Pacífico</a>. Con una extensión de 9 008 458 km², se trata del continente más pequeño del planeta tierra.</p>\r\n<p>En otros <a title=\"Continente\" href=\"https://es.wikipedia.org/wiki/Continente\">modelos continentales</a>, por ejemplo en los de habla inglesa, se usa <a class=\"mw-redirect\" title=\"Australia (continente)\" href=\"https://es.wikipedia.org/wiki/Australia_(continente)\">Australia (continente)</a> en lugar de Oceanía,<sup>[<i><a title=\"Wikipedia:Verificabilidad\" href=\"https://es.wikipedia.org/wiki/Wikipedia:Verificabilidad\">cita requerida</a></i>]</sup>pero en este caso su definición no incluye las <a title=\"Anexo:Islas del Pacífico\" href=\"https://es.wikipedia.org/wiki/Anexo:Islas_del_Pac%C3%ADfico\">islas del Pacífico</a>, así como en otros modelos se utiliza el término de Oceanía para designar el conjunto de todas las islas del Océano Pacífico</p>', '', 1, 10, '2018-09-27 03:52:59', 100, '', '2018-09-27 03:52:59', 0, 0, '0000-00-00 00:00:00', '2018-09-27 03:52:59', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 2, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(7, 72, 'Asia', 'asia', '<p><b>Asia</b> es el <a title=\"Continente\" href=\"https://es.wikipedia.org/wiki/Continente\">continente</a> más extenso y poblado de la <a title=\"Tierra\" href=\"https://es.wikipedia.org/wiki/Tierra\">Tierra</a>. Con cerca de 45 millones de km², supone el 8,70 % del total de la superficie terrestre y el 29,45 % de las tierras emergidas y, con alrededor de 4 140 000 000 de habitantes, el 69 % de la población mundial. Se extiende sobre la mitad oriental del <a class=\"mw-redirect\" title=\"Hemisferio Norte\" href=\"https://es.wikipedia.org/wiki/Hemisferio_Norte\">hemisferio Norte</a>, desde el <a title=\"Océano Ártico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_%C3%81rtico\">océano Glacial Ártico</a>, al norte, hasta el <a title=\"Océano Índico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_%C3%8Dndico\">océano Índico</a>, al sur. Limita, al oeste, con los <a title=\"Montes Urales\" href=\"https://es.wikipedia.org/wiki/Montes_Urales\">montes Urales</a>, y al este, con el <a title=\"Océano Pacífico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\">océano Pacífico</a>.</p>\r\n<p>En la división convencional de continentes, de origen europeo, Asia y <a title=\"Europa\" href=\"https://es.wikipedia.org/wiki/Europa\">Europa</a> aparecen como dos entidades diferentes por razones culturales e históricas. En términos geográficos, forman en realidad un único continente, llamado <a title=\"Eurasia\" href=\"https://es.wikipedia.org/wiki/Eurasia\">Eurasia</a>. Además, <a title=\"África\" href=\"https://es.wikipedia.org/wiki/%C3%81frica\">África</a> está unida a Eurasia por el <a title=\"Istmo de Suez\" href=\"https://es.wikipedia.org/wiki/Istmo_de_Suez\">istmo de Suez</a> por lo que también se puede considerar toda la extensión conjunta de Europa, Asia y África como un único supercontinente, ocasionalmente denominado <a title=\"Eurafrasia\" href=\"https://es.wikipedia.org/wiki/Eurafrasia\">Eurafrasia</a>, o Afro-eurasia.</p>', '', 1, 10, '2018-09-27 03:54:30', 100, '', '2018-09-27 03:54:36', 100, 0, '0000-00-00 00:00:00', '2018-09-27 03:54:30', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 1, '', '', 1, 7, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(8, 74, 'Tamaulipas', 'tamaulipas', '<p><b>Tamaulipas</b> (<small><a class=\"image\" href=\"https://commons.wikimedia.org/wiki/File:Speaker_Icon.svg\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/13px-Speaker_Icon.svg.png\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/20px-Speaker_Icon.svg.png 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/26px-Speaker_Icon.svg.png 2x\" alt=\"Speaker Icon.svg\" width=\"13\" height=\"13\" data-file-width=\"500\" data-file-height=\"500\" /></a> <a class=\"external text\" href=\"https://upload.wikimedia.org/wikipedia/commons/c/cb/TamaulipasPronunciation.ogg\">escuchar</a></small>en huasteco: <i>Tamholipa: \"lugar donde se reza mucho\"</i>), oficialmente <b>Estado Libre y Soberano de Tamaulipas</b>, es uno de los treinta y un <a class=\"mw-redirect\" title=\"Estados de Mexico\" href=\"https://es.wikipedia.org/wiki/Estados_de_Mexico\">estados</a> que, junto con la <a title=\"Ciudad de México\" href=\"https://es.wikipedia.org/wiki/Ciudad_de_M%C3%A9xico\">Ciudad de México</a>, forman los <a class=\"mw-redirect\" title=\"Estados Unidos Mexicanos\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos_Mexicanos\">Estados Unidos Mexicanos</a>. Su capital es <a title=\"Ciudad Victoria\" href=\"https://es.wikipedia.org/wiki/Ciudad_Victoria\">Ciudad Victoria</a> y su ciudad más poblada, <a title=\"Reynosa\" href=\"https://es.wikipedia.org/wiki/Reynosa\">Reynosa</a>. Está ubicado en la <a title=\"Regiones de México\" href=\"https://es.wikipedia.org/wiki/Regiones_de_M%C3%A9xico\">región</a> <a title=\"Noreste de México\" href=\"https://es.wikipedia.org/wiki/Noreste_de_M%C3%A9xico\">noreste</a> del país, limitando al norte con el <a title=\"Río Bravo\" href=\"https://es.wikipedia.org/wiki/R%C3%ADo_Bravo\">río Bravo</a> que lo separa de <a title=\"Estados Unidos\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">Estados Unidos</a>, al este con el <a title=\"Golfo de México\" href=\"https://es.wikipedia.org/wiki/Golfo_de_M%C3%A9xico\">golfo de México</a> (<a title=\"Océano Atlántico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Atl%C3%A1ntico\">océano Atlántico</a>), al sur con <a title=\"Veracruz de Ignacio de la Llave\" href=\"https://es.wikipedia.org/wiki/Veracruz_de_Ignacio_de_la_Llave\">Veracruz</a>, al suroeste con <a title=\"San Luis Potosí\" href=\"https://es.wikipedia.org/wiki/San_Luis_Potos%C3%AD\">San Luis Potosí</a> y al oeste con <a title=\"Nuevo León\" href=\"https://es.wikipedia.org/wiki/Nuevo_Le%C3%B3n\">Nuevo León</a>. Con 80 175 km² es el sexto estado más extenso, por detrás de <a title=\"Chihuahua\" href=\"https://es.wikipedia.org/wiki/Chihuahua\">Chihuahua</a>, <a title=\"Sonora\" href=\"https://es.wikipedia.org/wiki/Sonora\">Sonora</a>, <a title=\"Coahuila de Zaragoza\" href=\"https://es.wikipedia.org/wiki/Coahuila_de_Zaragoza\">Coahuila</a>, <a title=\"Durango\" href=\"https://es.wikipedia.org/wiki/Durango\">Durango</a> y <a title=\"Oaxaca\" href=\"https://es.wikipedia.org/wiki/Oaxaca\">Oaxaca</a>. Fue fundado el 7 de febrero de 1824.</p>\r\n<p>Se particiona en <a class=\"mw-redirect\" title=\"Municipios de Tamaulipas\" href=\"https://es.wikipedia.org/wiki/Municipios_de_Tamaulipas\">43 municipios</a>. Su capital es <a title=\"Ciudad Victoria\" href=\"https://es.wikipedia.org/wiki/Ciudad_Victoria\">Ciudad Victoria</a>. Otras poblaciones importantes son <a title=\"Tampico\" href=\"https://es.wikipedia.org/wiki/Tampico\">Tampico</a>, <a class=\"mw-redirect\" title=\"Reynosa (Tamaulipas)\" href=\"https://es.wikipedia.org/wiki/Reynosa_(Tamaulipas)\">Reynosa</a>, <a title=\"Heroica Matamoros\" href=\"https://es.wikipedia.org/wiki/Heroica_Matamoros\">Matamoros</a>, <a title=\"Nuevo Laredo\" href=\"https://es.wikipedia.org/wiki/Nuevo_Laredo\">Nuevo Laredo</a>, <a title=\"Ciudad Madero\" href=\"https://es.wikipedia.org/wiki/Ciudad_Madero\">Ciudad Madero</a>, <a title=\"Altamira (Tamaulipas)\" href=\"https://es.wikipedia.org/wiki/Altamira_(Tamaulipas)\">Altamira</a>, <a title=\"Aldama (Tamaulipas)\" href=\"https://es.wikipedia.org/wiki/Aldama_(Tamaulipas)\">Aldama</a>, <a title=\"Río Bravo (Tamaulipas)\" href=\"https://es.wikipedia.org/wiki/R%C3%ADo_Bravo_(Tamaulipas)\">Río Bravo</a>, <a class=\"mw-redirect\" title=\"El Mante\" href=\"https://es.wikipedia.org/wiki/El_Mante\">El Mante</a>, <a title=\"Xicoténcatl (Tamaulipas)\" href=\"https://es.wikipedia.org/wiki/Xicot%C3%A9ncatl_(Tamaulipas)\">Xicoténcatl</a> y <a title=\"Valle Hermoso (Tamaulipas)\" href=\"https://es.wikipedia.org/wiki/Valle_Hermoso_(Tamaulipas)\">Valle Hermoso</a>.</p>', '', 1, 12, '2018-09-27 03:59:10', 100, '', '2018-09-27 03:59:30', 100, 0, '0000-00-00 00:00:00', '2018-09-27 03:59:10', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 4, '', '', 1, 4, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(9, 75, 'Monterrey', 'monterrey', '<p><b>Monterrey</b> <small>(<a class=\"image\" href=\"https://commons.wikimedia.org/wiki/File:Speaker_Icon.svg\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/13px-Speaker_Icon.svg.png\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/20px-Speaker_Icon.svg.png 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/26px-Speaker_Icon.svg.png 2x\" alt=\"Speaker Icon.svg\" width=\"13\" height=\"13\" data-file-width=\"500\" data-file-height=\"500\" /></a> <a class=\"external text\" href=\"https://upload.wikimedia.org/wikipedia/commons/4/4d/Monterrey.ogg\">escuchar</a>)</small> es una ciudad mexicana, capital y ciudad más poblada del estado de <a title=\"Nuevo León\" href=\"https://es.wikipedia.org/wiki/Nuevo_Le%C3%B3n\">Nuevo León</a>. Monterrey es parte del <a class=\"mw-redirect\" title=\"Área Metropolitana de Monterrey\" href=\"https://es.wikipedia.org/wiki/%C3%81rea_Metropolitana_de_Monterrey\">Área Metropolitana de Monterrey</a>, cuya población es de 4.6 millones de habitantes, siendo la tercera área metropolitana más poblada de México, solo después de la <a title=\"Ciudad de México\" href=\"https://es.wikipedia.org/wiki/Ciudad_de_M%C3%A9xico\">Ciudad de México</a> y <a title=\"Guadalajara (México)\" href=\"https://es.wikipedia.org/wiki/Guadalajara_(M%C3%A9xico)\">Guadalajara</a>, y la <a title=\"Anexo:Ciudades de México por superficie\" href=\"https://es.wikipedia.org/wiki/Anexo:Ciudades_de_M%C3%A9xico_por_superficie\">segunda en extensión territorial</a> con 7657.5 kilómetros cuadrados. Monterrey se localiza a 913 km de la capital del país, la <a title=\"Ciudad de México\" href=\"https://es.wikipedia.org/wiki/Ciudad_de_M%C3%A9xico\">Ciudad de México</a>.<sup id=\"cite_ref-9\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Monterrey#cite_note-9\">9</a></sup>​</p>\r\n<p>Monterrey es una de las ciudades más desarrolladas de México. Tiene una larga historia, y es además uno de los principales centros de negocios del país. Funge como el epicentro industrial y económico para el <a class=\"mw-redirect\" title=\"Norte de México\" href=\"https://es.wikipedia.org/wiki/Norte_de_M%C3%A9xico\">Norte de México</a>. Según un estudio de Mercer Human Resource Consulting, en 2018 es la ciudad con mejor calidad de vida en México, la novena en <a title=\"América Latina\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_Latina\">América Latina</a> y la 112ª en el mundo.<sup id=\"cite_ref-mercer_10-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Monterrey#cite_note-mercer-10\">10</a></sup>​ La economía se caracteriza por ser la base de muchas empresas nacionales e internacionales como <a title=\"Cemex\" href=\"https://es.wikipedia.org/wiki/Cemex\">Cemex</a>, <a title=\"Oxxo\" href=\"https://es.wikipedia.org/wiki/Oxxo\">Oxxo</a>, <a title=\"Fomento Económico Mexicano\" href=\"https://es.wikipedia.org/wiki/Fomento_Econ%C3%B3mico_Mexicano\">FEMSA</a>, <a title=\"Vitro\" href=\"https://es.wikipedia.org/wiki/Vitro\">Vitro</a>, <a title=\"Alfa (empresa de México)\" href=\"https://es.wikipedia.org/wiki/Alfa_(empresa_de_M%C3%A9xico)\">Grupo Alfa</a>, entre otras, por lo que es llamada <i>La Capital Industrial de México</i>. Es la segunda <a title=\"Anexo:Ciudades por PIB\" href=\"https://es.wikipedia.org/wiki/Anexo:Ciudades_por_PIB\">ciudad de México por el tamaño de la economía local</a> con un PIB de 90,837 millones de dólares en 2015<sup id=\"cite_ref-f1f8809e_11-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Monterrey#cite_note-f1f8809e-11\">11</a></sup>​ y la decimocuarta de acuerdo a los <a title=\"Anexo:Indicadores de las ciudades de América Latina\" href=\"https://es.wikipedia.org/wiki/Anexo:Indicadores_de_las_ciudades_de_Am%C3%A9rica_Latina\">indicadores generales de las ciudades de América Latina</a> con un ICUR de 66,71 en 2016, contando con una renta per cápita PPA de 32,310 dólares y un PIB per Capita Nominal de 20,285 dólares ,<sup id=\"cite_ref-f1f8809e_11-1\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Monterrey#cite_note-f1f8809e-11\">11</a></sup>​ siendo la más alta del país y la segunda de <a title=\"América Latina\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_Latina\">América Latina</a>.<sup id=\"cite_ref-AMERICAECONOMIA15_12-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Monterrey#cite_note-AMERICAECONOMIA15-12\">12</a></sup>​ La ciudad es considerada una <a title=\"Ciudad global\" href=\"https://es.wikipedia.org/wiki/Ciudad_global\">ciudad beta</a><sup id=\"cite_ref-13\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Monterrey#cite_note-13\">13</a></sup>​ por ser globalizada y competitiva.<sup id=\"cite_ref-14\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Monterrey#cite_note-14\">14</a></sup></p>', '', 1, 12, '2018-09-27 04:00:11', 100, '', '2018-09-27 04:00:11', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:00:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 3, '', '', 1, 3, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(10, 76, 'Jalisco', 'jalisco', '<p><b>Jalisco</b> <small>(<a class=\"image\" href=\"https://commons.wikimedia.org/wiki/File:Speaker_Icon.svg\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/13px-Speaker_Icon.svg.png\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/20px-Speaker_Icon.svg.png 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/26px-Speaker_Icon.svg.png 2x\" alt=\"Speaker Icon.svg\" width=\"13\" height=\"13\" data-file-width=\"500\" data-file-height=\"500\" /></a> <a class=\"external text\" href=\"https://upload.wikimedia.org/wikipedia/commons/e/ea/JaliscoPronunciation.ogg\">escuchar</a>)</small> es uno de los treinta y un <a class=\"mw-redirect\" title=\"Estados de México\" href=\"https://es.wikipedia.org/wiki/Estados_de_M%C3%A9xico\">estados</a> que, junto con la <a title=\"Ciudad de México\" href=\"https://es.wikipedia.org/wiki/Ciudad_de_M%C3%A9xico\">Ciudad de México</a>, forman los <a class=\"mw-redirect\" title=\"Estados Unidos Mexicanos\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos_Mexicanos\">Estados Unidos Mexicanos</a>. Su capital y ciudad más poblada es <a title=\"Guadalajara (México)\" href=\"https://es.wikipedia.org/wiki/Guadalajara_(M%C3%A9xico)\">Guadalajara</a>. Está ubicado en la <a title=\"Regiones de México\" href=\"https://es.wikipedia.org/wiki/Regiones_de_M%C3%A9xico\">región</a> <a class=\"mw-redirect\" title=\"Oeste de México\" href=\"https://es.wikipedia.org/wiki/Oeste_de_M%C3%A9xico\">oeste</a> del país, limitando al norte con <a title=\"Nayarit\" href=\"https://es.wikipedia.org/wiki/Nayarit\">Nayarit</a>, <a title=\"Zacatecas\" href=\"https://es.wikipedia.org/wiki/Zacatecas\">Zacatecas</a>y <a title=\"Aguascalientes\" href=\"https://es.wikipedia.org/wiki/Aguascalientes\">Aguascalientes</a>, al noreste con <a title=\"San Luis Potosí\" href=\"https://es.wikipedia.org/wiki/San_Luis_Potos%C3%AD\">San Luis Potosí</a>, al este con <a title=\"Guanajuato\" href=\"https://es.wikipedia.org/wiki/Guanajuato\">Guanajuato</a>, al sur con <a title=\"Michoacán\" href=\"https://es.wikipedia.org/wiki/Michoac%C3%A1n\">Michoacán</a> y <a title=\"Colima\" href=\"https://es.wikipedia.org/wiki/Colima\">Colima</a>, y al oeste con el <a title=\"Océano Pacífico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\">océano Pacífico</a>. Con 7,844,830 habs. en 2015 es el tercer estado más poblado —por detrás de <a title=\"Estado de México\" href=\"https://es.wikipedia.org/wiki/Estado_de_M%C3%A9xico\">Estado de México</a> y <a title=\"Veracruz de Ignacio de la Llave\" href=\"https://es.wikipedia.org/wiki/Veracruz_de_Ignacio_de_la_Llave\">Veracruz</a>— y con 78,599 km², el séptimo más extenso, por detrás de <a title=\"Chihuahua\" href=\"https://es.wikipedia.org/wiki/Chihuahua\">Chihuahua</a>, <a title=\"Sonora\" href=\"https://es.wikipedia.org/wiki/Sonora\">Sonora</a>, <a title=\"Coahuila de Zaragoza\" href=\"https://es.wikipedia.org/wiki/Coahuila_de_Zaragoza\">Coahuila</a>, <a title=\"Durango\" href=\"https://es.wikipedia.org/wiki/Durango\">Durango</a>, <a title=\"Oaxaca\" href=\"https://es.wikipedia.org/wiki/Oaxaca\">Oaxaca</a> y <a title=\"Tamaulipas\" href=\"https://es.wikipedia.org/wiki/Tamaulipas\">Tamaulipas</a>. Fue fundado el 16 de junio de 1823<sup id=\"cite_ref-6\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Jalisco#cite_note-6\">6</a></sup>​</p>', '', 1, 12, '2018-09-27 04:01:11', 100, '', '2018-09-27 04:01:18', 100, 0, '0000-00-00 00:00:00', '2018-09-27 04:01:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 2, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(11, 77, 'Sonora', 'sonora', '<p><b>Sonora</b> <small>(<a class=\"image\" href=\"https://commons.wikimedia.org/wiki/File:Speaker_Icon.svg\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/13px-Speaker_Icon.svg.png\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/20px-Speaker_Icon.svg.png 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/26px-Speaker_Icon.svg.png 2x\" alt=\"Speaker Icon.svg\" width=\"13\" height=\"13\" data-file-width=\"500\" data-file-height=\"500\" /></a> <a class=\"internal\" title=\"Sonora13.ogg\" href=\"https://upload.wikimedia.org/wikipedia/commons/1/13/Sonora13.ogg\">escuchar</a>)</small> es uno de los treinta y un <a class=\"mw-redirect\" title=\"Estados de Mexico\" href=\"https://es.wikipedia.org/wiki/Estados_de_Mexico\">estados</a> que, junto con la <a title=\"Ciudad de México\" href=\"https://es.wikipedia.org/wiki/Ciudad_de_M%C3%A9xico\">Ciudad de México</a>, forman los <a class=\"mw-redirect\" title=\"Estados Unidos Mexicanos\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos_Mexicanos\">Estados Unidos Mexicanos</a>. Su capital y ciudad más poblada es <a title=\"Hermosillo\" href=\"https://es.wikipedia.org/wiki/Hermosillo\">Hermosillo</a>. Está ubicado en la <a title=\"Regiones de México\" href=\"https://es.wikipedia.org/wiki/Regiones_de_M%C3%A9xico\">región</a> <a title=\"Noroeste de México\" href=\"https://es.wikipedia.org/wiki/Noroeste_de_M%C3%A9xico\">noroeste</a> del país, limitando al norte con <a title=\"Estados Unidos\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">Estados Unidos</a>, al este con <a title=\"Chihuahua\" href=\"https://es.wikipedia.org/wiki/Chihuahua\">Chihuahua</a>, al sur con <a title=\"Sinaloa\" href=\"https://es.wikipedia.org/wiki/Sinaloa\">Sinaloa</a> y al oeste con el <a class=\"mw-redirect\" title=\"Mar de Cortés\" href=\"https://es.wikipedia.org/wiki/Mar_de_Cort%C3%A9s\">mar de Cortés</a> o <a title=\"Golfo de California\" href=\"https://es.wikipedia.org/wiki/Golfo_de_California\">golfo de California</a> (<a title=\"Océano Pacífico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\">océano Pacífico</a>). Con 179 503 km² es el segundo estado más extenso —por detrás de <a title=\"Chihuahua\" href=\"https://es.wikipedia.org/wiki/Chihuahua\">Chihuahua</a>— y con 14,83 hab/km², el quinto menos <a title=\"Densidad de población\" href=\"https://es.wikipedia.org/wiki/Densidad_de_poblaci%C3%B3n\">densamente poblado</a>, por detrás de <a title=\"Campeche\" href=\"https://es.wikipedia.org/wiki/Campeche\">Campeche</a>, <a title=\"Chihuahua\" href=\"https://es.wikipedia.org/wiki/Chihuahua\">Chihuahua</a>, <a title=\"Durango\" href=\"https://es.wikipedia.org/wiki/Durango\">Durango</a> y <a title=\"Baja California Sur\" href=\"https://es.wikipedia.org/wiki/Baja_California_Sur\">Baja California Sur</a>. Fue fundado el 10 de enero de 1824.</p>', '', 1, 12, '2018-09-27 04:05:29', 100, '', '2018-09-27 04:05:29', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:05:29', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 1, '', '', 1, 3, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');
INSERT INTO `taw_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(12, 78, 'Chiapas', 'chiapas', '<p><b>Chiapas</b> <small>(<a class=\"image\" href=\"https://commons.wikimedia.org/wiki/File:Speaker_Icon.svg\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/13px-Speaker_Icon.svg.png\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/20px-Speaker_Icon.svg.png 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/2/21/Speaker_Icon.svg/26px-Speaker_Icon.svg.png 2x\" alt=\"Speaker Icon.svg\" width=\"13\" height=\"13\" data-file-width=\"500\" data-file-height=\"500\" /></a> <a class=\"external text\" href=\"https://upload.wikimedia.org/wikipedia/commons/c/cf/Chiapas1.ogg\">escuchar</a>)</small> es una de las treinta y dos entidades federativas que integran los <a class=\"mw-redirect\" title=\"Estados Unidos Mexicanos\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos_Mexicanos\">Estados Unidos Mexicanos</a>. Está dividido en 124 municipios<sup id=\"cite_ref-3\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Chiapas#cite_note-3\">3</a></sup>​ y su capital y ciudad más poblada es <a title=\"Tuxtla Gutiérrez\" href=\"https://es.wikipedia.org/wiki/Tuxtla_Guti%C3%A9rrez\">Tuxtla Gutiérrez</a>. Otras ciudades importantes del estado incluyen <a title=\"Ocosingo\" href=\"https://es.wikipedia.org/wiki/Ocosingo\">Ocosingo</a>, <a title=\"Tapachula\" href=\"https://es.wikipedia.org/wiki/Tapachula\">Tapachula</a>, <a class=\"mw-redirect\" title=\"San Cristóbal de las Casas\" href=\"https://es.wikipedia.org/wiki/San_Crist%C3%B3bal_de_las_Casas\">San Cristóbal de las Casas</a>, <a class=\"mw-redirect\" title=\"Comitán\" href=\"https://es.wikipedia.org/wiki/Comit%C3%A1n\">Comitán</a> y <a title=\"Arriaga (Chiapas)\" href=\"https://es.wikipedia.org/wiki/Arriaga_(Chiapas)\">Arriaga</a>. Está ubicado en la <a title=\"Regiones de México\" href=\"https://es.wikipedia.org/wiki/Regiones_de_M%C3%A9xico\">región</a> <a title=\"Suroeste de México\" href=\"https://es.wikipedia.org/wiki/Suroeste_de_M%C3%A9xico\">suroeste</a> del país, limitando al norte con <a title=\"Tabasco\" href=\"https://es.wikipedia.org/wiki/Tabasco\">Tabasco</a>, al este y sureste con los departamentos guatemaltecos de <a title=\"Petén (región)\" href=\"https://es.wikipedia.org/wiki/Pet%C3%A9n_(regi%C3%B3n)\">Petén</a>, <a class=\"mw-redirect\" title=\"Quiché (Guatemala)\" href=\"https://es.wikipedia.org/wiki/Quich%C3%A9_(Guatemala)\">Quiché</a>, <a title=\"Huehuetenango\" href=\"https://es.wikipedia.org/wiki/Huehuetenango\">Huehuetenango</a> y <a class=\"mw-redirect\" title=\"San Marcos (Guatemala)\" href=\"https://es.wikipedia.org/wiki/San_Marcos_(Guatemala)\">San Marcos</a>, al sur con el <a title=\"Océano Pacífico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\">océano Pacífico</a>, al oeste con <a title=\"Oaxaca\" href=\"https://es.wikipedia.org/wiki/Oaxaca\">Oaxaca</a> y al noroeste con <a title=\"Veracruz de Ignacio de la Llave\" href=\"https://es.wikipedia.org/wiki/Veracruz_de_Ignacio_de_la_Llave\">Veracruz</a>. Con 5 217 908 de habitantes en 2015<sup id=\"cite_ref-4\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Chiapas#cite_note-4\">4</a></sup>​, es el sexto estado más poblado, por detrás del <a title=\"Estado de México\" href=\"https://es.wikipedia.org/wiki/Estado_de_M%C3%A9xico\">Estado de México</a>, <a title=\"Veracruz de Ignacio de la Llave\" href=\"https://es.wikipedia.org/wiki/Veracruz_de_Ignacio_de_la_Llave\">Veracruz</a>, <a title=\"Jalisco\" href=\"https://es.wikipedia.org/wiki/Jalisco\">Jalisco</a>, <a title=\"Puebla\" href=\"https://es.wikipedia.org/wiki/Puebla\">Puebla</a> y <a title=\"Guanajuato\" href=\"https://es.wikipedia.org/wiki/Guanajuato\">Guanajuato</a>. Fue fundado el 14 de septiembre de 1824.<sup id=\"cite_ref-5\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Chiapas#cite_note-5\">5</a></sup>​</p>', '', 1, 12, '2018-09-27 04:06:29', 100, '', '2018-09-27 04:06:29', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:06:29', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 4, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(13, 79, 'Mexico', 'mexico', '<p><b>México</b><sup id=\"cite_ref-17\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/M%C3%A9xico#cite_note-17\">nota 1</a></sup>​ (<span class=\"nounderlines\"><span class=\"unicode\"><a title=\"Acerca de este sonido\" href=\"https://es.wikipedia.org/wiki/Archivo:Mexico.ogg\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/11px-Loudspeaker.svg.png\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/17px-Loudspeaker.svg.png 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/22px-Loudspeaker.svg.png 2x\" alt=\"Acerca de este sonido\" width=\"11\" height=\"11\" data-file-width=\"20\" data-file-height=\"20\" /></a> <a class=\"internal\" title=\"Mexico.ogg\" href=\"https://upload.wikimedia.org/wikipedia/commons/5/5b/Mexico.ogg\"><span class=\"IPA\" title=\"Representación en el Alfabeto Fonético Internacional (IPA o AFI)\">[ˈmexiko]</span></a></span></span>), oficialmente llamado <b>Estados Unidos Mexicanos</b>,<sup id=\"cite_ref-18\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/M%C3%A9xico#cite_note-18\">17</a></sup>​<sup id=\"cite_ref-19\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/M%C3%A9xico#cite_note-19\">18</a></sup>​<sup id=\"cite_ref-presidencia.gob.mx_20-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/M%C3%A9xico#cite_note-presidencia.gob.mx-20\">19</a></sup>​<sup id=\"cite_ref-21\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/M%C3%A9xico#cite_note-21\">20</a></sup>​ es un país de <a title=\"América\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica\">América</a> ubicado en la parte meridional de <a title=\"América del Norte\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_del_Norte\">América del Norte</a>. Su capital es la <a title=\"Ciudad de México\" href=\"https://es.wikipedia.org/wiki/Ciudad_de_M%C3%A9xico\">Ciudad de México</a>.<sup id=\"cite_ref-22\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/M%C3%A9xico#cite_note-22\">21</a></sup>​ Políticamente es una <a title=\"República\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica\">república</a>, <a title=\"Representación (política)\" href=\"https://es.wikipedia.org/wiki/Representaci%C3%B3n_(pol%C3%ADtica)\">representativa</a>, <a title=\"Democracia\" href=\"https://es.wikipedia.org/wiki/Democracia\">democrática</a>, <a title=\"Federación\" href=\"https://es.wikipedia.org/wiki/Federaci%C3%B3n\">federal</a> y <a title=\"Estado laico\" href=\"https://es.wikipedia.org/wiki/Estado_laico\">laica</a>; compuesta por <a title=\"Organización territorial de México\" href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_territorial_de_M%C3%A9xico\">32 entidades federativas</a> (31 estados y la capital federal).<sup id=\"cite_ref-23\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/M%C3%A9xico#cite_note-23\">22</a></sup>​</p>\r\n<p>El territorio mexicano tiene una superficie de 1 964 375 <a title=\"Kilómetro cuadrado\" href=\"https://es.wikipedia.org/wiki/Kil%C3%B3metro_cuadrado\">km²</a>,<sup id=\"cite_ref-24\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/M%C3%A9xico#cite_note-24\">23</a></sup>​ por lo que es el <a title=\"Anexo:Países por superficie\" href=\"https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_por_superficie\">decimotercer</a> país más extenso del mundo y el tercero más grande de <a title=\"América Latina\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_Latina\">América Latina</a>. Limita al norte con los <a class=\"mw-redirect\" title=\"Estados Unidos de América\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos_de_Am%C3%A9rica\">Estados Unidos de América</a> a lo largo de una frontera de 3155 km, mientras que al sur tiene una frontera de 958 km con <a title=\"Guatemala\" href=\"https://es.wikipedia.org/wiki/Guatemala\">Guatemala</a> y 276 km con <a title=\"Belice\" href=\"https://es.wikipedia.org/wiki/Belice\">Belice</a>; las costas del país limitan al oeste con el <a title=\"Océano Pacífico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\">océano Pacífico</a> y al este con el <a title=\"Golfo de México\" href=\"https://es.wikipedia.org/wiki/Golfo_de_M%C3%A9xico\">golfo de México</a> y el <a title=\"Mar Caribe\" href=\"https://es.wikipedia.org/wiki/Mar_Caribe\">mar Caribe</a>, sumando 9330 km, por lo que es el tercer país americano con <a title=\"Anexo:Países por longitud de costa\" href=\"https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_por_longitud_de_costa\">mayor longitud en sus costas</a>.<sup id=\"cite_ref-25\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/M%C3%A9xico#cite_note-25\">24</a></sup>​</p>', '', 1, 8, '2018-09-27 04:09:13', 100, '', '2018-09-27 04:09:13', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:09:13', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 5, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(14, 80, 'Argentina', 'argentina', '<p><b>Argentina</b>, llamada oficialmente <b>República Argentina</b>,<sup id=\"cite_ref-16\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Argentina#cite_note-16\">n 1</a></sup>​ es un <a title=\"Estado nación\" href=\"https://es.wikipedia.org/wiki/Estado_naci%C3%B3n\">país soberano</a> de <a title=\"América del Sur\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_del_Sur\">América del Sur</a>, ubicado en el extremo sur y sudeste de dicho subcontinente. Adopta la forma de gobierno <a title=\"República\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica\">republicana</a>, <a title=\"Democracia\" href=\"https://es.wikipedia.org/wiki/Democracia\">democrática</a>, <a title=\"Democracia representativa\" href=\"https://es.wikipedia.org/wiki/Democracia_representativa\">representativa</a> y <a title=\"Federalismo\" href=\"https://es.wikipedia.org/wiki/Federalismo\">federal</a>.</p>\r\n<p>La Argentina está organizada como un <a title=\"Estado\" href=\"https://es.wikipedia.org/wiki/Estado\">Estado</a> federal <a title=\"Descentralización\" href=\"https://es.wikipedia.org/wiki/Descentralizaci%C3%B3n\">descentralizado</a>, integrado <a title=\"Reforma constitucional argentina de 1994\" href=\"https://es.wikipedia.org/wiki/Reforma_constitucional_argentina_de_1994\">desde 1994</a> por un Estado nacional y 24 estados autogobernados,<sup id=\"cite_ref-17\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Argentina#cite_note-17\">11</a></sup>​<sup id=\"cite_ref-18\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Argentina#cite_note-18\">12</a></sup>​ siendo estos sus 23 <a title=\"Provincias de Argentina\" href=\"https://es.wikipedia.org/wiki/Provincias_de_Argentina\">provincias</a> sumada la <a title=\"Buenos Aires\" href=\"https://es.wikipedia.org/wiki/Buenos_Aires\">ciudad autónoma de Buenos Aires</a> designada como <i>Capital Federal</i> del país. Cada estado tiene autonomía política, constitución, bandera y cuerpo de seguridad propios. Las 23 provincias mantienen todos los poderes no delegados al Estado nacional y garantizan la autonomía de sus <a title=\"Municipio\" href=\"https://es.wikipedia.org/wiki/Municipio\">municipios</a>.<sup id=\"cite_ref-19\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Argentina#cite_note-19\">13</a></sup>​<sup id=\"cite_ref-Barra_20-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Argentina#cite_note-Barra-20\">14</a></sup>​</p>\r\n<p>Integra el <a title=\"Mercosur\" href=\"https://es.wikipedia.org/wiki/Mercosur\">Mercosur</a> —bloque del que fue fundador en 1991—, la <a class=\"mw-redirect\" title=\"Unión de Naciones Sudamericanas\" href=\"https://es.wikipedia.org/wiki/Uni%C3%B3n_de_Naciones_Sudamericanas\">Unión de Naciones Sudamericanas</a> (Unasur), la <a title=\"Comunidad de Estados Latinoamericanos y Caribeños\" href=\"https://es.wikipedia.org/wiki/Comunidad_de_Estados_Latinoamericanos_y_Caribe%C3%B1os\">Comunidad de Estados Latinoamericanos y Caribeños</a> (CELAC) y la <a class=\"mw-redirect\" title=\"Organización de Estados Americanos\" href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_de_Estados_Americanos\">Organización de Estados Americanos</a> (OEA).</p>', '', 1, 8, '2018-09-27 04:09:51', 100, '', '2018-09-27 04:09:51', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:09:51', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(15, 81, 'Colombia', 'colombia', '<p><b>Colombia</b>, oficialmente <b>República de Colombia</b>, es un <a title=\"Estado\" href=\"https://es.wikipedia.org/wiki/Estado\">país soberano</a> situado en la región noroccidental de <a title=\"América del Sur\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_del_Sur\">América del Sur</a>, que se constituye en un <a title=\"Estado unitario\" href=\"https://es.wikipedia.org/wiki/Estado_unitario\">estado unitario</a>, <a title=\"Estado social\" href=\"https://es.wikipedia.org/wiki/Estado_social\">social</a> y <a title=\"Democracia\" href=\"https://es.wikipedia.org/wiki/Democracia\">democrático</a> de <a title=\"Estado de derecho\" href=\"https://es.wikipedia.org/wiki/Estado_de_derecho\">derecho</a> cuya forma de gobierno es <a title=\"Presidencialismo\" href=\"https://es.wikipedia.org/wiki/Presidencialismo\">presidencialista</a>. Es una república organizada políticamente en <a title=\"Departamentos de Colombia\" href=\"https://es.wikipedia.org/wiki/Departamentos_de_Colombia\">32 departamentos</a> descentralizados y el <a title=\"Distrito capital\" href=\"https://es.wikipedia.org/wiki/Distrito_capital\">Distrito capital</a> de <a title=\"Bogotá\" href=\"https://es.wikipedia.org/wiki/Bogot%C3%A1\">Bogotá</a>, sede del gobierno nacional.<sup id=\"cite_ref-:2_11-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-:2-11\">11</a></sup>​</p>\r\n<p>Incluyendo la <a title=\"Isla de Malpelo\" href=\"https://es.wikipedia.org/wiki/Isla_de_Malpelo\">isla de Malpelo</a>, el <a class=\"mw-redirect\" title=\"Cayo Roncador\" href=\"https://es.wikipedia.org/wiki/Cayo_Roncador\">cayo Roncador</a> y el <a title=\"Banco Serrana\" href=\"https://es.wikipedia.org/wiki/Banco_Serrana\">banco Serrana</a>, el país abarca una superficie de 1 141 748 km²,<sup id=\"cite_ref-superficie2_3-1\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-superficie2-3\">3</a></sup>​ por lo que es el <a title=\"Anexo:Países por superficie\" href=\"https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_por_superficie\">vigesimosexto</a> país más grande del mundo y el <a title=\"Anexo:Países de América por superficie\" href=\"https://es.wikipedia.org/wiki/Anexo:Pa%C3%ADses_de_Am%C3%A9rica_por_superficie\">séptimo</a> más grande de América. Reclama como mar territorial el área hasta las 12 millas náuticas de distancia,<sup id=\"cite_ref-superficie_4-2\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-superficie-4\">4</a></sup>​ manteniendo un diferendo limítrofe al respecto con <a title=\"Venezuela\" href=\"https://es.wikipedia.org/wiki/Venezuela\">Venezuela</a> y <a title=\"Nicaragua\" href=\"https://es.wikipedia.org/wiki/Nicaragua\">Nicaragua</a>.<sup id=\"cite_ref-12\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-12\">12</a></sup>​<sup id=\"cite_ref-13\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-13\">13</a></sup>​ Limita al <a title=\"Oriente\" href=\"https://es.wikipedia.org/wiki/Oriente\">Oriente</a>con Venezuela y <a title=\"Brasil\" href=\"https://es.wikipedia.org/wiki/Brasil\">Brasil</a>, al <a title=\"Sur\" href=\"https://es.wikipedia.org/wiki/Sur\">Sur</a> con <a title=\"Perú\" href=\"https://es.wikipedia.org/wiki/Per%C3%BA\">Perú</a> y <a title=\"Ecuador\" href=\"https://es.wikipedia.org/wiki/Ecuador\">Ecuador</a> y al Noroccidente con <a title=\"Panamá\" href=\"https://es.wikipedia.org/wiki/Panam%C3%A1\">Panamá</a>; en cuanto a límites marítimos, colinda con Panamá, <a title=\"Costa Rica\" href=\"https://es.wikipedia.org/wiki/Costa_Rica\">Costa Rica</a>, Nicaragua, <a title=\"Honduras\" href=\"https://es.wikipedia.org/wiki/Honduras\">Honduras</a>, <a title=\"Jamaica\" href=\"https://es.wikipedia.org/wiki/Jamaica\">Jamaica</a>, <a title=\"Haití\" href=\"https://es.wikipedia.org/wiki/Hait%C3%AD\">Haití</a>, <a title=\"República Dominicana\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_Dominicana\">República Dominicana</a> y Venezuela en el <a title=\"Mar Caribe\" href=\"https://es.wikipedia.org/wiki/Mar_Caribe\">mar Caribe</a>, y con Panamá, Costa Rica y Ecuador en el <a title=\"Océano Pacífico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\">océano Pacífico</a>.<sup id=\"cite_ref-14\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Colombia#cite_note-14\">14</a></sup>​</p>', '', 1, 8, '2018-09-27 04:10:23', 100, '', '2018-09-27 04:10:23', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:10:23', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 3, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(16, 82, 'Estados Unidos', 'estados-unidos', '<p><b>Estados Unidos</b><sup id=\"cite_ref-12\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Estados_Unidos#cite_note-12\">nota 2</a></sup>​ (en <a title=\"Idioma inglés\" href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s\">inglés</a>, <span lang=\"en\"><i>United States</i></span>, cuya abreviatura es EE. UU.),<sup id=\"cite_ref-13\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Estados_Unidos#cite_note-13\">nota 3</a></sup>​ oficialmente <b>Estados Unidos de América</b>(<i>United States of America</i>, cuya sigla oficial en inglés es USA y su contraparte en español es EUA),<sup id=\"cite_ref-DPD_11-3\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Estados_Unidos#cite_note-DPD-11\">10</a></sup>​ es un <a title=\"Estado\" href=\"https://es.wikipedia.org/wiki/Estado\">país soberano</a>constituido en <a title=\"República\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica\">república</a> <a title=\"Federación\" href=\"https://es.wikipedia.org/wiki/Federaci%C3%B3n\">federal</a> <a title=\"Constitución\" href=\"https://es.wikipedia.org/wiki/Constituci%C3%B3n\">constitucional</a> compuesta por cincuenta estados y un distrito federal. La mayor parte del país se ubica en el centro de <a title=\"América del Norte\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_del_Norte\">América del Norte</a> —donde se encuentran sus <a class=\"mw-redirect\" title=\"Estados Unidos continentales\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos_continentales\">cuarenta y ocho estados contiguos</a> y <a title=\"Washington D. C.\" href=\"https://es.wikipedia.org/wiki/Washington_D._C.\">Washington D. C.</a>, el <a title=\"Distrito federal\" href=\"https://es.wikipedia.org/wiki/Distrito_federal\">distrito federal</a>—, entre los océanos <a title=\"Océano Pacífico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Pac%C3%ADfico\">Pacífico</a> y <a title=\"Océano Atlántico\" href=\"https://es.wikipedia.org/wiki/Oc%C3%A9ano_Atl%C3%A1ntico\">Atlántico</a>, limita con <a title=\"Canadá\" href=\"https://es.wikipedia.org/wiki/Canad%C3%A1\">Canadá</a> al norte y con <a title=\"México\" href=\"https://es.wikipedia.org/wiki/M%C3%A9xico\">México</a> al sur. El estado de <a title=\"Alaska\" href=\"https://es.wikipedia.org/wiki/Alaska\">Alaska</a> está en el noroeste del continente, limitando con Canadá al este y separado de <a title=\"Rusia\" href=\"https://es.wikipedia.org/wiki/Rusia\">Rusia</a> al oeste por el <a title=\"Estrecho de Bering\" href=\"https://es.wikipedia.org/wiki/Estrecho_de_Bering\">estrecho de Bering</a>. El estado de <a title=\"Hawái\" href=\"https://es.wikipedia.org/wiki/Haw%C3%A1i\">Hawái</a>es un archipiélago <a title=\"Polinesia\" href=\"https://es.wikipedia.org/wiki/Polinesia\">polinesio</a> en medio del océano Pacífico, y es el único estado estadounidense que no se encuentra en <a title=\"América\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica\">América</a>. El país también posee <a title=\"Territorios no incorporados de los Estados Unidos\" href=\"https://es.wikipedia.org/wiki/Territorios_no_incorporados_de_los_Estados_Unidos\">varios territorios no incorporados</a> en el <a title=\"Mar Caribe\" href=\"https://es.wikipedia.org/wiki/Mar_Caribe\">mar Caribe</a> y en el Pacífico.</p>', '', 1, 8, '2018-09-27 04:11:03', 100, '', '2018-09-27 04:11:03', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:11:03', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 2, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(17, 83, 'Cuba', 'cuba', '<p><b>Cuba</b>, oficialmente la <b>República de Cuba</b>,<sup id=\"cite_ref-Constitución_1-2\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Cuba#cite_note-Constituci%C3%B3n-1\">1</a></sup>​ es un <a title=\"Estado\" href=\"https://es.wikipedia.org/wiki/Estado\">país soberano</a> <a title=\"País insular\" href=\"https://es.wikipedia.org/wiki/Pa%C3%ADs_insular\">insular</a> del <a title=\"Mar Caribe\" href=\"https://es.wikipedia.org/wiki/Mar_Caribe\">Caribe</a>, asentado en un <a title=\"Archipiélago\" href=\"https://es.wikipedia.org/wiki/Archipi%C3%A9lago\">archipiélago</a> del <a title=\"Mar Caribe\" href=\"https://es.wikipedia.org/wiki/Mar_Caribe\">Mar Caribe</a>. El territorio está organizado en <a title=\"Organización territorial de Cuba\" href=\"https://es.wikipedia.org/wiki/Organizaci%C3%B3n_territorial_de_Cuba\">quince provincias y un municipio especial</a> con <a title=\"La Habana\" href=\"https://es.wikipedia.org/wiki/La_Habana\">La Habana</a> como <a title=\"Capital (política)\" href=\"https://es.wikipedia.org/wiki/Capital_(pol%C3%ADtica)\">capital</a> y ciudad más poblada.</p>\r\n<p>Es uno de los trece <a title=\"País\" href=\"https://es.wikipedia.org/wiki/Pa%C3%ADs\">estados independientes</a> que forman la <a class=\"mw-redirect\" title=\"America Insular\" href=\"https://es.wikipedia.org/wiki/America_Insular\">América Insular</a>, <a title=\"Antillas\" href=\"https://es.wikipedia.org/wiki/Antillas\">Antillas o islas del mar Caribe</a>, y uno de los treinta y cinco del <a title=\"Continente\" href=\"https://es.wikipedia.org/wiki/Continente\">continente</a> <a title=\"América\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica\">americano</a>. La isla de Cuba tiene origen <a title=\"Orogénesis\" href=\"https://es.wikipedia.org/wiki/Orog%C3%A9nesis\">orogénico</a>. Completan el archipiélago la <a title=\"Isla de la Juventud\" href=\"https://es.wikipedia.org/wiki/Isla_de_la_Juventud\">Isla de la Juventud</a> y más de un millar de <a title=\"Cayo\" href=\"https://es.wikipedia.org/wiki/Cayo\">cayos</a> o pequeñas islas que las rodean: <a title=\"Cayo Coco\" href=\"https://es.wikipedia.org/wiki/Cayo_Coco\">Cayo Coco</a>, <a title=\"Cayo Guillermo\" href=\"https://es.wikipedia.org/wiki/Cayo_Guillermo\">Cayo Guillermo</a>, <a title=\"Cayo Largo del Sur\" href=\"https://es.wikipedia.org/wiki/Cayo_Largo_del_Sur\">Cayo Largo del Sur</a> y <a title=\"Cayo Jutías\" href=\"https://es.wikipedia.org/wiki/Cayo_Jut%C3%ADas\">Cayo Jutías</a>, entre otros. Colinda, al norte, con el estado <a title=\"Estados Unidos\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">estadounidense</a> de <a title=\"Florida\" href=\"https://es.wikipedia.org/wiki/Florida\">Florida</a> y con las <a title=\"Bahamas\" href=\"https://es.wikipedia.org/wiki/Bahamas\">Bahamas</a>, al oeste con <a title=\"México\" href=\"https://es.wikipedia.org/wiki/M%C3%A9xico\">México</a> y al sur con las <a title=\"Islas Caimán\" href=\"https://es.wikipedia.org/wiki/Islas_Caim%C3%A1n\">Islas Caimán</a> y <a title=\"Jamaica\" href=\"https://es.wikipedia.org/wiki/Jamaica\">Jamaica</a>. Al sudeste de Cuba, se encuentra la isla de <a title=\"La Española\" href=\"https://es.wikipedia.org/wiki/La_Espa%C3%B1ola\">La Española</a>.</p>', '', 1, 8, '2018-09-27 04:11:35', 100, '', '2018-09-27 04:11:35', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:11:35', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 1, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(18, 85, 'Ingles', 'ingles', '<p>El <b>idioma inglés</b> (<i>English</i> <a title=\"Alfabeto Fonético Internacional\" href=\"https://es.wikipedia.org/wiki/Alfabeto_Fon%C3%A9tico_Internacional\">[ˈɪŋɡlɪʃ]</a> o <i>English language</i>) es una <a title=\"Lenguas germánicas occidentales\" href=\"https://es.wikipedia.org/wiki/Lenguas_germ%C3%A1nicas_occidentales\">lengua germánica occidental</a> que surgió en los <a title=\"Inglaterra anglosajona\" href=\"https://es.wikipedia.org/wiki/Inglaterra_anglosajona\">reinos anglosajones</a> de <a title=\"Inglaterra\" href=\"https://es.wikipedia.org/wiki/Inglaterra\">Inglaterra</a> y se extendió hasta el Norte en lo que se convertiría en el sudeste de <a title=\"Escocia\" href=\"https://es.wikipedia.org/wiki/Escocia\">Escocia</a>, bajo la influencia del <a title=\"Reino de Northumbria\" href=\"https://es.wikipedia.org/wiki/Reino_de_Northumbria\">Reino de Northumbria</a>.</p>\r\n<p>El inglés es el tercer idioma nativo más extendido en el mundo, después del chino mandarín y el español. Es el segundo <a title=\"Idioma\" href=\"https://es.wikipedia.org/wiki/Idioma\">idioma</a> más aprendido y es el idioma oficial o uno de los idiomas oficiales en casi 60 Estados soberanos.</p>\r\n<p>Debido a la influencia política, económica, militar, científica y cultural de <a title=\"Reino de Gran Bretaña\" href=\"https://es.wikipedia.org/wiki/Reino_de_Gran_Breta%C3%B1a\">Gran Bretaña</a> y el <a title=\"Reino Unido\" href=\"https://es.wikipedia.org/wiki/Reino_Unido\">Reino Unido</a> desde el <a title=\"Siglo XVIII\" href=\"https://es.wikipedia.org/wiki/Siglo_XVIII\">siglo XVIII</a>, por medio del <a title=\"Imperio británico\" href=\"https://es.wikipedia.org/wiki/Imperio_brit%C3%A1nico\">Imperio británico</a> y los <a class=\"mw-redirect\" title=\"Estados Unidos de América\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos_de_Am%C3%A9rica\">Estados Unidos de América</a> desde mediados del <a title=\"Siglo XX\" href=\"https://es.wikipedia.org/wiki/Siglo_XX\">siglo XX</a>,<sup id=\"cite_ref-3\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s#cite_note-3\">3</a></sup>​<sup id=\"cite_ref-4\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s#cite_note-4\">4</a></sup>​<sup id=\"cite_ref-5\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s#cite_note-5\">5</a></sup>​<sup id=\"cite_ref-6\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s#cite_note-6\">6</a></sup>​ el inglés se ha difundido ampliamente por todo el mundo y es el idioma principal del discurso internacional y <a class=\"mw-redirect\" title=\"Lingua franca\" href=\"https://es.wikipedia.org/wiki/Lingua_franca\">lengua franca</a> en muchas regiones.<sup id=\"cite_ref-refCrystal1997_1_7-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s#cite_note-refCrystal1997_1-7\">7</a></sup>​<sup id=\"cite_ref-refWardhaugh2006_1_8-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s#cite_note-refWardhaugh2006_1-8\">8</a></sup>​ De la misma forma, es utilizado de manera general como lengua franca entre hablantes de idiomas distintos en la mayor parte de los países del mundo.<sup id=\"cite_ref-refCrystal1997_1_7-1\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s#cite_note-refCrystal1997_1-7\">7</a></sup>​<sup id=\"cite_ref-refWardhaugh2006_1_8-1\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s#cite_note-refWardhaugh2006_1-8\">8</a></sup>​ Se enseña también como <a title=\"Segunda lengua\" href=\"https://es.wikipedia.org/wiki/Segunda_lengua\">segunda lengua</a> en muchos sistemas educativos, que con el paso del tiempo ha proporcionado un estatus de superioridad cultural a sus hablantes no nativos, a causa de la influencia de los países anglosajones en el mundo.<sup id=\"cite_ref-refCrystal1997_1_7-2\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s#cite_note-refCrystal1997_1-7\">7</a></sup>​<sup id=\"cite_ref-refWardhaugh2006_1_8-2\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s#cite_note-refWardhaugh2006_1-8\">8</a></sup>​</p>', '', 1, 13, '2018-09-27 04:14:11', 100, '', '2018-09-27 04:14:11', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:14:11', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 4, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(19, 86, 'Español', 'espanol', '<p>El <b>idioma español</b> o <b>castellano</b> es una <a title=\"Idioma\" href=\"https://es.wikipedia.org/wiki/Idioma\">lengua</a> <a title=\"Lenguas romances\" href=\"https://es.wikipedia.org/wiki/Lenguas_romances\">romance</a> procedente del <a title=\"Latín vulgar\" href=\"https://es.wikipedia.org/wiki/Lat%C3%ADn_vulgar\">latín hablado</a>. Pertenece al <a title=\"Lenguas iberorromances\" href=\"https://es.wikipedia.org/wiki/Lenguas_iberorromances\">grupo ibérico</a>, y es originario del <a title=\"Reino de Castilla\" href=\"https://es.wikipedia.org/wiki/Reino_de_Castilla\">Reino de Castilla</a>. Se conoce también por el <a title=\"Americanismo (lingüística)\" href=\"https://es.wikipedia.org/wiki/Americanismo_(ling%C3%BC%C3%ADstica)\">americanismo</a> coloquial <i>castilla</i> (por ejemplo: «hablar castilla», «entender castilla»),<sup id=\"cite_ref-33\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-33\">nota 1</a></sup>​<sup id=\"cite_ref-34\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-34\">33</a></sup>​<sup id=\"cite_ref-35\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-35\">34</a></sup>​ común en áreas rurales e indígenas entre <a title=\"México\" href=\"https://es.wikipedia.org/wiki/M%C3%A9xico\">México</a>, <a title=\"Perú\" href=\"https://es.wikipedia.org/wiki/Per%C3%BA\">Perú</a> y la <a title=\"Patagonia\" href=\"https://es.wikipedia.org/wiki/Patagonia\">Patagonia</a>.<sup id=\"cite_ref-36\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-36\">35</a></sup>​</p>\r\n<p>Es la <a title=\"Anexo:Lenguas por número de hablantes nativos\" href=\"https://es.wikipedia.org/wiki/Anexo:Lenguas_por_n%C3%BAmero_de_hablantes_nativos\">segunda lengua</a> del mundo por el número de personas que la hablan como <a title=\"Lengua materna\" href=\"https://es.wikipedia.org/wiki/Lengua_materna\">lengua materna</a> tras el <a title=\"Chino mandarín\" href=\"https://es.wikipedia.org/wiki/Chino_mandar%C3%ADn\">chino mandarín</a>,<sup id=\"cite_ref-37\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-37\">36</a></sup>​<sup id=\"cite_ref-38\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-38\">37</a></sup>​<sup id=\"cite_ref-39\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-39\">38</a></sup>​<sup id=\"cite_ref-40\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-40\">39</a></sup>​ con 442 millones de hablantes nativos, aproximadamente<sup id=\"cite_ref-Ethnologue_41-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-Ethnologue-41\">40</a></sup>​ y lo hablan como primera y <a title=\"Segunda lengua\" href=\"https://es.wikipedia.org/wiki/Segunda_lengua\">segunda lengua</a> con dominio nativo 477 millones, alcanzando los 572 millones de personas si contamos a hablantes con competencia limitada,<sup id=\"cite_ref-hablantes_4-1\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-hablantes-4\">4</a></sup>​ de modo que puede ser considerada la tercera lengua del mundo por el total de hablantes tras el mandarín y el <a title=\"Idioma inglés\" href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s\">inglés</a>,<sup id=\"cite_ref-42\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-42\">41</a></sup>​<sup id=\"cite_ref-krystal_43-0\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-krystal-43\">42</a></sup>​<sup id=\"cite_ref-44\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-44\">43</a></sup>​<sup id=\"cite_ref-45\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-45\">44</a></sup>​ con más de 21 millones de estudiantes,<sup id=\"cite_ref-InformeEspañol_2-2\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-InformeEspa%C3%B1ol-2\">2</a></sup>​ y la tercera en <a class=\"mw-redirect\" title=\"Lengua vehicular\" href=\"https://es.wikipedia.org/wiki/Lengua_vehicular\">comunicación internacional</a>tras el inglés y <a title=\"Idioma francés\" href=\"https://es.wikipedia.org/wiki/Idioma_franc%C3%A9s\">francés</a>.<sup id=\"cite_ref-46\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-46\">45</a></sup>​ El español posee la tercera población alfabetizada del mundo (un 5,47 % del total), siendo la tercera lengua más utilizada para la producción de información en los medios de comunicación,<sup id=\"cite_ref-47\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-47\">46</a></sup>​ y también la tercera lengua con más usuarios de <a title=\"Internet\" href=\"https://es.wikipedia.org/wiki/Internet\">Internet</a>, después del chino y el inglés, con 256 millones de usuarios aproximadamente, lo que representa el 7,6 % del total.<sup id=\"cite_ref-48\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol#cite_note-48\">47</a></sup></p>', '', 1, 13, '2018-09-27 04:14:56', 100, '', '2018-09-27 04:14:56', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:14:56', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 3, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(20, 87, 'Japones', 'japones', '<p>El <b>idioma japonés</b> o <b>idioma nipón</b> (<span class=\"t_nihongo_kanji\" lang=\"ja\">日本語</span> <span class=\"t_nihongo_romaji\"><i>にほんご</i></span><span class=\"t_nihongo_help\"><sup><a title=\"Ayuda:Idioma japonés\" href=\"https://es.wikipedia.org/wiki/Ayuda:Idioma_japon%C3%A9s\"><span class=\"t_nihongo_icon\">?</span></a></sup></span>, <span class=\"unicode\"><a title=\"Acerca de este sonido\" href=\"https://es.wikipedia.org/wiki/Archivo:Ja-nihongo.ogg\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/11px-Loudspeaker.svg.png\" srcset=\"//upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/17px-Loudspeaker.svg.png 1.5x, //upload.wikimedia.org/wikipedia/commons/thumb/8/8a/Loudspeaker.svg/22px-Loudspeaker.svg.png 2x\" alt=\"Acerca de este sonido\" width=\"11\" height=\"11\" data-file-width=\"20\" data-file-height=\"20\" /></a> <a class=\"internal\" title=\"Ja-nihongo.ogg\" href=\"https://upload.wikimedia.org/wikipedia/commons/9/99/Ja-nihongo.ogg\">Nihongo</a> <small class=\"metadata audiolinkinfo\">(<a title=\"Ayuda:Multimedia\" href=\"https://es.wikipedia.org/wiki/Ayuda:Multimedia\"><span title=\"¿Problemas al reproducir este archivo?\">?</span></a>·<a title=\"Archivo:Ja-nihongo.ogg\" href=\"https://es.wikipedia.org/wiki/Archivo:Ja-nihongo.ogg\"><span title=\"Acerca de este sonido\">i</span></a>)</small></span>) (<a title=\"Alfabeto Fonético Internacional\" href=\"https://es.wikipedia.org/wiki/Alfabeto_Fon%C3%A9tico_Internacional\">AFI</a>:nihõŋgo) es un <a title=\"Idioma\" href=\"https://es.wikipedia.org/wiki/Idioma\">idioma</a> que suele ser clasificado como idioma aislado. Sin embargo, según los que afirman que el habla de las islas Ryūkyū conforman idiomas aparte, el japonés entraría en la familia de <a title=\"Lenguas japónicas\" href=\"https://es.wikipedia.org/wiki/Lenguas_jap%C3%B3nicas\">lenguas japónicas</a>. Es la lengua materna de más de 130 millones de personas y la lengua secundaria de más de 2 millones, siendo la lengua secundaria principalmente en <a title=\"República de China\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_de_China\">República de China</a> y <a title=\"Palaos\" href=\"https://es.wikipedia.org/wiki/Palaos\">Palaos</a>.</p>', '', 1, 13, '2018-09-27 04:15:36', 100, '', '2018-09-27 04:15:36', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:15:36', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 2, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');
INSERT INTO `taw_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(21, 88, 'Aleman', 'aleman', '<p>El <b>idioma alemán</b> (<i>Deutsch</i> <a class=\"mw-redirect\" title=\"Alfabeto fonético internacional\" href=\"https://es.wikipedia.org/wiki/Alfabeto_fon%C3%A9tico_internacional\">[ˈdɔʏtʃ]</a> o <i>deutsche Sprache</i>) es una <a title=\"Lenguaje\" href=\"https://es.wikipedia.org/wiki/Lenguaje\">lengua</a> <a title=\"Lenguas indoeuropeas\" href=\"https://es.wikipedia.org/wiki/Lenguas_indoeuropeas\">indoeuropea</a> perteneciente al grupo de las <a title=\"Lenguas germánicas\" href=\"https://es.wikipedia.org/wiki/Lenguas_germ%C3%A1nicas\">lenguas germánicas</a> occidentales. Es también una de las lenguas más importantes del mundo<sup id=\"cite_ref-6\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_alem%C3%A1n#cite_note-6\">6</a></sup>​ y la que más hablantes nativos tiene en la <a title=\"Unión Europea\" href=\"https://es.wikipedia.org/wiki/Uni%C3%B3n_Europea\">Unión Europea</a> con un 16 % del total.<sup id=\"cite_ref-7\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Idioma_alem%C3%A1n#cite_note-7\">7</a></sup>​ Los <a title=\"Adjetivo\" href=\"https://es.wikipedia.org/wiki/Adjetivo\">adjetivos</a> utilizados en lengua española para referirse al <a title=\"Habla\" href=\"https://es.wikipedia.org/wiki/Habla\">habla</a> alemana son <i>germanohablante</i> o <i>germanófono/a</i>. Es el segundo idioma germánico más hablado, después del <a title=\"Idioma inglés\" href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s\">inglés</a> y uno de los idiomas oficiales de la Unión Europea por ser el idioma materno de alrededor de 100 millones de personas en 2004, lo que representa el 13,3 % de los europeos. Si bien por el total de hablantes es la tercera lengua más hablada de Europa (después del <a title=\"Idioma inglés\" href=\"https://es.wikipedia.org/wiki/Idioma_ingl%C3%A9s\">inglés</a> y del <a class=\"mw-redirect\" title=\"Francés\" href=\"https://es.wikipedia.org/wiki/Franc%C3%A9s\">francés</a>), en cambio como lengua materna es el idioma más hablado del continente, excluida Rusia, por encima del francés (66,5 millones de hablantes en Europa en 2004) y el inglés (64,2 millones de hablantes en Europa en 2004). Es considerado el tercer idioma más enseñado como lengua extranjera en todo el mundo,<sup>[<i><a title=\"Wikipedia:Verificabilidad\" href=\"https://es.wikipedia.org/wiki/Wikipedia:Verificabilidad\">cita requerida</a></i>]</sup> el segundo en Europa y el tercero en Estados Unidos después del <a title=\"Idioma español\" href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol\">español</a> y el francés. Con unos 95 millones de hablantes en seis países del mundo, apenas sorprende que el uso del idioma varíe. Como el español y el inglés, es un idioma pluricéntrico, teniendo en el caso alemán tres centros principales: Alemania, Austria y Suiza.</p>', '', 1, 13, '2018-09-27 04:16:21', 100, '', '2018-09-27 04:16:21', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:16:21', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 1, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(22, 89, 'Chino Mandarin', 'chino', '<p>El <b>mandarín</b> (<a title=\"Caracteres chinos tradicionales\" href=\"https://es.wikipedia.org/wiki/Caracteres_chinos_tradicionales\">chino tradicional</a>: 官話, <a title=\"Caracteres chinos simplificados\" href=\"https://es.wikipedia.org/wiki/Caracteres_chinos_simplificados\">chino simplificado</a>: 官话, <a title=\"Pinyin\" href=\"https://es.wikipedia.org/wiki/Pinyin\">pinyin</a>: <i>guānhuà</i>, literalmente «el habla oficial») es el conjunto de <a class=\"mw-redirect\" title=\"Dialectos del chino\" href=\"https://es.wikipedia.org/wiki/Dialectos_del_chino\">dialectos del chino</a> mutuamente inteligibles que se hablan en el norte, centro y suroeste de <a class=\"mw-redirect\" title=\"China\" href=\"https://es.wikipedia.org/wiki/China\">China</a>. El término chino es, en <a title=\"Pinyin\" href=\"https://es.wikipedia.org/wiki/Pinyin\">pinyin</a>, <i>běifānghuà</i> (<a class=\"mw-redirect\" title=\"Chino tradicional\" href=\"https://es.wikipedia.org/wiki/Chino_tradicional\">Tradicional</a>: 北方話 / <a class=\"mw-redirect\" title=\"Chino simplificado\" href=\"https://es.wikipedia.org/wiki/Chino_simplificado\">simplificado</a>: 北方话, \"habla del norte\"). Con más de 836 millones de hablantes, es la principal forma hablada del <a title=\"Idioma chino\" href=\"https://es.wikipedia.org/wiki/Idioma_chino\">chino</a>, así como la lengua con mayor número de <a title=\"Anexo:Lenguas por número de hablantes nativos\" href=\"https://es.wikipedia.org/wiki/Anexo:Lenguas_por_n%C3%BAmero_de_hablantes_nativos\">hablantes nativos</a> y <a title=\"Anexo:Idiomas por el total de hablantes\" href=\"https://es.wikipedia.org/wiki/Anexo:Idiomas_por_el_total_de_hablantes\">hablantes totales</a> del mundo. El mandarín es muy diferente de las lenguas chinas del sur, como el <a title=\"Chino cantonés\" href=\"https://es.wikipedia.org/wiki/Chino_canton%C3%A9s\">cantonés</a> o el <a title=\"Chino wu\" href=\"https://es.wikipedia.org/wiki/Chino_wu\">wu</a>, puesto que no se tratan de dialectos del mandarín, sino idiomas chinos distintos.</p>\r\n<p>Por extensión, el término <a title=\"Mandarín estándar\" href=\"https://es.wikipedia.org/wiki/Mandar%C3%ADn_est%C3%A1ndar\">mandarín</a> se utiliza también para designar a la lengua china normativa u oficial, llamada \"pǔtōnghuà\" (普通話 / 普通话 \"habla de comunicación común\") en la República Popular China, <i>guóyǔ</i> (國語 / 国语, \"lengua nacional\") en <a class=\"mw-redirect\" title=\"Taiwán\" href=\"https://es.wikipedia.org/wiki/Taiw%C3%A1n\">Taiwán</a> y <i>huáyǔ</i> (華語 / 华语, \"lengua china\") en <a title=\"Singapur\" href=\"https://es.wikipedia.org/wiki/Singapur\">Singapur</a>, <a title=\"Malasia\" href=\"https://es.wikipedia.org/wiki/Malasia\">Malasia</a> e <a title=\"Indonesia\" href=\"https://es.wikipedia.org/wiki/Indonesia\">Indonesia</a>. Esta lengua es hablada también en países que tienen gran cantidad de inmigrantes chinos como <a title=\"Venezuela\" href=\"https://es.wikipedia.org/wiki/Venezuela\">Venezuela</a>, <a title=\"Perú\" href=\"https://es.wikipedia.org/wiki/Per%C3%BA\">Perú</a>, <a title=\"Canadá\" href=\"https://es.wikipedia.org/wiki/Canad%C3%A1\">Canadá</a>, <a title=\"Australia\" href=\"https://es.wikipedia.org/wiki/Australia\">Australia</a>, <a title=\"Cuba\" href=\"https://es.wikipedia.org/wiki/Cuba\">Cuba</a>, <a title=\"Estados Unidos\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">Estados Unidos</a>, <a title=\"Japón\" href=\"https://es.wikipedia.org/wiki/Jap%C3%B3n\">Japón</a>, <a title=\"España\" href=\"https://es.wikipedia.org/wiki/Espa%C3%B1a\">España</a>, <a title=\"República Dominicana\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_Dominicana\">República Dominicana</a>, <a title=\"Argentina\" href=\"https://es.wikipedia.org/wiki/Argentina\">Argentina</a>, <a title=\"Paraguay\" href=\"https://es.wikipedia.org/wiki/Paraguay\">Paraguay</a> o <a title=\"Panamá\" href=\"https://es.wikipedia.org/wiki/Panam%C3%A1\">Panamá</a>. Esta lengua estándar moderna se empezó a configurar a principios del <a title=\"Siglo XX\" href=\"https://es.wikipedia.org/wiki/Siglo_XX\">siglo XX</a>, y está basada fundamentalmente en la variedad pequinesa del mandarín, el <i>běijīnghuà</i> (北京話 / 北京话, \"habla pequinesa\").</p>', '', 1, 13, '2018-09-27 04:16:51', 100, '', '2018-09-27 04:16:51', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:16:51', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(23, 91, 'Peso Mexicano', 'pmex', '<p>El <b>peso mexicano</b> es la <a class=\"mw-redirect\" title=\"Moneda oficial\" href=\"https://es.wikipedia.org/wiki/Moneda_oficial\">moneda oficial</a> en <a title=\"México\" href=\"https://es.wikipedia.org/wiki/M%C3%A9xico\">México</a>. El peso mexicano fue la primera moneda en el mundo en utilizar el signo \"<a title=\"$\" href=\"https://es.wikipedia.org/wiki/$\">$</a>\", incluso antes que el <a title=\"Dólar estadounidense\" href=\"https://es.wikipedia.org/wiki/D%C3%B3lar_estadounidense\">dólar de Estados Unidos</a>, el cual más tarde lo adoptó para su propio uso.<sup id=\"cite_ref-2\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Peso_mexicano#cite_note-2\">2</a></sup>​ El peso mexicano es la octava moneda más negociada en el mundo, la más negociada de <a title=\"América Latina\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica_Latina\">América Latina</a> y la tercera más negociada en toda <a title=\"América\" href=\"https://es.wikipedia.org/wiki/Am%C3%A9rica\">América</a>.<sup id=\"cite_ref-3\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Peso_mexicano#cite_note-3\">3</a></sup>​ El código <a title=\"ISO 4217\" href=\"https://es.wikipedia.org/wiki/ISO_4217\">ISO 4217</a> actual para el peso es MXN; antes de la revalorización de 1993, se utilizó el código MXP. El peso se divide en 100 centavos, representados por el signo \"<a class=\"mw-redirect\" title=\"Centavo\" href=\"https://es.wikipedia.org/wiki/Centavo\">¢</a>\". El nombre <i>peso</i> ha correspondido a dos unidades monetarias mexicanas diferentes:</p>\r\n<ul>\r\n<li>La primera de ellas se identifica con el <a title=\"ISO 4217\" href=\"https://es.wikipedia.org/wiki/ISO_4217\">código ISO</a> <b>MXP</b>, que fue vigente hasta el 31 de diciembre de 1992.</li>\r\n<li>La segunda, equivalente a 1000 MXP, entró en vigencia el <a title=\"1 de enero\" href=\"https://es.wikipedia.org/wiki/1_de_enero\">1 de enero</a> de <a title=\"1993\" href=\"https://es.wikipedia.org/wiki/1993\">1993</a>,<sup id=\"cite_ref-4\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Peso_mexicano#cite_note-4\">4</a></sup>​ y tiene asignado el código ISO <b>MXN</b>. Esta unidad se denominó <b>Nuevo Peso Mexicano</b> hasta el <a title=\"31 de diciembre\" href=\"https://es.wikipedia.org/wiki/31_de_diciembre\">31 de diciembre</a> de <a title=\"1995\" href=\"https://es.wikipedia.org/wiki/1995\">1995</a> y simplemente <b>Peso Mexicano</b> desde el <a title=\"1 de enero\" href=\"https://es.wikipedia.org/wiki/1_de_enero\">1 de enero</a> de <a title=\"1996\" href=\"https://es.wikipedia.org/wiki/1996\">1996</a> hasta la fecha.<sup id=\"cite_ref-5\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Peso_mexicano#cite_note-5\">5</a></sup>​ Las monedas que a la fecha circulan en México están conformadas por semicírculos o anillos con motivos alusivos a la “<a title=\"Piedra del Sol\" href=\"https://es.wikipedia.org/wiki/Piedra_del_Sol\">Piedra del Sol</a>” o “<a title=\"Piedra del Sol\" href=\"https://es.wikipedia.org/wiki/Piedra_del_Sol\">Calendario Azteca</a>”.</li>\r\n</ul>', '', 1, 14, '2018-09-27 04:19:44', 100, '', '2018-09-27 04:19:44', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:19:44', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 3, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(24, 92, 'Moneda Argentina', 'parg', '<p>El <b>peso</b> (símbolo: <b>$</b>, <a title=\"ISO 4217\" href=\"https://es.wikipedia.org/wiki/ISO_4217\">ISO 4217</a>: ARS) es la <a title=\"Divisa\" href=\"https://es.wikipedia.org/wiki/Divisa\">moneda nacional</a> de la <a class=\"mw-redirect\" title=\"República Argentina\" href=\"https://es.wikipedia.org/wiki/Rep%C3%BAblica_Argentina\">República Argentina</a> desde <a title=\"1992\" href=\"https://es.wikipedia.org/wiki/1992\">1992</a>, cuando reemplazó al <a title=\"Austral (moneda)\" href=\"https://es.wikipedia.org/wiki/Austral_(moneda)\">austral</a>. También fue conocido como <b>peso convertible</b> debido a su paridad con el <a title=\"Dólar estadounidense\" href=\"https://es.wikipedia.org/wiki/D%C3%B3lar_estadounidense\">dólar</a> hasta la modificación de la <a title=\"Ley de Convertibilidad del Austral\" href=\"https://es.wikipedia.org/wiki/Ley_de_Convertibilidad_del_Austral\">ley de convertibilidad</a> en <a title=\"2002\" href=\"https://es.wikipedia.org/wiki/2002\">2002</a>. Comenzó a circular el <a title=\"1 de enero\" href=\"https://es.wikipedia.org/wiki/1_de_enero\">1 de enero</a> de <a title=\"1992\" href=\"https://es.wikipedia.org/wiki/1992\">1992</a> bajo la mencionada ley de <a title=\"1991\" href=\"https://es.wikipedia.org/wiki/1991\">1991</a>.<sup id=\"cite_ref-circulante_2-1\" class=\"reference separada\"><a href=\"https://es.wikipedia.org/wiki/Peso_(moneda_de_Argentina)#cite_note-circulante-2\">2</a></sup>​</p>', '', 1, 14, '2018-09-27 04:20:24', 100, '', '2018-09-27 04:20:24', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:20:24', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 2, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(25, 93, 'Dolar', 'dolar', '<p>El nombre de <i>Thaler</i> (de <i>Joachimsthal</i>, hoy <a title=\"Jáchymov\" href=\"https://es.wikipedia.org/wiki/J%C3%A1chymov\">Jáchymov</a>), en alemán Valle de Joaquín, una ciudad de <a title=\"Bohemia\" href=\"https://es.wikipedia.org/wiki/Bohemia\">Bohemia</a>, entonces parte del <a class=\"mw-redirect\" title=\"Imperio de los Habsburgo\" href=\"https://es.wikipedia.org/wiki/Imperio_de_los_Habsburgo\">Imperio de los Habsburgo</a>) tiene su origen en las <i>Guldengroschen</i> alemanas, monedas acuñadas con <a title=\"Plata\" href=\"https://es.wikipedia.org/wiki/Plata\">plata</a> de una mina de dicha ciudad. La expresión «<a title=\"Duro (moneda)\" href=\"https://es.wikipedia.org/wiki/Duro_(moneda)\">duro</a>» se usó para denominar a una moneda de plata, el <a title=\"Peso (moneda)\" href=\"https://es.wikipedia.org/wiki/Peso_(moneda)\">peso</a> o peso duro, una moneda de ocho <a title=\"Real español\" href=\"https://es.wikipedia.org/wiki/Real_espa%C3%B1ol\">reales</a> muy extendida en el <a title=\"Siglo XVIII\" href=\"https://es.wikipedia.org/wiki/Siglo_XVIII\">siglo XVIII</a>durante la <a class=\"mw-redirect\" title=\"Colonización de América del Norte\" href=\"https://es.wikipedia.org/wiki/Colonizaci%C3%B3n_de_Am%C3%A9rica_del_Norte\">colonización española del Nuevo Mundo</a>. El uso del duro o <a title=\"Dólar español\" href=\"https://es.wikipedia.org/wiki/D%C3%B3lar_espa%C3%B1ol\">dólar español</a>, junto al <a title=\"Tálero de María Teresa\" href=\"https://es.wikipedia.org/wiki/T%C3%A1lero_de_Mar%C3%ADa_Teresa\">tálero de María Teresa</a> de <a title=\"Austria\" href=\"https://es.wikipedia.org/wiki/Austria\">Austria</a> como moneda legal en los incipientes <a title=\"Estados Unidos\" href=\"https://es.wikipedia.org/wiki/Estados_Unidos\">Estados Unidos</a>, es la razón de su nombre actual. Esta moneda recibía en las colonias norteamericanas el nombre de dólar español y en 1785 fue adoptada como moneda oficial de Estados Unidos, tanto el nombre como el símbolo $, ante la carestía de moneda que provocó la Guerra de Independencia frente al Imperio Británico.</p>\r\n<p>En 1792 la <a title=\"United States Mint\" href=\"https://es.wikipedia.org/wiki/United_States_Mint\">Casa de la Moneda estadounidense</a> creó el dólar estadounidense, pero resultó mucho menos popular que el dólar español ya que éste era más pesado y tenía mejor plata. El uso del dólar español fue abolido en 1857, cuando tenía el mismo valor teórico que el dólar estadounidense. Pero su influencia quedó patente por ejemplo en <a title=\"Wall Street\" href=\"https://es.wikipedia.org/wiki/Wall_Street\">Wall Street</a>, donde el precio de las acciones del <a title=\"Mercado de valores\" href=\"https://es.wikipedia.org/wiki/Mercado_de_valores\">mercado de valores</a> se medía en octavos de dólar, ya que el real de a 8 o dólar español tenía el valor de 8 reales. Esta denominación perduró hasta 1997.</p>', '', 1, 14, '2018-09-27 04:21:00', 100, '', '2018-09-27 04:21:00', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:21:00', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 1, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(26, 94, 'Peso venezolano', 'pvez', '<p>El <b>peso</b> fue la moneda utilizada en <a title=\"Venezuela\" href=\"https://es.wikipedia.org/wiki/Venezuela\">Venezuela</a> desde <a title=\"1821\" href=\"https://es.wikipedia.org/wiki/1821\">1821</a> hasta <a title=\"1871\" href=\"https://es.wikipedia.org/wiki/1871\">1871</a> (aunque su uso se extendió hasta <a title=\"1874\" href=\"https://es.wikipedia.org/wiki/1874\">1874</a>). Un peso fuerte se dividía en 10 reales, 5 pesetas o 100 centavos. En <a title=\"1874\" href=\"https://es.wikipedia.org/wiki/1874\">1874</a> fue sustituido por el <a title=\"Venezolano (moneda)\" href=\"https://es.wikipedia.org/wiki/Venezolano_(moneda)\">venezolano</a>.</p>', '', 1, 14, '2018-09-27 04:21:44', 100, '', '2018-09-27 04:21:44', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:21:44', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 2, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(27, 95, 'Ejemplo', 'eje', '<p>Yes</p>', '', 1, 8, '2018-09-27 04:24:57', 100, '', '2018-09-27 04:24:57', 0, 0, '0000-00-00 00:00:00', '2018-09-27 04:24:57', '0000-00-00 00:00:00', '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_contentitem_tag_map`
--

CREATE TABLE `taw_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

--
-- Volcado de datos para la tabla `taw_contentitem_tag_map`
--

INSERT INTO `taw_contentitem_tag_map` (`type_alias`, `core_content_id`, `content_item_id`, `tag_id`, `tag_date`, `type_id`) VALUES
('com_content.article', 1, 1, 2, '2018-09-27 02:57:51', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_content_frontpage`
--

CREATE TABLE `taw_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_content_rating`
--

CREATE TABLE `taw_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_content_types`
--

CREATE TABLE `taw_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_content_types`
--

INSERT INTO `taw_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_core_log_searches`
--

CREATE TABLE `taw_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_extensions`
--

CREATE TABLE `taw_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_extensions`
--

INSERT INTO `taw_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"0\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"ff7bd86d00adeef64e82d04867355ce3\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `taw_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.38.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.8\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1538017081}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(480, 0, 'plg_system_sessiongc', 'plugin', 'sessiongc', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"February 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.6\",\"description\":\"PLG_SYSTEM_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sessiongc\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2018 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"August 2018\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.12.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_fields`
--

CREATE TABLE `taw_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_fields_categories`
--

CREATE TABLE `taw_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_fields_groups`
--

CREATE TABLE `taw_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_fields_values`
--

CREATE TABLE `taw_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_filters`
--

CREATE TABLE `taw_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links`
--

CREATE TABLE `taw_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_terms0`
--

CREATE TABLE `taw_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_terms1`
--

CREATE TABLE `taw_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_terms2`
--

CREATE TABLE `taw_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_terms3`
--

CREATE TABLE `taw_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_terms4`
--

CREATE TABLE `taw_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_terms5`
--

CREATE TABLE `taw_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_terms6`
--

CREATE TABLE `taw_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_terms7`
--

CREATE TABLE `taw_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_terms8`
--

CREATE TABLE `taw_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_terms9`
--

CREATE TABLE `taw_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_termsa`
--

CREATE TABLE `taw_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_termsb`
--

CREATE TABLE `taw_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_termsc`
--

CREATE TABLE `taw_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_termsd`
--

CREATE TABLE `taw_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_termse`
--

CREATE TABLE `taw_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_links_termsf`
--

CREATE TABLE `taw_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_taxonomy`
--

CREATE TABLE `taw_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `taw_finder_taxonomy`
--

INSERT INTO `taw_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_taxonomy_map`
--

CREATE TABLE `taw_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_terms`
--

CREATE TABLE `taw_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_terms_common`
--

CREATE TABLE `taw_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `taw_finder_terms_common`
--

INSERT INTO `taw_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_tokens`
--

CREATE TABLE `taw_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_tokens_aggregate`
--

CREATE TABLE `taw_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_finder_types`
--

CREATE TABLE `taw_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_languages`
--

CREATE TABLE `taw_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_languages`
--

INSERT INTO `taw_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_menu`
--

CREATE TABLE `taw_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_menu`
--

INSERT INTO `taw_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 63, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 21, 24, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 22, 23, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 31, 36, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 32, 33, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 34, 35, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 37, 38, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 39, 40, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 41, 42, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 43, 44, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 45, 46, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 47, 48, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 49, 50, 0, '*', 1),
(101, 'mainmenu', 'Inicio', 'homepage', '', 'homepage', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"1\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 51, 52, 1, '*', 0),
(102, 'usermenu', 'Your Profile', 'your-profile', '', 'your-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 17, 18, 0, '*', 0),
(103, 'usermenu', 'Site Administrator', '2013-11-16-23-26-41', '', '2013-11-16-23-26-41', 'administrator', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1}', 25, 26, 0, '*', 0),
(104, 'usermenu', 'Submit an Article', 'submit-an-article', '', 'submit-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{\"enable_category\":\"0\",\"catid\":\"2\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 19, 20, 0, '*', 0),
(106, 'usermenu', 'Template Settings', 'template-settings', '', 'template-settings', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 27, 28, 0, '*', 0),
(107, 'usermenu', 'Site Settings', 'site-settings', '', 'site-settings', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', 1, 1, 1, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 29, 30, 0, '*', 0),
(108, 'mainmenu', 'Paises', 'paises', '', 'paises', 'index.php?option=com_content&view=article&id=17', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 1, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 53, 54, 0, '*', 0),
(109, 'mainmenu', 'Estados', 'estados', '', 'estados', 'index.php?option=com_content&view=article&id=12', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 1, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 55, 56, 0, '*', 0),
(110, 'mainmenu', 'Continentes', 'continentes', '', 'continentes', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 57, 58, 0, '*', 0),
(111, 'mainmenu', 'Lenguajes', 'lenguajes', '', 'lenguajes', 'index.php?option=com_content&view=article&id=22', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 59, 60, 0, '*', 0),
(112, 'mainmenu', 'Tipos de cambio', 'tcambio', '', 'tcambio', 'index.php?option=com_content&view=article&id=26', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 61, 62, 0, '*', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_menu_types`
--

CREATE TABLE `taw_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_menu_types`
--

INSERT INTO `taw_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 0, 'usermenu', 'User Menu', 'A Menu for logged-in Users', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_messages`
--

CREATE TABLE `taw_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_messages_cfg`
--

CREATE TABLE `taw_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_modules`
--

CREATE TABLE `taw_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_modules`
--

INSERT INTO `taw_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":108,\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 54, 'Popular Tags', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_tags_popular', 1, 1, '{\"maximum\":\"10\",\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":\"1\",\"display_count\":0,\"no_results_text\":\"0\",\"minsize\":1,\"maxsize\":2,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(88, 55, 'Site Information', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 3, 1, '{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"0\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(89, 56, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{\"rssurl\":\"https:\\/\\/www.joomla.org\\/announcements\\/release-news.feed\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(90, 57, 'Latest Articles', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{\"catid\":[\"\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(91, 58, 'User Menu', '', '', 3, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"usermenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(92, 59, 'Image Module', '', '<p><img src=\"images/headers/blue-flower.jpg\" alt=\"Blue Flower\" /></p>', 0, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(93, 60, 'Search', '', '', 0, 'position-0', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"0\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_modules_menu`
--

CREATE TABLE `taw_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_modules_menu`
--

INSERT INTO `taw_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_newsfeeds`
--

CREATE TABLE `taw_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_overrider`
--

CREATE TABLE `taw_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_postinstall_messages`
--

CREATE TABLE `taw_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_postinstall_messages`
--

INSERT INTO `taw_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1),
(7, 700, 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_TITLE', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_BODY', 'PLG_PLG_RECAPTCHA_VERSION_1_POSTINSTALL_ACTION', 'plg_captcha_recaptcha', 1, 'action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_action', 'site://plugins/captcha/recaptcha/postinstall/actions.php', 'recaptcha_postinstall_condition', '3.8.6', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_redirect_links`
--

CREATE TABLE `taw_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_schemas`
--

CREATE TABLE `taw_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_schemas`
--

INSERT INTO `taw_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.9-2018-06-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_session`
--

CREATE TABLE `taw_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_session`
--

INSERT INTO `taw_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('b2v7ajn972cnkunccqekqv3ms5', 0, 1, '1538022328', 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxNDI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTM4MDE3MTIzO3M6NDoibGFzdCI7aToxNTM4MDIyMzI0O3M6Mzoibm93IjtpOjE1MzgwMjIzMjc7fXM6NToidG9rZW4iO3M6MzI6ImRPeXpyTDd1SmszTnIwc3Q2a3FkbkVkZnBWb2hDbXdNIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9\";', 0, ''),
('ghhcu4b0gr8nb9fo8cgqaqoe91', 1, 0, '1538022387', 'joomla|s:3940:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo3MTE7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTM4MDE3MDgxO3M6NDoibGFzdCI7aToxNTM4MDIyMzg2O3M6Mzoibm93IjtpOjE1MzgwMjIzODc7fXM6NToidG9rZW4iO3M6MzI6IldtSFNWNWg5eUR6emRwekVLbVRjUk5rcnNFUnRTWFFvIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjU6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7fXM6OToiY29tX21lbnVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjU6Iml0ZW1zIjtPOjg6InN0ZENsYXNzIjo1OntzOjg6Im1lbnV0eXBlIjtzOjg6Im1haW5tZW51IjtzOjk6ImNsaWVudF9pZCI7aTowO3M6MTA6ImxpbWl0c3RhcnQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fXM6NToibW9kYWwiO086ODoic3RkQ2xhc3MiOjc6e3M6ODoibWVudXR5cGUiO3M6ODoibWFpbm1lbnUiO3M6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjI6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czo5OiJhLmxmdCBBU0MiO3M6NToibGltaXQiO3M6MjoiMjAiO31zOjY6InNlYXJjaCI7czowOiIiO3M6OToicHVibGlzaGVkIjtzOjA6IiI7czo2OiJmaWx0ZXIiO2E6Njp7czo2OiJzZWFyY2giO3M6MDoiIjtzOjk6InB1Ymxpc2hlZCI7czowOiIiO3M6NjoiYWNjZXNzIjtzOjA6IiI7czo4OiJsYW5ndWFnZSI7czowOiIiO3M6NToibGV2ZWwiO3M6MDoiIjtzOjk6InBhcmVudF9pZCI7czowOiIiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czo0OiJ0eXBlIjtOO3M6NDoibGluayI7TjtzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fX19czoxNDoiY29tX2NhdGVnb3JpZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJjYXRlZ29yeSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJkYXRhIjtOO3M6MjoiaWQiO2E6MDp7fX19czoxMDoiY2F0ZWdvcmllcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJjb250ZW50IjtPOjg6InN0ZENsYXNzIjozOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9jb250ZW50Ijt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO31zOjU6Im1vZGFsIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTE6ImNvbV9jb250ZW50Ijt9czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319fX19czoxMToiY29tX2NvbnRlbnQiO086ODoic3RkQ2xhc3MiOjI6e3M6ODoiYXJ0aWNsZXMiO086ODoic3RkQ2xhc3MiOjQ6e3M6NjoiZmlsdGVyIjthOjY6e3M6Njoic2VhcmNoIjtzOjA6IiI7czo5OiJwdWJsaXNoZWQiO3M6MToiKiI7czoxMToiY2F0ZWdvcnlfaWQiO2E6NTp7aTowO3M6MToiOCI7aToxO3M6MjoiMTAiO2k6MjtzOjI6IjEyIjtpOjM7czoyOiIxMyI7aTo0O3M6MjoiMTQiO31zOjY6ImFjY2VzcyI7YToxOntpOjA7czoxOiIxIjt9czo4OiJsYW5ndWFnZSI7czoxOiIqIjtzOjU6ImxldmVsIjtzOjE6IjQiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7czo0OiJsaXN0IjthOjI6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czo4OiJhLmlkIEFTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7fXM6NToibW9kYWwiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjQ6e3M6Njoic2VhcmNoIjtzOjA6IiI7czo5OiJwdWJsaXNoZWQiO3M6MDoiIjtzOjg6Imxhbmd1YWdlIjtzOjA6IiI7czo1OiJsZXZlbCI7czowOiIiO31zOjQ6Imxpc3QiO2E6Mjp7czoxMjoiZnVsbG9yZGVyaW5nIjtzOjk6ImEuaWQgREVTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7fXM6MTA6ImxpbWl0c3RhcnQiO2k6MDt9fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJhcnRpY2xlIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fX19czoxMToiY29tX21vZHVsZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJtb2R1bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fXM6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZXh0ZW5zaW9uX2lkIjtOO3M6NjoicGFyYW1zIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtzOjM6IjEwMCI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjthOjA6e319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 100, 'root');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_tags`
--

CREATE TABLE `taw_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_tags`
--

INSERT INTO `taw_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 3, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2018-09-27 02:57:51', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 1, 2, 1, 'joomla', 'Joomla', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 100, '2018-09-27 02:57:51', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_template_styles`
--

CREATE TABLE `taw_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_template_styles`
--

INSERT INTO `taw_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_ucm_base`
--

CREATE TABLE `taw_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_ucm_base`
--

INSERT INTO `taw_ucm_base` (`ucm_id`, `ucm_item_id`, `ucm_type_id`, `ucm_language_id`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_ucm_content`
--

CREATE TABLE `taw_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

--
-- Volcado de datos para la tabla `taw_ucm_content`
--

INSERT INTO `taw_ucm_content` (`core_content_id`, `core_type_alias`, `core_title`, `core_alias`, `core_body`, `core_state`, `core_checked_out_time`, `core_checked_out_user_id`, `core_access`, `core_params`, `core_featured`, `core_metadata`, `core_created_user_id`, `core_created_by_alias`, `core_created_time`, `core_modified_user_id`, `core_modified_time`, `core_language`, `core_publish_up`, `core_publish_down`, `core_content_item_id`, `asset_id`, `core_images`, `core_urls`, `core_hits`, `core_version`, `core_ordering`, `core_metakey`, `core_metadesc`, `core_catid`, `core_xreference`, `core_type_id`) VALUES
(1, 'com_content.article', 'Getting Started', 'getting-started', '<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p><h3>What is a Content Management System?</h3><p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p><p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p><h3>Logging in</h3><p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p><h3>Creating an article</h3><p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"Submit Article\" link on that menu.</p><p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p><div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div><h3>Template, site settings, and modules</h3><p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \"Template Settings\" in the user menu.</p><p>The boxes around the main content of the site are called modules. You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p><p>You can change some site settings such as the site name and description by clicking on the \"Site Settings\" link.</p><p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p><h3>Site and Administrator</h3><p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"User Menu\" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p><h3>Learn more</h3><p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\"https://docs.joomla.org/\" target=\"_blank\">Joomla! documentation site</a> and on the<a href=\"https://forum.joomla.org/\" target=\"_blank\"> Joomla! forums</a>.</p>', 1, '', 0, 1, '{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 100, '', '2018-09-27 02:57:51', 0, '0000-00-00 00:00:00', '*', '2018-09-27 02:57:51', '0000-00-00 00:00:00', 1, 62, '{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', 0, 1, 0, '', '', 2, '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_ucm_history`
--

CREATE TABLE `taw_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_ucm_history`
--

INSERT INTO `taw_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 2, 10, 'Initial content', '2018-09-27 02:57:51', 100, 558, 'be28228b479aa67bad3dc1db2975232a033d5f0f', '{\"id\":2,\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":2,\"level\":1,\"path\":\"joomla\",\"title\":\"Joomla\",\"alias\":\"joomla\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"849\",\"created_time\":\"2013-11-16 00:00:00\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}', 0),
(2, 1, 1, 'Initial content', '2018-09-27 02:57:51', 100, 4539, '4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f', '{\"id\":1,\"asset_id\":54,\"title\":\"Getting Started\",\"alias\":\"getting-started\",\"introtext\":\"<p>It\'s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\\"Submit Article\\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\\"Template Settings\\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\\"Site Settings\\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\\"Site Administrator\\\" link on the \\\"User Menu\\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the website you envision. You can learn much more at the <a href=\\\"https:\\/\\/docs.joomla.org\\\" target=\\\"_blank\\\">Joomla! documentation site<\\/a> and on the<a href=\\\"https:\\/\\/forum.joomla.org\\/\\\" target=\\\"_blank\\\"> Joomla! forums<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"849\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(3, 8, 5, '', '2018-09-27 03:07:00', 100, 566, 'b1d1ecbd5bead180157980e804ba6e65b58aed01', '{\"id\":\"8\",\"asset_id\":63,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Paises\",\"alias\":\"paises\",\"note\":\"\",\"description\":\"<p>Ejemplo<\\/p>\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"100\",\"created_time\":\"2018-09-27 03:07:00\",\"modified_user_id\":null,\"modified_time\":\"2018-09-27 03:07:00\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(4, 9, 5, '', '2018-09-27 03:08:54', 100, 566, '5f706c431d9060ec8e265cfbb26b2943f3fc7516', '{\"id\":\"9\",\"asset_id\":64,\"parent_id\":\"8\",\"lft\":\"12\",\"rgt\":13,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"Paises\",\"alias\":\"paises\",\"note\":\"\",\"description\":\"<p>Ejemplo<\\/p>\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"100\",\"created_time\":\"2018-09-27 03:08:54\",\"modified_user_id\":null,\"modified_time\":\"2018-09-27 03:08:54\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(5, 10, 5, '', '2018-09-27 03:20:31', 100, 3066, '313413bc3f592d6ba2ce8d04a68e7d16aaef5453', '{\"id\":\"10\",\"asset_id\":65,\"parent_id\":\"1\",\"lft\":\"15\",\"rgt\":16,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Continentes\",\"alias\":\"continentes\",\"note\":\"\",\"description\":\"<div class=\\\"rellink noprint\\\">Para otros usos de este t\\u00e9rmino, v\\u00e9ase\\u00a0<a class=\\\"mw-disambig\\\" title=\\\"Continente (desambiguaci\\u00f3n)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente_(desambiguaci%C3%B3n)\\\">Continente (desambiguaci\\u00f3n)<\\/a>.<\\/div>\\r\\n<p>Se considera como\\u00a0<b>continente<\\/b>\\u00a0a una gran\\u00a0<a title=\\\"Territorio\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Territorio\\\">extensi\\u00f3n<\\/a>\\u00a0de\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">tierra<\\/a>\\u00a0que se diferencia de otras menores o sumergidas por conceptos\\u00a0<a title=\\\"Geograf\\u00eda\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Geograf%C3%ADa\\\">geogr\\u00e1ficos<\\/a>, como son los\\u00a0<a title=\\\"Oc\\u00e9ano\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano\\\">oc\\u00e9anos<\\/a>; y\\u00a0<a title=\\\"Cultura\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cultura\\\">culturales<\\/a>, como la\\u00a0<a title=\\\"Etnograf\\u00eda\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Etnograf%C3%ADa\\\">etnograf\\u00eda<\\/a>.<\\/p>\\r\\n<p>La divisi\\u00f3n de la\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">Tierra<\\/a>\\u00a0en continentes es convencional, y suelen reconocerse entre cuatro<sup id=\\\"cite_ref-Columbia_1-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente#cite_note-Columbia-1\\\">1<\\/a><\\/sup>\\u200b y siete<sup id=\\\"cite_ref-EB_2-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente#cite_note-EB-2\\\">2<\\/a><\\/sup>\\u200b continentes; por ejemplo, una divisi\\u00f3n en 7 continentes suele ser:\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>,\\u00a0<a title=\\\"Ant\\u00e1rtida\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ant%C3%A1rtida\\\">Ant\\u00e1rtida<\\/a>,\\u00a0<a title=\\\"Europa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Europa\\\">Europa<\\/a>,\\u00a0<a title=\\\"\\u00c1frica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/%C3%81frica\\\">\\u00c1frica<\\/a>,\\u00a0<a title=\\\"Ocean\\u00eda\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ocean%C3%ADa\\\">Ocean\\u00eda<\\/a>\\u00a0(o el\\u00a0<a title=\\\"Sahul\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Sahul\\\">continente australiano<\\/a>),\\u00a0<a title=\\\"Am\\u00e9rica del Norte\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_del_Norte\\\">Norteam\\u00e9rica<\\/a>\\u00a0y\\u00a0<a title=\\\"Am\\u00e9rica del Sur\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_del_Sur\\\">Sudam\\u00e9rica<\\/a>.<\\/p>\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"100\",\"created_time\":\"2018-09-27 03:20:31\",\"modified_user_id\":null,\"modified_time\":\"2018-09-27 03:20:31\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(6, 2, 1, '', '2018-09-27 03:21:36', 100, 4255, 'a154f9d3ddf21ef472b6eac768c68b2e2edf8c88', '{\"id\":\"2\",\"asset_id\":66,\"title\":\"Continentes\",\"alias\":\"continentes\",\"introtext\":\"<div class=\\\"rellink noprint\\\">Para otros usos de este t\\u00e9rmino, v\\u00e9ase\\u00a0<a class=\\\"mw-disambig\\\" title=\\\"Continente (desambiguaci\\u00f3n)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente_(desambiguaci%C3%B3n)\\\">Continente (desambiguaci\\u00f3n)<\\/a>.<\\/div>\\r\\n<p>Se considera como\\u00a0<b>continente<\\/b>\\u00a0a una gran\\u00a0<a title=\\\"Territorio\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Territorio\\\">extensi\\u00f3n<\\/a>\\u00a0de\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">tierra<\\/a>\\u00a0que se diferencia de otras menores o sumergidas por conceptos\\u00a0<a title=\\\"Geograf\\u00eda\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Geograf%C3%ADa\\\">geogr\\u00e1ficos<\\/a>, como son los\\u00a0<a title=\\\"Oc\\u00e9ano\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano\\\">oc\\u00e9anos<\\/a>; y\\u00a0<a title=\\\"Cultura\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cultura\\\">culturales<\\/a>, como la\\u00a0<a title=\\\"Etnograf\\u00eda\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Etnograf%C3%ADa\\\">etnograf\\u00eda<\\/a>.<\\/p>\\r\\n<p>La divisi\\u00f3n de la\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">Tierra<\\/a>\\u00a0en continentes es convencional, y suelen reconocerse entre cuatro<sup id=\\\"cite_ref-Columbia_1-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente#cite_note-Columbia-1\\\">1<\\/a><\\/sup>\\u200b y siete<sup id=\\\"cite_ref-EB_2-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente#cite_note-EB-2\\\">2<\\/a><\\/sup>\\u200b continentes; por ejemplo, una divisi\\u00f3n en 7 continentes suele ser:\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>,\\u00a0<a title=\\\"Ant\\u00e1rtida\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ant%C3%A1rtida\\\">Ant\\u00e1rtida<\\/a>,\\u00a0<a title=\\\"Europa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Europa\\\">Europa<\\/a>,\\u00a0<a title=\\\"\\u00c1frica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/%C3%81frica\\\">\\u00c1frica<\\/a>,\\u00a0<a title=\\\"Ocean\\u00eda\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ocean%C3%ADa\\\">Ocean\\u00eda<\\/a>\\u00a0(o el\\u00a0<a title=\\\"Sahul\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Sahul\\\">continente australiano<\\/a>),\\u00a0<a title=\\\"Am\\u00e9rica del Norte\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_del_Norte\\\">Norteam\\u00e9rica<\\/a>\\u00a0y\\u00a0<a title=\\\"Am\\u00e9rica del Sur\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_del_Sur\\\">Sudam\\u00e9rica<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2018-09-27 03:21:36\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:21:36\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 03:21:36\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(7, 3, 1, '', '2018-09-27 03:34:56', 100, 4254, '3540d4f15d342981256b819651018b97e8f171c8', '{\"id\":\"3\",\"asset_id\":67,\"title\":\"Continentes\",\"alias\":\"continentes\",\"introtext\":\"<div class=\\\"rellink noprint\\\">Para otros usos de este t\\u00e9rmino, v\\u00e9ase\\u00a0<a class=\\\"mw-disambig\\\" title=\\\"Continente (desambiguaci\\u00f3n)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente_(desambiguaci%C3%B3n)\\\">Continente (desambiguaci\\u00f3n)<\\/a>.<\\/div>\\r\\n<p>Se considera como\\u00a0<b>continente<\\/b>\\u00a0a una gran\\u00a0<a title=\\\"Territorio\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Territorio\\\">extensi\\u00f3n<\\/a>\\u00a0de\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">tierra<\\/a>\\u00a0que se diferencia de otras menores o sumergidas por conceptos\\u00a0<a title=\\\"Geograf\\u00eda\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Geograf%C3%ADa\\\">geogr\\u00e1ficos<\\/a>, como son los\\u00a0<a title=\\\"Oc\\u00e9ano\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano\\\">oc\\u00e9anos<\\/a>; y\\u00a0<a title=\\\"Cultura\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cultura\\\">culturales<\\/a>, como la\\u00a0<a title=\\\"Etnograf\\u00eda\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Etnograf%C3%ADa\\\">etnograf\\u00eda<\\/a>.<\\/p>\\r\\n<p>La divisi\\u00f3n de la\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">Tierra<\\/a>\\u00a0en continentes es convencional, y suelen reconocerse entre cuatro<sup id=\\\"cite_ref-Columbia_1-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente#cite_note-Columbia-1\\\">1<\\/a><\\/sup>\\u200b y siete<sup id=\\\"cite_ref-EB_2-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente#cite_note-EB-2\\\">2<\\/a><\\/sup>\\u200b continentes; por ejemplo, una divisi\\u00f3n en 7 continentes suele ser:\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>,\\u00a0<a title=\\\"Ant\\u00e1rtida\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ant%C3%A1rtida\\\">Ant\\u00e1rtida<\\/a>,\\u00a0<a title=\\\"Europa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Europa\\\">Europa<\\/a>,\\u00a0<a title=\\\"\\u00c1frica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/%C3%81frica\\\">\\u00c1frica<\\/a>,\\u00a0<a title=\\\"Ocean\\u00eda\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ocean%C3%ADa\\\">Ocean\\u00eda<\\/a>\\u00a0(o el\\u00a0<a title=\\\"Sahul\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Sahul\\\">continente australiano<\\/a>),\\u00a0<a title=\\\"Am\\u00e9rica del Norte\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_del_Norte\\\">Norteam\\u00e9rica<\\/a>\\u00a0y\\u00a0<a title=\\\"Am\\u00e9rica del Sur\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_del_Sur\\\">Sudam\\u00e9rica<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-09-27 03:34:56\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:34:56\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 03:34:56\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(8, 11, 5, '', '2018-09-27 03:38:26', 100, 1836, 'fc0cff1a5da25e6c3edb0cd14185e0649a0f6f53', '{\"id\":\"11\",\"asset_id\":68,\"parent_id\":\"10\",\"lft\":\"16\",\"rgt\":17,\"level\":2,\"path\":null,\"extension\":\"com_content\",\"title\":\"America\",\"alias\":\"america\",\"note\":\"\",\"description\":\"<p><b>Am\\u00e9rica<\\/b>\\u00a0es el segundo\\u00a0<a title=\\\"Continente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente\\\">continente<\\/a>\\u00a0m\\u00e1s grande de la\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">Tierra<\\/a>, despu\\u00e9s de\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>. Ocupa gran parte del\\u00a0<a title=\\\"Hemisferio occidental\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Hemisferio_occidental\\\">hemisferio occidental<\\/a>\\u00a0del planeta. Se extiende desde el\\u00a0<a title=\\\"Oc\\u00e9ano \\u00c1rtico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_%C3%81rtico\\\">oc\\u00e9ano Glacial \\u00c1rtico<\\/a>\\u00a0por el norte hasta las\\u00a0<a title=\\\"Islas Diego Ram\\u00edrez\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Islas_Diego_Ram%C3%ADrez\\\">islas Diego Ram\\u00edrez<\\/a>\\u00a0por el sur, en la confluencia de los oc\\u00e9anos\\u00a0<a title=\\\"Oc\\u00e9ano Atl\\u00e1ntico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Atl%C3%A1ntico\\\">Atl\\u00e1ntico<\\/a>\\u00a0y\\u00a0<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">Pac\\u00edfico<\\/a>, los cuales a su vez delimitan al continente por el este y el oeste, respectivamente.<\\/p>\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"100\",\"created_time\":\"2018-09-27 03:38:26\",\"modified_user_id\":null,\"modified_time\":\"2018-09-27 03:38:26\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(9, 4, 1, '', '2018-09-27 03:40:20', 100, 3024, '1d744110e80c6ef4399199e6c831b454fe96bb51', '{\"id\":\"4\",\"asset_id\":69,\"title\":\"America\",\"alias\":\"america\",\"introtext\":\"<p><b>Am\\u00e9rica<\\/b>\\u00a0es el segundo\\u00a0<a title=\\\"Continente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente\\\">continente<\\/a>\\u00a0m\\u00e1s grande de la\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">Tierra<\\/a>, despu\\u00e9s de\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>. Ocupa gran parte del\\u00a0<a title=\\\"Hemisferio occidental\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Hemisferio_occidental\\\">hemisferio occidental<\\/a>\\u00a0del planeta. Se extiende desde el\\u00a0<a title=\\\"Oc\\u00e9ano \\u00c1rtico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_%C3%81rtico\\\">oc\\u00e9ano Glacial \\u00c1rtico<\\/a>\\u00a0por el norte hasta las\\u00a0<a title=\\\"Islas Diego Ram\\u00edrez\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Islas_Diego_Ram%C3%ADrez\\\">islas Diego Ram\\u00edrez<\\/a>\\u00a0por el sur, en la confluencia de los oc\\u00e9anos\\u00a0<a title=\\\"Oc\\u00e9ano Atl\\u00e1ntico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Atl%C3%A1ntico\\\">Atl\\u00e1ntico<\\/a>\\u00a0y\\u00a0<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">Pac\\u00edfico<\\/a>, los cuales a su vez delimitan al continente por el este y el oeste, respectivamente.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2018-09-27 03:40:20\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:40:20\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 03:40:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(10, 5, 1, '', '2018-09-27 03:44:08', 100, 3025, '7adbddc8304e2775557f4dbaaa0e8e76f5d97678', '{\"id\":\"5\",\"asset_id\":70,\"title\":\"America\",\"alias\":\"americas\",\"introtext\":\"<p><b>Am\\u00e9rica<\\/b>\\u00a0es el segundo\\u00a0<a title=\\\"Continente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente\\\">continente<\\/a>\\u00a0m\\u00e1s grande de la\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">Tierra<\\/a>, despu\\u00e9s de\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>. Ocupa gran parte del\\u00a0<a title=\\\"Hemisferio occidental\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Hemisferio_occidental\\\">hemisferio occidental<\\/a>\\u00a0del planeta. Se extiende desde el\\u00a0<a title=\\\"Oc\\u00e9ano \\u00c1rtico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_%C3%81rtico\\\">oc\\u00e9ano Glacial \\u00c1rtico<\\/a>\\u00a0por el norte hasta las\\u00a0<a title=\\\"Islas Diego Ram\\u00edrez\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Islas_Diego_Ram%C3%ADrez\\\">islas Diego Ram\\u00edrez<\\/a>\\u00a0por el sur, en la confluencia de los oc\\u00e9anos\\u00a0<a title=\\\"Oc\\u00e9ano Atl\\u00e1ntico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Atl%C3%A1ntico\\\">Atl\\u00e1ntico<\\/a>\\u00a0y\\u00a0<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">Pac\\u00edfico<\\/a>, los cuales a su vez delimitan al continente por el este y el oeste, respectivamente.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2018-09-27 03:44:08\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:44:08\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 03:44:08\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(11, 5, 1, '', '2018-09-27 03:50:09', 100, 4510, '2793d22a933f26eed2e7a032381faae743b87473', '{\"id\":5,\"asset_id\":\"70\",\"title\":\"Africa\",\"alias\":\"americas\",\"introtext\":\"<p><b>\\u00c1frica<\\/b>\\u00a0es el tercer\\u00a0<a title=\\\"Continente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente\\\">continente<\\/a>\\u00a0m\\u00e1s extenso, tras\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>\\u00a0y\\u00a0<a title=\\\"Am\\u00e9rica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica\\\">Am\\u00e9rica<\\/a>. Est\\u00e1 situado entre los oc\\u00e9anos\\u00a0<a title=\\\"Oc\\u00e9ano Atl\\u00e1ntico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Atl%C3%A1ntico\\\">Atl\\u00e1ntico<\\/a>, al oeste, e\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"\\u00cdndico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/%C3%8Dndico\\\">\\u00cdndico<\\/a>, al este. El\\u00a0<a title=\\\"Mar Mediterr\\u00e1neo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_Mediterr%C3%A1neo\\\">mar Mediterr\\u00e1neo<\\/a>\\u00a0lo separa al norte del continente europeo; el punto en el que los dos continentes se hallan m\\u00e1s cercanos es el\\u00a0<a title=\\\"Estrecho de Gibraltar\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estrecho_de_Gibraltar\\\">estrecho de Gibraltar<\\/a>\\u00a0de 14,4\\u00a0km de anchura. El\\u00a0<a title=\\\"Mar Rojo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_Rojo\\\">mar Rojo<\\/a>\\u00a0lo separa al este de la\\u00a0<a title=\\\"Arabia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Arabia\\\">pen\\u00ednsula ar\\u00e1biga<\\/a>\\u00a0y queda unido a\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>\\u00a0a trav\\u00e9s del\\u00a0<a title=\\\"Istmo de Suez\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Istmo_de_Suez\\\">istmo de Suez<\\/a>, en territorio egipcio. Posee una superficie total de 30\\u00a0272\\u00a0922\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Kil\\u00f3metros cuadrados\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Kil%C3%B3metros_cuadrados\\\">km\\u00b2<\\/a>\\u00a0(621\\u00a0600\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Kil\\u00f3metros cuadrados\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Kil%C3%B3metros_cuadrados\\\">km\\u00b2<\\/a>\\u00a0en masa\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Insular\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Insular\\\">insular<\\/a>), que representa el 20,4\\u00a0% del total de las tierras emergidas del planeta. La poblaci\\u00f3n es de mil millones de habitantes, menos del 15\\u00a0% del total mundial. El continente se divide en 54\\u00a0<a title=\\\"Estado soberano\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_soberano\\\">estados soberanos<\\/a>, adem\\u00e1s de dos\\u00a0<a title=\\\"Estado con reconocimiento limitado\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_con_reconocimiento_limitado\\\">estados con reconocimiento limitado<\\/a>\\u00a0y dos\\u00a0<a title=\\\"Territorio dependiente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Territorio_dependiente\\\">territorios dependientes<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2018-09-27 03:44:08\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:50:09\",\"modified_by\":\"100\",\"checked_out\":\"100\",\"checked_out_time\":\"2018-09-27 03:49:47\",\"publish_up\":\"2018-09-27 03:44:08\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(12, 5, 1, '', '2018-09-27 03:50:18', 100, 4508, '9d5af6b919fa449ae529d0a6e6bfa051b368e316', '{\"id\":5,\"asset_id\":\"70\",\"title\":\"Africa\",\"alias\":\"africa\",\"introtext\":\"<p><b>\\u00c1frica<\\/b>\\u00a0es el tercer\\u00a0<a title=\\\"Continente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente\\\">continente<\\/a>\\u00a0m\\u00e1s extenso, tras\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>\\u00a0y\\u00a0<a title=\\\"Am\\u00e9rica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica\\\">Am\\u00e9rica<\\/a>. Est\\u00e1 situado entre los oc\\u00e9anos\\u00a0<a title=\\\"Oc\\u00e9ano Atl\\u00e1ntico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Atl%C3%A1ntico\\\">Atl\\u00e1ntico<\\/a>, al oeste, e\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"\\u00cdndico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/%C3%8Dndico\\\">\\u00cdndico<\\/a>, al este. El\\u00a0<a title=\\\"Mar Mediterr\\u00e1neo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_Mediterr%C3%A1neo\\\">mar Mediterr\\u00e1neo<\\/a>\\u00a0lo separa al norte del continente europeo; el punto en el que los dos continentes se hallan m\\u00e1s cercanos es el\\u00a0<a title=\\\"Estrecho de Gibraltar\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estrecho_de_Gibraltar\\\">estrecho de Gibraltar<\\/a>\\u00a0de 14,4\\u00a0km de anchura. El\\u00a0<a title=\\\"Mar Rojo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_Rojo\\\">mar Rojo<\\/a>\\u00a0lo separa al este de la\\u00a0<a title=\\\"Arabia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Arabia\\\">pen\\u00ednsula ar\\u00e1biga<\\/a>\\u00a0y queda unido a\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>\\u00a0a trav\\u00e9s del\\u00a0<a title=\\\"Istmo de Suez\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Istmo_de_Suez\\\">istmo de Suez<\\/a>, en territorio egipcio. Posee una superficie total de 30\\u00a0272\\u00a0922\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Kil\\u00f3metros cuadrados\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Kil%C3%B3metros_cuadrados\\\">km\\u00b2<\\/a>\\u00a0(621\\u00a0600\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Kil\\u00f3metros cuadrados\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Kil%C3%B3metros_cuadrados\\\">km\\u00b2<\\/a>\\u00a0en masa\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Insular\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Insular\\\">insular<\\/a>), que representa el 20,4\\u00a0% del total de las tierras emergidas del planeta. La poblaci\\u00f3n es de mil millones de habitantes, menos del 15\\u00a0% del total mundial. El continente se divide en 54\\u00a0<a title=\\\"Estado soberano\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_soberano\\\">estados soberanos<\\/a>, adem\\u00e1s de dos\\u00a0<a title=\\\"Estado con reconocimiento limitado\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_con_reconocimiento_limitado\\\">estados con reconocimiento limitado<\\/a>\\u00a0y dos\\u00a0<a title=\\\"Territorio dependiente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Territorio_dependiente\\\">territorios dependientes<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2018-09-27 03:44:08\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:50:18\",\"modified_by\":\"100\",\"checked_out\":\"100\",\"checked_out_time\":\"2018-09-27 03:50:09\",\"publish_up\":\"2018-09-27 03:44:08\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(13, 2, 1, '', '2018-09-27 03:52:17', 100, 3549, '471ad15b512032ad7ae355be1b451bb1ba7713b7', '{\"id\":2,\"asset_id\":\"66\",\"title\":\"Europa\",\"alias\":\"europa\",\"introtext\":\"<div class=\\\"rellink noprint\\\"><b>Europa<\\/b>\\u00a0es uno de los\\u00a0<a title=\\\"Continente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente\\\">continentes<\\/a>\\u00a0que conforman el\\u00a0<a title=\\\"Supercontinente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Supercontinente\\\">supercontinente<\\/a>\\u00a0<a title=\\\"Eurasia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Eurasia\\\">euroasi\\u00e1tico<\\/a>, situado entre los\\u00a0<a title=\\\"Paralelo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Paralelo\\\">paralelos<\\/a>\\u00a035\\u00ba 30\\u2019 y 70\\u00ba 30\\u2019 de\\u00a0<a title=\\\"Latitud\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Latitud\\\">latitud<\\/a>\\u00a0norte. De forma convencional y por motivos hist\\u00f3rico-culturales es considerada un continente, tras la delimitaci\\u00f3n realizada por el ge\\u00f3grafo ruso\\u00a0<a title=\\\"Vasili Tat\\u00edshchev\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Vasili_Tat%C3%ADshchev\\\">Vasili Tat\\u00edshchev<\\/a>\\u00a0quien deseaba se\\u00f1alar la pertenencia de\\u00a0<a title=\\\"Rusia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Rusia\\\">Rusia<\\/a>\\u00a0a Europa y a\\u00a0<a title=\\\"Asia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Asia\\\">Asia<\\/a>.<sup id=\\\"cite_ref-1\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Europa#cite_note-1\\\">1<\\/a><\\/sup>\\u200b Las fronteras de Europa y su poblaci\\u00f3n son objeto de controversia, ya que el t\\u00e9rmino continente puede referirse a un bien cultural y pol\\u00edtico o a distinciones fisiogr\\u00e1ficas. Andreas Kaplan describe a Europa como \\u00abuna m\\u00e1xima diversidad cultural en una superficie geogr\\u00e1fica m\\u00ednima\\u00bb.<sup id=\\\"cite_ref-2\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Europa#cite_note-2\\\">2<\\/a><\\/sup>\\u200b<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2018-09-27 03:21:36\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:52:17\",\"modified_by\":\"100\",\"checked_out\":\"100\",\"checked_out_time\":\"2018-09-27 03:51:39\",\"publish_up\":\"2018-09-27 03:21:36\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"25\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `taw_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(14, 6, 1, '', '2018-09-27 03:52:59', 100, 4529, '5307dce5d540dc9498c913d842801bc245cfc88c', '{\"id\":\"6\",\"asset_id\":71,\"title\":\"Oceania\",\"alias\":\"oceania\",\"introtext\":\"<p><b>Ocean\\u00eda<\\/b>\\u00a0es un\\u00a0<a title=\\\"Continente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente\\\">continente<\\/a>\\u00a0<a title=\\\"Isla\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Isla\\\">insular<\\/a>\\u00a0de la\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">Tierra<\\/a>\\u00a0constituido por la\\u00a0<a title=\\\"Sahul\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Sahul\\\">plataforma continental de Australia<\\/a>, las islas de\\u00a0<a title=\\\"Nueva Guinea\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Nueva_Guinea\\\">Nueva Guinea<\\/a>,\\u00a0<a title=\\\"Nueva Zelanda\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Nueva_Zelanda\\\">Nueva Zelanda<\\/a>\\u00a0y los archipi\\u00e9lagos\\u00a0<a title=\\\"Coral\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Coral\\\">coralinos<\\/a>\\u00a0y\\u00a0<a title=\\\"Volc\\u00e1n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Volc%C3%A1n\\\">volc\\u00e1nicos<\\/a>\\u00a0de\\u00a0<a title=\\\"Melanesia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Melanesia\\\">Melanesia<\\/a>,\\u00a0<a title=\\\"Micronesia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Micronesia\\\">Micronesia<\\/a>\\u00a0y\\u00a0<a title=\\\"Polinesia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Polinesia\\\">Polinesia<\\/a>. Un sector de los expertos considera que\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Insulindia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Insulindia\\\">Insulindia<\\/a>\\u00a0tambi\\u00e9n forma parte de Ocean\\u00eda.<sup id=\\\"cite_ref-d\'urville_1-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ocean%C3%ADa#cite_note-d\'urville-1\\\">1<\\/a><\\/sup>\\u200b Todas estas islas est\\u00e1n distribuidas por el\\u00a0<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">oc\\u00e9ano Pac\\u00edfico<\\/a>. Con una extensi\\u00f3n de 9\\u00a0008\\u00a0458\\u00a0km\\u00b2, se trata del continente m\\u00e1s peque\\u00f1o del planeta tierra.<\\/p>\\r\\n<p>En otros\\u00a0<a title=\\\"Continente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente\\\">modelos continentales<\\/a>, por ejemplo en los de habla inglesa, se usa\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Australia (continente)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Australia_(continente)\\\">Australia (continente)<\\/a>\\u00a0en lugar de Ocean\\u00eda,<sup>[<i><a title=\\\"Wikipedia:Verificabilidad\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Wikipedia:Verificabilidad\\\">cita\\u00a0requerida<\\/a><\\/i>]<\\/sup>pero en este caso su definici\\u00f3n no incluye las\\u00a0<a title=\\\"Anexo:Islas del Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Islas_del_Pac%C3%ADfico\\\">islas del Pac\\u00edfico<\\/a>, as\\u00ed como en otros modelos se utiliza el t\\u00e9rmino de Ocean\\u00eda para designar el conjunto de todas las islas del Oc\\u00e9ano Pac\\u00edfico<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2018-09-27 03:52:59\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:52:59\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 03:52:59\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(15, 7, 1, '', '2018-09-27 03:54:30', 100, 4028, 'fa087eae4ed76e3c9a8abec0426039b89746323c', '{\"id\":\"7\",\"asset_id\":72,\"title\":\"Asia\",\"alias\":\"asia\",\"introtext\":\"<p><b>Asia<\\/b>\\u00a0es el\\u00a0<a title=\\\"Continente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente\\\">continente<\\/a>\\u00a0m\\u00e1s extenso y poblado de la\\u00a0<a title=\\\"Tierra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tierra\\\">Tierra<\\/a>. Con cerca de 45 millones de km\\u00b2, supone el 8,70\\u00a0% del total de la superficie terrestre y el 29,45\\u00a0% de las tierras emergidas y, con alrededor de 4\\u00a0140\\u00a0000\\u00a0000 de habitantes, el 69\\u00a0% de la poblaci\\u00f3n mundial. Se extiende sobre la mitad oriental del\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Hemisferio Norte\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Hemisferio_Norte\\\">hemisferio Norte<\\/a>, desde el\\u00a0<a title=\\\"Oc\\u00e9ano \\u00c1rtico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_%C3%81rtico\\\">oc\\u00e9ano Glacial \\u00c1rtico<\\/a>, al norte, hasta el\\u00a0<a title=\\\"Oc\\u00e9ano \\u00cdndico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_%C3%8Dndico\\\">oc\\u00e9ano \\u00cdndico<\\/a>, al sur. Limita, al oeste, con los\\u00a0<a title=\\\"Montes Urales\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Montes_Urales\\\">montes Urales<\\/a>, y al este, con el\\u00a0<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">oc\\u00e9ano Pac\\u00edfico<\\/a>.<\\/p>\\r\\n<p>En la divisi\\u00f3n convencional de continentes, de origen europeo, Asia y\\u00a0<a title=\\\"Europa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Europa\\\">Europa<\\/a>\\u00a0aparecen como dos entidades diferentes por razones culturales e hist\\u00f3ricas. En t\\u00e9rminos geogr\\u00e1ficos, forman en realidad un \\u00fanico continente, llamado\\u00a0<a title=\\\"Eurasia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Eurasia\\\">Eurasia<\\/a>. Adem\\u00e1s,\\u00a0<a title=\\\"\\u00c1frica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/%C3%81frica\\\">\\u00c1frica<\\/a>\\u00a0est\\u00e1 unida a Eurasia por el\\u00a0<a title=\\\"Istmo de Suez\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Istmo_de_Suez\\\">istmo de Suez<\\/a>\\u00a0por lo que tambi\\u00e9n se puede considerar toda la extensi\\u00f3n conjunta de Europa, Asia y \\u00c1frica como un \\u00fanico supercontinente, ocasionalmente denominado\\u00a0<a title=\\\"Eurafrasia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Eurafrasia\\\">Eurafrasia<\\/a>, o Afro-eurasia.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2018-09-27 03:54:30\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:54:30\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 03:54:30\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(16, 12, 5, '', '2018-09-27 03:57:55', 100, 2470, 'ecbf895929b503022f7ef8b7b535e29b0e5a3957', '{\"id\":\"12\",\"asset_id\":73,\"parent_id\":\"1\",\"lft\":\"19\",\"rgt\":20,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Estados\",\"alias\":\"estados\",\"note\":\"\",\"description\":\"<p>La\\u00a0<b>organizaci\\u00f3n territorial de\\u00a0<a title=\\\"M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico\\\">M\\u00e9xico<\\/a><\\/b>\\u00a0es el conjunto de normas y procesos, bajo los cuales, se dividen y administran las partes integrantes del \\u00e1rea geogr\\u00e1fica que ocupa el pa\\u00eds. Ambos aspectos (normas y procesos) han sido resultado de los eventos hist\\u00f3ricos que delimitaron el espacio f\\u00edsico; pero tambi\\u00e9n de los distintos sistemas de gobierno y reg\\u00edmenes constitucionales que tuvo el pa\\u00eds.<\\/p>\\r\\n<p>La actual estructura y su conducci\\u00f3n responden a la de una\\u00a0<a title=\\\"Federaci\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Federaci%C3%B3n\\\">Federaci\\u00f3n<\\/a>, es decir, unidades territoriales soberanas; adem\\u00e1s el gobierno central es responsable directo de aquellos componentes territoriales que le adjudique la ley (<a title=\\\"Espacio a\\u00e9reo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Espacio_a%C3%A9reo\\\">espacio a\\u00e9reo<\\/a>,\\u00a0<a title=\\\"Mar territorial\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_territorial\\\">mares<\\/a>\\u00a0e\\u00a0<a title=\\\"Anexo:Islas de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Islas_de_M%C3%A9xico\\\">islas adyacentes<\\/a>). Entendiendo este concepto como un ordenamiento de divisi\\u00f3n pol\\u00edtica, el pa\\u00eds se compone de 32 entidades federativas (31 estados y la\\u00a0<a title=\\\"Ciudad de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_de_M%C3%A9xico\\\">Ciudad de M\\u00e9xico<\\/a>, capital de la rep\\u00fablica). Y estos a la vez se dividen\\u00a0<a title=\\\"Municipios de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Municipios_de_M%C3%A9xico\\\">Municipios<\\/a>.<sup id=\\\"cite_ref-1\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Organizaci%C3%B3n_territorial_de_M%C3%A9xico#cite_note-1\\\">1<\\/a><\\/sup><\\/p>\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"100\",\"created_time\":\"2018-09-27 03:57:55\",\"modified_user_id\":null,\"modified_time\":\"2018-09-27 03:57:55\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(17, 8, 1, '', '2018-09-27 03:59:10', 100, 6928, 'c1e55087afaaaa125a23704eda69b2dd21ae046f', '{\"id\":\"8\",\"asset_id\":74,\"title\":\"Tamaulipas\",\"alias\":\"tamaulipas\",\"introtext\":\"<p><b>Tamaulipas<\\/b>\\u00a0(<small><a class=\\\"image\\\" href=\\\"https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Speaker_Icon.svg\\\"><img src=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/13px-Speaker_Icon.svg.png\\\" srcset=\\\"\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/20px-Speaker_Icon.svg.png 1.5x, \\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/26px-Speaker_Icon.svg.png 2x\\\" alt=\\\"Speaker Icon.svg\\\" width=\\\"13\\\" height=\\\"13\\\" data-file-width=\\\"500\\\" data-file-height=\\\"500\\\" \\/><\\/a>\\u00a0<a class=\\\"external text\\\" href=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/c\\/cb\\/TamaulipasPronunciation.ogg\\\">escuchar<\\/a><\\/small>en huasteco:\\u00a0<i>Tamholipa: \\\"lugar donde se reza mucho\\\"<\\/i>), oficialmente\\u00a0<b>Estado Libre y Soberano de Tamaulipas<\\/b>, es uno de los treinta y un\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados de Mexico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_de_Mexico\\\">estados<\\/a>\\u00a0que, junto con la\\u00a0<a title=\\\"Ciudad de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_de_M%C3%A9xico\\\">Ciudad de M\\u00e9xico<\\/a>, forman los\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados Unidos Mexicanos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos_Mexicanos\\\">Estados Unidos Mexicanos<\\/a>. Su capital es\\u00a0<a title=\\\"Ciudad Victoria\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_Victoria\\\">Ciudad Victoria<\\/a>\\u00a0y su ciudad m\\u00e1s poblada,\\u00a0<a title=\\\"Reynosa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Reynosa\\\">Reynosa<\\/a>. Est\\u00e1 ubicado en la\\u00a0<a title=\\\"Regiones de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Regiones_de_M%C3%A9xico\\\">regi\\u00f3n<\\/a>\\u00a0<a title=\\\"Noreste de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Noreste_de_M%C3%A9xico\\\">noreste<\\/a>\\u00a0del pa\\u00eds, limitando al norte con el\\u00a0<a title=\\\"R\\u00edo Bravo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/R%C3%ADo_Bravo\\\">r\\u00edo Bravo<\\/a>\\u00a0que lo separa de\\u00a0<a title=\\\"Estados Unidos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos\\\">Estados Unidos<\\/a>, al este con el\\u00a0<a title=\\\"Golfo de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Golfo_de_M%C3%A9xico\\\">golfo de M\\u00e9xico<\\/a>\\u00a0(<a title=\\\"Oc\\u00e9ano Atl\\u00e1ntico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Atl%C3%A1ntico\\\">oc\\u00e9ano Atl\\u00e1ntico<\\/a>), al sur con\\u00a0<a title=\\\"Veracruz de Ignacio de la Llave\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Veracruz_de_Ignacio_de_la_Llave\\\">Veracruz<\\/a>, al suroeste con\\u00a0<a title=\\\"San Luis Potos\\u00ed\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/San_Luis_Potos%C3%AD\\\">San Luis Potos\\u00ed<\\/a>\\u00a0y al oeste con\\u00a0<a title=\\\"Nuevo Le\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Nuevo_Le%C3%B3n\\\">Nuevo Le\\u00f3n<\\/a>. Con 80 175 km\\u00b2 es el sexto estado m\\u00e1s extenso, por detr\\u00e1s de\\u00a0<a title=\\\"Chihuahua\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chihuahua\\\">Chihuahua<\\/a>,\\u00a0<a title=\\\"Sonora\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Sonora\\\">Sonora<\\/a>,\\u00a0<a title=\\\"Coahuila de Zaragoza\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Coahuila_de_Zaragoza\\\">Coahuila<\\/a>,\\u00a0<a title=\\\"Durango\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Durango\\\">Durango<\\/a>\\u00a0y\\u00a0<a title=\\\"Oaxaca\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oaxaca\\\">Oaxaca<\\/a>. Fue fundado el 7 de febrero de 1824.<\\/p>\\r\\n<p>Se particiona en\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Municipios de Tamaulipas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Municipios_de_Tamaulipas\\\">43 municipios<\\/a>. Su capital es\\u00a0<a title=\\\"Ciudad Victoria\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_Victoria\\\">Ciudad Victoria<\\/a>. Otras poblaciones importantes son\\u00a0<a title=\\\"Tampico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tampico\\\">Tampico<\\/a>,\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Reynosa (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Reynosa_(Tamaulipas)\\\">Reynosa<\\/a>,\\u00a0<a title=\\\"Heroica Matamoros\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Heroica_Matamoros\\\">Matamoros<\\/a>,\\u00a0<a title=\\\"Nuevo Laredo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Nuevo_Laredo\\\">Nuevo Laredo<\\/a>,\\u00a0<a title=\\\"Ciudad Madero\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_Madero\\\">Ciudad Madero<\\/a>,\\u00a0<a title=\\\"Altamira (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Altamira_(Tamaulipas)\\\">Altamira<\\/a>,\\u00a0<a title=\\\"Aldama (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Aldama_(Tamaulipas)\\\">Aldama<\\/a>,\\u00a0<a title=\\\"R\\u00edo Bravo (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/R%C3%ADo_Bravo_(Tamaulipas)\\\">R\\u00edo Bravo<\\/a>,\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"El Mante\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/El_Mante\\\">El Mante<\\/a>,\\u00a0<a title=\\\"Xicot\\u00e9ncatl (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Xicot%C3%A9ncatl_(Tamaulipas)\\\">Xicot\\u00e9ncatl<\\/a>\\u00a0y\\u00a0<a title=\\\"Valle Hermoso (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Valle_Hermoso_(Tamaulipas)\\\">Valle Hermoso<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2018-09-27 03:59:10\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:59:10\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 03:59:10\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(18, 8, 1, '', '2018-09-27 03:59:30', 100, 6945, '371b92ea33db0c857f4542bd3a4bff9982d4faab', '{\"id\":8,\"asset_id\":\"74\",\"title\":\"Tamaulipas\",\"alias\":\"tamaulipas\",\"introtext\":\"<p><b>Tamaulipas<\\/b>\\u00a0(<small><a class=\\\"image\\\" href=\\\"https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Speaker_Icon.svg\\\"><img src=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/13px-Speaker_Icon.svg.png\\\" srcset=\\\"\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/20px-Speaker_Icon.svg.png 1.5x, \\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/26px-Speaker_Icon.svg.png 2x\\\" alt=\\\"Speaker Icon.svg\\\" width=\\\"13\\\" height=\\\"13\\\" data-file-width=\\\"500\\\" data-file-height=\\\"500\\\" \\/><\\/a>\\u00a0<a class=\\\"external text\\\" href=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/c\\/cb\\/TamaulipasPronunciation.ogg\\\">escuchar<\\/a><\\/small>en huasteco:\\u00a0<i>Tamholipa: \\\"lugar donde se reza mucho\\\"<\\/i>), oficialmente\\u00a0<b>Estado Libre y Soberano de Tamaulipas<\\/b>, es uno de los treinta y un\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados de Mexico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_de_Mexico\\\">estados<\\/a>\\u00a0que, junto con la\\u00a0<a title=\\\"Ciudad de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_de_M%C3%A9xico\\\">Ciudad de M\\u00e9xico<\\/a>, forman los\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados Unidos Mexicanos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos_Mexicanos\\\">Estados Unidos Mexicanos<\\/a>. Su capital es\\u00a0<a title=\\\"Ciudad Victoria\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_Victoria\\\">Ciudad Victoria<\\/a>\\u00a0y su ciudad m\\u00e1s poblada,\\u00a0<a title=\\\"Reynosa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Reynosa\\\">Reynosa<\\/a>. Est\\u00e1 ubicado en la\\u00a0<a title=\\\"Regiones de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Regiones_de_M%C3%A9xico\\\">regi\\u00f3n<\\/a>\\u00a0<a title=\\\"Noreste de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Noreste_de_M%C3%A9xico\\\">noreste<\\/a>\\u00a0del pa\\u00eds, limitando al norte con el\\u00a0<a title=\\\"R\\u00edo Bravo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/R%C3%ADo_Bravo\\\">r\\u00edo Bravo<\\/a>\\u00a0que lo separa de\\u00a0<a title=\\\"Estados Unidos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos\\\">Estados Unidos<\\/a>, al este con el\\u00a0<a title=\\\"Golfo de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Golfo_de_M%C3%A9xico\\\">golfo de M\\u00e9xico<\\/a>\\u00a0(<a title=\\\"Oc\\u00e9ano Atl\\u00e1ntico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Atl%C3%A1ntico\\\">oc\\u00e9ano Atl\\u00e1ntico<\\/a>), al sur con\\u00a0<a title=\\\"Veracruz de Ignacio de la Llave\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Veracruz_de_Ignacio_de_la_Llave\\\">Veracruz<\\/a>, al suroeste con\\u00a0<a title=\\\"San Luis Potos\\u00ed\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/San_Luis_Potos%C3%AD\\\">San Luis Potos\\u00ed<\\/a>\\u00a0y al oeste con\\u00a0<a title=\\\"Nuevo Le\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Nuevo_Le%C3%B3n\\\">Nuevo Le\\u00f3n<\\/a>. Con 80 175 km\\u00b2 es el sexto estado m\\u00e1s extenso, por detr\\u00e1s de\\u00a0<a title=\\\"Chihuahua\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chihuahua\\\">Chihuahua<\\/a>,\\u00a0<a title=\\\"Sonora\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Sonora\\\">Sonora<\\/a>,\\u00a0<a title=\\\"Coahuila de Zaragoza\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Coahuila_de_Zaragoza\\\">Coahuila<\\/a>,\\u00a0<a title=\\\"Durango\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Durango\\\">Durango<\\/a>\\u00a0y\\u00a0<a title=\\\"Oaxaca\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oaxaca\\\">Oaxaca<\\/a>. Fue fundado el 7 de febrero de 1824.<\\/p>\\r\\n<p>Se particiona en\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Municipios de Tamaulipas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Municipios_de_Tamaulipas\\\">43 municipios<\\/a>. Su capital es\\u00a0<a title=\\\"Ciudad Victoria\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_Victoria\\\">Ciudad Victoria<\\/a>. Otras poblaciones importantes son\\u00a0<a title=\\\"Tampico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tampico\\\">Tampico<\\/a>,\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Reynosa (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Reynosa_(Tamaulipas)\\\">Reynosa<\\/a>,\\u00a0<a title=\\\"Heroica Matamoros\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Heroica_Matamoros\\\">Matamoros<\\/a>,\\u00a0<a title=\\\"Nuevo Laredo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Nuevo_Laredo\\\">Nuevo Laredo<\\/a>,\\u00a0<a title=\\\"Ciudad Madero\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_Madero\\\">Ciudad Madero<\\/a>,\\u00a0<a title=\\\"Altamira (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Altamira_(Tamaulipas)\\\">Altamira<\\/a>,\\u00a0<a title=\\\"Aldama (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Aldama_(Tamaulipas)\\\">Aldama<\\/a>,\\u00a0<a title=\\\"R\\u00edo Bravo (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/R%C3%ADo_Bravo_(Tamaulipas)\\\">R\\u00edo Bravo<\\/a>,\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"El Mante\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/El_Mante\\\">El Mante<\\/a>,\\u00a0<a title=\\\"Xicot\\u00e9ncatl (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Xicot%C3%A9ncatl_(Tamaulipas)\\\">Xicot\\u00e9ncatl<\\/a>\\u00a0y\\u00a0<a title=\\\"Valle Hermoso (Tamaulipas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Valle_Hermoso_(Tamaulipas)\\\">Valle Hermoso<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2018-09-27 03:59:10\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 03:59:30\",\"modified_by\":\"100\",\"checked_out\":\"100\",\"checked_out_time\":\"2018-09-27 03:59:16\",\"publish_up\":\"2018-09-27 03:59:10\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(19, 9, 1, '', '2018-09-27 04:00:11', 100, 7265, 'a02fb512d8f7482a2d1dd85d263088139c69261a', '{\"id\":\"9\",\"asset_id\":75,\"title\":\"Monterrey\",\"alias\":\"monterrey\",\"introtext\":\"<p><b>Monterrey<\\/b>\\u00a0<small>(<a class=\\\"image\\\" href=\\\"https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Speaker_Icon.svg\\\"><img src=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/13px-Speaker_Icon.svg.png\\\" srcset=\\\"\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/20px-Speaker_Icon.svg.png 1.5x, \\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/26px-Speaker_Icon.svg.png 2x\\\" alt=\\\"Speaker Icon.svg\\\" width=\\\"13\\\" height=\\\"13\\\" data-file-width=\\\"500\\\" data-file-height=\\\"500\\\" \\/><\\/a>\\u00a0<a class=\\\"external text\\\" href=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/4\\/4d\\/Monterrey.ogg\\\">escuchar<\\/a>)<\\/small>\\u00a0es una ciudad mexicana, capital y ciudad m\\u00e1s poblada del estado de\\u00a0<a title=\\\"Nuevo Le\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Nuevo_Le%C3%B3n\\\">Nuevo Le\\u00f3n<\\/a>. Monterrey es parte del\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"\\u00c1rea Metropolitana de Monterrey\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/%C3%81rea_Metropolitana_de_Monterrey\\\">\\u00c1rea Metropolitana de Monterrey<\\/a>, cuya poblaci\\u00f3n es de 4.6 millones de habitantes, siendo la tercera \\u00e1rea metropolitana m\\u00e1s poblada de M\\u00e9xico, solo despu\\u00e9s de la\\u00a0<a title=\\\"Ciudad de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_de_M%C3%A9xico\\\">Ciudad de M\\u00e9xico<\\/a>\\u00a0y\\u00a0<a title=\\\"Guadalajara (M\\u00e9xico)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Guadalajara_(M%C3%A9xico)\\\">Guadalajara<\\/a>, y la\\u00a0<a title=\\\"Anexo:Ciudades de M\\u00e9xico por superficie\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Ciudades_de_M%C3%A9xico_por_superficie\\\">segunda en extensi\\u00f3n territorial<\\/a>\\u00a0con 7657.5 kil\\u00f3metros cuadrados. Monterrey se localiza a 913 km de la capital del pa\\u00eds, la\\u00a0<a title=\\\"Ciudad de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_de_M%C3%A9xico\\\">Ciudad de M\\u00e9xico<\\/a>.<sup id=\\\"cite_ref-9\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Monterrey#cite_note-9\\\">9<\\/a><\\/sup>\\u200b<\\/p>\\r\\n<p>Monterrey es una de las ciudades m\\u00e1s desarrolladas de M\\u00e9xico. Tiene una larga historia, y es adem\\u00e1s uno de los principales centros de negocios del pa\\u00eds. Funge como el epicentro industrial y econ\\u00f3mico para el\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Norte de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Norte_de_M%C3%A9xico\\\">Norte de M\\u00e9xico<\\/a>. Seg\\u00fan un estudio de Mercer Human Resource Consulting, en 2018 es la ciudad con mejor calidad de vida en M\\u00e9xico, la novena en\\u00a0<a title=\\\"Am\\u00e9rica Latina\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_Latina\\\">Am\\u00e9rica Latina<\\/a>\\u00a0y la 112\\u00aa en el mundo.<sup id=\\\"cite_ref-mercer_10-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Monterrey#cite_note-mercer-10\\\">10<\\/a><\\/sup>\\u200b La econom\\u00eda se caracteriza por ser la base de muchas empresas nacionales e internacionales como\\u00a0<a title=\\\"Cemex\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cemex\\\">Cemex<\\/a>,\\u00a0<a title=\\\"Oxxo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oxxo\\\">Oxxo<\\/a>,\\u00a0<a title=\\\"Fomento Econ\\u00f3mico Mexicano\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Fomento_Econ%C3%B3mico_Mexicano\\\">FEMSA<\\/a>,\\u00a0<a title=\\\"Vitro\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Vitro\\\">Vitro<\\/a>,\\u00a0<a title=\\\"Alfa (empresa de M\\u00e9xico)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Alfa_(empresa_de_M%C3%A9xico)\\\">Grupo Alfa<\\/a>, entre otras, por lo que es llamada\\u00a0<i>La Capital Industrial de M\\u00e9xico<\\/i>. Es la segunda\\u00a0<a title=\\\"Anexo:Ciudades por PIB\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Ciudades_por_PIB\\\">ciudad de M\\u00e9xico por el tama\\u00f1o de la econom\\u00eda local<\\/a>\\u00a0con un PIB de 90,837 millones de d\\u00f3lares en 2015<sup id=\\\"cite_ref-f1f8809e_11-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Monterrey#cite_note-f1f8809e-11\\\">11<\\/a><\\/sup>\\u200b y la decimocuarta de acuerdo a los\\u00a0<a title=\\\"Anexo:Indicadores de las ciudades de Am\\u00e9rica Latina\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Indicadores_de_las_ciudades_de_Am%C3%A9rica_Latina\\\">indicadores generales de las ciudades de Am\\u00e9rica Latina<\\/a>\\u00a0con un ICUR de 66,71 en 2016, contando con una renta per c\\u00e1pita PPA de 32,310 d\\u00f3lares y un PIB per Capita Nominal de 20,285 d\\u00f3lares ,<sup id=\\\"cite_ref-f1f8809e_11-1\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Monterrey#cite_note-f1f8809e-11\\\">11<\\/a><\\/sup>\\u200b siendo la m\\u00e1s alta del pa\\u00eds y la segunda de\\u00a0<a title=\\\"Am\\u00e9rica Latina\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_Latina\\\">Am\\u00e9rica Latina<\\/a>.<sup id=\\\"cite_ref-AMERICAECONOMIA15_12-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Monterrey#cite_note-AMERICAECONOMIA15-12\\\">12<\\/a><\\/sup>\\u200b La ciudad es considerada una\\u00a0<a title=\\\"Ciudad global\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_global\\\">ciudad beta<\\/a><sup id=\\\"cite_ref-13\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Monterrey#cite_note-13\\\">13<\\/a><\\/sup>\\u200b por ser globalizada y competitiva.<sup id=\\\"cite_ref-14\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Monterrey#cite_note-14\\\">14<\\/a><\\/sup><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2018-09-27 04:00:11\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:00:11\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:00:11\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(20, 10, 1, '', '2018-09-27 04:01:11', 100, 5641, 'a0a0dce8e8e3797a477166007c5e0df04cba40ee', '{\"id\":\"10\",\"asset_id\":76,\"title\":\"Jalisco\",\"alias\":\"jalisco\",\"introtext\":\"<p><b>Jalisco<\\/b>\\u00a0<small>(<a class=\\\"image\\\" href=\\\"https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Speaker_Icon.svg\\\"><img src=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/13px-Speaker_Icon.svg.png\\\" srcset=\\\"\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/20px-Speaker_Icon.svg.png 1.5x, \\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/26px-Speaker_Icon.svg.png 2x\\\" alt=\\\"Speaker Icon.svg\\\" width=\\\"13\\\" height=\\\"13\\\" data-file-width=\\\"500\\\" data-file-height=\\\"500\\\" \\/><\\/a>\\u00a0<a class=\\\"external text\\\" href=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/e\\/ea\\/JaliscoPronunciation.ogg\\\">escuchar<\\/a>)<\\/small>\\u00a0es uno de los treinta y un\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_de_M%C3%A9xico\\\">estados<\\/a>\\u00a0que, junto con la\\u00a0<a title=\\\"Ciudad de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_de_M%C3%A9xico\\\">Ciudad de M\\u00e9xico<\\/a>, forman los\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados Unidos Mexicanos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos_Mexicanos\\\">Estados Unidos Mexicanos<\\/a>. Su capital y ciudad m\\u00e1s poblada es\\u00a0<a title=\\\"Guadalajara (M\\u00e9xico)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Guadalajara_(M%C3%A9xico)\\\">Guadalajara<\\/a>. Est\\u00e1 ubicado en la\\u00a0<a title=\\\"Regiones de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Regiones_de_M%C3%A9xico\\\">regi\\u00f3n<\\/a>\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Oeste de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oeste_de_M%C3%A9xico\\\">oeste<\\/a>\\u00a0del pa\\u00eds, limitando al norte con\\u00a0<a title=\\\"Nayarit\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Nayarit\\\">Nayarit<\\/a>,\\u00a0<a title=\\\"Zacatecas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Zacatecas\\\">Zacatecas<\\/a>y\\u00a0<a title=\\\"Aguascalientes\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Aguascalientes\\\">Aguascalientes<\\/a>, al noreste con\\u00a0<a title=\\\"San Luis Potos\\u00ed\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/San_Luis_Potos%C3%AD\\\">San Luis Potos\\u00ed<\\/a>, al este con\\u00a0<a title=\\\"Guanajuato\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Guanajuato\\\">Guanajuato<\\/a>, al sur con\\u00a0<a title=\\\"Michoac\\u00e1n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Michoac%C3%A1n\\\">Michoac\\u00e1n<\\/a>\\u00a0y\\u00a0<a title=\\\"Colima\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Colima\\\">Colima<\\/a>, y al oeste con el\\u00a0<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">oc\\u00e9ano Pac\\u00edfico<\\/a>. Con 7,844,830 habs. en 2015 es el tercer estado m\\u00e1s poblado \\u2014por detr\\u00e1s de\\u00a0<a title=\\\"Estado de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_de_M%C3%A9xico\\\">Estado de M\\u00e9xico<\\/a>\\u00a0y\\u00a0<a title=\\\"Veracruz de Ignacio de la Llave\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Veracruz_de_Ignacio_de_la_Llave\\\">Veracruz<\\/a>\\u2014 y con 78,599\\u00a0km\\u00b2, el s\\u00e9ptimo m\\u00e1s extenso, por detr\\u00e1s de\\u00a0<a title=\\\"Chihuahua\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chihuahua\\\">Chihuahua<\\/a>,\\u00a0<a title=\\\"Sonora\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Sonora\\\">Sonora<\\/a>,\\u00a0<a title=\\\"Coahuila de Zaragoza\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Coahuila_de_Zaragoza\\\">Coahuila<\\/a>,\\u00a0<a title=\\\"Durango\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Durango\\\">Durango<\\/a>,\\u00a0<a title=\\\"Oaxaca\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oaxaca\\\">Oaxaca<\\/a>\\u00a0y\\u00a0<a title=\\\"Tamaulipas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tamaulipas\\\">Tamaulipas<\\/a>.\\u00a0Fue fundado el 16 de junio de 1823<sup id=\\\"cite_ref-6\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Jalisco#cite_note-6\\\">6<\\/a><\\/sup>\\u200b<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2018-09-27 04:01:11\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:01:11\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:01:11\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `taw_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(21, 11, 1, '', '2018-09-27 04:05:29', 100, 5042, '8a9568a707900db204b1b33125a331d085cd07a6', '{\"id\":\"11\",\"asset_id\":77,\"title\":\"Sonora\",\"alias\":\"sonora\",\"introtext\":\"<p><b>Sonora<\\/b>\\u00a0<small>(<a class=\\\"image\\\" href=\\\"https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Speaker_Icon.svg\\\"><img src=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/13px-Speaker_Icon.svg.png\\\" srcset=\\\"\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/20px-Speaker_Icon.svg.png 1.5x, \\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/26px-Speaker_Icon.svg.png 2x\\\" alt=\\\"Speaker Icon.svg\\\" width=\\\"13\\\" height=\\\"13\\\" data-file-width=\\\"500\\\" data-file-height=\\\"500\\\" \\/><\\/a>\\u00a0<a class=\\\"internal\\\" title=\\\"Sonora13.ogg\\\" href=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/1\\/13\\/Sonora13.ogg\\\">escuchar<\\/a>)<\\/small>\\u00a0es uno de los treinta y un\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados de Mexico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_de_Mexico\\\">estados<\\/a>\\u00a0que, junto con la\\u00a0<a title=\\\"Ciudad de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_de_M%C3%A9xico\\\">Ciudad de M\\u00e9xico<\\/a>, forman los\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados Unidos Mexicanos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos_Mexicanos\\\">Estados Unidos Mexicanos<\\/a>. Su capital y ciudad m\\u00e1s poblada es\\u00a0<a title=\\\"Hermosillo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Hermosillo\\\">Hermosillo<\\/a>. Est\\u00e1 ubicado en la\\u00a0<a title=\\\"Regiones de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Regiones_de_M%C3%A9xico\\\">regi\\u00f3n<\\/a>\\u00a0<a title=\\\"Noroeste de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Noroeste_de_M%C3%A9xico\\\">noroeste<\\/a>\\u00a0del pa\\u00eds, limitando al norte con\\u00a0<a title=\\\"Estados Unidos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos\\\">Estados Unidos<\\/a>, al este con\\u00a0<a title=\\\"Chihuahua\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chihuahua\\\">Chihuahua<\\/a>, al sur con\\u00a0<a title=\\\"Sinaloa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Sinaloa\\\">Sinaloa<\\/a>\\u00a0y al oeste con el\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Mar de Cort\\u00e9s\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_de_Cort%C3%A9s\\\">mar de Cort\\u00e9s<\\/a>\\u00a0o\\u00a0<a title=\\\"Golfo de California\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Golfo_de_California\\\">golfo de California<\\/a>\\u00a0(<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">oc\\u00e9ano Pac\\u00edfico<\\/a>). Con 179 503 km\\u00b2 es el segundo estado m\\u00e1s extenso \\u2014por detr\\u00e1s de\\u00a0<a title=\\\"Chihuahua\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chihuahua\\\">Chihuahua<\\/a>\\u2014 y con 14,83 hab\\/km\\u00b2, el quinto menos\\u00a0<a title=\\\"Densidad de poblaci\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Densidad_de_poblaci%C3%B3n\\\">densamente poblado<\\/a>, por detr\\u00e1s de\\u00a0<a title=\\\"Campeche\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Campeche\\\">Campeche<\\/a>,\\u00a0<a title=\\\"Chihuahua\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chihuahua\\\">Chihuahua<\\/a>,\\u00a0<a title=\\\"Durango\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Durango\\\">Durango<\\/a>\\u00a0y\\u00a0<a title=\\\"Baja California Sur\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Baja_California_Sur\\\">Baja California Sur<\\/a>. Fue fundado el 10 de enero de 1824.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2018-09-27 04:05:29\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:05:29\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:05:29\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(22, 12, 1, '', '2018-09-27 04:06:29', 100, 6111, '127323385f420c328b1666727c2fa6cdd3e24ad8', '{\"id\":\"12\",\"asset_id\":78,\"title\":\"Chiapas\",\"alias\":\"chiapas\",\"introtext\":\"<p><b>Chiapas<\\/b>\\u00a0<small>(<a class=\\\"image\\\" href=\\\"https:\\/\\/commons.wikimedia.org\\/wiki\\/File:Speaker_Icon.svg\\\"><img src=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/13px-Speaker_Icon.svg.png\\\" srcset=\\\"\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/20px-Speaker_Icon.svg.png 1.5x, \\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/2\\/21\\/Speaker_Icon.svg\\/26px-Speaker_Icon.svg.png 2x\\\" alt=\\\"Speaker Icon.svg\\\" width=\\\"13\\\" height=\\\"13\\\" data-file-width=\\\"500\\\" data-file-height=\\\"500\\\" \\/><\\/a>\\u00a0<a class=\\\"external text\\\" href=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/c\\/cf\\/Chiapas1.ogg\\\">escuchar<\\/a>)<\\/small>\\u00a0es una de las treinta y dos entidades federativas que integran los\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados Unidos Mexicanos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos_Mexicanos\\\">Estados Unidos Mexicanos<\\/a>. Est\\u00e1 dividido en 124 municipios<sup id=\\\"cite_ref-3\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chiapas#cite_note-3\\\">3<\\/a><\\/sup>\\u200b y su capital y ciudad m\\u00e1s poblada es\\u00a0<a title=\\\"Tuxtla Guti\\u00e9rrez\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tuxtla_Guti%C3%A9rrez\\\">Tuxtla Guti\\u00e9rrez<\\/a>. Otras ciudades importantes del estado incluyen\\u00a0<a title=\\\"Ocosingo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ocosingo\\\">Ocosingo<\\/a>,\\u00a0<a title=\\\"Tapachula\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tapachula\\\">Tapachula<\\/a>,\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"San Crist\\u00f3bal de las Casas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/San_Crist%C3%B3bal_de_las_Casas\\\">San Crist\\u00f3bal de las Casas<\\/a>,\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Comit\\u00e1n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Comit%C3%A1n\\\">Comit\\u00e1n<\\/a>\\u00a0y\\u00a0<a title=\\\"Arriaga (Chiapas)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Arriaga_(Chiapas)\\\">Arriaga<\\/a>. Est\\u00e1 ubicado en la\\u00a0<a title=\\\"Regiones de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Regiones_de_M%C3%A9xico\\\">regi\\u00f3n<\\/a>\\u00a0<a title=\\\"Suroeste de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Suroeste_de_M%C3%A9xico\\\">suroeste<\\/a>\\u00a0del pa\\u00eds, limitando al norte con\\u00a0<a title=\\\"Tabasco\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Tabasco\\\">Tabasco<\\/a>, al este y sureste con los departamentos guatemaltecos de\\u00a0<a title=\\\"Pet\\u00e9n (regi\\u00f3n)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Pet%C3%A9n_(regi%C3%B3n)\\\">Pet\\u00e9n<\\/a>,\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Quich\\u00e9 (Guatemala)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Quich%C3%A9_(Guatemala)\\\">Quich\\u00e9<\\/a>,\\u00a0<a title=\\\"Huehuetenango\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Huehuetenango\\\">Huehuetenango<\\/a>\\u00a0y\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"San Marcos (Guatemala)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/San_Marcos_(Guatemala)\\\">San Marcos<\\/a>, al sur con el\\u00a0<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">oc\\u00e9ano Pac\\u00edfico<\\/a>, al oeste con\\u00a0<a title=\\\"Oaxaca\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oaxaca\\\">Oaxaca<\\/a>\\u00a0y al noroeste con\\u00a0<a title=\\\"Veracruz de Ignacio de la Llave\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Veracruz_de_Ignacio_de_la_Llave\\\">Veracruz<\\/a>. Con 5 217 908 de habitantes en 2015<sup id=\\\"cite_ref-4\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chiapas#cite_note-4\\\">4<\\/a><\\/sup>\\u200b, es el sexto estado m\\u00e1s poblado, por detr\\u00e1s del\\u00a0<a title=\\\"Estado de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_de_M%C3%A9xico\\\">Estado de M\\u00e9xico<\\/a>,\\u00a0<a title=\\\"Veracruz de Ignacio de la Llave\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Veracruz_de_Ignacio_de_la_Llave\\\">Veracruz<\\/a>,\\u00a0<a title=\\\"Jalisco\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Jalisco\\\">Jalisco<\\/a>,\\u00a0<a title=\\\"Puebla\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Puebla\\\">Puebla<\\/a>\\u00a0y\\u00a0<a title=\\\"Guanajuato\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Guanajuato\\\">Guanajuato<\\/a>. Fue fundado el 14 de septiembre de 1824.<sup id=\\\"cite_ref-5\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chiapas#cite_note-5\\\">5<\\/a><\\/sup>\\u200b<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2018-09-27 04:06:29\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:06:29\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:06:29\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(23, 13, 1, '', '2018-09-27 04:09:13', 100, 7128, '8752e3a769616b2d072b62bafa0e4fff004ca4e1', '{\"id\":\"13\",\"asset_id\":79,\"title\":\"Mexico\",\"alias\":\"mexico\",\"introtext\":\"<p><b>M\\u00e9xico<\\/b><sup id=\\\"cite_ref-17\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico#cite_note-17\\\">nota 1<\\/a><\\/sup>\\u200b (<span class=\\\"nounderlines\\\"><span class=\\\"unicode\\\"><a title=\\\"Acerca de este sonido\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Archivo:Mexico.ogg\\\"><img src=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/8\\/8a\\/Loudspeaker.svg\\/11px-Loudspeaker.svg.png\\\" srcset=\\\"\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/8\\/8a\\/Loudspeaker.svg\\/17px-Loudspeaker.svg.png 1.5x, \\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/8\\/8a\\/Loudspeaker.svg\\/22px-Loudspeaker.svg.png 2x\\\" alt=\\\"Acerca de este sonido\\\" width=\\\"11\\\" height=\\\"11\\\" data-file-width=\\\"20\\\" data-file-height=\\\"20\\\" \\/><\\/a>\\u00a0<a class=\\\"internal\\\" title=\\\"Mexico.ogg\\\" href=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/5\\/5b\\/Mexico.ogg\\\"><span class=\\\"IPA\\\" title=\\\"Representaci\\u00f3n en el Alfabeto Fon\\u00e9tico Internacional (IPA o AFI)\\\">[\\u02c8mexiko]<\\/span><\\/a><\\/span><\\/span>), oficialmente llamado\\u00a0<b>Estados Unidos Mexicanos<\\/b>,<sup id=\\\"cite_ref-18\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico#cite_note-18\\\">17<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-19\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico#cite_note-19\\\">18<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-presidencia.gob.mx_20-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico#cite_note-presidencia.gob.mx-20\\\">19<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-21\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico#cite_note-21\\\">20<\\/a><\\/sup>\\u200b es un pa\\u00eds de\\u00a0<a title=\\\"Am\\u00e9rica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica\\\">Am\\u00e9rica<\\/a>\\u00a0ubicado en la parte meridional de\\u00a0<a title=\\\"Am\\u00e9rica del Norte\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_del_Norte\\\">Am\\u00e9rica del Norte<\\/a>. Su capital es la\\u00a0<a title=\\\"Ciudad de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ciudad_de_M%C3%A9xico\\\">Ciudad de M\\u00e9xico<\\/a>.<sup id=\\\"cite_ref-22\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico#cite_note-22\\\">21<\\/a><\\/sup>\\u200b Pol\\u00edticamente es una\\u00a0<a title=\\\"Rep\\u00fablica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Rep%C3%BAblica\\\">rep\\u00fablica<\\/a>,\\u00a0<a title=\\\"Representaci\\u00f3n (pol\\u00edtica)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Representaci%C3%B3n_(pol%C3%ADtica)\\\">representativa<\\/a>,\\u00a0<a title=\\\"Democracia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Democracia\\\">democr\\u00e1tica<\\/a>,\\u00a0<a title=\\\"Federaci\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Federaci%C3%B3n\\\">federal<\\/a>\\u00a0y\\u00a0<a title=\\\"Estado laico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_laico\\\">laica<\\/a>; compuesta por\\u00a0<a title=\\\"Organizaci\\u00f3n territorial de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Organizaci%C3%B3n_territorial_de_M%C3%A9xico\\\">32 entidades federativas<\\/a>\\u00a0(31 estados y la capital federal).<sup id=\\\"cite_ref-23\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico#cite_note-23\\\">22<\\/a><\\/sup>\\u200b<\\/p>\\r\\n<p>El territorio mexicano tiene una superficie de\\u00a01 964 375\\u00a0<a title=\\\"Kil\\u00f3metro cuadrado\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Kil%C3%B3metro_cuadrado\\\">km\\u00b2<\\/a>,<sup id=\\\"cite_ref-24\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico#cite_note-24\\\">23<\\/a><\\/sup>\\u200b por lo que es el\\u00a0<a title=\\\"Anexo:Pa\\u00edses por superficie\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Pa%C3%ADses_por_superficie\\\">decimotercer<\\/a>\\u00a0pa\\u00eds m\\u00e1s extenso del mundo y el tercero m\\u00e1s grande de\\u00a0<a title=\\\"Am\\u00e9rica Latina\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_Latina\\\">Am\\u00e9rica Latina<\\/a>. Limita al norte con los\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados Unidos de Am\\u00e9rica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos_de_Am%C3%A9rica\\\">Estados Unidos de Am\\u00e9rica<\\/a>\\u00a0a lo largo de una frontera de 3155\\u00a0km, mientras que al sur tiene una frontera de 958\\u00a0km con\\u00a0<a title=\\\"Guatemala\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Guatemala\\\">Guatemala<\\/a>\\u00a0y 276\\u00a0km con\\u00a0<a title=\\\"Belice\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Belice\\\">Belice<\\/a>; las costas del pa\\u00eds limitan al oeste con el\\u00a0<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">oc\\u00e9ano Pac\\u00edfico<\\/a>\\u00a0y al este con el\\u00a0<a title=\\\"Golfo de M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Golfo_de_M%C3%A9xico\\\">golfo de M\\u00e9xico<\\/a>\\u00a0y el\\u00a0<a title=\\\"Mar Caribe\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_Caribe\\\">mar Caribe<\\/a>, sumando 9330\\u00a0km, por lo que es el tercer pa\\u00eds americano con\\u00a0<a title=\\\"Anexo:Pa\\u00edses por longitud de costa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Pa%C3%ADses_por_longitud_de_costa\\\">mayor longitud en sus costas<\\/a>.<sup id=\\\"cite_ref-25\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico#cite_note-25\\\">24<\\/a><\\/sup>\\u200b<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-09-27 04:09:13\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:09:13\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:09:13\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(24, 14, 1, '', '2018-09-27 04:09:51', 100, 5411, '0de7736ba4c2b7ed97010b0c319e240bbc844d3d', '{\"id\":\"14\",\"asset_id\":80,\"title\":\"Argentina\",\"alias\":\"argentina\",\"introtext\":\"<p><b>Argentina<\\/b>, llamada oficialmente\\u00a0<b>Rep\\u00fablica Argentina<\\/b>,<sup id=\\\"cite_ref-16\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Argentina#cite_note-16\\\">n 1<\\/a><\\/sup>\\u200b es un\\u00a0<a title=\\\"Estado naci\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_naci%C3%B3n\\\">pa\\u00eds soberano<\\/a>\\u00a0de\\u00a0<a title=\\\"Am\\u00e9rica del Sur\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_del_Sur\\\">Am\\u00e9rica del Sur<\\/a>, ubicado en el extremo sur y sudeste de dicho subcontinente. Adopta la forma de gobierno\\u00a0<a title=\\\"Rep\\u00fablica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Rep%C3%BAblica\\\">republicana<\\/a>,\\u00a0<a title=\\\"Democracia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Democracia\\\">democr\\u00e1tica<\\/a>,\\u00a0<a title=\\\"Democracia representativa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Democracia_representativa\\\">representativa<\\/a>\\u00a0y\\u00a0<a title=\\\"Federalismo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Federalismo\\\">federal<\\/a>.<\\/p>\\r\\n<p>La Argentina est\\u00e1 organizada como un\\u00a0<a title=\\\"Estado\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado\\\">Estado<\\/a>\\u00a0federal\\u00a0<a title=\\\"Descentralizaci\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Descentralizaci%C3%B3n\\\">descentralizado<\\/a>, integrado\\u00a0<a title=\\\"Reforma constitucional argentina de 1994\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Reforma_constitucional_argentina_de_1994\\\">desde 1994<\\/a>\\u00a0por un Estado nacional y 24 estados autogobernados,<sup id=\\\"cite_ref-17\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Argentina#cite_note-17\\\">11<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-18\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Argentina#cite_note-18\\\">12<\\/a><\\/sup>\\u200b siendo estos sus 23\\u00a0<a title=\\\"Provincias de Argentina\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Provincias_de_Argentina\\\">provincias<\\/a>\\u00a0sumada la\\u00a0<a title=\\\"Buenos Aires\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Buenos_Aires\\\">ciudad aut\\u00f3noma de Buenos Aires<\\/a>\\u00a0designada como\\u00a0<i>Capital Federal<\\/i>\\u00a0del pa\\u00eds. Cada estado tiene autonom\\u00eda pol\\u00edtica, constituci\\u00f3n, bandera y cuerpo de seguridad propios. Las 23 provincias mantienen todos los poderes no delegados al Estado nacional y garantizan la autonom\\u00eda de sus\\u00a0<a title=\\\"Municipio\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Municipio\\\">municipios<\\/a>.<sup id=\\\"cite_ref-19\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Argentina#cite_note-19\\\">13<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-Barra_20-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Argentina#cite_note-Barra-20\\\">14<\\/a><\\/sup>\\u200b<\\/p>\\r\\n<p>Integra el\\u00a0<a title=\\\"Mercosur\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mercosur\\\">Mercosur<\\/a>\\u00a0\\u2014bloque del que fue fundador en 1991\\u2014, la\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Uni\\u00f3n de Naciones Sudamericanas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Uni%C3%B3n_de_Naciones_Sudamericanas\\\">Uni\\u00f3n de Naciones Sudamericanas<\\/a>\\u00a0(Unasur), la\\u00a0<a title=\\\"Comunidad de Estados Latinoamericanos y Caribe\\u00f1os\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Comunidad_de_Estados_Latinoamericanos_y_Caribe%C3%B1os\\\">Comunidad de Estados Latinoamericanos y Caribe\\u00f1os<\\/a>\\u00a0(CELAC) y la\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Organizaci\\u00f3n de Estados Americanos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Organizaci%C3%B3n_de_Estados_Americanos\\\">Organizaci\\u00f3n de Estados Americanos<\\/a>\\u00a0(OEA).<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-09-27 04:09:51\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:09:51\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:09:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(25, 15, 1, '', '2018-09-27 04:10:23', 100, 6858, 'a29e6d58b9c24165b839dc6741e8ebe55ac5c287', '{\"id\":\"15\",\"asset_id\":81,\"title\":\"Colombia\",\"alias\":\"colombia\",\"introtext\":\"<p><b>Colombia<\\/b>, oficialmente\\u00a0<b>Rep\\u00fablica de Colombia<\\/b>, es un\\u00a0<a title=\\\"Estado\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado\\\">pa\\u00eds soberano<\\/a>\\u00a0situado en la regi\\u00f3n noroccidental de\\u00a0<a title=\\\"Am\\u00e9rica del Sur\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_del_Sur\\\">Am\\u00e9rica del Sur<\\/a>, que se constituye en un\\u00a0<a title=\\\"Estado unitario\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_unitario\\\">estado unitario<\\/a>,\\u00a0<a title=\\\"Estado social\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_social\\\">social<\\/a>\\u00a0y\\u00a0<a title=\\\"Democracia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Democracia\\\">democr\\u00e1tico<\\/a>\\u00a0de\\u00a0<a title=\\\"Estado de derecho\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado_de_derecho\\\">derecho<\\/a>\\u00a0cuya forma de gobierno es\\u00a0<a title=\\\"Presidencialismo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Presidencialismo\\\">presidencialista<\\/a>. Es una rep\\u00fablica organizada pol\\u00edticamente en\\u00a0<a title=\\\"Departamentos de Colombia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Departamentos_de_Colombia\\\">32 departamentos<\\/a>\\u00a0descentralizados y el\\u00a0<a title=\\\"Distrito capital\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Distrito_capital\\\">Distrito capital<\\/a>\\u00a0de\\u00a0<a title=\\\"Bogot\\u00e1\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Bogot%C3%A1\\\">Bogot\\u00e1<\\/a>, sede del gobierno nacional.<sup id=\\\"cite_ref-:2_11-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Colombia#cite_note-:2-11\\\">11<\\/a><\\/sup>\\u200b<\\/p>\\r\\n<p>Incluyendo la\\u00a0<a title=\\\"Isla de Malpelo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Isla_de_Malpelo\\\">isla de Malpelo<\\/a>, el\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Cayo Roncador\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cayo_Roncador\\\">cayo Roncador<\\/a>\\u00a0y el\\u00a0<a title=\\\"Banco Serrana\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Banco_Serrana\\\">banco Serrana<\\/a>, el pa\\u00eds abarca una superficie de\\u00a01 141 748 km\\u00b2,<sup id=\\\"cite_ref-superficie2_3-1\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Colombia#cite_note-superficie2-3\\\">3<\\/a><\\/sup>\\u200b por lo que es el\\u00a0<a title=\\\"Anexo:Pa\\u00edses por superficie\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Pa%C3%ADses_por_superficie\\\">vigesimosexto<\\/a>\\u00a0pa\\u00eds m\\u00e1s grande del mundo y el\\u00a0<a title=\\\"Anexo:Pa\\u00edses de Am\\u00e9rica por superficie\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Pa%C3%ADses_de_Am%C3%A9rica_por_superficie\\\">s\\u00e9ptimo<\\/a>\\u00a0m\\u00e1s grande de Am\\u00e9rica. Reclama como mar territorial el \\u00e1rea hasta las 12 millas n\\u00e1uticas de distancia,<sup id=\\\"cite_ref-superficie_4-2\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Colombia#cite_note-superficie-4\\\">4<\\/a><\\/sup>\\u200b manteniendo un diferendo lim\\u00edtrofe al respecto con\\u00a0<a title=\\\"Venezuela\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Venezuela\\\">Venezuela<\\/a>\\u00a0y\\u00a0<a title=\\\"Nicaragua\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Nicaragua\\\">Nicaragua<\\/a>.<sup id=\\\"cite_ref-12\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Colombia#cite_note-12\\\">12<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-13\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Colombia#cite_note-13\\\">13<\\/a><\\/sup>\\u200b Limita al\\u00a0<a title=\\\"Oriente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oriente\\\">Oriente<\\/a>con Venezuela y\\u00a0<a title=\\\"Brasil\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Brasil\\\">Brasil<\\/a>, al\\u00a0<a title=\\\"Sur\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Sur\\\">Sur<\\/a>\\u00a0con\\u00a0<a title=\\\"Per\\u00fa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Per%C3%BA\\\">Per\\u00fa<\\/a>\\u00a0y\\u00a0<a title=\\\"Ecuador\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ecuador\\\">Ecuador<\\/a>\\u00a0y al Noroccidente con\\u00a0<a title=\\\"Panam\\u00e1\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Panam%C3%A1\\\">Panam\\u00e1<\\/a>; en cuanto a l\\u00edmites mar\\u00edtimos, colinda con Panam\\u00e1,\\u00a0<a title=\\\"Costa Rica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Costa_Rica\\\">Costa Rica<\\/a>, Nicaragua,\\u00a0<a title=\\\"Honduras\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Honduras\\\">Honduras<\\/a>,\\u00a0<a title=\\\"Jamaica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Jamaica\\\">Jamaica<\\/a>,\\u00a0<a title=\\\"Hait\\u00ed\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Hait%C3%AD\\\">Hait\\u00ed<\\/a>,\\u00a0<a title=\\\"Rep\\u00fablica Dominicana\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Rep%C3%BAblica_Dominicana\\\">Rep\\u00fablica Dominicana<\\/a>\\u00a0y Venezuela en el\\u00a0<a title=\\\"Mar Caribe\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_Caribe\\\">mar Caribe<\\/a>, y con Panam\\u00e1, Costa Rica y Ecuador en el\\u00a0<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">oc\\u00e9ano Pac\\u00edfico<\\/a>.<sup id=\\\"cite_ref-14\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Colombia#cite_note-14\\\">14<\\/a><\\/sup>\\u200b<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-09-27 04:10:23\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:10:23\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:10:23\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(26, 16, 1, '', '2018-09-27 04:11:03', 100, 5595, 'd6522397d79f49f623c7682da0c1cbaf7fc7c27f', '{\"id\":\"16\",\"asset_id\":82,\"title\":\"Estados Unidos\",\"alias\":\"estados-unidos\",\"introtext\":\"<p><b>Estados Unidos<\\/b><sup id=\\\"cite_ref-12\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos#cite_note-12\\\">nota 2<\\/a><\\/sup>\\u200b (en\\u00a0<a title=\\\"Idioma ingl\\u00e9s\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s\\\">ingl\\u00e9s<\\/a>,\\u00a0<span lang=\\\"en\\\"><i>United States<\\/i><\\/span>, cuya abreviatura es EE.\\u00a0UU.),<sup id=\\\"cite_ref-13\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos#cite_note-13\\\">nota 3<\\/a><\\/sup>\\u200b oficialmente\\u00a0<b>Estados Unidos de Am\\u00e9rica<\\/b>(<i>United States of America<\\/i>, cuya sigla oficial en ingl\\u00e9s es USA y su contraparte en espa\\u00f1ol es EUA),<sup id=\\\"cite_ref-DPD_11-3\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos#cite_note-DPD-11\\\">10<\\/a><\\/sup>\\u200b es un\\u00a0<a title=\\\"Estado\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado\\\">pa\\u00eds soberano<\\/a>constituido en\\u00a0<a title=\\\"Rep\\u00fablica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Rep%C3%BAblica\\\">rep\\u00fablica<\\/a>\\u00a0<a title=\\\"Federaci\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Federaci%C3%B3n\\\">federal<\\/a>\\u00a0<a title=\\\"Constituci\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Constituci%C3%B3n\\\">constitucional<\\/a>\\u00a0compuesta por cincuenta estados y un distrito federal. La mayor parte del pa\\u00eds se ubica en el centro de\\u00a0<a title=\\\"Am\\u00e9rica del Norte\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_del_Norte\\\">Am\\u00e9rica del Norte<\\/a>\\u00a0\\u2014donde se encuentran sus\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados Unidos continentales\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos_continentales\\\">cuarenta y ocho estados contiguos<\\/a>\\u00a0y\\u00a0<a title=\\\"Washington D. C.\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Washington_D._C.\\\">Washington\\u00a0D.\\u00a0C.<\\/a>, el\\u00a0<a title=\\\"Distrito federal\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Distrito_federal\\\">distrito federal<\\/a>\\u2014, entre los oc\\u00e9anos\\u00a0<a title=\\\"Oc\\u00e9ano Pac\\u00edfico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Pac%C3%ADfico\\\">Pac\\u00edfico<\\/a>\\u00a0y\\u00a0<a title=\\\"Oc\\u00e9ano Atl\\u00e1ntico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Oc%C3%A9ano_Atl%C3%A1ntico\\\">Atl\\u00e1ntico<\\/a>, limita con\\u00a0<a title=\\\"Canad\\u00e1\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Canad%C3%A1\\\">Canad\\u00e1<\\/a>\\u00a0al norte y con\\u00a0<a title=\\\"M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico\\\">M\\u00e9xico<\\/a>\\u00a0al sur. El estado de\\u00a0<a title=\\\"Alaska\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Alaska\\\">Alaska<\\/a>\\u00a0est\\u00e1 en el noroeste del continente, limitando con Canad\\u00e1 al este y separado de\\u00a0<a title=\\\"Rusia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Rusia\\\">Rusia<\\/a>\\u00a0al oeste por el\\u00a0<a title=\\\"Estrecho de Bering\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estrecho_de_Bering\\\">estrecho de Bering<\\/a>. El estado de\\u00a0<a title=\\\"Haw\\u00e1i\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Haw%C3%A1i\\\">Haw\\u00e1i<\\/a>es un archipi\\u00e9lago\\u00a0<a title=\\\"Polinesia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Polinesia\\\">polinesio<\\/a>\\u00a0en medio del oc\\u00e9ano Pac\\u00edfico, y es el \\u00fanico estado estadounidense que no se encuentra en\\u00a0<a title=\\\"Am\\u00e9rica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica\\\">Am\\u00e9rica<\\/a>. El pa\\u00eds tambi\\u00e9n posee\\u00a0<a title=\\\"Territorios no incorporados de los Estados Unidos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Territorios_no_incorporados_de_los_Estados_Unidos\\\">varios territorios no incorporados<\\/a>\\u00a0en el\\u00a0<a title=\\\"Mar Caribe\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_Caribe\\\">mar Caribe<\\/a>\\u00a0y en el Pac\\u00edfico.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-09-27 04:11:03\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:11:03\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:11:03\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(27, 17, 1, '', '2018-09-27 04:11:35', 100, 5486, 'a3b17985fd5c63d685b0f87e5284710ab1a452d9', '{\"id\":\"17\",\"asset_id\":83,\"title\":\"Cuba\",\"alias\":\"cuba\",\"introtext\":\"<p><b>Cuba<\\/b>, oficialmente la\\u00a0<b>Rep\\u00fablica de Cuba<\\/b>,<sup id=\\\"cite_ref-Constituci\\u00f3n_1-2\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cuba#cite_note-Constituci%C3%B3n-1\\\">1<\\/a><\\/sup>\\u200b es un\\u00a0<a title=\\\"Estado\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estado\\\">pa\\u00eds soberano<\\/a>\\u00a0<a title=\\\"Pa\\u00eds insular\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Pa%C3%ADs_insular\\\">insular<\\/a>\\u00a0del\\u00a0<a title=\\\"Mar Caribe\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_Caribe\\\">Caribe<\\/a>, asentado en un\\u00a0<a title=\\\"Archipi\\u00e9lago\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Archipi%C3%A9lago\\\">archipi\\u00e9lago<\\/a>\\u00a0del\\u00a0<a title=\\\"Mar Caribe\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mar_Caribe\\\">Mar Caribe<\\/a>. El territorio est\\u00e1 organizado en\\u00a0<a title=\\\"Organizaci\\u00f3n territorial de Cuba\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Organizaci%C3%B3n_territorial_de_Cuba\\\">quince provincias y un municipio especial<\\/a>\\u00a0con\\u00a0<a title=\\\"La Habana\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/La_Habana\\\">La Habana<\\/a>\\u00a0como\\u00a0<a title=\\\"Capital (pol\\u00edtica)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Capital_(pol%C3%ADtica)\\\">capital<\\/a>\\u00a0y ciudad m\\u00e1s poblada.<\\/p>\\r\\n<p>Es uno de los trece\\u00a0<a title=\\\"Pa\\u00eds\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Pa%C3%ADs\\\">estados independientes<\\/a>\\u00a0que forman la\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"America Insular\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/America_Insular\\\">Am\\u00e9rica Insular<\\/a>,\\u00a0<a title=\\\"Antillas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Antillas\\\">Antillas o islas del mar Caribe<\\/a>, y uno de los treinta y cinco del\\u00a0<a title=\\\"Continente\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Continente\\\">continente<\\/a>\\u00a0<a title=\\\"Am\\u00e9rica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica\\\">americano<\\/a>. La isla de Cuba tiene origen\\u00a0<a title=\\\"Orog\\u00e9nesis\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Orog%C3%A9nesis\\\">orog\\u00e9nico<\\/a>. Completan el archipi\\u00e9lago la\\u00a0<a title=\\\"Isla de la Juventud\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Isla_de_la_Juventud\\\">Isla de la Juventud<\\/a>\\u00a0y m\\u00e1s de un millar de\\u00a0<a title=\\\"Cayo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cayo\\\">cayos<\\/a>\\u00a0o peque\\u00f1as islas que las rodean:\\u00a0<a title=\\\"Cayo Coco\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cayo_Coco\\\">Cayo Coco<\\/a>,\\u00a0<a title=\\\"Cayo Guillermo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cayo_Guillermo\\\">Cayo Guillermo<\\/a>,\\u00a0<a title=\\\"Cayo Largo del Sur\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cayo_Largo_del_Sur\\\">Cayo Largo del Sur<\\/a>\\u00a0y\\u00a0<a title=\\\"Cayo Jut\\u00edas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cayo_Jut%C3%ADas\\\">Cayo Jut\\u00edas<\\/a>, entre otros. Colinda, al norte, con el estado\\u00a0<a title=\\\"Estados Unidos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos\\\">estadounidense<\\/a>\\u00a0de\\u00a0<a title=\\\"Florida\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Florida\\\">Florida<\\/a>\\u00a0y con las\\u00a0<a title=\\\"Bahamas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Bahamas\\\">Bahamas<\\/a>, al oeste con\\u00a0<a title=\\\"M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico\\\">M\\u00e9xico<\\/a>\\u00a0y al sur con las\\u00a0<a title=\\\"Islas Caim\\u00e1n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Islas_Caim%C3%A1n\\\">Islas Caim\\u00e1n<\\/a>\\u00a0y\\u00a0<a title=\\\"Jamaica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Jamaica\\\">Jamaica<\\/a>. Al sudeste de Cuba, se encuentra la isla de\\u00a0<a title=\\\"La Espa\\u00f1ola\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/La_Espa%C3%B1ola\\\">La Espa\\u00f1ola<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-09-27 04:11:35\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:11:35\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:11:35\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `taw_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(28, 13, 5, '', '2018-09-27 04:13:10', 100, 558, '09af2666787b1890b37508764927ef754ccff754', '{\"id\":\"13\",\"asset_id\":84,\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":22,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Lenguajes\",\"alias\":\"lenguajes\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"100\",\"created_time\":\"2018-09-27 04:13:10\",\"modified_user_id\":null,\"modified_time\":\"2018-09-27 04:13:10\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(29, 18, 1, '', '2018-09-27 04:14:11', 100, 6571, '37f6a1f1acf104f96b1fceae7dbb0d830adaf199', '{\"id\":\"18\",\"asset_id\":85,\"title\":\"Ingles\",\"alias\":\"ingles\",\"introtext\":\"<p>El\\u00a0<b>idioma ingl\\u00e9s<\\/b>\\u00a0(<i>English<\\/i>\\u00a0<a title=\\\"Alfabeto Fon\\u00e9tico Internacional\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Alfabeto_Fon%C3%A9tico_Internacional\\\">[\\u02c8\\u026a\\u014b\\u0261l\\u026a\\u0283]<\\/a>\\u00a0o\\u00a0<i>English language<\\/i>) es una\\u00a0<a title=\\\"Lenguas germ\\u00e1nicas occidentales\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lenguas_germ%C3%A1nicas_occidentales\\\">lengua germ\\u00e1nica occidental<\\/a>\\u00a0que surgi\\u00f3 en los\\u00a0<a title=\\\"Inglaterra anglosajona\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Inglaterra_anglosajona\\\">reinos anglosajones<\\/a>\\u00a0de\\u00a0<a title=\\\"Inglaterra\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Inglaterra\\\">Inglaterra<\\/a>\\u00a0y se extendi\\u00f3 hasta el Norte en lo que se convertir\\u00eda en el sudeste de\\u00a0<a title=\\\"Escocia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Escocia\\\">Escocia<\\/a>, bajo la influencia del\\u00a0<a title=\\\"Reino de Northumbria\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Reino_de_Northumbria\\\">Reino de Northumbria<\\/a>.<\\/p>\\r\\n<p>El ingl\\u00e9s es el tercer idioma nativo m\\u00e1s extendido en el mundo, despu\\u00e9s del chino mandar\\u00edn y el espa\\u00f1ol. Es el segundo\\u00a0<a title=\\\"Idioma\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma\\\">idioma<\\/a>\\u00a0m\\u00e1s aprendido y es el idioma oficial o uno de los idiomas oficiales en casi 60 Estados soberanos.<\\/p>\\r\\n<p>Debido a la influencia pol\\u00edtica, econ\\u00f3mica, militar, cient\\u00edfica y cultural de\\u00a0<a title=\\\"Reino de Gran Breta\\u00f1a\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Reino_de_Gran_Breta%C3%B1a\\\">Gran Breta\\u00f1a<\\/a>\\u00a0y el\\u00a0<a title=\\\"Reino Unido\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Reino_Unido\\\">Reino Unido<\\/a>\\u00a0desde el\\u00a0<a title=\\\"Siglo XVIII\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Siglo_XVIII\\\">siglo XVIII<\\/a>, por medio del\\u00a0<a title=\\\"Imperio brit\\u00e1nico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Imperio_brit%C3%A1nico\\\">Imperio brit\\u00e1nico<\\/a>\\u00a0y los\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Estados Unidos de Am\\u00e9rica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos_de_Am%C3%A9rica\\\">Estados Unidos de Am\\u00e9rica<\\/a>\\u00a0desde mediados del\\u00a0<a title=\\\"Siglo XX\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Siglo_XX\\\">siglo XX<\\/a>,<sup id=\\\"cite_ref-3\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s#cite_note-3\\\">3<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-4\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s#cite_note-4\\\">4<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-5\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s#cite_note-5\\\">5<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-6\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s#cite_note-6\\\">6<\\/a><\\/sup>\\u200b el ingl\\u00e9s se ha difundido ampliamente por todo el mundo y es el idioma principal del discurso internacional y\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Lingua franca\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lingua_franca\\\">lengua franca<\\/a>\\u00a0en muchas regiones.<sup id=\\\"cite_ref-refCrystal1997_1_7-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s#cite_note-refCrystal1997_1-7\\\">7<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-refWardhaugh2006_1_8-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s#cite_note-refWardhaugh2006_1-8\\\">8<\\/a><\\/sup>\\u200b De la misma forma, es utilizado de manera general como lengua franca entre hablantes de idiomas distintos en la mayor parte de los pa\\u00edses del mundo.<sup id=\\\"cite_ref-refCrystal1997_1_7-1\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s#cite_note-refCrystal1997_1-7\\\">7<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-refWardhaugh2006_1_8-1\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s#cite_note-refWardhaugh2006_1-8\\\">8<\\/a><\\/sup>\\u200b Se ense\\u00f1a tambi\\u00e9n como\\u00a0<a title=\\\"Segunda lengua\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Segunda_lengua\\\">segunda lengua<\\/a>\\u00a0en muchos sistemas educativos, que con el paso del tiempo ha proporcionado un estatus de superioridad cultural a sus hablantes no nativos, a causa de la influencia de los pa\\u00edses anglosajones en el mundo.<sup id=\\\"cite_ref-refCrystal1997_1_7-2\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s#cite_note-refCrystal1997_1-7\\\">7<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-refWardhaugh2006_1_8-2\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s#cite_note-refWardhaugh2006_1-8\\\">8<\\/a><\\/sup>\\u200b<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"13\",\"created\":\"2018-09-27 04:14:11\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:14:11\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:14:11\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(30, 19, 1, '', '2018-09-27 04:14:56', 100, 7883, 'e9aa93f206bca19dc3f3d71a0f72e945fef3a805', '{\"id\":\"19\",\"asset_id\":86,\"title\":\"Espa\\u00f1ol\",\"alias\":\"espanol\",\"introtext\":\"<p>El\\u00a0<b>idioma espa\\u00f1ol<\\/b>\\u00a0o\\u00a0<b>castellano<\\/b>\\u00a0es una\\u00a0<a title=\\\"Idioma\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma\\\">lengua<\\/a>\\u00a0<a title=\\\"Lenguas romances\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lenguas_romances\\\">romance<\\/a>\\u00a0procedente del\\u00a0<a title=\\\"Lat\\u00edn vulgar\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lat%C3%ADn_vulgar\\\">lat\\u00edn hablado<\\/a>. Pertenece al\\u00a0<a title=\\\"Lenguas iberorromances\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lenguas_iberorromances\\\">grupo ib\\u00e9rico<\\/a>, y es originario del\\u00a0<a title=\\\"Reino de Castilla\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Reino_de_Castilla\\\">Reino de Castilla<\\/a>. Se conoce tambi\\u00e9n por el\\u00a0<a title=\\\"Americanismo (ling\\u00fc\\u00edstica)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Americanismo_(ling%C3%BC%C3%ADstica)\\\">americanismo<\\/a>\\u00a0coloquial\\u00a0<i>castilla<\\/i>\\u00a0(por ejemplo: \\u00abhablar castilla\\u00bb, \\u00abentender castilla\\u00bb),<sup id=\\\"cite_ref-33\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-33\\\">nota 1<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-34\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-34\\\">33<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-35\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-35\\\">34<\\/a><\\/sup>\\u200b com\\u00fan en \\u00e1reas rurales e ind\\u00edgenas entre\\u00a0<a title=\\\"M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico\\\">M\\u00e9xico<\\/a>,\\u00a0<a title=\\\"Per\\u00fa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Per%C3%BA\\\">Per\\u00fa<\\/a>\\u00a0y la\\u00a0<a title=\\\"Patagonia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Patagonia\\\">Patagonia<\\/a>.<sup id=\\\"cite_ref-36\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-36\\\">35<\\/a><\\/sup>\\u200b<\\/p>\\r\\n<p>Es la\\u00a0<a title=\\\"Anexo:Lenguas por n\\u00famero de hablantes nativos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Lenguas_por_n%C3%BAmero_de_hablantes_nativos\\\">segunda lengua<\\/a>\\u00a0del mundo por el n\\u00famero de personas que la hablan como\\u00a0<a title=\\\"Lengua materna\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lengua_materna\\\">lengua materna<\\/a>\\u00a0tras el\\u00a0<a title=\\\"Chino mandar\\u00edn\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chino_mandar%C3%ADn\\\">chino mandar\\u00edn<\\/a>,<sup id=\\\"cite_ref-37\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-37\\\">36<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-38\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-38\\\">37<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-39\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-39\\\">38<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-40\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-40\\\">39<\\/a><\\/sup>\\u200b con 442 millones de hablantes nativos, aproximadamente<sup id=\\\"cite_ref-Ethnologue_41-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-Ethnologue-41\\\">40<\\/a><\\/sup>\\u200b y lo hablan como primera y\\u00a0<a title=\\\"Segunda lengua\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Segunda_lengua\\\">segunda lengua<\\/a>\\u00a0con dominio nativo 477 millones, alcanzando los 572 millones de personas si contamos a hablantes con competencia limitada,<sup id=\\\"cite_ref-hablantes_4-1\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-hablantes-4\\\">4<\\/a><\\/sup>\\u200b de modo que puede ser considerada la tercera lengua del mundo por el total de hablantes tras el mandar\\u00edn y el\\u00a0<a title=\\\"Idioma ingl\\u00e9s\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s\\\">ingl\\u00e9s<\\/a>,<sup id=\\\"cite_ref-42\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-42\\\">41<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-krystal_43-0\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-krystal-43\\\">42<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-44\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-44\\\">43<\\/a><\\/sup>\\u200b<sup id=\\\"cite_ref-45\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-45\\\">44<\\/a><\\/sup>\\u200b con m\\u00e1s de 21 millones de estudiantes,<sup id=\\\"cite_ref-InformeEspa\\u00f1ol_2-2\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-InformeEspa%C3%B1ol-2\\\">2<\\/a><\\/sup>\\u200b y la tercera en\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Lengua vehicular\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lengua_vehicular\\\">comunicaci\\u00f3n internacional<\\/a>tras el ingl\\u00e9s y\\u00a0<a title=\\\"Idioma franc\\u00e9s\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_franc%C3%A9s\\\">franc\\u00e9s<\\/a>.<sup id=\\\"cite_ref-46\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-46\\\">45<\\/a><\\/sup>\\u200b El espa\\u00f1ol posee la tercera poblaci\\u00f3n alfabetizada del mundo (un 5,47\\u00a0% del total), siendo la tercera lengua m\\u00e1s utilizada para la producci\\u00f3n de informaci\\u00f3n en los medios de comunicaci\\u00f3n,<sup id=\\\"cite_ref-47\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-47\\\">46<\\/a><\\/sup>\\u200b y tambi\\u00e9n la tercera lengua con m\\u00e1s usuarios de\\u00a0<a title=\\\"Internet\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Internet\\\">Internet<\\/a>, despu\\u00e9s del chino y el ingl\\u00e9s, con 256 millones de usuarios aproximadamente, lo que representa el 7,6\\u00a0% del total.<sup id=\\\"cite_ref-48\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol#cite_note-48\\\">47<\\/a><\\/sup><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"13\",\"created\":\"2018-09-27 04:14:56\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:14:56\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:14:56\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(31, 20, 1, '', '2018-09-27 04:15:36', 100, 4303, '10d41de4cab7450f0d591524d73640f5d7d2ba26', '{\"id\":\"20\",\"asset_id\":87,\"title\":\"Japones\",\"alias\":\"japones\",\"introtext\":\"<p>El\\u00a0<b>idioma japon\\u00e9s<\\/b>\\u00a0o\\u00a0<b>idioma nip\\u00f3n<\\/b>\\u00a0(<span class=\\\"t_nihongo_kanji\\\" lang=\\\"ja\\\">\\u65e5\\u672c\\u8a9e<\\/span>\\u00a0<span class=\\\"t_nihongo_romaji\\\"><i>\\u306b\\u307b\\u3093\\u3054<\\/i><\\/span><span class=\\\"t_nihongo_help\\\"><sup><a title=\\\"Ayuda:Idioma japon\\u00e9s\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ayuda:Idioma_japon%C3%A9s\\\"><span class=\\\"t_nihongo_icon\\\">?<\\/span><\\/a><\\/sup><\\/span>,\\u00a0<span class=\\\"unicode\\\"><a title=\\\"Acerca de este sonido\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Archivo:Ja-nihongo.ogg\\\"><img src=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/8\\/8a\\/Loudspeaker.svg\\/11px-Loudspeaker.svg.png\\\" srcset=\\\"\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/8\\/8a\\/Loudspeaker.svg\\/17px-Loudspeaker.svg.png 1.5x, \\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/thumb\\/8\\/8a\\/Loudspeaker.svg\\/22px-Loudspeaker.svg.png 2x\\\" alt=\\\"Acerca de este sonido\\\" width=\\\"11\\\" height=\\\"11\\\" data-file-width=\\\"20\\\" data-file-height=\\\"20\\\" \\/><\\/a>\\u00a0<a class=\\\"internal\\\" title=\\\"Ja-nihongo.ogg\\\" href=\\\"https:\\/\\/upload.wikimedia.org\\/wikipedia\\/commons\\/9\\/99\\/Ja-nihongo.ogg\\\">Nihongo<\\/a>\\u00a0<small class=\\\"metadata audiolinkinfo\\\">(<a title=\\\"Ayuda:Multimedia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ayuda:Multimedia\\\"><span title=\\\"\\u00bfProblemas al reproducir este archivo?\\\">?<\\/span><\\/a>\\u00b7<a title=\\\"Archivo:Ja-nihongo.ogg\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Archivo:Ja-nihongo.ogg\\\"><span title=\\\"Acerca de este sonido\\\">i<\\/span><\\/a>)<\\/small><\\/span>)\\u00a0(<a title=\\\"Alfabeto Fon\\u00e9tico Internacional\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Alfabeto_Fon%C3%A9tico_Internacional\\\">AFI<\\/a>:nih\\u00f5\\u014bgo) es un\\u00a0<a title=\\\"Idioma\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma\\\">idioma<\\/a>\\u00a0que suele ser clasificado como idioma aislado. Sin embargo, seg\\u00fan los que afirman que el habla de las islas Ry\\u016bky\\u016b conforman idiomas aparte, el japon\\u00e9s entrar\\u00eda en la familia de\\u00a0<a title=\\\"Lenguas jap\\u00f3nicas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lenguas_jap%C3%B3nicas\\\">lenguas jap\\u00f3nicas<\\/a>. Es la lengua materna de m\\u00e1s de 130 millones de personas y la lengua secundaria de m\\u00e1s de 2 millones, siendo la lengua secundaria principalmente en\\u00a0<a title=\\\"Rep\\u00fablica de China\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Rep%C3%BAblica_de_China\\\">Rep\\u00fablica de China<\\/a>\\u00a0y\\u00a0<a title=\\\"Palaos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Palaos\\\">Palaos<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"13\",\"created\":\"2018-09-27 04:15:36\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:15:36\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:15:36\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(32, 21, 1, '', '2018-09-27 04:16:21', 100, 5040, '8217cbccffc0ff4849f0a460e9e177c2aa1e7689', '{\"id\":\"21\",\"asset_id\":88,\"title\":\"Aleman\",\"alias\":\"aleman\",\"introtext\":\"<p>El\\u00a0<b>idioma alem\\u00e1n<\\/b>\\u00a0(<i>Deutsch<\\/i>\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Alfabeto fon\\u00e9tico internacional\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Alfabeto_fon%C3%A9tico_internacional\\\">[\\u02c8d\\u0254\\u028ft\\u0283]<\\/a>\\u00a0o\\u00a0<i>deutsche Sprache<\\/i>) es una\\u00a0<a title=\\\"Lenguaje\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lenguaje\\\">lengua<\\/a>\\u00a0<a title=\\\"Lenguas indoeuropeas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lenguas_indoeuropeas\\\">indoeuropea<\\/a>\\u00a0perteneciente al grupo de las\\u00a0<a title=\\\"Lenguas germ\\u00e1nicas\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Lenguas_germ%C3%A1nicas\\\">lenguas germ\\u00e1nicas<\\/a>\\u00a0occidentales. Es tambi\\u00e9n una de las lenguas m\\u00e1s importantes del mundo<sup id=\\\"cite_ref-6\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_alem%C3%A1n#cite_note-6\\\">6<\\/a><\\/sup>\\u200b y la que m\\u00e1s hablantes nativos tiene en la\\u00a0<a title=\\\"Uni\\u00f3n Europea\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Uni%C3%B3n_Europea\\\">Uni\\u00f3n Europea<\\/a>\\u00a0con un 16\\u00a0% del total.<sup id=\\\"cite_ref-7\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_alem%C3%A1n#cite_note-7\\\">7<\\/a><\\/sup>\\u200b Los\\u00a0<a title=\\\"Adjetivo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Adjetivo\\\">adjetivos<\\/a>\\u00a0utilizados en lengua espa\\u00f1ola para referirse al\\u00a0<a title=\\\"Habla\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Habla\\\">habla<\\/a>\\u00a0alemana son\\u00a0<i>germanohablante<\\/i>\\u00a0o\\u00a0<i>german\\u00f3fono\\/a<\\/i>. Es el segundo idioma germ\\u00e1nico m\\u00e1s hablado, despu\\u00e9s del\\u00a0<a title=\\\"Idioma ingl\\u00e9s\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s\\\">ingl\\u00e9s<\\/a>\\u00a0y uno de los idiomas oficiales de la Uni\\u00f3n Europea por ser el idioma materno de alrededor de 100 millones de personas en 2004, lo que representa el 13,3\\u00a0% de los europeos. Si bien por el total de hablantes es la tercera lengua m\\u00e1s hablada de Europa (despu\\u00e9s del\\u00a0<a title=\\\"Idioma ingl\\u00e9s\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_ingl%C3%A9s\\\">ingl\\u00e9s<\\/a>\\u00a0y del\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Franc\\u00e9s\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Franc%C3%A9s\\\">franc\\u00e9s<\\/a>), en cambio como lengua materna es el idioma m\\u00e1s hablado del continente, excluida Rusia, por encima del franc\\u00e9s (66,5 millones de hablantes en Europa en 2004) y el ingl\\u00e9s (64,2 millones de hablantes en Europa en 2004). Es considerado el tercer idioma m\\u00e1s ense\\u00f1ado como lengua extranjera en todo el mundo,<sup>[<i><a title=\\\"Wikipedia:Verificabilidad\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Wikipedia:Verificabilidad\\\">cita\\u00a0requerida<\\/a><\\/i>]<\\/sup>\\u00a0el segundo en Europa y el tercero en Estados Unidos despu\\u00e9s del\\u00a0<a title=\\\"Idioma espa\\u00f1ol\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_espa%C3%B1ol\\\">espa\\u00f1ol<\\/a>\\u00a0y el franc\\u00e9s. Con unos 95 millones de hablantes en seis pa\\u00edses del mundo, apenas sorprende que el uso del idioma var\\u00ede. Como el espa\\u00f1ol y el ingl\\u00e9s, es un idioma pluric\\u00e9ntrico, teniendo en el caso alem\\u00e1n tres centros principales: Alemania, Austria y Suiza.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"13\",\"created\":\"2018-09-27 04:16:21\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:16:21\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:16:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(33, 22, 1, '', '2018-09-27 04:16:51', 100, 6827, '12e1a52f3cffd842497bfacc3dc0e92ea0bee6f9', '{\"id\":\"22\",\"asset_id\":89,\"title\":\"Chino Mandarin\",\"alias\":\"chino\",\"introtext\":\"<p>El\\u00a0<b>mandar\\u00edn<\\/b>\\u00a0(<a title=\\\"Caracteres chinos tradicionales\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Caracteres_chinos_tradicionales\\\">chino tradicional<\\/a>: \\u5b98\\u8a71,\\u00a0<a title=\\\"Caracteres chinos simplificados\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Caracteres_chinos_simplificados\\\">chino simplificado<\\/a>: \\u5b98\\u8bdd,\\u00a0<a title=\\\"Pinyin\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Pinyin\\\">pinyin<\\/a>:\\u00a0<i>gu\\u0101nhu\\u00e0<\\/i>,\\u00a0literalmente \\u00abel habla oficial\\u00bb) es el conjunto de\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Dialectos del chino\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Dialectos_del_chino\\\">dialectos del chino<\\/a>\\u00a0mutuamente inteligibles que se hablan en el norte, centro y suroeste de\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"China\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/China\\\">China<\\/a>. El t\\u00e9rmino chino es, en\\u00a0<a title=\\\"Pinyin\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Pinyin\\\">pinyin<\\/a>,\\u00a0<i>b\\u011bif\\u0101nghu\\u00e0<\\/i>\\u00a0(<a class=\\\"mw-redirect\\\" title=\\\"Chino tradicional\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chino_tradicional\\\">Tradicional<\\/a>: \\u5317\\u65b9\\u8a71 \\/\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Chino simplificado\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chino_simplificado\\\">simplificado<\\/a>: \\u5317\\u65b9\\u8bdd, \\\"habla del norte\\\"). Con m\\u00e1s de 836 millones de hablantes, es la principal forma hablada del\\u00a0<a title=\\\"Idioma chino\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Idioma_chino\\\">chino<\\/a>, as\\u00ed como la lengua con mayor n\\u00famero de\\u00a0<a title=\\\"Anexo:Lenguas por n\\u00famero de hablantes nativos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Lenguas_por_n%C3%BAmero_de_hablantes_nativos\\\">hablantes nativos<\\/a>\\u00a0y\\u00a0<a title=\\\"Anexo:Idiomas por el total de hablantes\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Anexo:Idiomas_por_el_total_de_hablantes\\\">hablantes totales<\\/a>\\u00a0del mundo. El mandar\\u00edn es muy diferente de las lenguas chinas del sur, como el\\u00a0<a title=\\\"Chino canton\\u00e9s\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chino_canton%C3%A9s\\\">canton\\u00e9s<\\/a>\\u00a0o el\\u00a0<a title=\\\"Chino wu\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Chino_wu\\\">wu<\\/a>, puesto que no se tratan de dialectos del mandar\\u00edn, sino idiomas chinos distintos.<\\/p>\\r\\n<p>Por extensi\\u00f3n, el t\\u00e9rmino\\u00a0<a title=\\\"Mandar\\u00edn est\\u00e1ndar\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mandar%C3%ADn_est%C3%A1ndar\\\">mandar\\u00edn<\\/a>\\u00a0se utiliza tambi\\u00e9n para designar a la lengua china normativa u oficial, llamada \\\"p\\u01d4t\\u014dnghu\\u00e0\\\" (\\u666e\\u901a\\u8a71 \\/ \\u666e\\u901a\\u8bdd \\\"habla de comunicaci\\u00f3n com\\u00fan\\\") en la Rep\\u00fablica Popular China,\\u00a0<i>gu\\u00f3y\\u01d4<\\/i>\\u00a0(\\u570b\\u8a9e \\/ \\u56fd\\u8bed, \\\"lengua nacional\\\") en\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Taiw\\u00e1n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Taiw%C3%A1n\\\">Taiw\\u00e1n<\\/a>\\u00a0y\\u00a0<i>hu\\u00e1y\\u01d4<\\/i>\\u00a0(\\u83ef\\u8a9e \\/ \\u534e\\u8bed, \\\"lengua china\\\") en\\u00a0<a title=\\\"Singapur\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Singapur\\\">Singapur<\\/a>,\\u00a0<a title=\\\"Malasia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Malasia\\\">Malasia<\\/a>\\u00a0e\\u00a0<a title=\\\"Indonesia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Indonesia\\\">Indonesia<\\/a>. Esta lengua es hablada tambi\\u00e9n en pa\\u00edses que tienen gran cantidad de inmigrantes chinos como\\u00a0<a title=\\\"Venezuela\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Venezuela\\\">Venezuela<\\/a>,\\u00a0<a title=\\\"Per\\u00fa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Per%C3%BA\\\">Per\\u00fa<\\/a>,\\u00a0<a title=\\\"Canad\\u00e1\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Canad%C3%A1\\\">Canad\\u00e1<\\/a>,\\u00a0<a title=\\\"Australia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Australia\\\">Australia<\\/a>,\\u00a0<a title=\\\"Cuba\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Cuba\\\">Cuba<\\/a>,\\u00a0<a title=\\\"Estados Unidos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos\\\">Estados Unidos<\\/a>,\\u00a0<a title=\\\"Jap\\u00f3n\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Jap%C3%B3n\\\">Jap\\u00f3n<\\/a>,\\u00a0<a title=\\\"Espa\\u00f1a\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Espa%C3%B1a\\\">Espa\\u00f1a<\\/a>,\\u00a0<a title=\\\"Rep\\u00fablica Dominicana\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Rep%C3%BAblica_Dominicana\\\">Rep\\u00fablica Dominicana<\\/a>,\\u00a0<a title=\\\"Argentina\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Argentina\\\">Argentina<\\/a>,\\u00a0<a title=\\\"Paraguay\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Paraguay\\\">Paraguay<\\/a>\\u00a0o\\u00a0<a title=\\\"Panam\\u00e1\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Panam%C3%A1\\\">Panam\\u00e1<\\/a>. Esta lengua est\\u00e1ndar moderna se empez\\u00f3 a configurar a principios del\\u00a0<a title=\\\"Siglo XX\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Siglo_XX\\\">siglo XX<\\/a>, y est\\u00e1 basada fundamentalmente en la variedad pequinesa del mandar\\u00edn, el\\u00a0<i>b\\u011bij\\u012bnghu\\u00e0<\\/i>\\u00a0(\\u5317\\u4eac\\u8a71 \\/ \\u5317\\u4eac\\u8bdd, \\\"habla pequinesa\\\").<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"13\",\"created\":\"2018-09-27 04:16:51\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:16:51\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:16:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(34, 14, 5, '', '2018-09-27 04:18:52', 100, 561, 'e1c9efa1342eee95fbee15b2c6447afc11ac12e8', '{\"id\":\"14\",\"asset_id\":90,\"parent_id\":\"1\",\"lft\":\"23\",\"rgt\":24,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Tipos de cambio\",\"alias\":\"cambio\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"100\",\"created_time\":\"2018-09-27 04:18:52\",\"modified_user_id\":null,\"modified_time\":\"2018-09-27 04:18:52\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(35, 23, 1, '', '2018-09-27 04:19:44', 100, 5322, 'ef3087f60a1216e91072c0439b1a6953ce8b9549', '{\"id\":\"23\",\"asset_id\":91,\"title\":\"Peso Mexicano\",\"alias\":\"pmex\",\"introtext\":\"<p>El\\u00a0<b>peso mexicano<\\/b>\\u00a0es la\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Moneda oficial\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Moneda_oficial\\\">moneda oficial<\\/a>\\u00a0en\\u00a0<a title=\\\"M\\u00e9xico\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/M%C3%A9xico\\\">M\\u00e9xico<\\/a>. El peso mexicano fue la primera moneda en el mundo en utilizar el signo \\\"<a title=\\\"$\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/$\\\">$<\\/a>\\\", incluso antes que el\\u00a0<a title=\\\"D\\u00f3lar estadounidense\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/D%C3%B3lar_estadounidense\\\">d\\u00f3lar de Estados Unidos<\\/a>, el cual m\\u00e1s tarde lo adopt\\u00f3 para su propio uso.<sup id=\\\"cite_ref-2\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Peso_mexicano#cite_note-2\\\">2<\\/a><\\/sup>\\u200b El peso mexicano es la octava moneda m\\u00e1s negociada en el mundo, la m\\u00e1s negociada de\\u00a0<a title=\\\"Am\\u00e9rica Latina\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica_Latina\\\">Am\\u00e9rica Latina<\\/a>\\u00a0y la tercera m\\u00e1s negociada en toda\\u00a0<a title=\\\"Am\\u00e9rica\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Am%C3%A9rica\\\">Am\\u00e9rica<\\/a>.<sup id=\\\"cite_ref-3\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Peso_mexicano#cite_note-3\\\">3<\\/a><\\/sup>\\u200b El c\\u00f3digo\\u00a0<a title=\\\"ISO 4217\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/ISO_4217\\\">ISO 4217<\\/a>\\u00a0actual para el peso es MXN; antes de la revalorizaci\\u00f3n de 1993, se utiliz\\u00f3 el c\\u00f3digo MXP. El peso se divide en 100 centavos, representados por el signo \\\"<a class=\\\"mw-redirect\\\" title=\\\"Centavo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Centavo\\\">\\u00a2<\\/a>\\\". El nombre\\u00a0<i>peso<\\/i>\\u00a0ha correspondido a dos unidades monetarias mexicanas diferentes:<\\/p>\\r\\n<ul>\\r\\n<li>La primera de ellas se identifica con el\\u00a0<a title=\\\"ISO 4217\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/ISO_4217\\\">c\\u00f3digo ISO<\\/a>\\u00a0<b>MXP<\\/b>, que fue vigente hasta el 31 de diciembre de 1992.<\\/li>\\r\\n<li>La segunda, equivalente a 1000 MXP, entr\\u00f3 en vigencia el\\u00a0<a title=\\\"1 de enero\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1_de_enero\\\">1 de enero<\\/a>\\u00a0de\\u00a0<a title=\\\"1993\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1993\\\">1993<\\/a>,<sup id=\\\"cite_ref-4\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Peso_mexicano#cite_note-4\\\">4<\\/a><\\/sup>\\u200b y tiene asignado el c\\u00f3digo ISO\\u00a0<b>MXN<\\/b>. Esta unidad se denomin\\u00f3\\u00a0<b>Nuevo Peso Mexicano<\\/b>\\u00a0hasta el\\u00a0<a title=\\\"31 de diciembre\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/31_de_diciembre\\\">31 de diciembre<\\/a>\\u00a0de\\u00a0<a title=\\\"1995\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1995\\\">1995<\\/a>\\u00a0y simplemente\\u00a0<b>Peso Mexicano<\\/b>\\u00a0desde el\\u00a0<a title=\\\"1 de enero\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1_de_enero\\\">1 de enero<\\/a>\\u00a0de\\u00a0<a title=\\\"1996\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1996\\\">1996<\\/a>\\u00a0hasta la fecha.<sup id=\\\"cite_ref-5\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Peso_mexicano#cite_note-5\\\">5<\\/a><\\/sup>\\u200b Las monedas que a la fecha circulan en M\\u00e9xico est\\u00e1n conformadas por semic\\u00edrculos o anillos con motivos alusivos a la \\u201c<a title=\\\"Piedra del Sol\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Piedra_del_Sol\\\">Piedra del Sol<\\/a>\\u201d o \\u201c<a title=\\\"Piedra del Sol\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Piedra_del_Sol\\\">Calendario Azteca<\\/a>\\u201d.<\\/li>\\r\\n<\\/ul>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"14\",\"created\":\"2018-09-27 04:19:44\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:19:44\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:19:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(36, 24, 1, '', '2018-09-27 04:20:24', 100, 3433, 'ac4081d41f75fe34ad65a3bbbebf0b89c34fe3ce', '{\"id\":\"24\",\"asset_id\":92,\"title\":\"Moneda Argentina\",\"alias\":\"parg\",\"introtext\":\"<p>El\\u00a0<b>peso<\\/b>\\u00a0(s\\u00edmbolo:\\u00a0<b>$<\\/b>,\\u00a0<a title=\\\"ISO 4217\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/ISO_4217\\\">ISO 4217<\\/a>: ARS) es la\\u00a0<a title=\\\"Divisa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Divisa\\\">moneda nacional<\\/a>\\u00a0de la\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Rep\\u00fablica Argentina\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Rep%C3%BAblica_Argentina\\\">Rep\\u00fablica Argentina<\\/a>\\u00a0desde\\u00a0<a title=\\\"1992\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1992\\\">1992<\\/a>, cuando reemplaz\\u00f3 al\\u00a0<a title=\\\"Austral (moneda)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Austral_(moneda)\\\">austral<\\/a>. Tambi\\u00e9n fue conocido como\\u00a0<b>peso convertible<\\/b>\\u00a0debido a su paridad con el\\u00a0<a title=\\\"D\\u00f3lar estadounidense\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/D%C3%B3lar_estadounidense\\\">d\\u00f3lar<\\/a>\\u00a0hasta la modificaci\\u00f3n de la\\u00a0<a title=\\\"Ley de Convertibilidad del Austral\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Ley_de_Convertibilidad_del_Austral\\\">ley de convertibilidad<\\/a>\\u00a0en\\u00a0<a title=\\\"2002\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/2002\\\">2002<\\/a>. Comenz\\u00f3 a circular el\\u00a0<a title=\\\"1 de enero\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1_de_enero\\\">1 de enero<\\/a>\\u00a0de\\u00a0<a title=\\\"1992\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1992\\\">1992<\\/a>\\u00a0bajo la mencionada ley de\\u00a0<a title=\\\"1991\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1991\\\">1991<\\/a>.<sup id=\\\"cite_ref-circulante_2-1\\\" class=\\\"reference separada\\\"><a href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Peso_(moneda_de_Argentina)#cite_note-circulante-2\\\">2<\\/a><\\/sup>\\u200b<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"14\",\"created\":\"2018-09-27 04:20:24\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:20:24\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:20:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `taw_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(37, 25, 1, '', '2018-09-27 04:21:00', 100, 5138, '69fd94f6fa4ef17a482277dec34126c0c8ef4517', '{\"id\":\"25\",\"asset_id\":93,\"title\":\"Dolar\",\"alias\":\"dolar\",\"introtext\":\"<p>El nombre de\\u00a0<i>Thaler<\\/i>\\u00a0(de\\u00a0<i>Joachimsthal<\\/i>, hoy\\u00a0<a title=\\\"J\\u00e1chymov\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/J%C3%A1chymov\\\">J\\u00e1chymov<\\/a>), en alem\\u00e1n Valle de Joaqu\\u00edn, una ciudad de\\u00a0<a title=\\\"Bohemia\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Bohemia\\\">Bohemia<\\/a>, entonces parte del\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Imperio de los Habsburgo\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Imperio_de_los_Habsburgo\\\">Imperio de los Habsburgo<\\/a>) tiene su origen en las\\u00a0<i>Guldengroschen<\\/i>\\u00a0alemanas, monedas acu\\u00f1adas con\\u00a0<a title=\\\"Plata\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Plata\\\">plata<\\/a>\\u00a0de una mina de dicha ciudad. La expresi\\u00f3n \\u00ab<a title=\\\"Duro (moneda)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Duro_(moneda)\\\">duro<\\/a>\\u00bb se us\\u00f3 para denominar a una moneda de plata, el\\u00a0<a title=\\\"Peso (moneda)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Peso_(moneda)\\\">peso<\\/a>\\u00a0o peso duro, una moneda de ocho\\u00a0<a title=\\\"Real espa\\u00f1ol\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Real_espa%C3%B1ol\\\">reales<\\/a>\\u00a0muy extendida en el\\u00a0<a title=\\\"Siglo XVIII\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Siglo_XVIII\\\">siglo XVIII<\\/a>durante la\\u00a0<a class=\\\"mw-redirect\\\" title=\\\"Colonizaci\\u00f3n de Am\\u00e9rica del Norte\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Colonizaci%C3%B3n_de_Am%C3%A9rica_del_Norte\\\">colonizaci\\u00f3n espa\\u00f1ola del Nuevo Mundo<\\/a>. El uso del duro o\\u00a0<a title=\\\"D\\u00f3lar espa\\u00f1ol\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/D%C3%B3lar_espa%C3%B1ol\\\">d\\u00f3lar espa\\u00f1ol<\\/a>, junto al\\u00a0<a title=\\\"T\\u00e1lero de Mar\\u00eda Teresa\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/T%C3%A1lero_de_Mar%C3%ADa_Teresa\\\">t\\u00e1lero de Mar\\u00eda Teresa<\\/a>\\u00a0de\\u00a0<a title=\\\"Austria\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Austria\\\">Austria<\\/a>\\u00a0como moneda legal en los incipientes\\u00a0<a title=\\\"Estados Unidos\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Estados_Unidos\\\">Estados Unidos<\\/a>, es la raz\\u00f3n de su nombre actual. Esta moneda recib\\u00eda en las colonias norteamericanas el nombre de d\\u00f3lar espa\\u00f1ol y en 1785 fue adoptada como moneda oficial de Estados Unidos, tanto el nombre como el s\\u00edmbolo $, ante la carest\\u00eda de moneda que provoc\\u00f3 la Guerra de Independencia frente al Imperio Brit\\u00e1nico.<\\/p>\\r\\n<p>En 1792 la\\u00a0<a title=\\\"United States Mint\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/United_States_Mint\\\">Casa de la Moneda estadounidense<\\/a>\\u00a0cre\\u00f3 el d\\u00f3lar estadounidense, pero result\\u00f3 mucho menos popular que el d\\u00f3lar espa\\u00f1ol ya que \\u00e9ste era m\\u00e1s pesado y ten\\u00eda mejor plata. El uso del d\\u00f3lar espa\\u00f1ol fue abolido en 1857, cuando ten\\u00eda el mismo valor te\\u00f3rico que el d\\u00f3lar estadounidense. Pero su influencia qued\\u00f3 patente por ejemplo en\\u00a0<a title=\\\"Wall Street\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Wall_Street\\\">Wall Street<\\/a>, donde el precio de las acciones del\\u00a0<a title=\\\"Mercado de valores\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Mercado_de_valores\\\">mercado de valores<\\/a>\\u00a0se med\\u00eda en octavos de d\\u00f3lar, ya que el real de a 8 o d\\u00f3lar espa\\u00f1ol ten\\u00eda el valor de 8 reales. Esta denominaci\\u00f3n perdur\\u00f3 hasta 1997.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"14\",\"created\":\"2018-09-27 04:21:00\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:21:00\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:21:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(38, 26, 1, '', '2018-09-27 04:21:44', 100, 2515, '987aa6e7912f23dfe2ea885d81f00067641d5c97', '{\"id\":\"26\",\"asset_id\":94,\"title\":\"Peso venezolano\",\"alias\":\"pvez\",\"introtext\":\"<p>El\\u00a0<b>peso<\\/b>\\u00a0fue la moneda utilizada en\\u00a0<a title=\\\"Venezuela\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Venezuela\\\">Venezuela<\\/a>\\u00a0desde\\u00a0<a title=\\\"1821\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1821\\\">1821<\\/a>\\u00a0hasta\\u00a0<a title=\\\"1871\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1871\\\">1871<\\/a>\\u00a0(aunque su uso se extendi\\u00f3 hasta\\u00a0<a title=\\\"1874\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1874\\\">1874<\\/a>). Un peso fuerte se divid\\u00eda en 10 reales, 5 pesetas o 100 centavos. En\\u00a0<a title=\\\"1874\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/1874\\\">1874<\\/a>\\u00a0fue sustituido por el\\u00a0<a title=\\\"Venezolano (moneda)\\\" href=\\\"https:\\/\\/es.wikipedia.org\\/wiki\\/Venezolano_(moneda)\\\">venezolano<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"14\",\"created\":\"2018-09-27 04:21:44\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:21:44\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:21:44\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(39, 27, 1, '', '2018-09-27 04:24:57', 100, 1750, '107b32102d13e33d84eb3d59c1d99033c43a43f1', '{\"id\":\"27\",\"asset_id\":95,\"title\":\"Ejemplo\",\"alias\":\"eje\",\"introtext\":\"<p>Yes<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2018-09-27 04:24:57\",\"created_by\":\"100\",\"created_by_alias\":\"\",\"modified\":\"2018-09-27 04:24:57\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2018-09-27 04:24:57\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_updates`
--

CREATE TABLE `taw_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Volcado de datos para la tabla `taw_updates`
--

INSERT INTO `taw_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(2, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(3, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(4, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(5, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(6, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(7, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(8, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(9, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(10, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(11, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(12, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(13, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(25, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(26, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(27, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(28, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(29, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(30, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(31, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(32, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(33, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(34, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(35, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.8.11.2', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(36, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(37, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(38, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(39, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(40, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.8.12.2', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(41, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(42, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(43, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(44, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(45, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.8.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(46, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(47, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(48, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(49, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.5.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(50, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(51, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(52, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(53, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(54, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.8.12.2', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(55, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(56, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(57, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(58, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(59, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.8.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(60, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(61, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(62, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(63, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(64, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.8.5.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(65, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(66, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(67, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(68, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.7.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(69, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(70, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(71, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(72, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(73, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(74, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(75, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(76, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.8.12.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_update_sites`
--

CREATE TABLE `taw_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Volcado de datos para la tabla `taw_update_sites`
--

INSERT INTO `taw_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1538017096, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1538017100, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1538017101, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_update_sites_extensions`
--

CREATE TABLE `taw_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Volcado de datos para la tabla `taw_update_sites_extensions`
--

INSERT INTO `taw_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_usergroups`
--

CREATE TABLE `taw_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_usergroups`
--

INSERT INTO `taw_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_users`
--

CREATE TABLE `taw_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_users`
--

INSERT INTO `taw_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(100, 'Super User', 'root', '1530405@upv.edu.mx', '$2y$10$7hMEWZ0pSAHzD92/49lZlOfd/54FQqvZNPvChx3KQwPza4irCWXmy', 0, 1, '2018-09-27 02:57:54', '2018-09-27 02:58:10', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_user_keys`
--

CREATE TABLE `taw_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_user_notes`
--

CREATE TABLE `taw_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_user_profiles`
--

CREATE TABLE `taw_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_user_usergroup_map`
--

CREATE TABLE `taw_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_user_usergroup_map`
--

INSERT INTO `taw_user_usergroup_map` (`user_id`, `group_id`) VALUES
(100, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_utf8_conversion`
--

CREATE TABLE `taw_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_utf8_conversion`
--

INSERT INTO `taw_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taw_viewlevels`
--

CREATE TABLE `taw_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `taw_viewlevels`
--

INSERT INTO `taw_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bak_taw_assets`
--
ALTER TABLE `bak_taw_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indices de la tabla `bak_taw_associations`
--
ALTER TABLE `bak_taw_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indices de la tabla `bak_taw_banners`
--
ALTER TABLE `bak_taw_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bak_taw_banner_clients`
--
ALTER TABLE `bak_taw_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indices de la tabla `bak_taw_banner_tracks`
--
ALTER TABLE `bak_taw_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indices de la tabla `bak_taw_categories`
--
ALTER TABLE `bak_taw_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bak_taw_contact_details`
--
ALTER TABLE `bak_taw_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `bak_taw_content`
--
ALTER TABLE `bak_taw_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indices de la tabla `bak_taw_contentitem_tag_map`
--
ALTER TABLE `bak_taw_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indices de la tabla `bak_taw_content_frontpage`
--
ALTER TABLE `bak_taw_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `bak_taw_content_rating`
--
ALTER TABLE `bak_taw_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `bak_taw_content_types`
--
ALTER TABLE `bak_taw_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indices de la tabla `bak_taw_extensions`
--
ALTER TABLE `bak_taw_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indices de la tabla `bak_taw_fields`
--
ALTER TABLE `bak_taw_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bak_taw_fields_categories`
--
ALTER TABLE `bak_taw_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indices de la tabla `bak_taw_fields_groups`
--
ALTER TABLE `bak_taw_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bak_taw_fields_values`
--
ALTER TABLE `bak_taw_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indices de la tabla `bak_taw_finder_filters`
--
ALTER TABLE `bak_taw_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indices de la tabla `bak_taw_finder_links`
--
ALTER TABLE `bak_taw_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indices de la tabla `bak_taw_finder_links_terms0`
--
ALTER TABLE `bak_taw_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_terms1`
--
ALTER TABLE `bak_taw_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_terms2`
--
ALTER TABLE `bak_taw_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_terms3`
--
ALTER TABLE `bak_taw_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_terms4`
--
ALTER TABLE `bak_taw_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_terms5`
--
ALTER TABLE `bak_taw_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_terms6`
--
ALTER TABLE `bak_taw_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_terms7`
--
ALTER TABLE `bak_taw_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_terms8`
--
ALTER TABLE `bak_taw_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_terms9`
--
ALTER TABLE `bak_taw_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_termsa`
--
ALTER TABLE `bak_taw_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_termsb`
--
ALTER TABLE `bak_taw_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_termsc`
--
ALTER TABLE `bak_taw_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_termsd`
--
ALTER TABLE `bak_taw_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_termse`
--
ALTER TABLE `bak_taw_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_links_termsf`
--
ALTER TABLE `bak_taw_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `bak_taw_finder_taxonomy`
--
ALTER TABLE `bak_taw_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indices de la tabla `bak_taw_finder_taxonomy_map`
--
ALTER TABLE `bak_taw_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indices de la tabla `bak_taw_finder_terms`
--
ALTER TABLE `bak_taw_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indices de la tabla `bak_taw_finder_terms_common`
--
ALTER TABLE `bak_taw_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indices de la tabla `bak_taw_finder_tokens`
--
ALTER TABLE `bak_taw_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indices de la tabla `bak_taw_finder_tokens_aggregate`
--
ALTER TABLE `bak_taw_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indices de la tabla `bak_taw_finder_types`
--
ALTER TABLE `bak_taw_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `bak_taw_languages`
--
ALTER TABLE `bak_taw_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indices de la tabla `bak_taw_menu`
--
ALTER TABLE `bak_taw_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bak_taw_menu_types`
--
ALTER TABLE `bak_taw_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indices de la tabla `bak_taw_messages`
--
ALTER TABLE `bak_taw_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indices de la tabla `bak_taw_messages_cfg`
--
ALTER TABLE `bak_taw_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indices de la tabla `bak_taw_modules`
--
ALTER TABLE `bak_taw_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bak_taw_modules_menu`
--
ALTER TABLE `bak_taw_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indices de la tabla `bak_taw_newsfeeds`
--
ALTER TABLE `bak_taw_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `bak_taw_overrider`
--
ALTER TABLE `bak_taw_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `bak_taw_postinstall_messages`
--
ALTER TABLE `bak_taw_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indices de la tabla `bak_taw_redirect_links`
--
ALTER TABLE `bak_taw_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indices de la tabla `bak_taw_schemas`
--
ALTER TABLE `bak_taw_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indices de la tabla `bak_taw_session`
--
ALTER TABLE `bak_taw_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indices de la tabla `bak_taw_tags`
--
ALTER TABLE `bak_taw_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `bak_taw_template_styles`
--
ALTER TABLE `bak_taw_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indices de la tabla `bak_taw_ucm_base`
--
ALTER TABLE `bak_taw_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indices de la tabla `bak_taw_ucm_content`
--
ALTER TABLE `bak_taw_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indices de la tabla `bak_taw_ucm_history`
--
ALTER TABLE `bak_taw_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indices de la tabla `bak_taw_updates`
--
ALTER TABLE `bak_taw_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indices de la tabla `bak_taw_update_sites`
--
ALTER TABLE `bak_taw_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indices de la tabla `bak_taw_update_sites_extensions`
--
ALTER TABLE `bak_taw_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indices de la tabla `bak_taw_usergroups`
--
ALTER TABLE `bak_taw_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indices de la tabla `bak_taw_users`
--
ALTER TABLE `bak_taw_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `bak_taw_user_keys`
--
ALTER TABLE `bak_taw_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `bak_taw_user_notes`
--
ALTER TABLE `bak_taw_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indices de la tabla `bak_taw_user_profiles`
--
ALTER TABLE `bak_taw_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indices de la tabla `bak_taw_user_usergroup_map`
--
ALTER TABLE `bak_taw_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indices de la tabla `taw_assets`
--
ALTER TABLE `taw_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indices de la tabla `taw_associations`
--
ALTER TABLE `taw_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indices de la tabla `taw_banners`
--
ALTER TABLE `taw_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `taw_banner_clients`
--
ALTER TABLE `taw_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indices de la tabla `taw_banner_tracks`
--
ALTER TABLE `taw_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indices de la tabla `taw_categories`
--
ALTER TABLE `taw_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `taw_contact_details`
--
ALTER TABLE `taw_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `taw_content`
--
ALTER TABLE `taw_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indices de la tabla `taw_contentitem_tag_map`
--
ALTER TABLE `taw_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indices de la tabla `taw_content_frontpage`
--
ALTER TABLE `taw_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `taw_content_rating`
--
ALTER TABLE `taw_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indices de la tabla `taw_content_types`
--
ALTER TABLE `taw_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indices de la tabla `taw_extensions`
--
ALTER TABLE `taw_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indices de la tabla `taw_fields`
--
ALTER TABLE `taw_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `taw_fields_categories`
--
ALTER TABLE `taw_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indices de la tabla `taw_fields_groups`
--
ALTER TABLE `taw_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `taw_fields_values`
--
ALTER TABLE `taw_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indices de la tabla `taw_finder_filters`
--
ALTER TABLE `taw_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indices de la tabla `taw_finder_links`
--
ALTER TABLE `taw_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indices de la tabla `taw_finder_links_terms0`
--
ALTER TABLE `taw_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_terms1`
--
ALTER TABLE `taw_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_terms2`
--
ALTER TABLE `taw_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_terms3`
--
ALTER TABLE `taw_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_terms4`
--
ALTER TABLE `taw_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_terms5`
--
ALTER TABLE `taw_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_terms6`
--
ALTER TABLE `taw_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_terms7`
--
ALTER TABLE `taw_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_terms8`
--
ALTER TABLE `taw_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_terms9`
--
ALTER TABLE `taw_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_termsa`
--
ALTER TABLE `taw_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_termsb`
--
ALTER TABLE `taw_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_termsc`
--
ALTER TABLE `taw_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_termsd`
--
ALTER TABLE `taw_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_termse`
--
ALTER TABLE `taw_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_links_termsf`
--
ALTER TABLE `taw_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indices de la tabla `taw_finder_taxonomy`
--
ALTER TABLE `taw_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indices de la tabla `taw_finder_taxonomy_map`
--
ALTER TABLE `taw_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indices de la tabla `taw_finder_terms`
--
ALTER TABLE `taw_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indices de la tabla `taw_finder_terms_common`
--
ALTER TABLE `taw_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indices de la tabla `taw_finder_tokens`
--
ALTER TABLE `taw_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indices de la tabla `taw_finder_tokens_aggregate`
--
ALTER TABLE `taw_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indices de la tabla `taw_finder_types`
--
ALTER TABLE `taw_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indices de la tabla `taw_languages`
--
ALTER TABLE `taw_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indices de la tabla `taw_menu`
--
ALTER TABLE `taw_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `taw_menu_types`
--
ALTER TABLE `taw_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indices de la tabla `taw_messages`
--
ALTER TABLE `taw_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indices de la tabla `taw_messages_cfg`
--
ALTER TABLE `taw_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indices de la tabla `taw_modules`
--
ALTER TABLE `taw_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `taw_modules_menu`
--
ALTER TABLE `taw_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indices de la tabla `taw_newsfeeds`
--
ALTER TABLE `taw_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indices de la tabla `taw_overrider`
--
ALTER TABLE `taw_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `taw_postinstall_messages`
--
ALTER TABLE `taw_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indices de la tabla `taw_redirect_links`
--
ALTER TABLE `taw_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indices de la tabla `taw_schemas`
--
ALTER TABLE `taw_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indices de la tabla `taw_session`
--
ALTER TABLE `taw_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indices de la tabla `taw_tags`
--
ALTER TABLE `taw_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indices de la tabla `taw_template_styles`
--
ALTER TABLE `taw_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indices de la tabla `taw_ucm_base`
--
ALTER TABLE `taw_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indices de la tabla `taw_ucm_content`
--
ALTER TABLE `taw_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indices de la tabla `taw_ucm_history`
--
ALTER TABLE `taw_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indices de la tabla `taw_updates`
--
ALTER TABLE `taw_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indices de la tabla `taw_update_sites`
--
ALTER TABLE `taw_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indices de la tabla `taw_update_sites_extensions`
--
ALTER TABLE `taw_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indices de la tabla `taw_usergroups`
--
ALTER TABLE `taw_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indices de la tabla `taw_users`
--
ALTER TABLE `taw_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `taw_user_keys`
--
ALTER TABLE `taw_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `taw_user_notes`
--
ALTER TABLE `taw_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indices de la tabla `taw_user_profiles`
--
ALTER TABLE `taw_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indices de la tabla `taw_user_usergroup_map`
--
ALTER TABLE `taw_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indices de la tabla `taw_viewlevels`
--
ALTER TABLE `taw_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bak_taw_assets`
--
ALTER TABLE `bak_taw_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `bak_taw_banners`
--
ALTER TABLE `bak_taw_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_banner_clients`
--
ALTER TABLE `bak_taw_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_categories`
--
ALTER TABLE `bak_taw_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `bak_taw_contact_details`
--
ALTER TABLE `bak_taw_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_content`
--
ALTER TABLE `bak_taw_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_content_types`
--
ALTER TABLE `bak_taw_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT de la tabla `bak_taw_extensions`
--
ALTER TABLE `bak_taw_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT de la tabla `bak_taw_fields`
--
ALTER TABLE `bak_taw_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_fields_groups`
--
ALTER TABLE `bak_taw_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_finder_filters`
--
ALTER TABLE `bak_taw_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_finder_links`
--
ALTER TABLE `bak_taw_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_finder_taxonomy`
--
ALTER TABLE `bak_taw_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `bak_taw_finder_terms`
--
ALTER TABLE `bak_taw_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_finder_types`
--
ALTER TABLE `bak_taw_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_languages`
--
ALTER TABLE `bak_taw_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `bak_taw_menu`
--
ALTER TABLE `bak_taw_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `bak_taw_menu_types`
--
ALTER TABLE `bak_taw_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `bak_taw_messages`
--
ALTER TABLE `bak_taw_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_modules`
--
ALTER TABLE `bak_taw_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `bak_taw_newsfeeds`
--
ALTER TABLE `bak_taw_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_overrider`
--
ALTER TABLE `bak_taw_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT de la tabla `bak_taw_postinstall_messages`
--
ALTER TABLE `bak_taw_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `bak_taw_redirect_links`
--
ALTER TABLE `bak_taw_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_tags`
--
ALTER TABLE `bak_taw_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `bak_taw_template_styles`
--
ALTER TABLE `bak_taw_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `bak_taw_ucm_content`
--
ALTER TABLE `bak_taw_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_ucm_history`
--
ALTER TABLE `bak_taw_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_updates`
--
ALTER TABLE `bak_taw_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_update_sites`
--
ALTER TABLE `bak_taw_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `bak_taw_usergroups`
--
ALTER TABLE `bak_taw_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `bak_taw_users`
--
ALTER TABLE `bak_taw_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_user_keys`
--
ALTER TABLE `bak_taw_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bak_taw_user_notes`
--
ALTER TABLE `bak_taw_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_assets`
--
ALTER TABLE `taw_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de la tabla `taw_banners`
--
ALTER TABLE `taw_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_banner_clients`
--
ALTER TABLE `taw_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_categories`
--
ALTER TABLE `taw_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `taw_contact_details`
--
ALTER TABLE `taw_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_content`
--
ALTER TABLE `taw_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `taw_content_types`
--
ALTER TABLE `taw_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT de la tabla `taw_extensions`
--
ALTER TABLE `taw_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;

--
-- AUTO_INCREMENT de la tabla `taw_fields`
--
ALTER TABLE `taw_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_fields_groups`
--
ALTER TABLE `taw_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_finder_filters`
--
ALTER TABLE `taw_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_finder_links`
--
ALTER TABLE `taw_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_finder_taxonomy`
--
ALTER TABLE `taw_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `taw_finder_terms`
--
ALTER TABLE `taw_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_finder_types`
--
ALTER TABLE `taw_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_languages`
--
ALTER TABLE `taw_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `taw_menu`
--
ALTER TABLE `taw_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de la tabla `taw_menu_types`
--
ALTER TABLE `taw_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `taw_messages`
--
ALTER TABLE `taw_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_modules`
--
ALTER TABLE `taw_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `taw_newsfeeds`
--
ALTER TABLE `taw_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_overrider`
--
ALTER TABLE `taw_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT de la tabla `taw_postinstall_messages`
--
ALTER TABLE `taw_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `taw_redirect_links`
--
ALTER TABLE `taw_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_tags`
--
ALTER TABLE `taw_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `taw_template_styles`
--
ALTER TABLE `taw_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `taw_ucm_content`
--
ALTER TABLE `taw_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `taw_ucm_history`
--
ALTER TABLE `taw_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `taw_updates`
--
ALTER TABLE `taw_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `taw_update_sites`
--
ALTER TABLE `taw_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `taw_usergroups`
--
ALTER TABLE `taw_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `taw_users`
--
ALTER TABLE `taw_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `taw_user_keys`
--
ALTER TABLE `taw_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_user_notes`
--
ALTER TABLE `taw_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `taw_viewlevels`
--
ALTER TABLE `taw_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
