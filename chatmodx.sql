-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 28 2018 г., 21:39
-- Версия сервера: 5.7.19-log
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chatmodx`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_actiondom`
--

CREATE TABLE `chatmodx_access_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_actions`
--

CREATE TABLE `chatmodx_access_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_category`
--

CREATE TABLE `chatmodx_access_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_context`
--

CREATE TABLE `chatmodx_access_context` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_access_context`
--

INSERT INTO `chatmodx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2),
(4, 'mgr', 'modUserGroup', 1, 9999, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_elements`
--

CREATE TABLE `chatmodx_access_elements` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_media_source`
--

CREATE TABLE `chatmodx_access_media_source` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_menus`
--

CREATE TABLE `chatmodx_access_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_namespace`
--

CREATE TABLE `chatmodx_access_namespace` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_permissions`
--

CREATE TABLE `chatmodx_access_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_access_permissions`
--

INSERT INTO `chatmodx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(22, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(23, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(24, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(25, 1, 'delete_template', 'perm.delete_template_desc', 1),
(26, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(27, 1, 'delete_role', 'perm.delete_role_desc', 1),
(28, 1, 'delete_user', 'perm.delete_user_desc', 1),
(29, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(30, 1, 'directory_create', 'perm.directory_create_desc', 1),
(31, 1, 'directory_list', 'perm.directory_list_desc', 1),
(32, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(33, 1, 'directory_update', 'perm.directory_update_desc', 1),
(34, 1, 'edit_category', 'perm.edit_category_desc', 1),
(35, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(36, 1, 'edit_context', 'perm.edit_context_desc', 1),
(37, 1, 'edit_document', 'perm.edit_document_desc', 1),
(38, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(39, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(40, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(41, 1, 'edit_role', 'perm.edit_role_desc', 1),
(42, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(43, 1, 'edit_template', 'perm.edit_template_desc', 1),
(44, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(45, 1, 'edit_user', 'perm.edit_user_desc', 1),
(46, 1, 'element_tree', 'perm.element_tree_desc', 1),
(47, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(48, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(49, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(50, 1, 'export_static', 'perm.export_static_desc', 1),
(51, 1, 'file_create', 'perm.file_create_desc', 1),
(52, 1, 'file_list', 'perm.file_list_desc', 1),
(53, 1, 'file_manager', 'perm.file_manager_desc', 1),
(54, 1, 'file_remove', 'perm.file_remove_desc', 1),
(55, 1, 'file_tree', 'perm.file_tree_desc', 1),
(56, 1, 'file_update', 'perm.file_update_desc', 1),
(57, 1, 'file_upload', 'perm.file_upload_desc', 1),
(58, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(59, 1, 'file_view', 'perm.file_view_desc', 1),
(60, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(61, 1, 'frames', 'perm.frames_desc', 1),
(62, 1, 'help', 'perm.help_desc', 1),
(63, 1, 'home', 'perm.home_desc', 1),
(64, 1, 'import_static', 'perm.import_static_desc', 1),
(65, 1, 'languages', 'perm.languages_desc', 1),
(66, 1, 'lexicons', 'perm.lexicons_desc', 1),
(67, 1, 'list', 'perm.list_desc', 1),
(68, 1, 'load', 'perm.load_desc', 1),
(69, 1, 'logout', 'perm.logout_desc', 1),
(70, 1, 'logs', 'perm.logs_desc', 1),
(71, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(72, 1, 'menu_security', 'perm.menu_security_desc', 1),
(73, 1, 'menu_site', 'perm.menu_site_desc', 1),
(74, 1, 'menu_support', 'perm.menu_support_desc', 1),
(75, 1, 'menu_system', 'perm.menu_system_desc', 1),
(76, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(77, 1, 'menu_user', 'perm.menu_user_desc', 1),
(78, 1, 'menus', 'perm.menus_desc', 1),
(79, 1, 'messages', 'perm.messages_desc', 1),
(80, 1, 'namespaces', 'perm.namespaces_desc', 1),
(81, 1, 'new_category', 'perm.new_category_desc', 1),
(82, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(83, 1, 'new_context', 'perm.new_context_desc', 1),
(84, 1, 'new_document', 'perm.new_document_desc', 1),
(85, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(86, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(87, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(88, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(89, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(90, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(91, 1, 'new_role', 'perm.new_role_desc', 1),
(92, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(93, 1, 'new_template', 'perm.new_template_desc', 1),
(94, 1, 'new_tv', 'perm.new_tv_desc', 1),
(95, 1, 'new_user', 'perm.new_user_desc', 1),
(96, 1, 'packages', 'perm.packages_desc', 1),
(97, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(98, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(99, 1, 'policy_new', 'perm.policy_new_desc', 1),
(100, 1, 'policy_save', 'perm.policy_save_desc', 1),
(101, 1, 'policy_view', 'perm.policy_view_desc', 1),
(102, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(103, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(104, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(105, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(106, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(107, 1, 'property_sets', 'perm.property_sets_desc', 1),
(108, 1, 'providers', 'perm.providers_desc', 1),
(109, 1, 'publish_document', 'perm.publish_document_desc', 1),
(110, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(111, 1, 'remove', 'perm.remove_desc', 1),
(112, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(113, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(114, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(115, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(116, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(117, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(118, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(119, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(120, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(121, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(122, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(123, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(124, 1, 'save', 'perm.save_desc', 1),
(125, 1, 'save_category', 'perm.save_category_desc', 1),
(126, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(127, 1, 'save_context', 'perm.save_context_desc', 1),
(128, 1, 'save_document', 'perm.save_document_desc', 1),
(129, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(130, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(131, 1, 'save_role', 'perm.save_role_desc', 1),
(132, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(133, 1, 'save_template', 'perm.save_template_desc', 1),
(134, 1, 'save_tv', 'perm.save_tv_desc', 1),
(135, 1, 'save_user', 'perm.save_user_desc', 1),
(136, 1, 'search', 'perm.search_desc', 1),
(137, 1, 'settings', 'perm.settings_desc', 1),
(138, 1, 'events', 'perm.events_desc', 1),
(139, 1, 'source_save', 'perm.source_save_desc', 1),
(140, 1, 'source_delete', 'perm.source_delete_desc', 1),
(141, 1, 'source_edit', 'perm.source_edit_desc', 1),
(142, 1, 'source_view', 'perm.source_view_desc', 1),
(143, 1, 'sources', 'perm.sources_desc', 1),
(144, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(145, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(146, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(147, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(148, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(149, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(150, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(151, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(152, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(153, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(154, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(155, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(156, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(157, 1, 'view', 'perm.view_desc', 1),
(158, 1, 'view_category', 'perm.view_category_desc', 1),
(159, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(160, 1, 'view_context', 'perm.view_context_desc', 1),
(161, 1, 'view_document', 'perm.view_document_desc', 1),
(162, 1, 'view_element', 'perm.view_element_desc', 1),
(163, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(164, 1, 'view_offline', 'perm.view_offline_desc', 1),
(165, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(166, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(167, 1, 'view_role', 'perm.view_role_desc', 1),
(168, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(169, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(170, 1, 'view_template', 'perm.view_template_desc', 1),
(171, 1, 'view_tv', 'perm.view_tv_desc', 1),
(172, 1, 'view_user', 'perm.view_user_desc', 1),
(173, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(174, 1, 'workspaces', 'perm.workspaces_desc', 1),
(175, 2, 'add_children', 'perm.add_children_desc', 1),
(176, 2, 'copy', 'perm.copy_desc', 1),
(177, 2, 'create', 'perm.create_desc', 1),
(178, 2, 'delete', 'perm.delete_desc', 1),
(179, 2, 'list', 'perm.list_desc', 1),
(180, 2, 'load', 'perm.load_desc', 1),
(181, 2, 'move', 'perm.move_desc', 1),
(182, 2, 'publish', 'perm.publish_desc', 1),
(183, 2, 'remove', 'perm.remove_desc', 1),
(184, 2, 'save', 'perm.save_desc', 1),
(185, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(186, 2, 'undelete', 'perm.undelete_desc', 1),
(187, 2, 'unpublish', 'perm.unpublish_desc', 1),
(188, 2, 'view', 'perm.view_desc', 1),
(189, 3, 'load', 'perm.load_desc', 1),
(190, 3, 'list', 'perm.list_desc', 1),
(191, 3, 'view', 'perm.view_desc', 1),
(192, 3, 'save', 'perm.save_desc', 1),
(193, 3, 'remove', 'perm.remove_desc', 1),
(194, 4, 'add_children', 'perm.add_children_desc', 1),
(195, 4, 'create', 'perm.create_desc', 1),
(196, 4, 'copy', 'perm.copy_desc', 1),
(197, 4, 'delete', 'perm.delete_desc', 1),
(198, 4, 'list', 'perm.list_desc', 1),
(199, 4, 'load', 'perm.load_desc', 1),
(200, 4, 'remove', 'perm.remove_desc', 1),
(201, 4, 'save', 'perm.save_desc', 1),
(202, 4, 'view', 'perm.view_desc', 1),
(203, 5, 'create', 'perm.create_desc', 1),
(204, 5, 'copy', 'perm.copy_desc', 1),
(205, 5, 'list', 'perm.list_desc', 1),
(206, 5, 'load', 'perm.load_desc', 1),
(207, 5, 'remove', 'perm.remove_desc', 1),
(208, 5, 'save', 'perm.save_desc', 1),
(209, 5, 'view', 'perm.view_desc', 1),
(210, 6, 'load', 'perm.load_desc', 1),
(211, 6, 'list', 'perm.list_desc', 1),
(212, 6, 'view', 'perm.view_desc', 1),
(213, 6, 'save', 'perm.save_desc', 1),
(214, 6, 'remove', 'perm.remove_desc', 1),
(215, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(216, 6, 'copy', 'perm.copy_desc', 1),
(217, 7, 'list', 'perm.list_desc', 1),
(218, 7, 'load', 'perm.load_desc', 1),
(219, 7, 'view', 'perm.view_desc', 1),
(220, 8, 'mscategory_save', 'mscategory_save', 1),
(221, 8, 'msproduct_save', 'msproduct_save', 1),
(222, 8, 'msproduct_publish', 'msproduct_publish', 1),
(223, 8, 'msproduct_delete', 'msproduct_delete', 1),
(224, 8, 'msorder_save', 'msorder_save', 1),
(225, 8, 'msorder_view', 'msorder_view', 1),
(226, 8, 'msorder_list', 'msorder_list', 1),
(227, 8, 'mssetting_save', 'mssetting_save', 1),
(228, 8, 'mssetting_view', 'mssetting_view', 1),
(229, 8, 'mssetting_list', 'mssetting_list', 1),
(230, 8, 'msproductfile_save', 'msproductfile_save', 1),
(231, 8, 'msproductfile_generate', 'msproductfile_generate', 1),
(232, 8, 'msproductfile_list', 'msproductfile_list', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_policies`
--

CREATE TABLE `chatmodx_access_policies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `template` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_access_policies`
--

INSERT INTO `chatmodx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"delete_document\":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions'),
(13, 'miniShopManagerPolicy', 'A policy for create and update miniShop categories and products.', 0, 8, '', '{\"mscategory_save\":true,\"msproduct_save\":true,\"msproduct_publish\":true,\"msproduct_delete\":true,\"msorder_save\":true,\"msorder_view\":true,\"msorder_list\":true,\"mssetting_save\":true,\"mssetting_view\":true,\"mssetting_list\":true,\"msproductfile_save\":true,\"msproductfile_generate\":true,\"msproductfile_list\":true}', 'minishop2:permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_policy_templates`
--

CREATE TABLE `chatmodx_access_policy_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `template_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_access_policy_templates`
--

INSERT INTO `chatmodx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions'),
(8, 1, 'miniShopManagerPolicyTemplate', 'A policy for miniShop2 managers.', 'minishop2:permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_policy_template_groups`
--

CREATE TABLE `chatmodx_access_policy_template_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_access_policy_template_groups`
--

INSERT INTO `chatmodx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_resources`
--

CREATE TABLE `chatmodx_access_resources` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_resource_groups`
--

CREATE TABLE `chatmodx_access_resource_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_access_templatevars`
--

CREATE TABLE `chatmodx_access_templatevars` (
  `id` int(10) UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_actiondom`
--

CREATE TABLE `chatmodx_actiondom` (
  `id` int(10) UNSIGNED NOT NULL,
  `set` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_actions`
--

CREATE TABLE `chatmodx_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_actions_fields`
--

CREATE TABLE `chatmodx_actions_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_actions_fields`
--

INSERT INTO `chatmodx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(33, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(34, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(35, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(36, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(37, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(38, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(39, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(40, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(41, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(42, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(43, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(44, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(45, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(46, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(48, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(49, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(51, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(52, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(53, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(56, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(57, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(58, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(59, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(60, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(61, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(62, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(63, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(64, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(65, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(66, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(67, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(68, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(69, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(70, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(71, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(72, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(73, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(74, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(75, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(76, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_active_users`
--

CREATE TABLE `chatmodx_active_users` (
  `internalKey` int(9) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int(20) NOT NULL DEFAULT '0',
  `id` int(10) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_categories`
--

CREATE TABLE `chatmodx_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(10) UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_categories`
--

INSERT INTO `chatmodx_categories` (`id`, `parent`, `category`, `rank`) VALUES
(1, 0, 'miniShop2', 0),
(2, 0, 'pdoTools', 0),
(3, 0, 'controlErrorLog', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_categories_closure`
--

CREATE TABLE `chatmodx_categories_closure` (
  `ancestor` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `depth` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_categories_closure`
--

INSERT INTO `chatmodx_categories_closure` (`ancestor`, `descendant`, `depth`) VALUES
(0, 1, 0),
(0, 2, 0),
(0, 3, 0),
(1, 1, 0),
(2, 2, 0),
(3, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_class_map`
--

CREATE TABLE `chatmodx_class_map` (
  `id` int(10) UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_class_map`
--

INSERT INTO `chatmodx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_content_type`
--

CREATE TABLE `chatmodx_content_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_content_type`
--

INSERT INTO `chatmodx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_context`
--

CREATE TABLE `chatmodx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_context`
--

INSERT INTO `chatmodx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_context_resource`
--

CREATE TABLE `chatmodx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_context_setting`
--

CREATE TABLE `chatmodx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_context_setting`
--

INSERT INTO `chatmodx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_dashboard`
--

CREATE TABLE `chatmodx_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_dashboard`
--

INSERT INTO `chatmodx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_dashboard_widget`
--

CREATE TABLE `chatmodx_dashboard_widget` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_dashboard_widget`
--

INSERT INTO `chatmodx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_dashboard_widget_placement`
--

CREATE TABLE `chatmodx_dashboard_widget_placement` (
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `widget` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_dashboard_widget_placement`
--

INSERT INTO `chatmodx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_documentgroup_names`
--

CREATE TABLE `chatmodx_documentgroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_document_groups`
--

CREATE TABLE `chatmodx_document_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_group` int(10) NOT NULL DEFAULT '0',
  `document` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_element_property_sets`
--

CREATE TABLE `chatmodx_element_property_sets` (
  `element` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_extension_packages`
--

CREATE TABLE `chatmodx_extension_packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_fc_profiles`
--

CREATE TABLE `chatmodx_fc_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_fc_profiles_usergroups`
--

CREATE TABLE `chatmodx_fc_profiles_usergroups` (
  `usergroup` int(11) NOT NULL DEFAULT '0',
  `profile` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_fc_sets`
--

CREATE TABLE `chatmodx_fc_sets` (
  `id` int(10) UNSIGNED NOT NULL,
  `profile` int(11) NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int(11) NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_lexicon_entries`
--

CREATE TABLE `chatmodx_lexicon_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_manager_log`
--

CREATE TABLE `chatmodx_manager_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_manager_log`
--

INSERT INTO `chatmodx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2018-03-25 23:00:11', 'login', 'modContext', 'mgr'),
(2, 1, '2018-03-27 21:52:04', 'template_update', 'modTemplate', '1'),
(3, 1, '2018-03-27 21:52:04', 'propertyset_update_from_element', 'modTemplate', '1'),
(4, 1, '2018-03-27 21:55:36', 'template_update', 'modTemplate', '1'),
(5, 1, '2018-03-27 21:55:36', 'propertyset_update_from_element', 'modTemplate', '1'),
(6, 1, '2018-03-27 22:02:46', 'template_update', 'modTemplate', '1'),
(7, 1, '2018-03-27 22:02:46', 'propertyset_update_from_element', 'modTemplate', '1'),
(8, 1, '2018-03-27 22:03:03', 'template_update', 'modTemplate', '1'),
(9, 1, '2018-03-27 22:03:03', 'propertyset_update_from_element', 'modTemplate', '1'),
(10, 1, '2018-03-27 22:03:06', 'clear_cache', '', 'mgr');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_media_sources`
--

CREATE TABLE `chatmodx_media_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_media_sources`
--

INSERT INTO `chatmodx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1),
(2, 'MS2 Images', 'Default media source for images of miniShop2 products', 'sources.modFileMediaSource', 'a:10:{s:8:\"basePath\";a:5:{s:4:\"name\";s:8:\"basePath\";s:4:\"desc\";s:23:\"prop_file.basePath_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:23:\"assets/images/products/\";}s:7:\"baseUrl\";a:5:{s:4:\"name\";s:7:\"baseUrl\";s:4:\"desc\";s:22:\"prop_file.baseUrl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:23:\"assets/images/products/\";}s:15:\"imageExtensions\";a:5:{s:4:\"name\";s:15:\"imageExtensions\";s:4:\"desc\";s:30:\"prop_file.imageExtensions_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:16:\"jpg,jpeg,png,gif\";}s:16:\"allowedFileTypes\";a:5:{s:4:\"name\";s:16:\"allowedFileTypes\";s:4:\"desc\";s:31:\"prop_file.allowedFileTypes_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:16:\"jpg,jpeg,png,gif\";}s:13:\"thumbnailType\";a:6:{s:4:\"name\";s:13:\"thumbnailType\";s:4:\"desc\";s:28:\"prop_file.thumbnailType_desc\";s:4:\"type\";s:4:\"list\";s:7:\"lexicon\";s:11:\"core:source\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"Png\";s:5:\"value\";s:3:\"png\";}i:1;a:2:{s:4:\"text\";s:3:\"Jpg\";s:5:\"value\";s:3:\"jpg\";}}s:5:\"value\";s:3:\"jpg\";}s:10:\"thumbnails\";a:5:{s:4:\"name\";s:10:\"thumbnails\";s:4:\"desc\";s:26:\"ms2_source_thumbnails_desc\";s:4:\"type\";s:8:\"textarea\";s:7:\"lexicon\";s:17:\"minishop2:setting\";s:5:\"value\";s:56:\"{\"small\":{\"w\":120,\"h\":90,\"q\":90,\"zc\":\"1\",\"bg\":\"000000\"}}\";}s:14:\"maxUploadWidth\";a:5:{s:4:\"name\";s:14:\"maxUploadWidth\";s:4:\"desc\";s:30:\"ms2_source_maxUploadWidth_desc\";s:4:\"type\";s:11:\"numberfield\";s:7:\"lexicon\";s:17:\"minishop2:setting\";s:5:\"value\";i:1920;}s:15:\"maxUploadHeight\";a:5:{s:4:\"name\";s:15:\"maxUploadHeight\";s:4:\"desc\";s:31:\"ms2_source_maxUploadHeight_desc\";s:4:\"type\";s:11:\"numberfield\";s:7:\"lexicon\";s:17:\"minishop2:setting\";s:5:\"value\";i:1080;}s:13:\"maxUploadSize\";a:5:{s:4:\"name\";s:13:\"maxUploadSize\";s:4:\"desc\";s:29:\"ms2_source_maxUploadSize_desc\";s:4:\"type\";s:11:\"numberfield\";s:7:\"lexicon\";s:17:\"minishop2:setting\";s:5:\"value\";i:10485760;}s:13:\"imageNameType\";a:6:{s:4:\"name\";s:13:\"imageNameType\";s:4:\"desc\";s:29:\"ms2_source_imageNameType_desc\";s:4:\"type\";s:4:\"list\";s:7:\"lexicon\";s:17:\"minishop2:setting\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:4:\"Hash\";s:5:\"value\";s:4:\"hash\";}i:1;a:2:{s:4:\"text\";s:8:\"Friendly\";s:5:\"value\";s:8:\"friendly\";}}s:5:\"value\";s:8:\"friendly\";}}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_media_sources_contexts`
--

CREATE TABLE `chatmodx_media_sources_contexts` (
  `source` int(11) NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_media_sources_elements`
--

CREATE TABLE `chatmodx_media_sources_elements` (
  `source` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_membergroup_names`
--

CREATE TABLE `chatmodx_membergroup_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_membergroup_names`
--

INSERT INTO `chatmodx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_member_groups`
--

CREATE TABLE `chatmodx_member_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `member` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `rank` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_member_groups`
--

INSERT INTO `chatmodx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_menus`
--

CREATE TABLE `chatmodx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_menus`
--

INSERT INTO `chatmodx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('minishop2', 'components', 'mgr/orders', 'ms2_menu_desc', '<i class=\"icon-shopping-cart icon icon-large\"></i>', 0, '', '', '', 'minishop2'),
('ms2_orders', 'minishop2', 'mgr/orders', 'ms2_orders_desc', '', 0, '', '', '', 'minishop2'),
('ms2_settings', 'minishop2', 'mgr/settings', 'ms2_settings_desc', '', 1, '', '', '', 'minishop2'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_category_options`
--

CREATE TABLE `chatmodx_ms2_category_options` (
  `option_id` int(10) NOT NULL DEFAULT '0',
  `category_id` int(10) NOT NULL DEFAULT '0',
  `rank` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_customer_profiles`
--

CREATE TABLE `chatmodx_ms2_customer_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `account` decimal(12,2) DEFAULT '0.00',
  `spent` decimal(12,2) DEFAULT '0.00',
  `createdon` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `referrer_id` int(10) UNSIGNED DEFAULT '0',
  `referrer_code` varchar(50) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_deliveries`
--

CREATE TABLE `chatmodx_ms2_deliveries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` varchar(11) DEFAULT '0',
  `weight_price` decimal(12,2) DEFAULT '0.00',
  `distance_price` decimal(12,2) DEFAULT '0.00',
  `logo` varchar(255) DEFAULT NULL,
  `rank` tinyint(1) UNSIGNED DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `class` varchar(50) DEFAULT NULL,
  `properties` text,
  `requires` varchar(255) DEFAULT 'email,receiver'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_ms2_deliveries`
--

INSERT INTO `chatmodx_ms2_deliveries` (`id`, `name`, `description`, `price`, `weight_price`, `distance_price`, `logo`, `rank`, `active`, `class`, `properties`, `requires`) VALUES
(1, 'Самовывоз', NULL, '0', '0.00', '0.00', NULL, 0, 1, NULL, NULL, 'email,receiver');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_delivery_payments`
--

CREATE TABLE `chatmodx_ms2_delivery_payments` (
  `delivery_id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_ms2_delivery_payments`
--

INSERT INTO `chatmodx_ms2_delivery_payments` (`delivery_id`, `payment_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_links`
--

CREATE TABLE `chatmodx_ms2_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_options`
--

CREATE TABLE `chatmodx_ms2_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `measure_unit` tinytext,
  `category` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_orders`
--

CREATE TABLE `chatmodx_ms2_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `num` varchar(20) DEFAULT '',
  `cost` decimal(12,2) DEFAULT '0.00',
  `cart_cost` decimal(12,2) DEFAULT '0.00',
  `delivery_cost` decimal(12,2) DEFAULT '0.00',
  `weight` decimal(13,3) DEFAULT '0.000',
  `status` int(10) UNSIGNED DEFAULT '0',
  `delivery` int(10) UNSIGNED DEFAULT '0',
  `payment` int(10) UNSIGNED DEFAULT '0',
  `address` int(10) UNSIGNED DEFAULT '0',
  `context` varchar(100) DEFAULT 'web',
  `comment` text,
  `properties` text,
  `type` tinyint(3) UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_order_addresses`
--

CREATE TABLE `chatmodx_ms2_order_addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `index` varchar(50) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `metro` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `building` varchar(10) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `comment` text,
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_order_logs`
--

CREATE TABLE `chatmodx_ms2_order_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `order_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `entry` varchar(255) NOT NULL DEFAULT '0',
  `ip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_order_products`
--

CREATE TABLE `chatmodx_ms2_order_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `count` int(10) UNSIGNED DEFAULT '1',
  `price` decimal(12,2) DEFAULT '0.00',
  `weight` decimal(13,3) DEFAULT '0.000',
  `cost` decimal(12,2) DEFAULT '0.00',
  `options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_order_statuses`
--

CREATE TABLE `chatmodx_ms2_order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `color` char(6) DEFAULT '000000',
  `email_user` tinyint(1) DEFAULT '0',
  `email_manager` tinyint(1) DEFAULT '0',
  `subject_user` varchar(255) DEFAULT '',
  `subject_manager` varchar(255) DEFAULT '',
  `body_user` int(10) DEFAULT '0',
  `body_manager` int(10) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `final` tinyint(1) DEFAULT '0',
  `fixed` tinyint(1) DEFAULT '0',
  `rank` tinyint(1) UNSIGNED DEFAULT '0',
  `editable` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_ms2_order_statuses`
--

INSERT INTO `chatmodx_ms2_order_statuses` (`id`, `name`, `description`, `color`, `email_user`, `email_manager`, `subject_user`, `subject_manager`, `body_user`, `body_manager`, `active`, `final`, `fixed`, `rank`, `editable`) VALUES
(1, 'Новый', NULL, '000000', 1, 1, '[[%ms2_email_subject_new_user]]', '[[%ms2_email_subject_new_manager]]', 11, 12, 1, 0, 1, 0, 0),
(2, 'Оплачен', NULL, '008000', 1, 1, '[[%ms2_email_subject_paid_user]]', '[[%ms2_email_subject_paid_manager]]', 13, 14, 1, 0, 1, 1, 0),
(3, 'Отправлен', NULL, '003366', 1, 0, '[[%ms2_email_subject_sent_user]]', '', 15, 0, 1, 1, 1, 2, 0),
(4, 'Отменён', NULL, '800000', 1, 0, '[[%ms2_email_subject_cancelled_user]]', '', 16, 0, 1, 1, 1, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_payments`
--

CREATE TABLE `chatmodx_ms2_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` varchar(11) DEFAULT '0',
  `logo` varchar(255) DEFAULT NULL,
  `rank` tinyint(1) UNSIGNED DEFAULT '0',
  `active` tinyint(1) UNSIGNED DEFAULT '1',
  `class` varchar(50) DEFAULT NULL,
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_ms2_payments`
--

INSERT INTO `chatmodx_ms2_payments` (`id`, `name`, `description`, `price`, `logo`, `rank`, `active`, `class`, `properties`) VALUES
(1, 'Оплата наличными', NULL, '0', NULL, 0, 1, NULL, NULL),
(2, 'PayPal', NULL, '0', NULL, 1, 0, 'PayPal', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_products`
--

CREATE TABLE `chatmodx_ms2_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `article` varchar(50) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT '0.00',
  `old_price` decimal(12,2) DEFAULT '0.00',
  `weight` decimal(13,3) DEFAULT '0.000',
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `vendor` int(10) UNSIGNED DEFAULT '0',
  `made_in` varchar(100) DEFAULT '',
  `new` tinyint(1) UNSIGNED DEFAULT '0',
  `popular` tinyint(1) UNSIGNED DEFAULT '0',
  `favorite` tinyint(1) UNSIGNED DEFAULT '0',
  `tags` text,
  `color` text,
  `size` text,
  `source` int(10) UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_product_categories`
--

CREATE TABLE `chatmodx_ms2_product_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_product_files`
--

CREATE TABLE `chatmodx_ms2_product_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED DEFAULT '1',
  `parent` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `description` text,
  `path` varchar(255) DEFAULT '',
  `file` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` int(10) UNSIGNED DEFAULT '0',
  `rank` tinyint(1) UNSIGNED DEFAULT '0',
  `url` varchar(255) DEFAULT '',
  `properties` text,
  `hash` char(40) DEFAULT '',
  `active` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_product_links`
--

CREATE TABLE `chatmodx_ms2_product_links` (
  `link` int(10) UNSIGNED NOT NULL,
  `master` int(10) UNSIGNED NOT NULL,
  `slave` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_product_options`
--

CREATE TABLE `chatmodx_ms2_product_options` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_ms2_vendors`
--

CREATE TABLE `chatmodx_ms2_vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `resource` int(10) UNSIGNED DEFAULT '0',
  `country` varchar(100) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `address` text,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` text,
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_namespaces`
--

CREATE TABLE `chatmodx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_namespaces`
--

INSERT INTO `chatmodx_namespaces` (`name`, `path`, `assets_path`) VALUES
('controlerrorlog', '{core_path}components/controlerrorlog/', ''),
('core', '{core_path}', '{assets_path}'),
('minishop2', '{core_path}components/minishop2/', '{base_path}extras/minishop/assets/components/minishop2/'),
('pdotools', '{core_path}components/pdotools/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_property_set`
--

CREATE TABLE `chatmodx_property_set` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int(10) NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_register_messages`
--

CREATE TABLE `chatmodx_register_messages` (
  `topic` int(10) UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires` int(20) NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_register_queues`
--

CREATE TABLE `chatmodx_register_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_register_queues`
--

INSERT INTO `chatmodx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_register_topics`
--

CREATE TABLE `chatmodx_register_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `queue` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_register_topics`
--

INSERT INTO `chatmodx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2018-03-27 21:51:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_session`
--

CREATE TABLE `chatmodx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int(20) UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_session`
--

INSERT INTO `chatmodx_session` (`id`, `access`, `data`) VALUES
('kh1l7bho3p6l2q6imdj6m8fsbams5c8r', 1522176986, 'modx.user.contextTokens|a:0:{}'),
('mv3uon1lgiakokq12pknojitnog96pnv', 1522176685, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.user.0.resourceGroups|a:1:{s:3:\"mgr\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.mgr.user.token|s:52:\"modx5ab7fe61ec8877.97144840_15ab7ffcb9d1c52.61228592\";modx.mgr.session.cookie.lifetime|i:604800;modx.mgr.user.config|a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_site_content`
--

CREATE TABLE `chatmodx_site_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `alias` varchar(191) DEFAULT '',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int(20) NOT NULL DEFAULT '0',
  `unpub_date` int(20) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `isfolder` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `template` int(10) NOT NULL DEFAULT '0',
  `menuindex` int(10) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int(10) NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0',
  `editedby` int(10) NOT NULL DEFAULT '0',
  `editedon` int(20) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int(20) NOT NULL DEFAULT '0',
  `deletedby` int(10) NOT NULL DEFAULT '0',
  `publishedon` int(20) NOT NULL DEFAULT '0',
  `publishedby` int(10) NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_site_content`
--

INSERT INTO `chatmodx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Главная', 'Поздравляем!', '', 'index', '', 1, 0, 0, 0, 0, NULL, '<p>You have successfully installed MODX Revolution&nbsp;[[++settings_version]]!</p>\n<p>Now that MODX is installed you can login to the manager to create your templates, manage content and install third party extras to add functionality to your&nbsp;website. </p>\n\n<h2>New to&nbsp;MODX?</h2>\n\n<p>Pages on a MODX site are called <a href=\"https://rtfm.modx.com/revolution/2.x/making-sites-with-modx/structuring-your-site/resources\">Resources</a>, and are visible on the left-hand side of the manager in the Resources tab. Resources can be nested under other resources, making it easy to create a tree of resources. There are different types of resources for different use&nbsp;cases.</p>\n\n<p>Building your website is done through a combination of <b>Templates</b>, <b>Template Variables</b>, <b>Chunks</b>, <b>Snippets</b> and <b>Plugins</b>. Collectively these are known as <b>Elements</b>, and can also be found in the left-hand side of the manager, in the Elements&nbsp;tab.</p>\n\n<p><a href=\"https://rtfm.modx.com/revolution/2.x/making-sites-with-modx/structuring-your-site/templates\">Templates</a> contain the outer markup of any page. Each resource can only be assigned to a single template at a time. By adding <a href=\"https://rtfm.modx.com/revolution/2.x/making-sites-with-modx/customizing-content/template-variables\">Template Variables</a> to a template, you can add custom fields for any resource using that particular&nbsp;template.</p>\n\n<p>With <a href=\"https://rtfm.modx.com/revolution/2.x/making-sites-with-modx/structuring-your-site/chunks\">Chunks</a> you can share parts of the markup, such as a header, across different templates. <a href=\"https://rtfm.modx.com/revolution/2.x/making-sites-with-modx/structuring-your-site/using-snippets\">Snippets</a> are pieces of PHP that return dynamic content, such as summaries of other resources or the current date. With snippets, you will often use Chunks to mark up the pieces of content it returns, instead of mixing the PHP and&nbsp;HTML.</p>\n\n<p>Finally, <a href=\"https://rtfm.modx.com/revolution/2.x/developing-in-modx/basic-development/plugins\">Plugins</a> enable more advanced features by hooking into the extensive events system provided by&nbsp;MODX.</p>\n\n<p>To learn more about MODX, be sure to check out the <a href=\"https://rtfm.modx.com/revolution/2.x/getting-started\">Getting Started</a> section in the official&nbsp;documentation.</p>\n', 1, 1, 0, 1, 1, 1, 1522007751, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, NULL, 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_site_htmlsnippets`
--

CREATE TABLE `chatmodx_site_htmlsnippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_site_htmlsnippets`
--

INSERT INTO `chatmodx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'msProduct.content', '', 0, 1, 0, '<h1>[[*pagetitle]]</h1>\n<div id=\"msProduct\" class=\"row\">\n    <div class=\"col-md-6\">\n        [[!msGallery]]\n    </div>\n    <div class=\"col-md-6\">\n        <form class=\"form-horizontal ms2_form\" method=\"post\">\n            <input type=\"hidden\" name=\"id\" value=\"[[*id]]\"/>\n            <div class=\"form-group\">\n                <label class=\"col-md-2 control-label\">[[%ms2_product_article]]:</label>\n                <div class=\"col-md-10 form-control-static\">\n                    [[+article:default=`-`]]\n                </div>\n            </div>\n            <div class=\"form-group\">\n                <label class=\"col-md-2 control-label\">[[%ms2_product_price]]:</label>\n                <div class=\"col-md-10 form-control-static\">\n                    [[+price]] [[%ms2_frontend_currency]]\n                    [[+old_price:gt=`0`:then=`\n                    <span class=\"old_price\">[[+old_price]] [[%ms2_frontend_currency]]</span>\n                    `:else=``]]\n                </div>\n            </div>\n            <div class=\"form-group form-inline\">\n                <label class=\"col-md-2 control-label\" for=\"product_price\">[[%ms2_cart_count]]:</label>\n                <div class=\"col-md-10\">\n                    <input type=\"number\" name=\"count\" id=\"product_price\" class=\"input-sm form-control\" value=\"1\"/>\n                    [[%ms2_frontend_count_unit]]\n                </div>\n            </div>\n            <div class=\"form-group\">\n                <label class=\"col-md-2 control-label\">[[%ms2_product_weight]]:</label>\n                <div class=\"col-md-10 form-control-static\">\n                    [[+weight]] [[%ms2_frontend_weight_unit]]\n                </div>\n            </div>\n            <div class=\"form-group\">\n                <label class=\"col-md-2 control-label\">[[%ms2_product_made_in]]:</label>\n                <div class=\"col-md-10 form-control-static\">\n                    [[+made_in:default=`-`]]\n                </div>\n            </div>\n\n            [[msOptions?options=`color,size`]]\n\n            [[msProductOptions]]\n\n            <div class=\"form-group\">\n                <div class=\"col-md-offset-2 col-md-10\">\n                    <button type=\"submit\" class=\"btn btn-default\" name=\"ms2_action\" value=\"cart/add\">\n                        <i class=\"glyphicon glyphicon-barcode\"></i> [[%ms2_frontend_add_to_cart]]\n                    </button>\n                </div>\n            </div>\n        </form>\n\n    </div>\n</div>\n[[*content]]', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_product_content.tpl'),
(2, 1, 0, 'tpl.msProducts.row', '', 0, 1, 0, '<div class=\"row ms2_product\">\n    <div class=\"col-md-2\">\n        {if $thumb?}\n            <img src=\"{$thumb}\" alt=\"{$pagetitle}\" title=\"{$pagetitle}\"/>\n        {else}\n            <img src=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small.png\"\n                 srcset=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small@2x.png 2x\"\n                 alt=\"{$pagetitle}\" title=\"{$pagetitle}\"/>\n        {/if}\n    </div>\n    <div class=\"col-md-10\">\n        <form method=\"post\" class=\"ms2_form\">\n            <a href=\"{$id | url}\">{$pagetitle}</a>\n            <span class=\"flags\">\n                {if $new?}\n                    <i class=\"glyphicon glyphicon-flag\" title=\"{\'ms2_frontend_new\' | lexicon}\"></i>\n                {/if}\n                {if $popular?}\n                    <i class=\"glyphicon glyphicon-star\" title=\"{\'ms2_frontend_popular\' | lexicon}\"></i>\n                {/if}\n                {if $favorite?}\n                    <i class=\"glyphicon glyphicon-bookmark\" title=\"{\'ms2_frontend_favorite\' | lexicon}\"></i>\n                {/if}\n            </span>\n            <span class=\"price\">\n                {$price} {\'ms2_frontend_currency\' | lexicon}\n            </span>\n            {if $old_price?}\n                <span class=\"old_price\">{$old_price} {\'ms2_frontend_currency\' | lexicon}</span>\n            {/if}\n            <button class=\"btn btn-default pull-right\" type=\"submit\" name=\"ms2_action\" value=\"cart/add\">\n                <i class=\"glyphicon glyphicon-barcode\"></i> {\'ms2_frontend_add_to_cart\' | lexicon}\n            </button>\n            <input type=\"hidden\" name=\"id\" value=\"{$id}\">\n            <input type=\"hidden\" name=\"count\" value=\"1\">\n            <input type=\"hidden\" name=\"options\" value=\"[]\">\n        </form>\n        {if $introtext}\n            <p>\n                <small>{$introtext}</small>\n            </p>\n        {/if}\n    </div>\n</div>', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_products_row.tpl'),
(3, 1, 0, 'tpl.msCart', '', 0, 1, 0, '<div id=\"msCart\">\n    {if !count($products)}\n        {\'ms2_cart_is_empty\' | lexicon}\n    {else}\n        <div class=\"table-responsive\">\n            <table class=\"table table-striped\">\n                <tr class=\"header\">\n                    <th class=\"image\">&nbsp;</th>\n                    <th class=\"title\">{\'ms2_cart_title\' | lexicon}</th>\n                    <th class=\"count\">{\'ms2_cart_count\' | lexicon}</th>\n                    <th class=\"weight\">{\'ms2_cart_weight\' | lexicon}</th>\n                    <th class=\"price\">{\'ms2_cart_price\' | lexicon}</th>\n                    <th class=\"remove\">{\'ms2_cart_remove\' | lexicon}</th>\n                </tr>\n\n                {foreach $products as $product}\n                    <tr id=\"{$product.key}\">\n                        <td class=\"image\">\n                            {if $product.thumb?}\n                                <img src=\"{$product.thumb}\" alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                            {else}\n                                <img src=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small.png\"\n                                     srcset=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small@2x.png 2x\"\n                                     alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                            {/if}\n                        </td>\n                        <td class=\"title\">\n                            {if $product.id?}\n                                <a href=\"{$product.id | url}\">{$product.pagetitle}</a>\n                            {else}\n                                {$product.name}\n                            {/if}\n                            {if $product.options?}\n                                <div class=\"small\">\n                                    {$product.options | join : \'; \'}\n                                </div>\n                            {/if}\n                        </td>\n                        <td class=\"count\">\n                            <form method=\"post\" class=\"ms2_form form-inline\" role=\"form\">\n                                <input type=\"hidden\" name=\"key\" value=\"{$product.key}\"/>\n                                <div class=\"form-group\">\n                                    <input type=\"number\" name=\"count\" value=\"{$product.count}\"\n                                           class=\"input-sm form-control\"/>\n                                    <span class=\"hidden-xs\">{\'ms2_frontend_count_unit\' | lexicon}</span>\n                                    <button class=\"btn btn-default\" type=\"submit\" name=\"ms2_action\" value=\"cart/change\">\n                                        <i class=\"glyphicon glyphicon-refresh\"></i>\n                                    </button>\n                                </div>\n                            </form>\n                        </td>\n                        <td class=\"weight\">\n                            <span>{$product.weight}</span> {\'ms2_frontend_weight_unit\' | lexicon}\n                        </td>\n                        <td class=\"price\">\n                            <span>{$product.price}</span> {\'ms2_frontend_currency\' | lexicon}\n                            {if $product.old_price?}\n                            <span class=\"old_price\">{$product.old_price}</span> {\'ms2_frontend_currency\' | lexicon}\n                                {/if}\n                        </td>\n                        <td class=\"remove\">\n                            <form method=\"post\" class=\"ms2_form\">\n                                <input type=\"hidden\" name=\"key\" value=\"{$product.key}\">\n                                <button class=\"btn btn-default\" type=\"submit\" name=\"ms2_action\" value=\"cart/remove\">\n                                    <i class=\"glyphicon glyphicon-remove\"></i>\n                                </button>\n                            </form>\n                        </td>\n                    </tr>\n                {/foreach}\n\n                <tr class=\"footer\">\n                    <th class=\"total\" colspan=\"2\">{\'ms2_cart_total\' | lexicon}:</th>\n                    <th class=\"total_count\">\n                        <span class=\"ms2_total_count\">{$total.count}</span>\n                        {\'ms2_frontend_count_unit\' | lexicon}\n                    </th>\n                    <th class=\"total_weight\">\n                        <span class=\"ms2_total_weight\">{$total.weight}</span>\n                        {\'ms2_frontend_weight_unit\' | lexicon}\n                    </th>\n                    <th class=\"total_cost\">\n                        <span class=\"ms2_total_cost\">{$total.cost}</span>\n                        {\'ms2_frontend_currency\' | lexicon}\n                    </th>\n                    <th>&nbsp;</th>\n                </tr>\n            </table>\n        </div>\n        <form method=\"post\">\n            <button class=\"btn btn-default\" type=\"submit\" name=\"ms2_action\" value=\"cart/clean\">\n                <i class=\"glyphicon glyphicon-remove\"></i> {\'ms2_cart_clean\' | lexicon}\n            </button>\n        </form>\n    {/if}\n</div>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_cart.tpl'),
(4, 1, 0, 'tpl.msMiniCart', '', 0, 1, 0, '<div id=\"msMiniCart\" class=\"{$total_count > 0 ? \'full\' : \'\'}\">\n    <div class=\"empty\">\n        <h5><i class=\"glyphicon glyphicon-shopping-cart\"></i> {\'ms2_minicart\' | lexicon}</h5>\n        {\'ms2_minicart_is_empty\' | lexicon}\n    </div>\n    <div class=\"not_empty\">\n        <h5><i class=\"glyphicon glyphicon-shopping-cart\"></i> {\'ms2_minicart\' | lexicon}</h5>\n        {\'ms2_minicart_goods\' | lexicon} <strong class=\"ms2_total_count\">{$total_count}</strong> {\'ms2_frontend_count_unit\' | lexicon},\n        {\'ms2_minicart_cost\' | lexicon} <strong class=\"ms2_total_cost\">{$total_cost}</strong> {\'ms2_frontend_currency\' | lexicon}\n    </div>\n</div>', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_minicart.tpl'),
(5, 1, 0, 'tpl.msOrder', '', 0, 1, 0, '<form class=\"form-horizontal ms2_form\" id=\"msOrder\" method=\"post\">\n    <div class=\"row\">\n        <div class=\"col-md-6\">\n            <h4>{\'ms2_frontend_credentials\' | lexicon}:</h4>\n            {foreach [\'email\',\'receiver\',\'phone\'] as $field}\n                <div class=\"form-group input-parent\">\n                    <label class=\"col-md-4 control-label\" for=\"{$field}\">\n                        <span class=\"required-star\">*</span> {(\'ms2_frontend_\' ~ $field) | lexicon}\n                    </label>\n                    <div class=\"col-sm-6\">\n                        <input type=\"text\" id=\"{$field}\" placeholder=\"{(\'ms2_frontend_\' ~ $field) | lexicon}\"\n                               name=\"{$field}\" value=\"{$form[$field]}\"\n                               class=\"form-control{($field in list $errors) ? \' error\' : \'\'}\">\n                    </div>\n                </div>\n            {/foreach}\n\n            <div class=\"form-group input-parent\">\n                <label class=\"col-md-4 control-label\" for=\"comment\">\n                    <span class=\"required-star\">*</span> {\'ms2_frontend_comment\' | lexicon}</label>\n                <div class=\"col-sm-6\">\n                    <textarea name=\"comment\" id=\"comment\" placeholder=\"{\'ms2_frontend_comment\' | lexicon}\"\n                              class=\"form-control{(\'comment\' in list $errors) ? \' error\' : \'\'}\">{$form.comment}</textarea>\n                </div>\n            </div>\n        </div>\n\n        <div class=\"col-md-6\" id=\"payments\">\n            <h4>{\'ms2_frontend_payments\' | lexicon}:</h4>\n            <div class=\"form-group\">\n                <label class=\"col-md-4 control-label\"><span class=\"required-star\">*</span>\n                    {\'ms2_frontend_payment_select\' | lexicon}</label>\n                <div class=\"col-sm-6\">\n                    {foreach $payments as $payment index=$index}\n                        {var $checked = !$order.payment && $index == 0 || $payment.id == $order.payment}\n                        <div class=\"checkbox\">\n                            <label class=\"payment input-parent\">\n                                <input type=\"radio\" name=\"payment\" value=\"{$payment.id}\" id=\"payment_{$payment.id}\"\n                                        {$checked ? \'checked\' : \'\'}>\n                                {if $payment.logo?}\n                                    <img src=\"{$payment.logo}\" alt=\"{$payment.name}\" title=\"{$payment.name}\"/>\n                                {else}\n                                    {$payment.name}\n                                {/if}\n                                {if $payment.description?}\n                                    <p class=\"small\">\n                                        {$payment.description}\n                                    </p>\n                                {/if}\n                            </label>\n                        </div>\n                    {/foreach}\n                </div>\n            </div>\n        </div>\n    </div>\n\n    <div class=\"row\">\n        <div class=\"col-md-6\" id=\"deliveries\">\n            <h4>{\'ms2_frontend_deliveries\' | lexicon}:</h4>\n            <div class=\"form-group\">\n                <label class=\"col-md-4 control-label\">\n                    <span class=\"required-star\">*</span> {\'ms2_frontend_delivery_select\' | lexicon}\n                </label>\n                <div class=\"col-sm-6\">\n                    {foreach $deliveries as $delivery index=$index}\n                        {var $checked = !$order.delivery && $index == 0 || $delivery.id == $order.delivery}\n                        <div class=\"checkbox\">\n                            <label class=\"delivery input-parent\">\n                                <input type=\"radio\" name=\"delivery\" value=\"{$delivery.id}\" id=\"delivery_{$delivery.id}\"\n                                       data-payments=\"{$delivery.payments | json_encode}\"\n                                        {$checked ? \'checked\' : \'\'}>\n                                {if $delivery.logo?}\n                                    <img src=\"{$delivery.logo}\" alt=\"{$delivery.name}\" title=\"{$delivery.name}\"/>\n                                {else}\n                                    {$delivery.name}\n                                {/if}\n                                {if $delivery.description?}\n                                    <p class=\"small\">\n                                        {$delivery.description}\n                                    </p>\n                                {/if}\n                            </label>\n                        </div>\n                    {/foreach}\n                </div>\n            </div>\n        </div>\n\n        <div class=\"col-md-6\">\n            <h4>{\'ms2_frontend_address\' | lexicon}:</h4>\n            {foreach [\'index\',\'region\',\'city\'] as $field}\n                <div class=\"form-group input-parent\">\n                    <label class=\"col-md-4 control-label\" for=\"{$field}\">\n                        <span class=\"required-star\">*</span> {(\'ms2_frontend_\' ~ $field) | lexicon}\n                    </label>\n                    <div class=\"col-sm-6\">\n                        <input type=\"text\" id=\"{$field}\" placeholder=\"{(\'ms2_frontend_\' ~ $field) | lexicon}\"\n                               name=\"{$field}\" value=\"{$form[$field]}\"\n                               class=\"form-control{($field in list $errors) ? \' error\' : \'\'}\">\n                    </div>\n                </div>\n            {/foreach}\n            <div class=\"form-group input-parent\">\n                <label class=\"col-md-4 control-label\" for=\"street\">\n                    <span class=\"required-star\">*</span> {\'ms2_frontend_street\' | lexicon}</label>\n                <div class=\"col-md-6 row\">\n                    {foreach [\'street\',\'building\',\'room\'] as $field}\n                        <div class=\"col-md-4\">\n                            <input type=\"text\" id=\"{$field}\" placeholder=\"{(\'ms2_frontend_\' ~ $field) | lexicon}\"\n                                   name=\"{$field}\" value=\"{$form[$field]}\"\n                                   class=\"form-control{($field in list $errors) ? \' error\' : \'\'}\">\n                        </div>\n                    {/foreach}\n                </div>\n            </div>\n        </div>\n\n    </div>\n\n    <button type=\"button\" name=\"ms2_action\" value=\"order/clean\" class=\"btn btn-default ms2_link\">\n        <i class=\"glyphicon glyphicon-remove\"></i> {\'ms2_frontend_order_cancel\' | lexicon}\n    </button>\n\n    <hr/>\n    <div class=\"well\">\n        <div class=\"col-md-offset-2\">\n            <h3>{\'ms2_frontend_order_cost\' | lexicon}:\n                <span id=\"ms2_order_cost\">{$order.cost ?: 0}</span>\n                {\'ms2_frontend_currency\' | lexicon}\n            </h3>\n            <button type=\"submit\" name=\"ms2_action\" value=\"order/submit\" class=\"btn btn-default btn-primary ms2_link\">\n                {\'ms2_frontend_order_submit\' | lexicon}\n            </button>\n        </div>\n    </div>\n</form>', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_order.tpl'),
(6, 1, 0, 'tpl.msGetOrder', '', 0, 1, 0, '<div id=\"msCart\">\n    <div class=\"table-responsive\">\n        <table class=\"table table-striped\">\n            <tr class=\"header\">\n                <th class=\"image col-md-2\">&nbsp;</th>\n                <th class=\"title col-md-4\">{\'ms2_cart_title\' | lexicon}</th>\n                <th class=\"count col-md-2\">{\'ms2_cart_count\' | lexicon}</th>\n                <th class=\"weight col-md-1\">{\'ms2_cart_weight\' | lexicon}</th>\n                <th class=\"price col-md-1\">{\'ms2_cart_cost\' | lexicon}</th>\n            </tr>\n            {foreach $products as $product}\n                <tr>\n                    <td class=\"image\">\n                        {if $product.thumb?}\n                            <img src=\"{$product.thumb}\" alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                        {else}\n                            <img src=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small.png\"\n                                 srcset=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small@2x.png 2x\"\n                                 alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                        {/if}\n                    </td>\n                    <td class=\"title\">\n                        {if $product.id?}\n                            <a href=\"{$product.id | url}\">{$product.name}</a>\n                        {else}\n                            {$product.name}\n                        {/if}\n                        {if $product.options?}\n                            <div class=\"small\">\n                                {$product.options | join : \'; \'}\n                            </div>\n                        {/if}\n                    </td>\n                    <td class=\"count\">{$product.count} {\'ms2_frontend_count_unit\' | lexicon}</td>\n                    <td class=\"weight\">{$product.weight} {\'ms2_frontend_weight_unit\' | lexicon}</td>\n                    <td class=\"price\">{$product.price} {\'ms2_frontend_currency\' | lexicon}</td>\n                </tr>\n            {/foreach}\n            <tr class=\"footer\">\n                <th class=\"total\" colspan=\"2\">{\'ms2_cart_total\' | lexicon}:</th>\n                <th class=\"total_count\">\n                    <span class=\"ms2_total_count\">{$total.cart_count}</span> {\'ms2_frontend_count_unit\' | lexicon}\n                </th>\n                <th class=\"total_weight\">\n                    <span class=\"ms2_total_weight\">{$total.cart_weight}</span> {\'ms2_frontend_weight_unit\' | lexicon}\n                </th>\n                <th class=\"total_cost\">\n                    <span class=\"ms2_total_cost\">{$total.cart_cost}</span> {\'ms2_frontend_currency\' | lexicon}\n                </th>\n            </tr>\n        </table>\n    </div>\n\n    <h4>\n        {\'ms2_frontend_order_cost\' | lexicon}:\n        {if $total.delivery_cost}\n            {$total.cart_cost} {\'ms2_frontend_currency\' | lexicon} + {$total.delivery_cost}\n            {\'ms2_frontend_currency\' | lexicon} =\n        {/if}\n        <strong>{$total.cost}</strong> {\'ms2_frontend_currency\' | lexicon}\n    </h4>\n</div>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_get_order.tpl'),
(7, 1, 0, 'tpl.msOptions', '', 0, 1, 0, '{foreach $options as $name => $values}\n    <div class=\"form-group\">\n        <label class=\"col-md-2 control-label\" for=\"option_{$name}\">{(\'ms2_product_\' ~ $name) | lexicon}:</label>\n        <div class=\"col-md-10\">\n            <select name=\"options[{$name}]\" class=\"input-sm form-control\" id=\"option_{$name}\">\n                {foreach $values as $value}\n                    <option value=\"{$value}\">{$value}</option>\n                {/foreach}\n            </select>\n        </div>\n    </div>\n{/foreach}', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_options.tpl'),
(8, 1, 0, 'tpl.msProductOptions', '', 0, 1, 0, '{foreach $options as $option}\n    <div class=\"form-group\">\n        <label class=\"col-md-2 control-label\">{$option.caption}:</label>\n        <div class=\"col-md-10 form-control-static\">\n            {if $option.value is array}\n                {$option.value | join : \', \'}\n            {else}\n                {$option.value}\n            {/if}\n        </div>\n    </div>\n{/foreach}\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_product_options.tpl'),
(9, 1, 0, 'tpl.msGallery', '', 0, 1, 0, '<div id=\"msGallery\">\n    {if $files?}\n        <div class=\"fotorama\"\n             data-nav=\"thumbs\"\n             data-thumbheight=\"45\"\n             data-allowfullscreen=\"true\"\n             data-swipe=\"true\"\n             data-autoplay=\"5000\">\n            {foreach $files as $file}\n                <a href=\"{$file[\'url\']}\" target=\"_blank\">\n                    <img src=\"{$file[\'small\']}\" alt=\"\" title=\"\">\n                </a>\n            {/foreach}\n        </div>\n    {else}\n        <img src=\"{(\'assets_url\' | option) ~ \'components/minishop2/img/web/ms2_medium.png\'}\"\n             srcset=\"{(\'assets_url\' | option) ~ \'components/minishop2/img/web/ms2_medium@2x.png\'} 2x\"\n             alt=\"\" title=\"\"/>\n    {/if}\n</div>\n\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_gallery.tpl'),
(10, 1, 0, 'tpl.msEmail', '', 0, 1, 0, '{var $style = [\n\'logo\' => \'display:block;margin: auto;\',\n\'a\' => \'color:#348eda;\',\n\'p\' => \'font-family: Arial;color: #666666;font-size: 12px;\',\n\'h\' => \'font-family:Arial;color: #111111;font-weight: 200;line-height: 1.2em;margin: 40px 20px;\',\n\'h1\' => \'font-size: 36px;\',\n\'h2\' => \'font-size: 28px;\',\n\'h3\' => \'font-size: 22px;\',\n\'th\' => \'font-family: Arial;text-align: left;color: #111111;\',\n\'td\' => \'font-family: Arial;text-align: left;color: #111111;\',\n]}\n\n{var $site_url = (\'site_url\' | option) | preg_replace : \'#/$#\' : \'\'}\n{var $assets_url = \'assets_url\' | option}\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n        \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\n    <title>{\'site_name\' | option}</title>\n</head>\n<body style=\"margin:0;padding:0;background:#f6f6f6;\">\n<div style=\"height:100%;padding-top:20px;background:#f6f6f6;\">\n    {block \'logo\'}\n        <a href=\"{$site_url}\">\n            <img style=\"{$style.logo}\"\n                 src=\"{$site_url}{$assets_url}components/minishop2/img/web/ms2_small@2x.png\"\n                 alt=\"{$site_url}\"\n                 width=\"120\" height=\"90\"/>\n        </a>\n    {/block}\n    <!-- body -->\n    <table class=\"body-wrap\" style=\"padding:0 20px 20px 20px;width: 100%;background:#f6f6f6;margin-top:10px;\">\n        <tr>\n            <td></td>\n            <td class=\"container\" style=\"border:1px solid #f0f0f0;background:#ffffff;width:800px;margin:auto;\">\n                <div class=\"content\">\n                    <table style=\"width:100%;\">\n                        <tr>\n                            <td>\n                                <h3 style=\"{$style.h}{$style.h3}\">\n                                    {block \'title\'}\n                                        miniShop2\n                                    {/block}\n                                </h3>\n\n                                {block \'products\'}\n                                    <table style=\"width:90%;margin:auto;\">\n                                        <thead>\n                                        <tr>\n                                            <th>&nbsp;</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_title\' | lexicon}</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_count\' | lexicon}</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_weight\' | lexicon}</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_cost\' | lexicon}</th>\n                                        </tr>\n                                        </thead>\n                                        {foreach $products as $product}\n                                            <tr>\n                                                <td style=\"{$style.th}\">\n                                                    {if $product.thumb?}\n                                                        <img src=\"{$site_url}{$product.thumb}\"\n                                                             alt=\"{$product.pagetitle}\"\n                                                             title=\"{$product.pagetitle}\"\n                                                             width=\"120\" height=\"90\"/>\n                                                    {else}\n                                                        <img src=\"{$site_url}{$assets_url}components/minishop2/img/web/ms2_small@2x.png\"\n                                                             alt=\"{$product.pagetitle}\"\n                                                             title=\"{$product.pagetitle}\"\n                                                             width=\"120\" height=\"90\"/>\n                                                    {/if}\n                                                </td>\n                                                <td style=\"{$style.th}\">\n                                                    {if $product.id?}\n                                                        <a href=\"{$product.id | url : [\'scheme\' => \'full\']}\"\n                                                           style=\"{$style.a}\">\n                                                            {$product.name}\n                                                        </a>\n                                                    {else}\n                                                        {$product.name}\n                                                    {/if}\n                                                    {if $product.options?}\n                                                        <div class=\"small\">\n                                                            {$product.options | join : \'; \'}\n                                                        </div>\n                                                    {/if}\n                                                </td>\n                                                <td style=\"{$style.th}\">{$product.count} {\'ms2_frontend_count_unit\' | lexicon}</td>\n                                                <td style=\"{$style.th}\">{$product.weight} {\'ms2_frontend_weight_unit\' | lexicon}</td>\n                                                <td style=\"{$style.th}\">{$product.price} {\'ms2_frontend_currency\' | lexicon}</td>\n                                            </tr>\n                                        {/foreach}\n                                        <tfoot>\n                                        <tr>\n                                            <th colspan=\"2\"></th>\n                                            <th style=\"{$style.th}\">\n                                                {$total.cart_count} {\'ms2_frontend_count_unit\' | lexicon}\n                                            </th>\n                                            <th style=\"{$style.th}\">\n                                                {$total.cart_weight} {\'ms2_frontend_weight_unit\' | lexicon}\n                                            </th>\n                                            <th style=\"{$style.th}\">\n                                                {$total.cart_cost} {\'ms2_frontend_currency\' | lexicon}\n                                            </th>\n                                        </tr>\n                                        </tfoot>\n                                    </table>\n                                    <h3 style=\"{$style.h}{$style.h3}\">\n                                        {\'ms2_frontend_order_cost\' | lexicon}:\n                                        {if $total.delivery_cost}\n                                            {$total.cart_cost} {\'ms2_frontend_currency\' | lexicon} + {$total.delivery_cost}\n                                            {\'ms2_frontend_currency\' | lexicon} =\n                                        {/if}\n                                        <strong>{$total.cost}</strong> {\'ms2_frontend_currency\' | lexicon}\n                                    </h3>\n                                {/block}\n                            </td>\n                        </tr>\n                    </table>\n                </div>\n                <!-- /content -->\n            </td>\n            <td></td>\n        </tr>\n    </table>\n    <!-- /body -->\n    <!-- footer -->\n    <table style=\"clear:both !important;width: 100%;\">\n        <tr>\n            <td></td>\n            <td class=\"container\">\n                <!-- content -->\n                <div class=\"content\">\n                    <table style=\"width:100%;text-align: center;\">\n                        <tr>\n                            <td align=\"center\">\n                                <p style=\"{$style.p}\">\n                                    {block \'footer\'}\n                                    <a href=\"{$site_url}\" style=\"color: #999999;\">\n                                        {\'site_name\' | option}\n                                    </a>\n                                    {/block}\n                                </p>\n                            </td>\n                        </tr>\n                    </table>\n                </div>\n                <!-- /content -->\n            </td>\n            <td></td>\n        </tr>\n    </table>\n    <!-- /footer -->\n</div>\n</body>\n</html>', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email.tpl'),
(11, 1, 0, 'tpl.msEmail.new.user', '', 0, 1, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_new_user\' | lexicon : $order}\n{/block}\n\n{block \'products\'}\n    {parent}\n    {if $payment_link?}\n        <p style=\"margin-left:20px;{$style.p}\">\n            {\'ms2_payment_link\' | lexicon : [\'link\' => $payment_link]}\n        </p>\n    {/if}\n{/block}', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_new_user.tpl'),
(12, 1, 0, 'tpl.msEmail.new.manager', '', 0, 1, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_new_manager\' | lexicon : $order}\n{/block}', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_new_manager.tpl'),
(13, 1, 0, 'tpl.msEmail.paid.user', '', 0, 1, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_paid_user\' | lexicon : $order}\n{/block}', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_paid_user.tpl'),
(14, 1, 0, 'tpl.msEmail.paid.manager', '', 0, 1, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_paid_manager\' | lexicon : $order}\n{/block}', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_paid_manager.tpl'),
(15, 1, 0, 'tpl.msEmail.sent.user', '', 0, 1, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_sent_user\' | lexicon : $order}\n{/block}', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_sent_user.tpl'),
(16, 1, 0, 'tpl.msEmail.cancelled.user', '', 0, 1, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_cancelled_user\' | lexicon : $order}\n{/block}', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_cancelled_user.tpl');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_site_plugins`
--

CREATE TABLE `chatmodx_site_plugins` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_site_plugins`
--

INSERT INTO `chatmodx_site_plugins` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `plugincode`, `locked`, `properties`, `disabled`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'miniShop2', '', 0, 1, 0, '/** @var modX $modx */\nswitch ($modx->event->name) {\n\n    case \'OnMODXInit\':\n        // Load extensions\n        /** @var miniShop2 $miniShop2 */\n        if ($miniShop2 = $modx->getService(\'miniShop2\')) {\n            $miniShop2->loadMap();\n        }\n        break;\n\n    case \'OnHandleRequest\':\n        // Handle ajax requests\n        $isAjax = !empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) && $_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\';\n        if (empty($_REQUEST[\'ms2_action\']) || !$isAjax) {\n            return;\n        }\n        /** @var miniShop2 $miniShop2 */\n        if ($miniShop2 = $modx->getService(\'miniShop2\')) {\n            $response = $miniShop2->handleRequest($_REQUEST[\'ms2_action\'], @$_POST);\n            @session_write_close();\n            exit($response);\n        }\n        break;\n\n    case \'OnLoadWebDocument\':\n        // Handle non-ajax requests\n        if (!empty($_REQUEST[\'ms2_action\'])) {\n            if ($miniShop2 = $modx->getService(\'miniShop2\')) {\n                $miniShop2->handleRequest($_REQUEST[\'ms2_action\'], @$_POST);\n            }\n        }\n        // Set product fields as [[*resource]] tags\n        if ($modx->resource->get(\'class_key\') == \'msProduct\') {\n            if ($dataMeta = $modx->getFieldMeta(\'msProductData\')) {\n                unset($dataMeta[\'id\']);\n                $modx->resource->_fieldMeta = array_merge(\n                    $modx->resource->_fieldMeta,\n                    $dataMeta\n                );\n            }\n        }\n        break;\n\n    case \'OnWebPageInit\':\n        // Set referrer cookie\n        /** @var msCustomerProfile $profile */\n        $referrerVar = $modx->getOption(\'ms2_referrer_code_var\', null, \'msfrom\', true);\n        $cookieVar = $modx->getOption(\'ms2_referrer_cookie_var\', null, \'msreferrer\', true);\n        $cookieTime = $modx->getOption(\'ms2_referrer_time\', null, 86400 * 365, true);\n\n        if (!$modx->user->isAuthenticated() && !empty($_REQUEST[$referrerVar])) {\n            $code = trim($_REQUEST[$referrerVar]);\n            if ($profile = $modx->getObject(\'msCustomerProfile\', array(\'referrer_code\' => $code))) {\n                $referrer = $profile->get(\'id\');\n                setcookie($cookieVar, $referrer, time() + $cookieTime);\n            }\n        }\n        break;\n\n    case \'OnUserSave\':\n        // Save referrer id\n        if ($mode == modSystemEvent::MODE_NEW) {\n            /** @var modUser $user */\n            $cookieVar = $modx->getOption(\'ms2_referrer_cookie_var\', null, \'msreferrer\', true);\n            $cookieTime = $modx->getOption(\'ms2_referrer_time\', null, 86400 * 365, true);\n            if ($modx->context->key != \'mgr\' && !empty($_COOKIE[$cookieVar])) {\n                if ($profile = $modx->getObject(\'msCustomerProfile\', $user->get(\'id\'))) {\n                    if (!$profile->get(\'referrer_id\') && $_COOKIE[$cookieVar] != $user->get(\'id\')) {\n                        $profile->set(\'referrer_id\', (int)$_COOKIE[$cookieVar]);\n                        $profile->save();\n                    }\n                }\n                setcookie($cookieVar, \'\', time() - $cookieTime);\n            }\n        }\n        break;\n\n    case \'msOnChangeOrderStatus\':\n        // Update customer stat\n        if (empty($status) || $status != 2) {\n            return;\n        }\n\n        /** @var modUser $user */\n        if ($user = $order->getOne(\'User\')) {\n            $q = $modx->newQuery(\'msOrder\', array(\'type\' => 0));\n            $q->innerJoin(\'modUser\', \'modUser\', array(\'modUser.id = msOrder.user_id\'));\n            $q->innerJoin(\'msOrderLog\', \'msOrderLog\', array(\n                \'msOrderLog.order_id = msOrder.id\',\n                \'msOrderLog.action\' => \'status\',\n                \'msOrderLog.entry\' => $status,\n            ));\n            $q->where(array(\'msOrder.user_id\' => $user->get(\'id\')));\n            $q->groupby(\'msOrder.user_id\');\n            $q->select(\'SUM(msOrder.cost)\');\n            if ($q->prepare() && $q->stmt->execute()) {\n                $spent = $q->stmt->fetchColumn();\n                /** @var msCustomerProfile $profile */\n                if ($profile = $modx->getObject(\'msCustomerProfile\', $user->get(\'id\'))) {\n                    $profile->set(\'spent\', $spent);\n                    $profile->save();\n                }\n            }\n        }\n        break;\n}', 0, NULL, 0, '', 0, 'core/components/minishop2/elements/plugins/plugin.minishop2.php'),
(2, 1, 0, 'pdoTools', '', 0, 2, 0, '/** @var modX $modx */\nswitch ($modx->event->name) {\n\n    case \'OnMODXInit\':\n        $fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\n        $path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\n        $modx->loadClass($fqn, $path, false, true);\n\n        $fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n        $path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\n        $modx->loadClass($fqn, $path, false, true);\n        break;\n\n    case \'OnSiteRefresh\':\n        /** @var pdoTools $pdoTools */\n        if ($pdoTools = $modx->getService(\'pdoTools\')) {\n            if ($pdoTools->clearFileCache()) {\n                $modx->log(modX::LOG_LEVEL_INFO, $modx->lexicon(\'refresh_default\') . \': pdoTools\');\n            }\n        }\n        break;\n\n    case \'OnWebPagePrerender\':\n        $parser = $modx->getParser();\n        if ($parser instanceof pdoParser) {\n            foreach ($parser->pdoTools->ignores as $key => $val) {\n                $modx->resource->_output = str_replace($key, $val, $modx->resource->_output);\n            }\n        }\n        break;\n}', 0, NULL, 0, '', 0, 'core/components/pdotools/elements/plugins/plugin.pdotools.php'),
(3, 1, 0, 'controlErrorLog', '', 0, 3, 0, 'switch ($modx->event->name) {\r\n    case \'OnManagerPageBeforeRender\':\r\n        if ($modx->hasPermission(\'error_log_view\')) {\r\n            $modx->controller->addLexiconTopic(\'controlerrorlog:default\');\r\n            $modx->controller->addCss($modx->getOption(\'assets_url\').\'components/controlerrorlog/css/mgr/main.css\');\r\n            $modx->controller->addJavascript($modx->getOption(\'assets_url\').\'components/controlerrorlog/js/mgr/cel.default.js\');\r\n\r\n            $response = $modx->runProcessor(\'mgr/errorlog/get\', array(\'includeContent\'=>false), array(\'processors_path\' => $modx->getOption(\'core_path\') . \'components/controlerrorlog/processors/\'));\r\n            $resObj = $response->getObject();\r\n            $_html = \"<script>	var cel_config = \" . $modx->toJSON($resObj) . \"; </script>\";\r\n            $modx->controller->addHtml($_html);\r\n        }\r\n        break;\r\n    case \'OnWebPageComplete\':\r\n        $email = $modx->getOption(\'controlerrorlog.admin_email\');\r\n        if ($modx->context->get(\'key\') == \'mgr\' || empty($email) || !$modx->getOption(\'controlerrorlog.control_frontend\')) return;\r\n\r\n        $f = $modx->getOption(xPDO::OPT_CACHE_PATH) . \'logs/error.log\';\r\n        if (file_exists($f)) {\r\n            $casheHash = $modx->cacheManager->get(\'error_log\');\r\n            $hash = md5_file($f);\r\n            if (filesize($f) > 0 && !empty($casheHash)  &&  $casheHash != $hash) {\r\n                $modx->lexicon->load(\'controlerrorlog:default\');\r\n                /** @var modPHPMailer $mail */\r\n                $mail = $modx->getService(\'mail\', \'mail.modPHPMailer\');\r\n                $mail->setHTML(true);\r\n\r\n                $mail->set(modMail::MAIL_SUBJECT, $modx->lexicon(\'error_log_email_subject\'));\r\n                $mail->set(modMail::MAIL_BODY, $modx->lexicon(\'error_log_email_body\', array(\'siteName\' => $modx->config[\'site_name\'])));\r\n                $mail->set(modMail::MAIL_SENDER, $modx->getOption(\'emailsender\'));\r\n                $mail->set(modMail::MAIL_FROM, $modx->getOption(\'emailsender\'));\r\n                $mail->set(modMail::MAIL_FROM_NAME, $modx->getOption(\'site_name\'));\r\n\r\n                $mail->address(\'to\', $email);\r\n                $mail->address(\'reply-to\', $modx->getOption(\'emailsender\'));\r\n\r\n                if (!$mail->send()) {\r\n                    print (\'An error occurred while trying to send the email: \'.$modx->mail->mailer->ErrorInfo);\r\n                }\r\n                $mail->reset();\r\n            }\r\n            if ($casheHash != $hash) {\r\n                $modx->cacheManager->set(\'error_log\', $hash, 0);\r\n            }\r\n        }\r\n        break;\r\n}', 0, NULL, 0, '', 0, 'core/components/controlerrorlog/elements/plugins/plugin.controlerrorlog.php');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_site_plugin_events`
--

CREATE TABLE `chatmodx_site_plugin_events` (
  `pluginid` int(10) NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int(10) NOT NULL DEFAULT '0',
  `propertyset` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_site_plugin_events`
--

INSERT INTO `chatmodx_site_plugin_events` (`pluginid`, `event`, `priority`, `propertyset`) VALUES
(1, 'msOnChangeOrderStatus', 0, 0),
(1, 'OnHandleRequest', 0, 0),
(1, 'OnLoadWebDocument', 0, 0),
(1, 'OnMODXInit', 0, 0),
(1, 'OnUserSave', 0, 0),
(1, 'OnWebPageInit', 0, 0),
(2, 'OnMODXInit', -100, 0),
(2, 'OnSiteRefresh', 0, 0),
(2, 'OnWebPagePrerender', -100, 0),
(3, 'OnManagerPageBeforeRender', 0, 0),
(3, 'OnWebPageComplete', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_site_snippets`
--

CREATE TABLE `chatmodx_site_snippets` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_site_snippets`
--

INSERT INTO `chatmodx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(1, 1, 0, 'msProducts', '', 0, 1, 0, '/** @var modX $modx */\n/** @var array $scriptProperties */\n/** @var miniShop2 $miniShop2 */\n$miniShop2 = $modx->getService(\'miniShop2\');\n$miniShop2->initialize($modx->context->key);\n/** @var pdoFetch $pdoFetch */\nif (!$modx->loadClass(\'pdofetch\', MODX_CORE_PATH . \'components/pdotools/model/pdotools/\', false, true)) {\n    return false;\n}\n$pdoFetch = new pdoFetch($modx, $scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded.\');\n\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\n\n// Start build \"where\" expression\n$where = array(\n    \'class_key\' => \'msProduct\',\n);\nif (empty($showZeroPrice)) {\n    $where[\'Data.price:>\'] = 0;\n}\n// Add grouping\n$groupby = array(\n    \'msProduct.id\',\n);\n\n// Join tables\n$leftJoin = array(\n    \'Data\' => array(\'class\' => \'msProductData\'),\n    \'Vendor\' => array(\'class\' => \'msVendor\', \'on\' => \'Data.vendor=Vendor.id\'),\n);\n\n$select = array(\n    \'msProduct\' => !empty($includeContent)\n        ? $modx->getSelectColumns(\'msProduct\', \'msProduct\')\n        : $modx->getSelectColumns(\'msProduct\', \'msProduct\', \'\', array(\'content\'), true),\n    \'Data\' => $modx->getSelectColumns(\'msProductData\', \'Data\', \'\', array(\'id\'), true),\n    \'Vendor\' => $modx->getSelectColumns(\'msVendor\', \'Vendor\', \'vendor.\', array(\'id\'), true),\n);\n\n// Include thumbnails\nif (!empty($includeThumbs)) {\n    $thumbs = array_map(\'trim\', explode(\',\', $includeThumbs));\n    foreach ($thumbs as $thumb) {\n        if (empty($thumb)) {\n            continue;\n        }\n        $leftJoin[$thumb] = array(\n            \'class\' => \'msProductFile\',\n            \'on\' => \"`{$thumb}`.product_id = msProduct.id AND `{$thumb}`.rank = 0 AND `{$thumb}`.path LIKE \'%/{$thumb}/%\'\",\n        );\n        $select[$thumb] = \"`{$thumb}`.url as `{$thumb}`\";\n        $groupby[] = \"`{$thumb}`.url\";\n    }\n}\n\n// Include linked products\n$innerJoin = array();\nif (!empty($link) && !empty($master)) {\n    $innerJoin[\'Link\'] = array(\n        \'class\' => \'msProductLink\',\n        \'on\' => \'msProduct.id = Link.slave AND Link.link = \' . $link,\n    );\n    $where[\'Link.master\'] = $master;\n} elseif (!empty($link) && !empty($slave)) {\n    $innerJoin[\'Link\'] = array(\n        \'class\' => \'msProductLink\',\n        \'on\' => \'msProduct.id = Link.master AND Link.link = \' . $link,\n    );\n    $where[\'Link.slave\'] = $slave;\n}\n\n// Add user parameters\nforeach (array(\'where\', \'leftJoin\', \'innerJoin\', \'select\', \'groupby\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Add filters by options\n$joinedOptions = array();\nif (!empty($scriptProperties[\'optionFilters\'])) {\n    $filters = json_decode($scriptProperties[\'optionFilters\'], true);\n    foreach ($filters as $key => $value) {\n        $option = preg_replace(\'#\\:.*#\', \'\', $key);\n        $key = str_replace($option, $option . \'.value\', $key);\n        if (!in_array($option, $joinedOptions)) {\n            $leftJoin[$option] = array(\n                \'class\' => \'msProductOption\',\n                \'on\' => \"`{$option}`.product_id = Data.id AND `{$option}`.key = \'{$option}\'\",\n            );\n            $joinedOptions[] = $option;\n            $where[$key] = $value;\n        }\n    }\n}\n\n// Add sort by options\nif (!empty($scriptProperties[\'sortbyOptions\'])) {\n    $sorts = array_map(\'trim\', explode(\',\', $scriptProperties[\'sortbyOptions\']));\n    foreach ($sorts as $sort) {\n        $sort = explode(\':\', $sort);\n        $option = $sort[0];\n        if (preg_match(\"#\\b{$option}\\b#\", $scriptProperties[\'sortby\'], $matches)) {\n            $type = \'string\';\n            if (isset($sort[1])) {\n                $type = $sort[1];\n            }\n            switch ($type) {\n                case \'number\':\n                case \'decimal\':\n                    $sortbyOptions = \"CAST(`{$option}`.`value` AS DECIMAL(13,3))\";\n                    break;\n                case \'int\':\n                case \'integer\':\n                    $sortbyOptions = \"CAST(`{$option}`.`value` AS UNSIGNED INTEGER)\";\n                    break;\n                case \'date\':\n                case \'datetime\':\n                    $sortbyOptions = \"CAST(`{$option}`.`value` AS DATETIME)\";\n                    break;\n                default:\n                    $sortbyOptions = \"`{$option}`.`value`\";\n                    break;\n            }\n            $scriptProperties[\'sortby\'] = preg_replace(\"#\\b{$option}\\b#\", $sortbyOptions, $scriptProperties[\'sortby\']);\n            $groupby[] = \"`{$option}`.value\";\n        }\n\n        if (!in_array($option, $joinedOptions)) {\n            $leftJoin[$option] = array(\n                \'class\' => \'msProductOption\',\n                \'on\' => \"`{$option}`.product_id = Data.id AND `{$option}`.key = \'{$option}\'\",\n            );\n            $joinedOptions[] = $option;\n        }\n\n    }\n}\n\n$default = array(\n    \'class\' => \'msProduct\',\n    \'where\' => $where,\n    \'leftJoin\' => $leftJoin,\n    \'innerJoin\' => $innerJoin,\n    \'select\' => $select,\n    \'sortby\' => \'msProduct.id\',\n    \'sortdir\' => \'ASC\',\n    \'groupby\' => implode(\', \', $groupby),\n    \'return\' => !empty($returnIds)\n        ? \'ids\'\n        : \'data\',\n    \'nestedChunkPrefix\' => \'minishop2_\',\n);\n// Merge all properties and run!\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$rows = $pdoFetch->run();\n\n// Process rows\n$output = array();\nif (!empty($rows) && is_array($rows)) {\n    $c = $modx->newQuery(\'modPluginEvent\', array(\'event:IN\' => array(\'msOnGetProductPrice\', \'msOnGetProductWeight\')));\n    $c->innerJoin(\'modPlugin\', \'modPlugin\', \'modPlugin.id = modPluginEvent.pluginid\');\n    $c->where(\'modPlugin.disabled = 0\');\n\n    $modifications = $modx->getOption(\'ms2_price_snippet\', null, false, true) ||\n        $modx->getOption(\'ms2_weight_snippet\', null, false, true) || $modx->getCount(\'modPluginEvent\', $c);\n    if ($modifications) {\n        /** @var msProductData $product */\n        $product = $modx->newObject(\'msProductData\');\n    }\n    $pdoFetch->addTime(\'Checked the active modifiers\');\n\n    $opt_time = 0;\n    foreach ($rows as $k => $row) {\n        if ($modifications) {\n            $product->fromArray($row, \'\', true, true);\n            $tmp = $row[\'price\'];\n            $row[\'price\'] = $product->getPrice($row);\n            $row[\'weight\'] = $product->getWeight($row);\n            // A discount here, so we should replace old price\n            if ($row[\'price\'] < $tmp) {\n                $row[\'old_price\'] = $tmp;\n            }\n        }\n        $row[\'price\'] = $miniShop2->formatPrice($row[\'price\']);\n        $row[\'old_price\'] = $miniShop2->formatPrice($row[\'old_price\']);\n        $row[\'weight\'] = $miniShop2->formatWeight($row[\'weight\']);\n        $row[\'idx\'] = $pdoFetch->idx++;\n\n        $opt_time_start = microtime(true);\n        $options = $modx->call(\'msProductData\', \'loadOptions\', array(&$modx, $row[\'id\']));\n        $row = array_merge($row, $options);\n        $opt_time += microtime(true) - $opt_time_start;\n\n        $tpl = $pdoFetch->defineChunk($row);\n        $output[] = $pdoFetch->getChunk($tpl, $row);\n    }\n    $pdoFetch->addTime(\'Time to load products options\', $opt_time);\n}\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"msProductsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds) && is_string($rows)) {\n    $modx->setPlaceholder(\'msProducts.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $rows);\n    } else {\n        return $rows;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    if (empty($outputSeparator)) {\n        $outputSeparator = \"\\n\";\n    }\n    $output[\'log\'] = $log;\n    $output = implode($outputSeparator, $output);\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\n            \'output\' => $output,\n        ));\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:28:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:12:\"ms2_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"tpl.msProducts.row\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:14:\"ms2_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:15:\"ms2_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:14:\"ms2_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:15:\"ms2_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"id\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"sortbyOptions\";a:7:{s:4:\"name\";s:13:\"sortbyOptions\";s:4:\"desc\";s:22:\"ms2_prop_sortbyOptions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:16:\"ms2_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:22:\"ms2_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:31:\"ms2_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:16:\"ms2_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:16:\"ms2_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:18:\"ms2_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:23:\"ms2_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:19:\"ms2_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"includeThumbs\";a:7:{s:4:\"name\";s:13:\"includeThumbs\";s:4:\"desc\";s:22:\"ms2_prop_includeThumbs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"optionFilters\";a:7:{s:4:\"name\";s:13:\"optionFilters\";s:4:\"desc\";s:22:\"ms2_prop_optionFilters\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:14:\"ms2_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:4:\"link\";a:7:{s:4:\"name\";s:4:\"link\";s:4:\"desc\";s:13:\"ms2_prop_link\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:6:\"master\";a:7:{s:4:\"name\";s:6:\"master\";s:4:\"desc\";s:15:\"ms2_prop_master\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:5:\"slave\";a:7:{s:4:\"name\";s:5:\"slave\";s:4:\"desc\";s:14:\"ms2_prop_slave\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:17:\"ms2_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:24:\"ms2_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:18:\"ms2_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:24:\"ms2_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:20:\"ms2_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:19:\"ms2_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"showZeroPrice\";a:7:{s:4:\"name\";s:13:\"showZeroPrice\";s:4:\"desc\";s:22:\"ms2_prop_showZeroPrice\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:20:\"ms2_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/minishop2/elements/snippets/snippet.ms_products.php'),
(2, 1, 0, 'msCart', '', 0, 1, 0, '/** @var modX $modx */\n/** @var array $scriptProperties */\n/** @var miniShop2 $miniShop2 */\n$miniShop2 = $modx->getService(\'miniShop2\');\n$miniShop2->initialize($modx->context->key);\n/** @var pdoFetch $pdoFetch */\nif (!$modx->loadClass(\'pdofetch\', MODX_CORE_PATH . \'components/pdotools/model/pdotools/\', false, true)) {\n    return false;\n}\n$pdoFetch = new pdoFetch($modx, $scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded.\');\n\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'tpl.msCart\');\n$cart = $miniShop2->cart->get();\n$status = $miniShop2->cart->status();\n\n// Do not show empty cart when displaying order details\nif (!empty($_GET[\'msorder\'])) {\n    return \'\';\n} elseif (empty($status[\'total_count\'])) {\n    return $pdoFetch->getChunk($tpl);\n}\n\n// Select cart products\n$where = array(\n    \'msProduct.id:IN\' => array(),\n);\nforeach ($cart as $entry) {\n    $where[\'msProduct.id:IN\'][] = $entry[\'id\'];\n}\n$where[\'msProduct.id:IN\'] = array_unique($where[\'msProduct.id:IN\']);\n\n// Include products properties\n$leftJoin = array(\n    \'Data\' => array(\n        \'class\' => \'msProductData\',\n    ),\n    \'Vendor\' => array(\n        \'class\' => \'msVendor\',\n        \'on\' => \'Data.vendor = Vendor.id\',\n    ),\n);\n\n// Select columns\n$select = array(\n    \'msProduct\' => !empty($includeContent)\n        ? $modx->getSelectColumns(\'msProduct\', \'msProduct\')\n        : $modx->getSelectColumns(\'msProduct\', \'msProduct\', \'\', array(\'content\'), true),\n    \'Data\' => $modx->getSelectColumns(\'msProductData\', \'Data\', \'\', array(\'id\'), true),\n    \'Vendor\' => $modx->getSelectColumns(\'msVendor\', \'Vendor\', \'vendor.\', array(\'id\'), true),\n);\n\n// Include products thumbnails\nif (!empty($includeThumbs)) {\n    $thumbs = array_map(\'trim\', explode(\',\', $includeThumbs));\n    if (!empty($thumbs[0])) {\n        foreach ($thumbs as $thumb) {\n            $leftJoin[$thumb] = array(\n                \'class\' => \'msProductFile\',\n                \'on\' => \"`{$thumb}`.product_id = msProduct.id AND `{$thumb}`.parent != 0 AND `{$thumb}`.path LIKE \'%/{$thumb}/%\' AND `{$thumb}`.rank = 0\",\n            );\n            $select[$thumb] = \"`{$thumb}`.url as \'{$thumb}\'\";\n        }\n        $pdoFetch->addTime(\'Included list of thumbnails: <b>\' . implode(\', \', $thumbs) . \'</b>.\');\n    }\n}\n\n// Add user parameters\nforeach (array(\'where\', \'leftJoin\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n$default = array(\n    \'class\' => \'msProduct\',\n    \'where\' => $where,\n    \'leftJoin\' => $leftJoin,\n    \'select\' => $select,\n    \'sortby\' => \'msProduct.id\',\n    \'sortdir\' => \'ASC\',\n    \'groupby\' => \'msProduct.id\',\n    \'limit\' => 0,\n    \'return\' => \'data\',\n    \'nestedChunkPrefix\' => \'minishop2_\',\n);\n// Merge all properties and run!\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\n$tmp = $pdoFetch->run();\n$rows = array();\nforeach ($tmp as $row) {\n    $rows[$row[\'id\']] = $row;\n}\n\n// Process products in cart\n$products = array();\n$total = array(\'count\' => 0, \'weight\' => 0, \'cost\' => 0);\nforeach ($cart as $key => $entry) {\n    if (!isset($rows[$entry[\'id\']])) {\n        continue;\n    }\n    $product = $rows[$entry[\'id\']];\n\n    $product[\'key\'] = $key;\n    $product[\'count\'] = $entry[\'count\'];\n    $product[\'old_price\'] = $miniShop2->formatPrice(\n        $product[\'price\'] > $entry[\'price\']\n            ? $product[\'price\']\n            : $product[\'old_price\']\n    );\n    $product[\'price\'] = $miniShop2->formatPrice($entry[\'price\']);\n    $product[\'weight\'] = $miniShop2->formatWeight($entry[\'weight\']);\n    $product[\'cost\'] = $miniShop2->formatPrice($entry[\'count\'] * $entry[\'price\']);\n\n    // Additional properties of product in cart\n    if (!empty($entry[\'options\']) && is_array($entry[\'options\'])) {\n        $product[\'options\'] = $entry[\'options\'];\n        foreach ($entry[\'options\'] as $option => $value) {\n            $product[\'option.\' . $option] = $value;\n        }\n    }\n\n    // Add option values\n    $options = $modx->call(\'msProductData\', \'loadOptions\', array(&$modx, $product[\'id\']));\n    $products[] = array_merge($product, $options);\n\n    // Count total\n    $total[\'count\'] += $entry[\'count\'];\n    $total[\'cost\'] += $entry[\'count\'] * $entry[\'price\'];\n    $total[\'weight\'] += $entry[\'count\'] * $entry[\'weight\'];\n}\n$total[\'cost\'] = $miniShop2->formatPrice($total[\'cost\']);\n$total[\'weight\'] = $miniShop2->formatWeight($total[\'weight\']);\n\n$output = $pdoFetch->getChunk($tpl, array(\n    \'total\' => $total,\n    \'products\' => $products,\n));\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"msCartLog\">\' . print_r($pdoFetch->getTime(), true) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:5:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:12:\"ms2_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"tpl.msCart\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:19:\"ms2_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"includeThumbs\";a:7:{s:4:\"name\";s:13:\"includeThumbs\";s:4:\"desc\";s:22:\"ms2_prop_includeThumbs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:22:\"ms2_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:16:\"ms2_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/minishop2/elements/snippets/snippet.ms_cart.php'),
(3, 1, 0, 'msMiniCart', '', 0, 1, 0, '/** @var modX $modx */\n/** @var array $scriptProperties */\n/** @var miniShop2 $miniShop2 */\n$miniShop2 = $modx->getService(\'miniShop2\');\n$miniShop2->initialize($modx->context->key);\n\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'tpl.msMiniCart\');\n\n$cart = $miniShop2->cart->status();\n$cart[\'total_cost\'] = $miniShop2->formatPrice($cart[\'total_cost\']);\n$cart[\'total_weight\'] = $miniShop2->formatWeight($cart[\'total_weight\']);\n\nreturn $miniShop2->pdoTools->getChunk($tpl, $cart);', 0, 'a:1:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:12:\"ms2_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:14:\"tpl.msMiniCart\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/minishop2/elements/snippets/snippet.ms_minicart.php'),
(4, 1, 0, 'msGallery', '', 0, 1, 0, '/** @var modX $modx */\n/** @var array $scriptProperties */\n/** @var miniShop2 $miniShop2 */\n$miniShop2 = $modx->getService(\'miniShop2\');\n$miniShop2->initialize($modx->context->key);\n/** @var pdoFetch $pdoFetch */\nif (!$modx->loadClass(\'pdofetch\', MODX_CORE_PATH . \'components/pdotools/model/pdotools/\', false, true)) {\n    return false;\n}\n$pdoFetch = new pdoFetch($modx, $scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded.\');\n\n$extensionsDir = $modx->getOption(\'extensionsDir\', $scriptProperties, \'components/minishop2/img/mgr/extensions/\', true);\n$limit = $modx->getOption(\'limit\', $scriptProperties, 0);\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'tpl.msGallery\');\n\n/** @var msProduct $product */\n$product = !empty($product) && $product != $modx->resource->id\n    ? $modx->getObject(\'msProduct\', $product)\n    : $modx->resource;\nif (!$product || !($product instanceof msProduct)) {\n    return \"[msGallery] The resource with id = {$product->id} is not instance of msProduct.\";\n}\n\n$where = array(\n    \'product_id\' => $product->id,\n    \'parent\' => 0,\n);\nif (!empty($filetype)) {\n    $where[\'type:IN\'] = array_map(\'trim\', explode(\',\', $filetype));\n}\nif (empty($showInactive)) {\n    $where[\'active\'] = 1;\n}\n$select = array(\n    \'msProductFile\' => \'*\',\n);\n\n// Add user parameters\nforeach (array(\'where\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n$default = array(\n    \'class\' => \'msProductFile\',\n    \'where\' => $where,\n    \'select\' => $select,\n    \'limit\' => $limit,\n    \'sortby\' => \'rank\',\n    \'sortdir\' => \'ASC\',\n    \'fastMode\' => false,\n    \'return\' => \'data\',\n    \'nestedChunkPrefix\' => \'minishop2_\',\n);\n// Merge all properties and run!\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$rows = $pdoFetch->run();\n\n$pdoFetch->addTime(\'Fetching thumbnails\');\n\n$resolution = array();\n/** @var msProductData $data */\nif ($data = $product->getOne(\'Data\')) {\n    if ($data->initializeMediaSource()) {\n        $properties = $data->mediaSource->getProperties();\n        if (isset($properties[\'thumbnails\'][\'value\'])) {\n            $fileTypes = json_decode($properties[\'thumbnails\'][\'value\'], true);\n            foreach ($fileTypes as $k => $v) {\n                if (!is_numeric($k)) {\n                    $resolution[] = $k;\n                } elseif (!empty($v[\'name\'])) {\n                    $resolution[] = $v[\'name\'];\n                } else {\n                    $resolution[] = @$v[\'w\'] . \'x\' . @$v[\'h\'];\n                }\n            }\n        }\n    }\n}\n\n// Processing rows\n$files = array();\nforeach ($rows as $row) {\n    if (isset($row[\'type\']) && $row[\'type\'] == \'image\') {\n        $c = $modx->newQuery(\'msProductFile\', array(\'parent\' => $row[\'id\']));\n        $c->select(\'product_id,url\');\n        $tstart = microtime(true);\n        if ($c->prepare() && $c->stmt->execute()) {\n            $modx->queryTime += microtime(true) - $tstart;\n            $modx->executedQueries++;\n            while ($tmp = $c->stmt->fetch(PDO::FETCH_ASSOC)) {\n                if (preg_match(\"#/{$tmp[\'product_id\']}/(.*?)/#\", $tmp[\'url\'], $size)) {\n                    $row[$size[1]] = $tmp[\'url\'];\n                }\n            }\n        }\n    } elseif (isset($row[\'type\'])) {\n        $row[\'thumbnail\'] =\n        $row[\'url\'] = file_exists(MODX_ASSETS_PATH . $extensionsDir . $row[\'type\'] . \'.png\')\n            ? MODX_ASSETS_URL . $extensionsDir . $row[\'type\'] . \'.png\'\n            : MODX_ASSETS_URL . $extensionsDir . \'other.png\';\n        foreach ($resolution as $v) {\n            $row[$v] = $row[\'thumbnail\'];\n        }\n    }\n\n    $files[] = $row;\n}\n\n$output = $pdoFetch->getChunk($tpl, array(\n    \'files\' => $files,\n));\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"msGalleryLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:10:{s:7:\"product\";a:7:{s:4:\"name\";s:7:\"product\";s:4:\"desc\";s:16:\"ms2_prop_product\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:12:\"ms2_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:13:\"tpl.msGallery\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:14:\"ms2_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:15:\"ms2_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:15:\"ms2_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"rank\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:16:\"ms2_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:22:\"ms2_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:16:\"ms2_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:14:\"ms2_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:8:\"filetype\";a:7:{s:4:\"name\";s:8:\"filetype\";s:4:\"desc\";s:17:\"ms2_prop_filetype\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/minishop2/elements/snippets/snippet.ms_gallery.php'),
(5, 1, 0, 'msOptions', '', 0, 1, 0, '/** @var modX $modx */\n/** @var array $scriptProperties */\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'tpl.msOptions\');\nif (!empty($input) && empty($product)) {\n    $product = $input;\n}\nif (!empty($name) && empty($options)) {\n    $options = $name;\n}\n\n$product = !empty($product) && $product != $modx->resource->id\n    ? $modx->getObject(\'msProduct\', $product)\n    : $modx->resource;\nif (!($product instanceof msProduct)) {\n    return \"[msOptions] The resource with id = {$product->id} is not instance of msProduct.\";\n}\n\n$names = array_map(\'trim\', explode(\',\', $options));\n$options = array();\nforeach ($names as $name) {\n    if (!empty($name) && $option = $product->get($name)) {\n        if (!is_array($option)) {\n            $option = array($option);\n        }\n        if (!empty($option[0])) {\n            $options[$name] = $option;\n        }\n    }\n}\n\n/** @var pdoTools $pdoTools */\n$pdoTools = $modx->getService(\'pdoTools\');\n\nreturn $pdoTools->getChunk($tpl, array(\n    \'id\' => $product->id,\n    \'options\' => $options,\n));', 0, 'a:3:{s:7:\"product\";a:7:{s:4:\"name\";s:7:\"product\";s:4:\"desc\";s:16:\"ms2_prop_product\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:7:\"options\";a:7:{s:4:\"name\";s:7:\"options\";s:4:\"desc\";s:16:\"ms2_prop_options\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:12:\"ms2_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:13:\"tpl.msOptions\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/minishop2/elements/snippets/snippet.ms_options.php'),
(6, 1, 0, 'msOrder', '', 0, 1, 0, '/** @var modX $modx */\n/** @var array $scriptProperties */\n/** @var miniShop2 $miniShop2 */\n$miniShop2 = $modx->getService(\'miniShop2\');\n$miniShop2->initialize($modx->context->key);\n/** @var pdoFetch $pdoFetch */\nif (!$modx->loadClass(\'pdofetch\', MODX_CORE_PATH . \'components/pdotools/model/pdotools/\', false, true)) {\n    return false;\n}\n$pdoFetch = new pdoFetch($modx, $scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded.\');\n\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'tpl.msOrder\');\n\n// Do not show order form when displaying details of existing order\nif (!empty($_GET[\'msorder\'])) {\n    return \'\';\n}\n\n$cart = $miniShop2->cart->get();\n$order = $miniShop2->order->get();\n$status = $miniShop2->cart->status();\nif (empty($status[\'total_count\'])) {\n    return \'\';\n}\n$cost = $miniShop2->order->getCost();\n$order[\'cost\'] = $miniShop2->formatPrice($cost[\'data\'][\'cost\']);\n\n// We need only active methods\n$where = array(\n    \'msDelivery.active\' => true,\n    \'msPayment.active\' => true,\n);\n\n// Join payments to deliveries\n$leftJoin = array(\n    \'Payments\' => array(\n        \'class\' => \'msDeliveryMember\',\n    ),\n    \'msPayment\' => array(\n        \'class\' => \'msPayment\',\n        \'on\' => \'Payments.payment_id = msPayment.id\',\n    ),\n);\n\n// Select columns\n$select = array(\n    \'msDelivery\' => $modx->getSelectColumns(\'msDelivery\', \'msDelivery\', \'delivery_\'),\n    \'msPayment\' => $modx->getSelectColumns(\'msPayment\', \'msPayment\', \'payment_\'),\n);\n\n// Add user parameters\nforeach (array(\'where\', \'leftJoin\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => \'msDelivery\',\n    \'where\' => $where,\n    \'leftJoin\' => $leftJoin,\n    \'select\' => $select,\n    \'sortby\' => \'msDelivery.rank asc, msPayment.rank\',\n    \'sortdir\' => \'asc\',\n    \'limit\' => 0,\n    \'return\' => \'data\',\n    \'nestedChunkPrefix\' => \'minishop2_\',\n);\n// Merge all properties and run!\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$rows = $pdoFetch->run();\n\n$deliveries = $payments = array();\nforeach ($rows as $row) {\n    $delivery = array();\n    $payment = array();\n    foreach ($row as $key => $value) {\n        if (strpos($key, \'delivery_\') === 0) {\n            $delivery[substr($key, 9)] = $value;\n        } else {\n            $payment[substr($key, 8)] = $value;\n        }\n    }\n\n    if (!isset($deliveries[$delivery[\'id\']])) {\n        $delivery[\'payments\'] = array();\n        $deliveries[$delivery[\'id\']] = $delivery;\n    }\n    if (!empty($payment[\'id\'])) {\n        $deliveries[$delivery[\'id\']][\'payments\'][] = (int)$payment[\'id\'];\n        if (!isset($payments[$payment[\'id\']])) {\n            $payments[$payment[\'id\']] = $payment;\n        }\n    }\n}\n\n$form = array();\n// Get user data\n$profile = array();\nif ($modx->user->isAuthenticated($modx->context->key)) {\n    $profile = array_merge($modx->user->Profile->toArray(), $modx->user->toArray());\n}\n$fields = array(\n    \'receiver\' => \'fullname\',\n    \'phone\' => \'phone\',\n    \'email\' => \'email\',\n    \'comment\' => \'extended[comment]\',\n    \'index\' => \'zip\',\n    \'country\' => \'country\',\n    \'region\' => \'state\',\n    \'city\' => \'city\',\n    \'street\' => \'address\',\n    \'building\' => \'extended[building]\',\n    \'room\' => \'extended[room]\',\n);\n// Apply custom fields\nif (!empty($userFields)) {\n    if (!is_array($userFields)) {\n        $userFields = json_decode($userFields, true);\n    }\n    if (is_array($userFields)) {\n        $fields = array_merge($fields, $userFields);\n    }\n}\n// Set user fields\nforeach ($fields as $key => $value) {\n    if (!empty($profile) && !empty($value)) {\n        if (strpos($value, \'extended\') !== false) {\n            $tmp = substr($value, 9, -1);\n            $value = !empty($profile[\'extended\'][$tmp])\n                ? $profile[\'extended\'][$tmp]\n                : \'\';\n        } else {\n            $value = $profile[$value];\n        }\n        $response = $miniShop2->order->add($key, $value);\n        if ($response[\'success\'] && !empty($response[\'data\'][$key])) {\n            $form[$key] = $response[\'data\'][$key];\n        }\n    }\n    if (empty($form[$key]) && !empty($order[$key])) {\n        $form[$key] = $order[$key];\n        unset($order[$key]);\n    }\n}\n\n// Check for errors\n$errors = array();\nif (!empty($_POST)) {\n    $response = $miniShop2->order->getDeliveryRequiresFields();\n    if ($requires = $response[\'data\'][\'requires\']) {\n        foreach ($_POST as $field => $val) {\n            $validated = $miniShop2->order->validate($field, $val);\n            if ((in_array($field, $requires) && empty($validated))) {\n                $errors[] = $field;\n            }\n        }\n    }\n\n}\n\n$output = $pdoFetch->getChunk($tpl, array(\n    \'order\' => $order,\n    \'form\' => $form,\n    \'deliveries\' => $deliveries,\n    \'payments\' => $payments,\n    \'errors\' => $errors,\n));\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"msOrderLog\">\' . print_r($pdoFetch->getTime(), true) . \'</pre>\';\n}\n\nreturn $output;', 0, 'a:3:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:12:\"ms2_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:11:\"tpl.msOrder\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:10:\"userFields\";a:7:{s:4:\"name\";s:10:\"userFields\";s:4:\"desc\";s:19:\"ms2_prop_userFields\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:16:\"ms2_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/minishop2/elements/snippets/snippet.ms_order.php'),
(7, 1, 0, 'msGetOrder', '', 0, 1, 0, '/** @var modX $modx */\n/** @var array $scriptProperties */\n/** @var miniShop2 $miniShop2 */\n$miniShop2 = $modx->getService(\'miniShop2\');\n$miniShop2->initialize($modx->context->key);\n/** @var pdoFetch $pdoFetch */\nif (!$modx->loadClass(\'pdofetch\', MODX_CORE_PATH . \'components/pdotools/model/pdotools/\', false, true)) {\n    return false;\n}\n$pdoFetch = new pdoFetch($modx, $scriptProperties);\n$pdoFetch->addTime(\'pdoTools loaded.\');\n\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'tpl.msGetOrder\');\n\nif (empty($id) && !empty($_GET[\'msorder\'])) {\n    $id = (int)$_GET[\'msorder\'];\n}\nif (empty($id)) {\n    return;\n}\n/** @var msOrder $order */\nif (!$order = $modx->getObject(\'msOrder\', $id)) {\n    return $modx->lexicon(\'ms2_err_order_nf\');\n}\n$canView = (!empty($_SESSION[\'minishop2\'][\'orders\']) && in_array($id, $_SESSION[\'minishop2\'][\'orders\'])) ||\n    $order->get(\'user_id\') == $modx->user->id || $modx->user->hasSessionContext(\'mgr\') || !empty($scriptProperties[\'id\']);\nif (!$canView) {\n    return \'\';\n}\n\n// Select ordered products\n$where = array(\n    \'msOrderProduct.order_id\' => $id,\n);\n\n// Include products properties\n$leftJoin = array(\n    \'msProduct\' => array(\n        \'class\' => \'msProduct\',\n        \'on\' => \'msProduct.id = msOrderProduct.product_id\',\n    ),\n    \'Data\' => array(\n        \'class\' => \'msProductData\',\n        \'on\' => \'msProduct.id = Data.id\',\n    ),\n    \'Vendor\' => array(\n        \'class\' => \'msVendor\',\n        \'on\' => \'Data.vendor = Vendor.id\',\n    ),\n);\n\n// Select columns\n$select = array(\n    \'msProduct\' => !empty($includeContent)\n        ? $modx->getSelectColumns(\'msProduct\', \'msProduct\')\n        : $modx->getSelectColumns(\'msProduct\', \'msProduct\', \'\', array(\'content\'), true),\n    \'Data\' => $modx->getSelectColumns(\'msProductData\', \'Data\', \'\', array(\'id\'),\n            true) . \',`Data`.`price` as `original_price`\',\n    \'Vendor\' => $modx->getSelectColumns(\'msVendor\', \'Vendor\', \'vendor.\', array(\'id\'), true),\n    \'OrderProduct\' => $modx->getSelectColumns(\'msOrderProduct\', \'msOrderProduct\', \'\', array(\'id\'), true),\n);\n\n// Include products thumbnails\nif (!empty($includeThumbs)) {\n    $thumbs = array_map(\'trim\', explode(\',\', $includeThumbs));\n    if (!empty($thumbs[0])) {\n        foreach ($thumbs as $thumb) {\n            $leftJoin[$thumb] = array(\n                \'class\' => \'msProductFile\',\n                \'on\' => \"`{$thumb}`.product_id = msProduct.id AND `{$thumb}`.parent != 0 AND `{$thumb}`.path LIKE \'%/{$thumb}/%\'\",\n            );\n            $select[$thumb] = \"`{$thumb}`.url as \'{$thumb}\'\";\n        }\n        $pdoFetch->addTime(\'Included list of thumbnails: <b>\' . implode(\', \', $thumbs) . \'</b>.\');\n    }\n}\n\n// Add user parameters\nforeach (array(\'where\', \'leftJoin\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Tables for joining\n$default = array(\n    \'class\' => \'msOrderProduct\',\n    \'where\' => $where,\n    \'leftJoin\' => $leftJoin,\n    \'select\' => $select,\n    \'joinTVsTo\' => \'msProduct\',\n    \'sortby\' => \'msOrderProduct.id\',\n    \'sortdir\' => \'asc\',\n    \'groupby\' => \'msOrderProduct.id\',\n    \'fastMode\' => false,\n    \'limit\' => 0,\n    \'return\' => \'data\',\n    \'decodeJSON\' => true,\n    \'nestedChunkPrefix\' => \'minishop2_\',\n);\n// Merge all properties and run!\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), true);\n$rows = $pdoFetch->run();\n\n$products = array();\n$cart_count = 0;\nforeach ($rows as $product) {\n    $product[\'old_price\'] = $miniShop2->formatPrice(\n        $product[\'original_price\'] > $product[\'price\']\n            ? $product[\'original_price\']\n            : $product[\'old_price\']\n    );\n    $product[\'price\'] = $miniShop2->formatPrice($product[\'price\']);\n    $product[\'cost\'] = $miniShop2->formatPrice($product[\'cost\']);\n    $product[\'weight\'] = $miniShop2->formatWeight($product[\'weight\']);\n\n    $product[\'id\'] = (int)$product[\'id\'];\n    if (empty($product[\'name\'])) {\n        $product[\'name\'] = $product[\'pagetitle\'];\n    } else {\n        $product[\'pagetitle\'] = $product[\'name\'];\n    }\n\n    // Additional properties of product\n    if (!empty($product[\'options\']) && is_array($product[\'options\'])) {\n        foreach ($product[\'options\'] as $option => $value) {\n            $product[\'option.\' . $option] = $value;\n        }\n    }\n\n    // Add option values\n    $options = $modx->call(\'msProductData\', \'loadOptions\', array(&$modx, $product[\'id\']));\n    $products[] = array_merge($product, $options);\n\n    // Count total\n    $cart_count += $product[\'count\'];\n}\n\n$total = array(\n    \'cost\' => $miniShop2->formatPrice($order->get(\'cost\')),\n    \'cart_cost\' => $miniShop2->formatPrice($order->get(\'cart_cost\')),\n    \'delivery_cost\' => $miniShop2->formatPrice($order->get(\'delivery_cost\')),\n    \'weight\' => $miniShop2->formatWeight($order->get(\'weight\')),\n    \'cart_weight\' => $miniShop2->formatWeight($order->get(\'weight\')),\n    \'cart_count\' => $cart_count,\n);\n\n$output = $pdoFetch->getChunk($tpl, array_merge($scriptProperties, array(\n    \'order\' => $order->toArray(),\n    \'products\' => $products,\n    \'user\' => ($tmp = $order->getOne(\'User\'))\n        ? array_merge($tmp->getOne(\'Profile\')->toArray(), $tmp->toArray())\n        : array(),\n    \'address\' => ($tmp = $order->getOne(\'Address\'))\n        ? $tmp->toArray()\n        : array(),\n    \'delivery\' => ($tmp = $order->getOne(\'Delivery\'))\n        ? $tmp->toArray()\n        : array(),\n    \'payment\' => ($tmp = $order->getOne(\'Payment\'))\n        ? $tmp->toArray()\n        : array(),\n    \'total\' => $total,\n)));\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"msGetOrderLog\">\' . print_r($pdoFetch->getTime(), true) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:5:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:12:\"ms2_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:14:\"tpl.msGetOrder\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:19:\"ms2_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"includeThumbs\";a:7:{s:4:\"name\";s:13:\"includeThumbs\";s:4:\"desc\";s:22:\"ms2_prop_includeThumbs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:22:\"ms2_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:16:\"ms2_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/minishop2/elements/snippets/snippet.ms_get_order.php');
INSERT INTO `chatmodx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(8, 1, 0, 'msProductOptions', '', 0, 1, 0, '/** @var modX $modx */\n/** @var array $scriptProperties */\n\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'tpl.msOptions\');\nif (!empty($input) && empty($product)) {\n    $product = $input;\n}\n\n$product = !empty($product) && $product != $modx->resource->id\n    ? $modx->getObject(\'msProduct\', $product)\n    : $modx->resource;\nif (!($product instanceof msProduct)) {\n    return \"[msProductOptions] The resource with id = {$product->id} is not instance of msProduct.\";\n}\n\n$ignoreOptions = array_map(\'trim\', explode(\',\', $modx->getOption(\'ignoreOptions\', $scriptProperties, \'\')));\n$onlyOptions = array_map(\'trim\', explode(\',\', $modx->getOption(\'onlyOptions\', $scriptProperties, \'\')));\n$groups = !empty($groups)\n    ? array_map(\'trim\', explode(\',\', $groups))\n    : array();\n/** @var msProductData $data */\nif ($data = $product->getOne(\'Data\')) {\n    $optionKeys = $data->getOptionKeys();\n}\nif (empty($optionKeys)) {\n    return \'\';\n}\n$productData = $product->loadOptions();\n\n$options = array();\nforeach ($optionKeys as $key) {\n    // Filter by key\n    if (!empty($onlyOptions) && $onlyOptions[0] != \'\' && !in_array($key, $onlyOptions)) {\n        continue;\n    } elseif (in_array($key, $ignoreOptions)) {\n        continue;\n    }\n    $option = array();\n    foreach ($productData as $dataKey => $dataValue) {\n        $dataKey = explode(\'.\', $dataKey);\n        if ($dataKey[0] == $key && (count($dataKey) > 1)) {\n            $option[$dataKey[1]] = $dataValue;\n        }\n    }\n    $option[\'value\'] = $product->get($key);\n\n    // Filter by groups\n    $skip = !empty($groups) && !in_array($option[\'category\'], $groups) && !in_array($option[\'category_name\'], $groups);\n    if ($skip || empty($option[\'value\'])) {\n        continue;\n    }\n    $options[$key] = $option;\n}\n\n/** @var pdoTools $pdoTools */\n$pdoTools = $modx->getService(\'pdoTools\');\n\nreturn $pdoTools->getChunk($tpl, array(\n    \'options\' => $options,\n));', 0, 'a:5:{s:7:\"product\";a:7:{s:4:\"name\";s:7:\"product\";s:4:\"desc\";s:16:\"ms2_prop_product\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:12:\"ms2_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"tpl.msProductOptions\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:13:\"ignoreOptions\";a:7:{s:4:\"name\";s:13:\"ignoreOptions\";s:4:\"desc\";s:22:\"ms2_prop_ignoreOptions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:11:\"onlyOptions\";a:7:{s:4:\"name\";s:11:\"onlyOptions\";s:4:\"desc\";s:20:\"ms2_prop_onlyOptions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}s:6:\"groups\";a:7:{s:4:\"name\";s:6:\"groups\";s:4:\"desc\";s:15:\"ms2_prop_groups\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:20:\"minishop2:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/minishop2/elements/snippets/snippet.ms_product_options.php'),
(9, 1, 0, 'pdoResources', '', 0, 2, 0, '/** @var array $scriptProperties */\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\nif (!empty($returnIds)) {\n    $scriptProperties[\'return\'] = \'ids\';\n}\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = array();\nif (isset($this) && $this instanceof modSnippet) {\n    $properties = $this->get(\'properties\');\n}\nelseif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoResources\'))) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\n\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoResourcesLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds)) {\n    $modx->setPlaceholder(\'pdoResources.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array_merge($additionalPlaceholders, array(\'output\' => $output)),\n            $pdoFetch->config[\'fastMode\']);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:47:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:11:\"publishedon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tvFilters\";a:7:{s:4:\"name\";s:9:\"tvFilters\";s:4:\"desc\";s:23:\"pdotools_prop_tvFilters\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:21:\"tvFiltersAndDelimiter\";a:7:{s:4:\"name\";s:21:\"tvFiltersAndDelimiter\";s:4:\"desc\";s:35:\"pdotools_prop_tvFiltersAndDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\",\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:20:\"tvFiltersOrDelimiter\";a:7:{s:4:\"name\";s:20:\"tvFiltersOrDelimiter\";s:4:\"desc\";s:34:\"pdotools_prop_tvFiltersOrDelimiter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:2:\"||\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"loadModels\";a:7:{s:4:\"name\";s:10:\"loadModels\";s:4:\"desc\";s:24:\"pdotools_prop_loadModels\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoresources.php'),
(10, 1, 0, 'pdoUsers', '', 0, 2, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$class = \'modUser\';\n$profile = \'modUserProfile\';\n$member = \'modUserGroupMember\';\n\n// Start building \"Where\" expression\n$where = array();\nif (empty($showInactive)) {\n    $where[$class . \'.active\'] = 1;\n}\nif (empty($showBlocked)) {\n    $where[$profile . \'.blocked\'] = 0;\n}\n\n// Add users profiles and groups\n$innerJoin = array(\n    $profile => array(\'alias\' => $profile, \'on\' => \"$class.id = $profile.internalKey\"),\n);\n\n// Filter by users, groups and roles\n$tmp = array(\n    \'users\' => array(\n        \'class\' => $class,\n        \'name\' => \'username\',\n        \'join\' => $class . \'.id\',\n    ),\n    \'groups\' => array(\n        \'class\' => \'modUserGroup\',\n        \'name\' => \'name\',\n        \'join\' => $member . \'.user_group\',\n    ),\n    \'roles\' => array(\n        \'class\' => \'modUserGroupRole\',\n        \'name\' => \'name\',\n        \'join\' => $member . \'.role\',\n    ),\n);\nforeach ($tmp as $k => $p) {\n    if (!empty($$k)) {\n        $$k = array_map(\'trim\', explode(\',\', $$k));\n        ${$k . \'_in\'} = ${$k . \'_out\'} = $fetch_in = $fetch_out = array();\n        foreach ($$k as $v) {\n            if (is_numeric($v)) {\n                if ($v[0] == \'-\') {\n                    ${$k . \'_out\'}[] = abs($v);\n                } else {\n                    ${$k . \'_in\'}[] = abs($v);\n                }\n            } else {\n                if ($v[0] == \'-\') {\n                    $fetch_out[] = $v;\n                } else {\n                    $fetch_in[] = $v;\n                }\n            }\n        }\n\n        if (!empty($fetch_in) || !empty($fetch_out)) {\n            $q = $modx->newQuery($p[\'class\'], array($p[\'name\'] . \':IN\' => array_merge($fetch_in, $fetch_out)));\n            $q->select(\'id,\' . $p[\'name\']);\n            $tstart = microtime(true);\n            if ($q->prepare() && $q->stmt->execute()) {\n                $modx->queryTime += microtime(true) - $tstart;\n                $modx->executedQueries++;\n                while ($row = $q->stmt->fetch(PDO::FETCH_ASSOC)) {\n                    if (in_array($row[$p[\'name\']], $fetch_in)) {\n                        ${$k . \'_in\'}[] = $row[\'id\'];\n                    } else {\n                        ${$k . \'_out\'}[] = $row[\'id\'];\n                    }\n                }\n            }\n        }\n\n        if (!empty(${$k . \'_in\'})) {\n            $where[$p[\'join\'] . \':IN\'] = ${$k . \'_in\'};\n        }\n        if (!empty(${$k . \'_out\'})) {\n            $where[$p[\'join\'] . \':NOT IN\'] = ${$k . \'_out\'};\n        }\n    }\n}\n\nif (!empty($groups_in) || !empty($groups_out) || !empty($roles_in) || !empty($roles_out)) {\n    $innerJoin[$member] = array(\'alias\' => $member, \'on\' => \"$class.id = $member.member\");\n}\n\n// Fields to select\n$select = array(\n    $profile => implode(\',\', array_keys($modx->getFieldMeta($profile))),\n    $class => implode(\',\', array_keys($modx->getFieldMeta($class))),\n);\n\n// Add custom parameters\nforeach (array(\'where\', \'innerJoin\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n$default = array(\n    \'class\' => $class,\n    \'innerJoin\' => json_encode($innerJoin),\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'groupby\' => $class . \'.id\',\n    \'sortby\' => $class . \'.id\',\n    \'sortdir\' => \'ASC\',\n    \'fastMode\' => false,\n    \'return\' => !empty($returnIds) ? \'ids\' : \'chunks\',\n    \'disableConditions\' => true,\n);\n\nif (!empty($users_in) && (empty($scriptProperties[\'sortby\']) || $scriptProperties[\'sortby\'] == $class . \'.id\')) {\n    $scriptProperties[\'sortby\'] = \"find_in_set(`$class`.`id`,\'\" . implode(\',\', $users_in) . \"\')\";\n    $scriptProperties[\'sortdir\'] = \'\';\n}\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$output = $pdoFetch->run();\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoUsersLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\n// Return output\nif (!empty($returnIds)) {\n    $modx->setPlaceholder(\'pdoUsers.log\', $log);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n} elseif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output), $pdoFetch->config[\'fastMode\']);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:30:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"returnIds\";a:7:{s:4:\"name\";s:9:\"returnIds\";s:4:\"desc\";s:23:\"pdotools_prop_returnIds\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"modUser.id\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"groups\";a:7:{s:4:\"name\";s:6:\"groups\";s:4:\"desc\";s:20:\"pdotools_prop_groups\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"roles\";a:7:{s:4:\"name\";s:5:\"roles\";s:4:\"desc\";s:19:\"pdotools_prop_roles\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"users\";a:7:{s:4:\"name\";s:5:\"users\";s:4:\"desc\";s:19:\"pdotools_prop_users\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"showInactive\";a:7:{s:4:\"name\";s:12:\"showInactive\";s:4:\"desc\";s:26:\"pdotools_prop_showInactive\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showBlocked\";a:7:{s:4:\"name\";s:11:\"showBlocked\";s:4:\"desc\";s:25:\"pdotools_prop_showBlocked\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"idx\";a:7:{s:4:\"name\";s:3:\"idx\";s:4:\"desc\";s:17:\"pdotools_prop_idx\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"first\";a:7:{s:4:\"name\";s:5:\"first\";s:4:\"desc\";s:19:\"pdotools_prop_first\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"last\";a:7:{s:4:\"name\";s:4:\"last\";s:4:\"desc\";s:18:\"pdotools_prop_last\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplFirst\";a:7:{s:4:\"name\";s:8:\"tplFirst\";s:4:\"desc\";s:22:\"pdotools_prop_tplFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplLast\";a:7:{s:4:\"name\";s:7:\"tplLast\";s:4:\"desc\";s:21:\"pdotools_prop_tplLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplOdd\";a:7:{s:4:\"name\";s:6:\"tplOdd\";s:4:\"desc\";s:20:\"pdotools_prop_tplOdd\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplCondition\";a:7:{s:4:\"name\";s:12:\"tplCondition\";s:4:\"desc\";s:26:\"pdotools_prop_tplCondition\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplOperator\";a:7:{s:4:\"name\";s:11:\"tplOperator\";s:4:\"desc\";s:25:\"pdotools_prop_tplOperator\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:10:{i:0;a:2:{s:4:\"text\";s:11:\"is equal to\";s:5:\"value\";s:2:\"==\";}i:1;a:2:{s:4:\"text\";s:15:\"is not equal to\";s:5:\"value\";s:2:\"!=\";}i:2;a:2:{s:4:\"text\";s:9:\"less than\";s:5:\"value\";s:1:\"<\";}i:3;a:2:{s:4:\"text\";s:21:\"less than or equal to\";s:5:\"value\";s:2:\"<=\";}i:4;a:2:{s:4:\"text\";s:24:\"greater than or equal to\";s:5:\"value\";s:2:\">=\";}i:5;a:2:{s:4:\"text\";s:8:\"is empty\";s:5:\"value\";s:5:\"empty\";}i:6;a:2:{s:4:\"text\";s:12:\"is not empty\";s:5:\"value\";s:6:\"!empty\";}i:7;a:2:{s:4:\"text\";s:7:\"is null\";s:5:\"value\";s:4:\"null\";}i:8;a:2:{s:4:\"text\";s:11:\"is in array\";s:5:\"value\";s:7:\"inarray\";}i:9;a:2:{s:4:\"text\";s:10:\"is between\";s:5:\"value\";s:7:\"between\";}}s:5:\"value\";s:2:\"==\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"conditionalTpls\";a:7:{s:4:\"name\";s:15:\"conditionalTpls\";s:4:\"desc\";s:29:\"pdotools_prop_conditionalTpls\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdousers.php'),
(11, 1, 0, 'pdoCrumbs', '', 0, 2, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (!isset($from) || $from == \'\') {\n    $from = 0;\n}\nif (empty($to)) {\n    $to = $modx->resource->id;\n}\nif (empty($direction)) {\n    $direction = \'ltr\';\n}\nif ($outputSeparator == \'&nbsp;&rarr;&nbsp;\' && $direction == \'rtl\') {\n    $outputSeparator = \'&nbsp;&larr;&nbsp;\';\n}\nif ($limit == \'\') {\n    $limit = 10;\n}\n// For compatibility with BreadCrumb\nif (!empty($maxCrumbs)) {\n    $limit = $maxCrumbs;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($currentCrumbTpl)) {\n    $tplCurrent = $currentCrumbTpl;\n}\nif (!empty($linkCrumbTpl)) {\n    $scriptProperties[\'tpl\'] = $linkCrumbTpl;\n}\nif (!empty($maxCrumbTpl)) {\n    $tplMax = $maxCrumbTpl;\n}\nif (isset($showBreadCrumbsAtHome)) {\n    $showAtHome = $showBreadCrumbsAtHome;\n}\nif (isset($showHomeCrumb)) {\n    $showHome = $showHomeCrumb;\n}\nif (isset($showCurrentCrumb)) {\n    $showCurrent = $showCurrentCrumb;\n}\n// --\n$fastMode = !empty($fastMode);\n$siteStart = $modx->getOption(\'siteStart\', $scriptProperties, $modx->getOption(\'site_start\'));\n\nif (empty($showAtHome) && $modx->resource->id == $siteStart) {\n    return \'\';\n}\n\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\');\n// Start building \"Where\" expression\n$where = array();\nif (empty($showUnpublished) && empty($showUnPub)) {\n    $where[\'published\'] = 1;\n}\nif (empty($showHidden)) {\n    $where[\'hidemenu\'] = 0;\n}\nif (empty($showDeleted)) {\n    $where[\'deleted\'] = 0;\n}\nif (!empty($hideContainers) && empty($showContainer)) {\n    $where[\'isfolder\'] = 0;\n}\n\n$resource = ($to == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $to);\n\nif (!$resource) {\n    $message = \'Could not build breadcrumbs to resource \"\' . $to . \'\"\';\n\n    return \'\';\n}\n\n$parents = $modx->getParentIds($resource->id, $limit, array(\'context\' => $resource->get(\'context_key\')));\nif (!empty($showHome)) {\n    $parents[] = $siteStart;\n}\n\n$ids = array($resource->id);\nforeach ($parents as $parent) {\n    if (!empty($parent)) {\n        $ids[] = $parent;\n    }\n    if (!empty($from) && $parent == $from) {\n        break;\n    }\n}\n$where[\'id:IN\'] = $ids;\n\nif (!empty($exclude)) {\n    $where[\'id:NOT IN\'] = array_map(\'trim\', explode(\',\', $exclude));\n}\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$select = array($class => implode(\',\', $resourceColumns));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'groupby\' => $class . \'.id\',\n    \'sortby\' => \"find_in_set(`$class`.`id`,\'\" . implode(\',\', $ids) . \"\')\",\n    \'sortdir\' => \'\',\n    \'return\' => \'data\',\n    \'totalVar\' => \'pdocrumbs.total\',\n    \'disableConditions\' => true,\n);\n\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n$rows = $pdoFetch->run();\n\n$output = array();\nif (!empty($rows) && is_array($rows)) {\n    if (strtolower($direction) == \'ltr\') {\n        $rows = array_reverse($rows);\n    }\n\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n            $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $row = array_merge(\n            $scriptProperties,\n            $row,\n            array(\'idx\' => $pdoFetch->idx++)\n        );\n        if (empty($row[\'menutitle\'])) {\n            $row[\'menutitle\'] = $row[\'pagetitle\'];\n        }\n\n        if ($row[\'id\'] == $resource->id && empty($showCurrent)) {\n            continue;\n        } elseif ($row[\'id\'] == $resource->id && !empty($tplCurrent)) {\n            $tpl = $tplCurrent;\n        } elseif ($row[\'id\'] == $siteStart && !empty($tplHome)) {\n            $tpl = $tplHome;\n        } else {\n            $tpl = $pdoFetch->defineChunk($row);\n        }\n        $output[] = empty($tpl)\n            ? \'<pre>\' . $pdoFetch->getChunk(\'\', $row) . \'</pre>\'\n            : $pdoFetch->getChunk($tpl, $row, $fastMode);\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\nif (count($output) == 1 && !empty($hideSingle)) {\n    $pdoFetch->addTime(\'The only result was hidden, because the parameter \"hideSingle\" activated\');\n    $output = array();\n}\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoCrumbsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    $output = implode($outputSeparator, $output);\n    if ($pdoFetch->idx >= $limit && !empty($tplMax) && !empty($output)) {\n        $output = ($direction == \'ltr\')\n            ? $pdoFetch->getChunk($tplMax, array(), $fastMode) . $output\n            : $output . $pdoFetch->getChunk($tplMax, array(), $fastMode);\n    }\n    $output .= $log;\n\n    if (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n        $output = $pdoFetch->getChunk($tplWrapper, array(\'output\' => $output, \'crumbs\' => $output), $fastMode);\n    }\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:30:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"from\";a:7:{s:4:\"name\";s:4:\"from\";s:4:\"desc\";s:18:\"pdotools_prop_from\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:2:\"to\";a:7:{s:4:\"name\";s:2:\"to\";s:4:\"desc\";s:16:\"pdotools_prop_to\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:55:\"@INLINE <li><a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplCurrent\";a:7:{s:4:\"name\";s:10:\"tplCurrent\";s:4:\"desc\";s:24:\"pdotools_prop_tplCurrent\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:46:\"@INLINE <li class=\"active\">[[+menutitle]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplMax\";a:7:{s:4:\"name\";s:6:\"tplMax\";s:4:\"desc\";s:20:\"pdotools_prop_tplMax\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:49:\"@INLINE <li class=\"disabled\">&nbsp;...&nbsp;</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHome\";a:7:{s:4:\"name\";s:7:\"tplHome\";s:4:\"desc\";s:21:\"pdotools_prop_tplHome\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:47:\"@INLINE <ul class=\"breadcrumb\">[[+output]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showCurrent\";a:7:{s:4:\"name\";s:11:\"showCurrent\";s:4:\"desc\";s:25:\"pdotools_prop_showCurrent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"showHome\";a:7:{s:4:\"name\";s:8:\"showHome\";s:4:\"desc\";s:22:\"pdotools_prop_showHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showAtHome\";a:7:{s:4:\"name\";s:10:\"showAtHome\";s:4:\"desc\";s:24:\"pdotools_prop_showAtHome\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"hideSingle\";a:7:{s:4:\"name\";s:10:\"hideSingle\";s:4:\"desc\";s:24:\"pdotools_prop_hideSingle\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"direction\";a:7:{s:4:\"name\";s:9:\"direction\";s:4:\"desc\";s:23:\"pdotools_prop_direction\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ltr\";s:4:\"text\";s:19:\"Left To Right (ltr)\";}i:1;a:2:{s:5:\"value\";s:3:\"rtl\";s:4:\"text\";s:19:\"Right To Left (rtl)\";}}s:5:\"value\";s:3:\"ltr\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdocrumbs.php');
INSERT INTO `chatmodx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(12, 1, 0, 'pdoField', '', 0, 2, 0, '/** @var array $scriptProperties */\nif (!empty($input)) {\n    $id = $input;\n}\nif (!isset($default)) {\n    $default = \'\';\n}\nif (!isset($output)) {\n    $output = \'\';\n}\n$class = $modx->getOption(\'class\', $scriptProperties, \'modResource\', true);\n$isResource = $class == \'modResource\' || in_array($class, $modx->getDescendants(\'modResource\'));\n\nif (empty($field)) {\n    $field = \'pagetitle\';\n}\n$top = isset($top) ? intval($top) : 0;\n$topLevel = isset($topLevel) ? intval($topLevel) : 0;\nif (!empty($options)) {\n    $options = trim($options);\n    if ($options[0] == \'{\') {\n        $tmp = json_decode($options, true);\n        if (is_array($tmp)) {\n            extract($tmp);\n            $scriptProperties = array_merge($scriptProperties, $tmp);\n        }\n    } else {\n        $field = $options;\n    }\n}\nif (empty($id)) {\n    if (!empty($modx->resource)) {\n        $id = $modx->resource->id;\n    } else {\n        return \'You must specify an id of \' . $class;\n    }\n}\nif (!isset($context)) {\n    $context = \'\';\n}\n\n// Gets the parent from root of context, if specified\nif ($isResource && $id && ($top || $topLevel)) {\n    // Select needed context for parents functionality\n    if (empty($context)) {\n        $q = $modx->newQuery($class, $id);\n        $q->select(\'context_key\');\n        $tstart = microtime(true);\n        if ($q->prepare() && $q->stmt->execute()) {\n            $modx->queryTime += microtime(true) - $tstart;\n            $modx->executedQueries++;\n            $context = $q->stmt->fetch(PDO::FETCH_COLUMN);\n        }\n    }\n    // Original pdoField logic\n    if (empty($ultimate)) {\n        if ($topLevel) {\n            $pids = $modx->getChildIds(0, $topLevel, array(\'context\' => $context));\n            $pid = $id;\n            while (true) {\n                $tmp = $modx->getParentIds($pid, 1, array(\'context\' => $context));\n                if (!$pid = current($tmp)) {\n                    break;\n                } elseif (in_array($pid, $pids)) {\n                    $id = $pid;\n                    break;\n                }\n            }\n        } elseif ($top) {\n            $pid = $id;\n            for ($i = 1; $i <= $top; $i++) {\n                $tmp = $modx->getParentIds($pid, 1, array(\'context\' => $context));\n                if (!$pid = current($tmp)) {\n                    break;\n                }\n                $id = $pid;\n            }\n        }\n    }\n    // UltimateParent logic\n    // https://github.com/splittingred/UltimateParent/blob/develop/core/components/ultimateparent/snippet.ultimateparent.php\n    elseif ($id != $top) {\n        $pid = $id;\n        $pids = $modx->getParentIds($id, 10, array(\'context\' => $context));\n        if (!$topLevel || count($pids) >= $topLevel) {\n            while ($parentIds = $modx->getParentIds($id, 1, array(\'context\' => $context))) {\n                $pid = array_pop($parentIds);\n                if ($pid == $top) {\n                    break;\n                }\n                $id = $pid;\n                $parentIds = $modx->getParentIds($id, 10, array(\'context\' => $context));\n                if ($topLevel && count($parentIds) < $topLevel) {\n                    break;\n                }\n            }\n        }\n    }\n}\n\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n$where = array($class . \'.id\' => $id);\n// Add custom parameters\nforeach (array(\'where\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\n$field = strtolower($field);\nif (in_array($field, $resourceColumns)) {\n    $scriptProperties[\'select\'] = array($class => $field);\n    $scriptProperties[\'includeTVs\'] = \'\';\n} elseif ($isResource) {\n    $scriptProperties[\'select\'] = array($class => \'id\');\n    $scriptProperties[\'includeTVs\'] = $field;\n}\n// Additional default field\nif (!empty($default)) {\n    $default = strtolower($default);\n    if (in_array($default, $resourceColumns)) {\n        $scriptProperties[\'select\'][$class] .= \',\' . $default;\n    } elseif ($isResource) {\n        $scriptProperties[\'includeTVs\'] = empty($scriptProperties[\'includeTVs\'])\n            ? $default\n            : $scriptProperties[\'includeTVs\'] . \',\' . $default;\n    }\n}\n\n$scriptProperties[\'disableConditions\'] = true;\nif ($row = $pdoFetch->getObject($class, $where, $scriptProperties)) {\n    foreach ($row as $k => $v) {\n        if (strtolower($k) == $field && $v != \'\') {\n            $output = $v;\n            break;\n        }\n    }\n\n    if (empty($output) && !empty($default)) {\n        foreach ($row as $k => $v) {\n            if (strtolower($k) == $default && $v != \'\') {\n                $output = $v;\n                break;\n            }\n        }\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:12:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"field\";a:7:{s:4:\"name\";s:5:\"field\";s:4:\"desc\";s:19:\"pdotools_prop_field\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pagetitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:27:\"pdotools_prop_field_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"top\";a:7:{s:4:\"name\";s:3:\"top\";s:4:\"desc\";s:17:\"pdotools_prop_top\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"topLevel\";a:7:{s:4:\"name\";s:8:\"topLevel\";s:4:\"desc\";s:22:\"pdotools_prop_topLevel\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"default\";a:7:{s:4:\"name\";s:7:\"default\";s:4:\"desc\";s:27:\"pdotools_prop_field_default\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"output\";a:7:{s:4:\"name\";s:6:\"output\";s:4:\"desc\";s:26:\"pdotools_prop_field_output\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ultimate\";a:7:{s:4:\"name\";s:8:\"ultimate\";s:4:\"desc\";s:22:\"pdotools_prop_ultimate\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdofield.php'),
(13, 1, 0, 'pdoSitemap', '', 0, 2, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\n// Default variables\nif (empty($tpl)) {\n    $tpl = \"@INLINE \\n<url>\\n\\t<loc>[[+url]]</loc>\\n\\t<lastmod>[[+date]]</lastmod>\\n\\t<changefreq>[[+update]]</changefreq>\\n\\t<priority>[[+priority]]</priority>\\n</url>\";\n}\nif (empty($tplWrapper)) {\n    $tplWrapper = \"@INLINE <?xml version=\\\"1.0\\\" encoding=\\\"[[++modx_charset]]\\\"?>\\n<urlset xmlns=\\\"[[+schema]]\\\">\\n[[+output]]\\n</urlset>\";\n}\nif (empty($sitemapSchema)) {\n    $sitemapSchema = \'http://www.sitemaps.org/schemas/sitemap/0.9\';\n}\nif (empty($outputSeparator)) {\n    $outputSeparator = \"\\n\";\n}\nif (empty($cacheKey)) {\n    $scriptProperties[\'cacheKey\'] = \'sitemap/\' . substr(md5(json_encode($scriptProperties)), 0, 6);\n}\n\n// Convert parameters from GoogleSiteMap if exists\nif (!empty($itemTpl)) {\n    $tpl = $itemTpl;\n}\nif (!empty($containerTpl)) {\n    $tplWrapper = $containerTpl;\n}\nif (!empty($allowedtemplates)) {\n    $scriptProperties[\'templates\'] = $allowedtemplates;\n}\nif (!empty($maxDepth)) {\n    $scriptProperties[\'depth\'] = $maxDepth;\n}\nif (isset($hideDeleted)) {\n    $scriptProperties[\'showDeleted\'] = !$hideDeleted;\n}\nif (isset($published)) {\n    $scriptProperties[\'showUnpublished\'] = !$published;\n}\nif (isset($searchable)) {\n    $scriptProperties[\'showUnsearchable\'] = !$searchable;\n}\nif (!empty($googleSchema)) {\n    $sitemapSchema = $googleSchema;\n}\nif (!empty($excludeResources)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeResources));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($excludeChildrenOf)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeChildrenOf));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'parents\'])) {\n            $scriptProperties[\'parents\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'parents\'] = \'-\' . $v;\n        }\n    }\n}\nif (!empty($startId)) {\n    if (!empty($scriptProperties[\'parents\'])) {\n        $scriptProperties[\'parents\'] .= \',\' . $startId;\n    } else {\n        $scriptProperties[\'parents\'] = $startId;\n    }\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($sortDir)) {\n    $scriptProperties[\'sortdir\'] = $sortDir;\n}\nif (!empty($priorityTV)) {\n    if (!empty($scriptProperties[\'includeTVs\'])) {\n        $scriptProperties[\'includeTVs\'] .= \',\' . $priorityTV;\n    } else {\n        $scriptProperties[\'includeTVs\'] = $priorityTV;\n    }\n}\nif (!empty($itemSeparator)) {\n    $outputSeparator = $itemSeparator;\n}\n//---\n\n\n$class = \'modResource\';\n$where = array();\nif (empty($showHidden)) {\n    $where[] = array(\n        $class . \'.hidemenu\' => 0,\n        \'OR:\' . $class . \'.class_key:IN\' => array(\'Ticket\', \'Article\'),\n    );\n}\nif (empty($context)) {\n    $scriptProperties[\'context\'] = $modx->context->key;\n}\n\n$select = array($class => \'id,editedon,createdon,context_key,class_key,uri\');\nif (!empty($useWeblinkUrl)) {\n    $select[$class] .= \',content\';\n}\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    \'sortby\' => \"{$class}.parent ASC, {$class}.menuindex\",\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'scheme\' => \'full\',\n    \'limit\' => 0,\n);\n// Merge all properties and run!\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\nif (!empty($cache)) {\n    $data = $pdoFetch->getCache($scriptProperties);\n}\nif (empty($data)) {\n    $now = time();\n    $data = $urls = array();\n    $rows = $pdoFetch->run();\n    foreach ($rows as $row) {\n        if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n            $row[\'url\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n                ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n                : $row[\'content\'];\n        } else {\n            $row[\'url\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n        }\n\n        $time = !empty($row[\'editedon\'])\n            ? $row[\'editedon\']\n            : $row[\'createdon\'];\n        $row[\'date\'] = date(\'c\', $time);\n\n        $datediff = floor(($now - $time) / 86400);\n        if ($datediff <= 1) {\n            $row[\'priority\'] = \'1.0\';\n            $row[\'update\'] = \'daily\';\n        } elseif (($datediff > 1) && ($datediff <= 7)) {\n            $row[\'priority\'] = \'0.75\';\n            $row[\'update\'] = \'weekly\';\n        } elseif (($datediff > 7) && ($datediff <= 30)) {\n            $row[\'priority\'] = \'0.50\';\n            $row[\'update\'] = \'weekly\';\n        } else {\n            $row[\'priority\'] = \'0.25\';\n            $row[\'update\'] = \'monthly\';\n        }\n        if (!empty($priorityTV) && !empty($row[$priorityTV])) {\n            $row[\'priority\'] = $row[$priorityTV];\n        }\n\n        // Fix possible duplicates made by modWebLink\n        if (!empty($urls[$row[\'url\']])) {\n            if ($urls[$row[\'url\']] > $row[\'date\']) {\n                continue;\n            }\n        }\n        $urls[$row[\'url\']] = $row[\'date\'];\n\n        // Add item to output\n        $data[$row[\'url\']] = $pdoFetch->parseChunk($tpl, $row);\n        if (strpos($data[$row[\'url\']], \'[[\') !== false) {\n            $modx->parser->processElementTags(\'\', $data[$row[\'url\']], true, true, \'[[\', \']]\', array(), 10);\n        }\n    }\n    $pdoFetch->addTime(\'Rows processed\');\n    if (!empty($cache)) {\n        $pdoFetch->setCache($data, $scriptProperties);\n    }\n}\n\n$output = implode($outputSeparator, $data);\n$output = $pdoFetch->getChunk($tplWrapper, array(\n    \'schema\' => $sitemapSchema,\n    \'output\' => $output,\n    \'items\' => $output,\n));\n$pdoFetch->addTime(\'Rows wrapped\');\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoSitemapLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($forceXML)) {\n    header(\"Content-Type:text/xml\");\n    @session_write_close();\n    exit($output);\n} else {\n    return $output;\n}', 0, 'a:24:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:145:\"@INLINE <url>\n	<loc>[[+url]]</loc>\n	<lastmod>[[+date]]</lastmod>\n	<changefreq>[[+update]]</changefreq>\n	<priority>[[+priority]]</priority>\n</url>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:110:\"@INLINE <?xml version=\"1.0\" encoding=\"[[++modx_charset]]\"?>\n<urlset xmlns=\"[[+schema]]\">\n[[+output]]\n</urlset>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"sitemapSchema\";a:7:{s:4:\"name\";s:13:\"sitemapSchema\";s:4:\"desc\";s:27:\"pdotools_prop_sitemapSchema\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:43:\"http://www.sitemaps.org/schemas/sitemap/0.9\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"hideUnsearchable\";a:7:{s:4:\"name\";s:16:\"hideUnsearchable\";s:4:\"desc\";s:30:\"pdotools_prop_hideUnsearchable\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"forceXML\";a:7:{s:4:\"name\";s:8:\"forceXML\";s:4:\"desc\";s:22:\"pdotools_prop_forceXML\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"cacheKey\";a:7:{s:4:\"name\";s:8:\"cacheKey\";s:4:\"desc\";s:22:\"pdotools_prop_cacheKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdositemap.php'),
(14, 1, 0, 'pdoNeighbors', '', 0, 2, 0, '/** @var array $scriptProperties */\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($limit)) {\n    $limit = 1;\n}\nif (!isset($outputSeparator)) {\n    $outputSeparator = \"\\n\";\n}\n$fastMode = !empty($fastMode);\n\n$class = \'modResource\';\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject($class, $id);\nif (!$resource) {\n    return \'\';\n}\n\n// We need to determine ids of neighbors\n$params = $scriptProperties;\n$params[\'select\'] = \'id\';\n$params[\'limit\'] = 0;\nif (!empty($parents) && is_string($parents)) {\n    $parents = array_map(\'trim\', explode(\',\', $parents));\n    if (!in_array($resource->parent, $parents)) {\n        $parents[] = $resource->parent;\n    }\n    $key = array_search($resource->parent * -1, $parents);\n    if ($key !== false) {\n        unset($parents[$key]);\n    }\n    $params[\'parents\'] = implode(\',\', $parents);\n    $ids = $pdoFetch->getCollection(\'modResource\', array(), $params);\n    unset($scriptProperties[\'parents\']);\n} else {\n    $ids = $pdoFetch->getCollection(\'modResource\', array(\'parent\' => $resource->parent), $params);\n}\n\n$found = false;\n$prev = $next = array();\nforeach ($ids as $v) {\n    if ($v[\'id\'] == $id) {\n        $found = true;\n        continue;\n    } elseif (!$found) {\n        $prev[] = $v[\'id\'];\n    } else {\n        $next[] = $v[\'id\'];\n        if (count($next) >= $limit) {\n            break;\n        }\n    }\n}\n$prev = array_splice($prev, $limit * -1);\nif (!empty($loop)) {\n    if (!count($prev)) {\n        $v = end($ids);\n        $prev[] = $v[\'id\'];\n    } else {\n        if (!count($next)) {\n            $v = reset($ids);\n            $next[] = $v[\'id\'];\n        }\n    }\n}\n$ids = array_merge($prev, $next, array($resource->parent));\n$pdoFetch->addTime(\'Found ids of neighbors: \' . implode(\',\', $ids));\n\n// Query conditions\n$where = array($class . \'.id:IN\' => $ids);\n\n// Fields to select\n$resourceColumns = array_keys($modx->getFieldMeta($class));\nif (empty($includeContent) && empty($useWeblinkUrl)) {\n    $key = array_search(\'content\', $resourceColumns);\n    unset($resourceColumns[$key]);\n}\n$select = array($class => implode(\',\', $resourceColumns));\n\n// Add custom parameters\nforeach (array(\'where\', \'select\') as $v) {\n    if (!empty($scriptProperties[$v])) {\n        $tmp = $scriptProperties[$v];\n        if (!is_array($tmp)) {\n            $tmp = json_decode($tmp, true);\n        }\n        if (is_array($tmp)) {\n            $$v = array_merge($$v, $tmp);\n        }\n    }\n    unset($scriptProperties[$v]);\n}\n$pdoFetch->addTime(\'Conditions prepared\');\n\n// Default parameters\n$default = array(\n    \'class\' => $class,\n    \'where\' => json_encode($where),\n    \'select\' => json_encode($select),\n    //\'groupby\' => $class.\'.id\',\n    \'sortby\' => $class . \'.menuindex\',\n    \'sortdir\' => \'ASC\',\n    \'return\' => \'data\',\n    \'limit\' => 0,\n    \'totalVar\' => \'pdoneighbors.total\',\n);\n\n// Merge all properties and run!\nunset($scriptProperties[\'limit\']);\n$pdoFetch->addTime(\'Query parameters ready\');\n$pdoFetch->setConfig(array_merge($default, $scriptProperties), false);\n\n$rows = $pdoFetch->run();\n$prev = array_flip($prev);\n$next = array_flip($next);\n\n$output = array(\'prev\' => array(), \'up\' => array(), \'next\' => array());\nforeach ($rows as $row) {\n    if (empty($row[\'menutitle\'])) {\n        $row[\'menutitle\'] = $row[\'pagetitle\'];\n    }\n    if (!empty($useWeblinkUrl) && $row[\'class_key\'] == \'modWebLink\') {\n        $row[\'link\'] = is_numeric(trim($row[\'content\'], \'[]~ \'))\n            ? $pdoFetch->makeUrl(intval(trim($row[\'content\'], \'[]~ \')), $row)\n            : $row[\'content\'];\n    } else {\n        $row[\'link\'] = $pdoFetch->makeUrl($row[\'id\'], $row);\n    }\n\n    if (isset($prev[$row[\'id\']])) {\n        $output[\'prev\'][] = !empty($tplPrev)\n            ? $pdoFetch->getChunk($tplPrev, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    } elseif (isset($next[$row[\'id\']])) {\n        $output[\'next\'][] = !empty($tplNext)\n            ? $pdoFetch->getChunk($tplNext, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    } else {\n        $output[\'up\'][] = !empty($tplUp)\n            ? $pdoFetch->getChunk($tplUp, $row, $fastMode)\n            : $pdoFetch->getChunk(\'\', $row);\n    }\n}\n$pdoFetch->addTime(\'Chunks processed\');\n\n$log = \'\';\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $log .= \'<pre class=\"pdoNeighborsLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nforeach ($output as &$row) {\n    $row = implode($outputSeparator, $row);\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $output[\'log\'] = $log;\n    $modx->setPlaceholders($output, $toSeparatePlaceholders);\n} else {\n    if (!empty($rows) || !empty($wrapIfEmpty)) {\n        $output = !empty($tplWrapper)\n            ? $pdoFetch->getChunk($tplWrapper, $output, $fastMode)\n            : $pdoFetch->getChunk(\'\', $output);\n    } else {\n        $output = \'\';\n    }\n    $output .= $log;\n\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $output);\n    } else {\n        return $output;\n    }\n}', 0, 'a:27:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:29:\"pdotools_prop_neighbors_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"asc\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPrev\";a:7:{s:4:\"name\";s:7:\"tplPrev\";s:4:\"desc\";s:21:\"pdotools_prop_tplPrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <span class=\"link-prev\"><a href=\"[[+link]]\">&larr; [[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"tplUp\";a:7:{s:4:\"name\";s:5:\"tplUp\";s:4:\"desc\";s:19:\"pdotools_prop_tplUp\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:82:\"@INLINE <span class=\"link-up\">&uarr; <a href=\"[[+link]]\">[[+menutitle]]</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplNext\";a:7:{s:4:\"name\";s:7:\"tplNext\";s:4:\"desc\";s:21:\"pdotools_prop_tplNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:84:\"@INLINE <span class=\"link-next\"><a href=\"[[+link]]\">[[+menutitle]] &rarr;</a></span>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:34:\"pdotools_prop_neighbors_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:62:\"@INLINE <div class=\"neighbors\">[[+prev]][[+up]][[+next]]</div>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:22:\"toSeparatePlaceholders\";a:7:{s:4:\"name\";s:22:\"toSeparatePlaceholders\";s:4:\"desc\";s:36:\"pdotools_prop_toSeparatePlaceholders\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"loop\";a:7:{s:4:\"name\";s:4:\"loop\";s:4:\"desc\";s:18:\"pdotools_prop_loop\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoneighbors.php');
INSERT INTO `chatmodx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(15, 1, 0, 'pdoPage', '', 0, 2, 0, '/** @var array $scriptProperties */\n// Default variables\nif (empty($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (empty($pageNavVar)) {\n    $pageNavVar = \'page.nav\';\n}\nif (empty($pageCountVar)) {\n    $pageCountVar = \'pageCount\';\n}\nif (empty($totalVar)) {\n    $totalVar = \'total\';\n}\nif (empty($page)) {\n    $page = 1;\n}\nif (empty($pageLimit)) {\n    $pageLimit = 5;\n} else {\n    $pageLimit = (integer)$pageLimit;\n}\nif (!isset($plPrefix)) {\n    $plPrefix = \'\';\n}\nif (!empty($scriptProperties[\'ajaxMode\'])) {\n    $scriptProperties[\'ajax\'] = 1;\n}\n\n// Convert parameters from getPage if exists\nif (!empty($namespace)) {\n    $plPrefix = $namespace;\n}\nif (!empty($pageNavTpl)) {\n    $scriptProperties[\'tplPage\'] = $pageNavTpl;\n}\nif (!empty($pageNavOuterTpl)) {\n    $scriptProperties[\'tplPageWrapper\'] = $pageNavOuterTpl;\n}\nif (!empty($pageActiveTpl)) {\n    $scriptProperties[\'tplPageActive\'] = $pageActiveTpl;\n}\nif (!empty($pageFirstTpl)) {\n    $scriptProperties[\'tplPageFirst\'] = $pageFirstTpl;\n}\nif (!empty($pagePrevTpl)) {\n    $scriptProperties[\'tplPagePrev\'] = $pagePrevTpl;\n}\nif (!empty($pageNextTpl)) {\n    $scriptProperties[\'tplPageNext\'] = $pageNextTpl;\n}\nif (!empty($pageLastTpl)) {\n    $scriptProperties[\'tplPageLast\'] = $pageLastTpl;\n}\nif (!empty($pageSkipTpl)) {\n    $scriptProperties[\'tplPageSkip\'] = $pageSkipTpl;\n}\nif (!empty($pageNavScheme)) {\n    $scriptProperties[\'scheme\'] = $pageNavScheme;\n}\nif (!empty($cache_expires)) {\n    $scriptProperties[\'cacheTime\'] = $cache_expires;\n}\n//---\n$strictMode = !empty($strictMode);\n\n$isAjax = !empty($scriptProperties[\'ajax\']) && !empty($_SERVER[\'HTTP_X_REQUESTED_WITH\']) && $_SERVER[\'HTTP_X_REQUESTED_WITH\'] == \'XMLHttpRequest\';\nif ($isAjax && !isset($_REQUEST[$pageVarKey])) {\n    return;\n}\n\n/** @var pdoPage $pdoPage */\n$fqn = $modx->getOption(\'pdoPage.class\', null, \'pdotools.pdopage\', true);\n$path = $modx->getOption(\'pdopage_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoPage = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoPage->pdoTools->addTime(\'pdoTools loaded\');\n\n// Script and styles\nif (!$isAjax && !empty($scriptProperties[\'ajaxMode\'])) {\n    $pdoPage->loadJsCss();\n}\n// Removing of default scripts and styles so they do not overwrote nested snippet parameters\nif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoPage\'))) {\n    $properties = $snippet->get(\'properties\');\n    if ($scriptProperties[\'frontend_js\'] == $properties[\'frontend_js\'][\'value\']) {\n        unset($scriptProperties[\'frontend_js\']);\n    }\n    if ($scriptProperties[\'frontend_css\'] == $properties[\'frontend_css\'][\'value\']) {\n        unset($scriptProperties[\'frontend_css\']);\n    }\n}\n\n// Page\nif (isset($_REQUEST[$pageVarKey]) && $strictMode && (!is_numeric($_REQUEST[$pageVarKey]) || ($_REQUEST[$pageVarKey] <= 1 && !$isAjax))) {\n    return $pdoPage->redirectToFirst($isAjax);\n} elseif (!empty($_REQUEST[$pageVarKey])) {\n    $page = (integer)$_REQUEST[$pageVarKey];\n}\n$scriptProperties[\'page\'] = $page;\n$scriptProperties[\'request\'] = $_REQUEST;\n\n// Limit\nif (isset($_REQUEST[\'limit\'])) {\n    if (is_numeric($_REQUEST[\'limit\']) && abs($_REQUEST[\'limit\']) > 0) {\n        $scriptProperties[\'limit\'] = abs($_REQUEST[\'limit\']);\n    } elseif ($strictMode) {\n        unset($_GET[\'limit\']);\n\n        return $pdoPage->redirectToFirst($isAjax);\n    }\n}\nif (!empty($maxLimit) && !empty($scriptProperties[\'limit\']) && $scriptProperties[\'limit\'] > $maxLimit) {\n    $scriptProperties[\'limit\'] = $maxLimit;\n}\n\n// Offset\n$offset = !empty($scriptProperties[\'offset\']) && $scriptProperties[\'offset\'] > 0\n    ? (int)$scriptProperties[\'offset\']\n    : 0;\n$scriptProperties[\'offset\'] = $page > 1\n    ? $scriptProperties[\'limit\'] * ($page - 1) + $offset\n    : $offset;\nif (!empty($scriptProperties[\'offset\']) && empty($scriptProperties[\'limit\'])) {\n    $scriptProperties[\'limit\'] = 10000000;\n}\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\n$url = $pdoPage->getBaseUrl();\n$output = $pagination = $total = $pageCount = \'\';\n\n$data = $cache\n    ? $pdoPage->pdoTools->getCache($scriptProperties)\n    : array();\n\nif (empty($data)) {\n    $scriptProperties[\'setTotal\'] = true;\n    $output = $pdoPage->pdoTools->runSnippet($scriptProperties[\'element\'], $scriptProperties);\n    if ($output === false) {\n        return \'\';\n    } elseif (!empty($toPlaceholder)) {\n        $output = $modx->getPlaceholder($toPlaceholder);\n    }\n\n    // Pagination\n    $total = (int)$modx->getPlaceholder($totalVar);\n    $pageCount = !empty($scriptProperties[\'limit\']) && $total > $offset\n        ? ceil(($total - $offset) / $scriptProperties[\'limit\'])\n        : 0;\n\n    // Redirect to start if somebody specified incorrect page\n    if ($page > 1 && $page > $pageCount && $strictMode) {\n        return $pdoPage->redirectToFirst($isAjax);\n    }\n    if (!empty($pageCount) && $pageCount > 1) {\n        $pagination = array(\n            \'first\' => $page > 1 && !empty($tplPageFirst)\n                ? $pdoPage->makePageLink($url, 1, $tplPageFirst)\n                : \'\',\n            \'prev\' => $page > 1 && !empty($tplPagePrev)\n                ? $pdoPage->makePageLink($url, $page - 1, $tplPagePrev)\n                : \'\',\n            \'pages\' => $pageLimit >= 7 && empty($disableModernPagination)\n                ? $pdoPage->buildModernPagination($page, $pageCount, $url)\n                : $pdoPage->buildClassicPagination($page, $pageCount, $url),\n            \'next\' => $page < $pageCount && !empty($tplPageNext)\n                ? $pdoPage->makePageLink($url, $page + 1, $tplPageNext)\n                : \'\',\n            \'last\' => $page < $pageCount && !empty($tplPageLast)\n                ? $pdoPage->makePageLink($url, $pageCount, $tplPageLast)\n                : \'\',\n        );\n\n        if (!empty($pageCount)) {\n            foreach (array(\'first\', \'prev\', \'next\', \'last\') as $v) {\n                $tpl = \'tplPage\' . ucfirst($v) . \'Empty\';\n                if (!empty(${$tpl}) && empty($pagination[$v])) {\n                    $pagination[$v] = $pdoPage->pdoTools->getChunk(${$tpl});\n                }\n            }\n        }\n    } else {\n        $pagination = array(\n            \'first\' => \'\',\n            \'prev\' => \'\',\n            \'pages\' => \'\',\n            \'next\' => \'\',\n            \'last\' => \'\'\n        );\n    }\n\n    $data = array(\n        \'output\' => $output,\n        $pageVarKey => $page,\n        $pageCountVar => $pageCount,\n        $pageNavVar => !empty($tplPageWrapper)\n            ? $pdoPage->pdoTools->getChunk($tplPageWrapper, $pagination)\n            : $pdoPage->pdoTools->parseChunk(\'\', $pagination),\n        $totalVar => $total,\n    );\n    if ($cache) {\n        $pdoPage->pdoTools->setCache($data, $scriptProperties);\n    }\n}\n\nif ($isAjax) {\n    if ($pageNavVar != \'pagination\') {\n        $data[\'pagination\'] = $data[$pageNavVar];\n        unset($data[$pageNavVar]);\n    }\n    if ($pageCountVar != \'pages\') {\n        $data[\'pages\'] = (int)$data[$pageCountVar];\n        unset($data[$pageCountVar]);\n    }\n    if ($pageVarKey != \'page\') {\n        $data[\'page\'] = (int)$data[$pageVarKey];\n        unset($data[$pageVarKey]);\n    }\n    if ($totalVar != \'total\') {\n        $data[\'total\'] = (int)$data[$totalVar];\n        unset($data[$totalVar]);\n    }\n\n    $maxIterations = (integer)$modx->getOption(\'parser_max_iterations\', null, 10);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], false, false, \'[[\', \']]\', array(), $maxIterations);\n    $modx->getParser()->processElementTags(\'\', $data[\'output\'], true, true, \'[[\', \']]\', array(), $maxIterations);\n\n    @session_write_close();\n    exit(json_encode($data));\n} else {\n    if (!empty($setMeta)) {\n        $canurl = $pdoPage->pdoTools->config[\'scheme\'] !== \'full\'\n            ? $modx->getOption(\'url_scheme\') . rtrim($modx->getOption(\'http_host\'), \'/\') . \'/\' . ltrim($url, \'/\')\n            : $url;\n\n        $modx->regClientStartupHTMLBlock(\'<link rel=\"canonical\" href=\"\' . $canurl . \'\"/>\');\n        if ($data[$pageVarKey] > 1) {\n            $modx->regClientStartupHTMLBlock(\n                \'<link rel=\"prev\" href=\"\' . $pdoPage->makePageLink($canurl, $data[$pageVarKey] - 1) . \'\"/>\'\n            );\n        }\n        if ($data[$pageVarKey] < $data[$pageCountVar]) {\n            $modx->regClientStartupHTMLBlock(\n                \'<link rel=\"next\" href=\"\' . $pdoPage->makePageLink($canurl, $data[$pageVarKey] + 1) . \'\"/>\'\n            );\n        }\n    }\n\n    $modx->setPlaceholders($data, $plPrefix);\n    if (!empty($toPlaceholder)) {\n        $modx->setPlaceholder($toPlaceholder, $data[\'output\']);\n    } else {\n        return $data[\'output\'];\n    }\n}', 0, 'a:41:{s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"maxLimit\";a:7:{s:4:\"name\";s:8:\"maxLimit\";s:4:\"desc\";s:22:\"pdotools_prop_maxLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:100;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"page\";a:7:{s:4:\"name\";s:4:\"page\";s:4:\"desc\";s:18:\"pdotools_prop_page\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:10:\"page.total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"pageLimit\";a:7:{s:4:\"name\";s:9:\"pageLimit\";s:4:\"desc\";s:23:\"pdotools_prop_pageLimit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:5;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"element\";a:7:{s:4:\"name\";s:7:\"element\";s:4:\"desc\";s:21:\"pdotools_prop_element\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:12:\"pdoResources\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageNavVar\";a:7:{s:4:\"name\";s:10:\"pageNavVar\";s:4:\"desc\";s:24:\"pdotools_prop_pageNavVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"page.nav\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"pageCountVar\";a:7:{s:4:\"name\";s:12:\"pageCountVar\";s:4:\"desc\";s:26:\"pdotools_prop_pageCountVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"pageCount\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"pageLinkScheme\";a:7:{s:4:\"name\";s:14:\"pageLinkScheme\";s:4:\"desc\";s:28:\"pdotools_prop_pageLinkScheme\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplPage\";a:7:{s:4:\"name\";s:7:\"tplPage\";s:4:\"desc\";s:21:\"pdotools_prop_tplPage\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:52:\"@INLINE <li><a href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"tplPageWrapper\";a:7:{s:4:\"name\";s:14:\"tplPageWrapper\";s:4:\"desc\";s:28:\"pdotools_prop_tplPageWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:113:\"@INLINE <div class=\"pagination\"><ul class=\"pagination\">[[+first]][[+prev]][[+pages]][[+next]][[+last]]</ul></div>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"tplPageActive\";a:7:{s:4:\"name\";s:13:\"tplPageActive\";s:4:\"desc\";s:27:\"pdotools_prop_tplPageActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:67:\"@INLINE <li class=\"active\"><a href=\"[[+href]]\">[[+pageNo]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplPageFirst\";a:7:{s:4:\"name\";s:12:\"tplPageFirst\";s:4:\"desc\";s:26:\"pdotools_prop_tplPageFirst\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:75:\"@INLINE <li class=\"control\"><a href=\"[[+href]]\">[[%pdopage_first]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageLast\";a:7:{s:4:\"name\";s:11:\"tplPageLast\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageLast\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:74:\"@INLINE <li class=\"control\"><a href=\"[[+href]]\">[[%pdopage_last]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPagePrev\";a:7:{s:4:\"name\";s:11:\"tplPagePrev\";s:4:\"desc\";s:25:\"pdotools_prop_tplPagePrev\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:64:\"@INLINE <li class=\"control\"><a href=\"[[+href]]\">&laquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageNext\";a:7:{s:4:\"name\";s:11:\"tplPageNext\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageNext\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:64:\"@INLINE <li class=\"control\"><a href=\"[[+href]]\">&raquo;</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplPageSkip\";a:7:{s:4:\"name\";s:11:\"tplPageSkip\";s:4:\"desc\";s:25:\"pdotools_prop_tplPageSkip\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:50:\"@INLINE <li class=\"disabled\"><span>...</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplPageFirstEmpty\";a:7:{s:4:\"name\";s:17:\"tplPageFirstEmpty\";s:4:\"desc\";s:31:\"pdotools_prop_tplPageFirstEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li class=\"disabled\"><span>[[%pdopage_first]]</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageLastEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageLastEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageLastEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:64:\"@INLINE <li class=\"disabled\"><span>[[%pdopage_last]]</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPagePrevEmpty\";a:7:{s:4:\"name\";s:16:\"tplPagePrevEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPagePrevEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:54:\"@INLINE <li class=\"disabled\"><span>&laquo;</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplPageNextEmpty\";a:7:{s:4:\"name\";s:16:\"tplPageNextEmpty\";s:4:\"desc\";s:30:\"pdotools_prop_tplPageNextEmpty\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:54:\"@INLINE <li class=\"disabled\"><span>&raquo;</span></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:4:\"ajax\";a:7:{s:4:\"name\";s:4:\"ajax\";s:4:\"desc\";s:18:\"pdotools_prop_ajax\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"ajaxMode\";a:7:{s:4:\"name\";s:8:\"ajaxMode\";s:4:\"desc\";s:22:\"pdotools_prop_ajaxMode\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:4:\"text\";s:4:\"None\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Default\";s:5:\"value\";s:7:\"default\";}i:2;a:2:{s:4:\"text\";s:6:\"Scroll\";s:5:\"value\";s:6:\"scroll\";}i:3;a:2:{s:4:\"text\";s:6:\"Button\";s:5:\"value\";s:6:\"button\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"ajaxElemWrapper\";a:7:{s:4:\"name\";s:15:\"ajaxElemWrapper\";s:4:\"desc\";s:29:\"pdotools_prop_ajaxElemWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:8:\"#pdopage\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemRows\";a:7:{s:4:\"name\";s:12:\"ajaxElemRows\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemRows\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:14:\"#pdopage .rows\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"ajaxElemPagination\";a:7:{s:4:\"name\";s:18:\"ajaxElemPagination\";s:4:\"desc\";s:32:\"pdotools_prop_ajaxElemPagination\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:20:\"#pdopage .pagination\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemLink\";a:7:{s:4:\"name\";s:12:\"ajaxElemLink\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemLink\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:22:\"#pdopage .pagination a\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"ajaxElemMore\";a:7:{s:4:\"name\";s:12:\"ajaxElemMore\";s:4:\"desc\";s:26:\"pdotools_prop_ajaxElemMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:18:\"#pdopage .btn-more\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxTplMore\";a:7:{s:4:\"name\";s:11:\"ajaxTplMore\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxTplMore\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:75:\"@INLINE <button class=\"btn btn-default btn-more\">[[%pdopage_more]]</button>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"ajaxHistory\";a:7:{s:4:\"name\";s:11:\"ajaxHistory\";s:4:\"desc\";s:25:\"pdotools_prop_ajaxHistory\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:4:\"Auto\";s:5:\"value\";s:0:\"\";}i:1;a:2:{s:4:\"text\";s:7:\"Enabled\";s:5:\"value\";i:1;}i:2;a:2:{s:4:\"text\";s:8:\"Disabled\";s:5:\"value\";i:0;}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"frontend_js\";a:7:{s:4:\"name\";s:11:\"frontend_js\";s:4:\"desc\";s:25:\"pdotools_prop_frontend_js\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:31:\"[[+assetsUrl]]js/pdopage.min.js\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"frontend_css\";a:7:{s:4:\"name\";s:12:\"frontend_css\";s:4:\"desc\";s:26:\"pdotools_prop_frontend_css\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:33:\"[[+assetsUrl]]css/pdopage.min.css\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"setMeta\";a:7:{s:4:\"name\";s:7:\"setMeta\";s:4:\"desc\";s:21:\"pdotools_prop_setMeta\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"strictMode\";a:7:{s:4:\"name\";s:10:\"strictMode\";s:4:\"desc\";s:24:\"pdotools_prop_strictMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdopage.php'),
(16, 1, 0, 'pdoMenu', '', 0, 2, 0, '/** @var array $scriptProperties */\n\n// Convert parameters from Wayfinder if exists\nif (isset($startId)) {\n    $scriptProperties[\'parents\'] = $startId;\n}\nif (!empty($includeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $includeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = $v;\n        }\n    }\n}\nif (!empty($excludeDocs)) {\n    $tmp = array_map(\'trim\', explode(\',\', $excludeDocs));\n    foreach ($tmp as $v) {\n        if (!empty($scriptProperties[\'resources\'])) {\n            $scriptProperties[\'resources\'] .= \',-\' . $v;\n        } else {\n            $scriptProperties[\'resources\'] = \'-\' . $v;\n        }\n    }\n}\n\nif (!empty($previewUnpublished) && $modx->hasPermission(\'view_unpublished\')) {\n    $scriptProperties[\'showUnpublished\'] = 1;\n}\n\n$scriptProperties[\'depth\'] = empty($level) ? 100 : abs($level) - 1;\nif (!empty($contexts)) {\n    $scriptProperties[\'context\'] = $contexts;\n}\nif (empty($scriptProperties[\'context\'])) {\n    $scriptProperties[\'context\'] = $modx->resource->context_key;\n}\n\n// Save original parents specified by user\n$specified_parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n\nif ($scriptProperties[\'parents\'] === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n} elseif ($scriptProperties[\'parents\'] === 0 || $scriptProperties[\'parents\'] === \'0\') {\n    if ($scriptProperties[\'depth\'] !== \'\' && $scriptProperties[\'depth\'] !== 100) {\n        $contexts = array_map(\'trim\', explode(\',\', $scriptProperties[\'context\']));\n        $parents = array();\n        if (!empty($scriptProperties[\'showDeleted\'])) {\n            $pdoFetch = $modx->getService(\'pdoFetch\');\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents,\n                    $pdoFetch->getChildIds(\'modResource\', 0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\n            }\n        } else {\n            foreach ($contexts as $ctx) {\n                $parents = array_merge($parents,\n                    $modx->getChildIds(0, $scriptProperties[\'depth\'], array(\'context\' => $ctx)));\n            }\n        }\n        $scriptProperties[\'parents\'] = !empty($parents) ? implode(\',\', $parents) : \'+0\';\n        $scriptProperties[\'depth\'] = 0;\n    }\n    $scriptProperties[\'includeParents\'] = 1;\n    $scriptProperties[\'displayStart\'] = 0;\n} else {\n    $parents = array_map(\'trim\', explode(\',\', $scriptProperties[\'parents\']));\n    $parents_in = $parents_out = array();\n    foreach ($parents as $v) {\n        if (!is_numeric($v)) {\n            continue;\n        }\n        if ($v[0] == \'-\') {\n            $parents_out[] = abs($v);\n        } else {\n            $parents_in[] = abs($v);\n        }\n    }\n\n    if (empty($parents_in)) {\n        $scriptProperties[\'includeParents\'] = 1;\n        $scriptProperties[\'displayStart\'] = 0;\n    }\n}\n\nif (!empty($displayStart)) {\n    $scriptProperties[\'includeParents\'] = 1;\n}\nif (!empty($ph)) {\n    $toPlaceholder = $ph;\n}\nif (!empty($sortOrder)) {\n    $scriptProperties[\'sortdir\'] = $sortOrder;\n}\nif (!empty($sortBy)) {\n    $scriptProperties[\'sortby\'] = $sortBy;\n}\nif (!empty($permissions)) {\n    $scriptProperties[\'checkPermissions\'] = $permissions;\n}\nif (!empty($cacheResults)) {\n    $scriptProperties[\'cache\'] = $cacheResults;\n}\nif (!empty($ignoreHidden)) {\n    $scriptProperties[\'showHidden\'] = $ignoreHidden;\n}\n\n$wfTemplates = array(\n    \'outerTpl\' => \'tplOuter\',\n    \'rowTpl\' => \'tpl\',\n    \'parentRowTpl\' => \'tplParentRow\',\n    \'parentRowHereTpl\' => \'tplParentRowHere\',\n    \'hereTpl\' => \'tplHere\',\n    \'innerTpl\' => \'tplInner\',\n    \'innerRowTpl\' => \'tplInnerRow\',\n    \'innerHereTpl\' => \'tplInnerHere\',\n    \'activeParentRowTpl\' => \'tplParentRowActive\',\n    \'categoryFoldersTpl\' => \'tplCategoryFolder\',\n    \'startItemTpl\' => \'tplStart\',\n);\nforeach ($wfTemplates as $k => $v) {\n    if (isset(${$k})) {\n        $scriptProperties[$v] = ${$k};\n    }\n}\n//---\n\n/** @var pdoMenu $pdoMenu */\n$fqn = $modx->getOption(\'pdoMenu.class\', null, \'pdotools.pdomenu\', true);\n$path = $modx->getOption(\'pdomenu_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoMenu = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoMenu->pdoTools->addTime(\'pdoTools loaded\');\n\n$cache = !empty($cache) || (!$modx->user->id && !empty($cacheAnonymous));\nif (empty($scriptProperties[\'cache_key\'])) {\n    $scriptProperties[\'cache_key\'] = \'pdomenu/\' . sha1(serialize($scriptProperties));\n}\n\n$output = \'\';\n$tree = array();\nif ($cache) {\n    $tree = $pdoMenu->pdoTools->getCache($scriptProperties);\n}\nif (empty($tree)) {\n    $data = $pdoMenu->pdoTools->run();\n    $data = $pdoMenu->pdoTools->buildTree($data, \'id\', \'parent\', $specified_parents);\n    $tree = array();\n    foreach ($data as $k => $v) {\n        if (empty($v[\'id\'])) {\n            if (!in_array($k, $specified_parents) && !$pdoMenu->checkResource($k)) {\n                continue;\n            } else {\n                $tree = array_merge($tree, $v[\'children\']);\n            }\n        } else {\n            $tree[$k] = $v;\n        }\n    }\n    if ($cache) {\n        $pdoMenu->pdoTools->setCache($tree, $scriptProperties);\n    }\n}\nif (!empty($tree)) {\n    $output = $pdoMenu->templateTree($tree);\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoMenuLog\">\' . print_r($pdoMenu->pdoTools->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:51:{s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"fastMode\";a:7:{s:4:\"name\";s:8:\"fastMode\";s:4:\"desc\";s:22:\"pdotools_prop_fastMode\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"level\";a:7:{s:4:\"name\";s:5:\"level\";s:4:\"desc\";s:19:\"pdotools_prop_level\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"displayStart\";a:7:{s:4:\"name\";s:12:\"displayStart\";s:4:\"desc\";s:26:\"pdotools_prop_displayStart\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"templates\";a:7:{s:4:\"name\";s:9:\"templates\";s:4:\"desc\";s:23:\"pdotools_prop_templates\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:19:\"pdotools_prop_cache\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3600;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"cacheAnonymous\";a:7:{s:4:\"name\";s:14:\"cacheAnonymous\";s:4:\"desc\";s:28:\"pdotools_prop_cacheAnonymous\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"plPrefix\";a:7:{s:4:\"name\";s:8:\"plPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_plPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"wf.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"previewUnpublished\";a:7:{s:4:\"name\";s:18:\"previewUnpublished\";s:4:\"desc\";s:32:\"pdotools_prop_previewUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"hideSubMenus\";a:7:{s:4:\"name\";s:12:\"hideSubMenus\";s:4:\"desc\";s:26:\"pdotools_prop_hideSubMenus\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"menuindex\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"rowIdPrefix\";a:7:{s:4:\"name\";s:11:\"rowIdPrefix\";s:4:\"desc\";s:25:\"pdotools_prop_rowIdPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"firstClass\";a:7:{s:4:\"name\";s:10:\"firstClass\";s:4:\"desc\";s:24:\"pdotools_prop_firstClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"first\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"lastClass\";a:7:{s:4:\"name\";s:9:\"lastClass\";s:4:\"desc\";s:23:\"pdotools_prop_lastClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"last\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"hereClass\";a:7:{s:4:\"name\";s:9:\"hereClass\";s:4:\"desc\";s:23:\"pdotools_prop_hereClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:6:\"active\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"parentClass\";a:7:{s:4:\"name\";s:11:\"parentClass\";s:4:\"desc\";s:25:\"pdotools_prop_parentClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"rowClass\";a:7:{s:4:\"name\";s:8:\"rowClass\";s:4:\"desc\";s:22:\"pdotools_prop_rowClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"outerClass\";a:7:{s:4:\"name\";s:10:\"outerClass\";s:4:\"desc\";s:24:\"pdotools_prop_outerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"innerClass\";a:7:{s:4:\"name\";s:10:\"innerClass\";s:4:\"desc\";s:24:\"pdotools_prop_innerClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"levelClass\";a:7:{s:4:\"name\";s:10:\"levelClass\";s:4:\"desc\";s:24:\"pdotools_prop_levelClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"selfClass\";a:7:{s:4:\"name\";s:9:\"selfClass\";s:4:\"desc\";s:23:\"pdotools_prop_selfClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"webLinkClass\";a:7:{s:4:\"name\";s:12:\"webLinkClass\";s:4:\"desc\";s:26:\"pdotools_prop_webLinkClass\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplOuter\";a:7:{s:4:\"name\";s:8:\"tplOuter\";s:4:\"desc\";s:22:\"pdotools_prop_tplOuter\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:41:\"@INLINE <ul[[+classes]]>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:95:\"@INLINE <li[[+classes]]><a href=\"[[+link]]\" [[+attributes]]>[[+menutitle]]</a>[[+wrapper]]</li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplParentRow\";a:7:{s:4:\"name\";s:12:\"tplParentRow\";s:4:\"desc\";s:26:\"pdotools_prop_tplParentRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"tplParentRowHere\";a:7:{s:4:\"name\";s:16:\"tplParentRowHere\";s:4:\"desc\";s:30:\"pdotools_prop_tplParentRowHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplHere\";a:7:{s:4:\"name\";s:7:\"tplHere\";s:4:\"desc\";s:21:\"pdotools_prop_tplHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplInner\";a:7:{s:4:\"name\";s:8:\"tplInner\";s:4:\"desc\";s:22:\"pdotools_prop_tplInner\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"tplInnerRow\";a:7:{s:4:\"name\";s:11:\"tplInnerRow\";s:4:\"desc\";s:25:\"pdotools_prop_tplInnerRow\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"tplInnerHere\";a:7:{s:4:\"name\";s:12:\"tplInnerHere\";s:4:\"desc\";s:26:\"pdotools_prop_tplInnerHere\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:18:\"tplParentRowActive\";a:7:{s:4:\"name\";s:18:\"tplParentRowActive\";s:4:\"desc\";s:32:\"pdotools_prop_tplParentRowActive\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:17:\"tplCategoryFolder\";a:7:{s:4:\"name\";s:17:\"tplCategoryFolder\";s:4:\"desc\";s:31:\"pdotools_prop_tplCategoryFolder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplStart\";a:7:{s:4:\"name\";s:8:\"tplStart\";s:4:\"desc\";s:22:\"pdotools_prop_tplStart\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:55:\"@INLINE <h2[[+classes]]>[[+menutitle]]</h2>[[+wrapper]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:16:\"checkPermissions\";a:7:{s:4:\"name\";s:16:\"checkPermissions\";s:4:\"desc\";s:30:\"pdotools_prop_checkPermissions\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"hereId\";a:7:{s:4:\"name\";s:6:\"hereId\";s:4:\"desc\";s:20:\"pdotools_prop_hereId\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"countChildren\";a:7:{s:4:\"name\";s:13:\"countChildren\";s:4:\"desc\";s:27:\"pdotools_prop_countChildren\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdomenu.php'),
(17, 1, 0, 'pdoTitle', '', 0, 2, 0, '/** @var array $scriptProperties */\nif (empty($outputSeparator)) {\n    $outputSeparator = \' / \';\n}\nif (empty($titleField)) {\n    $titleField = \'longtitle\';\n}\nif (!isset($pageVarKey)) {\n    $pageVarKey = \'page\';\n}\nif (!isset($queryVarKey)) {\n    $queryVarKey = \'query\';\n}\nif (empty($tplPages)) {\n    $tplPages = \'@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\';\n}\nif (empty($tplSearch)) {\n    $tplSearch = \'@INLINE «[[+mse2_query]]»\';\n}\nif (empty($minQuery)) {\n    $minQuery = 3;\n}\nif (empty($id)) {\n    $id = $modx->resource->id;\n}\nif (empty($cacheKey)) {\n    $cacheKey = \'title_crumbs\';\n}\nif (!isset($cacheTime)) {\n    $cacheTime = 0;\n}\n/** @var pdoTools $pdoTools */\n$fqn = $modx->getOption(\'pdoTools.class\', null, \'pdotools.pdotools\', true);\n$path = $modx->getOption(\'pdotools_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoTools = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$modx->lexicon->load(\'pdotools:pdopage\');\n\n/** @var modResource $resource */\n$resource = ($id == $modx->resource->id)\n    ? $modx->resource\n    : $modx->getObject(\'modResource\', $id);\nif (!$resource) {\n    return \'\';\n}\n\n$title = array();\n$pagetitle = trim($resource->get($titleField));\nif (empty($pagetitle)) {\n    $pagetitle = $resource->get(\'pagetitle\');\n}\n\n// Add search request if exists\nif (!empty($_GET[$queryVarKey]) && strlen($_GET[$queryVarKey]) >= $minQuery && !empty($tplSearch)) {\n    $pagetitle .= \' \' . $pdoTools->getChunk($tplSearch, array(\n            $queryVarKey => $modx->stripTags($_GET[$queryVarKey]),\n        ));\n}\n$title[] = $pagetitle;\n\n// Add pagination if exists\nif (!empty($_GET[$pageVarKey]) && !empty($tplPages)) {\n    $title[] = $pdoTools->getChunk($tplPages, array(\n        \'page\' => intval($_GET[$pageVarKey]),\n    ));\n}\n\n// Add parents\n$cacheKey = $resource->getCacheKey() . \'/\' . $cacheKey;\n$cacheOptions = array(\'cache_key\' => $modx->getOption(\'cache_resource_key\', null, \'resource\'));\n$crumbs = \'\';\nif (empty($cache) || !$crumbs = $modx->cacheManager->get($cacheKey, $cacheOptions)) {\n    $crumbs = $pdoTools->runSnippet(\'pdoCrumbs\', array_merge(\n        array(\n            \'to\' => $resource->id,\n            \'outputSeparator\' => $outputSeparator,\n            \'showHome\' => 0,\n            \'showAtHome\' => 0,\n            \'showCurrent\' => 0,\n            \'direction\' => \'rtl\',\n            \'tpl\' => \'@INLINE [[+menutitle]]\',\n            \'tplCurrent\' => \'@INLINE [[+menutitle]]\',\n            \'tplWrapper\' => \'@INLINE [[+output]]\',\n            \'tplMax\' => \'\',\n            \'tplHome\' => \'\',\n        ), $scriptProperties\n    ));\n}\nif (!empty($crumbs)) {\n    if (!empty($cache)) {\n        $modx->cacheManager->set($cacheKey, $crumbs, $cacheTime, $cacheOptions);\n    }\n    $title[] = $crumbs;\n}\n\nif (!empty($registerJs)) {\n    $config = array(\n        \'separator\' => $outputSeparator,\n        \'tpl\' => str_replace(array(\'[[+\', \']]\'), array(\'{\', \'}\'), $pdoTools->getChunk($tplPages)),\n    );\n    /** @noinspection Annotator */\n    $modx->regClientStartupScript(\'<script type=\"text/javascript\">pdoTitle = \' . json_encode($config) . \';</script>\',\n        true);\n}\n\nreturn implode($outputSeparator, $title);', 0, 'a:13:{s:2:\"id\";a:7:{s:4:\"name\";s:2:\"id\";s:4:\"desc\";s:16:\"pdotools_prop_id\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"exclude\";a:7:{s:4:\"name\";s:7:\"exclude\";s:4:\"desc\";s:21:\"pdotools_prop_exclude\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:25:\"pdotools_prop_title_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"titleField\";a:7:{s:4:\"name\";s:10:\"titleField\";s:4:\"desc\";s:24:\"pdotools_prop_titleField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"longtitle\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"cache\";a:7:{s:4:\"name\";s:5:\"cache\";s:4:\"desc\";s:25:\"pdotools_prop_title_cache\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"cacheTime\";a:7:{s:4:\"name\";s:9:\"cacheTime\";s:4:\"desc\";s:23:\"pdotools_prop_cacheTime\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplPages\";a:7:{s:4:\"name\";s:8:\"tplPages\";s:4:\"desc\";s:22:\"pdotools_prop_tplPages\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:68:\"@INLINE [[%pdopage_page]] [[+page]] [[%pdopage_from]] [[+pageCount]]\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"pageVarKey\";a:7:{s:4:\"name\";s:10:\"pageVarKey\";s:4:\"desc\";s:24:\"pdotools_prop_pageVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:4:\"page\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"tplSearch\";a:7:{s:4:\"name\";s:9:\"tplSearch\";s:4:\"desc\";s:23:\"pdotools_prop_tplSearch\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:27:\"@INLINE «[[+mse2_query]]»\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"queryVarKey\";a:7:{s:4:\"name\";s:11:\"queryVarKey\";s:4:\"desc\";s:25:\"pdotools_prop_queryVarKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"query\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"minQuery\";a:7:{s:4:\"name\";s:8:\"minQuery\";s:4:\"desc\";s:22:\"pdotools_prop_minQuery\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:3;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:35:\"pdotools_prop_title_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\" / \";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"registerJs\";a:7:{s:4:\"name\";s:10:\"registerJs\";s:4:\"desc\";s:24:\"pdotools_prop_registerJs\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdotitle.php');
INSERT INTO `chatmodx_site_snippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `moduleguid`, `static`, `static_file`) VALUES
(18, 1, 0, 'pdoArchive', '', 0, 2, 0, '$modx->lexicon->load(\'pdotools:pdoarchive\');\n\n/** @var array $scriptProperties */\n$tplWrapper = $modx->getOption(\'tplWrapper\', $scriptProperties);\n$tplYear = $modx->getOption(\'tplYear\', $scriptProperties);\n$tplMonth = $modx->getOption(\'tplMonth\', $scriptProperties);\n$tplDay = $modx->getOption(\'tplDay\', $scriptProperties);\n$tpl = $modx->getOption(\'tpl\', $scriptProperties);\n$dateField = $modx->getOption(\'dateField\', $scriptProperties, \'createdon\', true);\n$dateFormat = $modx->getOption(\'dateFormat\', $scriptProperties, \'H:i\', true);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \"\\n\");\n\n// Adding extra parameters into special place so we can put them in a results\n/** @var modSnippet $snippet */\n$additionalPlaceholders = $properties = array();\nif (isset($this) && $this instanceof modSnippet) {\n    $properties = $this->get(\'properties\');\n} elseif ($snippet = $modx->getObject(\'modSnippet\', array(\'name\' => \'pdoResources\'))) {\n    $properties = $snippet->get(\'properties\');\n}\nif (!empty($properties)) {\n    foreach ($scriptProperties as $k => $v) {\n        if (!isset($properties[$k])) {\n            $additionalPlaceholders[$k] = $v;\n        }\n    }\n}\n$scriptProperties[\'additionalPlaceholders\'] = $additionalPlaceholders;\nif (isset($parents) && $parents === \'\') {\n    $scriptProperties[\'parents\'] = $modx->resource->id;\n}\n$scriptProperties[\'return\'] = \'data\';\n/** @var pdoFetch $pdoFetch */\n$fqn = $modx->getOption(\'pdoFetch.class\', null, \'pdotools.pdofetch\', true);\n$path = $modx->getOption(\'pdofetch_class_path\', null, MODX_CORE_PATH . \'components/pdotools/model/\', true);\nif ($pdoClass = $modx->loadClass($fqn, $path, false, true)) {\n    $pdoFetch = new $pdoClass($modx, $scriptProperties);\n} else {\n    return false;\n}\n$pdoFetch->addTime(\'pdoTools loaded\');\n$rows = $pdoFetch->run();\n\n// Process rows\n$tree = array();\nforeach ($rows as $row) {\n    $tmp = $row[$dateField];\n    if (!is_numeric($tmp)) {\n        $tmp = strtotime($tmp);\n    }\n    $year = date(\'Y\', $tmp);\n    $month = date(\'m\', $tmp);\n    $day = date(\'d\', $tmp);\n    $tree[$year][$month][$day][] = $row;\n}\n\n$output = \'\';\nforeach ($tree as $year => $months) {\n    $rows_year = \'\';\n    $count_year = 0;\n\n    foreach ($months as $month => $days) {\n        $rows_month = \'\';\n        $count_month = 0;\n\n        foreach ($days as $day => $resources) {\n            $rows_day = array();\n            $count_day = 0;\n            $idx = 1;\n\n            foreach ($resources as $resource) {\n                $resource[\'day\'] = $day;\n                $resource[\'month\'] = $month;\n                $resource[\'year\'] = $year;\n                $resource[\'date\'] = strftime($dateFormat, $resource[$dateField]);\n                $resource[\'idx\'] = $idx++;\n                $resource[\'menutitle\'] = !empty($resource[\'menutitle\'])\n                    ? $resource[\'menutitle\']\n                    : $resource[\'pagetitle\'];\n                // Add placeholder [[+link]] if specified\n                if (!empty($scriptProperties[\'useWeblinkUrl\'])) {\n                    if (!isset($resource[\'context_key\'])) {\n                        $resource[\'context_key\'] = \'\';\n                    }\n                    if (isset($resource[\'class_key\']) && ($resource[\'class_key\'] == \'modWebLink\')) {\n                        $resource[\'link\'] = isset($resource[\'content\']) && is_numeric(trim($resource[\'content\'], \'[]~ \'))\n                            ? $pdoFetch->makeUrl(intval(trim($resource[\'content\'], \'[]~ \')), $resource)\n                            : (isset($resource[\'content\']) ? $resource[\'content\'] : \'\');\n                    } else {\n                        $resource[\'link\'] = $pdoFetch->makeUrl($resource[\'id\'], $resource);\n                    }\n                } else {\n                    $resource[\'link\'] = \'\';\n                }\n                $tpl = $pdoFetch->defineChunk($resource);\n                $rows_day[] = $pdoFetch->getChunk($tpl, $resource);\n                $count_year++;\n                $count_month++;\n                $count_day++;\n            }\n\n            $rows_month .= !empty($tplDay)\n                ? $pdoFetch->getChunk($tplDay, array(\n                    \'day\' => $day,\n                    \'month\' => $month,\n                    \'year\' => $year,\n                    \'count\' => $count_day,\n                    \'wrapper\' => implode($outputSeparator, $rows_day),\n                ), $pdoFetch->config[\'fastMode\'])\n                : implode($outputSeparator, $rows_day);\n        }\n\n        $rows_year .= !empty($tplMonth)\n            ? $pdoFetch->getChunk($tplMonth, array(\n                \'month\' => $month,\n                \'month_name\' => $modx->lexicon(\'pdoarchive_month_\' . $month),\n                \'year\' => $year,\n                \'count\' => $count_month,\n                \'wrapper\' => $rows_month,\n            ), $pdoFetch->config[\'fastMode\'])\n            : $rows_month;\n    }\n\n    $output .= !empty($tplYear)\n        ? $pdoFetch->getChunk($tplYear, array(\n            \'year\' => $year,\n            \'count\' => $count_year,\n            \'wrapper\' => $rows_year,\n        ), $pdoFetch->config[\'fastMode\'])\n        : $rows_year;\n}\n$pdoFetch->addTime(\'Rows processed\');\n\n// Return output\nif (!empty($tplWrapper) && (!empty($wrapIfEmpty) || !empty($output))) {\n    $output = $pdoFetch->getChunk(\n        $tplWrapper,\n        array_merge($additionalPlaceholders, array(\'output\' => $output)),\n        $pdoFetch->config[\'fastMode\']\n    );\n    $pdoFetch->addTime(\'Rows wrapped\');\n}\n\nif ($modx->user->hasSessionContext(\'mgr\') && !empty($showLog)) {\n    $output .= \'<pre class=\"pdoArchiveLog\">\' . print_r($pdoFetch->getTime(), 1) . \'</pre>\';\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n} else {\n    return $output;\n}', 0, 'a:36:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:17:\"pdotools_prop_tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:65:\"@INLINE <li>[[+date]] <a href=\"[[+link]]\">[[+menutitle]]</a></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplYear\";a:7:{s:4:\"name\";s:7:\"tplYear\";s:4:\"desc\";s:21:\"pdotools_prop_tplYear\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:71:\"@INLINE <h3>[[+year]] <sup>([[+count]])</sup></h3><ul>[[+wrapper]]</ul>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tplMonth\";a:7:{s:4:\"name\";s:8:\"tplMonth\";s:4:\"desc\";s:22:\"pdotools_prop_tplMonth\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:86:\"@INLINE <li><h4>[[+month_name]] <sup>([[+count]])</sup></h4><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"tplDay\";a:7:{s:4:\"name\";s:6:\"tplDay\";s:4:\"desc\";s:20:\"pdotools_prop_tplDay\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:79:\"@INLINE <li><h5>[[+day]] <sup>([[+count]])</sup></h5><ul>[[+wrapper]]</ul></li>\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"tplWrapper\";a:7:{s:4:\"name\";s:10:\"tplWrapper\";s:4:\"desc\";s:24:\"pdotools_prop_tplWrapper\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"wrapIfEmpty\";a:7:{s:4:\"name\";s:11:\"wrapIfEmpty\";s:4:\"desc\";s:25:\"pdotools_prop_wrapIfEmpty\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"dateField\";a:7:{s:4:\"name\";s:9:\"dateField\";s:4:\"desc\";s:23:\"pdotools_prop_dateField\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"dateFormat\";a:7:{s:4:\"name\";s:10:\"dateFormat\";s:4:\"desc\";s:24:\"pdotools_prop_dateFormat\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"%H:%M\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"showLog\";a:7:{s:4:\"name\";s:7:\"showLog\";s:4:\"desc\";s:21:\"pdotools_prop_showLog\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortby\";a:7:{s:4:\"name\";s:6:\"sortby\";s:4:\"desc\";s:20:\"pdotools_prop_sortby\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:9:\"createdon\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"sortbyTV\";a:7:{s:4:\"name\";s:8:\"sortbyTV\";s:4:\"desc\";s:22:\"pdotools_prop_sortbyTV\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:12:\"sortbyTVType\";a:7:{s:4:\"name\";s:12:\"sortbyTVType\";s:4:\"desc\";s:26:\"pdotools_prop_sortbyTVType\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortdir\";a:7:{s:4:\"name\";s:7:\"sortdir\";s:4:\"desc\";s:21:\"pdotools_prop_sortdir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"sortdirTV\";a:7:{s:4:\"name\";s:9:\"sortdirTV\";s:4:\"desc\";s:23:\"pdotools_prop_sortdirTV\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:3:\"ASC\";s:5:\"value\";s:3:\"ASC\";}i:1;a:2:{s:4:\"text\";s:4:\"DESC\";s:5:\"value\";s:4:\"DESC\";}}s:5:\"value\";s:3:\"ASC\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:19:\"pdotools_prop_limit\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:20:\"pdotools_prop_offset\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"depth\";a:7:{s:4:\"name\";s:5:\"depth\";s:4:\"desc\";s:19:\"pdotools_prop_depth\";s:4:\"type\";s:11:\"numberfield\";s:7:\"options\";a:0:{}s:5:\"value\";i:10;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"outputSeparator\";a:7:{s:4:\"name\";s:15:\"outputSeparator\";s:4:\"desc\";s:29:\"pdotools_prop_outputSeparator\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"\n\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:27:\"pdotools_prop_toPlaceholder\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"parents\";a:7:{s:4:\"name\";s:7:\"parents\";s:4:\"desc\";s:21:\"pdotools_prop_parents\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"includeContent\";a:7:{s:4:\"name\";s:14:\"includeContent\";s:4:\"desc\";s:28:\"pdotools_prop_includeContent\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"includeTVs\";a:7:{s:4:\"name\";s:10:\"includeTVs\";s:4:\"desc\";s:24:\"pdotools_prop_includeTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"prepareTVs\";a:7:{s:4:\"name\";s:10:\"prepareTVs\";s:4:\"desc\";s:24:\"pdotools_prop_prepareTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"processTVs\";a:7:{s:4:\"name\";s:10:\"processTVs\";s:4:\"desc\";s:24:\"pdotools_prop_processTVs\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"tvPrefix\";a:7:{s:4:\"name\";s:8:\"tvPrefix\";s:4:\"desc\";s:22:\"pdotools_prop_tvPrefix\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:3:\"tv.\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:5:\"where\";a:7:{s:4:\"name\";s:5:\"where\";s:4:\"desc\";s:19:\"pdotools_prop_where\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:15:\"showUnpublished\";a:7:{s:4:\"name\";s:15:\"showUnpublished\";s:4:\"desc\";s:29:\"pdotools_prop_showUnpublished\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:11:\"showDeleted\";a:7:{s:4:\"name\";s:11:\"showDeleted\";s:4:\"desc\";s:25:\"pdotools_prop_showDeleted\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:10:\"showHidden\";a:7:{s:4:\"name\";s:10:\"showHidden\";s:4:\"desc\";s:24:\"pdotools_prop_showHidden\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:14:\"hideContainers\";a:7:{s:4:\"name\";s:14:\"hideContainers\";s:4:\"desc\";s:28:\"pdotools_prop_hideContainers\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:7:\"context\";a:7:{s:4:\"name\";s:7:\"context\";s:4:\"desc\";s:21:\"pdotools_prop_context\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:8:\"totalVar\";a:7:{s:4:\"name\";s:8:\"totalVar\";s:4:\"desc\";s:22:\"pdotools_prop_totalVar\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:5:\"total\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:9:\"resources\";a:7:{s:4:\"name\";s:9:\"resources\";s:4:\"desc\";s:23:\"pdotools_prop_resources\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"select\";a:7:{s:4:\"name\";s:6:\"select\";s:4:\"desc\";s:20:\"pdotools_prop_select\";s:4:\"type\";s:8:\"textarea\";s:7:\"options\";a:0:{}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:6:\"scheme\";a:7:{s:4:\"name\";s:6:\"scheme\";s:4:\"desc\";s:20:\"pdotools_prop_scheme\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:6:{i:0;a:2:{s:5:\"value\";s:0:\"\";s:4:\"text\";s:14:\"System default\";}i:1;a:2:{s:5:\"value\";i:-1;s:4:\"text\";s:25:\"-1 (relative to site_url)\";}i:2;a:2:{s:5:\"value\";s:4:\"full\";s:4:\"text\";s:40:\"full (absolute, prepended with site_url)\";}i:3;a:2:{s:5:\"value\";s:3:\"abs\";s:4:\"text\";s:39:\"abs (absolute, prepended with base_url)\";}i:4;a:2:{s:5:\"value\";s:4:\"http\";s:4:\"text\";s:38:\"http (absolute, forced to http scheme)\";}i:5;a:2:{s:5:\"value\";s:5:\"https\";s:4:\"text\";s:40:\"https (absolute, forced to https scheme)\";}}s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}s:13:\"useWeblinkUrl\";a:7:{s:4:\"name\";s:13:\"useWeblinkUrl\";s:4:\"desc\";s:27:\"pdotools_prop_useWeblinkUrl\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";a:0:{}s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"pdotools:properties\";s:4:\"area\";s:0:\"\";}}', '', 0, 'core/components/pdotools/elements/snippets/snippet.pdoarchive.php');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_site_templates`
--

CREATE TABLE `chatmodx_site_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int(11) NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_site_templates`
--

INSERT INTO `chatmodx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'Начальный шаблон', 'Template', 0, 0, '', 0, '\n<script>\nvar conn = new WebSocket(\'ws://modxchat.loc:8080\');\nconn.onopen = function(e) {\n    console.log(\"Connection established!\");\n};\n\nconn.onmessage = function(e) {\n    console.log(e.data);\n};\n</script>\n\n', 0, 'a:0:{}', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_site_tmplvars`
--

CREATE TABLE `chatmodx_site_tmplvars` (
  `id` int(10) UNSIGNED NOT NULL,
  `source` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int(11) NOT NULL DEFAULT '0',
  `category` int(11) NOT NULL DEFAULT '0',
  `locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int(11) NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_site_tmplvar_access`
--

CREATE TABLE `chatmodx_site_tmplvar_access` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `documentgroup` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_site_tmplvar_contentvalues`
--

CREATE TABLE `chatmodx_site_tmplvar_contentvalues` (
  `id` int(10) UNSIGNED NOT NULL,
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `contentid` int(10) NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_site_tmplvar_templates`
--

CREATE TABLE `chatmodx_site_tmplvar_templates` (
  `tmplvarid` int(10) NOT NULL DEFAULT '0',
  `templateid` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_system_eventnames`
--

CREATE TABLE `chatmodx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_system_eventnames`
--

INSERT INTO `chatmodx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('msOnAddToCart', 6, 'miniShop2'),
('msOnAddToOrder', 6, 'miniShop2'),
('msOnBeforeAddToCart', 6, 'miniShop2'),
('msOnBeforeAddToOrder', 6, 'miniShop2'),
('msOnBeforeChangeInCart', 6, 'miniShop2'),
('msOnBeforeChangeOrderStatus', 6, 'miniShop2'),
('msOnBeforeCreateOrder', 6, 'miniShop2'),
('msOnBeforeCreateOrderProduct', 6, 'miniShop2'),
('msOnBeforeEmptyCart', 6, 'miniShop2'),
('msOnBeforeEmptyOrder', 6, 'miniShop2'),
('msOnBeforeGetOrderCost', 6, 'miniShop2'),
('msOnBeforeRemoveFromCart', 6, 'miniShop2'),
('msOnBeforeRemoveFromOrder', 6, 'miniShop2'),
('msOnBeforeRemoveOrder', 6, 'miniShop2'),
('msOnBeforeRemoveOrderProduct', 6, 'miniShop2'),
('msOnBeforeUpdateOrder', 6, 'miniShop2'),
('msOnBeforeUpdateOrderProduct', 6, 'miniShop2'),
('msOnBeforeValidateOrderValue', 6, 'miniShop2'),
('msOnChangeInCart', 6, 'miniShop2'),
('msOnChangeOrderStatus', 6, 'miniShop2'),
('msOnCreateOrder', 6, 'miniShop2'),
('msOnCreateOrderProduct', 6, 'miniShop2'),
('msOnEmptyCart', 6, 'miniShop2'),
('msOnEmptyOrder', 6, 'miniShop2'),
('msOnGetOrderCost', 6, 'miniShop2'),
('msOnGetProductPrice', 6, 'miniShop2'),
('msOnGetProductWeight', 6, 'miniShop2'),
('msOnManagerCustomCssJs', 6, 'miniShop2'),
('msOnRemoveFromCart', 6, 'miniShop2'),
('msOnRemoveFromOrder', 6, 'miniShop2'),
('msOnRemoveOrder', 6, 'miniShop2'),
('msOnRemoveOrderProduct', 6, 'miniShop2'),
('msOnSubmitOrder', 6, 'miniShop2'),
('msOnUpdateOrder', 6, 'miniShop2'),
('msOnUpdateOrderProduct', 6, 'miniShop2'),
('msOnValidateOrderValue', 6, 'miniShop2'),
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System'),
('pdoToolsOnFenomInit', 6, 'pdoTools');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_system_settings`
--

CREATE TABLE `chatmodx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_system_settings`
--

INSERT INTO `chatmodx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/display/revolution20/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_disabled', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_system_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js', '1', 'combo-boolean', 'core', 'manager', NULL),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('controlerrorlog.admin_email', '', 'textfield', 'controlerrorlog', 'controlerrorlog.main', NULL),
('controlerrorlog.auto_refresh', '1', 'combo-boolean', 'controlerrorlog', 'controlerrorlog.main', NULL),
('controlerrorlog.control_frontend', '', 'combo-boolean', 'controlerrorlog', 'controlerrorlog.main', NULL),
('controlerrorlog.last_lines', '15', 'numberfield', 'controlerrorlog', 'controlerrorlog.main', NULL),
('controlerrorlog.refresh_freq', '60', 'numberfield', 'controlerrorlog', 'controlerrorlog.main', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2018-03-25 19:55:51'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'krasnikovrs@gmail.com', 'textfield', 'core', 'authentication', '2018-03-25 19:55:50'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('extension_packages', '[{\"minishop2\":{\"path\":\"[[++core_path]]components/minishop2/model/\"}}]', 'textfield', 'core', 'system', NULL),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('feed_modx_news', 'http://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'http://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', NULL),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2018-03-25 19:55:51'),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2018-03-25 19:55:51'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_mscategory', 'icon icon-barcode', 'textarea', 'minishop2', 'ms2_category', NULL),
('mgr_tree_icon_msproduct', 'icon icon-tag', 'textarea', 'minishop2', 'ms2_product', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('ms2_cart_handler_class', 'msCartHandler', 'textfield', 'minishop2', 'ms2_cart', NULL),
('ms2_category_content_default', '', 'textarea', 'minishop2', 'ms2_category', NULL),
('ms2_category_grid_fields', 'id,menuindex,pagetitle,article,price,thumb,new,favorite,popular', 'textarea', 'minishop2', 'ms2_category', NULL),
('ms2_category_id_as_alias', '', 'combo-boolean', 'minishop2', 'ms2_category', NULL),
('ms2_category_remember_tabs', '1', 'combo-boolean', 'minishop2', 'ms2_category', NULL),
('ms2_category_show_comments', '1', 'combo-boolean', 'minishop2', 'ms2_category', NULL),
('ms2_category_show_nested_products', '1', 'combo-boolean', 'minishop2', 'ms2_category', NULL),
('ms2_category_show_options', '', 'combo-boolean', 'minishop2', 'ms2_category', NULL),
('ms2_date_format', '%d.%m.%y <span class=\"gray\">%H:%M</span>', 'textfield', 'minishop2', 'ms2_order', NULL),
('ms2_email_manager', '', 'textfield', 'minishop2', 'ms2_order', NULL),
('ms2_frontend_css', '[[+cssUrl]]web/default.css', 'textfield', 'minishop2', 'ms2_frontend', NULL),
('ms2_frontend_js', '[[+jsUrl]]web/default.js', 'textfield', 'minishop2', 'ms2_frontend', NULL),
('ms2_order_address_fields', 'receiver,phone,index,country,region,city,metro,street,building,room,comment', 'textarea', 'minishop2', 'ms2_order', NULL),
('ms2_order_grid_fields', 'id,num,customer,status,cost,weight,delivery,payment,createdon,updatedon,comment', 'textarea', 'minishop2', 'ms2_order', NULL),
('ms2_order_handler_class', 'msOrderHandler', 'textfield', 'minishop2', 'ms2_order', NULL),
('ms2_order_product_fields', 'name,product_article,weight,price,count,cost', 'textarea', 'minishop2', 'ms2_order', '2018-03-27 17:31:20'),
('ms2_order_user_groups', '', 'textfield', 'minishop2', 'ms2_order', NULL),
('ms2_payment_paypal_api_url', 'https://api-3t.paypal.com/nvp', 'textfield', 'minishop2', 'ms2_payment', NULL),
('ms2_payment_paypal_cancel_id', '', 'numberfield', 'minishop2', 'ms2_payment', NULL),
('ms2_payment_paypal_cancel_order', '', 'combo-boolean', 'minishop2', 'ms2_payment', NULL),
('ms2_payment_paypal_checkout_url', 'https://www.paypal.com/webscr?cmd=_express-checkout&token=', 'textfield', 'minishop2', 'ms2_payment', NULL),
('ms2_payment_paypal_currency', 'USD', 'textfield', 'minishop2', 'ms2_payment', NULL),
('ms2_payment_paypal_pwd', '', 'text-password', 'minishop2', 'ms2_payment', NULL),
('ms2_payment_paypal_signature', '', 'text-password', 'minishop2', 'ms2_payment', NULL),
('ms2_payment_paypal_success_id', '', 'numberfield', 'minishop2', 'ms2_payment', NULL),
('ms2_payment_paypal_user', '', 'textfield', 'minishop2', 'ms2_payment', NULL),
('ms2_plugins', '[]', 'textarea', 'minishop2', 'ms2_main', NULL),
('ms2_price_format', '[2, \".\", \" \"]', 'textfield', 'minishop2', 'ms2_product', NULL),
('ms2_price_format_no_zeros', '1', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('ms2_product_extra_fields', 'price,old_price,article,weight,color,size,vendor,made_in,tags,new,popular,favorite', 'textarea', 'minishop2', 'ms2_product', NULL),
('ms2_product_id_as_alias', '', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('ms2_product_remember_tabs', '1', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('ms2_product_show_comments', '1', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('ms2_product_show_in_tree_default', '', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('ms2_product_source_default', '2', 'modx-combo-source', 'minishop2', 'ms2_product', '2018-03-27 17:31:20'),
('ms2_product_tab_categories', '1', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('ms2_product_tab_extra', '1', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('ms2_product_tab_gallery', '1', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('ms2_product_tab_links', '1', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('ms2_product_tab_options', '1', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('ms2_services', '{\"cart\":[],\"order\":[],\"payment\":[],\"delivery\":[]}', 'textarea', 'minishop2', 'ms2_main', NULL),
('ms2_template_category_default', '', 'modx-combo-template', 'minishop2', 'ms2_category', NULL),
('ms2_template_product_default', '', 'modx-combo-template', 'minishop2', 'ms2_product', NULL),
('ms2_weight_format', '[3, \".\", \" \"]', 'textfield', 'minishop2', 'ms2_product', NULL),
('ms2_weight_format_no_zeros', '1', 'combo-boolean', 'minishop2', 'ms2_product', NULL),
('parser_class', 'pdoParser', 'textfield', 'pdotools', 'pdotools_main', NULL),
('parser_class_path', '{core_path}components/pdotools/model/pdotools/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '8', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('pdoFetch.class', 'pdotools.pdofetch', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdofetch_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdoTools.class', 'pdotools.pdotools', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_class_path', '{core_path}components/pdotools/model/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_elements_path', '{core_path}elements/', 'textfield', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_cache', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_default', '1', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_modx', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_options', '', 'textarea', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_parser', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_php', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('pdotools_fenom_save_on_errors', '', 'combo-boolean', 'pdotools', 'pdotools_main', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '0', 'combo-boolean', 'core', 'system', NULL),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '2.6.1-pl', 'textfield', 'core', 'system', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_files', 'txt,html,htm,xml,js,css,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,odt,ods,odp,odb,odg,odf,md,ttf,woff,eot,scss,less,css.map', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '104857600', 'textfield', 'core', 'file', '2018-03-25 19:55:51'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('use_alias_path', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2018-03-25 19:55:51'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2018-03-25 20:00:12'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.26.html ', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_transport_packages`
--

CREATE TABLE `chatmodx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `provider` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_transport_packages`
--

INSERT INTO `chatmodx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('controlerrorlog-1.2.1-pl', '2018-03-27 21:14:07', '2018-03-27 18:14:20', '2018-03-27 21:14:20', 0, 1, 1, 0, 'controlerrorlog-1.2.1-pl.transport.zip', NULL, 'a:37:{s:9:\"changelog\";s:1548:\"Changelog for controlErrorLog.\n\n1.2.1-pl\n==============\n- Moved \"Make a copy\" button to the left (PR #16).\n\n1.2.0-pl\n==============\n- Added a button \"Make a copy\" which makes a copy of the error log with current timestamp in the name.\n- Changed the admin notification event from \"OnHandleRequest\" to \"OnWebPageComplete\".\n\n1.1.3-pl\n==============\n- Fixed bug which occurs when the error log is bigger then allowed memory size [#14].\n\n1.1.2-pl\n==============\n- Code optimization.\n- Added cron script for checking the error log (core/components/controlerrorlog/cron/checkerrorlog.php).\n\n1.1.1-pl\n==============\n- Updated the Dutch lexicon.\n\n1.1.0-pl\n==============\n- Added control of the error log in the frontend of the site and admin notification.\n\n1.0.5-pl\n==============\n- Fixed bug with lexicon strings with some CMPs (#6)\n\n1.0.4-pl\n==============\n- Fixed the error #5.\n\n1.0.3-pl\n==============\n- Now the error log is checked for errors every minute (by default). It can be switched off.\n- Add a system setting \"Last lines\".\n- Add a system setting \"Refresh frequency\".\n- Add a system setting \"Auto refresh\".\n- Some improvements - now the window closes with animation, refreshing the error log on opening the window.\n\n1.0.2-pl\n==============\n- Removed the table creation script.\n\n1.0.1-pl\n==============\n- Changed the appearance of the error indicator.\n- Now the error indicator is displayed only for users with permission \"error_log_view\".\n- Removed Error Log button.\n- Added language support for Dutch.\n\n1.0.0-pl\n==============\n- Initial release\";s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:351:\"--------------------\ncontrolErrorLog\n--------------------\nAuthor: Sergey Shlokov <sergant210@bk.ru>\n--------------------\n\nThis Extra adds a new feature to manager interface - the ability to control the error log and view it in a popup window.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/sergant210/controlErrorLog/issues\";s:13:\"setup-options\";s:42:\"controlerrorlog-1.2.1-pl/setup-options.php\";s:9:\"signature\";s:24:\"controlerrorlog-1.2.1-pl\";s:13:\"initialConfig\";s:15:\"[object Object]\";s:4:\"text\";s:20:\"Продолжить\";s:2:\"id\";s:19:\"package-install-btn\";s:6:\"hidden\";s:5:\"false\";s:7:\"handler\";s:1741:\"function (va){\n        var r;\n        var g = Ext.getCmp(\'modx-package-grid\');\n        if (!g) return false;\n\n        if (va.signature != undefined && va.signature != \'\') {\n            r = {signature: va.signature};\n        } else {\n            r = g.menu.record.data ? g.menu.record.data : g.menu.record;\n        }\n		var topic = \'/workspace/package/install/\'+r.signature+\'/\';\n        g.loadConsole(Ext.getBody(),topic);\n\n		va = va || {};\n        Ext.apply(va,{\n            action: \'workspace/packages/install\'\n            ,signature: r.signature\n            ,register: \'mgr\'\n            ,topic: topic\n        });\n\n        MODx.Ajax.request({\n            url: MODx.config.connector_url\n            ,params: va\n            ,listeners: {\n                \'success\': {fn:function() {\n                    var bc = Ext.getCmp(\'packages-breadcrumbs\');\n                    var trail= bc.data.trail;\n                    trail.pop();\n\n                    if (trail.length > 1) {\n                        last = trail[trail.length - 1];\n\n                        if (last != undefined && last.rec != undefined) {\n                            bc.data.trail.pop();\n                            bc.data.trail.shift();\n                            bc.updateDetail(bc.data);\n\n                            var grid = Ext.getCmp(\'modx-package-grid\');\n                            grid.install(last.rec);\n                            return;\n                        }\n                    }\n\n                    this.activate();\n					Ext.getCmp(\'modx-package-grid\').refresh();\n                },scope:this}\n                ,\'failure\': {fn:function() {\n                    this.activate();\n                },scope:this}\n            }\n        });\n\n        return true;\n	}\";s:8:\"disabled\";s:5:\"false\";s:5:\"scope\";s:15:\"[object Object]\";s:9:\"autoWidth\";s:4:\"true\";s:10:\"autoHeight\";s:4:\"true\";s:8:\"minWidth\";s:2:\"75\";s:10:\"removeMode\";s:9:\"container\";s:10:\"hideParent\";s:4:\"true\";s:6:\"events\";s:15:\"[object Object]\";s:7:\"ownerCt\";s:15:\"[object Object]\";s:9:\"container\";s:15:\"[object Object]\";s:8:\"rendered\";s:4:\"true\";s:8:\"template\";s:15:\"[object Object]\";s:5:\"btnEl\";s:15:\"[object Object]\";s:4:\"mons\";s:15:\"[object Object]\";s:2:\"el\";s:15:\"[object Object]\";s:4:\"icon\";s:0:\"\";s:7:\"iconCls\";s:0:\"\";s:8:\"boxReady\";s:4:\"true\";s:11:\"useSetClass\";s:4:\"true\";s:6:\"oldCls\";s:12:\"x-btn-noicon\";s:3:\"doc\";s:15:\"[object Object]\";s:8:\"lastSize\";s:15:\"[object Object]\";s:19:\"monitoringMouseOver\";s:4:\"true\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:52:\"/workspace/package/install/controlerrorlog-1.2.1-pl/\";s:14:\"package_action\";i:0;}', 'controlErrorLog', 'a:38:{s:2:\"id\";s:24:\"5a7d4728bc8dd374438b4567\";s:7:\"package\";s:24:\"55b755a4dc532f69510da2ef\";s:12:\"display_name\";s:24:\"controlerrorlog-1.2.1-pl\";s:4:\"name\";s:15:\"controlErrorLog\";s:7:\"version\";s:5:\"1.2.1\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"2\";s:13:\"version_patch\";s:1:\"1\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:10:\"sergant210\";s:11:\"description\";s:1210:\"<p style=\"\">Now you will not miss any errors. If the log is too large you will see a certain number of the last lines you have specified in the system setting \"Last lines\" (thanks Bob Ray for the idea). By default, 15.</p><p><b>System settings</b></p><p></p><p><b>last_lines</b> - Displays the specified number of last lines when the error log is too large to display.   </p><p><b>auto_refresh</b> - Check the state of the error log with the specified frequency. </p><p><b>refresh_freq </b>- Error log refresh frequency in seconds. By default, set to 60 seconds.</p><p><b>control_frontend </b>- If true the email notification is activated. Must be specified the admin email.</p><p><b>admin_email </b>- Admin email to notify about changes in the error log. If empty the notification would not work.</p><p><b>Cron task</b></p><p>Use the script <i>core/components/controlerrorlog/cron/checkerrorlog.php</i> to check the error log for new errors.</p><p style=\"\"><b>Important! </b>The error indicator in the manager interface is displayed only for administrators (sudo) and users with permission \"error_log_view\".</p><p style=\"\">See details on <a href=\"https://github.com/sergant210/controlErrorLog\">Github</a>.</p>\";s:12:\"instructions\";s:37:\"<p>Install via Package Management</p>\";s:9:\"changelog\";s:1921:\"<p>1.2.1-pl</p><p>==============</p><p>- Moved the \"Make a copy\"&nbsp;&nbsp;button to the left.</p><p>1.2.0-pl</p><p>==============</p><p>- Added a button \"Make a copy\" which makes a copy of the error log with current timestamp in the name.</p><p>- Changed the admin notification event from \"OnHandleRequest\" to \"OnWebPageComplete\".</p><p>1.1.3-pl</p><p>==============</p><p>- Fixed bug which occurs when the error log is bigger then allowed memory size &#91;#14&#93;.</p><p>1.1.2-pl</p><p>==============</p><p>- Code optimization.</p><p>- Added cron script for checking the error log (core/components/controlerrorlog/cron/checkerrorlog.php).</p><p>1.1.1-pl</p><p>==============</p><p>- Updated the Dutch lexicon.</p><p>1.1.0-pl</p><p>==============</p><p>- Added control of the error log in the frontend of the site and admin notification.</p><p>1.0.5-pl</p><p>==============</p>- Fixed bug with lexicon strings with some CMPs (#6)<p>1.0.4-pl</p><p>==============</p><p>- Fixed the bug #5.</p><p></p><p>1.0.3-pl</p><p>==============</p><p>- Now the error log is checked for errors every minute (by default). It can be switched off.</p><p>- Add a system setting \"Last lines\".</p><p>- Add a system setting \"Refresh frequency\".</p><p>- Add a system setting \"Auto refresh\".</p><p style=\"\">- Some improvements - now the window closes with animation, refreshing the error log on opening the window.</p><p style=\"\">1.0.2-pl</p><p style=\"\">==============</p><p style=\"\">- Removed the table creation script.</p><p style=\"\">1.0.1-pl</p><p style=\"\">==============</p><p style=\"\">- Changed the appearance of the error indicator (Icons instead of text).</p><p style=\"\">- Now the error indicator is displayed only for users with permission \"error_log_view\".</p><p style=\"\">- Removed \"Error Log\" button.</p><p style=\"\">-&nbsp; Added language support for Dutch.</p><p style=\"\">1.0.0-pl==============</p><p style=\"\">- Initial release</p>\";s:9:\"createdon\";s:24:\"2018-02-09T07:00:56+0000\";s:9:\"createdby\";s:10:\"sergant210\";s:8:\"editedon\";s:24:\"2018-03-27T13:02:22+0000\";s:10:\"releasedon\";s:24:\"2018-02-09T07:00:56+0000\";s:9:\"downloads\";s:4:\"4159\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.3\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5a7d4728bc8dd374438b4568\";s:9:\"signature\";s:24:\"controlerrorlog-1.2.1-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.3\";s:9:\"breaks_at\";s:3:\"2.5\";s:10:\"screenshot\";s:77:\"http://modx.s3.amazonaws.com/extras/55b755a4dc532f69510da2ef/errorlog10en.jpg\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5a7d4728bc8dd374438b4568\";s:7:\"version\";s:24:\"5a7d4728bc8dd374438b4567\";s:8:\"filename\";s:38:\"controlerrorlog-1.2.1-pl.transport.zip\";s:9:\"downloads\";s:3:\"306\";s:6:\"lastip\";s:12:\"92.53.96.125\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5a7d4728bc8dd374438b4568\";}s:17:\"package-signature\";s:24:\"controlerrorlog-1.2.1-pl\";s:10:\"categories\";s:29:\"administration,administration\";s:4:\"tags\";s:12:\"errorlog,log\";}', 1, 2, 1, 'pl', 0);
INSERT INTO `chatmodx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('minishop2-2.4.12-pl', '2018-03-27 20:29:22', '2018-03-27 17:31:36', '2018-03-27 20:31:36', 0, 1, 1, 0, 'minishop2-2.4.12-pl.transport.zip', NULL, 'a:10:{s:9:\"changelog\";s:23028:\"Changelog for miniShop2.\n\n2.4.12 pl\n==============\n- Added dutch lexicons by Sterc\n- Added greek frontend lexicon\n- When you change the price of a product with msOnGetProductPrice, the old_price will be changed only if the new price is lower.\n- Fixed method msProductData:rankProductImages()\n\n2.4.11 pl\n==============\n- Fixed default path to loading services in the loadCustomClasses() method.\n- Update the cost of an orders after product addition.\n- Improved processing of products options.\n- Removed call of ms2Gallery::syncFiles() from msProductData::updateProductImage().\n- [mgr] Add contexts list into filters at the orders page.\n- [mgr] Fixed possible error on get orders statuses list.\n- [mgr] Fix \"xcheckbox\" in a Product options.\n- [mgr] Add \"expand,collapse,check,uncheck\" actions to the categories and options trees.\n\n2.4.10 pl\n==============\n- Fixed possible E_WARNING in the snippet msOrder.\n- Added events in the processors of msOrderProduct.\n\n2.4.9 pl\n==============\n- Improved loading of pdoTools in snippets\n\n2.4.8 pl\n==============\n- Added support of ms2Gallery 2.0.\n- Media source option \"thumbnails\" now uses key of array with parameters as alias for thumbnail.\n- Removed system setting \"ms2_product_thumbnail_size\".\n- Fixed bug of gallery with drag-over in Firefox.\n\n2.4.7 pl\n==============\n- Fixed the loading of product plugins when they can be loaded multiple times.\n- Fixed fatal error on get classes in settings with some 3rd party payment methods.\n- Fixed bug with incorrect rank of thumbnails after a sorting.\n\n2.4.6 pl\n==============\n- Added the checking of users email when getting a customer id for new order.\n- Improved compatibility with MODX 2.5.2.\n\n2.4.5 pl\n==============\n- Fixed possible error in log on create a new product from cli mode.\n- Updated jGrowl to version 1.4.5.\n\n2.4.4 pl\n==============\n- [#242] Ability to specify only needed options in the snippet msProductOptions.\n- [#212, #241] Fixed handling of a product options with a dot in the name.\n- [#240] Fixed the reset of date fields when product has been edited via category grid.\n- [#239] Fixed duplicate and empty options in msProductData.\n- [#229, #238] Categories tree now respects the \"resource_tree_node_name_fallback\" system setting.\n\n2.4.3 pl\n==============\n- [#237] Fixed msProductData::get(\'options\') method.\n- [#236] Ability to display category columns of an ordered product.\n- [#231] Snippet msOptions now transfers id of a product into a chunk.\n- [#230] Fixed the inability to change vendor of a product more than 1 times.\n- [#228] Possible fix for \"empty file\" in product gallery on some server configurations.\n- [#227] Improved performance of the grid with options in settings.\n\n2.4.2 pl\n==============\n- Fixed error when system setting \"ms2_product_tab_gallery\" is disabled.\n\n2.4.1 pl2\n==============\n- Fixed error with overwrite product options when update from category grid.\n\n2.4.0 pl\n==============\n- [#222] Optimized some code in chunks.\n\n2.4.0 rc11\n==============\n- [msGallery] Improved fetching of thumbnails in the snippet.\n- [#220] [mgr] Improved the total numbers in the form of orders.\n\n2.4.0 rc10\n==============\n- msPaymentHandler::getOrderHash() now includes order num.\n\n2.4.0 rc9\n==============\n- [#215] Ability to specify working context for cart.\n\n2.4.0 rc8\n==============\n- [#218] The product options are active immediately after assigning them to categories.\n\n2.4.0 rc7\n==============\n- Reverted back #216 due to issues.\n- [#216] [msGetOrder] Need to update pdoTools to version 2.5.6-pl to fix this.\n- [msGetOrder] Orders are show to all if parameter &id is set.\n- [mgr] Fixed number of rows in orders panel.\n\n2.4.0 rc6\n==============\n- [#216] [msGetOrder] Fixed ability to &includeTVs.\n\n2.4.0 rc5\n==============\n- Removed wrong \"requires\" field in msPayment settings.\n\n2.4.0 rc4\n==============\n- Improved migration of system settings when upgrade from older versions.\n\n2.4.0 rc3\n==============\n- [msGallery] Improved snippet in case when product has no media source set.\n- Fixed work with autocomplete product options.\n\n2.4.0 rc2\n==============\n- Fixed duplicate of order number in msOrderHandler.\n\n2.4.0 rc1\n==============\n- Fixed loop error on change class key from modResource to msProduct.\n\n2.4.0 rc\n==============\n- All snippets are completely rewritten.\n- All chunks uses Fenom syntax.\n- Improved compatibility with MySQL 5.7.\n- Improved orders form panel.\n- [msOrder] Removed chunks tpl.msOrder.delivery, tpl.msOrder.payment and tpl.msOrder.success.\n- [msOrder] Chunk tpl.msOrder.outer renamed to tpl.msOrder.\n- [msOrder] New parameter &userFields.\n- [msCart] Removed chunks tpl.msCart.row and tpl.msCart.empty.\n- [msCart] Chunk tpl.msCart.outer renamed to tpl.msCart.\n- [msGetOrder] Now acts as usual snippet and do not set placeholders to the page by default.\n- [msGetOrder] Removed chunk tpl.msGetOrder.row.\n- [msGetOrder] Added chunk tpl.msGetOrder.\n- [msOptions] Removed chunks tpl.msOptions.outer and tpl.msOptions.row.\n- [msOptions] Added chunk tpl.msOptions.\n- [msProductOptions] Removed chunks tpl.msProductOptions.outer and tpl.msProductOptions.row.\n- [msProductOptions] Added chunk tpl.msProductOptions.\n- [msGallery] Removed chunks tpl.msGallery.outer, tpl.msGallery.row and tpl.msGallery.empty.\n- [msGallery] Added chunk tpl.msGallery.\n- [msGallery] Added Fotorama script out from the box.\n- Improved email chunks. Added common email template.\n\n2.4.0 beta3\n==============\n- Small improvements of product gallery.\n- Improved ExtJS settings panel.\n\n2.4.0 beta2\n==============\n- Added system setting \"ms2_template_category_default\".\n- Improved referrals registration.\n- Improved ExtJS product panel.\n- Emails chunks are now processed by pdoTools.\n- Replaced modX::toJSON and modX::fromJSON calls to native functions.\n- New system to register 3rd party classes of extensions.\n- New system to register 3rd party plugins for objects model.\n- Improved duplicate of products and categories.\n- The data fields of the product are added to the tags of the resource: [[*price]], [[*article]] etc.\n- Improved registration of JS and CSS on frontend.\n- Javascript callbacks now are arrays with functions. New functions to register and remove callbacks.\n- Updated model for MySQL 5.7.\n- Improved product gallery.\n- New logo.\n\n2.4.0 beta1\n==============\n- Improved categories with products.\n- Improved menu of categories in resources tree.\n- Ability to change class_key of category.\n- Many improvements of ExtJS category panel and products grid.\n- Setting ms2_category_content_default is now empty by default.\n\n2.4.0 beta0\n==============\n- Fixed php type of \"article\" in msProductData xPDO object.\n- Improved orders panel.\n- Updated builder.\n- Added icons for CRCs in managers tree.\n- Minimum version is MODX 2.3.\n\n2.2.0 pl2\n==============\n- ID for Category\'s options tab\n- Fix installation for MODX 2.4.0\n- msProductOptions product property\n\n2.2.0 beta4\n==============\n- Category pagination fix.\n- Fixed bug removal options when modifying and generating images of products\n- Don\'t display tplOuter when all options are empty with hideEmpty=1\n\n2.2.0 beta3\n==============\n- Measure units for options.\n- Restrictions for option names.\n- Superboxselect and checkbox option types.\n- Fixed bug with empty options after modResource save.\n\n2.2.0 beta2\n==============\n- Groups of options support.\n- hideEmpty parameter in msProductOptions snippet.\n- Fixed some bugs.\n\n2.2.0 beta\n==============\n- Custom product options support. More info at modx.pro.\n- Fixed TV showing under content.\n- Some code refactoring.\n\n2.1.12 pl\n==============\n- Improved installation script for MODX 2.4.\n\n2.1.11 pl\n==============\n- Added new events: \"msOnBeforeGetOrderCost\" and \"msOnGetOrderCost\".\n- [mgr] Direct links to orders in manager.\n\n2.1.10 pl1\n==============\n- Added support of Tickets 1.6.\n- Updated pdoTools version in the installer.\n\n2.1.9 beta\n==============\n- Fixed modification of order price by delivery and payment in default order handler.\n- Fixed processing of decimal prices in PayPal payment class.\n- Improved chunk tpl.msOrder.payment.\n\n2.1.8 pl3\n==============\n- Fixed controllers for MODX 2.3.\n- Fixed routes to processors for MODX 2.3.\n- Fixed product getlist processor for MODX 2.3.\n- Fixed sorting products in category grid by clicking on column header.\n- Disabled Bootstrap icons for MODX 2.3.\n- Fixed product gallery for MODX 2.3.\n- Fixed issue with deleting product files children in MODX 2.3.\n- Fixed \"autocomplete_err_noquery\" error in MODX 2.3.\n- [#148] Fixed duplicate connector.\n- Fixed work of \"minishop2-combo-user\" in MODX 2.3.\n\n2.1.8 beta\n==============\n- Added field \"name\" in object msOrderProduct for storing pagetitle of the product.\n- Fixed log level in PayPal method.\n- Added integer field \"type\" to msOrder.\n- Fixed CustomerProfile connection in schema.\n- Improved price and weight formatting in orders table.\n- Some UI improvements and fixes.\n\n2.1.7 pl5\n==============\n- [#131] Fixed update of product thumb when you update thumbnails.\n- [#129] [msGetOrder] Fixed setting of placeholders.\n- Fixed work with comments on product panel.\n- [msOrder] Now snippet loads \"building\", \"room\" and \"comment\" from extended field of users profile.\n- [mgr] Fixed parameter \"maxUploadSize\" in gallery.\n\n2.1.7 pl1\n==============\n- [#119] Improved compatibility with AjaxManager.\n- [#118] Fixed negative cost in payment and delivery methods.\n- [#113] Added Lithuanian lexicons.\n- [#112] Restrict cart items to specific contexts.\n- [#111] Fixed remove of products links.\n- [#107] Fixed empty customer field if fullname is not specified.\n- [#106] Additional check of friendly filename in gallery.\n- New system setting \"ms2_category_remember_grid\".\n\n2.1.6 pl4\n==============\n- [#110] Fix generate thumbs on upload for Amazon S3.\n- Fixed counting money spent in new customers.\n- [#104] Fixed placeholder [[+cart_weight]] in emails.\n- [#102] Improved checking of thumbnails url.\n- [#98] Refactored permissions in processors.\n- [#94] Formatted placeholder [[+cost]] in snippet msCart\n- [#78] Fixed setting flag isfolder to false for old category of the product.\n- Fixed handling of non-ajax requests.\n- Removed unnecessary ajax request on add to cart. Fixed possibly E_NOTICE.\n\n2.1.5 pl\n==============\n- Improved rename of files in gallery.\n- Added default media source in product \"create\" processor.\n- Added default template in product \"create\" processor.\n- Added buttons in orders management page.\n\n2.1.4 pl5\n==============\n- Added script for import products in core/components/minishop2/import/csv.php.\n- Fixed icons in chunks.\n- [#95] Fixed price and weight format.\n- Improved installator. Now you can update chunks on install.\n- Fixed possible errors on thumbnail generation.\n- Progressive thumbnails in gallery.\n\n2.1.3 pl2\n==============\n- Support Bootstrap3.\n- Fixed E_WARNING in snippet msOptions.\n- Fixed bug with php-apc on create order.\n\n2.1.2 pl2\n==============\n- Fixed possibly E_NOTICE in snippets.\n\n2.1.2 pl\n==============\n- [#77] Fixed change type of existing resource to \"msProduct\".\n- Added ability to hide tabs of product page in manager. See new system settings.\n- Improved style of horizontal product tabs.\n- Improved proportions in settings tab of category.\n- Improved rename of product images.\n- Improved retrieving of first thumbnail of image in gallery.\n- If you specified wrong \"ms2_product_thumbnail_size\" parameter, gallery will still work.\n- Added support of non-image files in gallery.\n- Improved snippet \"msGallery\" for display non-image files.\n- [#84] Fixed displaying of  email of vendor in manager.\n\n2.1.1 pl2\n==============\n- Fixed parameter \"&parents\" in msProducts.\n\n2.1.1 pl\n==============\n- Snippet msProducts supports pdoTools 1.8.0. Parameter \"&showHidden\" enabled by default.\n- Fixed fatal error with \"clearCache\" when msProduct created trough processor and it`s parent is not msCategory.\n- Improved generation of thumbnails.\n\n2.1.1 pl\n==============\n- Fixed access permissions tab on product update.\n- Fixed getPrice and getWeight calls in snippet msProducts.\n- Improved xtype \"minishop2-combo-user\".\n- Added support of component \"msDiscount\".\n- Added counting of total spent sum by every customer in msCustomerProfile.\n\n2.1.0 pl2\n==============\n- Fixed placeholders on msProduct page due to issues with @INLINE chunks.\n\n2.1.0 pl1\n==============\n- Added new events: \"msOnGetProductPrice\" and \"msOnGetProductWeight\".\n- Fixed wrong events in database from previous release.\n- Changed \"vendor_\" to \"vendor.\" in msProduct::toArray() for sameness with the snippet msProducts.\n- Moved all logic from old action.php to new plugin. File leaved for compatibility with users modified javascript.\n\n2.1.0 pl\n==============\n- Changed default sort in goods grid on \"menuindex, ASC\".\n- Improved method msDelivery::getCost().\n- Added method msPayment::getCost().\n- Improved method msOrderHandler::getCost(). Now you can specify additional percent for delivery and payment in manager.\n- New object \"msCustomerProfile\". It can be extended by plugins like \"msProductData\".\n- Plugin \"miniShop2\" can automatic save referrers.\n- In snippet \"msProducts\" you can override \"where\", \"select\", \"leftJoin\", \"innerJoin\" and \"rightJoin\" properties. Added pdoFetch 1.4.1 support.\n- Improved other snippets.\n- Added new fields in \"msProductFile\": \"hash\" for sha1 of file and json field \"properties\".\n- Changed uploader in product gallery to \"Plupload\" (Thanks to Alex Rahimov).\n- Added check for duplicate images in product gallery by checking hash of the content of file.\n- Added new parameters for media source: \"maxUploadWidth\" and \"maxUploadHeight\" for frontend image resize.\n- Gallery upload processor now can receive parameters \"id\" and \"file\" for external images upload.\n- Added renaming files of product gallery together with thumbnails.\n- [#77] Fixed changing type of existing resource to \"msCategory\".\n- [#76] Fixed parameter \"offset\" in msGallery.\n- [#75] Remove multi-category links when category removed.\n- [#74] Refresh data in order from users profile if he is authenticated.\n- [#73] Added virtual vendor fields. You can get it by $res->get(\'vendor_name\');\n- [#66] Fixed saving payments methods when create a new delivery.\n- [#65] Added new system events: \"msOnBeforeValidateOrderValue\" and \"msOnValidateOrderValue\".\n- [#64] Added ability to stop switching order status from system plugin.\n- [#63] Added new parameters for media source: \"imageNameType\". Switching to \"friendly\" will generate names for uploaded files by FURLs algorithm.\n- [#61] Added ability to sort products in category by drag and drop.\n- [#62] Fixed work with \"*.gif\" files in products gallery.\n- [#59] Improved regular expression for email verification.\n- [#59] Improved validation of customer name and email when create order.\n- [#59] msOrderHandler::add() now can return an error.\n- [#59] Improved registration of javascript on frontend.\n- [#59] Improved show\\hide of msMiniCart with css.\n- [#59] Refactored default frontend javascript.\n- [#59] Works with no javascript. (Thanks to Alexey Kartashov)\n- [#58] Fixed PayPal non-USD currency.\n- [#56] Added JSON field \"properties\" to \"msProductFile\".\n- [#52] Added ability to customize orders in manager by 3 system setting: \"ms2_order_grid_fields\", \"ms2_order_address_fields\" and \"ms2_order_product_fields\".\n- [#50] Fixed checking of the existence of the Tickets component.\n- [#5] Possible fixed \"Cannot execute queries while other unbuffered queries are active\" on php < 5.3.\n- Some fixes for MySql STRICT_TRANS_TABLES mode.\n- Updated jQuery to version 1.10.2\n- Added method PayPal::getPaymentLink() for continuing interrupted payment process. You will see [[+payment_link]] in emails.\n- Added parameters \"&tplSingle\" and \"&toSeparatePlaceholders\" to snippet msGallery.\n- Gallery UI improvements for MODX 2.2.9\n- Returned action.php for backward compatibility with the old javascript\n\n2.0.1 pl3\n==============\n- Added german lexicon.\n- Now you can specify version of file in \"ms2_frontend_js\".\n- [#60] Fixed type of field \"index\" in \"msOrder\".\n- Improved listing of products in the categories of manager.\n\n2.0.1 pl2\n==============\n- Improved submit of order form.\n- msProducts saves order of ids received through &resources=``. It need for smooth work with mSearch2.\n- [mgr] Fixed search in vendors combo\n\n2.0.1 pl1\n==============\n- Added loading of lexicons for 3rd party payment methods. They must be named in \"msp.%name%.inc.php\" format.\n- Added placeholder [[+payment_link]] in the new user email. It will work only if payment method has function getPaymentLink(msOrder $order);\n- Removed placeholder [[+id]] from product page because of issues.\n- [#53] Completely refactored call and processing plugin events.\n- [#45] Added system setting for specify default content of category.\n\n2.0.1 pl\n==============\n- Added 2 new events on order remove: \"msOnBeforeRemoveOrder\" and \"msOnRemoveOrder\".\n- Improved classes: \"msProduct\" and \"msCategory\". Now $modx->getCollection(\'msProduct\'); returns only products.\n\n2.0.1 beta3\n==============\n- Fixed msGallery\n\n2.0.1 beta2\n==============\n- [#44] Enabled duplicate of category.\n- [#42] Added parameter \"returnIds\" to snippet msProducts.\n- [#41] Fixed panel with tvs on product create.\n- Parameter \"resources\" not suppressing \"parents\" in msProducts anymore. Now they working together: resources that are not in parents will not be returned.\n- Snippet msGallery now can to display placeholders like [[+600x]] or [[+x600]].\n- Fixed display an original image in msGallery. If upgrade, replace placeholders [[+image]] to [[+url]] in chunk \"tpl.msGallery.row\" manually.\n- Added setting placeholder [[+idx]] to snippets msGallery and msProducts.\n- Added parameter \"where\" in snippet msGallery, for specify JSON encoded string with additional query data.\n- Added parameters \"limit\" and \"offset\" for pagination. msGallery can be used with getPage now.\n\n2.0.1 beta1\n==============\n- Maybe fixed bug with php-apc and sessions\n- Fixed plugin params on events \"msOnBeforeCreateOrder\" and \"msOnCreateOrder\". Now you can change $msOrder by link.\n- Fixed error with no changing status of order in manager.\n\n2.0.1 beta\n==============\n- [#38] Added \"menuindex\" in product fields.\n- [#37] Ability to override method miniShop2::changeOrderStatus() in custom order class.\n- [#36] Removed filter_var(), because of issues on stupid hostings.\n- [#35] Added 2 system setting to enable or disable the remembering of panel tabs.\n- [#32] Enabled displaying of errors when uploading files in product gallery.\n- [#30] \"miniShopManagerPolicy\" is automatically assigned to a group \"Administrators\".\n- [#29] Added verification of object instance, when loading neighborhood resources in manager.\n- [#28] Returned the lost fields in images of msGallery.\n- [#27] Improved ajax requests in default javascript.\n- [#26] Improvements of categories tree.\n- [#25] Removed replacing of empty alias to id. Added 2 system setting for switching using resource id as alias for categories and products.\n- Fixed quick fields in snippet msOrder. Update your chunks for delivery and payment methods.\n- Improved \"totalVar\" placeholder in snippet msGallery.\n- Fixed model. Added proper primary keys for xPDOObjects.\n- Ability to load only \"miniShop2Config\" object on frontend, without default javascript and jQuery.\n- Fixed parameter \"depth\" in snippet \"msProducts\".\n- New permissions for work with order: \"save\" and \"view\". New events for update order.\n- Added ability to add\\update\\remove products in order.\n\n2.0.0 pl3\n==============\n- Compatibility with pdoTools 1.2.0\n\n2.0.0 pl2\n==============\n- [mgr] Fixed formatting of dates in category grid.\n- [mgr] Fixed decimals in product category grid.\n- Added ability to create system setting \"ms2_cart_max_count\" to override maximum number of products for one operation.\n- Fixed placeholders in emails subjects.\n- Fixed generation of thumbnails in gallery for working with ImageMagick.\n- Fixed link type \"Many to many\".\n- Fixed requirement of non-existing permission \"update_document\" in processors.\n- Added system setting \"ms2_price_snippet\" for modification of product price.\n- Added system setting \"ms2_weight_snippet\" for modification of product weight.\n- Product key in msCartHandler now generates with using \"$price\" and \"$weight\", because they can be modified when adding to cart.\n\n2.0.0 pl1\n==============\n- [mgr] Changing of product image now cleans its cache.\n- [mgr] New icons in tree\n- Small improvements of the snippets at initialization.\n- Added selection of product links in snippet msProducts. See the new snippet properties.\n- Added ability to use msProducts with any modResource class.\n- Added property \"tvPrefix\" to msProducts for compatibility with getResources.\n- Added property \"outputSeparator\" to snippets msOptions and msProducts.\n- Added system parameter \"ms2_price_format\" for specifying how to format price of product.\n- Added system parameter \"ms2_price_format_no_zeros\" for optional removing extra zeros at the end of price.\n- Added system parameter \"ms2_weight_format\" for specifying how to format weight of product.\n- Added system parameter \"ms2_weight_format_no_zeros\" for optional removing extra zeros at the end of weight.\n\n2.0.0 rc6\n==============\n- Fixed cleaning pdoTools in msGallery\n- Improved saving payment method in order when quickly switch delivery.\n\n2.0.0 rc5\n==============\n- Integration of PayPal express-checkout payment method.\n\n2.0.0 rc4\n==============\n- Fixed bugs in snippets\n- Fixed joining images by rank when includeThumbs.\n\n2.0.0 rc\n==============\n- [mgr] Added displaying of nested products in categories. System setting \"ms2_category_show_nested_products\" can disable it.\n- [mgr] Added the ability to link products together.\n- [mgr] Added link to resource from ordered products.\n- [mgr] Added ability to specify web document for Vendor by property \"resource\".\n- [#6] Fixed error when order makes authenticated user without email.\n- [#8] Fixed remove of order.\n- [#9] Fixed date formatting in manager for working in Firefox.\n- [#10] Added checking for negative value of adding products in cart.\n- [#12] Added regeneration site maps after new product create.\n- [#14] Added check of \"register_globals\" on cart/add.\n- Added system setting \"ms2_product_thumbnail_size\" for setting default size of product thumbnail.\n- Added vendor placeholders on product page. Now you can use [[+vendor.name]], [[+vendor.logo]] etc.\n- Added beta scripts for console converting miniShop1 to miniShop2.\n- Added partial french translation.\n- Added method miniShop2::getTagged() from MS1.\n- Added ability to load plugins, that can add new or overload existing product fields in model and manager.\n- Added parameters for joining thumbnails and tvs in snippets msProducts, msCart and msGetOrder.\n- Improved save of product options.\n- Fixed automatic install of pdoTools.\n- Fixed fetching images in snippet msGallery\n- Other fixes and improvements.\n\n2.0.0 beta-1\n==============\n- Added manager pages\n- Added create and manage orders\n\n2.0.0 beta-0\n==============\n- Initial release.\";s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:218:\"--------------------\nminiShop2\n--------------------\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\n--------------------\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/bezumkin/miniShop2/issues\";s:6:\"chunks\";a:16:{s:17:\"msProduct.content\";s:2448:\"<h1>[[*pagetitle]]</h1>\n<div id=\"msProduct\" class=\"row\">\n    <div class=\"col-md-6\">\n        [[!msGallery]]\n    </div>\n    <div class=\"col-md-6\">\n        <form class=\"form-horizontal ms2_form\" method=\"post\">\n            <input type=\"hidden\" name=\"id\" value=\"[[*id]]\"/>\n            <div class=\"form-group\">\n                <label class=\"col-md-2 control-label\">[[%ms2_product_article]]:</label>\n                <div class=\"col-md-10 form-control-static\">\n                    [[+article:default=`-`]]\n                </div>\n            </div>\n            <div class=\"form-group\">\n                <label class=\"col-md-2 control-label\">[[%ms2_product_price]]:</label>\n                <div class=\"col-md-10 form-control-static\">\n                    [[+price]] [[%ms2_frontend_currency]]\n                    [[+old_price:gt=`0`:then=`\n                    <span class=\"old_price\">[[+old_price]] [[%ms2_frontend_currency]]</span>\n                    `:else=``]]\n                </div>\n            </div>\n            <div class=\"form-group form-inline\">\n                <label class=\"col-md-2 control-label\" for=\"product_price\">[[%ms2_cart_count]]:</label>\n                <div class=\"col-md-10\">\n                    <input type=\"number\" name=\"count\" id=\"product_price\" class=\"input-sm form-control\" value=\"1\"/>\n                    [[%ms2_frontend_count_unit]]\n                </div>\n            </div>\n            <div class=\"form-group\">\n                <label class=\"col-md-2 control-label\">[[%ms2_product_weight]]:</label>\n                <div class=\"col-md-10 form-control-static\">\n                    [[+weight]] [[%ms2_frontend_weight_unit]]\n                </div>\n            </div>\n            <div class=\"form-group\">\n                <label class=\"col-md-2 control-label\">[[%ms2_product_made_in]]:</label>\n                <div class=\"col-md-10 form-control-static\">\n                    [[+made_in:default=`-`]]\n                </div>\n            </div>\n\n            [[msOptions?options=`color,size`]]\n\n            [[msProductOptions]]\n\n            <div class=\"form-group\">\n                <div class=\"col-md-offset-2 col-md-10\">\n                    <button type=\"submit\" class=\"btn btn-default\" name=\"ms2_action\" value=\"cart/add\">\n                        <i class=\"glyphicon glyphicon-barcode\"></i> [[%ms2_frontend_add_to_cart]]\n                    </button>\n                </div>\n            </div>\n        </form>\n\n    </div>\n</div>\n[[*content]]\";s:10:\"tpl.msCart\";s:5069:\"<div id=\"msCart\">\n    {if !count($products)}\n        {\'ms2_cart_is_empty\' | lexicon}\n    {else}\n        <div class=\"table-responsive\">\n            <table class=\"table table-striped\">\n                <tr class=\"header\">\n                    <th class=\"image\">&nbsp;</th>\n                    <th class=\"title\">{\'ms2_cart_title\' | lexicon}</th>\n                    <th class=\"count\">{\'ms2_cart_count\' | lexicon}</th>\n                    <th class=\"weight\">{\'ms2_cart_weight\' | lexicon}</th>\n                    <th class=\"price\">{\'ms2_cart_price\' | lexicon}</th>\n                    <th class=\"remove\">{\'ms2_cart_remove\' | lexicon}</th>\n                </tr>\n\n                {foreach $products as $product}\n                    <tr id=\"{$product.key}\">\n                        <td class=\"image\">\n                            {if $product.thumb?}\n                                <img src=\"{$product.thumb}\" alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                            {else}\n                                <img src=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small.png\"\n                                     srcset=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small@2x.png 2x\"\n                                     alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                            {/if}\n                        </td>\n                        <td class=\"title\">\n                            {if $product.id?}\n                                <a href=\"{$product.id | url}\">{$product.pagetitle}</a>\n                            {else}\n                                {$product.name}\n                            {/if}\n                            {if $product.options?}\n                                <div class=\"small\">\n                                    {$product.options | join : \'; \'}\n                                </div>\n                            {/if}\n                        </td>\n                        <td class=\"count\">\n                            <form method=\"post\" class=\"ms2_form form-inline\" role=\"form\">\n                                <input type=\"hidden\" name=\"key\" value=\"{$product.key}\"/>\n                                <div class=\"form-group\">\n                                    <input type=\"number\" name=\"count\" value=\"{$product.count}\"\n                                           class=\"input-sm form-control\"/>\n                                    <span class=\"hidden-xs\">{\'ms2_frontend_count_unit\' | lexicon}</span>\n                                    <button class=\"btn btn-default\" type=\"submit\" name=\"ms2_action\" value=\"cart/change\">\n                                        <i class=\"glyphicon glyphicon-refresh\"></i>\n                                    </button>\n                                </div>\n                            </form>\n                        </td>\n                        <td class=\"weight\">\n                            <span>{$product.weight}</span> {\'ms2_frontend_weight_unit\' | lexicon}\n                        </td>\n                        <td class=\"price\">\n                            <span>{$product.price}</span> {\'ms2_frontend_currency\' | lexicon}\n                            {if $product.old_price?}\n                            <span class=\"old_price\">{$product.old_price}</span> {\'ms2_frontend_currency\' | lexicon}\n                                {/if}\n                        </td>\n                        <td class=\"remove\">\n                            <form method=\"post\" class=\"ms2_form\">\n                                <input type=\"hidden\" name=\"key\" value=\"{$product.key}\">\n                                <button class=\"btn btn-default\" type=\"submit\" name=\"ms2_action\" value=\"cart/remove\">\n                                    <i class=\"glyphicon glyphicon-remove\"></i>\n                                </button>\n                            </form>\n                        </td>\n                    </tr>\n                {/foreach}\n\n                <tr class=\"footer\">\n                    <th class=\"total\" colspan=\"2\">{\'ms2_cart_total\' | lexicon}:</th>\n                    <th class=\"total_count\">\n                        <span class=\"ms2_total_count\">{$total.count}</span>\n                        {\'ms2_frontend_count_unit\' | lexicon}\n                    </th>\n                    <th class=\"total_weight\">\n                        <span class=\"ms2_total_weight\">{$total.weight}</span>\n                        {\'ms2_frontend_weight_unit\' | lexicon}\n                    </th>\n                    <th class=\"total_cost\">\n                        <span class=\"ms2_total_cost\">{$total.cost}</span>\n                        {\'ms2_frontend_currency\' | lexicon}\n                    </th>\n                    <th>&nbsp;</th>\n                </tr>\n            </table>\n        </div>\n        <form method=\"post\">\n            <button class=\"btn btn-default\" type=\"submit\" name=\"ms2_action\" value=\"cart/clean\">\n                <i class=\"glyphicon glyphicon-remove\"></i> {\'ms2_cart_clean\' | lexicon}\n            </button>\n        </form>\n    {/if}\n</div>\n\";s:11:\"tpl.msEmail\";s:8369:\"{var $style = [\n\'logo\' => \'display:block;margin: auto;\',\n\'a\' => \'color:#348eda;\',\n\'p\' => \'font-family: Arial;color: #666666;font-size: 12px;\',\n\'h\' => \'font-family:Arial;color: #111111;font-weight: 200;line-height: 1.2em;margin: 40px 20px;\',\n\'h1\' => \'font-size: 36px;\',\n\'h2\' => \'font-size: 28px;\',\n\'h3\' => \'font-size: 22px;\',\n\'th\' => \'font-family: Arial;text-align: left;color: #111111;\',\n\'td\' => \'font-family: Arial;text-align: left;color: #111111;\',\n]}\n\n{var $site_url = (\'site_url\' | option) | preg_replace : \'#/$#\' : \'\'}\n{var $assets_url = \'assets_url\' | option}\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n        \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\n    <title>{\'site_name\' | option}</title>\n</head>\n<body style=\"margin:0;padding:0;background:#f6f6f6;\">\n<div style=\"height:100%;padding-top:20px;background:#f6f6f6;\">\n    {block \'logo\'}\n        <a href=\"{$site_url}\">\n            <img style=\"{$style.logo}\"\n                 src=\"{$site_url}{$assets_url}components/minishop2/img/web/ms2_small@2x.png\"\n                 alt=\"{$site_url}\"\n                 width=\"120\" height=\"90\"/>\n        </a>\n    {/block}\n    <!-- body -->\n    <table class=\"body-wrap\" style=\"padding:0 20px 20px 20px;width: 100%;background:#f6f6f6;margin-top:10px;\">\n        <tr>\n            <td></td>\n            <td class=\"container\" style=\"border:1px solid #f0f0f0;background:#ffffff;width:800px;margin:auto;\">\n                <div class=\"content\">\n                    <table style=\"width:100%;\">\n                        <tr>\n                            <td>\n                                <h3 style=\"{$style.h}{$style.h3}\">\n                                    {block \'title\'}\n                                        miniShop2\n                                    {/block}\n                                </h3>\n\n                                {block \'products\'}\n                                    <table style=\"width:90%;margin:auto;\">\n                                        <thead>\n                                        <tr>\n                                            <th>&nbsp;</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_title\' | lexicon}</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_count\' | lexicon}</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_weight\' | lexicon}</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_cost\' | lexicon}</th>\n                                        </tr>\n                                        </thead>\n                                        {foreach $products as $product}\n                                            <tr>\n                                                <td style=\"{$style.th}\">\n                                                    {if $product.thumb?}\n                                                        <img src=\"{$site_url}{$product.thumb}\"\n                                                             alt=\"{$product.pagetitle}\"\n                                                             title=\"{$product.pagetitle}\"\n                                                             width=\"120\" height=\"90\"/>\n                                                    {else}\n                                                        <img src=\"{$site_url}{$assets_url}components/minishop2/img/web/ms2_small@2x.png\"\n                                                             alt=\"{$product.pagetitle}\"\n                                                             title=\"{$product.pagetitle}\"\n                                                             width=\"120\" height=\"90\"/>\n                                                    {/if}\n                                                </td>\n                                                <td style=\"{$style.th}\">\n                                                    {if $product.id?}\n                                                        <a href=\"{$product.id | url : [\'scheme\' => \'full\']}\"\n                                                           style=\"{$style.a}\">\n                                                            {$product.name}\n                                                        </a>\n                                                    {else}\n                                                        {$product.name}\n                                                    {/if}\n                                                    {if $product.options?}\n                                                        <div class=\"small\">\n                                                            {$product.options | join : \'; \'}\n                                                        </div>\n                                                    {/if}\n                                                </td>\n                                                <td style=\"{$style.th}\">{$product.count} {\'ms2_frontend_count_unit\' | lexicon}</td>\n                                                <td style=\"{$style.th}\">{$product.weight} {\'ms2_frontend_weight_unit\' | lexicon}</td>\n                                                <td style=\"{$style.th}\">{$product.price} {\'ms2_frontend_currency\' | lexicon}</td>\n                                            </tr>\n                                        {/foreach}\n                                        <tfoot>\n                                        <tr>\n                                            <th colspan=\"2\"></th>\n                                            <th style=\"{$style.th}\">\n                                                {$total.cart_count} {\'ms2_frontend_count_unit\' | lexicon}\n                                            </th>\n                                            <th style=\"{$style.th}\">\n                                                {$total.cart_weight} {\'ms2_frontend_weight_unit\' | lexicon}\n                                            </th>\n                                            <th style=\"{$style.th}\">\n                                                {$total.cart_cost} {\'ms2_frontend_currency\' | lexicon}\n                                            </th>\n                                        </tr>\n                                        </tfoot>\n                                    </table>\n                                    <h3 style=\"{$style.h}{$style.h3}\">\n                                        {\'ms2_frontend_order_cost\' | lexicon}:\n                                        {if $total.delivery_cost}\n                                            {$total.cart_cost} {\'ms2_frontend_currency\' | lexicon} + {$total.delivery_cost}\n                                            {\'ms2_frontend_currency\' | lexicon} =\n                                        {/if}\n                                        <strong>{$total.cost}</strong> {\'ms2_frontend_currency\' | lexicon}\n                                    </h3>\n                                {/block}\n                            </td>\n                        </tr>\n                    </table>\n                </div>\n                <!-- /content -->\n            </td>\n            <td></td>\n        </tr>\n    </table>\n    <!-- /body -->\n    <!-- footer -->\n    <table style=\"clear:both !important;width: 100%;\">\n        <tr>\n            <td></td>\n            <td class=\"container\">\n                <!-- content -->\n                <div class=\"content\">\n                    <table style=\"width:100%;text-align: center;\">\n                        <tr>\n                            <td align=\"center\">\n                                <p style=\"{$style.p}\">\n                                    {block \'footer\'}\n                                    <a href=\"{$site_url}\" style=\"color: #999999;\">\n                                        {\'site_name\' | option}\n                                    </a>\n                                    {/block}\n                                </p>\n                            </td>\n                        </tr>\n                    </table>\n                </div>\n                <!-- /content -->\n            </td>\n            <td></td>\n        </tr>\n    </table>\n    <!-- /footer -->\n</div>\n</body>\n</html>\";s:26:\"tpl.msEmail.cancelled.user\";s:109:\"{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_cancelled_user\' | lexicon : $order}\n{/block}\";s:23:\"tpl.msEmail.new.manager\";s:106:\"{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_new_manager\' | lexicon : $order}\n{/block}\";s:20:\"tpl.msEmail.new.user\";s:311:\"{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_new_user\' | lexicon : $order}\n{/block}\n\n{block \'products\'}\n    {parent}\n    {if $payment_link?}\n        <p style=\"margin-left:20px;{$style.p}\">\n            {\'ms2_payment_link\' | lexicon : [\'link\' => $payment_link]}\n        </p>\n    {/if}\n{/block}\";s:24:\"tpl.msEmail.paid.manager\";s:107:\"{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_paid_manager\' | lexicon : $order}\n{/block}\";s:21:\"tpl.msEmail.paid.user\";s:104:\"{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_paid_user\' | lexicon : $order}\n{/block}\";s:21:\"tpl.msEmail.sent.user\";s:104:\"{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_sent_user\' | lexicon : $order}\n{/block}\";s:13:\"tpl.msGallery\";s:716:\"<div id=\"msGallery\">\n    {if $files?}\n        <div class=\"fotorama\"\n             data-nav=\"thumbs\"\n             data-thumbheight=\"45\"\n             data-allowfullscreen=\"true\"\n             data-swipe=\"true\"\n             data-autoplay=\"5000\">\n            {foreach $files as $file}\n                <a href=\"{$file[\'url\']}\" target=\"_blank\">\n                    <img src=\"{$file[\'small\']}\" alt=\"\" title=\"\">\n                </a>\n            {/foreach}\n        </div>\n    {else}\n        <img src=\"{(\'assets_url\' | option) ~ \'components/minishop2/img/web/ms2_medium.png\'}\"\n             srcset=\"{(\'assets_url\' | option) ~ \'components/minishop2/img/web/ms2_medium@2x.png\'} 2x\"\n             alt=\"\" title=\"\"/>\n    {/if}\n</div>\n\n\";s:14:\"tpl.msGetOrder\";s:3057:\"<div id=\"msCart\">\n    <div class=\"table-responsive\">\n        <table class=\"table table-striped\">\n            <tr class=\"header\">\n                <th class=\"image col-md-2\">&nbsp;</th>\n                <th class=\"title col-md-4\">{\'ms2_cart_title\' | lexicon}</th>\n                <th class=\"count col-md-2\">{\'ms2_cart_count\' | lexicon}</th>\n                <th class=\"weight col-md-1\">{\'ms2_cart_weight\' | lexicon}</th>\n                <th class=\"price col-md-1\">{\'ms2_cart_cost\' | lexicon}</th>\n            </tr>\n            {foreach $products as $product}\n                <tr>\n                    <td class=\"image\">\n                        {if $product.thumb?}\n                            <img src=\"{$product.thumb}\" alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                        {else}\n                            <img src=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small.png\"\n                                 srcset=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small@2x.png 2x\"\n                                 alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                        {/if}\n                    </td>\n                    <td class=\"title\">\n                        {if $product.id?}\n                            <a href=\"{$product.id | url}\">{$product.name}</a>\n                        {else}\n                            {$product.name}\n                        {/if}\n                        {if $product.options?}\n                            <div class=\"small\">\n                                {$product.options | join : \'; \'}\n                            </div>\n                        {/if}\n                    </td>\n                    <td class=\"count\">{$product.count} {\'ms2_frontend_count_unit\' | lexicon}</td>\n                    <td class=\"weight\">{$product.weight} {\'ms2_frontend_weight_unit\' | lexicon}</td>\n                    <td class=\"price\">{$product.price} {\'ms2_frontend_currency\' | lexicon}</td>\n                </tr>\n            {/foreach}\n            <tr class=\"footer\">\n                <th class=\"total\" colspan=\"2\">{\'ms2_cart_total\' | lexicon}:</th>\n                <th class=\"total_count\">\n                    <span class=\"ms2_total_count\">{$total.cart_count}</span> {\'ms2_frontend_count_unit\' | lexicon}\n                </th>\n                <th class=\"total_weight\">\n                    <span class=\"ms2_total_weight\">{$total.cart_weight}</span> {\'ms2_frontend_weight_unit\' | lexicon}\n                </th>\n                <th class=\"total_cost\">\n                    <span class=\"ms2_total_cost\">{$total.cart_cost}</span> {\'ms2_frontend_currency\' | lexicon}\n                </th>\n            </tr>\n        </table>\n    </div>\n\n    <h4>\n        {\'ms2_frontend_order_cost\' | lexicon}:\n        {if $total.delivery_cost}\n            {$total.cart_cost} {\'ms2_frontend_currency\' | lexicon} + {$total.delivery_cost}\n            {\'ms2_frontend_currency\' | lexicon} =\n        {/if}\n        <strong>{$total.cost}</strong> {\'ms2_frontend_currency\' | lexicon}\n    </h4>\n</div>\n\";s:14:\"tpl.msMiniCart\";s:641:\"<div id=\"msMiniCart\" class=\"{$total_count > 0 ? \'full\' : \'\'}\">\n    <div class=\"empty\">\n        <h5><i class=\"glyphicon glyphicon-shopping-cart\"></i> {\'ms2_minicart\' | lexicon}</h5>\n        {\'ms2_minicart_is_empty\' | lexicon}\n    </div>\n    <div class=\"not_empty\">\n        <h5><i class=\"glyphicon glyphicon-shopping-cart\"></i> {\'ms2_minicart\' | lexicon}</h5>\n        {\'ms2_minicart_goods\' | lexicon} <strong class=\"ms2_total_count\">{$total_count}</strong> {\'ms2_frontend_count_unit\' | lexicon},\n        {\'ms2_minicart_cost\' | lexicon} <strong class=\"ms2_total_cost\">{$total_cost}</strong> {\'ms2_frontend_currency\' | lexicon}\n    </div>\n</div>\";s:13:\"tpl.msOptions\";s:500:\"{foreach $options as $name => $values}\n    <div class=\"form-group\">\n        <label class=\"col-md-2 control-label\" for=\"option_{$name}\">{(\'ms2_product_\' ~ $name) | lexicon}:</label>\n        <div class=\"col-md-10\">\n            <select name=\"options[{$name}]\" class=\"input-sm form-control\" id=\"option_{$name}\">\n                {foreach $values as $value}\n                    <option value=\"{$value}\">{$value}</option>\n                {/foreach}\n            </select>\n        </div>\n    </div>\n{/foreach}\";s:11:\"tpl.msOrder\";s:6913:\"<form class=\"form-horizontal ms2_form\" id=\"msOrder\" method=\"post\">\n    <div class=\"row\">\n        <div class=\"col-md-6\">\n            <h4>{\'ms2_frontend_credentials\' | lexicon}:</h4>\n            {foreach [\'email\',\'receiver\',\'phone\'] as $field}\n                <div class=\"form-group input-parent\">\n                    <label class=\"col-md-4 control-label\" for=\"{$field}\">\n                        <span class=\"required-star\">*</span> {(\'ms2_frontend_\' ~ $field) | lexicon}\n                    </label>\n                    <div class=\"col-sm-6\">\n                        <input type=\"text\" id=\"{$field}\" placeholder=\"{(\'ms2_frontend_\' ~ $field) | lexicon}\"\n                               name=\"{$field}\" value=\"{$form[$field]}\"\n                               class=\"form-control{($field in list $errors) ? \' error\' : \'\'}\">\n                    </div>\n                </div>\n            {/foreach}\n\n            <div class=\"form-group input-parent\">\n                <label class=\"col-md-4 control-label\" for=\"comment\">\n                    <span class=\"required-star\">*</span> {\'ms2_frontend_comment\' | lexicon}</label>\n                <div class=\"col-sm-6\">\n                    <textarea name=\"comment\" id=\"comment\" placeholder=\"{\'ms2_frontend_comment\' | lexicon}\"\n                              class=\"form-control{(\'comment\' in list $errors) ? \' error\' : \'\'}\">{$form.comment}</textarea>\n                </div>\n            </div>\n        </div>\n\n        <div class=\"col-md-6\" id=\"payments\">\n            <h4>{\'ms2_frontend_payments\' | lexicon}:</h4>\n            <div class=\"form-group\">\n                <label class=\"col-md-4 control-label\"><span class=\"required-star\">*</span>\n                    {\'ms2_frontend_payment_select\' | lexicon}</label>\n                <div class=\"col-sm-6\">\n                    {foreach $payments as $payment index=$index}\n                        {var $checked = !$order.payment && $index == 0 || $payment.id == $order.payment}\n                        <div class=\"checkbox\">\n                            <label class=\"payment input-parent\">\n                                <input type=\"radio\" name=\"payment\" value=\"{$payment.id}\" id=\"payment_{$payment.id}\"\n                                        {$checked ? \'checked\' : \'\'}>\n                                {if $payment.logo?}\n                                    <img src=\"{$payment.logo}\" alt=\"{$payment.name}\" title=\"{$payment.name}\"/>\n                                {else}\n                                    {$payment.name}\n                                {/if}\n                                {if $payment.description?}\n                                    <p class=\"small\">\n                                        {$payment.description}\n                                    </p>\n                                {/if}\n                            </label>\n                        </div>\n                    {/foreach}\n                </div>\n            </div>\n        </div>\n    </div>\n\n    <div class=\"row\">\n        <div class=\"col-md-6\" id=\"deliveries\">\n            <h4>{\'ms2_frontend_deliveries\' | lexicon}:</h4>\n            <div class=\"form-group\">\n                <label class=\"col-md-4 control-label\">\n                    <span class=\"required-star\">*</span> {\'ms2_frontend_delivery_select\' | lexicon}\n                </label>\n                <div class=\"col-sm-6\">\n                    {foreach $deliveries as $delivery index=$index}\n                        {var $checked = !$order.delivery && $index == 0 || $delivery.id == $order.delivery}\n                        <div class=\"checkbox\">\n                            <label class=\"delivery input-parent\">\n                                <input type=\"radio\" name=\"delivery\" value=\"{$delivery.id}\" id=\"delivery_{$delivery.id}\"\n                                       data-payments=\"{$delivery.payments | json_encode}\"\n                                        {$checked ? \'checked\' : \'\'}>\n                                {if $delivery.logo?}\n                                    <img src=\"{$delivery.logo}\" alt=\"{$delivery.name}\" title=\"{$delivery.name}\"/>\n                                {else}\n                                    {$delivery.name}\n                                {/if}\n                                {if $delivery.description?}\n                                    <p class=\"small\">\n                                        {$delivery.description}\n                                    </p>\n                                {/if}\n                            </label>\n                        </div>\n                    {/foreach}\n                </div>\n            </div>\n        </div>\n\n        <div class=\"col-md-6\">\n            <h4>{\'ms2_frontend_address\' | lexicon}:</h4>\n            {foreach [\'index\',\'region\',\'city\'] as $field}\n                <div class=\"form-group input-parent\">\n                    <label class=\"col-md-4 control-label\" for=\"{$field}\">\n                        <span class=\"required-star\">*</span> {(\'ms2_frontend_\' ~ $field) | lexicon}\n                    </label>\n                    <div class=\"col-sm-6\">\n                        <input type=\"text\" id=\"{$field}\" placeholder=\"{(\'ms2_frontend_\' ~ $field) | lexicon}\"\n                               name=\"{$field}\" value=\"{$form[$field]}\"\n                               class=\"form-control{($field in list $errors) ? \' error\' : \'\'}\">\n                    </div>\n                </div>\n            {/foreach}\n            <div class=\"form-group input-parent\">\n                <label class=\"col-md-4 control-label\" for=\"street\">\n                    <span class=\"required-star\">*</span> {\'ms2_frontend_street\' | lexicon}</label>\n                <div class=\"col-md-6 row\">\n                    {foreach [\'street\',\'building\',\'room\'] as $field}\n                        <div class=\"col-md-4\">\n                            <input type=\"text\" id=\"{$field}\" placeholder=\"{(\'ms2_frontend_\' ~ $field) | lexicon}\"\n                                   name=\"{$field}\" value=\"{$form[$field]}\"\n                                   class=\"form-control{($field in list $errors) ? \' error\' : \'\'}\">\n                        </div>\n                    {/foreach}\n                </div>\n            </div>\n        </div>\n\n    </div>\n\n    <button type=\"button\" name=\"ms2_action\" value=\"order/clean\" class=\"btn btn-default ms2_link\">\n        <i class=\"glyphicon glyphicon-remove\"></i> {\'ms2_frontend_order_cancel\' | lexicon}\n    </button>\n\n    <hr/>\n    <div class=\"well\">\n        <div class=\"col-md-offset-2\">\n            <h3>{\'ms2_frontend_order_cost\' | lexicon}:\n                <span id=\"ms2_order_cost\">{$order.cost ?: 0}</span>\n                {\'ms2_frontend_currency\' | lexicon}\n            </h3>\n            <button type=\"submit\" name=\"ms2_action\" value=\"order/submit\" class=\"btn btn-default btn-primary ms2_link\">\n                {\'ms2_frontend_order_submit\' | lexicon}\n            </button>\n        </div>\n    </div>\n</form>\";s:20:\"tpl.msProductOptions\";s:376:\"{foreach $options as $option}\n    <div class=\"form-group\">\n        <label class=\"col-md-2 control-label\">{$option.caption}:</label>\n        <div class=\"col-md-10 form-control-static\">\n            {if $option.value is array}\n                {$option.value | join : \', \'}\n            {else}\n                {$option.value}\n            {/if}\n        </div>\n    </div>\n{/foreach}\n\";s:18:\"tpl.msProducts.row\";s:1891:\"<div class=\"row ms2_product\">\n    <div class=\"col-md-2\">\n        {if $thumb?}\n            <img src=\"{$thumb}\" alt=\"{$pagetitle}\" title=\"{$pagetitle}\"/>\n        {else}\n            <img src=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small.png\"\n                 srcset=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small@2x.png 2x\"\n                 alt=\"{$pagetitle}\" title=\"{$pagetitle}\"/>\n        {/if}\n    </div>\n    <div class=\"col-md-10\">\n        <form method=\"post\" class=\"ms2_form\">\n            <a href=\"{$id | url}\">{$pagetitle}</a>\n            <span class=\"flags\">\n                {if $new?}\n                    <i class=\"glyphicon glyphicon-flag\" title=\"{\'ms2_frontend_new\' | lexicon}\"></i>\n                {/if}\n                {if $popular?}\n                    <i class=\"glyphicon glyphicon-star\" title=\"{\'ms2_frontend_popular\' | lexicon}\"></i>\n                {/if}\n                {if $favorite?}\n                    <i class=\"glyphicon glyphicon-bookmark\" title=\"{\'ms2_frontend_favorite\' | lexicon}\"></i>\n                {/if}\n            </span>\n            <span class=\"price\">\n                {$price} {\'ms2_frontend_currency\' | lexicon}\n            </span>\n            {if $old_price?}\n                <span class=\"old_price\">{$old_price} {\'ms2_frontend_currency\' | lexicon}</span>\n            {/if}\n            <button class=\"btn btn-default pull-right\" type=\"submit\" name=\"ms2_action\" value=\"cart/add\">\n                <i class=\"glyphicon glyphicon-barcode\"></i> {\'ms2_frontend_add_to_cart\' | lexicon}\n            </button>\n            <input type=\"hidden\" name=\"id\" value=\"{$id}\">\n            <input type=\"hidden\" name=\"count\" value=\"1\">\n            <input type=\"hidden\" name=\"options\" value=\"[]\">\n        </form>\n        {if $introtext}\n            <p>\n                <small>{$introtext}</small>\n            </p>\n        {/if}\n    </div>\n</div>\";}s:13:\"setup-options\";s:37:\"minishop2-2.4.12-pl/setup-options.php\";s:9:\"signature\";s:19:\"minishop2-2.4.12-pl\";s:6:\"action\";s:26:\"workspace/packages/install\";s:8:\"register\";s:3:\"mgr\";s:5:\"topic\";s:47:\"/workspace/package/install/minishop2-2.4.12-pl/\";s:14:\"package_action\";i:0;}', 'miniShop2', 'a:38:{s:2:\"id\";s:24:\"5a40e3aebc8dd39d388b4567\";s:7:\"package\";s:24:\"512905c3f245541b080000b7\";s:12:\"display_name\";s:19:\"minishop2-2.4.12-pl\";s:4:\"name\";s:9:\"miniShop2\";s:7:\"version\";s:6:\"2.4.12\";s:13:\"version_major\";s:1:\"2\";s:13:\"version_minor\";s:1:\"4\";s:13:\"version_patch\";s:2:\"12\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:9:\"bezumkin2\";s:11:\"description\";s:260:\"2.4.12 pl==============- Added dutch lexicons by Sterc- Added greek frontend lexicon- When you change the price of a product with msOnGetProductPrice, the old_price will be changed only if the new price is lower.- Fixed method msProductData:rankProductImages()\";s:12:\"instructions\";s:279:\"<p><b>WARNING!</b></p><p>Please read <a href=\"https://docs.modx.pro/en/components/minishop2/upgrade\" title=\"\" target=\"\">this article</a> before upgrade from miniShop<b>2.2</b>!</p><p>miniShop<b>2.4</b> was completely rewritten, so you will need to change all your ms2 chunks.</p>\";s:9:\"changelog\";s:246:\"<a href=\"https://github.com/bezumkin/miniShop2/blob/master/core/components/minishop2/docs/changelog.txt\" title=\"\" target=\"\">Changelog on GitHub</a>.<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>\";s:9:\"createdon\";s:24:\"2017-12-25T11:40:30+0000\";s:9:\"createdby\";s:9:\"bezumkin2\";s:8:\"editedon\";s:24:\"2018-03-27T16:26:05+0000\";s:10:\"releasedon\";s:24:\"2017-12-25T11:40:30+0000\";s:9:\"downloads\";s:5:\"31027\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.3\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5a40e3aebc8dd39d388b4568\";s:9:\"signature\";s:19:\"minishop2-2.4.12-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.3\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:68:\"http://modx.s3.amazonaws.com/extras/512905c3f245541b080000b7/ms2.png\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5a40e3aebc8dd39d388b4568\";s:7:\"version\";s:24:\"5a40e3aebc8dd39d388b4567\";s:8:\"filename\";s:33:\"minishop2-2.4.12-pl.transport.zip\";s:9:\"downloads\";s:4:\"2089\";s:6:\"lastip\";s:12:\"141.8.192.11\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5a40e3aebc8dd39d388b4568\";}s:17:\"package-signature\";s:19:\"minishop2-2.4.12-pl\";s:10:\"categories\";s:10:\"e-commerce\";s:4:\"tags\";s:0:\"\";}', 2, 4, 12, 'pl', 0);
INSERT INTO `chatmodx_transport_packages` (`signature`, `created`, `updated`, `installed`, `state`, `workspace`, `provider`, `disabled`, `source`, `manifest`, `attributes`, `package_name`, `metadata`, `version_major`, `version_minor`, `version_patch`, `release`, `release_index`) VALUES
('pdotools-2.11.0-pl', '2018-03-27 08:31:28', '2018-03-27 17:31:51', '2018-03-27 20:31:36', 0, 1, 1, 0, 'pdotools-2.11.0-pl.transport.zip', NULL, 'a:3:{s:9:\"changelog\";s:26556:\"Changelog for pdoTools.\n\n2.11.0 pl\n==============\n- [pdoFetch] Added \"setTotal\" option to enable calculating all rows (\"SQL_CALC_FOUND_ROWS\"), which will also result in the \"totalVar\" placeholder is being set.\n- [pdoFetch] Option \"setTotal\" disabled by default.\n- [pdoPage] Forces \"setTotal\" to provide pagination.\n\n2.10.6 pl\n==============\n- Improved German lexicons.\n\n2.10.5 pl\n==============\n- [pdoTools] Ability to return array from \"prepareSnippet\" for more performance.\n- [FenomX] Fixed method \"getStore\".\n\n2.10.4 pl\n==============\n- [Fenom] Do not output raw tags if there was a compile errors.\n- [#266] [pdoMenu] Fixed the setting of \"here\" and \"self\" classes.\n- [#261] [Fenom] Fixed unexpected behavior of the fenom tag \"ignore\".\n\n2.10.3 pl\n==============\n- Improved compatibility with PHP 7.2\n- [pdoFetch] Ability to use arrays in \"&sortby\".\n\n2.10.2 pl\n==============\n- [Fenom] Improved processing of caching snippets inside uncached.\n\n2.10.1 pl\n==============\n- [#256] [Fenom] Fixed bug with caching of scripts and styles.\n- [pdoPage] \"&setMeta\" now works when \"&cache=`1`\".\n- [Fenom] Improved regular expression to detect Fenom syntax.\n\n2.10.0 pl\n==============\n- [#259] [pdoFetch] Fixed error when passed pure SQL into \"having\" parameter.\n- [#258] [pdoPage] Canonical urls always must be \"full\".\n- [#245] [pdoMenu] Ability to use conditional tpls instead of regular \"tpl\".\n- [#121] [pdoMenu] Improved work of specified chunks with weblinks.\n\n2.9.3 pl\n==============\n- [#255] [Fenom] New system setting \"pdotools_fenom_save_on_errors\" to save code on compilation errors in the cache directory for later debugging.\n\n2.9.2 pl\n==============\n- [pdoParser] Proper traversal trough arrays fields of resources in fast tags.\n\n2.9.1 pl\n==============\n- [Fenom] Updated to version 2.11.8.\n\n2.9.0 pl\n==============\n- [pdoPage] Improved \"&pageLinkScheme\" logic.\n- [#249] A little improvement for resource modifier.\n- [#251] [pdoFetch] More compatibility with PHP 7.1.\n- [#253] [pdoPage] Fixing a missing pagination in Ajax mode.\n- [#254] [Fenom] Options of json modifiers must check version of PHP to proper work.\n\n2.8.6 pl\n==============\n- [pdoArchive] Ability to specify fields with regular dates in the \"&dateField\" parameter.\n- [Fenom] Added all options to json modifiers.\n\n2.8.5 pl\n==============\n- [#248] [pdoPage] Fixed E_WARNING with array values in GET parameters.\n\n2.8.4 pl\n==============\n- Ability to use file elements in core path outside base path.\n- Fixed bug with the caching of elements.\n\n2.8.3 pl\n==============\n- [Fenom] Fixed rare bug with the caching of scripts and styles that was registered via Fenom.\n- [pdoPage] Fixed the \"?page=1\" in the url when ajaxMode is enabled.\n- [pdoPage] Snippet will register \"canonical\" link if \"&setMeta\" is enabled.\n- [pdoPage] Fix processing of request with rawurldecode on some servers.\n- [pdoTools] Added passing of \"scriptProperties\" values into a \"&prepareSnippet\".\n\n2.8.2 pl\n==============\n- [pdoMenu] Fixed the checking of permissions for containers.\n- [pdoPage] Added the ability to run files as &element.\n- [pdoTools] The method runSnippet will return boolean false if snippet was not found.\n- [Fenom] Fixed the possible bugs of caching of scripts and styles.\n\n2.8.1 pl\n==============\n- [#244] Fixed possible duplicate of a container in the jquery.pdopage.js.\n- Added fallback class for the enable modParser.\n\n2.8.0 pl\n==============\n- Ability to use an arrays in the parameters of the snippets.\n- Replaced modX::toJSON and modX::fromJSON to native php functions.\n\n2.7.5 pl\n==============\n- Fenom is now managed via composer.\n- [Fenom] Modifier \"resource\" no longer checks fields of resources in their schema.\n- [Fenom] Modifier \"strrev\" now can work with arrays.\n- [Fenom] Improved modifier \"ismember\".\n\n2.7.4 pl\n==============\n- [#242] Added jquery.pdopage.js plugin and minified versions.\n- [#241] [Fenom] Improved the retrieving of TVs for a current resource.\n- [pdoFetch] Restored the checking of possible SQL injections in the &sortby with xPDO 2.5.1.\n\n2.7.3 pl\n==============\n- Improved compatibility with MODX 2.5.2.\n\n2.7.2 pl\n==============\n- [pdoFetch] Some security improvements.\n\n2.7.1 pl\n==============\n- Some security improvements in the connector.php.\n- Fixed bug with registering scripts in styles via Fenom introduced in version 2.7.0.\n\n2.7.0 pl\n==============\n- [Fenom] Updated to the version 2.11.4.\n- [Fenom] Fixed resource cache for scripts and styles registered by Fenom.\n- [Fenom] Added rand() and number_format() to an allowed PHP functions.\n- [Fenom] New output filter \"number\" (or \"number_format\").\n\n2.6.5 pl\n==============\n- Fixed undeclared variable (PHP 7.1)\n\n2.6.4 pl\n==============\n- Added escaping of a MODX tags that being processed in the &prepareSnippet.\n- [#239] Improved work of the &decodeJSON option.\n\n2.6.3 pl\n==============\n- Fixed possible E_NOTICE on line 305 pdofetch.class.php.\n- Fixed possible E_NOTICE when \"snippet\" and \"chunk\" Fenom modifiers was called.\n\n2.6.2 pl\n==============\n- Fixed possible E_NOTICE on line 1317 pdotools.class.php.\n\n2.6.1 pl\n==============\n- Improved compatibility with PHP 5.3.\n\n2.6.0 pl\n==============\n- [Fenom] The ability to extend Fenom via system event \"pdoToolsOnFenomInit\".\n\n2.5.6 pl\n==============\n- [pdoFetch] Ability to join TVs not only to the query main class.\n\n2.5.5 pl\n==============\n- Fixed parse of INLINE chunks with \"@\" symbols.\n\n2.5.4 pl\n==============\n- [#224] Added microMODX::cleanAlias().\n- [#226] [Fenom] Added \"declension\" modifier.\n\n2.5.3 pl\n==============\n- [#221] Fixed typo in month name.\n- [Fenom] Fixed path to compile dir.\n\n2.5.2 pl\n==============\n- [#220] Cache code of snippet with respect to property set.\n\n2.5.1 pl\n==============\n- Fixed cache of snippets in pdoTools::runSnippet().\n\n2.5.0 pl\n==============\n- Improved support of debugParser.\n- [#209] Improved loading of the models.\n- [Fenom] New modifiers: \"snippet\" and \"chunk\".\n- [Fenom] New elements provider: \"file\".\n- New method pdoTools::runSnippet().\n\n2.4.0 pl\n==============\n- Added snippet pdoArchive.\n- [pdoResources] Faster processing of additional snippet parameters to placeholders.\n- [#123] [pdoMenu] Fixed bug with &displayStart and unpublished root nodes.\n- [#207] [pdoMenu] Fixed &webLinkClass option.\n- [#193] [pdoNeighbors] Added parameter &wrapIfEmpty.\n- [#203] [Fenom] Added more PCRE modifiers.\n\n2.3.5 pl\n==============\n- [pdoFetch] Added escaping of columns names in query.\n\n2.3.4 pl\n==============\n- [#200] [pdoFetch] Fixed &sortbyTV with dot in name.\n\n2.3.3 pl\n==============\n- Added system plugin for \"autoload\" of main classes with respect to their paths in system settings.\n\n2.3.2 pl\n==============\n- [#196] [pdoPage] Added workaround to support ClientConfig tags in ajax mode.\n- [Fenom] Added general MODX output filters as Fenom modifiers.\n- [Fenom] Implemented autoload of modifiers from snippets.\n- [Fenom] Removed system setting \"pdotools_fenom_modifiers\".\n\n2.3.1 pl\n==============\n- [pdoSitemap] Lightning fast work chunks processing with &scheme=`uri`.\n- [Fenom] Improved check of syntax before processing.\n\n2.3.0 pl\n==============\n- Removed shortcuts from system core.\n- PSR-2.\n- [Fenom] Added default modifiers: \"url\" and \"lexicon\".\n- [pdoCrumbs] Changed default chunks to ul -> li.\n- [#190] [pdoSitemap] Changed date format to ISO 8601.\n\n2.2.8 pl\n==============\n- [Fenom] Use modResource::getContent() method to get content of current resource in {$_modx->resource}.\n\n2.2.7 pl\n==============\n- [pdoPage] Ability to get access to a javascript configs from 3rd party scripts.\n\n2.2.6 pl\n==============\n- [#184] [Fenom] Updated to version 2.8.2.\n\n2.2.5 pl\n==============\n- [#182] [pdoTitle] Added passing a parameters into nested pdoCrumbs.\n- [pdoSitemap] Added processing of MODX tags if needed.\n- Added method pdoTools::makeUrl().\n- [#181] New url schema type - \"uri\".\n\n2.2.4 pl\n==============\n- [Fenom] Fixed speed issues when MODX snippets are run as Fenom modifiers.\n- [pdoUsers] Fixed overwrite modUser.id by modUserProfile.id.\n\n2.2.3 pl\n==============\n- [pdoPage] Fixed processing of uncached conditions in chunks when ajax mode is enabled.\n\n2.2.2 pl\n==============\n- [pdoPage] Added new parameter &pageLinkScheme.\n\n2.2.1 pl\n==============\n- [#155] [pdoPage] Added new parameter &ajaxHistory.\n- [pdoPage] Added connector for requests in ajax mode.\n\n2.2.0 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#174] [Fenom] Ability to add Fenom modifiers into pdoParser.\n\n2.1.21 pl\n==============\n- [#175] [pdoFetch] Ability to specify sequence of table joins.\n- [#176] [pdoUsers] Fixed &toPlaceholders with &returnIds.\n\n2.1.20 pl\n==============\n- [pdoSitemap] Fixed default &cacheKey.\n\n2.1.19 pl\n==============\n- [Fenom] Disabled $options in cacheManager::set() due to security reasons.\n\n2.1.18 pl\n==============\n- [Fenom] Fixed ability to access to the modX object from {$_modx} variable.\n- [Fenom] Improved method {$_modx->runProcessor()}.\n\n2.1.17 pl\n==============\n- [Fenom] Added {$_modx->getResource($id, $options)}.\n- [Fenom] Added {$_modx->getResources($where, $options)}.\n- [Fenom] Improved support of debugParser.\n\n2.1.16 pl\n==============\n- [Fenom] Added {$_modx->isMember($groups, $matchAll)}.\n- [Fenom] Added {$_modx->getPlaceholders()}.\n\n2.1.15 pl\n==============\n- [pdoPage] Added parameter &strictMode.\n\n2.1.14 pl\n==============\n- [pdoSitemap] Added options for cache snippets results.\n- [pdoSitemap] Cache enabled by default.\n\n2.1.13 pl\n==============\n- [#163] Fixed ignoring of &idx in pdoResources and pdoUsers.\n\n2.1.12 pl\n==============\n- [pdoPage] [#161] Fixed support of arrays in hash when &ajaxMode is enabled.\n\n2.1.11 pl\n==============\n- [#150] [Fenom] Fixed processing of TVs values in a {$_modx->resource}.\n- [#147] [pdoSitemap] Fixed possible duplicates in sitemap.\n- [pdoPage] Support of arrays in hash when &ajaxMode is enabled.\n\n2.1.10 pl\n==============\n- [#157] [Fenom] Fixed pre-processing of Fenom tags in extending templates and chunks.\n- [#145] [pdoPage] Rolled back #81 due to issues with complicate forms.\n\n2.1.9 pl\n==============\n- [#144] [pdoParser] Leave unprocessed FastField tags so other components could parse them.\n- [pdoFetch] Updated syntax for \"SET SQL_BIG_SELECTS = 1\".\n\n2.1.8 pl\n==============\n- [Fenom] Ability to use id of chunks and templates in {include} and {extends}.\n- [Fenom] Added support of debugParser.\n- [Fenom] Added {$_modx->getChildIds()} and {$_modx->getParentIds()}.\n\n2.1.7 pl\n==============\n- Fixed work with integer values from system setting \"link_tag_scheme\".\n\n2.1.6 pl\n==============\n- [Fenom] Updated to version 2.8.0.\n- [Fenom] Improved check of syntax to process content of chunks.\n- [pdoParser] Fixed E_WARNING on line 50 introduced in previous version.\n\n2.1.5 pl\n==============\n- [Fenom] Fixed register of scripts and styles by cached snippets.\n\n2.1.4 pl\n==============\n- [Fenom] Fixed TVs in {$_modx->resource}\n- [Fenom] Added new method {$_modx->getInfo()}\n\n2.1.3 pl\n==============\n- Improved work of system setting \"pdotools_fenom_php\".\n\n2.1.2 pl\n==============\n- [Fenom] Replaced {$_modx->placeholders} to functions.\n\n2.1.1 pl\n==============\n- pdoParser enabled by default.\n- [Fenom] Fixed return content in {$_modx->getChunk}.\n- [Fenom] Added cache for snippets called through {$_modx->runSnippet}.\n- [pdoTools] Added processing of property sets for chunks.\n- [pdoResources] Set additionalPlaceholders in &tplWrapper\n\n2.1.0 pl\n==============\n- [Fenom] Updated Fenom to version 2.7.1.\n- [Fenom] Added safe system variable {$_modx}.\n- [Fenom] Added MODX template provider for chunks and templates.\n\n2.0.5 pl\n==============\n- [#132] Fixed possible E_WARNING on empty chunks.\n- [#122] Ability to use 3rd party pdoPage and pdoMenu classes.\n- [#118] [pdoPage] Fixed parameter &offset.\n- [pdoPage] Fixed default CSS classes in \"empty\" chunks.\n\n2.0.4 pl\n==============\n- Fixed processing of \"pdotools_fenom_cache\" system setting.\n\n2.0.3 pl\n==============\n- [#125] [pdoTitle] Fixed parameter &id.\n\n2.0.2 pl\n==============\n- Improved processing of @FILE binding.\n\n2.0.1 pl\n==============\n- Fixed possible E_WARNING on line 319 and 349 of pdoTools class.\n- Disabled system option \"pdotools_fenom_modx\" by default due to security issues.\n\n2.0.0 pl\n==============\n- New system settings to control the Fenom.\n- Ability to enable caching of Fenom compiled chunks.\n- Improved handling of parameter \"cache_key\".\n- [pdoMenu] Improved work when &cache is enabled.\n\n2.0.0 rc2\n==============\n- Compiled Fenom templates cached to RAM instead of HDD.\n- Removed plugin pdoTools.\n\n2.0.0 rc1\n==============\n- Added Fenom template engine.\n- Fenom enabled by default.\n- pdoParser uses Fenom to process pages.\n\n1.11.2 pl\n==============\n- [#116] [pdoTitle] Disabled &register_js by default.\n\n1.11.1 pl\n==============\n- [pdoSitemap] Fixed default url scheme after last update.\n\n1.11.0 pl1\n==============\n- [pdoTitle] Added new snippet.\n- [pdoPage] Added support of snippet pdoTitle when &ajaxMode is enabled.\n- [pdoPage] Prevent overwriting of scripts and styles of nested &element by default parameters.\n- [pdoPage] Added triggering javascript event \"pdopage_load\".\n\n1.10.2 pl1\n==============\n- [#112] Parameter &scheme was set to system default in all snippets.\n- [#111] [pdoPage] Added ability to set \"prev\" & \"next\" meta tags.\n- [#107] [pdoNeighbors] Added ability to specify &parents for work.\n- [#106] [pdoMenu] Fixed \"hereClass\" and \"selfClass\" enabled &useWeblinkUrl parameter.\n- [#104] [pdoMenu] Snippet now using \"pagetitle\" for link titles if \"titleOfLinks\" is empty.\n\n1.10.1 pl\n==============\n- [#108] [pdoFetch] Fixed E_ERROR when using &sortbyTV.\n- [pdoFetch] Added new parameter &sortbyTVType.\n- [pdoFetch] If &sortdirTV is not set it will be equal to &sortdir.\n\n1.10.0 pl\n==============\n- [pdoMenu] Returned and fixed parameter &showDeleted.\n- [pdoPage] Improved default javascript.\n- [pdoPage] Fixed overwriting &frontend_js and &frontend_css parameters when &ajax is disabled.\n- [pdoFetch] Ability to specify functions in select fields.\n- [pdoTools] Ability to use compound quick placeholders.\n\n1.10.0 beta4\n==============\n- [pdoPage] Ajax pagination out from the box.\n- [pdoFetch] Improved log of getCollection.\n- [pdoTools] Added tplOperator \"contains\".\n\n1.9.7 pl\n==============\n- [#99] [pdoFetch] Fixed returning of primary key in \"ids\" mode.\n- [#97] [pdoTools] Fixed default tplPath for @FILE chunks.\n- [#85] [pdoFetch] Added function getChildIds().\n- [pdoFetch] Disabled \"total\" placeholder for &return=`ids`.\n\n1.9.6 pl2\n==============\n- [pdoFetch] Fixed exclusion of field \"id\" in custom classes.\n- [pdoMenu] Improved parameter &countChildren.\n- [#100] [pdoMenu] Removed parameter &showDeleted because it not working.\n\n1.9.6 rc\n==============\n- Added execution of SQL_BIG_SELECTS = 1 before query.\n- [pdoPage] Added parameter &ajax for supporting of ajax requests.\n\n1.9.5 pl1\n==============\n- Rolled back #72 due to issues in pdoMenu.\n\n1.9.5 pl\n==============\n- Added ability to return JSON or serialized string from pdoFetch::run().\n- [#83] [pdoMenu] Added level placeholder to outer templates.\n- [#82] [pdoFetch] Added support for complex &where parameter.\n- [#81] [pdoPage] Improved handling of arrays in url.\n- [#77] Fixed making of url for modWebLink to another context.\n- [#72] [pdoTools] Fixed order for children of excluded parents in buildTree.\n- [#60] [pdoMenu] Fixed parameter &tplCategoryFolder.\n- [#57] [pdoMenu] Improved placeholder [[+children]].\n- [#57] [pdoMenu] Added parameter &countChildren.\n\n1.9.4 pl1\n==============\n- [#78] [pdoNeighbors] Added parameter &loop=`1` for looping links.\n- [pdoSitemap] Fixed possible E_FATAL php-apc.\n\n1.9.3 pl1\n==============\n- [pdoTools] Ability to specify value for empty quick placeholders.\n- [pdoTools] Ability to use INLINE snippets and filters.\n- [pdoFetch] Improved loading of 3rd party models.\n- [pdoPage] Fixed E_WARNING when &limit=`0`.\n\n1.9.2 pl2\n==============\n- [#56] [pdoParser] Fixed wrong links processing.\n- [#53] Improved loading of classes.\n- [pdoField] Rolled back to original logic of \"top\" and \"topLevel\" parameters due to issues.\n- [pdoField] Added parameter \"ultimate\" to emulate logic of UltimateParent.\n\n1.9.1 pl6\n==============\n- [pdoFetch] Adding alias of main class of query to \"sortby\" if no alias exists.\n- [pdoFetch] Improved selecting of all fields of class with specified alias.\n- [pdoField] Parameter \"topLevel\" works exactly as in UltimateParent.\n- [pdoField] Parameter \"top\" without \"topLevel\" returns parent on \"top\" level.\n\n1.9.1 pl\n==============\n- [#47] [pdoMenu] Fixed processing &tplOuter when output is empty.\n- [#46] [pdoParser] Fixed processing of TVs with dots in name.\n- [#44] [pdoMenu] Improved handling of Wayfinder parameters \"includeDocs\" and \"excludeDocs\".\n- [#37] [pdoField] get the default, only if the field was empty.\n- [#34] Fixed processing of \"modSymLink\" documents.\n- [#32] Improved cache methods.\n- [#26] Replaced FIND_IN_SET() to FIELD().\n- [pdoFetch] Ability to work with objects, that has multiple primary keys.\n- [pdoPage] New parameter &cacheAnonymous.\n- [pdoMenu] New parameter &cacheAnonymous.\n- Added aliases for sort query in order of specified &resources: \"ids\" or \"resources\".\n- Removed unnecessary query in pdoFetch::getCollection().\n- Improved pdoFetch::getCollection().\n- Renamed pdoFetch::getObject() to getArray(). Now it uses getCollection for retrieve results.\n- pdoTools::setCache() now returns cacheKey.\n- pdoFetch::getObject() is now alias of pdoFetch::getArray().\n\n1.9.0 pl2\n==============\n- [pdoMenu] Chunks of parents and categories are now depends on the descendants and ignores parameter isfolder.\n- [pdoNeighbors] Speed improvements.\n- [#27] Ability to specify custom pdoFetch and pdoTools classes through FQN system settings.\n- [pdoParser] Handles TVs in resource tags.\n- [pdoParser] Handles output filters.\n- [pdoFetch] Improved method \"addTVFilters\", that used by \"tvFilters\" parameter in pdoResources.\n- [pdoSitemap] Pass the whole row so we can use more columns.\n\n1.9.0 rc\n==============\n- Improved method pdoTools::getChunk().\n- Improved method pdoTools::parseChunk().\n- Improved method pdoTools::fastProcess().\n- Improved method pdoTools::makePlaceholders().\n- Accelerated snippet pdoNeighbors.\n- Fixed bug in pdoUsers when usersgroups was specified by names.\n- getObject and getCollection() runs in separate instance.\n- Added pdoParser with FastField tags.\n- [pdoPage] Changed default value of parameter \"totalVar\" due to issues.\n- [#24] Fixed prepareTVs and empty tvPrefix.\n- [#23] [pdoResources] Ability to return ids to placeholder.\n- Fixed warning when getObject returns false.\n- Fixed placeholders prefix in recursive makePlaceholders.\n\n1.8.9 pl4\n==============\n- Added german lexicon.\n- [#20] Ability to specify not JSON string in &where=``.\n- [pdoPage] Added parameter \"pageCountVar\" for specifying name of variable with number of pages.\n- [pdoPage] Support Bootstrap3.\n- [pdoField] Ability to specify class for fetching field.\n- Improved joining of tables in pdoFetch.\n- Added preparing and processing TVs in getObject and getCollection methods.\n- Improved load of 3rd party models.\n\n1.8.8 pl2\n==============\n- Rewrited cache of snippets \"pdoMenu\" and \"pdoPage\".\n- New methods pdoTools::getCache() and pdoTools::setCache().\n- [pdoMenu] Fixed parameter \"tplParentRowActive\".\n- [#18] Fixed \"idx\" in pdoTools::defineChunk().\n\n1.8.7 pl\n==============\n- Added boolean parameter \"decodeJSON\" to specify whether or not decode JSON in results rows.\n- Removed default \"sortby\" and \"sortdir\" from class pdoFetch for better work of getCollection() method.\n\n1.8.6 pl2\n==============\n- Fixed possibly E_NOTICE when site has no extension packages installed.\n- [#17] [pdoMenu] Added placeholder [[+wf.menutitle]].\n- [#16] [pdoMenu] Disabled status verification of specified parents.\n- [#13] [pdoMenu] Improved work with root of multiple contexts.\n- [pdoMenu] Fixed bug when specified parent has only the one child.\n- [pdoResources] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\". It is disabled by default.\n\n1.8.5 pl\n==============\n- [#15] [pdoPage] Improved generation of links to pages.\n- [pdoMenu] Improved processing of classes \"modSymlink\" and \"modWeblink\".\n- [pdoBreadcrumbs] Improved processing of classes \"modSymlink\" and \"modWeblink\". Added parameter \"&useWeblink\".\n- [pdoNeighbors] Added parameter \"&useWeblink\" and placeholder \"[[+link]]\".\n- [pdoSitemap] Added parameter \"&useWeblink\" and proper processing of classes \"modSymlink\" and \"modWeblink\".\n\n1.8.4 pl\n==============\n- [pdoCrumbs] Added ability to specify the crumbs root (defaulting to site_start)\n- [pdoCrumbs] Added ability to specify class_key (ie. to generate crumbs only for derivative classes)\n- More accuracy when try to decode json in fetch results.\n\n1.8.3 pl3\n==============\n- Improved preparation of template variables.\n- Improved transfer of additional parameters from snippet to results.\n- [pdoMenu] Added lexicon entries for parameters.\n- [pdoMenu] Allow to specify \"limit\" and \"offset\".\n- [#12] Added parameter \"toPlaceholder\".\n- Increased accuracy of timings log.\n\n1.8.1 pl2\n==============\n- Accelerated method pdoTools::getChunk().\n- Added snippet pdoMenu.\n- Added support for tags [^qt^] and [^q^].\n\n1.8.0 pl\n==============\n- [#10] [pdoPage] Added placeholder \"page\".\n- [#9] [pdoPage] Added placeholder \"pageCount\".\n- [#8] Improved support of big numbers when sorting by TVs.\n- Fixed work of pdoPage when it called multiple times on page.\n- Fixed mistype in pdoFetch::getCollection().\n\n1.8.0 rc5\n==============\n- Added processing of JSON fields. For example, you can use [[+extended.keyname]] in chunks of pdoUsers.\n- pdoTools was removed from system extension packages, but you can still use \"$modx->getService(\'pdoFetch\');\".\n- Fixed getting chunk without any parameters.\n- Added snippet pdoPage.\n\n1.8.0 beta1\n==============\n- Improved handling of \"default_text\" parameter in TVs.\n- Fixed and improved method pdoTools::buildTree().\n- The logic of build the conditions of the query moved into new method pdoFetch::additionalConditions().\n- Improved method pdoFetch::addSelects().\n- Improved method pdoFetch::addSort().\n- Improved some snippets in accordance to new abilities of pdoFetch: pdoResources, pdoNeighbors and pdoSitemap.\n\n1.7.4 pl\n==============\n- [#7] [pdoSitemap] Fixed hidden parameters \"&sortBy\" and \"&sortDir\" that used for compatibility with GoogleSiteMap.\n\n1.7.3 pl1\n==============\n- [pdoCrumbs] Fixed possible E_NOTICE on line 157.\n- [pdoCrumbs] Fixed generation of link to site start in relative mode.\n- [#6] pdoCrumbs and pdoNeighbors are now uses \"menutitle\" by default. If it is empty, will be used \"pagetitle\".\n\n1.7.2 pl1\n==============\n- [pdoField] Added new parameters: \"default=``\" and \"&field=``\".\n- [pdoField] Improved logic of \"&top=``\" and \"&topLevel=``\".\n- Added 2 new methods: pdoFetch::getObject() and pdoFetch::getCollection().\n- Ability to send arrays into common config parameters. JSON is still supported.\n- Improved select of default values in TVs.\n\n1.7.1 pl\n==============\n- [pdoCrumbs] Fixed work with \"modSymLink\" and \"modWebLink\" resources.\n\n1.7.0 pl1\n==============\n- New snippet pdoCrumbs.\n- New snippet pdoField.\n- New snippet pdoSitemap.\n- New snippet pdoNeighbors.\n- Ability to specify snippet for preparation of fetched rows by parameter \"&prepareSnippet=``\".\n- Added method pdoTools::checkPermissions() for checking user privileges to view the results.\n- Added @TEMPLATE binding. You can use name or id of any template. If empty - will use template of each row.\n- [pdoResources] Improved parameter \"&context\".\n- [pdoResources] Script properties are now passed to chunks. You can send any placeholders to it.\n\n1.6.0 pl1\n==============\n- Fixed compatibility issues in PHP < 5.3.\n\n1.6.0 pl\n==============\n- Added parameter \"&loadModels\" for comma-separated list of 3rd party components that needed for query.\n- Added parameters \"&prepareTVs\" and \"&processTVs\".\n- Added parameters \"&tvFilters\", \"&tvFiltersAndDelimiter\" and \"&tvFiltersAndDelimiter\".\n- Added support of parameters \"&sortbyTV\" and \"&sortdirTV\" for compatibility with getResources.\n- Added ability to use @INLINE and @FILE bindings in all template parameters.\n- Removed method pdoTools::getPlaceholders.\n\n1.5.0 pl2\n==============\n- Fixed sort of decimals in TVs.\n\n1.5.0 pl1\n==============\n- Added processing of simple [[~id]] placeholders in fastMode.\n- Added support of default value for TVs.\n- Improved sort by TVs of types \"number\" and \"date\".\n\n1.5.0 rc\n==============\n- [pdoUsers] Added new snippet \"pdoUsers\".\n- [pdoResources] Fixed \"toSeparatePlaceholders\".\n- [pdoResources] Parameter \"parents\" now supports dash prefix for excluding resources from query by parent.\n- [pdoResources] Fixed issue when snippet runs multiple times at one page.\n\n1.4.1 pl1\n==============\n- Improved \"context\" processing.\n- Fixed \"idx\" when multiple snippets called at one page.\n- Fixed default sortby when joined tables exists.\n\n1.4.1 beta3\n==============\n- Added parameters \"tplCondition\", \"tplOperator\" and \"conditionalTpls\".\n- Added parameter \"select\" for specifying needed columns of selected tables. Can be a JSON string with array.\n- Added parameter \"toSeparatePlaceholders\".\n- Improved \"pdoResources\" snippet.\n\n1.4.0 beta1\n==============\n- Ability to specify JSON string in \"sortby\", for example \"&sortby=`{\"pagetitle\":\"asc\",\"createdon\":\"desc\"}`\"\n- Added automatic replacement of tvs in \"where\" and \"having\" parameters.\n- Added automatic replacement of tvs in \"sortby\" parameter.\n- Removed example snippet\n- Added snippet \"pdoResources\", that could replace \"getResources\".\n- Added method pdoTools::defineChunk() for chunk of given idx.\n- Added \"memory usage\" in log.\n\n1.3.0\n==============\n- Improved placeholders processing when fastMode is enabled.\n- Added support of \"having\" conditions.\n\n1.2.1\n==============\n- Fixed not working \"includeTVs\" when \"leftJoin\" is empty.\n\n1.2.0\n==============\n- Native render of quick placeholders, such as \"<!--pdotools_introtext <blockquote>[[+introtext]]</blockquote>-->\".\n- Added joining of TVs in pdoFetch. Use parameter \"includeTVs\" with comma-separated list of template variables.\n- Added method pdoFetch::setConfig() for proper setting options when you run multiple pdoTools snippets at the one page.\n- Method pdoTools::makeArray is now recursive, for processing a multidimensional arrays of values.\n\n1.1.0\n==============\n- Improved getChunk function.\n\n1.0.1\n==============\n- Fixed setting total in \"chunks\" mode.\n- Improved displaying \"where\" condition in log.\n\n1.0.0\n==============\n- Initial release.\";s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:646:\"--------------------\npdoTools\n--------------------\nAuthor: Vasiliy Naumkin <bezumkin@yandex.ru>\n--------------------\n\nSmall library for creating fast snippets for MODX Revolution that works through PDO.\n\nRequired by Tickets and miniShop2.\n\nMain features\n- Builds queries with xPDO.\n- Retrieve results with PDO.\n- Improved pdoTools::getChunk() function, that processing placeholders faster, than original modX::getChunk().\n\npdoTools snippets will work so faster, than more fields you will retrieve from database at one query.\n\n--------------------\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/bezumkin/pdoTools/issues\n\";}', 'pdoTools', NULL, 2, 11, 0, 'pl', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_transport_providers`
--

CREATE TABLE `chatmodx_transport_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint(4) NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_transport_providers`
--

INSERT INTO `chatmodx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2017-12-14 14:41:20', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_users`
--

CREATE TABLE `chatmodx_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `cachepwd` varchar(100) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modPBKDF2',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_users`
--

INSERT INTO `chatmodx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'developer', '64u+uwSPVZ8B1i1JPsdJsuHXkRF7Hqg8muHyqupwIAo=', '', 'modUser', 1, NULL, NULL, 'hashing.modPBKDF2', '6751e4fe916184d04d7b497611784c8c', 1, NULL, 1, 1522007747);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_user_attributes`
--

CREATE TABLE `chatmodx_user_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `internalKey` int(10) NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int(11) NOT NULL DEFAULT '0',
  `blockedafter` int(11) NOT NULL DEFAULT '0',
  `logincount` int(11) NOT NULL DEFAULT '0',
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  `thislogin` int(11) NOT NULL DEFAULT '0',
  `failedlogincount` int(10) NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int(10) NOT NULL DEFAULT '0',
  `gender` int(1) NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_user_attributes`
--

INSERT INTO `chatmodx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Администратор по умолчанию', 'krasnikovrs@gmail.com', '', '', 0, 0, 0, 1, 0, 1522008011, 0, 'mv3uon1lgiakokq12pknojitnog96pnv', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_user_group_roles`
--

CREATE TABLE `chatmodx_user_group_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int(10) UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_user_group_roles`
--

INSERT INTO `chatmodx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_user_group_settings`
--

CREATE TABLE `chatmodx_user_group_settings` (
  `group` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_user_messages`
--

CREATE TABLE `chatmodx_user_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int(10) NOT NULL DEFAULT '0',
  `recipient` int(10) NOT NULL DEFAULT '0',
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_user_settings`
--

CREATE TABLE `chatmodx_user_settings` (
  `user` int(11) NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `chatmodx_workspaces`
--

CREATE TABLE `chatmodx_workspaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `chatmodx_workspaces`
--

INSERT INTO `chatmodx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2018-03-25 22:55:19', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chatmodx_access_actiondom`
--
ALTER TABLE `chatmodx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `chatmodx_access_actions`
--
ALTER TABLE `chatmodx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `chatmodx_access_category`
--
ALTER TABLE `chatmodx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chatmodx_access_context`
--
ALTER TABLE `chatmodx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `chatmodx_access_elements`
--
ALTER TABLE `chatmodx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chatmodx_access_media_source`
--
ALTER TABLE `chatmodx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chatmodx_access_menus`
--
ALTER TABLE `chatmodx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `chatmodx_access_namespace`
--
ALTER TABLE `chatmodx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chatmodx_access_permissions`
--
ALTER TABLE `chatmodx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `chatmodx_access_policies`
--
ALTER TABLE `chatmodx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `chatmodx_access_policy_templates`
--
ALTER TABLE `chatmodx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chatmodx_access_policy_template_groups`
--
ALTER TABLE `chatmodx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chatmodx_access_resources`
--
ALTER TABLE `chatmodx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chatmodx_access_resource_groups`
--
ALTER TABLE `chatmodx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chatmodx_access_templatevars`
--
ALTER TABLE `chatmodx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `chatmodx_actiondom`
--
ALTER TABLE `chatmodx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `chatmodx_actions`
--
ALTER TABLE `chatmodx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Индексы таблицы `chatmodx_actions_fields`
--
ALTER TABLE `chatmodx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `chatmodx_active_users`
--
ALTER TABLE `chatmodx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `chatmodx_categories`
--
ALTER TABLE `chatmodx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `chatmodx_categories_closure`
--
ALTER TABLE `chatmodx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `chatmodx_class_map`
--
ALTER TABLE `chatmodx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Индексы таблицы `chatmodx_content_type`
--
ALTER TABLE `chatmodx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `chatmodx_context`
--
ALTER TABLE `chatmodx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `chatmodx_context_resource`
--
ALTER TABLE `chatmodx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `chatmodx_context_setting`
--
ALTER TABLE `chatmodx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `chatmodx_dashboard`
--
ALTER TABLE `chatmodx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `chatmodx_dashboard_widget`
--
ALTER TABLE `chatmodx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `chatmodx_dashboard_widget_placement`
--
ALTER TABLE `chatmodx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `chatmodx_documentgroup_names`
--
ALTER TABLE `chatmodx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `chatmodx_document_groups`
--
ALTER TABLE `chatmodx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `chatmodx_element_property_sets`
--
ALTER TABLE `chatmodx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `chatmodx_extension_packages`
--
ALTER TABLE `chatmodx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `chatmodx_fc_profiles`
--
ALTER TABLE `chatmodx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `chatmodx_fc_profiles_usergroups`
--
ALTER TABLE `chatmodx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `chatmodx_fc_sets`
--
ALTER TABLE `chatmodx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `chatmodx_lexicon_entries`
--
ALTER TABLE `chatmodx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `chatmodx_manager_log`
--
ALTER TABLE `chatmodx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Индексы таблицы `chatmodx_media_sources`
--
ALTER TABLE `chatmodx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `chatmodx_media_sources_contexts`
--
ALTER TABLE `chatmodx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `chatmodx_media_sources_elements`
--
ALTER TABLE `chatmodx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `chatmodx_membergroup_names`
--
ALTER TABLE `chatmodx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `chatmodx_member_groups`
--
ALTER TABLE `chatmodx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `chatmodx_menus`
--
ALTER TABLE `chatmodx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `chatmodx_ms2_category_options`
--
ALTER TABLE `chatmodx_ms2_category_options`
  ADD PRIMARY KEY (`option_id`,`category_id`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`),
  ADD KEY `required` (`required`);
ALTER TABLE `chatmodx_ms2_category_options` ADD FULLTEXT KEY `value_ft` (`value`);

--
-- Индексы таблицы `chatmodx_ms2_customer_profiles`
--
ALTER TABLE `chatmodx_ms2_customer_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referrer_code` (`referrer_code`),
  ADD KEY `referrer_id` (`referrer_id`),
  ADD KEY `spent` (`spent`);

--
-- Индексы таблицы `chatmodx_ms2_deliveries`
--
ALTER TABLE `chatmodx_ms2_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chatmodx_ms2_delivery_payments`
--
ALTER TABLE `chatmodx_ms2_delivery_payments`
  ADD PRIMARY KEY (`delivery_id`,`payment_id`);

--
-- Индексы таблицы `chatmodx_ms2_links`
--
ALTER TABLE `chatmodx_ms2_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Индексы таблицы `chatmodx_ms2_options`
--
ALTER TABLE `chatmodx_ms2_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`type`),
  ADD KEY `category` (`category`);
ALTER TABLE `chatmodx_ms2_options` ADD FULLTEXT KEY `caption_ft` (`caption`);

--
-- Индексы таблицы `chatmodx_ms2_orders`
--
ALTER TABLE `chatmodx_ms2_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status` (`status`),
  ADD KEY `type` (`type`);

--
-- Индексы таблицы `chatmodx_ms2_order_addresses`
--
ALTER TABLE `chatmodx_ms2_order_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `chatmodx_ms2_order_logs`
--
ALTER TABLE `chatmodx_ms2_order_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `chatmodx_ms2_order_products`
--
ALTER TABLE `chatmodx_ms2_order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `chatmodx_ms2_order_statuses`
--
ALTER TABLE `chatmodx_ms2_order_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `chatmodx_ms2_payments`
--
ALTER TABLE `chatmodx_ms2_payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chatmodx_ms2_products`
--
ALTER TABLE `chatmodx_ms2_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article` (`article`),
  ADD KEY `price` (`price`),
  ADD KEY `old_price` (`old_price`),
  ADD KEY `vendor` (`vendor`),
  ADD KEY `new` (`new`),
  ADD KEY `favorite` (`favorite`),
  ADD KEY `popular` (`popular`),
  ADD KEY `made_in` (`made_in`);

--
-- Индексы таблицы `chatmodx_ms2_product_categories`
--
ALTER TABLE `chatmodx_ms2_product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Индексы таблицы `chatmodx_ms2_product_files`
--
ALTER TABLE `chatmodx_ms2_product_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `type` (`type`),
  ADD KEY `parent` (`parent`),
  ADD KEY `hash` (`hash`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `chatmodx_ms2_product_links`
--
ALTER TABLE `chatmodx_ms2_product_links`
  ADD PRIMARY KEY (`link`,`master`,`slave`);

--
-- Индексы таблицы `chatmodx_ms2_product_options`
--
ALTER TABLE `chatmodx_ms2_product_options`
  ADD KEY `product` (`product_id`,`key`);

--
-- Индексы таблицы `chatmodx_ms2_vendors`
--
ALTER TABLE `chatmodx_ms2_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chatmodx_namespaces`
--
ALTER TABLE `chatmodx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `chatmodx_property_set`
--
ALTER TABLE `chatmodx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `chatmodx_register_messages`
--
ALTER TABLE `chatmodx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `chatmodx_register_queues`
--
ALTER TABLE `chatmodx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `chatmodx_register_topics`
--
ALTER TABLE `chatmodx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `chatmodx_session`
--
ALTER TABLE `chatmodx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `chatmodx_site_content`
--
ALTER TABLE `chatmodx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `chatmodx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `chatmodx_site_htmlsnippets`
--
ALTER TABLE `chatmodx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `chatmodx_site_plugins`
--
ALTER TABLE `chatmodx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `chatmodx_site_plugin_events`
--
ALTER TABLE `chatmodx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `chatmodx_site_snippets`
--
ALTER TABLE `chatmodx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `chatmodx_site_templates`
--
ALTER TABLE `chatmodx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `chatmodx_site_tmplvars`
--
ALTER TABLE `chatmodx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `chatmodx_site_tmplvar_access`
--
ALTER TABLE `chatmodx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Индексы таблицы `chatmodx_site_tmplvar_contentvalues`
--
ALTER TABLE `chatmodx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Индексы таблицы `chatmodx_site_tmplvar_templates`
--
ALTER TABLE `chatmodx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `chatmodx_system_eventnames`
--
ALTER TABLE `chatmodx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `chatmodx_system_settings`
--
ALTER TABLE `chatmodx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `chatmodx_transport_packages`
--
ALTER TABLE `chatmodx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `chatmodx_transport_providers`
--
ALTER TABLE `chatmodx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `chatmodx_users`
--
ALTER TABLE `chatmodx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `chatmodx_user_attributes`
--
ALTER TABLE `chatmodx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `chatmodx_user_group_roles`
--
ALTER TABLE `chatmodx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `chatmodx_user_group_settings`
--
ALTER TABLE `chatmodx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `chatmodx_user_messages`
--
ALTER TABLE `chatmodx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `chatmodx_user_settings`
--
ALTER TABLE `chatmodx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `chatmodx_workspaces`
--
ALTER TABLE `chatmodx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chatmodx_access_actiondom`
--
ALTER TABLE `chatmodx_access_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_actions`
--
ALTER TABLE `chatmodx_access_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_category`
--
ALTER TABLE `chatmodx_access_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_context`
--
ALTER TABLE `chatmodx_access_context`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_elements`
--
ALTER TABLE `chatmodx_access_elements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_media_source`
--
ALTER TABLE `chatmodx_access_media_source`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_menus`
--
ALTER TABLE `chatmodx_access_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_namespace`
--
ALTER TABLE `chatmodx_access_namespace`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_permissions`
--
ALTER TABLE `chatmodx_access_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_policies`
--
ALTER TABLE `chatmodx_access_policies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_policy_templates`
--
ALTER TABLE `chatmodx_access_policy_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_policy_template_groups`
--
ALTER TABLE `chatmodx_access_policy_template_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_resources`
--
ALTER TABLE `chatmodx_access_resources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_resource_groups`
--
ALTER TABLE `chatmodx_access_resource_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_access_templatevars`
--
ALTER TABLE `chatmodx_access_templatevars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_actiondom`
--
ALTER TABLE `chatmodx_actiondom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_actions`
--
ALTER TABLE `chatmodx_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_actions_fields`
--
ALTER TABLE `chatmodx_actions_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT для таблицы `chatmodx_categories`
--
ALTER TABLE `chatmodx_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `chatmodx_class_map`
--
ALTER TABLE `chatmodx_class_map`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `chatmodx_content_type`
--
ALTER TABLE `chatmodx_content_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `chatmodx_dashboard`
--
ALTER TABLE `chatmodx_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_dashboard_widget`
--
ALTER TABLE `chatmodx_dashboard_widget`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `chatmodx_documentgroup_names`
--
ALTER TABLE `chatmodx_documentgroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_document_groups`
--
ALTER TABLE `chatmodx_document_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_extension_packages`
--
ALTER TABLE `chatmodx_extension_packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_fc_profiles`
--
ALTER TABLE `chatmodx_fc_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_fc_sets`
--
ALTER TABLE `chatmodx_fc_sets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_lexicon_entries`
--
ALTER TABLE `chatmodx_lexicon_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_manager_log`
--
ALTER TABLE `chatmodx_manager_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `chatmodx_media_sources`
--
ALTER TABLE `chatmodx_media_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `chatmodx_membergroup_names`
--
ALTER TABLE `chatmodx_membergroup_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_member_groups`
--
ALTER TABLE `chatmodx_member_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_deliveries`
--
ALTER TABLE `chatmodx_ms2_deliveries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_links`
--
ALTER TABLE `chatmodx_ms2_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_options`
--
ALTER TABLE `chatmodx_ms2_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_orders`
--
ALTER TABLE `chatmodx_ms2_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_order_addresses`
--
ALTER TABLE `chatmodx_ms2_order_addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_order_logs`
--
ALTER TABLE `chatmodx_ms2_order_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_order_products`
--
ALTER TABLE `chatmodx_ms2_order_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_order_statuses`
--
ALTER TABLE `chatmodx_ms2_order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_payments`
--
ALTER TABLE `chatmodx_ms2_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_products`
--
ALTER TABLE `chatmodx_ms2_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_product_files`
--
ALTER TABLE `chatmodx_ms2_product_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_ms2_vendors`
--
ALTER TABLE `chatmodx_ms2_vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_property_set`
--
ALTER TABLE `chatmodx_property_set`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_register_queues`
--
ALTER TABLE `chatmodx_register_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_register_topics`
--
ALTER TABLE `chatmodx_register_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_site_content`
--
ALTER TABLE `chatmodx_site_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_site_htmlsnippets`
--
ALTER TABLE `chatmodx_site_htmlsnippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `chatmodx_site_plugins`
--
ALTER TABLE `chatmodx_site_plugins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `chatmodx_site_snippets`
--
ALTER TABLE `chatmodx_site_snippets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `chatmodx_site_templates`
--
ALTER TABLE `chatmodx_site_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_site_tmplvars`
--
ALTER TABLE `chatmodx_site_tmplvars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_site_tmplvar_access`
--
ALTER TABLE `chatmodx_site_tmplvar_access`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_site_tmplvar_contentvalues`
--
ALTER TABLE `chatmodx_site_tmplvar_contentvalues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_transport_providers`
--
ALTER TABLE `chatmodx_transport_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_users`
--
ALTER TABLE `chatmodx_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_user_attributes`
--
ALTER TABLE `chatmodx_user_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `chatmodx_user_group_roles`
--
ALTER TABLE `chatmodx_user_group_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `chatmodx_user_messages`
--
ALTER TABLE `chatmodx_user_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `chatmodx_workspaces`
--
ALTER TABLE `chatmodx_workspaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
