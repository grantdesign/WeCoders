-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 03 2020 г., 21:48
-- Версия сервера: 5.6.47
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wecoders_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `b_admin_notify`
--

CREATE TABLE `b_admin_notify` (
  `ID` int(18) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `ENABLE_CLOSE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_admin_notify`
--

INSERT INTO `b_admin_notify` (`ID`, `MODULE_ID`, `TAG`, `MESSAGE`, `ENABLE_CLOSE`, `PUBLIC_SECTION`, `NOTIFY_TYPE`) VALUES
(1, 'MAIN', 'SITE_CHECKER', 'Обнаружены ошибки в работе сайта. <a href=\"/bitrix/admin/site_checker.php?lang=ru&start_test=Y\">Проверить и исправить.</a>', 'Y', 'N', 'M');

-- --------------------------------------------------------

--
-- Структура таблицы `b_admin_notify_lang`
--

CREATE TABLE `b_admin_notify_lang` (
  `ID` int(18) NOT NULL,
  `NOTIFY_ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_agent`
--

CREATE TABLE `b_agent` (
  `ID` int(18) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `NAME` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(18) DEFAULT '86400',
  `IS_PERIOD` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `USER_ID` int(18) DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RETRY_COUNT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_agent`
--

INSERT INTO `b_agent` (`ID`, `MODULE_ID`, `SORT`, `NAME`, `ACTIVE`, `LAST_EXEC`, `NEXT_EXEC`, `DATE_CHECK`, `AGENT_INTERVAL`, `IS_PERIOD`, `USER_ID`, `RUNNING`, `RETRY_COUNT`) VALUES
(1, 'main', 100, '\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();', 'Y', '2020-12-03 21:46:40', '2020-12-03 21:47:40', NULL, 60, 'N', NULL, 'N', 0),
(2, 'main', 100, 'CCaptchaAgent::DeleteOldCaptcha(3600);', 'Y', '2020-12-03 21:45:39', '2020-12-03 22:45:39', NULL, 3600, 'N', NULL, 'N', 0),
(3, 'main', 100, 'CSiteCheckerTest::CommonTest();', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(4, 'main', 100, 'CEvent::CleanUpAgent();', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(5, 'main', 100, 'CUser::CleanUpHitAuthAgent();', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(6, 'main', 100, 'CUndo::CleanUpOld();', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(7, 'main', 100, 'CUserCounter::DeleteOld();', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(8, 'main', 100, '\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable::deleteOldAgent(22, 20);', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(9, 'main', 100, 'CUser::AuthActionsCleanUpAgent();', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(10, 'main', 100, 'CUser::CleanUpAgent();', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(11, 'main', 100, 'CUser::DeactivateAgent();', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(12, 'main', 100, 'CEventLog::CleanUpAgent();', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(13, 'clouds', 100, 'CCloudStorage::CleanUp();', 'Y', '2020-12-03 21:45:39', '2020-12-04 21:45:39', NULL, 86400, 'N', NULL, 'N', 0),
(14, 'forum', 100, 'CForumStat::CleanUp();', 'Y', '2020-12-03 21:45:40', '2020-12-04 21:45:40', NULL, 86400, 'N', NULL, 'N', 0),
(15, 'forum', 100, 'CForumFiles::CleanUp();', 'Y', '2020-12-03 21:45:40', '2020-12-04 21:45:40', NULL, 86400, 'N', NULL, 'N', 0),
(16, 'landing', 100, 'Bitrix\\Landing\\Agent::clearRecycle();', 'Y', '2020-12-03 21:45:40', '2020-12-03 23:45:40', NULL, 7200, 'N', NULL, 'N', 0),
(17, 'landing', 100, 'Bitrix\\Landing\\Agent::clearFiles(30);', 'Y', '2020-12-03 21:45:40', '2020-12-03 22:45:40', NULL, 3600, 'N', NULL, 'N', 0),
(18, 'messageservice', 100, '\\Bitrix\\MessageService\\Queue::cleanUpAgent();', 'Y', '2020-12-03 21:46:40', '2020-12-04 00:00:00', NULL, 86400, 'Y', NULL, 'N', 0),
(19, 'rest', 100, 'Bitrix\\Rest\\Marketplace\\Client::getNumUpdates();', 'Y', '2020-12-03 21:45:40', '2020-12-04 21:45:40', NULL, 86400, 'N', NULL, 'N', 0),
(20, 'rest', 100, '\\Bitrix\\Rest\\EventOfflineTable::cleanProcessAgent();', 'Y', '2020-12-03 21:45:40', '2020-12-04 21:45:40', NULL, 86400, 'N', NULL, 'N', 0),
(21, 'rest', 100, '\\Bitrix\\Rest\\UsageStatTable::cleanUpAgent();', 'Y', '2020-12-03 21:45:40', '2020-12-04 21:45:40', NULL, 86400, 'N', NULL, 'N', 0),
(22, 'rest', 100, '\\Bitrix\\Rest\\LogTable::cleanUpAgent();', 'Y', '2020-12-03 21:45:40', '2020-12-04 21:45:40', NULL, 86400, 'N', NULL, 'N', 0),
(23, 'rest', 100, '\\Bitrix\\Rest\\Configuration\\Helper::sendStatisticAgent();', 'Y', '2020-12-03 21:45:40', '2020-12-04 21:45:40', NULL, 86400, 'N', NULL, 'N', 0),
(24, 'search', 10, 'CSearchSuggest::CleanUpAgent();', 'Y', '2020-12-03 21:45:40', '2020-12-04 21:45:40', NULL, 86400, 'N', NULL, 'N', 0),
(25, 'search', 10, 'CSearchStatistic::CleanUpAgent();', 'Y', '2020-12-03 21:45:40', '2020-12-04 21:45:40', NULL, 86400, 'N', NULL, 'N', 0),
(26, 'security', 100, 'CSecuritySession::CleanUpAgent();', 'Y', '2020-12-03 21:45:40', '2020-12-03 22:15:40', NULL, 1800, 'N', NULL, 'N', 0),
(27, 'security', 100, 'CSecurityIPRule::CleanUpAgent();', 'Y', '2020-12-03 21:45:40', '2020-12-03 22:45:40', NULL, 3600, 'N', NULL, 'N', 0),
(28, 'seo', 100, 'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();', 'Y', '2020-12-03 21:45:40', '2020-12-03 22:45:40', NULL, 3600, 'N', NULL, 'N', 0),
(29, 'seo', 100, 'Bitrix\\Seo\\Adv\\LogTable::clean();', 'Y', '2020-12-03 21:45:40', '2020-12-04 21:45:40', NULL, 86400, 'N', NULL, 'N', 0),
(30, 'seo', 100, 'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();', 'Y', '2020-12-03 21:45:40', '2020-12-03 22:45:40', NULL, 3600, 'N', NULL, 'N', 0),
(31, 'subscribe', 100, 'CSubscription::CleanUp();', 'Y', '2020-12-03 21:46:40', '2020-12-04 03:00:00', NULL, 86400, 'Y', NULL, 'N', 0),
(32, 'main', 100, '\\Bitrix\\Main\\Data\\CacheEngineFiles::delayedDelete(144);', 'Y', '2020-12-03 21:46:40', '2020-12-03 00:00:01', NULL, 1, 'Y', NULL, 'N', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_app_password`
--

CREATE TABLE `b_app_password` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_b24connector_buttons`
--

CREATE TABLE `b_b24connector_buttons` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCRIPT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_bitrixcloud_option`
--

CREATE TABLE `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_bitrixcloud_option`
--

INSERT INTO `b_bitrixcloud_option` (`ID`, `NAME`, `SORT`, `PARAM_KEY`, `PARAM_VALUE`) VALUES
(1, 'backup_quota', 0, '0', '0'),
(2, 'backup_total_size', 0, '0', '0'),
(3, 'backup_last_backup_time', 0, '0', '1605114846'),
(4, 'monitoring_expire_time', 0, '0', '1606848246');

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog`
--

CREATE TABLE `b_blog` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` int(11) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REAL_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `ENABLE_COMMENTS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ENABLE_IMG_VERIF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENABLE_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_POST_ID` int(11) DEFAULT NULL,
  `LAST_POST_DATE` datetime DEFAULT NULL,
  `AUTO_GROUPS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_NOTIFY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_HTML` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SEARCH_INDEX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `USE_SOCNET` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EDITOR_USE_FONT` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_LINK` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_IMAGE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_VIDEO` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_FORMAT` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_blog`
--

INSERT INTO `b_blog` (`ID`, `NAME`, `DESCRIPTION`, `DATE_CREATE`, `DATE_UPDATE`, `ACTIVE`, `OWNER_ID`, `SOCNET_GROUP_ID`, `URL`, `REAL_URL`, `GROUP_ID`, `ENABLE_COMMENTS`, `ENABLE_IMG_VERIF`, `ENABLE_RSS`, `LAST_POST_ID`, `LAST_POST_DATE`, `AUTO_GROUPS`, `EMAIL_NOTIFY`, `ALLOW_HTML`, `SEARCH_INDEX`, `USE_SOCNET`, `EDITOR_USE_FONT`, `EDITOR_USE_LINK`, `EDITOR_USE_IMAGE`, `EDITOR_USE_VIDEO`, `EDITOR_USE_FORMAT`) VALUES
(1, 'Отзывы на товары', 'Здесь хранятся отзывы посетителей магазина на товары магазина', '2020-11-17 14:45:36', '2020-11-17 14:51:12', 'Y', 1, NULL, 'catalog_comments', NULL, 1, 'Y', 'Y', 'N', 2, '2020-11-17 14:51:12', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_category`
--

CREATE TABLE `b_blog_category` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_comment`
--

CREATE TABLE `b_blog_comment` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(11) DEFAULT NULL,
  `ICON_ID` int(11) DEFAULT NULL,
  `AUTHOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_TEXT` text COLLATE utf8_unicode_ci NOT NULL,
  `PUBLISH_STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `HAS_PROPS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHARE_DEST` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_blog_comment`
--

INSERT INTO `b_blog_comment` (`ID`, `BLOG_ID`, `POST_ID`, `PARENT_ID`, `AUTHOR_ID`, `ICON_ID`, `AUTHOR_NAME`, `AUTHOR_EMAIL`, `AUTHOR_IP`, `AUTHOR_IP1`, `DATE_CREATE`, `TITLE`, `POST_TEXT`, `PUBLISH_STATUS`, `HAS_PROPS`, `SHARE_DEST`, `PATH`) VALUES
(1, 1, 2, NULL, 1, NULL, NULL, NULL, '127.0.0.1', '', '2020-11-17 14:51:26', NULL, 'Система управления содержимым веб-сайтов Битрикс (с 2007 года используется название &quot;1С-Битрикс&quot;) выпущена как отчуждаемый от разработчиков продукт в 2002 году. 30 мая 2018 года выпущена последняя на данный момент версия ядра под номером 18.0.0.', 'P', NULL, NULL, 'http://wecoders.loc/blog/detail.php?ID=35&commentId=#comment_id###comment_id#'),
(2, 1, 1, NULL, 1, NULL, NULL, NULL, '127.0.0.1', '', '2020-11-17 22:34:45', NULL, 'Крутая статья!', 'P', NULL, NULL, 'http://wecoders.loc/blog/web-dizayn/dizayn-vo-vsem?commentId=2#2'),
(3, 1, 1, NULL, 1, NULL, NULL, NULL, '127.0.0.1', '', '2020-11-20 22:15:36', NULL, 'Ставлю лайк!', 'P', NULL, NULL, 'http://wecoders.loc/blog/web-dizayn/dizayn-vo-vsem?commentId=#comment_id###comment_id#'),
(4, 1, 1, 3, 1, NULL, NULL, NULL, '127.0.0.1', '', '2020-11-20 22:15:42', NULL, 'Да!', 'P', NULL, NULL, 'http://wecoders.loc/blog/web-dizayn/dizayn-vo-vsem?commentId=#comment_id###comment_id#');

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_group`
--

CREATE TABLE `b_blog_group` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_blog_group`
--

INSERT INTO `b_blog_group` (`ID`, `NAME`, `SITE_ID`) VALUES
(1, 'Группа отзывов', 's1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_image`
--

CREATE TABLE `b_blog_image` (
  `ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL DEFAULT '0',
  `BLOG_ID` int(11) NOT NULL DEFAULT '0',
  `POST_ID` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_SIZE` int(11) NOT NULL DEFAULT '0',
  `IS_COMMENT` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMMENT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_post`
--

CREATE TABLE `b_blog_post` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `AUTHOR_ID` int(11) NOT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_TEXT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `DETAIL_TEXT_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DATE_CREATE` datetime NOT NULL,
  `DATE_PUBLISH` datetime NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PUBLISH_STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `CATEGORY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATRIBUTE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENABLE_TRACKBACK` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ENABLE_COMMENTS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ATTACH_IMG` int(11) DEFAULT NULL,
  `NUM_COMMENTS` int(11) NOT NULL DEFAULT '0',
  `NUM_COMMENTS_ALL` int(11) NOT NULL DEFAULT '0',
  `NUM_TRACKBACKS` int(11) NOT NULL DEFAULT '0',
  `VIEWS` int(11) DEFAULT NULL,
  `FAVORITE_SORT` int(11) DEFAULT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MICRO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HAS_IMAGES` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_PROPS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_TAGS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_COMMENT_IMAGES` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_SOCNET_ALL` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_DESCRIPTION` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_blog_post`
--

INSERT INTO `b_blog_post` (`ID`, `TITLE`, `BLOG_ID`, `AUTHOR_ID`, `PREVIEW_TEXT`, `PREVIEW_TEXT_TYPE`, `DETAIL_TEXT`, `DETAIL_TEXT_TYPE`, `DATE_CREATE`, `DATE_PUBLISH`, `KEYWORDS`, `PUBLISH_STATUS`, `CATEGORY_ID`, `ATRIBUTE`, `ENABLE_TRACKBACK`, `ENABLE_COMMENTS`, `ATTACH_IMG`, `NUM_COMMENTS`, `NUM_COMMENTS_ALL`, `NUM_TRACKBACKS`, `VIEWS`, `FAVORITE_SORT`, `PATH`, `CODE`, `MICRO`, `HAS_IMAGES`, `HAS_PROPS`, `HAS_TAGS`, `HAS_COMMENT_IMAGES`, `HAS_SOCNET_ALL`, `SEO_TITLE`, `SEO_TAGS`, `SEO_DESCRIPTION`) VALUES
(1, 'Дизайн во всем', 1, 1, NULL, 'text', '[URL=http://wecoders.loc/blog/detail.php?ID=36]Дизайн во всем[/URL]\nСчитается, что дизайн призван не только к художественному конструированию, но должен участвовать в решении более широких проблем функционирования производства, существования людей в предметной среде.\n', 'text', '2020-11-17 14:45:36', '2020-11-17 14:45:36', NULL, 'P', NULL, NULL, 'N', 'Y', NULL, 3, 3, 0, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Блог на Bitrix', 1, 1, NULL, 'text', '[URL=http://wecoders.loc/blog/detail.php?ID=35]Блог на Bitrix[/URL]\n1С-Битрикс — система управления содержимым от российской компании 1С-Битрикс. Имеет несколько \"редакций\" – лицензионных версий: Старт, Стандарт, Малый бизнес, Бизнес, которые отличаются включаемыми модулями системы.\n', 'text', '2020-11-17 14:51:12', '2020-11-17 14:51:12', NULL, 'P', NULL, NULL, 'N', 'Y', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_post_category`
--

CREATE TABLE `b_blog_post_category` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `CATEGORY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_post_param`
--

CREATE TABLE `b_blog_post_param` (
  `ID` int(11) NOT NULL,
  `POST_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_site_path`
--

CREATE TABLE `b_blog_site_path` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_socnet`
--

CREATE TABLE `b_blog_socnet` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_socnet_rights`
--

CREATE TABLE `b_blog_socnet_rights` (
  `ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_trackback`
--

CREATE TABLE `b_blog_trackback` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci NOT NULL,
  `BLOG_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_DATE` datetime NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_user`
--

CREATE TABLE `b_blog_user` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ALIAS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `AVATAR` int(11) DEFAULT NULL,
  `INTERESTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `DATE_REG` datetime NOT NULL,
  `ALLOW_POST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_blog_user`
--

INSERT INTO `b_blog_user` (`ID`, `USER_ID`, `ALIAS`, `DESCRIPTION`, `AVATAR`, `INTERESTS`, `LAST_VISIT`, `DATE_REG`, `ALLOW_POST`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, '2020-11-11 20:12:59', 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_user2blog`
--

CREATE TABLE `b_blog_user2blog` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_user2user_group`
--

CREATE TABLE `b_blog_user2user_group` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_user_group`
--

CREATE TABLE `b_blog_user_group` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_blog_user_group`
--

INSERT INTO `b_blog_user_group` (`ID`, `BLOG_ID`, `NAME`) VALUES
(1, NULL, 'all'),
(2, NULL, 'registered');

-- --------------------------------------------------------

--
-- Структура таблицы `b_blog_user_group_perms`
--

CREATE TABLE `b_blog_user_group_perms` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL,
  `PERMS_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `POST_ID` int(11) DEFAULT NULL,
  `PERMS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `AUTOSET` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_blog_user_group_perms`
--

INSERT INTO `b_blog_user_group_perms` (`ID`, `BLOG_ID`, `USER_GROUP_ID`, `PERMS_TYPE`, `POST_ID`, `PERMS`, `AUTOSET`) VALUES
(1, 1, 1, 'P', NULL, 'I', 'N'),
(2, 1, 2, 'P', NULL, 'I', 'N'),
(3, 1, 1, 'C', NULL, 'P', 'N'),
(4, 1, 2, 'C', NULL, 'P', 'N'),
(5, 1, 1, 'P', 1, 'I', 'Y'),
(6, 1, 2, 'P', 1, 'I', 'Y'),
(7, 1, 1, 'C', 1, 'P', 'Y'),
(8, 1, 2, 'C', 1, 'P', 'Y'),
(9, 1, 1, 'P', 2, 'I', 'Y'),
(10, 1, 2, 'P', 2, 'I', 'Y'),
(11, 1, 1, 'C', 2, 'P', 'Y'),
(12, 1, 2, 'C', 2, 'P', 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `b_cache_tag`
--

CREATE TABLE `b_cache_tag` (
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_cache_tag`
--

INSERT INTO `b_cache_tag` (`SITE_ID`, `CACHE_SALT`, `RELATIVE_PATH`, `TAG`) VALUES
(NULL, NULL, '3:1607021200', '**'),
('*', '*', '/bitrix/managed_cache/MYSQL/agents.~356459', '*'),
('*', '*', '/bitrix/managed_cache/MYSQL/b_undo.~765928', '*'),
('*', '*', '/bitrix/managed_cache/MYSQL/orm_b_user_auth_action.~706208', '*');

-- --------------------------------------------------------

--
-- Структура таблицы `b_captcha`
--

CREATE TABLE `b_captcha` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_checklist`
--

CREATE TABLE `b_checklist` (
  `ID` int(11) NOT NULL,
  `DATE_CREATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TESTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext COLLATE utf8_unicode_ci,
  `REPORT_COMMENT` text COLLATE utf8_unicode_ci,
  `REPORT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_copy_queue`
--

CREATE TABLE `b_clouds_copy_queue` (
  `ID` int(32) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `OP` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SOURCE_BUCKET_ID` int(11) NOT NULL,
  `SOURCE_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TARGET_BUCKET_ID` int(11) NOT NULL,
  `TARGET_FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) NOT NULL DEFAULT '-1',
  `FILE_POS` int(11) NOT NULL DEFAULT '0',
  `FAIL_COUNTER` int(11) NOT NULL DEFAULT '0',
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ERROR_MESSAGE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_delete_queue`
--

CREATE TABLE `b_clouds_delete_queue` (
  `ID` int(32) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_bucket`
--

CREATE TABLE `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(11) DEFAULT '500',
  `READ_ONLY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT '0',
  `FILE_SIZE` double DEFAULT '0',
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `FILE_RULES` text COLLATE utf8_unicode_ci,
  `FAILOVER_ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_BUCKET_ID` int(11) DEFAULT NULL,
  `FAILOVER_COPY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `FAILOVER_DELETE_DELAY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_resize`
--

CREATE TABLE `b_clouds_file_resize` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `ERROR_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `FROM_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_save`
--

CREATE TABLE `b_clouds_file_save` (
  `ID` int(32) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_clouds_file_upload`
--

CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_component_params`
--

CREATE TABLE `b_component_params` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_component_params`
--

INSERT INTO `b_component_params` (`ID`, `SITE_ID`, `COMPONENT_NAME`, `TEMPLATE_NAME`, `REAL_PATH`, `SEF_MODE`, `SEF_FOLDER`, `START_CHAR`, `END_CHAR`, `PARAMETERS`) VALUES
(13, 's1', 'bitrix:main.include', '', '/local/templates/main/header.php', 'N', NULL, 3409, 3853, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:16:\"AREA_FILE_SUFFIX\";s:3:\"inc\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";s:4:\"PATH\";s:17:\"/include/logo.php\";}'),
(14, 's1', 'bitrix:menu', 'top_menu', '/local/templates/main/header.php', 'N', NULL, 4084, 4804, 'a:10:{s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:15:\"CHILD_MENU_TYPE\";s:4:\"left\";s:5:\"DELAY\";s:1:\"N\";s:9:\"MAX_LEVEL\";s:1:\"2\";s:19:\"MENU_CACHE_GET_VARS\";a:1:{i:0;s:0:\"\";}s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"N\";s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"N\";}'),
(15, 's1', 'bitrix:menu', 'top_menu_mobile', '/local/templates/main/header.php', 'N', NULL, 6316, 7043, 'a:10:{s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:15:\"CHILD_MENU_TYPE\";s:4:\"left\";s:5:\"DELAY\";s:1:\"N\";s:9:\"MAX_LEVEL\";s:1:\"2\";s:19:\"MENU_CACHE_GET_VARS\";a:1:{i:0;s:0:\"\";}s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"N\";s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"N\";}'),
(16, 's1', 'bitrix:news.list', 'sliders', '/local/templates/main/header.php', 'N', NULL, 7111, 8824, 'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:4:{i:0;s:4:\"NAME\";i:1;s:11:\"DETAIL_TEXT\";i:2;s:14:\"DETAIL_PICTURE\";i:3;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"1\";s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:1:\"5\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:16:\"Слайдеры\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:3:\"REF\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:7:\"sliders\";}'),
(35, 's1', 'bitrix:main.include', '', '/local/templates/other/header.php', 'N', NULL, 4467, 4911, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:16:\"AREA_FILE_SUFFIX\";s:3:\"inc\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";s:4:\"PATH\";s:17:\"/include/logo.php\";}'),
(36, 's1', 'bitrix:menu', 'top_menu', '/local/templates/other/header.php', 'N', NULL, 5152, 5872, 'a:10:{s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:15:\"CHILD_MENU_TYPE\";s:4:\"left\";s:5:\"DELAY\";s:1:\"N\";s:9:\"MAX_LEVEL\";s:1:\"2\";s:19:\"MENU_CACHE_GET_VARS\";a:1:{i:0;s:0:\"\";}s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"N\";s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"N\";}'),
(37, 's1', 'bitrix:menu', 'top_menu_mobile', '/local/templates/other/header.php', 'N', NULL, 7384, 8111, 'a:10:{s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:15:\"CHILD_MENU_TYPE\";s:4:\"left\";s:5:\"DELAY\";s:1:\"N\";s:9:\"MAX_LEVEL\";s:1:\"2\";s:19:\"MENU_CACHE_GET_VARS\";a:1:{i:0;s:0:\"\";}s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"N\";s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"N\";}'),
(38, 's1', 'bitrix:breadcrumb', 'bread_crumb', '/local/templates/other/header.php', 'N', NULL, 8563, 8756, 'a:4:{s:4:\"PATH\";s:0:\"\";s:7:\"SITE_ID\";s:2:\"s1\";s:10:\"START_FROM\";s:1:\"0\";s:18:\"COMPONENT_TEMPLATE\";s:11:\"bread_crumb\";}'),
(45, 's1', 'bitrix:main.include', '', '/about/index.php', 'N', NULL, 408, 798, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:16:\"AREA_FILE_SUFFIX\";s:15:\"about_text_file\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";s:4:\"PATH\";s:23:\"/include/about_text.php\";}'),
(46, 's1', 'bitrix:main.include', '', '/about/index.php', 'N', NULL, 939, 1354, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:16:\"AREA_FILE_SUFFIX\";s:3:\"inc\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";s:4:\"PATH\";s:24:\"/include/about_image.php\";}'),
(47, 's1', 'bitrix:news.list', 'team', '/about/index.php', 'N', NULL, 1811, 3571, 'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:4:{i:0;s:12:\"PREVIEW_TEXT\";i:1;s:11:\"DETAIL_TEXT\";i:2;s:14:\"DETAIL_PICTURE\";i:3;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"2\";s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:2:\"20\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:14:\"Новости\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:4:{i:0;s:8:\"FACEBOOK\";i:1;s:9:\"INSTAGRAM\";i:2;s:7:\"TWITTER\";i:3;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:4:\"team\";}'),
(53, 's1', 'bitrix:main.include', '', '/services/index.php', 'N', NULL, 365, 746, 'a:4:{s:19:\"AREA_FILE_RECURSIVE\";s:1:\"Y\";s:14:\"AREA_FILE_SHOW\";s:4:\"sect\";s:16:\"AREA_FILE_SUFFIX\";s:13:\"services_text\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";}'),
(54, 's1', 'bitrix:news.list', 'skills', '/services/index.php', 'N', NULL, 970, 4397, 'a:51:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"3\";s:11:\"IBLOCK_TYPE\";s:8:\"services\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:2:\"10\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:6:\"Skills\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:3:{i:0;s:13:\"ARIA_VALUENOW\";i:1;s:7:\"PERCENT\";i:2;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";}'),
(55, 's1', 'bitrix:news.list', 'routes', '/services/index.php', 'N', NULL, 4844, 8247, 'a:51:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"4\";s:11:\"IBLOCK_TYPE\";s:8:\"services\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:1:\"9\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:22:\"Направления\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:4:\"ICON\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";}'),
(56, 's1', 'bitrix:news.list', 'site', '/services/index.php', 'N', NULL, 8708, 12219, 'a:51:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"5\";s:11:\"IBLOCK_TYPE\";s:8:\"services\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:1:\"8\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:21:\"Виды сайтов\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:8:{i:0;s:3:\"SEO\";i:1;s:5:\"ADMIN\";i:2;s:6:\"DESIGN\";i:3;s:11:\"INTEGRATION\";i:4;s:8:\"LOCATION\";i:5;s:4:\"TIME\";i:6;s:5:\"PRICE\";i:7;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";}'),
(57, 's1', 'bitrix:menu', 'footer_menu', '/local/templates/other/footer.php', 'N', NULL, 2068, 2791, 'a:10:{s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:15:\"CHILD_MENU_TYPE\";s:4:\"left\";s:5:\"DELAY\";s:1:\"N\";s:9:\"MAX_LEVEL\";s:1:\"1\";s:19:\"MENU_CACHE_GET_VARS\";a:1:{i:0;s:0:\"\";}s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"N\";s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"N\";}'),
(69, 's1', 'bitrix:catalog.section.list', 'portfolio_categories', '/portfolio/index.php', 'N', NULL, 516, 1720, 'a:18:{s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:14:\"COUNT_ELEMENTS\";s:1:\"N\";s:21:\"COUNT_ELEMENTS_FILTER\";s:10:\"CNT_ACTIVE\";s:11:\"FILTER_NAME\";s:14:\"sectionsFilter\";s:9:\"IBLOCK_ID\";s:1:\"6\";s:11:\"IBLOCK_TYPE\";s:9:\"portfolio\";s:12:\"SECTION_CODE\";s:0:\"\";s:14:\"SECTION_FIELDS\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:10:\"SECTION_ID\";s:26:\"={$_REQUEST[\"SECTION_ID\"]}\";s:11:\"SECTION_URL\";s:0:\"\";s:19:\"SECTION_USER_FIELDS\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:16:\"SHOW_PARENT_NAME\";s:1:\"Y\";s:9:\"TOP_DEPTH\";s:1:\"2\";s:9:\"VIEW_MODE\";s:4:\"LINE\";}'),
(70, 's1', 'bitrix:news.list', 'portfolio_list', '/portfolio/index.php', 'N', NULL, 1794, 3724, 'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:8:{i:0;s:4:\"NAME\";i:1;s:12:\"PREVIEW_TEXT\";i:2;s:11:\"DETAIL_TEXT\";i:3;s:14:\"DETAIL_PICTURE\";i:4;s:9:\"IBLOCK_ID\";i:5;s:11:\"IBLOCK_CODE\";i:6;s:11:\"IBLOCK_NAME\";i:7;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"6\";s:11:\"IBLOCK_TYPE\";s:9:\"portfolio\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:2:\"18\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:12:\"Работы\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:8:{i:0;s:3:\"SEO\";i:1;s:6:\"DESIGN\";i:2;s:8:\"CUSTOMER\";i:3;s:7:\"PROJECT\";i:4;s:4:\"SITE\";i:5;s:4:\"TIME\";i:6;s:10:\"TECHNOLOGY\";i:7;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:14:\"portfolio_list\";}'),
(87, 's1', 'bitrix:main.include', '', '/index.php', 'N', NULL, 573, 999, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:16:\"AREA_FILE_SUFFIX\";s:15:\"about_text_file\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";s:4:\"PATH\";s:23:\"/include/about_text.php\";}'),
(88, 's1', 'bitrix:main.include', '', '/index.php', 'N', NULL, 1140, 1555, 'a:4:{s:14:\"AREA_FILE_SHOW\";s:4:\"file\";s:16:\"AREA_FILE_SUFFIX\";s:3:\"inc\";s:13:\"EDIT_TEMPLATE\";s:0:\"\";s:4:\"PATH\";s:24:\"/include/about_image.php\";}'),
(89, 's1', 'bitrix:news.list', 'routes', '/index.php', 'N', NULL, 2042, 3705, 'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"4\";s:11:\"IBLOCK_TYPE\";s:8:\"services\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:1:\"3\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:22:\"Направления\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:4:\"ICON\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:6:\"routes\";}'),
(90, 's1', 'bitrix:news.list', 'static', '/index.php', 'N', NULL, 3888, 7308, 'a:51:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:2:{i:0;s:4:\"NAME\";i:1;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"7\";s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:1:\"8\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:20:\"Статистика\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:3:{i:0;s:4:\"ICON\";i:1;s:3:\"SUM\";i:2;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";}'),
(91, 's1', 'bitrix:news.list', 'reviews', '/index.php', 'N', NULL, 15307, 16995, 'a:52:{s:18:\"ACTIVE_DATE_FORMAT\";s:5:\"d.m.Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:10:\"DETAIL_URL\";s:0:\"\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"N\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:10:\"FIELD_CODE\";a:3:{i:0;s:4:\"NAME\";i:1;s:12:\"PREVIEW_TEXT\";i:2;s:0:\"\";}s:11:\"FILTER_NAME\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"8\";s:11:\"IBLOCK_TYPE\";s:7:\"content\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:19:\"INCLUDE_SUBSECTIONS\";s:1:\"Y\";s:11:\"MESSAGE_404\";s:0:\"\";s:10:\"NEWS_COUNT\";s:1:\"3\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:8:\".default\";s:11:\"PAGER_TITLE\";s:12:\"Отзывы\";s:14:\"PARENT_SECTION\";s:0:\"\";s:19:\"PARENT_SECTION_CODE\";s:0:\"\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:13:\"PROPERTY_CODE\";a:2:{i:0;s:5:\"ORDER\";i:1;s:0:\"\";}s:17:\"SET_BROWSER_TITLE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"N\";s:20:\"SET_META_DESCRIPTION\";s:1:\"Y\";s:17:\"SET_META_KEYWORDS\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"N\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:2:\"ID\";s:11:\"SORT_ORDER1\";s:3:\"ASC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:7:\"reviews\";}'),
(114, 's1', 'bitrix:catalog.comments', '.default', '/local/templates/blog/components/bitrix/news/my_blog/bitrix/news.detail/.default/template.php', 'N', NULL, 1275, 1965, 'a:22:{s:10:\"BLOG_TITLE\";s:22:\"Комментарии\";s:8:\"BLOG_URL\";s:16:\"catalog_comments\";s:8:\"BLOG_USE\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:1:\"0\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:14:\"COMMENTS_COUNT\";s:1:\"4\";s:12:\"ELEMENT_CODE\";s:0:\"\";s:10:\"ELEMENT_ID\";s:18:\"={$arResult[\"ID\"]}\";s:12:\"EMAIL_NOTIFY\";s:1:\"N\";s:6:\"FB_USE\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"9\";s:11:\"IBLOCK_TYPE\";s:4:\"blog\";s:13:\"PATH_TO_SMILE\";s:26:\"/bitrix/images/blog/smile/\";s:16:\"SHOW_DEACTIVATED\";s:1:\"N\";s:11:\"SHOW_RATING\";s:1:\"N\";s:9:\"SHOW_SPAM\";s:1:\"Y\";s:14:\"TEMPLATE_THEME\";s:4:\"blue\";s:14:\"URL_TO_COMMENT\";s:0:\"\";s:6:\"VK_USE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";}'),
(123, 's1', 'bitrix:main.feedback', 'form_contacts', '/contacts/index.php', 'N', NULL, 1965, 2320, 'a:6:{s:8:\"EMAIL_TO\";s:13:\"admin@mail.ru\";s:16:\"EVENT_MESSAGE_ID\";N;s:7:\"OK_TEXT\";s:59:\"Спасибо, ваше сообщение принято.\";s:15:\"REQUIRED_FIELDS\";a:2:{i:0;s:5:\"EMAIL\";i:1;s:7:\"MESSAGE\";}s:11:\"USE_CAPTCHA\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:13:\"form_contacts\";}'),
(124, 's1', 'bitrix:map.yandex.view', '.default', '/contacts/index.php', 'N', NULL, 2644, 3411, 'a:9:{s:7:\"API_KEY\";s:36:\"434afd04-4453-4350-b244-8aeb6bfc2605\";s:8:\"CONTROLS\";a:4:{i:0;s:4:\"ZOOM\";i:1;s:7:\"MINIMAP\";i:2;s:11:\"TYPECONTROL\";i:3;s:9:\"SCALELINE\";}s:13:\"INIT_MAP_TYPE\";s:3:\"MAP\";s:8:\"MAP_DATA\";s:232:\"a:4:{s:10:\"yandex_lat\";d:57.151823451313895;s:10:\"yandex_lon\";d:65.52515540185556;s:12:\"yandex_scale\";i:11;s:10:\"PLACEMARKS\";a:1:{i:0;a:3:{s:3:\"LON\";d:65.527326767499;s:3:\"LAT\";d:57.139207057719;s:4:\"TEXT\";s:15:\"Наш офис\";}}}\";s:10:\"MAP_HEIGHT\";s:3:\"400\";s:6:\"MAP_ID\";s:0:\"\";s:9:\"MAP_WIDTH\";s:4:\"1140\";s:7:\"OPTIONS\";a:3:{i:0;s:18:\"ENABLE_SCROLL_ZOOM\";i:1;s:20:\"ENABLE_DBLCLICK_ZOOM\";i:2;s:15:\"ENABLE_DRAGGING\";}s:18:\"COMPONENT_TEMPLATE\";s:8:\".default\";}'),
(133, 's1', 'bitrix:news', 'my_blog', '/blog/index.php', 'Y', '/blog/', 239, 3438, 'a:79:{s:17:\"ADD_ELEMENT_CHAIN\";s:1:\"Y\";s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"Y\";s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:13:\"BROWSER_TITLE\";s:4:\"NAME\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"Y\";s:25:\"DETAIL_ACTIVE_DATE_FORMAT\";s:5:\"j F Y\";s:27:\"DETAIL_DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:24:\"DETAIL_DISPLAY_TOP_PAGER\";s:1:\"N\";s:17:\"DETAIL_FIELD_CODE\";a:13:{i:0;s:2:\"ID\";i:1;s:4:\"CODE\";i:2;s:4:\"NAME\";i:3;s:12:\"PREVIEW_TEXT\";i:4;s:15:\"PREVIEW_PICTURE\";i:5;s:11:\"DETAIL_TEXT\";i:6;s:14:\"DETAIL_PICTURE\";i:7;s:16:\"DATE_ACTIVE_FROM\";i:8;s:12:\"SHOW_COUNTER\";i:9;s:11:\"DATE_CREATE\";i:10;s:10:\"CREATED_BY\";i:11;s:17:\"CREATED_USER_NAME\";i:12;s:0:\"\";}s:21:\"DETAIL_PAGER_SHOW_ALL\";s:1:\"Y\";s:21:\"DETAIL_PAGER_TEMPLATE\";s:0:\"\";s:18:\"DETAIL_PAGER_TITLE\";s:12:\"Статьи\";s:20:\"DETAIL_PROPERTY_CODE\";a:2:{i:0;s:17:\"BLOG_COMMENTS_CNT\";i:1;s:0:\"\";}s:24:\"DETAIL_SET_CANONICAL_URL\";s:1:\"N\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:12:\"DISPLAY_DATE\";s:1:\"Y\";s:12:\"DISPLAY_NAME\";s:1:\"Y\";s:15:\"DISPLAY_PICTURE\";s:1:\"Y\";s:20:\"DISPLAY_PREVIEW_TEXT\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:8:\"FILE_404\";s:0:\"\";s:24:\"HIDE_LINK_WHEN_NO_DETAIL\";s:1:\"N\";s:9:\"IBLOCK_ID\";s:1:\"9\";s:11:\"IBLOCK_TYPE\";s:4:\"blog\";s:25:\"INCLUDE_IBLOCK_INTO_CHAIN\";s:1:\"N\";s:23:\"LIST_ACTIVE_DATE_FORMAT\";s:5:\"j F Y\";s:15:\"LIST_FIELD_CODE\";a:13:{i:0;s:2:\"ID\";i:1;s:4:\"CODE\";i:2;s:4:\"NAME\";i:3;s:12:\"PREVIEW_TEXT\";i:4;s:15:\"PREVIEW_PICTURE\";i:5;s:11:\"DETAIL_TEXT\";i:6;s:14:\"DETAIL_PICTURE\";i:7;s:16:\"DATE_ACTIVE_FROM\";i:8;s:12:\"SHOW_COUNTER\";i:9;s:11:\"DATE_CREATE\";i:10;s:10:\"CREATED_BY\";i:11;s:17:\"CREATED_USER_NAME\";i:12;s:0:\"\";}s:18:\"LIST_PROPERTY_CODE\";a:2:{i:0;s:17:\"BLOG_COMMENTS_CNT\";i:1;s:0:\"\";}s:11:\"MESSAGE_404\";s:0:\"\";s:16:\"META_DESCRIPTION\";s:1:\"-\";s:13:\"META_KEYWORDS\";s:1:\"-\";s:10:\"NEWS_COUNT\";s:1:\"2\";s:22:\"PAGER_BASE_LINK_ENABLE\";s:1:\"N\";s:20:\"PAGER_DESC_NUMBERING\";s:1:\"N\";s:31:\"PAGER_DESC_NUMBERING_CACHE_TIME\";s:5:\"36000\";s:14:\"PAGER_SHOW_ALL\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"N\";s:14:\"PAGER_TEMPLATE\";s:6:\"modern\";s:11:\"PAGER_TITLE\";s:12:\"Статьи\";s:20:\"PREVIEW_TRUNCATE_LEN\";s:0:\"\";s:8:\"SEF_MODE\";s:1:\"Y\";s:17:\"SET_LAST_MODIFIED\";s:1:\"Y\";s:14:\"SET_STATUS_404\";s:1:\"Y\";s:9:\"SET_TITLE\";s:1:\"Y\";s:8:\"SHOW_404\";s:1:\"N\";s:8:\"SORT_BY1\";s:11:\"ACTIVE_FROM\";s:8:\"SORT_BY2\";s:4:\"SORT\";s:11:\"SORT_ORDER1\";s:4:\"DESC\";s:11:\"SORT_ORDER2\";s:3:\"ASC\";s:20:\"STRICT_SECTION_CHECK\";s:1:\"N\";s:14:\"USE_CATEGORIES\";s:1:\"N\";s:10:\"USE_FILTER\";s:1:\"N\";s:15:\"USE_PERMISSIONS\";s:1:\"N\";s:10:\"USE_RATING\";s:1:\"N\";s:10:\"USE_REVIEW\";s:1:\"N\";s:7:\"USE_RSS\";s:1:\"N\";s:10:\"USE_SEARCH\";s:1:\"N\";s:9:\"USE_SHARE\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:7:\"my_blog\";s:14:\"TEMPLATE_THEME\";s:4:\"blue\";s:14:\"MEDIA_PROPERTY\";s:0:\"\";s:15:\"SLIDER_PROPERTY\";s:0:\"\";s:17:\"MESSAGES_PER_PAGE\";s:2:\"10\";s:11:\"USE_CAPTCHA\";s:1:\"Y\";s:16:\"REVIEW_AJAX_POST\";s:1:\"Y\";s:13:\"PATH_TO_SMILE\";s:27:\"/bitrix/images/forum/smile/\";s:8:\"FORUM_ID\";s:0:\"\";s:18:\"URL_TEMPLATES_READ\";s:0:\"\";s:18:\"SHOW_LINK_TO_FORUM\";s:1:\"Y\";s:10:\"SEF_FOLDER\";s:6:\"/blog/\";s:17:\"SEF_URL_TEMPLATES\";a:3:{s:4:\"news\";s:0:\"\";s:7:\"section\";s:20:\"#SECTION_CODE_PATH#/\";s:6:\"detail\";s:34:\"#SECTION_CODE_PATH#/#ELEMENT_CODE#\";}}'),
(163, 's1', 'bitrix:search.page', 'my_search_page', '/blog/search/index.php', 'N', NULL, 97, 1526, 'a:47:{s:9:\"AJAX_MODE\";s:1:\"N\";s:22:\"AJAX_OPTION_ADDITIONAL\";s:0:\"\";s:19:\"AJAX_OPTION_HISTORY\";s:1:\"N\";s:16:\"AJAX_OPTION_JUMP\";s:1:\"N\";s:17:\"AJAX_OPTION_STYLE\";s:1:\"Y\";s:10:\"CACHE_TIME\";s:4:\"3600\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"N\";s:12:\"DEFAULT_SORT\";s:4:\"rank\";s:20:\"DISPLAY_BOTTOM_PAGER\";s:1:\"Y\";s:17:\"DISPLAY_TOP_PAGER\";s:1:\"N\";s:11:\"FILTER_NAME\";s:0:\"\";s:13:\"NO_WORD_LOGIC\";s:1:\"N\";s:17:\"PAGER_SHOW_ALWAYS\";s:1:\"Y\";s:14:\"PAGER_TEMPLATE\";s:6:\"modern\";s:11:\"PAGER_TITLE\";s:33:\"Результаты поиска\";s:17:\"PAGE_RESULT_COUNT\";s:1:\"2\";s:7:\"RESTART\";s:1:\"N\";s:9:\"SHOW_WHEN\";s:1:\"N\";s:10:\"SHOW_WHERE\";s:1:\"N\";s:18:\"USE_LANGUAGE_GUESS\";s:1:\"Y\";s:11:\"USE_SUGGEST\";s:1:\"N\";s:14:\"USE_TITLE_RANK\";s:1:\"N\";s:9:\"arrFILTER\";a:1:{i:0;s:11:\"iblock_blog\";}s:8:\"arrWHERE\";s:0:\"\";s:18:\"COMPONENT_TEMPLATE\";s:14:\"my_search_page\";s:14:\"SHOW_ITEM_TAGS\";s:1:\"Y\";s:12:\"TAGS_INHERIT\";s:1:\"Y\";s:21:\"SHOW_ITEM_DATE_CHANGE\";s:1:\"Y\";s:13:\"SHOW_ORDER_BY\";s:1:\"Y\";s:15:\"SHOW_TAGS_CLOUD\";s:1:\"N\";s:16:\"STRUCTURE_FILTER\";s:9:\"structure\";s:13:\"NAME_TEMPLATE\";s:0:\"\";s:10:\"SHOW_LOGIN\";s:1:\"Y\";s:21:\"arrFILTER_iblock_blog\";a:1:{i:0;s:1:\"9\";}s:9:\"TAGS_SORT\";s:3:\"CNT\";s:18:\"TAGS_PAGE_ELEMENTS\";s:3:\"150\";s:11:\"TAGS_PERIOD\";s:0:\"\";s:15:\"TAGS_URL_SEARCH\";s:0:\"\";s:8:\"FONT_MAX\";s:2:\"50\";s:8:\"FONT_MIN\";s:2:\"10\";s:9:\"COLOR_NEW\";s:6:\"000000\";s:9:\"COLOR_OLD\";s:6:\"C8C8C8\";s:15:\"PERIOD_NEW_TAGS\";s:0:\"\";s:10:\"SHOW_CHAIN\";s:1:\"N\";s:10:\"COLOR_TYPE\";s:1:\"Y\";s:5:\"WIDTH\";s:4:\"100%\";}'),
(175, 's1', 'bitrix:search.form', 'my_search', '/local/templates/blog/footer.php', 'N', NULL, 233, 526, 'a:3:{s:4:\"PAGE\";s:31:\"#SITE_DIR#blog/search/index.php\";s:11:\"USE_SUGGEST\";s:1:\"N\";s:18:\"COMPONENT_TEMPLATE\";s:9:\"my_search\";}'),
(176, 's1', 'bitrix:catalog.section.list', 'my_categories', '/local/templates/blog/footer.php', 'N', NULL, 670, 1865, 'a:18:{s:18:\"ADD_SECTIONS_CHAIN\";s:1:\"N\";s:12:\"CACHE_FILTER\";s:1:\"N\";s:12:\"CACHE_GROUPS\";s:1:\"N\";s:10:\"CACHE_TIME\";s:8:\"36000000\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:14:\"COUNT_ELEMENTS\";s:1:\"N\";s:21:\"COUNT_ELEMENTS_FILTER\";s:10:\"CNT_ACTIVE\";s:11:\"FILTER_NAME\";s:14:\"sectionsFilter\";s:9:\"IBLOCK_ID\";s:1:\"9\";s:11:\"IBLOCK_TYPE\";s:4:\"blog\";s:12:\"SECTION_CODE\";s:0:\"\";s:14:\"SECTION_FIELDS\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:10:\"SECTION_ID\";s:26:\"={$_REQUEST[\"SECTION_ID\"]}\";s:11:\"SECTION_URL\";s:0:\"\";s:19:\"SECTION_USER_FIELDS\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:16:\"SHOW_PARENT_NAME\";s:1:\"Y\";s:9:\"TOP_DEPTH\";s:1:\"2\";s:9:\"VIEW_MODE\";s:4:\"LINE\";}'),
(177, 's1', 'bitrix:search.tags.cloud', 'my_tags', '/local/templates/blog/footer.php', 'N', NULL, 2012, 2671, 'a:20:{s:10:\"CACHE_TIME\";s:4:\"3600\";s:10:\"CACHE_TYPE\";s:1:\"A\";s:11:\"CHECK_DATES\";s:1:\"N\";s:9:\"COLOR_NEW\";s:6:\"3E74E6\";s:9:\"COLOR_OLD\";s:6:\"C0C0C0\";s:10:\"COLOR_TYPE\";s:1:\"Y\";s:18:\"COMPONENT_TEMPLATE\";s:7:\"my_tags\";s:11:\"FILTER_NAME\";s:0:\"\";s:8:\"FONT_MAX\";s:2:\"50\";s:8:\"FONT_MIN\";s:2:\"10\";s:13:\"PAGE_ELEMENTS\";s:2:\"15\";s:6:\"PERIOD\";s:0:\"\";s:15:\"PERIOD_NEW_TAGS\";s:0:\"\";s:10:\"SHOW_CHAIN\";s:1:\"N\";s:4:\"SORT\";s:3:\"CNT\";s:12:\"TAGS_INHERIT\";s:1:\"Y\";s:10:\"URL_SEARCH\";s:22:\"/blog/search/index.php\";s:5:\"WIDTH\";s:4:\"100%\";s:9:\"arrFILTER\";a:1:{i:0;s:11:\"iblock_blog\";}s:21:\"arrFILTER_iblock_blog\";a:1:{i:0;s:1:\"9\";}}'),
(178, 's1', 'bitrix:menu', 'footer_menu', '/local/templates/blog/footer.php', 'N', NULL, 4720, 5470, 'a:10:{s:18:\"ALLOW_MULTI_SELECT\";s:1:\"N\";s:15:\"CHILD_MENU_TYPE\";s:4:\"left\";s:5:\"DELAY\";s:1:\"N\";s:9:\"MAX_LEVEL\";s:1:\"1\";s:19:\"MENU_CACHE_GET_VARS\";a:1:{i:0;s:0:\"\";}s:15:\"MENU_CACHE_TIME\";s:4:\"3600\";s:15:\"MENU_CACHE_TYPE\";s:1:\"N\";s:21:\"MENU_CACHE_USE_GROUPS\";s:1:\"N\";s:14:\"ROOT_MENU_TYPE\";s:3:\"top\";s:7:\"USE_EXT\";s:1:\"N\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_composite_log`
--

CREATE TABLE `b_composite_log` (
  `ID` int(18) NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `AJAX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USER_ID` int(18) NOT NULL DEFAULT '0',
  `PAGE_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_composite_page`
--

CREATE TABLE `b_composite_page` (
  `ID` int(18) NOT NULL,
  `CACHE_KEY` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int(18) NOT NULL DEFAULT '0',
  `REWRITES` int(18) NOT NULL DEFAULT '0',
  `SIZE` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_agreement`
--

CREATE TABLE `b_consent_agreement` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGREEMENT_TEXT` longtext COLLATE utf8_unicode_ci,
  `LABEL_TEXT` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_URL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_AGREEMENT_TEXT_HTML` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_field`
--

CREATE TABLE `b_consent_field` (
  `ID` int(18) NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_user_consent`
--

CREATE TABLE `b_consent_user_consent` (
  `ID` int(18) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGIN_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_consent_user_consent_item`
--

CREATE TABLE `b_consent_user_consent_item` (
  `ID` int(18) NOT NULL,
  `USER_CONSENT_ID` int(18) NOT NULL,
  `VALUE` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_counter_data`
--

CREATE TABLE `b_counter_data` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_culture`
--

CREATE TABLE `b_culture` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(1) DEFAULT '1',
  `CHARSET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SHORT_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'n/j/Y',
  `MEDIUM_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j, Y',
  `LONG_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'F j, Y',
  `FULL_DATE_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'l, F j, Y',
  `DAY_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'F j',
  `DAY_SHORT_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'M j',
  `DAY_OF_WEEK_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'l, F j',
  `SHORT_DAY_OF_WEEK_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'D, F j',
  `SHORT_DAY_OF_WEEK_SHORT_MONTH_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'D, M j',
  `SHORT_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i a',
  `LONG_TIME_FORMAT` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'g:i:s a',
  `AM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'am',
  `PM_VALUE` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pm',
  `NUMBER_THOUSANDS_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT ',',
  `NUMBER_DECIMAL_SEPARATOR` varchar(10) COLLATE utf8_unicode_ci DEFAULT '.',
  `NUMBER_DECIMALS` tinyint(4) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_culture`
--

INSERT INTO `b_culture` (`ID`, `CODE`, `NAME`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `DIRECTION`, `SHORT_DATE_FORMAT`, `MEDIUM_DATE_FORMAT`, `LONG_DATE_FORMAT`, `FULL_DATE_FORMAT`, `DAY_MONTH_FORMAT`, `DAY_SHORT_MONTH_FORMAT`, `DAY_OF_WEEK_MONTH_FORMAT`, `SHORT_DAY_OF_WEEK_MONTH_FORMAT`, `SHORT_DAY_OF_WEEK_SHORT_MONTH_FORMAT`, `SHORT_TIME_FORMAT`, `LONG_TIME_FORMAT`, `AM_VALUE`, `PM_VALUE`, `NUMBER_THOUSANDS_SEPARATOR`, `NUMBER_DECIMAL_SEPARATOR`, `NUMBER_DECIMALS`) VALUES
(1, 'ru', 'ru', 'DD.MM.YYYY', 'DD.MM.YYYY HH:MI:SS', '#NAME# #LAST_NAME#', 1, 'UTF-8', 'Y', 'd.m.Y', 'j M Y', 'j F Y', 'l, j F Y', 'j F', 'j M', 'l, j F', 'D, j F', 'D, j M', 'H:i', 'H:i:s', 'am', 'pm', ' ', ',', 2),
(2, 'en', 'en', 'MM/DD/YYYY', 'MM/DD/YYYY H:MI:SS T', '#NAME# #LAST_NAME#', 0, 'UTF-8', 'Y', 'n/j/Y', 'M j, Y', 'F j, Y', 'l, F j, Y', 'F j', 'M j', 'l, F j', 'D, F j', 'D, M j', 'g:i a', 'g:i:s a', 'am', 'pm', ',', '.', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `b_entity_usage`
--

CREATE TABLE `b_entity_usage` (
  `USER_ID` int(11) NOT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID_INT` int(11) NOT NULL DEFAULT '0',
  `PREFIX` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `LAST_USE_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_event`
--

CREATE TABLE `b_event` (
  `ID` int(18) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` int(18) DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8_unicode_ci,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_attachment`
--

CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `IS_FILE_COPIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_log`
--

CREATE TABLE `b_event_log` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SEVERITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `GUEST_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_log`
--

INSERT INTO `b_event_log` (`ID`, `TIMESTAMP_X`, `SEVERITY`, `AUDIT_TYPE_ID`, `MODULE_ID`, `ITEM_ID`, `REMOTE_ADDR`, `USER_AGENT`, `REQUEST_URI`, `SITE_ID`, `USER_ID`, `GUEST_ID`, `DESCRIPTION`) VALUES
(67, '2020-12-01 18:03:07', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/', 's1', 1, NULL, ''),
(68, '2020-12-01 18:48:24', 'UNKNOWN', 'PAGE_DELETE', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '/bitrix/admin/public_file_delete.php?save=Y&delete_from_menu=Y&bxsender=core_window_cdialog&lang=ru&site=s1&path=%2Ftest.php&siteTemplateId=other', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:8:\"test.php\";}'),
(69, '2020-12-01 19:17:02', 'UNKNOWN', 'SECTION_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '/bitrix/admin/public_folder_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&path=%2F&back_url=%2Fdfds&siteTemplateId=other', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:0:\"\";}'),
(70, '2020-12-01 19:17:14', 'UNKNOWN', 'SECTION_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '/bitrix/admin/public_folder_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&path=%2F&back_url=%2Fdfds%3Fclear_cache%3DY&siteTemplateId=other', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:0:\"\";}'),
(71, '2020-12-01 19:17:32', 'UNKNOWN', 'SECTION_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '/bitrix/admin/public_folder_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&path=%2F&back_url=%2Fdfds%3Fclear_cache%3DY&siteTemplateId=other', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:0:\"\";}'),
(72, '2020-12-01 19:20:11', 'UNKNOWN', 'SECTION_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36', '/bitrix/admin/public_folder_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&path=%2F&back_url=%2Fsdfsd&siteTemplateId=other', NULL, 1, NULL, 'a:1:{s:4:\"path\";s:0:\"\";}'),
(73, '2020-12-03 18:45:39', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/', 's1', 1, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_message`
--

CREATE TABLE `b_event_message` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_PHP` longtext COLLATE utf8_unicode_ci,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8_unicode_ci,
  `REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_message`
--

INSERT INTO `b_event_message` (`ID`, `TIMESTAMP_X`, `EVENT_NAME`, `LID`, `ACTIVE`, `EMAIL_FROM`, `EMAIL_TO`, `SUBJECT`, `MESSAGE`, `MESSAGE_PHP`, `BODY_TYPE`, `BCC`, `REPLY_TO`, `CC`, `IN_REPLY_TO`, `PRIORITY`, `FIELD1_NAME`, `FIELD1_VALUE`, `FIELD2_NAME`, `FIELD2_VALUE`, `SITE_TEMPLATE_ID`, `ADDITIONAL_FIELD`, `LANGUAGE_ID`) VALUES
(1, '2020-11-11 17:11:32', 'NEW_USER', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#DEFAULT_EMAIL_FROM#', '#SITE_NAME#: Зарегистрировался новый пользователь', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams[\"SERVER_NAME\"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\n\nИмя: <?=$arParams[\"NAME\"];?>\n\nФамилия: <?=$arParams[\"LAST_NAME\"];?>\n\nE-Mail: <?=$arParams[\"EMAIL\"];?>\n\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nПисьмо сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(2, '2020-11-11 17:11:32', 'USER_INFO', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Регистрационная информация', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(3, '2020-11-11 17:11:32', 'USER_PASS_REQUEST', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Запрос на смену пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(4, '2020-11-11 17:11:32', 'USER_PASS_CHANGED', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение смены пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n<?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>,\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(5, '2020-11-11 17:11:32', 'NEW_USER_CONFIRM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение регистрации нового пользователя', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams[\"SERVER_NAME\"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>&confirm_code=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams[\"USER_ID\"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(6, '2020-11-11 17:11:32', 'USER_INVITE', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Приглашение на сайт', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams[\"NAME\"];?> <?=$arParams[\"LAST_NAME\"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"ID\"];?>\n\nLogin: <?=$arParams[\"LOGIN\"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams[\"URL_LOGIN\"];?>&USER_CHECKWORD=<?=$arParams[\"CHECKWORD\"];?>\n\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(7, '2020-11-11 17:11:32', 'FEEDBACK_FORM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: Сообщение из формы обратной связи', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nE-mail автора: <?=$arParams[\"AUTHOR_EMAIL\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"TEXT\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(8, '2020-11-11 17:11:32', 'MAIN_MAIL_CONFIRM_CODE', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#MESSAGE_SUBJECT#', '<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>', '<? EventMessageThemeCompiler::includeComponent(\'bitrix:main.mail.confirm\', \'\', $arParams); ?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_join', NULL, NULL),
(9, '2020-11-11 17:11:32', 'EVENT_LOG_NOTIFICATION', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', 'Оповещение журнала событий: #NAME#', 'Зафиксированы события в журнале, соответствующие параметрам оповещения:\n\nТип события: #AUDIT_TYPE_ID#\nОбъект: #ITEM_ID#\nПользователь: #USER_ID# \nIP-адрес: #REMOTE_ADDR#\nБраузер: #USER_AGENT#\nСтраница: #REQUEST_URI# \n\nКоличество записей: #EVENT_COUNT# \n\n#ADDITIONAL_TEXT#\n\nПерейти в журнал событий:\nhttp://#SERVER_NAME#/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=#AUDIT_TYPE_ID#', 'Зафиксированы события в журнале, соответствующие параметрам оповещения:\n\nТип события: <?=$arParams[\"AUDIT_TYPE_ID\"];?>\n\nОбъект: <?=$arParams[\"ITEM_ID\"];?>\n\nПользователь: <?=$arParams[\"USER_ID\"];?> \nIP-адрес: <?=$arParams[\"REMOTE_ADDR\"];?>\n\nБраузер: <?=$arParams[\"USER_AGENT\"];?>\n\nСтраница: <?=$arParams[\"REQUEST_URI\"];?> \n\nКоличество записей: <?=$arParams[\"EVENT_COUNT\"];?> \n\n<?=$arParams[\"ADDITIONAL_TEXT\"];?>\n\n\nПерейти в журнал событий:\nhttp://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/event_log.php?set_filter=Y&find_audit_type_id=<?=$arParams[\"AUDIT_TYPE_ID\"];?>', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(10, '2020-11-11 17:11:32', 'USER_CODE_REQUEST', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Запрос кода авторизации', 'Используйте для авторизации код:\n\n#CHECKWORD#\n\nПосле авторизации вы сможете изменить свой пароль в редактировании профиля.\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nЛогин: #LOGIN#\n\nСообщение создано автоматически.', 'Используйте для авторизации код:\n\n<?=$arParams[\"CHECKWORD\"];?>\n\n\nПосле авторизации вы сможете изменить свой пароль в редактировании профиля.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams[\"USER_ID\"];?>\n\nСтатус профиля: <?=$arParams[\"STATUS\"];?>\n\nЛогин: <?=$arParams[\"LOGIN\"];?>\n\n\nСообщение создано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(11, '2020-11-11 17:11:45', 'NEW_BLOG_MESSAGE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #BLOG_NAME# : #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовое сообщение в блоге \"#BLOG_NAME#\"\n\nТема:\n#MESSAGE_TITLE#\n\nАвтор: #AUTHOR#\nДата: #MESSAGE_DATE#\n\nТекст сообщения:\n#MESSAGE_TEXT#\n\nАдрес сообщения:\n#MESSAGE_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовое сообщение в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\"\n\nТема:\n<?=$arParams[\"MESSAGE_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"MESSAGE_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"MESSAGE_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2020-11-11 17:11:45', 'NEW_BLOG_COMMENT', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE# : #COMMENT_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\"\n\nТема:\n#COMMENT_TITLE#\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\"\n\nТема:\n<?=$arParams[\"COMMENT_TITLE\"];?>\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2020-11-11 17:11:45', 'NEW_BLOG_COMMENT2COMMENT', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE# : #COMMENT_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\".\n\nТема:\n#COMMENT_TITLE#\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\".\n\nТема:\n<?=$arParams[\"COMMENT_TITLE\"];?>\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2020-11-11 17:11:45', 'NEW_BLOG_COMMENT_WITHOUT_TITLE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\"\n\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\"\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2020-11-11 17:11:45', 'NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"#BLOG_NAME#\" на сообщение \"#MESSAGE_TITLE#\".\n\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге \"<?=$arParams[\"BLOG_NAME\"];?>\" на сообщение \"<?=$arParams[\"MESSAGE_TITLE\"];?>\".\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата: <?=$arParams[\"COMMENT_DATE\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"COMMENT_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"COMMENT_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2020-11-11 17:11:45', 'BLOG_YOUR_BLOG_TO_USER', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] Ваш блог \"#BLOG_NAME#\" был добавлен в друзья к #USER#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВаш блог \"#BLOG_NAME#\" был добавлен в друзья к #USER#.\n\nПрофиль пользователя: #USER_URL#\n\nАдрес вашего блога: #BLOG_ADR#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВаш блог \"<?=$arParams[\"BLOG_NAME\"];?>\" был добавлен в друзья к <?=$arParams[\"USER\"];?>.\n\nПрофиль пользователя: <?=$arParams[\"USER_URL\"];?>\n\n\nАдрес вашего блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2020-11-11 17:11:45', 'BLOG_YOU_TO_BLOG', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] Вы были добавлены в друзья блога \"#BLOG_NAME#\"', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы были добавлены в друзья блога \"#BLOG_NAME#\".\n\nАдрес блога: #BLOG_ADR#\n\nВаш профиль: #USER_URL#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы были добавлены в друзья блога \"<?=$arParams[\"BLOG_NAME\"];?>\".\n\nАдрес блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nВаш профиль: <?=$arParams[\"USER_URL\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2020-11-11 17:11:45', 'BLOG_BLOG_TO_YOU', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] К вам в друзья был добавлен блог \"#BLOG_NAME#\"', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nК вам в друзья был добавлен блог \"#BLOG_NAME#\".\n\nАдрес блога: #BLOG_ADR#\n\nВаш профиль: #USER_URL#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nК вам в друзья был добавлен блог \"<?=$arParams[\"BLOG_NAME\"];?>\".\n\nАдрес блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nВаш профиль: <?=$arParams[\"USER_URL\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2020-11-11 17:11:45', 'BLOG_USER_TO_YOUR_BLOG', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] В ваш блог \"#BLOG_NAME#\" был добавлен друг #USER#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВ ваш блог \"#BLOG_NAME#\" был добавлен друг #USER#.\n\nПрофиль пользователя: #USER_URL#\n\nАдрес вашего блога: #BLOG_ADR#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВ ваш блог \"<?=$arParams[\"BLOG_NAME\"];?>\" был добавлен друг <?=$arParams[\"USER\"];?>.\n\nПрофиль пользователя: <?=$arParams[\"USER_URL\"];?>\n\n\nАдрес вашего блога: <?=$arParams[\"BLOG_ADR\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2020-11-11 17:11:45', 'BLOG_SONET_NEW_POST', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#POST_TITLE#', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.mail\",\"\",Array(\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.mail\",\"\",Array(\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_user', NULL, NULL),
(21, '2020-11-11 17:11:45', 'BLOG_SONET_NEW_COMMENT', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', 'Re: #POST_TITLE#', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.comment.mail\",\"\",Array(\"COMMENT_ID\" => \"{#COMMENT_ID#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post.comment.mail\",\"\",Array(\"COMMENT_ID\" => \"{$arParams[\'COMMENT_ID\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_user', NULL, NULL),
(22, '2020-11-11 17:11:45', 'BLOG_SONET_POST_SHARE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#POST_TITLE#', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post_share.mail\",\"\",Array(\"EMAIL_TO\" => \"{#EMAIL_TO#}\",\"RECIPIENT_ID\" => \"{#RECIPIENT_ID#}\",\"POST_ID\" => \"{#POST_ID#}\",\"URL\" => \"{#URL#}\"));?>', '<?EventMessageThemeCompiler::includeComponent(\"bitrix:socialnetwork.blog.post_share.mail\",\"\",Array(\"EMAIL_TO\" => \"{$arParams[\'EMAIL_TO\']}\",\"RECIPIENT_ID\" => \"{$arParams[\'RECIPIENT_ID\']}\",\"POST_ID\" => \"{$arParams[\'POST_ID\']}\",\"URL\" => \"{$arParams[\'URL\']}\"));?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_user', NULL, NULL),
(23, '2020-11-11 17:11:45', 'BLOG_POST_BROADCAST', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте добавлено новое сообщение.\n\nТема:\n#MESSAGE_TITLE#\n\nАвтор: #AUTHOR#\n\nТекст сообщения:\n#MESSAGE_TEXT#\n\nАдрес сообщения:\n#MESSAGE_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНа сайте добавлено новое сообщение.\n\nТема:\n<?=$arParams[\"MESSAGE_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\n\nТекст сообщения:\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\n<?=$arParams[\"MESSAGE_PATH\"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2020-11-11 17:11:56', 'NEW_FORUM_MESSAGE', 's1', 'Y', '#FROM_EMAIL#', '#RECIPIENT#', '#SITE_NAME#: [F] #TOPIC_TITLE# : #FORUM_NAME#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовое сообщение на форуме #SERVER_NAME#.\n\nТема:\n#TOPIC_TITLE#\n\nАвтор: #AUTHOR#\nДата : #MESSAGE_DATE#\nТекст сообщения:\n\n#MESSAGE_TEXT#\n\nАдрес сообщения:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nНовое сообщение на форуме <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема:\n<?=$arParams[\"TOPIC_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nТекст сообщения:\n\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2020-11-11 17:11:56', 'NEW_FORUM_PRIV', 's1', 'Y', '#FROM_EMAIL#', '#TO_EMAIL#', '#SITE_NAME#: [private] #SUBJECT#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте #SERVER_NAME#.\n\nТема: #SUBJECT#\n\nАвтор: #FROM_NAME# #FROM_EMAIL#\nДата : #MESSAGE_DATE#\nСообщение:\n\n#MESSAGE#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема: <?=$arParams[\"SUBJECT\"];?>\n\n\nАвтор: <?=$arParams[\"FROM_NAME\"];?> <?=$arParams[\"FROM_EMAIL\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nСообщение:\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2020-11-11 17:11:56', 'NEW_FORUM_PRIVATE_MESSAGE', 's1', 'Y', '#FROM_EMAIL#', '#TO_EMAIL#', '#SITE_NAME#: [private] #SUBJECT#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте #SERVER_NAME#.\n\nТема: #SUBJECT#\n\nАвтор: #FROM_NAME#\nДата: #MESSAGE_DATE#\nСообщение:\n\n#MESSAGE#\n\nСсылка на сообщение: #MESSAGE_LINK#Сообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема: <?=$arParams[\"SUBJECT\"];?>\n\n\nАвтор: <?=$arParams[\"FROM_NAME\"];?>\n\nДата: <?=$arParams[\"MESSAGE_DATE\"];?>\n\nСообщение:\n\n<?=$arParams[\"MESSAGE\"];?>\n\n\nСсылка на сообщение: <?=$arParams[\"MESSAGE_LINK\"];?>Сообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2020-11-11 17:11:56', 'EDIT_FORUM_MESSAGE', 's1', 'Y', '#FROM_EMAIL#', '#RECIPIENT#', '#SITE_NAME#: [F] #TOPIC_TITLE# : #FORUM_NAME#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nИзменение сообщения на форуме #SERVER_NAME#.\n\nТема:\n#TOPIC_TITLE#\n\nАвтор: #AUTHOR#\nДата : #MESSAGE_DATE#\nТекст сообщения:\n\n#MESSAGE_TEXT#\n\nАдрес сообщения:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nИзменение сообщения на форуме <?=$arParams[\"SERVER_NAME\"];?>.\n\nТема:\n<?=$arParams[\"TOPIC_TITLE\"];?>\n\n\nАвтор: <?=$arParams[\"AUTHOR\"];?>\n\nДата : <?=$arParams[\"MESSAGE_DATE\"];?>\n\nТекст сообщения:\n\n<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\nАдрес сообщения:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2020-11-11 17:11:56', 'FORUM_NEW_MESSAGE_MAIL', 's1', 'Y', '#FROM_EMAIL#', '#RECIPIENT#', '#TOPIC_TITLE#', '#MESSAGE_TEXT#\n\n------------------------------------------  \nВы получили это сообщение, так как выподписаны на форум #FORUM_NAME#.\n\nОтветить на сообщение можно по электронной почте или через форму на сайте:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nНаписать новое сообщение: #FORUM_EMAIL#\n\nАвтор сообщения: #AUTHOR#\n\nСообщение сгенерировано автоматически на сайте #SITE_NAME#.\n', '<?=$arParams[\"MESSAGE_TEXT\"];?>\n\n\n------------------------------------------  \nВы получили это сообщение, так как выподписаны на форум <?=$arParams[\"FORUM_NAME\"];?>.\n\nОтветить на сообщение можно по электронной почте или через форму на сайте:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"PATH2FORUM\"];?>\n\n\nНаписать новое сообщение: <?=$arParams[\"FORUM_EMAIL\"];?>\n\n\nАвтор сообщения: <?=$arParams[\"AUTHOR\"];?>\n\n\nСообщение сгенерировано автоматически на сайте <?=$arParams[\"SITE_NAME\"];?>.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2020-11-11 17:12:26', 'VIRUS_DETECTED', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Обнаружен вирус', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте!\n\nВы получили это сообщение, так как модуль проактивной защиты сервера #SERVER_NAME# обнаружил код, похожий на вирус.\n\n1. Подозрительный код был вырезан из html.\n2. Проверьте журнал вторжений и убедитесь, что код действительно вредоносный, а не является кодом какого-либо счетчика или фреймворка.\n (ссылка: http://#SERVER_NAME#/bitrix/admin/event_log.php?lang=ru&set_filter=Y&find_type=audit_type_id&find_audit_type[]=SECURITY_VIRUS )\n3. В случае, если код не является опасным, добавьте его в исключения на странице настройки антивируса.\n (ссылка: http://#SERVER_NAME#/bitrix/admin/security_antivirus.php?lang=ru&tabControl_active_tab=exceptions )\n4. Если код является вирусным, то необходимо выполнить следующие действия:\n\n а) Смените пароли доступа к сайту у администраторов и ответственных сотрудников.\n б) Смените пароли доступа по ssh и ftp.\n в) Проверьте и вылечите компьютеры администраторов, имевших доступ к сайту по ssh или ftp.\n г) В программах доступа к сайту по ssh и ftp отключите сохранение паролей.\n д) Удалите вредоносный код из зараженных файлов. Например, восстановите поврежденные файлы из самой свежей резервной копии.\n\n---------------------------------------------------------------------\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте!\n\nВы получили это сообщение, так как модуль проактивной защиты сервера <?=$arParams[\"SERVER_NAME\"];?> обнаружил код, похожий на вирус.\n\n1. Подозрительный код был вырезан из html.\n2. Проверьте журнал вторжений и убедитесь, что код действительно вредоносный, а не является кодом какого-либо счетчика или фреймворка.\n (ссылка: http://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/event_log.php?lang=ru&set_filter=Y&find_type=audit_type_id&find_audit_type[]=SECURITY_VIRUS )\n3. В случае, если код не является опасным, добавьте его в исключения на странице настройки антивируса.\n (ссылка: http://<?=$arParams[\"SERVER_NAME\"];?>/bitrix/admin/security_antivirus.php?lang=ru&tabControl_active_tab=exceptions )\n4. Если код является вирусным, то необходимо выполнить следующие действия:\n\n а) Смените пароли доступа к сайту у администраторов и ответственных сотрудников.\n б) Смените пароли доступа по ssh и ftp.\n в) Проверьте и вылечите компьютеры администраторов, имевших доступ к сайту по ssh или ftp.\n г) В программах доступа к сайту по ssh и ftp отключите сохранение паролей.\n д) Удалите вредоносный код из зараженных файлов. Например, восстановите поврежденные файлы из самой свежей резервной копии.\n\n---------------------------------------------------------------------\nСообщение сгенерировано автоматически.\n', 'text', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2020-11-11 17:12:30', 'SUBSCRIBE_CONFIRM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение подписки', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера #SERVER_NAME#.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ #EMAIL#\nДата добавления/редактирования .... #DATE_SUBSCR#\n\nВаш код для подтверждения подписки: #CONFIRM_CODE#\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения подписки на странице:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\n\n---------------------------------------------------------------------\nСохраните это письмо, так как оно содержит информацию для авторизации.\nИспользуя код подтверждения подписки, вы cможете изменить параметры\nподписки или отписаться от рассылки.\n\nИзменить параметры:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#\n\nОтписаться:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#&action=unsubscribe\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams[\"SITE_NAME\"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера <?=$arParams[\"SERVER_NAME\"];?>.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ <?=$arParams[\"EMAIL\"];?>\n\nДата добавления/редактирования .... <?=$arParams[\"DATE_SUBSCR\"];?>\n\n\nВаш код для подтверждения подписки: <?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nВы также можете ввести код для подтверждения подписки на странице:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>\n\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\n\n---------------------------------------------------------------------\nСохраните это письмо, так как оно содержит информацию для авторизации.\nИспользуя код подтверждения подписки, вы cможете изменить параметры\nподписки или отписаться от рассылки.\n\nИзменить параметры:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>\n\n\nОтписаться:\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"SUBSCR_SECTION\"];?>subscr_edit.php?ID=<?=$arParams[\"ID\"];?>&CONFIRM_CODE=<?=$arParams[\"CONFIRM_CODE\"];?>&action=unsubscribe\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.\n', 'text', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2020-11-11 17:12:34', 'VOTE_FOR', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [V] #VOTE_TITLE#', '#USER_NAME# принял участие в опросе \"#VOTE_TITLE#\":\n#VOTE_STATISTIC#\n\nhttp://#SERVER_NAME##URL#\nСообщение сгенерировано автоматически.', '<?=$arParams[\"USER_NAME\"];?> принял участие в опросе \"<?=$arParams[\"VOTE_TITLE\"];?>\":\n<?=$arParams[\"VOTE_STATISTIC\"];?>\n\n\nhttp://<?=$arParams[\"SERVER_NAME\"];?><?=$arParams[\"URL\"];?>\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_message_attachment`
--

CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_message_site`
--

CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_message_site`
--

INSERT INTO `b_event_message_site` (`EVENT_MESSAGE_ID`, `SITE_ID`) VALUES
(1, 's1'),
(2, 's1'),
(3, 's1'),
(4, 's1'),
(5, 's1'),
(6, 's1'),
(7, 's1'),
(8, 's1'),
(9, 's1'),
(10, 's1'),
(11, 's1'),
(12, 's1'),
(13, 's1'),
(14, 's1'),
(15, 's1'),
(16, 's1'),
(17, 's1'),
(18, 's1'),
(19, 's1'),
(20, 's1'),
(21, 's1'),
(22, 's1'),
(23, 's1'),
(24, 's1'),
(25, 's1'),
(26, 's1'),
(27, 's1'),
(28, 's1'),
(29, 's1'),
(30, 's1'),
(31, 's1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_event_type`
--

CREATE TABLE `b_event_type` (
  `ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(18) NOT NULL DEFAULT '150',
  `EVENT_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_event_type`
--

INSERT INTO `b_event_type` (`ID`, `LID`, `EVENT_NAME`, `NAME`, `DESCRIPTION`, `SORT`, `EVENT_TYPE`) VALUES
(1, 'ru', 'NEW_USER', 'Зарегистрировался новый пользователь', '\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n', 1, 'email'),
(2, 'ru', 'USER_INFO', 'Информация о пользователе', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 2, 'email'),
(3, 'ru', 'NEW_USER_CONFIRM', 'Подтверждение регистрации нового пользователя', '\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n', 3, 'email'),
(4, 'ru', 'USER_PASS_REQUEST', 'Запрос на смену пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 4, 'email'),
(5, 'ru', 'USER_PASS_CHANGED', 'Подтверждение смены пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 5, 'email'),
(6, 'ru', 'USER_INVITE', 'Приглашение на сайт нового пользователя', '#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n', 6, 'email'),
(7, 'ru', 'FEEDBACK_FORM', 'Отправка сообщения через форму обратной связи', '#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 7, 'email'),
(8, 'ru', 'MAIN_MAIL_CONFIRM_CODE', 'Подтверждение email-адреса отправителя', '\n\n#EMAIL_TO# - Email-адрес для подтверждения\n#MESSAGE_SUBJECT# - Тема сообщения\n#CONFIRM_CODE# - Код подтверждения', 8, 'email'),
(9, 'ru', 'EVENT_LOG_NOTIFICATION', 'Оповещение журнала событий', '#EMAIL# - Email получателя\n#ADDITIONAL_TEXT# - Дополнительный текст действия\n#NAME# - Название оповещения\n#AUDIT_TYPE_ID# - Тип события\n#ITEM_ID# - Объект\n#USER_ID# - Пользователь\n#REMOTE_ADDR# - IP-адрес\n#USER_AGENT# - Браузер\n#REQUEST_URI# - Страница\n#EVENT_COUNT# - Количество записей', 9, 'email'),
(10, 'ru', 'USER_CODE_REQUEST', 'Запрос кода авторизации', '#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#LOGIN# - Логин\n#CHECKWORD# - Код для авторизации\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - Email пользователя\n', 10, 'email'),
(11, 'ru', 'SMS_USER_CONFIRM_NUMBER', 'Подтверждение номера телефона по СМС', '#USER_PHONE# - номер телефона\n#CODE# - код подтверждения\n', 100, 'sms'),
(12, 'ru', 'SMS_USER_RESTORE_PASSWORD', 'Восстановление пароля через СМС', '#USER_PHONE# - номер телефона\n#CODE# - код для восстановления\n', 100, 'sms'),
(13, 'ru', 'SMS_EVENT_LOG_NOTIFICATION', 'Оповещение журнала событий', '#PHONE_NUMBER# - Номер телефона получателя\n#ADDITIONAL_TEXT# - Дополнительный текст действия\n#NAME# - Название оповещения\n#AUDIT_TYPE_ID# - Тип события\n#ITEM_ID# - Объект\n#USER_ID# - Пользователь\n#REMOTE_ADDR# - IP-адрес\n#USER_AGENT# - Браузер\n#REQUEST_URI# - Страница\n#EVENT_COUNT# - Количество записей', 100, 'sms'),
(14, 'en', 'NEW_USER', 'New user was registered', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n', 1, 'email'),
(15, 'en', 'USER_INFO', 'Account Information', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 2, 'email'),
(16, 'en', 'NEW_USER_CONFIRM', 'New user registration confirmation', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n', 3, 'email'),
(17, 'en', 'USER_PASS_REQUEST', 'Password Change Request', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 4, 'email'),
(18, 'en', 'USER_PASS_CHANGED', 'Password Change Confirmation', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 5, 'email'),
(19, 'en', 'USER_INVITE', 'Invitation of a new site user', '#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n', 6, 'email'),
(20, 'en', 'FEEDBACK_FORM', 'Sending a message using a feedback form', '#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address', 7, 'email'),
(21, 'en', 'MAIN_MAIL_CONFIRM_CODE', 'Confirm sender\'s email address', '\n\n#EMAIL_TO# - confirmation email address\n#MESSAGE_SUBJECT# - Message subject\n#CONFIRM_CODE# - Confirmation code', 8, 'email'),
(22, 'en', 'EVENT_LOG_NOTIFICATION', 'Event log notification', '#EMAIL# - Recipient email\n#ADDITIONAL_TEXT# - Action additional text\n#NAME# - Notification name\n#AUDIT_TYPE_ID# - Event type\n#ITEM_ID# - Object\n#USER_ID# - User\n#REMOTE_ADDR# - IP address\n#USER_AGENT# - Browser\n#REQUEST_URI# - Page URL\n#EVENT_COUNT# - Number of events', 9, 'email'),
(23, 'en', 'USER_CODE_REQUEST', 'Request for verification code', '#USER_ID# - user ID\n#STATUS# - Login status\n#LOGIN# - Login\n#CHECKWORD# - Verification code\n#NAME# - First name\n#LAST_NAME# - Last name\n#EMAIL# - User email\n', 10, 'email'),
(24, 'en', 'SMS_USER_CONFIRM_NUMBER', 'Verify phone number using SMS', '#USER_PHONE# - phone number\n#CODE# - confirmation code', 100, 'sms'),
(25, 'en', 'SMS_USER_RESTORE_PASSWORD', 'Recover password using SMS', '#USER_PHONE# - phone number\n#CODE# - recovery confirmation code', 100, 'sms'),
(26, 'en', 'SMS_EVENT_LOG_NOTIFICATION', 'Event log notification', '#PHONE_NUMBER# - Recipient phone number\n#ADDITIONAL_TEXT# - Action additional text\n#NAME# - Notification name\n#AUDIT_TYPE_ID# - Event type\n#ITEM_ID# - Object\n#USER_ID# - User\n#REMOTE_ADDR# - IP address\n#USER_AGENT# - Browser\n#REQUEST_URI# - Page URL\n#EVENT_COUNT# - Number of events', 100, 'sms'),
(27, 'ru', 'NEW_BLOG_MESSAGE', 'Новое сообщение в блоге', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#MESSAGE_DATE# - Дата сообщения\n#MESSAGE_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(28, 'ru', 'NEW_BLOG_COMMENT', 'Новый комментарий в блоге', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(29, 'ru', 'NEW_BLOG_COMMENT2COMMENT', 'Новый комментарий на ваш комментарий в блоге', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(30, 'ru', 'NEW_BLOG_COMMENT_WITHOUT_TITLE', 'Новый комментарий в блоге (без темы)', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(31, 'ru', 'NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE', 'Новый комментарий на ваш комментарий в блоге (без темы)', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(32, 'ru', 'BLOG_YOUR_BLOG_TO_USER', 'Ваш блог был добавлен в друзья', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100, 'email'),
(33, 'ru', 'BLOG_YOU_TO_BLOG', 'Вы были добавлены в друзья блога', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100, 'email'),
(34, 'ru', 'BLOG_BLOG_TO_YOU', 'К вам в друзья был добавлен блог', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100, 'email'),
(35, 'ru', 'BLOG_USER_TO_YOUR_BLOG', 'В ваш блог был добавлен друг', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100, 'email'),
(36, 'ru', 'BLOG_SONET_NEW_POST', 'Добавлено новое сообщение', '#EMAIL_TO# - Email получателя письма\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n', 100, 'email'),
(37, 'ru', 'BLOG_SONET_NEW_COMMENT', 'Добавлен новый комментарий', '#EMAIL_TO# - Email получателя письма\n#COMMENT_ID# - ID комментария\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n', 100, 'email'),
(38, 'ru', 'BLOG_SONET_POST_SHARE', 'Добавлен новый получатель сообщения', '#EMAIL_TO# - Email получателя письма\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n', 100, 'email'),
(39, 'ru', 'BLOG_POST_BROADCAST', 'Добавлено новое сообщение', '\n#MESSAGE_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#MESSAGE_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_TO# - Email получателя письма', 100, 'email'),
(40, 'en', 'NEW_BLOG_MESSAGE', 'New blog message', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#MESSAGE_TEXT# - Message text\n#MESSAGE_DATE# - Message date\n#MESSAGE_PATH# - URL to message\n#AUTHOR# - Message author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100, 'email'),
(41, 'en', 'NEW_BLOG_COMMENT', 'New comment in blog', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TITLE# - Comment title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100, 'email'),
(42, 'en', 'NEW_BLOG_COMMENT2COMMENT', 'New comment for your in blog', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TITLE# - Comment title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100, 'email'),
(43, 'en', 'NEW_BLOG_COMMENT_WITHOUT_TITLE', 'New comment in blog (without subject)', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100, 'email'),
(44, 'en', 'NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE', 'New comment for your in blog (without subject)', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100, 'email'),
(45, 'en', 'BLOG_YOUR_BLOG_TO_USER', 'Your blog has been added to friends', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100, 'email'),
(46, 'en', 'BLOG_YOU_TO_BLOG', 'You have been added to blog friends', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100, 'email'),
(47, 'en', 'BLOG_BLOG_TO_YOU', 'A blog has been added to your friends', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100, 'email'),
(48, 'en', 'BLOG_USER_TO_YOUR_BLOG', 'A friend has been added to your blog', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100, 'email'),
(49, 'en', 'BLOG_SONET_NEW_POST', 'New post added', '#EMAIL_TO# - Recipient email\n#POST_ID# - Post ID\n#URL_ID# - Post URL', 100, 'email'),
(50, 'en', 'BLOG_SONET_NEW_COMMENT', 'Comment added', '#EMAIL_TO# - Recipient email\n#COMMENT_ID# - Comment ID\n#POST_ID# - Post ID\n#URL_ID# - Post URL', 100, 'email'),
(51, 'en', 'BLOG_SONET_POST_SHARE', 'New recipient added', '#EMAIL_TO# - Recipient email\n#POST_ID# - Post ID\n#URL_ID# - Post URL', 100, 'email'),
(52, 'en', 'BLOG_POST_BROADCAST', 'New post added', '\n#MESSAGE_TITLE# - Post subject\n#MESSAGE_TEXT# - Post text \n#MESSAGE_PATH# - Post URL\n#AUTHOR# - Post author\n#EMAIL_TO# - E-mail recipient', 100, 'email'),
(53, 'ru', 'NEW_FORUM_MESSAGE', 'Новое сообщение на форуме', '\n			#FORUM_ID# - ID форума\n			#FORUM_NAME# - Название форума\n			#TOPIC_ID# - ID темы\n			#MESSAGE_ID# - ID сообщения\n			#TOPIC_TITLE# - Тема сообщения\n			#MESSAGE_TEXT# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#AUTHOR# - Автор сообщения\n			#RECIPIENT# - Получатель сообщения\n			#TAPPROVED# - Тема сообщения показывается\n			#MAPPROVED# - Тело сообщения показывается\n			#PATH2FORUM# - Адрес сообщения\n			#FROM_EMAIL# - E-Mail для поля From письма', 100, 'email'),
(54, 'ru', 'NEW_FORUM_PRIV', 'Приватное письмо посетителю форума', '\n			#FROM_NAME# - Автор сообщения\n			#FROM_EMAIL# - E-Mail автора сообщения\n			#TO_NAME# - Имя получателя сообщения\n			#TO_EMAIL# - E-Mail получателя сообщения\n			#SUBJECT# - Тема сообщения\n			#MESSAGE# - Тело сообщения\n			#MESSAGE_DATE# - Дата сообщения', 100, 'email'),
(55, 'ru', 'NEW_FORUM_PRIVATE_MESSAGE', 'Приватное сообщение', '\n			#FROM_NAME# - Имя автора сообщения\n			#FROM_USER_ID# - ID автора сообщения\n			#FROM_EMAIL# - E-Mail автора сообщения\n			#TO_NAME# - Имя получателя сообщения\n			#TO_USER_ID# - ID получателя сообщения\n			#TO_EMAIL# - E-Mail получателя сообщения\n			#SUBJECT# - Тема сообщения\n			#MESSAGE# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#MESSAGE_LINK# - Ссылка на сообщение', 100, 'email'),
(56, 'ru', 'EDIT_FORUM_MESSAGE', 'Изменение сообщения на форуме', '\n			#FORUM_ID# - ID форума\n			#FORUM_NAME# - Название форума\n			#TOPIC_ID# - ID темы\n			#MESSAGE_ID# - ID сообщения\n			#TOPIC_TITLE# - Тема сообщения\n			#MESSAGE_TEXT# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#AUTHOR# - Автор сообщения\n			#RECIPIENT# - Получатель сообщения\n			#TAPPROVED# - Тема сообщения показывается\n			#MAPPROVED# - Тело сообщения показывается\n			#PATH2FORUM# - Адрес сообщения\n			#FROM_EMAIL# - E-Mail для поля From письма', 100, 'email'),
(57, 'en', 'NEW_FORUM_MESSAGE', 'New forum message', '\n			#FORUM_ID# - Forum ID\n			#FORUM_NAME# - Forum name\n			#TOPIC_ID# - Topic ID\n			#MESSAGE_ID# - Message ID\n			#TOPIC_TITLE# - Topic title\n			#MESSAGE_TEXT# - Message text\n			#MESSAGE_DATE# - Message date\n			#AUTHOR# - Message author\n			#RECIPIENT# - E-Mail recipient\n			#TAPPROVED# - Message topic is approved\n			#MAPPROVED# - Message is approved\n			#PATH2FORUM# - Message Url\n			#FROM_EMAIL# - E-Mail for From field of the EMail', 100, 'email'),
(58, 'en', 'NEW_FORUM_PRIV', 'Private message for forum user', '\n			#FROM_NAME# - Name of the sender\n			#FROM_EMAIL# - E-Mail of the sender\n			#TO_NAME# - Name of recipient\n			#TO_EMAIL# - E-Mail of recipient\n			#SUBJECT# - Topic\n			#MESSAGE# - Message\n			#MESSAGE_DATE# - Date', 100, 'email'),
(59, 'en', 'NEW_FORUM_PRIVATE_MESSAGE', 'Private message for forum user', '\n			#FROM_NAME# - Name of the sender\n			#FROM_USER_ID# - ID of the sender\n			#FROM_EMAIL# - E-Mail of the sender\n			#TO_NAME# - Name of recipient\n			#TO_USER_ID# - ID of recipient\n			#TO_EMAIL# - E-Mail of recipient\n			#SUBJECT# - Topic\n			#MESSAGE# - Message\n			#MESSAGE_DATE# - Date\n			#MESSAGE_LINK# - Link to message', 100, 'email'),
(60, 'en', 'EDIT_FORUM_MESSAGE', 'Changing forum message', '\n			#FORUM_ID# - Forum ID\n			#FORUM_NAME# - Forum name\n			#TOPIC_ID# - Topic ID\n			#MESSAGE_ID# - Message ID\n			#TOPIC_TITLE# - Topic title\n			#MESSAGE_TEXT# - Message text\n			#MESSAGE_DATE# - Message date\n			#AUTHOR# - Message author\n			#RECIPIENT# - E-Mail recipient\n			#TAPPROVED# - Message topic is approved\n			#MAPPROVED# - Message is approved\n			#PATH2FORUM# - Message Url\n			#FROM_EMAIL# - E-Mail for From field of the EMail', 100, 'email'),
(61, 'ru', 'FORUM_NEW_MESSAGE_MAIL', 'Новое сообщение на форуме в режиме общения по E-Mail', '#FORUM_NAME# - Название форума\n#AUTHOR# - Автор сообщения\n#FROM_EMAIL# - E-Mail для поля From письма\n#RECIPIENT# - Получатель сообщения\n#TOPIC_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#PATH2FORUM# - Адрес сообщения\n#MESSAGE_DATE# - Дата сообщения\n#FORUM_EMAIL# - Е-Mail адрес для добавления сообщений на форум\n#FORUM_ID# - ID форума\n#TOPIC_ID# - ID темы \n#MESSAGE_ID# - ID сообщения\n#TAPPROVED# - Тема опубликована\n#MAPPROVED# - Сообщение опубликовано\n', 100, 'email'),
(62, 'en', 'FORUM_NEW_MESSAGE_MAIL', 'New message at the forum (e-mail messaging mode)', '#FORUM_NAME# - Forum name\n#AUTHOR# - Message author\n#FROM_EMAIL# - E-Mail in the &amp;From&amp; field\n#RECIPIENT# - Message recipient\n#TOPIC_TITLE# - Message subject\n#MESSAGE_TEXT# - Message text\n#PATH2FORUM# - Message URL\n#MESSAGE_DATE# - Message date\n#FORUM_EMAIL# - E-Mail to add messages to the forum \n#FORUM_ID# - Forum ID\n#TOPIC_ID# - Topic ID \n#MESSAGE_ID# - Message ID\n#TAPPROVED# - Topic approved and published\n#MAPPROVED# - Message approved and published\n', 100, 'email'),
(63, 'ru', 'VIRUS_DETECTED', 'Обнаружен вирус', '#EMAIL# - E-Mail администратора сайта (из настроек главного модуля)', 100, 'email'),
(64, 'en', 'VIRUS_DETECTED', 'Virus detected', '#EMAIL# - Site administrator\'s e-mail address (from the Kernel module settings)', 100, 'email'),
(65, 'ru', 'SUBSCRIBE_CONFIRM', 'Подтверждение подписки', '#ID# - идентификатор подписки\n#EMAIL# - адрес подписки\n#CONFIRM_CODE# - код подтверждения\n#SUBSCR_SECTION# - раздел, где находится страница редактирования подписки (задается в настройках)\n#USER_NAME# - имя подписчика (может отсутствовать)\n#DATE_SUBSCR# - дата добавления/изменения адреса\n', 100, 'email'),
(66, 'en', 'SUBSCRIBE_CONFIRM', 'Confirmation of subscription', '#ID# - subscription ID\n#EMAIL# - subscription email\n#CONFIRM_CODE# - confirmation code\n#SUBSCR_SECTION# - section with subscription edit page (specifies in the settings)\n#USER_NAME# - subscriber\'s name (optional)\n#DATE_SUBSCR# - date of adding/change of address\n', 100, 'email'),
(67, 'ru', 'VOTE_FOR', 'Новый голос', '#ID# - ID результата голосования\n#TIME# - время голосования\n#VOTE_TITLE# - наименование опроса\n#VOTE_DESCRIPTION# - описание опроса\n#VOTE_ID# - ID опроса\n#CHANNEL# - наименование группы опроса\n#CHANNEL_ID# - ID группы опроса\n#VOTER_ID# - ID проголосовавшего посетителя\n#USER_NAME# - ФИО пользователя\n#LOGIN# - логин\n#USER_ID# - ID пользователя\n#STAT_GUEST_ID# - ID посетителя модуля статистики\n#SESSION_ID# - ID сессии модуля статистики\n#IP# - IP адрес\n#VOTE_STATISTIC# - Сводная статистика опроса типа ( - Вопрос - Ответ )\n#URL# - Путь к опросу\n', 100, 'email'),
(68, 'en', 'VOTE_FOR', 'New vote', '#ID# - Vote result ID\n#TIME# - Time of vote\n#VOTE_TITLE# - Poll name\n#VOTE_DESCRIPTION# - Poll description\n#VOTE_ID# - Poll ID\n#CHANNEL# - Poll group name\n#CHANNEL_ID# - Poll group ID\n#VOTER_ID# - Voter\'s user ID\n#USER_NAME# - User full name\n#LOGIN# - login\n#USER_ID# - User ID\n#STAT_GUEST_ID# - Visitor ID in web analytics module\n#SESSION_ID# - Session ID in web analytics module\n#IP# - IP address\n#VOTE_STATISTIC# - Summary statistics of this poll type ( - Question - Answer)\n#URL# - Poll URL', 100, 'email');

-- --------------------------------------------------------

--
-- Структура таблицы `b_favorite`
--

CREATE TABLE `b_favorite` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(18) DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_file`
--

CREATE TABLE `b_file` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_file`
--

INSERT INTO `b_file` (`ID`, `TIMESTAMP_X`, `MODULE_ID`, `HEIGHT`, `WIDTH`, `FILE_SIZE`, `CONTENT_TYPE`, `SUBDIR`, `FILE_NAME`, `ORIGINAL_NAME`, `DESCRIPTION`, `HANDLER_ID`, `EXTERNAL_ID`) VALUES
(1, '2020-11-11 19:40:23', 'iblock', 1080, 1920, 52904, 'image/jpeg', 'iblock/c06', 'c06ac808eaf657fa0e5a159ee80c4720.jpg', 'home_slider1.jpg', '', NULL, '8726f6fbaeb2880810cc13f6b8e8177b'),
(2, '2020-11-11 19:40:23', 'iblock', 1080, 1920, 52904, 'image/jpeg', 'iblock/c06', 'c06ac808eaf657fa0e5a159ee80c4720.jpg', 'home_slider1.jpg', '', NULL, 'da3e8ef3d0fdac5378e6934adc4be46c'),
(3, '2020-11-11 19:19:02', 'iblock', 1080, 1920, 427595, 'image/jpeg', 'iblock/0c6', '0c69c350457b553dd708fd6ded1f62a3.jpg', 'home_slider2.jpg', '', NULL, 'ed131cda187fea591c93c4608302a449'),
(4, '2020-11-11 19:19:02', 'iblock', 1080, 1920, 427595, 'image/jpeg', 'iblock/0c6', '0c69c350457b553dd708fd6ded1f62a3.jpg', 'home_slider2.jpg', '', NULL, '6834d29ce7a35b496da2596d09fc6923'),
(5, '2020-11-11 19:20:08', 'iblock', 1080, 1920, 117212, 'image/jpeg', 'iblock/42c', '42cfdf5af9ec92f0c9d7c16d2ce36aa1.jpg', 'home_slider3.jpg', '', NULL, '8dfa9d75a196b12102824f6c7dd948ae'),
(6, '2020-11-11 19:20:08', 'iblock', 1080, 1920, 117212, 'image/jpeg', 'iblock/42c', '42cfdf5af9ec92f0c9d7c16d2ce36aa1.jpg', 'home_slider3.jpg', '', NULL, 'c3b9a20d478594a24dfa5f7dfaec2097'),
(7, '2020-11-12 13:58:28', 'iblock', 876, 720, 42239, 'image/jpeg', 'iblock/295', '295511c498044dc8cfa2ce802dade8ff.jpg', 'team1.jpg', '', NULL, '7fa320e3716ac90d1f6d908203902205'),
(8, '2020-11-12 13:58:28', 'iblock', 876, 720, 42239, 'image/jpeg', 'iblock/295', '295511c498044dc8cfa2ce802dade8ff.jpg', 'team1.jpg', '', NULL, 'd9e267793b3022cbd6528def9b2fafd6'),
(9, '2020-11-12 13:59:16', 'iblock', 876, 720, 41434, 'image/jpeg', 'iblock/295', '295307a152c34445e2e873b430a8f901.jpg', 'team2.jpg', '', NULL, 'db5332bdb20c2486e435d3df53eb65da'),
(10, '2020-11-12 13:59:16', 'iblock', 876, 720, 41434, 'image/jpeg', 'iblock/295', '295307a152c34445e2e873b430a8f901.jpg', 'team2.jpg', '', NULL, '61b0a847f2024404a2c83b349c4be47b'),
(11, '2020-11-12 14:25:10', 'iblock', 876, 720, 46941, 'image/jpeg', 'iblock/ab9', 'ab9d2dcbcadf2655852462e87fc40d6d.jpg', 'team3.jpg', '', NULL, 'cb3774038516f1076ae3beaab7a518fd'),
(12, '2020-11-12 14:25:10', 'iblock', 876, 720, 46941, 'image/jpeg', 'iblock/ab9', 'ab9d2dcbcadf2655852462e87fc40d6d.jpg', 'team3.jpg', '', NULL, '5fe9d7433f066a3e74a9f7112931863e'),
(13, '2020-12-01 18:24:18', 'iblock', 798, 440, 353317, 'image/jpeg', 'iblock/24c', '24c98e13abc60f3e1f3f876c56acd904.jpg', '1.jpg', '', NULL, '8bc5dd757907d0de19531225bacc49c1'),
(14, '2020-12-01 18:23:47', 'iblock', 679, 630, 66787, 'image/jpeg', 'iblock/caa', 'caa61a60baff2976ca2e832f96943ec3.jpg', '3.jpg', '', NULL, '1edaa8591523f767c8faa4da32546905'),
(15, '2020-12-01 18:24:07', 'iblock', 714, 630, 51672, 'image/jpeg', 'iblock/1c0', '1c04b585bf68f9b0fb21a58a0338a805.jpg', '2.jpg', '', NULL, '58e734172beb127b211c29edcb575537'),
(16, '2020-12-01 18:24:22', 'iblock', 609, 630, 76777, 'image/jpeg', 'iblock/98d', '98de99ebeae48e4ac1641ed0b6e7aba9.jpg', '4.jpg', '', NULL, 'c9486e8366f0b75cb543bcb245772591'),
(17, '2020-12-01 18:24:13', 'iblock', 4119, 3354, 1125857, 'image/jpeg', 'iblock/941', '941a57f4b556a4cb81b551c45c885b43.jpg', '5.jpg', '', NULL, '09a707a613976759d8686620c41e7e38'),
(18, '2020-12-01 18:24:02', 'iblock', 951, 630, 71931, 'image/jpeg', 'iblock/01a', '01a5e0c6f7c3e1a4e5760fee6540c578.jpg', '6.jpg', '', NULL, 'a653a61fcbc7021cea164a22821f6123'),
(19, '2020-11-20 19:50:36', 'iblock', 600, 1195, 151969, 'image/jpeg', 'iblock/70c', '70cbd30daad9646eb6dc69a9f79e0c77.jpg', 'blog1.jpg', '', NULL, 'e4b846b8b3bcd7d4008cba01e39d2581'),
(20, '2020-11-20 19:50:36', 'iblock', 376, 750, 111276, 'image/jpeg', 'iblock/439', '439ba2521bb91de23686ad942a6645b9.jpg', 'blog1.jpg', '', NULL, '94e85ab6b7374976f4981c22c83e78ca'),
(21, '2020-11-20 19:48:05', 'iblock', 1111, 2000, 57220, 'image/png', 'iblock/907', '9075bc194874c7beb11137e128fde679.png', 'blog1_2.png', '', NULL, '580151809de2cdff64214af2aa37ee85'),
(22, '2020-11-20 19:48:05', 'iblock', 377, 678, 87728, 'image/png', 'iblock/246', '246bbb82b116147cdfff32e58a7a5c52.png', 'blog1_2.png', '', NULL, 'f7e5dab3b6443fbb14007d7b0b71dded');

-- --------------------------------------------------------

--
-- Структура таблицы `b_file_duplicate`
--

CREATE TABLE `b_file_duplicate` (
  `DUPLICATE_ID` int(11) NOT NULL,
  `ORIGINAL_ID` int(11) NOT NULL,
  `COUNTER` int(11) NOT NULL DEFAULT '1',
  `ORIGINAL_DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_file_duplicate`
--

INSERT INTO `b_file_duplicate` (`DUPLICATE_ID`, `ORIGINAL_ID`, `COUNTER`, `ORIGINAL_DELETED`) VALUES
(2, 1, 1, 'N'),
(4, 3, 1, 'N'),
(6, 5, 1, 'N'),
(8, 7, 1, 'N'),
(10, 9, 1, 'N'),
(12, 11, 1, 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `b_file_hash`
--

CREATE TABLE `b_file_hash` (
  `FILE_ID` int(11) NOT NULL,
  `FILE_SIZE` bigint(20) NOT NULL,
  `FILE_HASH` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_file_hash`
--

INSERT INTO `b_file_hash` (`FILE_ID`, `FILE_SIZE`, `FILE_HASH`) VALUES
(9, 41434, '54994252dca75e5fc52a4760001f141c'),
(7, 42239, '6b97597fe679b66d5aaff01ce9793e83'),
(11, 46941, '85cf5281f8c5ca8aa41d8ca883a81354'),
(15, 51672, '9c4a3c12b893ace9b99eb8389e00d480'),
(1, 52904, '6c7d75c322c76b3e915e4eb521042da8'),
(21, 57220, '6ba6439b9b123cdfde8e1a7f2111b5e2'),
(14, 66787, 'c131e9f226a7200da5c78347a15efdf0'),
(18, 71931, 'a146e231d0d51012eb881404ff3325d4'),
(16, 76777, '4c1b171f23a565195197013149522103'),
(22, 87728, '970ae65b99647bcbc6b3f66376657774'),
(20, 111276, 'dac433853c094b548b39dd86c1e2673c'),
(5, 117212, '96791755d524436127e8c5d01de4cf1c'),
(19, 151969, 'b77689ec94ff66fb830fb76b4f83a0a9'),
(13, 353317, '2b882487816389012a8c0e02797481bc'),
(3, 427595, '6b1e0005edce54ce83f377425460b6ad'),
(17, 1125857, 'ea83e669220d1ddc0e5b6d03c8506750');

-- --------------------------------------------------------

--
-- Структура таблицы `b_file_preview`
--

CREATE TABLE `b_file_preview` (
  `ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `PREVIEW_ID` int(18) DEFAULT NULL,
  `PREVIEW_IMAGE_ID` int(18) DEFAULT NULL,
  `CREATED_AT` datetime NOT NULL,
  `TOUCHED_AT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_file_search`
--

CREATE TABLE `b_file_search` (
  `ID` int(11) NOT NULL,
  `SESS_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `F_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT '0',
  `F_SIZE` int(11) NOT NULL DEFAULT '0',
  `F_TIME` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_filters`
--

CREATE TABLE `b_filters` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_finder_dest`
--

CREATE TABLE `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form`
--

CREATE TABLE `b_form` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BUTTON` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `C_SORT` int(18) DEFAULT '100',
  `FIRST_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `FORM_TEMPLATE` text COLLATE utf8_unicode_ci,
  `USE_DEFAULT_TEMPLATE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SHOW_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAIL_EVENT_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHOW_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRINT_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_RESULT_TEMPLATE` text COLLATE utf8_unicode_ci,
  `TABLE_RESULT_TEMPLATE` text COLLATE utf8_unicode_ci,
  `USE_RESTRICTIONS` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `RESTRICT_USER` int(5) DEFAULT '0',
  `RESTRICT_TIME` int(10) DEFAULT '0',
  `RESTRICT_STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_2_group`
--

CREATE TABLE `b_form_2_group` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_2_mail_template`
--

CREATE TABLE `b_form_2_mail_template` (
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `MAIL_TEMPLATE_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_2_site`
--

CREATE TABLE `b_form_2_site` (
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_answer`
--

CREATE TABLE `b_form_answer` (
  `ID` int(18) NOT NULL,
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `FIELD_WIDTH` int(18) DEFAULT NULL,
  `FIELD_HEIGHT` int(18) DEFAULT NULL,
  `FIELD_PARAM` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_crm`
--

CREATE TABLE `b_form_crm` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `AUTH_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_crm_field`
--

CREATE TABLE `b_form_crm_field` (
  `ID` int(18) NOT NULL,
  `LINK_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) DEFAULT '0',
  `FIELD_ALT` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `CRM_FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_crm_link`
--

CREATE TABLE `b_form_crm_link` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `CRM_ID` int(18) NOT NULL DEFAULT '0',
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_field`
--

CREATE TABLE `b_form_field` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` text COLLATE utf8_unicode_ci,
  `TITLE_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ADDITIONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `REQUIRED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_RESULTS_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_EXCEL_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FIELD_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `FILTER_TITLE` text COLLATE utf8_unicode_ci,
  `RESULTS_TABLE_TITLE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_field_filter`
--

CREATE TABLE `b_form_field_filter` (
  `ID` int(18) NOT NULL,
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `PARAMETER_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_field_validator`
--

CREATE TABLE `b_form_field_validator` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'y',
  `C_SORT` int(18) DEFAULT '100',
  `VALIDATOR_SID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PARAMS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_menu`
--

CREATE TABLE `b_form_menu` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_result`
--

CREATE TABLE `b_form_result` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `USER_ID` int(18) DEFAULT NULL,
  `USER_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `STAT_GUEST_ID` int(18) DEFAULT NULL,
  `STAT_SESSION_ID` int(18) DEFAULT NULL,
  `SENT_TO_CRM` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_result_answer`
--

CREATE TABLE `b_form_result_answer` (
  `ID` int(18) NOT NULL,
  `RESULT_ID` int(18) NOT NULL DEFAULT '0',
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `ANSWER_ID` int(18) DEFAULT NULL,
  `ANSWER_TEXT` text COLLATE utf8_unicode_ci,
  `ANSWER_TEXT_SEARCH` longtext COLLATE utf8_unicode_ci,
  `ANSWER_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ANSWER_VALUE_SEARCH` longtext COLLATE utf8_unicode_ci,
  `USER_TEXT` longtext COLLATE utf8_unicode_ci,
  `USER_TEXT_SEARCH` longtext COLLATE utf8_unicode_ci,
  `USER_DATE` datetime DEFAULT NULL,
  `USER_FILE_ID` int(18) DEFAULT NULL,
  `USER_FILE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_IS_IMAGE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_HASH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_SUFFIX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_SIZE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_status`
--

CREATE TABLE `b_form_status` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DEFAULT_VALUE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CSS` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'statusgreen',
  `HANDLER_OUT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_IN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAIL_EVENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_status_2_group`
--

CREATE TABLE `b_form_status_2_group` (
  `ID` int(18) NOT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_form_status_2_mail_template`
--

CREATE TABLE `b_form_status_2_mail_template` (
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `MAIL_TEMPLATE_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum`
--

CREATE TABLE `b_forum` (
  `ID` int(10) NOT NULL,
  `FORUM_GROUP_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(10) NOT NULL DEFAULT '150',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_HTML` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_ANCHOR` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_BIU` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_IMG` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_VIDEO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_QUOTE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_FONT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_SMILES` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_UPLOAD` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_ALIGN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_UPLOAD_EXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_MOVE_TOPIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_TOPIC_TITLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_NL2BR` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_SIGNATURE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PATH2FORUM_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ASK_GUEST_EMAIL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INDEXATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DEDUPLICATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MODERATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ORDER_BY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `ORDER_DIRECTION` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DESC',
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ru',
  `TOPICS` int(11) NOT NULL DEFAULT '0',
  `POSTS` int(11) NOT NULL DEFAULT '0',
  `LAST_POSTER_ID` int(11) DEFAULT NULL,
  `LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_POST_DATE` datetime DEFAULT NULL,
  `LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `POSTS_UNAPPROVED` int(11) DEFAULT '0',
  `ABS_LAST_POSTER_ID` int(11) DEFAULT NULL,
  `ABS_LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ABS_LAST_POST_DATE` datetime DEFAULT NULL,
  `ABS_LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'forum',
  `EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'message',
  `EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum2site`
--

CREATE TABLE `b_forum2site` (
  `FORUM_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `PATH2FORUM_MESSAGE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_dictionary`
--

CREATE TABLE `b_forum_dictionary` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_forum_dictionary`
--

INSERT INTO `b_forum_dictionary` (`ID`, `TITLE`, `TYPE`) VALUES
(1, '[ru] Словарь слов', 'W'),
(2, '[ru] Словарь транслита', 'T'),
(3, '[en] Bad words', 'W'),
(4, '[en] Transliteration', 'T');

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_email`
--

CREATE TABLE `b_forum_email` (
  `ID` int(11) NOT NULL,
  `EMAIL_FORUM_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FORUM_ID` int(11) NOT NULL,
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  `MAIL_FILTER_ID` int(11) NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USE_EMAIL` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_GROUP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBJECT_SUF` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_SUBJECT` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TEMPLATES_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOT_MEMBER_POST` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_file`
--

CREATE TABLE `b_forum_file` (
  `ID` int(18) NOT NULL,
  `FORUM_ID` int(18) DEFAULT NULL,
  `TOPIC_ID` int(20) DEFAULT NULL,
  `MESSAGE_ID` int(20) DEFAULT NULL,
  `FILE_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `HITS` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_filter`
--

CREATE TABLE `b_forum_filter` (
  `ID` int(11) NOT NULL,
  `DICTIONARY_ID` int(11) DEFAULT NULL,
  `WORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATTERN` text COLLATE utf8_unicode_ci,
  `REPLACEMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `USE_IT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATTERN_CREATE` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_forum_filter`
--

INSERT INTO `b_forum_filter` (`ID`, `DICTIONARY_ID`, `WORDS`, `PATTERN`, `REPLACEMENT`, `DESCRIPTION`, `USE_IT`, `PATTERN_CREATE`) VALUES
(1, 1, '*пизд*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(2, 1, '*пизж*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ЖжGg]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(3, 1, '*сра%', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([СсCc]+)([РрPpRr]+)([АаAa]+)([[Цц]+([Аа]+|[Оо]+)]+|[[Тт]+([Ьь]+|)[Сс]+[Яя]+]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(4, 1, 'анобляд*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([АаAa]+)([НнNn]+)([ОоOo]+)([БбBb]+)([ЛлLl]+)([Яя]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(5, 1, 'взъеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвVv]+)([ЗзZz3]+)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(6, 1, 'бля', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([БбBb]+)([ЛлLl]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(7, 1, 'долбоеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ДдDd]+)([ОоOo]+)([ЛлLl]+)([БбBb]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(8, 1, 'дуроеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ДдDd]+)([УуUu]+)([РрPpRr]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(9, 1, 'еби', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(10, 1, 'ебисти*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([СсCc]+)([ТтTt]+)([ИиIi]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(11, 1, 'ебическ*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([Чч]+)([ЁёЕеEe]+)([СсCc]+)([КкKk]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(12, 1, 'еблив*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([ИиIi]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(13, 1, 'ебло*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([ОоOo]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(14, 1, 'еблыс*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([Ыы]+)([СсCc]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(15, 1, 'ебля', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(16, 1, 'ебс', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([СсCc]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(17, 1, 'ебукент*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([КкKk]+)([ЁёЕеEe]+)([НнNn]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(18, 1, 'ебурген*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([РрPpRr]+)([Гг]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(19, 1, 'коноебит*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([КкKk]+)([ОоOo]+)([НнNn]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(20, 1, 'мозгоеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([МмMm]+)([ОоOo]+)([ЗзZz3]+)([Гг]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(21, 1, 'мудоеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([МмMm]+)([УуUu]+)([ДдDd]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(22, 1, 'однохуйствен*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ДдDd]+)([НнNn]+)([ОоOo]+)([ХхXx]+)([УуUu]+)([ЙйИиYy]+)([СсCc]+)([ТтTt]+)([ВвVv]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(23, 1, 'охуе*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(24, 1, 'охуи*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([ИиIi]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(25, 1, 'охуя*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([Яя]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(26, 1, 'разъеба*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([ЗзZz3]+)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(27, 1, 'распиздон*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([СсCc]+)([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ДдDd]+)([ОоOo]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(28, 1, 'расхуюж*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([СсCc]+)([ХхXx]+)([УуUu]+)([Юю]+|[[Йй]+[Оо]+]+)([ЖжGg]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(29, 1, 'худоебин*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ДдDd]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(30, 1, 'хуе', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(31, 1, 'хуебрат*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([БбBb]+)([РрPpRr]+)([АаAa]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(32, 1, 'хуеглот*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([Гг]+)([ЛлLl]+)([ОоOo]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(33, 1, 'хуеплёт*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ПпPp]+)([ЛлLl]+)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(34, 1, 'хует*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(35, 1, 'хуила', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ИиIi]+)([ЛлLl]+)([АаAa]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(36, 1, 'хул?', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЛлLl]+).?)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(37, 1, 'хуя', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(38, 1, '^бляд*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([БбBb]+)([ЛлLl]+)([Яя]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(39, 1, '^пидор*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ПпPp]+)([ИиIi]+)([ДдDd]+)([ОоOo]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(40, 1, '^хуев*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(41, 1, '^хуем*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([МмMm]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(42, 1, '^хуй*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЙйИиYy]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(43, 1, '^хуяк*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([КкKk]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(44, 1, '^хуям*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([МмMm]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(45, 1, '^хуяр*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(46, 1, '^хуяч*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([Чч]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(47, 1, '^ъебал*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([ЛлLl]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(48, 1, '^ъебан*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(49, 1, '^ъебар*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(50, 1, '^ъебат*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(51, 1, '^ъебен*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(52, 1, '^ъеби', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(53, 1, '^ъебис*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([СсCc]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(54, 1, '^ъебит*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(55, 1, '^ъёбля*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([БбBb]+)([ЛлLl]+)([Яя]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(56, 1, '^ъёбну*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([БбBb]+)([НнNn]+)([УуUu]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(57, 1, '^ъебу', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([УуUu]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(58, 1, '^ъебуч*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([Чч]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(59, 1, '^ъебыв*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь\"\']+|)([ЁёЕеEe]+)([БбBb]+)([Ыы]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(60, 1, '/(?<=[s.,;:!?-#*|[]()])(?![Вв][ЕеЁё][Бб])(([ВвЗзСс]+|[Ввы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)|)([ЬьЪъ]+|)([ЁёЕеEe]+|[Йй]+[Оо]+|[Yy]+[Oo]+)([BbБб]+))(?=[s.,;:!?-#*|[]()])/is', '', '', '', 'Y', 'PTTRN'),
(61, 3, 'angry', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+n+g+r+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(62, 3, 'ass', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(63, 3, 'asshole', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+s+s+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(64, 3, 'banger', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+n+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(65, 3, 'bastard', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+s+t+a+r+d+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(66, 3, 'batter', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+t+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(67, 3, 'bicho', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+c+h+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(68, 3, 'bisexual', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+s+e+x+u+a+l+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(69, 3, 'bitch', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+t+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(70, 3, 'blumpkin', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+l+u+m+p+k+i+n+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(71, 3, 'booger', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+o+o+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(72, 3, 'bugger*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+g+g+e+r+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(73, 3, 'bukakke', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+k+a+k+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(74, 3, 'bull', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(75, 3, 'bulldyke', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+d+y+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(76, 3, 'bullshit', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+s+h+i+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(77, 3, 'bunny', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+n+n+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(78, 3, 'bunnyfuck', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+n+n+y+f+u+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(79, 3, 'chocha', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+h+o+c+h+a+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(80, 3, 'chode', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+h+o+d+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(81, 3, 'clap', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+l+a+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(82, 3, 'coconuts', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+c+o+n+u+t+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(83, 3, 'cohones', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+h+o+n+e+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(84, 3, 'cojones', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+j+o+n+e+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(85, 3, 'coon', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+n+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(86, 3, 'cootch', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+t+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(87, 3, 'cooter', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(88, 3, 'cornhole', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+r+n+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(89, 3, 'cracka', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+r+a+c+k+a+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(90, 3, 'crap', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+r+a+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(91, 3, 'cum', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+m+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(92, 3, 'cunnilingus', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+n+n+i+l+i+n+g+u+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(93, 3, 'cunt*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+n+t+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(94, 3, 'damn*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+a+m+n+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(95, 3, 'dark*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+a+r+k+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(96, 3, 'dick', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(97, 3, 'dickhead', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+c+k+h+e+a+d+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(98, 3, 'diddle', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+d+d+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(99, 3, 'dildo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+l+d+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(100, 3, 'dilhole', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+l+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(101, 3, 'dingleberry', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+n+g+l+e+b+e+r+r+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(102, 3, 'doodle', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+o+o+d+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(103, 3, 'dork', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+o+r+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(104, 3, 'dumpster', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+u+m+p+s+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(105, 3, 'faggot', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+a+g+g+o+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(106, 3, 'fart', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+a+r+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(107, 3, 'frig', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+r+i+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(108, 3, 'fuck*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+u+c+k+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(109, 3, 'fucker', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+u+c+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(110, 3, 'giz', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+i+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(111, 3, 'goatse', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+o+a+t+s+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(112, 3, 'gook', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+o+o+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(113, 3, 'gringo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+r+i+n+g+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(114, 3, 'hobo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(h+o+b+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(115, 3, 'honky', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(h+o+n+k+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(116, 3, 'jackass', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+a+c+k+a+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(117, 3, 'jackoff', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+a+c+k+o+f+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(118, 3, 'jerkoff', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+e+r+k+o+f+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(119, 3, 'jiggaboo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+i+g+g+a+b+o+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(120, 3, 'jizz', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+i+z+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(121, 3, 'kike', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(k+i+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(122, 3, 'mayo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(m+a+y+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(123, 3, 'moose', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(m+o+o+s+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(124, 3, 'nigg*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(n+i+g+g+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(125, 3, 'paki', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+a+k+i+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(126, 3, 'pecker', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+e+c+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(127, 3, 'piss', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+i+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(128, 3, 'poonanni', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+o+o+n+a+n+n+i+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(129, 3, 'poontang', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+o+o+n+t+a+n+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(130, 3, 'prick', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+r+i+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(131, 3, 'punch', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+u+n+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(132, 3, 'queef', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(q+u+e+e+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(133, 3, 'rogue', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(r+o+g+u+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(134, 3, 'sanchez', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+a+n+c+h+e+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(135, 3, 'schlong', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+c+h+l+o+n+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(136, 3, 'shit', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+h+i+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(137, 3, 'skank', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+k+a+n+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(138, 3, 'spaz', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+p+a+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(139, 3, 'spic', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+p+i+c+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(140, 3, 'teabag*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+e+a+b+a+g+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(141, 3, 'tits', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+i+t+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(142, 3, 'twat', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+w+a+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(143, 3, 'twot', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+w+o+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(144, 3, 'vart', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(v+a+r+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(145, 3, 'wanker', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+a+n+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(146, 3, 'waste', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+a+s+t+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(147, 3, 'wetback', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+e+t+b+a+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(148, 3, 'whore', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+h+o+r+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(149, 3, 'wigger', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+i+g+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(150, 3, 'wog', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+o+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(151, 3, 'wop', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+o+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL');

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_group`
--

CREATE TABLE `b_forum_group` (
  `ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '150',
  `PARENT_ID` int(11) DEFAULT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `DEPTH_LEVEL` int(11) DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_group_lang`
--

CREATE TABLE `b_forum_group_lang` (
  `ID` int(11) NOT NULL,
  `FORUM_GROUP_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_letter`
--

CREATE TABLE `b_forum_letter` (
  `ID` int(11) NOT NULL,
  `DICTIONARY_ID` int(11) DEFAULT '0',
  `LETTER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPLACEMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_forum_letter`
--

INSERT INTO `b_forum_letter` (`ID`, `DICTIONARY_ID`, `LETTER`, `REPLACEMENT`) VALUES
(1, 2, 'а', 'АаAa'),
(2, 2, 'б', 'БбBb'),
(3, 2, 'в', 'ВвVv'),
(4, 2, 'г', 'Гг'),
(5, 2, 'д', 'ДдDd'),
(6, 2, 'е', 'ЁёЕеEe'),
(7, 2, 'ё', 'ЁёЕеEe, [Йй]+[Оо]+'),
(8, 2, 'ж', 'ЖжGg'),
(9, 2, 'з', 'ЗзZz3'),
(10, 2, 'и', 'ИиIi'),
(11, 2, 'й', 'ЙйИиYy'),
(12, 2, 'к', 'КкKk'),
(13, 2, 'л', 'ЛлLl'),
(14, 2, 'м', 'МмMm'),
(15, 2, 'н', 'НнNn'),
(16, 2, 'о', 'ОоOo'),
(17, 2, 'п', 'ПпPp'),
(18, 2, 'р', 'РрPpRr'),
(19, 2, 'с', 'СсCc'),
(20, 2, 'т', 'ТтTt'),
(21, 2, 'у', 'УуUu'),
(22, 2, 'ф', 'ФфFf'),
(23, 2, 'х', 'ХхXx'),
(24, 2, 'ц', 'ЦцCc'),
(25, 2, 'ч', 'Чч'),
(26, 2, 'ш', 'Шш'),
(27, 2, 'щ', 'Щщ'),
(28, 2, 'ь', 'ЪъЬь\"\','),
(29, 2, 'ы', 'Ыы'),
(30, 2, 'ъ', 'ЪъЬь\"\','),
(31, 2, 'э', 'Ээ'),
(32, 2, 'ю', 'Юю, [Йй]+[Оо]+'),
(33, 2, 'я', 'Яя'),
(34, 2, '%', '[Цц]+([Аа]+|[Оо]+), [Тт]+([Ьь]+|)[Сс]+[Яя]+'),
(35, 2, '^', ',ВвЗзСс,ВвЫы,ДдОо,ЗзАа,ИиЗзСс,НнАа,НнЕе,ОоТт,([Пп]*[Ее]+[Рр]+[Ее]+)'),
(36, 2, 'тся', '%'),
(37, 2, 'ться', '%');

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_message`
--

CREATE TABLE `b_forum_message` (
  `ID` bigint(20) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) NOT NULL,
  `USE_SMILES` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NEW_TOPIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPROVED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SOURCE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'WEB',
  `POST_DATE` datetime NOT NULL,
  `POST_MESSAGE` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_HTML` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_FILTER` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_CHECK` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATTACH_IMG` int(11) DEFAULT NULL,
  `PARAM1` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM2` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(10) DEFAULT NULL,
  `AUTHOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_REAL_IP` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GUEST_ID` int(10) DEFAULT NULL,
  `EDITOR_ID` int(10) DEFAULT NULL,
  `EDITOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDITOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_REASON` text COLLATE utf8_unicode_ci,
  `EDIT_DATE` datetime DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` text COLLATE utf8_unicode_ci,
  `MAIL_HEADER` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_perms`
--

CREATE TABLE `b_forum_perms` (
  `ID` int(11) NOT NULL,
  `FORUM_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_pm_folder`
--

CREATE TABLE `b_forum_pm_folder` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_forum_pm_folder`
--

INSERT INTO `b_forum_pm_folder` (`ID`, `TITLE`, `USER_ID`, `SORT`) VALUES
(1, 'SYSTEM_FOLDER_1', 0, 0),
(2, 'SYSTEM_FOLDER_2', 0, 0),
(3, 'SYSTEM_FOLDER_3', 0, 0),
(4, 'SYSTEM_FOLDER_4', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_points`
--

CREATE TABLE `b_forum_points` (
  `ID` int(11) NOT NULL,
  `MIN_POINTS` int(11) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_points2post`
--

CREATE TABLE `b_forum_points2post` (
  `ID` int(11) NOT NULL,
  `MIN_NUM_POSTS` int(11) NOT NULL,
  `POINTS_PER_POST` decimal(18,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_points_lang`
--

CREATE TABLE `b_forum_points_lang` (
  `POINTS_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_private_message`
--

CREATE TABLE `b_forum_private_message` (
  `ID` bigint(10) NOT NULL,
  `AUTHOR_ID` int(11) DEFAULT '0',
  `RECIPIENT_ID` int(11) DEFAULT '0',
  `POST_DATE` datetime DEFAULT NULL,
  `POST_SUBJ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_MESSAGE` text COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `IS_READ` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_IS_READ` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_SMILES` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_rank`
--

CREATE TABLE `b_forum_rank` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MIN_NUM_POSTS` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_rank_lang`
--

CREATE TABLE `b_forum_rank_lang` (
  `ID` int(11) NOT NULL,
  `RANK_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_stat`
--

CREATE TABLE `b_forum_stat` (
  `ID` bigint(20) NOT NULL,
  `USER_ID` int(10) DEFAULT NULL,
  `IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHPSESSID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORUM_ID` smallint(5) NOT NULL DEFAULT '0',
  `TOPIC_ID` int(10) DEFAULT NULL,
  `SHOW_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_subscribe`
--

CREATE TABLE `b_forum_subscribe` (
  `ID` int(10) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` int(10) DEFAULT NULL,
  `START_DATE` datetime NOT NULL,
  `LAST_SEND` int(10) DEFAULT NULL,
  `NEW_TOPIC_ONLY` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ru',
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_topic`
--

CREATE TABLE `b_forum_topic` (
  `ID` bigint(20) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE_SEO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ICON` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `APPROVED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `VIEWS` int(10) NOT NULL DEFAULT '0',
  `USER_START_ID` int(10) DEFAULT NULL,
  `USER_START_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_DATE` datetime NOT NULL,
  `POSTS` int(10) NOT NULL DEFAULT '0',
  `LAST_POSTER_ID` int(10) DEFAULT NULL,
  `LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_POST_DATE` datetime NOT NULL,
  `LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `POSTS_UNAPPROVED` int(11) DEFAULT '0',
  `ABS_LAST_POSTER_ID` int(10) DEFAULT NULL,
  `ABS_LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ABS_LAST_POST_DATE` datetime DEFAULT NULL,
  `ABS_LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` text COLLATE utf8_unicode_ci,
  `SOCNET_GROUP_ID` int(10) DEFAULT NULL,
  `OWNER_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_user`
--

CREATE TABLE `b_forum_user` (
  `ID` bigint(10) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `ALIAS` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AVATAR` int(10) DEFAULT NULL,
  `NUM_POSTS` int(10) DEFAULT '0',
  `INTERESTS` text COLLATE utf8_unicode_ci,
  `LAST_POST` int(10) DEFAULT NULL,
  `ALLOW_POST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_VISIT` datetime NOT NULL,
  `DATE_REG` date NOT NULL,
  `REAL_IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SIGNATURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHOW_NAME` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RANK_ID` int(11) DEFAULT NULL,
  `POINTS` int(11) NOT NULL DEFAULT '0',
  `HIDE_FROM_ONLINE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SUBSC_GROUP_MESSAGE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SUBSC_GET_MY_MESSAGE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_user_forum`
--

CREATE TABLE `b_forum_user_forum` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `FORUM_ID` int(11) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `MAIN_LAST_VISIT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_user_points`
--

CREATE TABLE `b_forum_user_points` (
  `FROM_USER_ID` int(11) NOT NULL,
  `TO_USER_ID` int(11) NOT NULL,
  `POINTS` int(11) NOT NULL DEFAULT '0',
  `DATE_UPDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_forum_user_topic`
--

CREATE TABLE `b_forum_user_topic` (
  `ID` bigint(20) NOT NULL,
  `TOPIC_ID` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) NOT NULL DEFAULT '0',
  `FORUM_ID` int(11) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_geoip_handlers`
--

CREATE TABLE `b_geoip_handlers` (
  `ID` int(11) NOT NULL,
  `SORT` int(10) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_geoip_handlers`
--

INSERT INTO `b_geoip_handlers` (`ID`, `SORT`, `ACTIVE`, `CLASS_NAME`, `CONFIG`) VALUES
(1, 100, 'N', '\\Bitrix\\Main\\Service\\GeoIp\\MaxMind', NULL),
(2, 110, 'Y', '\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_group`
--

CREATE TABLE `b_group` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ANONYMOUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8_unicode_ci,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_group`
--

INSERT INTO `b_group` (`ID`, `TIMESTAMP_X`, `ACTIVE`, `C_SORT`, `ANONYMOUS`, `IS_SYSTEM`, `NAME`, `DESCRIPTION`, `SECURITY_POLICY`, `STRING_ID`) VALUES
(1, NULL, 'Y', 1, 'N', 'Y', 'Администраторы', 'Полный доступ к управлению сайтом.', NULL, NULL),
(2, NULL, 'Y', 2, 'Y', 'Y', 'Все пользователи (в том числе неавторизованные)', 'Все пользователи, включая неавторизованных.', NULL, NULL),
(3, NULL, 'Y', 3, 'N', 'Y', 'Пользователи, имеющие право голосовать за рейтинг', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE'),
(4, NULL, 'Y', 4, 'N', 'Y', 'Пользователи имеющие право голосовать за авторитет', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE_AUTHORITY');

-- --------------------------------------------------------

--
-- Структура таблицы `b_group_collection_task`
--

CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_group_subordinate`
--

CREATE TABLE `b_group_subordinate` (
  `ID` int(18) NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_group_task`
--

CREATE TABLE `b_group_task` (
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_hlblock_entity`
--

CREATE TABLE `b_hlblock_entity` (
  `ID` int(11) UNSIGNED NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_hlblock_entity_lang`
--

CREATE TABLE `b_hlblock_entity_lang` (
  `ID` int(11) UNSIGNED NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_hlblock_entity_rights`
--

CREATE TABLE `b_hlblock_entity_rights` (
  `ID` int(11) UNSIGNED NOT NULL,
  `HL_ID` int(11) UNSIGNED NOT NULL,
  `TASK_ID` int(11) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_hot_keys`
--

CREATE TABLE `b_hot_keys` (
  `ID` int(18) NOT NULL,
  `KEYS_STRING` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_hot_keys`
--

INSERT INTO `b_hot_keys` (`ID`, `KEYS_STRING`, `CODE_ID`, `USER_ID`) VALUES
(1, 'Ctrl+Alt+85', 139, 0),
(2, 'Ctrl+Alt+80', 17, 0),
(3, 'Ctrl+Alt+70', 120, 0),
(4, 'Ctrl+Alt+68', 117, 0),
(5, 'Ctrl+Alt+81', 3, 0),
(6, 'Ctrl+Alt+75', 106, 0),
(7, 'Ctrl+Alt+79', 133, 0),
(8, 'Ctrl+Alt+70', 121, 0),
(9, 'Ctrl+Alt+69', 118, 0),
(10, 'Ctrl+Shift+83', 87, 0),
(11, 'Ctrl+Shift+88', 88, 0),
(12, 'Ctrl+Shift+76', 89, 0),
(13, 'Ctrl+Alt+85', 139, 1),
(14, 'Ctrl+Alt+80', 17, 1),
(15, 'Ctrl+Alt+70', 120, 1),
(16, 'Ctrl+Alt+68', 117, 1),
(17, 'Ctrl+Alt+81', 3, 1),
(18, 'Ctrl+Alt+75', 106, 1),
(19, 'Ctrl+Alt+79', 133, 1),
(20, 'Ctrl+Alt+70', 121, 1),
(21, 'Ctrl+Alt+69', 118, 1),
(22, 'Ctrl+Shift+83', 87, 1),
(23, 'Ctrl+Shift+88', 88, 1),
(24, 'Ctrl+Shift+76', 89, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_hot_keys_code`
--

CREATE TABLE `b_hot_keys_code` (
  `ID` int(18) NOT NULL,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_hot_keys_code`
--

INSERT INTO `b_hot_keys_code` (`ID`, `CLASS_NAME`, `CODE`, `NAME`, `COMMENTS`, `TITLE_OBJ`, `URL`, `IS_CUSTOM`) VALUES
(3, 'CAdminTabControl', 'NextTab();', 'HK_DB_CADMINTC', 'HK_DB_CADMINTC_C', 'tab-container', '', 0),
(5, 'btn_new', 'var d=BX (\'btn_new\'); if (d) location.href = d.href;', 'HK_DB_BUT_ADD', 'HK_DB_BUT_ADD_C', 'btn_new', '', 0),
(6, 'btn_excel', 'var d=BX(\'btn_excel\'); if (d) location.href = d.href;', 'HK_DB_BUT_EXL', 'HK_DB_BUT_EXL_C', 'btn_excel', '', 0),
(7, 'btn_settings', 'var d=BX(\'btn_settings\'); if (d) location.href = d.href;', 'HK_DB_BUT_OPT', 'HK_DB_BUT_OPT_C', 'btn_settings', '', 0),
(8, 'btn_list', 'var d=BX(\'btn_list\'); if (d) location.href = d.href;', 'HK_DB_BUT_LST', 'HK_DB_BUT_LST_C', 'btn_list', '', 0),
(9, 'Edit_Save_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();', 'HK_DB_BUT_SAVE', 'HK_DB_BUT_SAVE_C', 'Edit_Save_Button', '', 0),
(10, 'btn_delete', 'var d=BX(\'btn_delete\'); if (d) location.href = d.href;', 'HK_DB_BUT_DEL', 'HK_DB_BUT_DEL_C', 'btn_delete', '', 0),
(12, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();', 'HK_DB_FLT_FND', 'HK_DB_FLT_FND_C', 'find', '', 0),
(13, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_F', 'HK_DB_FLT_BUT_F_C', 'set_filter', '', 0),
(14, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_CNL', 'HK_DB_FLT_BUT_CNL_C', 'del_filter', '', 0),
(15, 'bx-panel-admin-button-help-icon-id', 'var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;', 'HK_DB_BUT_HLP', 'HK_DB_BUT_HLP_C', 'bx-panel-admin-button-help-icon-id', '', 0),
(17, 'Global', 'BXHotKeys.ShowSettings();', 'HK_DB_SHW_L', 'HK_DB_SHW_L_C', 'bx-panel-hotkeys', '', 0),
(19, 'Edit_Apply_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();', 'HK_DB_BUT_APPL', 'HK_DB_BUT_APPL_C', 'Edit_Apply_Button', '', 0),
(20, 'Edit_Cancel_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();', 'HK_DB_BUT_CANCEL', 'HK_DB_BUT_CANCEL_C', 'Edit_Cancel_Button', '', 0),
(54, 'top_panel_org_fav', '', '-=AUTONAME=-', NULL, 'top_panel_org_fav', NULL, 0),
(55, 'top_panel_module_settings', '', '-=AUTONAME=-', NULL, 'top_panel_module_settings', '', 0),
(56, 'top_panel_interface_settings', '', '-=AUTONAME=-', NULL, 'top_panel_interface_settings', '', 0),
(57, 'top_panel_help', '', '-=AUTONAME=-', NULL, 'top_panel_help', '', 0),
(58, 'top_panel_bizproc_tasks', '', '-=AUTONAME=-', NULL, 'top_panel_bizproc_tasks', '', 0),
(59, 'top_panel_add_fav', '', '-=AUTONAME=-', NULL, 'top_panel_add_fav', NULL, 0),
(60, 'top_panel_create_page', '', '-=AUTONAME=-', NULL, 'top_panel_create_page', '', 0),
(62, 'top_panel_create_folder', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder', '', 0),
(63, 'top_panel_edit_page', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page', '', 0),
(64, 'top_panel_page_prop', '', '-=AUTONAME=-', NULL, 'top_panel_page_prop', '', 0),
(65, 'top_panel_edit_page_html', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_html', '', 0),
(67, 'top_panel_edit_page_php', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_php', '', 0),
(68, 'top_panel_del_page', '', '-=AUTONAME=-', NULL, 'top_panel_del_page', '', 0),
(69, 'top_panel_folder_prop', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop', '', 0),
(70, 'top_panel_access_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_access_folder_new', '', 0),
(71, 'main_top_panel_struct_panel', '', '-=AUTONAME=-', NULL, 'main_top_panel_struct_panel', '', 0),
(72, 'top_panel_cache_page', '', '-=AUTONAME=-', NULL, 'top_panel_cache_page', '', 0),
(73, 'top_panel_cache_comp', '', '-=AUTONAME=-', NULL, 'top_panel_cache_comp', '', 0),
(74, 'top_panel_cache_not', '', '-=AUTONAME=-', NULL, 'top_panel_cache_not', '', 0),
(75, 'top_panel_edit_mode', '', '-=AUTONAME=-', NULL, 'top_panel_edit_mode', '', 0),
(76, 'top_panel_templ_site_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site_css', '', 0),
(77, 'top_panel_templ_templ_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_templ_css', '', 0),
(78, 'top_panel_templ_site', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site', '', 0),
(81, 'top_panel_debug_time', '', '-=AUTONAME=-', NULL, 'top_panel_debug_time', '', 0),
(82, 'top_panel_debug_incl', '', '-=AUTONAME=-', NULL, 'top_panel_debug_incl', '', 0),
(83, 'top_panel_debug_sql', '', '-=AUTONAME=-', NULL, 'top_panel_debug_sql', NULL, 0),
(84, 'top_panel_debug_compr', '', '-=AUTONAME=-', NULL, 'top_panel_debug_compr', '', 0),
(85, 'MTP_SHORT_URI1', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI1', '', 0),
(86, 'MTP_SHORT_URI_LIST', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI_LIST', '', 0),
(87, 'FMST_PANEL_STICKER_ADD', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKER_ADD', '', 0),
(88, 'FMST_PANEL_STICKERS_SHOW', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS_SHOW', '', 0),
(89, 'FMST_PANEL_CUR_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_CUR_STICKER_LIST', '', 0),
(90, 'FMST_PANEL_ALL_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_ALL_STICKER_LIST', '', 0),
(91, 'top_panel_menu', 'var d=BX(\"bx-panel-menu\"); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-menu', '', 0),
(92, 'top_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
(93, 'admin_panel_site', 'var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-view-tab', '', 0),
(94, 'admin_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
(96, 'top_panel_folder_prop_new', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop_new', '', 0),
(97, 'main_top_panel_structure', '', '-=AUTONAME=-', NULL, 'main_top_panel_structure', '', 0),
(98, 'top_panel_clear_cache', '', '-=AUTONAME=-', NULL, 'top_panel_clear_cache', '', 0),
(99, 'top_panel_templ', '', '-=AUTONAME=-', NULL, 'top_panel_templ', '', 0),
(100, 'top_panel_debug', '', '-=AUTONAME=-', NULL, 'top_panel_debug', '', 0),
(101, 'MTP_SHORT_URI', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI', '', 0),
(102, 'FMST_PANEL_STICKERS', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS', '', 0),
(103, 'top_panel_settings', '', '-=AUTONAME=-', NULL, 'top_panel_settings', '', 0),
(104, 'top_panel_fav', '', '-=AUTONAME=-', NULL, 'top_panel_fav', '', 0),
(106, 'Global', 'location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';', 'HK_DB_SHW_HK', '', '', '', 0),
(107, 'top_panel_edit_new', '', '-=AUTONAME=-', NULL, 'top_panel_edit_new', '', 0),
(108, 'FLOW_PANEL_CREATE_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_CREATE_WITH_WF', '', 0),
(109, 'FLOW_PANEL_EDIT_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_EDIT_WITH_WF', '', 0),
(110, 'FLOW_PANEL_HISTORY', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_HISTORY', '', 0),
(111, 'top_panel_create_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_new', '', 0),
(112, 'top_panel_create_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder_new', '', 0),
(116, 'bx-panel-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-toggle', '', 0),
(117, 'bx-panel-small-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-small-toggle', '', 0),
(118, 'bx-panel-expander', 'var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');', '-=AUTONAME=-', NULL, 'bx-panel-expander', '', 0),
(119, 'bx-panel-hider', 'var d=BX(\'bx-panel-hider\'); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-hider', '', 0),
(120, 'search-textbox-input', 'var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}', '-=AUTONAME=-', '', 'search', '', 0),
(121, 'bx-search-input', 'var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }', '-=AUTONAME=-', '', 'bx-search-input', '', 0),
(133, 'bx-panel-logout', 'var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;', '-=AUTONAME=-', '', 'bx-panel-logout', '', 0),
(135, 'CDialog', 'var d=BX(\'cancel\'); if (d) d.click();', 'HK_DB_D_CANCEL', '', 'cancel', '', 0),
(136, 'CDialog', 'var d=BX(\'close\'); if (d) d.click();', 'HK_DB_D_CLOSE', '', 'close', '', 0),
(137, 'CDialog', 'var d=BX(\'savebtn\'); if (d) d.click();', 'HK_DB_D_SAVE', '', 'savebtn', '', 0),
(138, 'CDialog', 'var d=BX(\'btn_popup_save\'); if (d) d.click();', 'HK_DB_D_EDIT_SAVE', '', 'btn_popup_save', '', 0),
(139, 'Global', 'location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;', 'HK_DB_SHW_U', '', '', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock`
--

CREATE TABLE `b_iblock` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `API_CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIST_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT '24',
  `RSS_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT '0',
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock`
--

INSERT INTO `b_iblock` (`ID`, `TIMESTAMP_X`, `IBLOCK_TYPE_ID`, `LID`, `CODE`, `API_CODE`, `NAME`, `ACTIVE`, `SORT`, `LIST_PAGE_URL`, `DETAIL_PAGE_URL`, `SECTION_PAGE_URL`, `CANONICAL_PAGE_URL`, `PICTURE`, `DESCRIPTION`, `DESCRIPTION_TYPE`, `RSS_TTL`, `RSS_ACTIVE`, `RSS_FILE_ACTIVE`, `RSS_FILE_LIMIT`, `RSS_FILE_DAYS`, `RSS_YANDEX_ACTIVE`, `XML_ID`, `TMP_ID`, `INDEX_ELEMENT`, `INDEX_SECTION`, `WORKFLOW`, `BIZPROC`, `SECTION_CHOOSER`, `LIST_MODE`, `RIGHTS_MODE`, `SECTION_PROPERTY`, `PROPERTY_INDEX`, `VERSION`, `LAST_CONV_ELEMENT`, `SOCNET_GROUP_ID`, `EDIT_FILE_BEFORE`, `EDIT_FILE_AFTER`, `SECTIONS_NAME`, `SECTION_NAME`, `ELEMENTS_NAME`, `ELEMENT_NAME`) VALUES
(1, '2020-11-11 19:14:57', 'content', 's1', '', NULL, 'Слайдер', 'Y', 500, '#SITE_DIR#/content/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/content/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/content/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'Y', 'Y', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Категории', 'Категория', 'Слайдеры', 'Слайдер'),
(2, '2020-11-12 13:54:04', 'content', 's1', '', NULL, 'Команда', 'Y', 500, '#SITE_DIR#/content/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/content/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/content/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'Y', 'Y', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Категории', 'Категория', 'Сотрудники', 'Сотрудник'),
(3, '2020-11-12 15:00:57', 'services', 's1', '', NULL, 'Skills', 'Y', 500, '#SITE_DIR#/services/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/services/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'Y', 'N', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', NULL, NULL, 'Умения', 'Умение'),
(4, '2020-11-16 12:50:04', 'services', 's1', '', NULL, 'Направления', 'Y', 500, '#SITE_DIR#/services/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/services/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'Y', 'N', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', NULL, NULL, 'Услуги', 'Услуга'),
(5, '2020-11-15 16:18:20', 'services', 's1', '', NULL, 'Тарифы', 'Y', 500, '#SITE_DIR#/services/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/services/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'Y', 'N', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', NULL, NULL, 'Тарифы', 'Тариф'),
(6, '2020-12-01 18:38:13', 'portfolio', 's1', '', NULL, 'Работы', 'Y', 500, '#SITE_DIR#/portfolio/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/portfolio/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/portfolio/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, '4ad0c79d1b7a13642742cba3fb96940a', 'Y', 'Y', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Категории', 'Категория', 'Работы', 'Работа'),
(7, '2020-11-16 13:05:39', 'content', 's1', '', NULL, 'Статистика', 'Y', 500, '#SITE_DIR#/content/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/content/detail.php?ID=#ELEMENT_ID#', '#SITE_DIR#/content/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'Y', 'Y', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент'),
(8, '2020-11-16 13:23:24', 'content', 's1', '', NULL, 'Отзывы', 'Y', 500, '#SITE_DIR#/content/index.php?ID=#IBLOCK_ID#', '#SITE_DIR#/content/detail.php?ID=#ELEMENT_ID#', NULL, '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, NULL, 'Y', 'N', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', NULL, NULL, 'Элементы', 'Элемент'),
(9, '2020-11-17 12:48:33', 'blog', 's1', 'blog', NULL, 'Блог', 'Y', 500, '#SITE_DIR#/blog/', '#SITE_DIR#/blog/#SECTION_CODE_PATH#/#ELEMENT_CODE#', '#SITE_DIR#/blog/#SECTION_CODE_PATH#/', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', NULL, '86d80c062eb6affa37b65f87d32896d1', 'Y', 'Y', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Категории', 'Категория', 'Статьи', 'Статья');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_cache`
--

CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element`
--

CREATE TABLE `b_iblock_element` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT '0',
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8_unicode_ci,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `WF_STATUS_ID` int(18) DEFAULT '1',
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8_unicode_ci,
  `IN_SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_element`
--

INSERT INTO `b_iblock_element` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `ACTIVE_FROM`, `ACTIVE_TO`, `SORT`, `NAME`, `PREVIEW_PICTURE`, `PREVIEW_TEXT`, `PREVIEW_TEXT_TYPE`, `DETAIL_PICTURE`, `DETAIL_TEXT`, `DETAIL_TEXT_TYPE`, `SEARCHABLE_CONTENT`, `WF_STATUS_ID`, `WF_PARENT_ELEMENT_ID`, `WF_NEW`, `WF_LOCKED_BY`, `WF_DATE_LOCK`, `WF_COMMENTS`, `IN_SECTIONS`, `XML_ID`, `CODE`, `TAGS`, `TMP_ID`, `WF_LAST_HISTORY_ID`, `SHOW_COUNTER`, `SHOW_COUNTER_START`) VALUES
(1, '2020-11-11 22:40:23', 1, '2020-11-11 22:18:00', 1, 1, NULL, 'Y', NULL, NULL, 500, 'Добро пожаловать', 1, '', 'text', 2, 'Digital-агентство<br> We Coders', 'html', 'ДОБРО ПОЖАЛОВАТЬ\r\n\r\nDIGITAL-АГЕНТСТВО\r\nWE CODERS', 1, NULL, NULL, NULL, NULL, NULL, 'N', '1', 'dobro-pozhalovat', '', '0', NULL, NULL, NULL),
(2, '2020-11-11 22:19:02', 1, '2020-11-11 22:19:02', 1, 1, NULL, 'Y', NULL, NULL, 500, 'Работайте с лучшими', 3, '', 'text', 4, 'Судите по результатам', 'html', 'РАБОТАЙТЕ С ЛУЧШИМИ\r\n\r\nСУДИТЕ ПО РЕЗУЛЬТАТАМ', 1, NULL, NULL, NULL, NULL, NULL, 'N', '2', 'rabotayte-s-luchshimi', '', '0', NULL, NULL, NULL),
(3, '2020-11-11 22:20:08', 1, '2020-11-11 22:20:08', 1, 1, NULL, 'Y', NULL, NULL, 500, 'Большой опыт', 5, '', 'text', 6, 'Классный результат', 'html', 'БОЛЬШОЙ ОПЫТ\r\n\r\nКЛАССНЫЙ РЕЗУЛЬТАТ', 1, NULL, NULL, NULL, NULL, NULL, 'N', '3', 'bolshoy-opyt', '', '0', NULL, NULL, NULL),
(4, '2020-11-12 16:58:28', 1, '2020-11-12 16:56:40', 1, 2, NULL, 'Y', NULL, NULL, 500, 'Антон Морозов', 7, 'Креативный директор', 'text', 8, 'Ни один человек за всю историю не добился ничего великого, не породив этого сначала в своем воображении.', 'html', 'АНТОН МОРОЗОВ\r\nКРЕАТИВНЫЙ ДИРЕКТОР\r\nНИ ОДИН ЧЕЛОВЕК ЗА ВСЮ ИСТОРИЮ НЕ ДОБИЛСЯ \r\nНИЧЕГО ВЕЛИКОГО, НЕ ПОРОДИВ ЭТОГО СНАЧАЛА В СВОЕМ ВООБРАЖЕНИИ.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '4', 'anton-morozov', '', '0', NULL, NULL, NULL),
(5, '2020-11-12 16:59:16', 1, '2020-11-12 16:59:16', 1, 2, NULL, 'Y', NULL, NULL, 500, 'Анастасия Любимова', 9, 'Дизайнер', 'text', 10, 'Сосредоточь все силы на достижение желаемого, чтобы у тебя не было времени бояться нежелательного.', 'html', 'АНАСТАСИЯ ЛЮБИМОВА\r\nДИЗАЙНЕР\r\nСОСРЕДОТОЧЬ ВСЕ СИЛЫ НА ДОСТИЖЕНИЕ ЖЕЛАЕМОГО, \r\nЧТОБЫ У ТЕБЯ НЕ БЫЛО ВРЕМЕНИ БОЯТЬСЯ НЕЖЕЛАТЕЛЬНОГО.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '5', 'anastasiya-lyubimova', '', '0', NULL, NULL, NULL),
(6, '2020-11-12 17:25:10', 1, '2020-11-12 17:00:45', 1, 2, NULL, 'Y', NULL, NULL, 500, 'Александр Ленский', 11, 'Web разработчик', 'text', 12, 'Чем дольше вы идете к успеху, тем он становится ближе. Слишком многие бросают дело за шаг до победы. Запомните: этот шаг сделают другие.', 'html', 'АЛЕКСАНДР ЛЕНСКИЙ\r\nWEB РАЗРАБОТЧИК\r\nЧЕМ ДОЛЬШЕ ВЫ ИДЕТЕ К УСПЕХУ, ТЕМ ОН СТАНОВИТСЯ \r\nБЛИЖЕ. СЛИШКОМ МНОГИЕ БРОСАЮТ ДЕЛО ЗА ШАГ ДО ПОБЕДЫ. ЗАПОМНИТЕ: ЭТОТ ШАГ СДЕЛАЮТ ДРУГИЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '6', 'aleksandr-lenskiy', '', '0', NULL, NULL, NULL),
(7, '2020-11-12 18:01:41', 1, '2020-11-12 18:01:41', 1, 3, NULL, 'Y', NULL, NULL, 500, 'Web-дизайн', NULL, '', 'text', NULL, '', 'text', 'WEB-ДИЗАЙН\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '7', '', '', '0', NULL, NULL, NULL),
(8, '2020-11-12 18:05:04', 1, '2020-11-12 18:05:04', 1, 3, NULL, 'Y', NULL, NULL, 500, 'PHP (Bitrix / Laravel / Symfony)', NULL, '', 'text', NULL, '', 'text', 'PHP (BITRIX / LARAVEL / SYMFONY)\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '8', '', '', '0', NULL, NULL, NULL),
(9, '2020-11-12 18:05:57', 1, '2020-11-12 18:05:29', 1, 3, NULL, 'Y', NULL, NULL, 500, 'Node.js', NULL, '', 'text', NULL, '', 'text', 'NODE.JS\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '9', '', '', '0', NULL, NULL, NULL),
(10, '2020-11-12 18:06:24', 1, '2020-11-12 18:06:24', 1, 3, NULL, 'Y', NULL, NULL, 500, 'JavaScript (Angular / React)', NULL, '', 'text', NULL, '', 'text', 'JAVASCRIPT (ANGULAR / REACT)\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '10', '', '', '0', NULL, NULL, NULL),
(11, '2020-11-12 18:07:00', 1, '2020-11-12 18:07:00', 1, 3, NULL, 'Y', NULL, NULL, 500, 'CSS (LESS)', NULL, '', 'text', NULL, '', 'text', 'CSS (LESS)\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '11', '', '', '0', NULL, NULL, NULL),
(12, '2020-11-15 14:25:14', 1, '2020-11-15 14:10:32', 1, 4, NULL, 'Y', NULL, NULL, 500, 'Web-дизайн', NULL, 'Создание индивидуальной концепции, от лаконичных решений до сложных динамических элементов.', 'html', NULL, '', 'text', 'WEB-ДИЗАЙН\r\nСОЗДАНИЕ ИНДИВИДУАЛЬНОЙ КОНЦЕПЦИИ, ОТ \r\nЛАКОНИЧНЫХ РЕШЕНИЙ ДО СЛОЖНЫХ ДИНАМИЧЕСКИХ ЭЛЕМЕНТОВ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '12', 'web-dizayn', '', '0', NULL, NULL, NULL),
(13, '2020-11-15 14:12:37', 1, '2020-11-15 14:11:13', 1, 4, NULL, 'Y', NULL, NULL, 500, 'Frontend', NULL, 'Красивая и отзывчивая <b>frontend</b> часть сайта, которая будет отлично работать на всех разрешениях и устройствах.', 'html', NULL, '', 'text', 'FRONTEND\r\nКРАСИВАЯ И ОТЗЫВЧИВАЯ FRONTEND ЧАСТЬ САЙТА, \r\nКОТОРАЯ БУДЕТ ОТЛИЧНО РАБОТАТЬ НА ВСЕХ РАЗРЕШЕНИЯХ И УСТРОЙСТВАХ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '13', 'frontend', '', '0', NULL, NULL, NULL),
(14, '2020-11-15 14:12:16', 1, '2020-11-15 14:12:16', 1, 4, NULL, 'Y', NULL, NULL, 500, 'Backend', NULL, 'Красивая и отзывчивая <b>frontend</b> часть сайта, которая будет отлично работать на всех разрешениях и устройствах.', 'text', NULL, 'Стабильный и быстрый <b>backend</b> сайта с гибкой админкой и высоким уровнем безопасности.', 'html', 'BACKEND\r\nКРАСИВАЯ И ОТЗЫВЧИВАЯ <B>FRONTEND</B> ЧАСТЬ САЙТА, КОТОРАЯ БУДЕТ ОТЛИЧНО РАБОТАТЬ НА ВСЕХ РАЗРЕШЕНИЯХ И УСТРОЙСТВАХ.\r\nСТАБИЛЬНЫЙ И БЫСТРЫЙ BACKEND САЙТА С ГИБКОЙ \r\nАДМИНКОЙ И ВЫСОКИМ УРОВНЕМ БЕЗОПАСНОСТИ.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '14', 'backend', '', '0', NULL, NULL, NULL),
(15, '2020-11-15 14:13:28', 1, '2020-11-15 14:13:28', 1, 4, NULL, 'Y', NULL, NULL, 500, 'Продвижение', NULL, 'От SEO-оптимизации до контекстной рекламы. Всё для того, чтобы сайт собирал тысячи лидов.', 'html', NULL, '', 'text', 'ПРОДВИЖЕНИЕ\r\nОТ SEO-ОПТИМИЗАЦИИ ДО КОНТЕКСТНОЙ РЕКЛАМЫ. \r\nВСЁ ДЛЯ ТОГО, ЧТОБЫ САЙТ СОБИРАЛ ТЫСЯЧИ ЛИДОВ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '15', 'prodvizhenie', '', '0', NULL, NULL, NULL),
(16, '2020-11-15 14:13:59', 1, '2020-11-15 14:13:59', 1, 4, NULL, 'Y', NULL, NULL, 500, 'Поддержка', NULL, 'Поправим, переделаем и реализуем новые решения на уже готовом сайте, а также предложим идеи по улучшению.', 'html', NULL, '', 'text', 'ПОДДЕРЖКА\r\nПОПРАВИМ, ПЕРЕДЕЛАЕМ И РЕАЛИЗУЕМ НОВЫЕ \r\nРЕШЕНИЯ НА УЖЕ ГОТОВОМ САЙТЕ, А ТАКЖЕ ПРЕДЛОЖИМ ИДЕИ ПО УЛУЧШЕНИЮ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '16', 'podderzhka', '', '0', NULL, NULL, NULL),
(17, '2020-11-15 14:15:07', 1, '2020-11-15 14:15:07', 1, 4, NULL, 'Y', NULL, NULL, 500, 'Контент', NULL, 'Подготовим лучший контент от написания статей до подбора музыкального сопровождения и наполним сайт.', 'html', NULL, '', 'text', 'КОНТЕНТ\r\nПОДГОТОВИМ ЛУЧШИЙ КОНТЕНТ ОТ НАПИСАНИЯ \r\nСТАТЕЙ ДО ПОДБОРА МУЗЫКАЛЬНОГО СОПРОВОЖДЕНИЯ И НАПОЛНИМ САЙТ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '17', 'kontent', '', '0', NULL, NULL, NULL),
(18, '2020-11-15 19:12:14', 1, '2020-11-15 15:51:35', 1, 5, NULL, 'Y', NULL, NULL, 500, 'Лендинг', NULL, 'Одностраничный сайт', 'html', NULL, '', 'text', 'ЛЕНДИНГ\r\nОДНОСТРАНИЧНЫЙ САЙТ\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '18', 'lending', '', '0', NULL, NULL, NULL),
(19, '2020-11-15 19:29:20', 1, '2020-11-15 15:54:08', 1, 5, NULL, 'Y', NULL, NULL, 500, 'Сайт визитка', NULL, '', 'html', NULL, '', 'text', 'САЙТ ВИЗИТКА\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '19', 'sayt-vizitka', '', '0', NULL, NULL, NULL),
(20, '2020-11-15 19:29:11', 1, '2020-11-15 16:05:20', 1, 5, NULL, 'Y', NULL, NULL, 500, 'Интернет магазин', NULL, '', 'html', NULL, '', 'text', 'ИНТЕРНЕТ МАГАЗИН\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '20', 'internet-magazin', '', '0', NULL, NULL, NULL),
(21, '2020-11-15 19:13:03', 1, '2020-11-15 16:07:26', 1, 5, NULL, 'Y', NULL, NULL, 500, 'Корп. сайт', NULL, 'Любой сложности', 'html', NULL, '', 'text', 'КОРП. САЙТ\r\nЛЮБОЙ СЛОЖНОСТИ\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '21', 'korp-sayt', '', '0', NULL, NULL, NULL),
(22, '2020-12-01 21:24:18', 1, '2020-11-15 20:23:23', 1, 6, 2, 'Y', NULL, NULL, 500, 'Green Planet', NULL, 'Дизайн', 'text', 13, '', 'text', 'GREEN PLANET\r\nДИЗАЙН\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '22', 'green-planet', '', '0', NULL, NULL, NULL),
(23, '2020-12-01 21:23:47', 1, '2020-11-15 20:24:57', 1, 6, 2, 'Y', NULL, NULL, 500, 'Dress & Jeans', NULL, 'Разработка интернет-магазина', 'text', 14, '', 'text', 'DRESS & JEANS\r\nРАЗРАБОТКА ИНТЕРНЕТ-МАГАЗИНА\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '23', 'dress-jeans', '', '0', NULL, NULL, NULL),
(24, '2020-12-01 21:24:07', 1, '2020-11-15 20:25:55', 1, 6, 3, 'Y', NULL, NULL, 500, 'Creative developers', NULL, 'Разработка лендинга', 'text', 15, '', 'text', 'CREATIVE DEVELOPERS\r\nРАЗРАБОТКА ЛЕНДИНГА\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '24', 'creative-developers', '', '0', NULL, NULL, NULL),
(25, '2020-12-01 21:24:22', 1, '2020-11-15 20:28:59', 1, 6, 3, 'Y', NULL, NULL, 500, 'Mountain King', NULL, 'Разработка сайта визитки', 'text', 16, '', 'text', 'MOUNTAIN KING\r\nРАЗРАБОТКА САЙТА ВИЗИТКИ\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '25', 'mountain-king', '', '0', NULL, NULL, NULL),
(26, '2020-12-01 21:24:13', 1, '2020-11-15 20:29:45', 1, 6, 5, 'Y', NULL, NULL, 500, 'Beauty SPA', NULL, 'Разработка сайта визитки', 'text', 17, '', 'text', 'BEAUTY SPA\r\nРАЗРАБОТКА САЙТА ВИЗИТКИ\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '26', 'beauty-spa', '', '0', NULL, NULL, NULL),
(27, '2020-12-01 21:24:02', 1, '2020-11-15 20:30:39', 1, 6, 4, 'Y', NULL, NULL, 500, 'Bent Application', NULL, 'Разработка лендинга', 'text', 18, '', 'text', 'BENT APPLICATION\r\nРАЗРАБОТКА ЛЕНДИНГА\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '27', 'bent-application', '', '0', NULL, NULL, NULL),
(28, '2020-11-17 22:32:19', 1, '2020-11-16 16:10:19', 1, 7, NULL, 'Y', NULL, NULL, 500, 'Готовых проектов', NULL, '', 'text', NULL, '', 'text', 'ГОТОВЫХ ПРОЕКТОВ\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '28', 'gotovykh-proektov', '', '0', NULL, NULL, NULL),
(29, '2020-11-16 16:10:42', 1, '2020-11-16 16:10:42', 1, 7, NULL, 'Y', NULL, NULL, 500, 'Чашек кофе выпито', NULL, '', 'text', NULL, '', 'text', 'ЧАШЕК КОФЕ ВЫПИТО\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '29', 'chashek-kofe-vypito', '', '0', NULL, NULL, NULL),
(30, '2020-11-16 16:11:52', 1, '2020-11-16 16:11:01', 1, 7, NULL, 'Y', NULL, NULL, 500, 'Воплотили идей', NULL, '', 'text', NULL, '', 'text', 'ВОПЛОТИЛИ ИДЕЙ\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '30', 'voplotili-super-ydey', '', '0', NULL, NULL, NULL),
(31, '2020-11-16 16:11:43', 1, '2020-11-16 16:11:43', 1, 7, NULL, 'Y', NULL, NULL, 500, 'Счастливых клиентов', NULL, '', 'text', NULL, '', 'text', 'СЧАСТЛИВЫХ КЛИЕНТОВ\r\n\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '31', 'schastlivykh-klientov', '', '0', NULL, NULL, NULL),
(32, '2020-11-16 16:24:25', 1, '2020-11-16 16:24:25', 1, 8, NULL, 'Y', NULL, NULL, 500, 'Сроки не проблема!', NULL, 'Спасут любой проект с самыми горящими сроками! Ребята действительно профессионалы своего дела.', 'html', NULL, '', 'text', 'СРОКИ НЕ ПРОБЛЕМА!\r\nСПАСУТ ЛЮБОЙ ПРОЕКТ С САМЫМИ ГОРЯЩИМИ СРОКАМИ! \r\nРЕБЯТА ДЕЙСТВИТЕЛЬНО ПРОФЕССИОНАЛЫ СВОЕГО ДЕЛА.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '32', 'sroki-ne-problema', '', '0', NULL, NULL, NULL),
(33, '2020-11-16 16:25:05', 1, '2020-11-16 16:25:05', 1, 8, NULL, 'Y', NULL, NULL, 500, 'Это взрыв!', NULL, 'Я рад, что мы получили такой классный продукт на выходе! Думаю, что совместными усилиями мы реализуем ещё не один проект.', 'html', NULL, '', 'text', 'ЭТО ВЗРЫВ!\r\nЯ РАД, ЧТО МЫ ПОЛУЧИЛИ ТАКОЙ КЛАССНЫЙ ПРОДУКТ \r\nНА ВЫХОДЕ! ДУМАЮ, ЧТО СОВМЕСТНЫМИ УСИЛИЯМИ МЫ РЕАЛИЗУЕМ ЕЩЁ НЕ ОДИН ПРОЕКТ.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '33', 'eto-vzryv', '', '0', NULL, NULL, NULL),
(34, '2020-11-16 16:26:35', 1, '2020-11-16 16:26:35', 1, 8, NULL, 'Y', NULL, NULL, 500, 'Большая удача!', NULL, 'Мы нашли WeCoders после десятка неудачных проектов с другими web студиями. И это большая удача.', 'html', NULL, '', 'text', 'БОЛЬШАЯ УДАЧА!\r\nМЫ НАШЛИ WECODERS ПОСЛЕ ДЕСЯТКА НЕУДАЧНЫХ ПРОЕКТОВ \r\nС ДРУГИМИ WEB СТУДИЯМИ. И ЭТО БОЛЬШАЯ УДАЧА.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '34', 'bolshaya-udacha', '', '0', NULL, NULL, NULL),
(35, '2020-11-20 22:50:36', 1, '2020-11-16 17:13:06', 1, 9, 8, 'Y', '2020-11-16 19:38:00', NULL, 500, 'Блог на Bitrix', 19, '1С-Битрикс — система управления содержимым от российской компании 1С-Битрикс. Имеет несколько \"редакций\" – лицензионных версий: Старт, Стандарт, Малый бизнес, Бизнес, которые отличаются включаемыми модулями системы.', 'text', 20, '<p>1С-Битрикс — система управления содержимым от российской компании 1С-Битрикс. Имеет несколько \"редакций\" – лицензионных версий: Старт, Стандарт, Малый бизнес, Бизнес, которые отличаются включаемыми модулями системы.</p>\r\n<p>Поддерживаются следующие СУБД: MySQL. Количество модулей в устанавливаемой системе зависит от редакции продукта.</p>', 'html', 'БЛОГ НА BITRIX\r\n1С-БИТРИКС — СИСТЕМА УПРАВЛЕНИЯ СОДЕРЖИМЫМ ОТ РОССИЙСКОЙ КОМПАНИИ 1С-БИТРИКС. ИМЕЕТ НЕСКОЛЬКО \"РЕДАКЦИЙ\" – ЛИЦЕНЗИОННЫХ ВЕРСИЙ: СТАРТ, СТАНДАРТ, МАЛЫЙ БИЗНЕС, БИЗНЕС, КОТОРЫЕ ОТЛИЧАЮТСЯ ВКЛЮЧАЕМЫМИ МОДУЛЯМИ СИСТЕМЫ.\r\n1С-БИТРИКС — СИСТЕМА УПРАВЛЕНИЯ СОДЕРЖИМЫМ \r\nОТ РОССИЙСКОЙ КОМПАНИИ 1С-БИТРИКС. ИМЕЕТ НЕСКОЛЬКО \"РЕДАКЦИЙ\" – ЛИЦЕНЗИОННЫХ ВЕРСИЙ: СТАРТ, СТАНДАРТ, МАЛЫЙ БИЗНЕС, БИЗНЕС, КОТОРЫЕ ОТЛИЧАЮТСЯ ВКЛЮЧАЕМЫМИ МОДУЛЯМИ СИСТЕМЫ. \r\n\r\nПОДДЕРЖИВАЮТСЯ СЛЕДУЮЩИЕ СУБД: MYSQL. КОЛИЧЕСТВО \r\nМОДУЛЕЙ В УСТАНАВЛИВАЕМОЙ СИСТЕМЕ ЗАВИСИТ ОТ РЕДАКЦИИ ПРОДУКТА.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '35', 'blog-na-bitrix', 'Php, UI/UX, Портфолио, Bitrix', '0', NULL, 5, '2020-11-16 17:53:38'),
(36, '2020-11-20 22:48:05', 1, '2020-11-16 17:16:31', 1, 9, 6, 'Y', '2020-11-16 19:38:00', NULL, 500, 'Дизайн во всем', 21, 'Считается, что дизайн призван не только к художественному конструированию, но должен участвовать в решении более широких проблем функционирования производства, существования людей в предметной среде.', 'text', 22, '<p>Считается, что дизайн призван не только к художественному конструированию, но должен участвовать в решении более широких проблем функционирования производства, существования людей в предметной среде.</p>\r\n<p>Процесс разработки дизайна нельзя назвать однообразной работой. Напротив, дизайнерам-художникам постоянно приходится творить - придумывать и воплощать в своих проектах революционные идеи в самых разных сферах жизни человека.</p>', 'html', 'ДИЗАЙН ВО ВСЕМ\r\nСЧИТАЕТСЯ, ЧТО ДИЗАЙН ПРИЗВАН НЕ ТОЛЬКО К ХУДОЖЕСТВЕННОМУ КОНСТРУИРОВАНИЮ, НО ДОЛЖЕН УЧАСТВОВАТЬ В РЕШЕНИИ БОЛЕЕ ШИРОКИХ ПРОБЛЕМ ФУНКЦИОНИРОВАНИЯ ПРОИЗВОДСТВА, СУЩЕСТВОВАНИЯ ЛЮДЕЙ В ПРЕДМЕТНОЙ СРЕДЕ.\r\nСЧИТАЕТСЯ, ЧТО ДИЗАЙН ПРИЗВАН НЕ ТОЛЬКО \r\nК ХУДОЖЕСТВЕННОМУ КОНСТРУИРОВАНИЮ, НО ДОЛЖЕН УЧАСТВОВАТЬ В РЕШЕНИИ БОЛЕЕ ШИРОКИХ ПРОБЛЕМ ФУНКЦИОНИРОВАНИЯ ПРОИЗВОДСТВА, СУЩЕСТВОВАНИЯ ЛЮДЕЙ В ПРЕДМЕТНОЙ СРЕДЕ. \r\n\r\nПРОЦЕСС РАЗРАБОТКИ ДИЗАЙНА НЕЛЬЗЯ НАЗВАТЬ \r\nОДНООБРАЗНОЙ РАБОТОЙ. НАПРОТИВ, ДИЗАЙНЕРАМ-ХУДОЖНИКАМ ПОСТОЯННО ПРИХОДИТСЯ ТВОРИТЬ - ПРИДУМЫВАТЬ И ВОПЛОЩАТЬ В СВОИХ ПРОЕКТАХ РЕВОЛЮЦИОННЫЕ ИДЕИ В САМЫХ РАЗНЫХ СФЕРАХ ЖИЗНИ ЧЕЛОВЕКА.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '36', 'dizayn-vo-vsem', 'Дизайн, Html5, Css3', '0', NULL, 6, '2020-11-16 17:25:48');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_iprop`
--

CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_element_iprop`
--

INSERT INTO `b_iblock_element_iprop` (`IBLOCK_ID`, `SECTION_ID`, `ELEMENT_ID`, `IPROP_ID`, `VALUE`) VALUES
(9, 8, 35, 1, 'Блог на Bitrix'),
(9, 8, 35, 2, 'Блог на Bitrix'),
(9, 6, 36, 1, 'Дизайн во всем'),
(9, 6, 36, 2, 'Дизайн во всем');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_lock`
--

CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_property`
--

CREATE TABLE `b_iblock_element_property` (
  `ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_element_property`
--

INSERT INTO `b_iblock_element_property` (`ID`, `IBLOCK_PROPERTY_ID`, `IBLOCK_ELEMENT_ID`, `VALUE`, `VALUE_TYPE`, `VALUE_ENUM`, `VALUE_NUM`, `DESCRIPTION`) VALUES
(1, 1, 1, '/about/', 'text', NULL, '0.0000', ''),
(2, 1, 2, '/portfolio/', 'text', NULL, '0.0000', ''),
(3, 1, 3, '/services/', 'text', NULL, '0.0000', ''),
(4, 2, 4, 'https://www.facebook.com/', 'text', NULL, '0.0000', ''),
(5, 3, 4, 'https://twitter.com/', 'text', NULL, '0.0000', ''),
(6, 4, 4, 'https://www.instagram.com/', 'text', NULL, '0.0000', ''),
(7, 2, 5, 'https://www.facebook.com/', 'text', NULL, '0.0000', ''),
(8, 3, 5, 'https://twitter.com/', 'text', NULL, '0.0000', ''),
(9, 4, 5, 'https://www.instagram.com/', 'text', NULL, '0.0000', ''),
(10, 2, 6, 'https://www.facebook.com/', 'text', NULL, '0.0000', ''),
(11, 3, 6, 'https://twitter.com/', 'text', NULL, '0.0000', ''),
(12, 4, 6, 'https://www.instagram.com/', 'text', NULL, '0.0000', ''),
(13, 5, 7, '90%', 'text', NULL, '90.0000', ''),
(15, 5, 8, '80%', 'text', NULL, '80.0000', ''),
(17, 5, 9, '75%', 'text', NULL, '75.0000', ''),
(19, 5, 10, '75%', 'text', NULL, '75.0000', ''),
(21, 5, 11, '80%', 'text', NULL, '80.0000', ''),
(22, 6, 12, 'icon-tools', 'text', NULL, '0.0000', ''),
(23, 6, 13, 'icon-mobile', 'text', NULL, '0.0000', ''),
(24, 6, 14, 'icon-tools-2', 'text', NULL, '0.0000', ''),
(25, 6, 15, 'icon-search', 'text', NULL, '0.0000', ''),
(26, 6, 16, 'icon-toolbox', 'text', NULL, '0.0000', ''),
(27, 6, 17, 'icon-pictures', 'text', NULL, '0.0000', ''),
(28, 7, 18, '10 000', 'text', NULL, '10.0000', ''),
(29, 8, 18, 'до 2х недель', 'text', NULL, '0.0000', ''),
(30, 9, 18, 'Индивидуальный дизайн', 'text', NULL, '0.0000', ''),
(31, 10, 18, 'Домен + хостинг на 1 год', 'text', NULL, '0.0000', ''),
(32, 7, 19, '15 000', 'text', NULL, '15.0000', ''),
(33, 8, 19, 'от 1 до 2 недель', 'text', NULL, '0.0000', ''),
(34, 9, 19, 'Индивидуальный дизайн', 'text', NULL, '0.0000', ''),
(35, 10, 19, 'Домен + хостинг на 1 год', 'text', NULL, '0.0000', ''),
(36, 11, 19, 'Удобная админка', 'text', NULL, '0.0000', ''),
(37, 7, 20, '30 000', 'text', NULL, '30.0000', ''),
(38, 8, 20, 'от 3х недель до 1,5 мес.', 'text', NULL, '0.0000', ''),
(39, 9, 20, 'Индивидуальный дизайн', 'text', NULL, '0.0000', ''),
(40, 10, 20, 'Домен + хостинг на 1 год', 'text', NULL, '0.0000', ''),
(41, 11, 20, 'Удобная админка', 'text', NULL, '0.0000', ''),
(42, 12, 20, 'Интеграции с внешними сервисами', 'text', NULL, '0.0000', ''),
(43, 13, 20, 'Базовая SEO-оптимизация', 'text', NULL, '0.0000', ''),
(44, 7, 21, '50 000', 'text', NULL, '50.0000', ''),
(45, 8, 21, 'до 2 мес.', 'text', NULL, '0.0000', ''),
(46, 9, 21, 'Индивидуальный дизайн', 'text', NULL, '0.0000', ''),
(47, 10, 21, 'Домен + хостинг на 1 год', 'text', NULL, '0.0000', ''),
(48, 11, 21, 'Удобная панель управления', 'text', NULL, '0.0000', ''),
(49, 12, 21, 'Интеграции с внешними сервисами', 'text', NULL, '0.0000', ''),
(50, 14, 18, 'basic-bg', 'text', NULL, '0.0000', ''),
(51, 14, 19, 'standard-bg', 'text', NULL, '0.0000', ''),
(52, 14, 20, 'premium-bg', 'text', NULL, '0.0000', ''),
(53, 14, 21, 'unlimited-bg', 'text', NULL, '0.0000', ''),
(54, 15, 22, 'Travel Travel', 'text', NULL, '0.0000', ''),
(55, 16, 22, '5 дней', 'text', NULL, '5.0000', ''),
(56, 17, 22, 'PHP / HTML5 / CSS3', 'text', NULL, '0.0000', ''),
(57, 18, 22, 'https://www.google.ru/', 'text', NULL, '0.0000', ''),
(58, 19, 22, 'Необходимо было в кратчайшие сроки сделать лендинг для турагенства занимающегося проведением экстремальных экскурсий в горы.', 'text', NULL, '0.0000', ''),
(59, 20, 22, 'При разработке проекта был отрисован индивидуальный дизайн по виденью заказчика с детальной проработкой UI/UX.', 'text', NULL, '0.0000', ''),
(60, 21, 22, 'При программировании были учтены все требования для успешного продвижения в поисковых системах и была настроена система аналитики для того, чтобы можно было замерять все основные показатели сайта.', 'text', NULL, '0.0000', ''),
(61, 15, 23, 'Travel Travel', 'text', NULL, '0.0000', ''),
(62, 16, 23, '5 дней', 'text', NULL, '5.0000', ''),
(63, 17, 23, 'PHP / HTML5 / CSS3', 'text', NULL, '0.0000', ''),
(64, 18, 23, 'https://www.google.ru/', 'text', NULL, '0.0000', ''),
(65, 19, 23, 'Необходимо было в кратчайшие сроки сделать лендинг для турагенства занимающегося проведением экстремальных экскурсий в горы.', 'text', NULL, '0.0000', ''),
(66, 20, 23, 'При разработке проекта был отрисован индивидуальный дизайн по виденью заказчика с детальной проработкой UI/UX.', 'text', NULL, '0.0000', ''),
(67, 21, 23, 'При программировании были учтены все требования для успешного продвижения в поисковых системах и была настроена система аналитики для того, чтобы можно было замерять все основные показатели сайта.', 'text', NULL, '0.0000', ''),
(68, 15, 24, 'Travel Travel', 'text', NULL, '0.0000', ''),
(69, 16, 24, '5 дней', 'text', NULL, '5.0000', ''),
(70, 17, 24, 'PHP / HTML5 / CSS3', 'text', NULL, '0.0000', ''),
(71, 18, 24, 'https://www.google.ru/', 'text', NULL, '0.0000', ''),
(72, 19, 24, 'Необходимо было в кратчайшие сроки сделать лендинг для турагенства занимающегося проведением экстремальных экскурсий в горы.', 'text', NULL, '0.0000', ''),
(73, 20, 24, 'При разработке проекта был отрисован индивидуальный дизайн по виденью заказчика с детальной проработкой UI/UX.', 'text', NULL, '0.0000', ''),
(74, 21, 24, 'При программировании были учтены все требования для успешного продвижения в поисковых системах и была настроена система аналитики для того, чтобы можно было замерять все основные показатели сайта.', 'text', NULL, '0.0000', ''),
(75, 15, 25, 'Travel Travel', 'text', NULL, '0.0000', ''),
(76, 16, 25, '5 дней', 'text', NULL, '5.0000', ''),
(77, 17, 25, 'PHP / HTML5 / CSS3', 'text', NULL, '0.0000', ''),
(78, 18, 25, 'https://www.google.ru/', 'text', NULL, '0.0000', ''),
(79, 19, 25, 'Необходимо было в кратчайшие сроки сделать лендинг для турагенства занимающегося проведением экстремальных экскурсий в горы.', 'text', NULL, '0.0000', ''),
(80, 20, 25, 'При разработке проекта был отрисован индивидуальный дизайн по виденью заказчика с детальной проработкой UI/UX.', 'text', NULL, '0.0000', ''),
(81, 21, 25, 'При программировании были учтены все требования для успешного продвижения в поисковых системах и была настроена система аналитики для того, чтобы можно было замерять все основные показатели сайта.', 'text', NULL, '0.0000', ''),
(82, 15, 26, 'Travel Travel', 'text', NULL, '0.0000', ''),
(83, 16, 26, '5 дней', 'text', NULL, '5.0000', ''),
(84, 17, 26, 'PHP / HTML5 / CSS3', 'text', NULL, '0.0000', ''),
(85, 18, 26, 'https://www.google.ru/', 'text', NULL, '0.0000', ''),
(86, 19, 26, 'Необходимо было в кратчайшие сроки сделать лендинг для турагенства занимающегося проведением экстремальных экскурсий в горы.', 'text', NULL, '0.0000', ''),
(87, 20, 26, 'При разработке проекта был отрисован индивидуальный дизайн по виденью заказчика с детальной проработкой UI/UX.', 'text', NULL, '0.0000', ''),
(88, 21, 26, 'При программировании были учтены все требования для успешного продвижения в поисковых системах и была настроена система аналитики для того, чтобы можно было замерять все основные показатели сайта.', 'text', NULL, '0.0000', ''),
(89, 15, 27, 'Travel Travel', 'text', NULL, '0.0000', ''),
(90, 16, 27, '5 дней', 'text', NULL, '5.0000', ''),
(91, 17, 27, 'PHP / HTML5 / CSS3', 'text', NULL, '0.0000', ''),
(92, 18, 27, 'https://www.google.ru/', 'text', NULL, '0.0000', ''),
(93, 19, 27, 'Необходимо было в кратчайшие сроки сделать лендинг для турагенства занимающегося проведением экстремальных экскурсий в горы.', 'text', NULL, '0.0000', ''),
(94, 20, 27, 'При разработке проекта был отрисован индивидуальный дизайн по виденью заказчика с детальной проработкой UI/UX.', 'text', NULL, '0.0000', ''),
(95, 21, 27, 'При программировании были учтены все требования для успешного продвижения в поисковых системах и была настроена система аналитики для того, чтобы можно было замерять все основные показатели сайта.', 'text', NULL, '0.0000', ''),
(98, 24, 28, 'icon-briefcase', 'text', NULL, '0.0000', ''),
(99, 25, 28, '360', 'text', NULL, '360.0000', ''),
(100, 24, 29, 'icon-wine', 'text', NULL, '0.0000', ''),
(101, 25, 29, '690', 'text', NULL, '690.0000', ''),
(102, 24, 30, 'icon-lightbulb', 'text', NULL, '0.0000', ''),
(103, 25, 30, '420', 'text', NULL, '420.0000', ''),
(104, 24, 31, 'icon-happy', 'text', NULL, '0.0000', ''),
(105, 25, 31, '115', 'text', NULL, '115.0000', ''),
(106, 26, 32, 'Андрей Александров, Best Shop.', 'text', NULL, '0.0000', ''),
(107, 26, 33, 'Виталий Нохрин, NA\'MAN Rec.', 'text', NULL, '0.0000', ''),
(108, 26, 34, 'Ирина Граф, Cars & Cars company', 'text', NULL, '0.0000', ''),
(109, 27, 36, '1', 'text', NULL, '1.0000', ''),
(110, 27, 35, '2', 'text', NULL, '2.0000', ''),
(111, 28, 35, '1', 'text', NULL, '1.0000', ''),
(114, 28, 36, '3', 'text', NULL, '3.0000', ''),
(115, 23, 22, '1', 'text', 1, NULL, NULL),
(116, 23, 22, '3', 'text', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_element_right`
--

CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_fields`
--

CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_fields`
--

INSERT INTO `b_iblock_fields` (`IBLOCK_ID`, `FIELD_ID`, `IS_REQUIRED`, `DEFAULT_VALUE`) VALUES
(1, 'ACTIVE', 'Y', 'Y'),
(1, 'ACTIVE_FROM', 'N', ''),
(1, 'ACTIVE_TO', 'N', ''),
(1, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(1, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";i:1920;s:6:\"HEIGHT\";i:1080;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'DETAIL_TEXT', 'Y', ''),
(1, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(1, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(1, 'LOG_ELEMENT_ADD', 'N', NULL),
(1, 'LOG_ELEMENT_DELETE', 'N', NULL),
(1, 'LOG_ELEMENT_EDIT', 'N', NULL),
(1, 'LOG_SECTION_ADD', 'N', NULL),
(1, 'LOG_SECTION_DELETE', 'N', NULL),
(1, 'LOG_SECTION_EDIT', 'N', NULL),
(1, 'NAME', 'Y', ''),
(1, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"Y\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'PREVIEW_TEXT', 'N', ''),
(1, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(1, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(1, 'SECTION_DESCRIPTION', 'N', ''),
(1, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(1, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'SECTION_DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";i:1920;s:6:\"HEIGHT\";i:1080;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'SECTION_NAME', 'Y', ''),
(1, 'SECTION_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"Y\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(1, 'SECTION_XML_ID', 'N', ''),
(1, 'SORT', 'N', '0'),
(1, 'TAGS', 'N', ''),
(1, 'XML_ID', 'Y', ''),
(1, 'XML_IMPORT_START_TIME', 'N', NULL),
(2, 'ACTIVE', 'Y', 'Y'),
(2, 'ACTIVE_FROM', 'N', ''),
(2, 'ACTIVE_TO', 'N', ''),
(2, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(2, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";i:720;s:6:\"HEIGHT\";i:876;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(2, 'DETAIL_TEXT', 'Y', ''),
(2, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(2, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(2, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(2, 'LOG_ELEMENT_ADD', 'N', NULL),
(2, 'LOG_ELEMENT_DELETE', 'N', NULL),
(2, 'LOG_ELEMENT_EDIT', 'N', NULL),
(2, 'LOG_SECTION_ADD', 'N', NULL),
(2, 'LOG_SECTION_DELETE', 'N', NULL),
(2, 'LOG_SECTION_EDIT', 'N', NULL),
(2, 'NAME', 'Y', ''),
(2, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"Y\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(2, 'PREVIEW_TEXT', 'N', ''),
(2, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(2, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(2, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(2, 'SECTION_DESCRIPTION', 'N', ''),
(2, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(2, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(2, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(2, 'SECTION_NAME', 'Y', ''),
(2, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(2, 'SECTION_XML_ID', 'N', ''),
(2, 'SORT', 'N', '0'),
(2, 'TAGS', 'N', ''),
(2, 'XML_ID', 'Y', ''),
(2, 'XML_IMPORT_START_TIME', 'N', NULL),
(3, 'ACTIVE', 'Y', 'Y'),
(3, 'ACTIVE_FROM', 'N', ''),
(3, 'ACTIVE_TO', 'N', ''),
(3, 'CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(3, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(3, 'DETAIL_TEXT', 'N', ''),
(3, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(3, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(3, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(3, 'LOG_ELEMENT_ADD', 'N', NULL),
(3, 'LOG_ELEMENT_DELETE', 'N', NULL),
(3, 'LOG_ELEMENT_EDIT', 'N', NULL),
(3, 'LOG_SECTION_ADD', 'N', NULL),
(3, 'LOG_SECTION_DELETE', 'N', NULL),
(3, 'LOG_SECTION_EDIT', 'N', NULL),
(3, 'NAME', 'Y', ''),
(3, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(3, 'PREVIEW_TEXT', 'N', ''),
(3, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(3, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(3, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(3, 'SECTION_DESCRIPTION', 'N', ''),
(3, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(3, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(3, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(3, 'SECTION_NAME', 'Y', ''),
(3, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(3, 'SECTION_XML_ID', 'N', ''),
(3, 'SORT', 'N', '0'),
(3, 'TAGS', 'N', ''),
(3, 'XML_ID', 'Y', ''),
(3, 'XML_IMPORT_START_TIME', 'N', NULL),
(4, 'ACTIVE', 'Y', 'Y'),
(4, 'ACTIVE_FROM', 'N', ''),
(4, 'ACTIVE_TO', 'N', ''),
(4, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(4, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(4, 'DETAIL_TEXT', 'N', ''),
(4, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(4, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(4, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(4, 'LOG_ELEMENT_ADD', 'N', NULL),
(4, 'LOG_ELEMENT_DELETE', 'N', NULL),
(4, 'LOG_ELEMENT_EDIT', 'N', NULL),
(4, 'LOG_SECTION_ADD', 'N', NULL),
(4, 'LOG_SECTION_DELETE', 'N', NULL),
(4, 'LOG_SECTION_EDIT', 'N', NULL),
(4, 'NAME', 'Y', ''),
(4, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(4, 'PREVIEW_TEXT', 'N', ''),
(4, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(4, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(4, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(4, 'SECTION_DESCRIPTION', 'N', ''),
(4, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(4, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(4, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(4, 'SECTION_NAME', 'Y', ''),
(4, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(4, 'SECTION_XML_ID', 'N', ''),
(4, 'SORT', 'N', '0'),
(4, 'TAGS', 'N', ''),
(4, 'XML_ID', 'Y', ''),
(4, 'XML_IMPORT_START_TIME', 'N', NULL),
(5, 'ACTIVE', 'Y', 'Y'),
(5, 'ACTIVE_FROM', 'N', ''),
(5, 'ACTIVE_TO', 'N', ''),
(5, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(5, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(5, 'DETAIL_TEXT', 'N', ''),
(5, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(5, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(5, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(5, 'LOG_ELEMENT_ADD', 'N', NULL),
(5, 'LOG_ELEMENT_DELETE', 'N', NULL),
(5, 'LOG_ELEMENT_EDIT', 'N', NULL),
(5, 'LOG_SECTION_ADD', 'N', NULL),
(5, 'LOG_SECTION_DELETE', 'N', NULL),
(5, 'LOG_SECTION_EDIT', 'N', NULL),
(5, 'NAME', 'Y', ''),
(5, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(5, 'PREVIEW_TEXT', 'N', ''),
(5, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(5, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(5, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(5, 'SECTION_DESCRIPTION', 'N', ''),
(5, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(5, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(5, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(5, 'SECTION_NAME', 'Y', ''),
(5, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(5, 'SECTION_XML_ID', 'N', ''),
(5, 'SORT', 'N', '0'),
(5, 'TAGS', 'N', ''),
(5, 'XML_ID', 'Y', ''),
(5, 'XML_IMPORT_START_TIME', 'N', NULL),
(6, 'ACTIVE', 'Y', 'Y'),
(6, 'ACTIVE_FROM', 'N', ''),
(6, 'ACTIVE_TO', 'N', ''),
(6, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(6, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(6, 'DETAIL_TEXT', 'N', ''),
(6, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(6, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(6, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(6, 'LOG_ELEMENT_ADD', 'N', NULL),
(6, 'LOG_ELEMENT_DELETE', 'N', NULL),
(6, 'LOG_ELEMENT_EDIT', 'N', NULL),
(6, 'LOG_SECTION_ADD', 'N', NULL),
(6, 'LOG_SECTION_DELETE', 'N', NULL),
(6, 'LOG_SECTION_EDIT', 'N', NULL),
(6, 'NAME', 'Y', ''),
(6, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(6, 'PREVIEW_TEXT', 'N', ''),
(6, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(6, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(6, 'SECTION_CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(6, 'SECTION_DESCRIPTION', 'N', ''),
(6, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(6, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(6, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(6, 'SECTION_NAME', 'Y', ''),
(6, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(6, 'SECTION_XML_ID', 'N', ''),
(6, 'SORT', 'N', '0'),
(6, 'TAGS', 'N', ''),
(6, 'XML_ID', 'Y', ''),
(6, 'XML_IMPORT_START_TIME', 'N', NULL),
(7, 'ACTIVE', 'Y', 'Y'),
(7, 'ACTIVE_FROM', 'N', ''),
(7, 'ACTIVE_TO', 'N', ''),
(7, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(7, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(7, 'DETAIL_TEXT', 'N', ''),
(7, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(7, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(7, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(7, 'LOG_ELEMENT_ADD', 'N', NULL),
(7, 'LOG_ELEMENT_DELETE', 'N', NULL),
(7, 'LOG_ELEMENT_EDIT', 'N', NULL),
(7, 'LOG_SECTION_ADD', 'N', NULL),
(7, 'LOG_SECTION_DELETE', 'N', NULL),
(7, 'LOG_SECTION_EDIT', 'N', NULL),
(7, 'NAME', 'Y', ''),
(7, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(7, 'PREVIEW_TEXT', 'N', ''),
(7, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(7, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(7, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(7, 'SECTION_DESCRIPTION', 'N', ''),
(7, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(7, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(7, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(7, 'SECTION_NAME', 'Y', ''),
(7, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(7, 'SECTION_XML_ID', 'N', ''),
(7, 'SORT', 'N', '0'),
(7, 'TAGS', 'N', ''),
(7, 'XML_ID', 'Y', ''),
(7, 'XML_IMPORT_START_TIME', 'N', NULL),
(8, 'ACTIVE', 'Y', 'Y'),
(8, 'ACTIVE_FROM', 'N', ''),
(8, 'ACTIVE_TO', 'N', ''),
(8, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(8, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(8, 'DETAIL_TEXT', 'N', ''),
(8, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(8, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(8, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(8, 'LOG_ELEMENT_ADD', 'N', NULL),
(8, 'LOG_ELEMENT_DELETE', 'N', NULL),
(8, 'LOG_ELEMENT_EDIT', 'N', NULL),
(8, 'LOG_SECTION_ADD', 'N', NULL),
(8, 'LOG_SECTION_DELETE', 'N', NULL),
(8, 'LOG_SECTION_EDIT', 'N', NULL),
(8, 'NAME', 'Y', ''),
(8, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(8, 'PREVIEW_TEXT', 'N', ''),
(8, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(8, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(8, 'SECTION_CODE', 'N', 'a:8:{s:6:\"UNIQUE\";s:1:\"N\";s:15:\"TRANSLITERATION\";s:1:\"N\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(8, 'SECTION_DESCRIPTION', 'N', ''),
(8, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(8, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(8, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(8, 'SECTION_NAME', 'Y', ''),
(8, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";s:0:\"\";s:6:\"HEIGHT\";s:0:\"\";s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(8, 'SECTION_XML_ID', 'N', ''),
(8, 'SORT', 'N', '0'),
(8, 'TAGS', 'N', ''),
(8, 'XML_ID', 'Y', ''),
(8, 'XML_IMPORT_START_TIME', 'N', NULL),
(9, 'ACTIVE', 'Y', 'Y'),
(9, 'ACTIVE_FROM', 'N', '=today'),
(9, 'ACTIVE_TO', 'N', ''),
(9, 'CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(9, 'DETAIL_PICTURE', 'Y', 'a:17:{s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";i:750;s:6:\"HEIGHT\";i:377;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(9, 'DETAIL_TEXT', 'Y', ''),
(9, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(9, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(9, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:\"KEEP_IBLOCK_SECTION_ID\";s:1:\"N\";}'),
(9, 'LOG_ELEMENT_ADD', 'N', NULL),
(9, 'LOG_ELEMENT_DELETE', 'N', NULL),
(9, 'LOG_ELEMENT_EDIT', 'N', NULL),
(9, 'LOG_SECTION_ADD', 'N', NULL),
(9, 'LOG_SECTION_DELETE', 'N', NULL),
(9, 'LOG_SECTION_EDIT', 'N', NULL),
(9, 'NAME', 'Y', ''),
(9, 'PREVIEW_PICTURE', 'Y', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"Y\";s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";i:750;s:6:\"HEIGHT\";i:377;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(9, 'PREVIEW_TEXT', 'N', ''),
(9, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(9, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(9, 'SECTION_CODE', 'Y', 'a:8:{s:6:\"UNIQUE\";s:1:\"Y\";s:15:\"TRANSLITERATION\";s:1:\"Y\";s:9:\"TRANS_LEN\";i:100;s:10:\"TRANS_CASE\";s:1:\"L\";s:11:\"TRANS_SPACE\";s:1:\"-\";s:11:\"TRANS_OTHER\";s:1:\"-\";s:9:\"TRANS_EAT\";s:1:\"Y\";s:10:\"USE_GOOGLE\";s:1:\"N\";}'),
(9, 'SECTION_DESCRIPTION', 'N', ''),
(9, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(9, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(9, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:\"SCALE\";s:1:\"N\";s:5:\"WIDTH\";i:750;s:6:\"HEIGHT\";i:377;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(9, 'SECTION_NAME', 'Y', ''),
(9, 'SECTION_PICTURE', 'N', 'a:20:{s:11:\"FROM_DETAIL\";s:1:\"N\";s:5:\"SCALE\";s:1:\"Y\";s:5:\"WIDTH\";i:750;s:6:\"HEIGHT\";i:377;s:13:\"IGNORE_ERRORS\";s:1:\"N\";s:6:\"METHOD\";s:8:\"resample\";s:11:\"COMPRESSION\";i:95;s:18:\"DELETE_WITH_DETAIL\";s:1:\"N\";s:18:\"UPDATE_WITH_DETAIL\";s:1:\"N\";s:18:\"USE_WATERMARK_TEXT\";s:1:\"N\";s:14:\"WATERMARK_TEXT\";s:0:\"\";s:19:\"WATERMARK_TEXT_FONT\";s:0:\"\";s:20:\"WATERMARK_TEXT_COLOR\";s:0:\"\";s:19:\"WATERMARK_TEXT_SIZE\";s:0:\"\";s:23:\"WATERMARK_TEXT_POSITION\";s:2:\"tl\";s:18:\"USE_WATERMARK_FILE\";s:1:\"N\";s:14:\"WATERMARK_FILE\";s:0:\"\";s:20:\"WATERMARK_FILE_ALPHA\";s:0:\"\";s:23:\"WATERMARK_FILE_POSITION\";s:2:\"tl\";s:20:\"WATERMARK_FILE_ORDER\";N;}'),
(9, 'SECTION_XML_ID', 'N', ''),
(9, 'SORT', 'N', '0'),
(9, 'TAGS', 'Y', ''),
(9, 'XML_ID', 'Y', ''),
(9, 'XML_IMPORT_START_TIME', 'N', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_group`
--

CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_group`
--

INSERT INTO `b_iblock_group` (`IBLOCK_ID`, `GROUP_ID`, `PERMISSION`) VALUES
(1, 1, 'X'),
(1, 2, 'R'),
(2, 1, 'X'),
(2, 2, 'R'),
(3, 1, 'X'),
(3, 2, 'R'),
(4, 1, 'X'),
(4, 2, 'R'),
(5, 1, 'X'),
(5, 2, 'R'),
(6, 1, 'X'),
(6, 2, 'R'),
(7, 1, 'X'),
(8, 1, 'X'),
(9, 1, 'X'),
(9, 2, 'R');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_iblock_iprop`
--

CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_iproperty`
--

CREATE TABLE `b_iblock_iproperty` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_iproperty`
--

INSERT INTO `b_iblock_iproperty` (`ID`, `IBLOCK_ID`, `CODE`, `ENTITY_TYPE`, `ENTITY_ID`, `TEMPLATE`) VALUES
(1, 9, 'SECTION_PAGE_TITLE', 'B', 9, '{=this.Name}'),
(2, 9, 'SECTION_META_TITLE', 'B', 9, '{=this.Name}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_messages`
--

CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_messages`
--

INSERT INTO `b_iblock_messages` (`IBLOCK_ID`, `MESSAGE_ID`, `MESSAGE_TEXT`) VALUES
(1, 'ELEMENT_ADD', 'Добавить слайдер'),
(1, 'ELEMENT_DELETE', 'Удалить слайдер'),
(1, 'ELEMENT_EDIT', 'Изменить слайдер'),
(1, 'ELEMENT_NAME', 'Слайдер'),
(1, 'ELEMENTS_NAME', 'Слайдеры'),
(1, 'SECTION_ADD', 'Добавить категорию'),
(1, 'SECTION_DELETE', 'Удалить категорию'),
(1, 'SECTION_EDIT', 'Изменить категорию'),
(1, 'SECTION_NAME', 'Категория'),
(1, 'SECTIONS_NAME', 'Категории'),
(2, 'ELEMENT_ADD', 'Добавить сотрудника'),
(2, 'ELEMENT_DELETE', 'Удалить сотрудника'),
(2, 'ELEMENT_EDIT', 'Изменить сотрудника'),
(2, 'ELEMENT_NAME', 'Сотрудник'),
(2, 'ELEMENTS_NAME', 'Сотрудники'),
(2, 'SECTION_ADD', 'Добавить категорию'),
(2, 'SECTION_DELETE', 'Удалить категорию'),
(2, 'SECTION_EDIT', 'Изменить категорию'),
(2, 'SECTION_NAME', 'Категория'),
(2, 'SECTIONS_NAME', 'Категории'),
(3, 'ELEMENT_ADD', 'Добавить умение'),
(3, 'ELEMENT_DELETE', 'Удалить умение'),
(3, 'ELEMENT_EDIT', 'Изменить умение'),
(3, 'ELEMENT_NAME', 'Умение'),
(3, 'ELEMENTS_NAME', 'Умения'),
(4, 'ELEMENT_ADD', 'Добавить услугу'),
(4, 'ELEMENT_DELETE', 'Удалить услугу'),
(4, 'ELEMENT_EDIT', 'Изменить услугу'),
(4, 'ELEMENT_NAME', 'Услуга'),
(4, 'ELEMENTS_NAME', 'Услуги'),
(5, 'ELEMENT_ADD', 'Добавить тариф'),
(5, 'ELEMENT_DELETE', 'Удалить тариф'),
(5, 'ELEMENT_EDIT', 'Изменить тариф'),
(5, 'ELEMENT_NAME', 'Тариф'),
(5, 'ELEMENTS_NAME', 'Тарифы'),
(6, 'ELEMENT_ADD', 'Добавить работу'),
(6, 'ELEMENT_DELETE', 'Удалить работу'),
(6, 'ELEMENT_EDIT', 'Изменить работу'),
(6, 'ELEMENT_NAME', 'Работа'),
(6, 'ELEMENTS_NAME', 'Работы'),
(6, 'SECTION_ADD', 'Добавить категорию'),
(6, 'SECTION_DELETE', 'Удалить категорию'),
(6, 'SECTION_EDIT', 'Изменить категорию'),
(6, 'SECTION_NAME', 'Категория'),
(6, 'SECTIONS_NAME', 'Категории'),
(7, 'ELEMENT_ADD', 'Добавить элемент'),
(7, 'ELEMENT_DELETE', 'Удалить элемент'),
(7, 'ELEMENT_EDIT', 'Изменить элемент'),
(7, 'ELEMENT_NAME', 'Элемент'),
(7, 'ELEMENTS_NAME', 'Элементы'),
(7, 'SECTION_ADD', 'Добавить раздел'),
(7, 'SECTION_DELETE', 'Удалить раздел'),
(7, 'SECTION_EDIT', 'Изменить раздел'),
(7, 'SECTION_NAME', 'Раздел'),
(7, 'SECTIONS_NAME', 'Разделы'),
(8, 'ELEMENT_ADD', 'Добавить элемент'),
(8, 'ELEMENT_DELETE', 'Удалить элемент'),
(8, 'ELEMENT_EDIT', 'Изменить элемент'),
(8, 'ELEMENT_NAME', 'Элемент'),
(8, 'ELEMENTS_NAME', 'Элементы'),
(9, 'ELEMENT_ADD', 'Добавить статью'),
(9, 'ELEMENT_DELETE', 'Удалить статью'),
(9, 'ELEMENT_EDIT', 'Изменить статью'),
(9, 'ELEMENT_NAME', 'Статья'),
(9, 'ELEMENTS_NAME', 'Статьи'),
(9, 'SECTION_ADD', 'Добавить категорию'),
(9, 'SECTION_DELETE', 'Удалить категорию'),
(9, 'SECTION_EDIT', 'Изменить категорию'),
(9, 'SECTION_NAME', 'Категория'),
(9, 'SECTIONS_NAME', 'Категории');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_offers_tmp`
--

CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int(11) UNSIGNED NOT NULL,
  `PRODUCT_IBLOCK_ID` int(11) UNSIGNED NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) UNSIGNED NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_property`
--

CREATE TABLE `b_iblock_property` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci,
  `PROPERTY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT '1',
  `COL_COUNT` int(11) NOT NULL DEFAULT '30',
  `LIST_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `USER_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_property`
--

INSERT INTO `b_iblock_property` (`ID`, `TIMESTAMP_X`, `IBLOCK_ID`, `NAME`, `ACTIVE`, `SORT`, `CODE`, `DEFAULT_VALUE`, `PROPERTY_TYPE`, `ROW_COUNT`, `COL_COUNT`, `LIST_TYPE`, `MULTIPLE`, `XML_ID`, `FILE_TYPE`, `MULTIPLE_CNT`, `TMP_ID`, `LINK_IBLOCK_ID`, `WITH_DESCRIPTION`, `SEARCHABLE`, `FILTRABLE`, `IS_REQUIRED`, `VERSION`, `USER_TYPE`, `USER_TYPE_SETTINGS`, `HINT`) VALUES
(1, '2020-11-12 08:59:08', 1, 'Ссылка', 'Y', 500, 'REF', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(2, '2020-11-12 14:11:44', 2, 'Facebook', 'Y', 500, 'FACEBOOK', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(3, '2020-11-12 14:11:44', 2, 'Twitter', 'Y', 500, 'TWITTER', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(4, '2020-11-12 14:11:44', 2, 'Instagram', 'Y', 500, 'INSTAGRAM', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(5, '2020-11-12 15:00:57', 3, 'Проценты', 'Y', 500, 'PERCENT', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(6, '2020-11-15 11:09:17', 4, 'Иконка', 'Y', 500, 'ICON', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(7, '2020-11-15 13:16:14', 5, 'Цена', 'Y', 500, 'PRICE', '', 'N', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(8, '2020-11-15 13:16:14', 5, 'Срок', 'Y', 500, 'TIME', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(9, '2020-11-15 13:16:14', 5, 'Дизайн', 'Y', 500, 'DESIGN', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(10, '2020-11-15 13:16:14', 5, 'Размещение', 'Y', 500, 'LOCATION', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(11, '2020-11-15 13:16:14', 5, 'Админка', 'Y', 500, 'ADMIN', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(12, '2020-11-15 13:16:14', 5, 'Интеграция', 'Y', 500, 'INTEGRATION', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(13, '2020-11-15 13:16:14', 5, 'SEO', 'Y', 500, 'SEO', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(14, '2020-11-15 16:11:47', 5, 'Фон', 'Y', 500, 'BACKGROUND', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(15, '2020-11-15 17:16:46', 6, 'Заказчик', 'Y', 500, 'CUSTOMER', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(16, '2020-11-15 17:16:46', 6, 'Сделано за', 'Y', 500, 'TIME', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(17, '2020-11-15 17:16:46', 6, 'Технологии', 'Y', 500, 'TECHNOLOGY', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(18, '2020-11-15 17:16:46', 6, 'Сайт', 'Y', 500, 'SITE', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(19, '2020-11-15 17:16:46', 6, 'Проект', 'Y', 500, 'PROJECT', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(20, '2020-11-15 17:16:46', 6, 'Дизайн', 'Y', 500, 'DESIGN', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(21, '2020-11-15 17:16:46', 6, 'SEO', 'Y', 500, 'SEO', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(23, '2020-11-15 20:24:18', 6, 'Навигация', 'Y', 500, 'NAVIGATION', '', 'L', 1, 30, 'L', 'Y', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(24, '2020-11-16 13:05:39', 7, 'Иконка', 'Y', 500, 'ICON', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(25, '2020-11-16 13:09:01', 7, 'Количество', 'Y', 500, 'SUM', '', 'N', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(26, '2020-11-16 13:33:54', 8, 'Заказчик', 'Y', 500, 'ORDER', '', 'S', 1, 30, 'L', 'N', NULL, '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(27, '2020-11-17 12:48:33', 9, 'ID поста блога для комментариев', 'Y', 500, 'BLOG_POST_ID', '', 'N', 1, 30, 'L', 'N', 'BLOG_POST_ID', '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, ''),
(28, '2020-11-17 12:48:33', 9, 'Количество комментариев', 'Y', 500, 'BLOG_COMMENTS_CNT', '', 'N', 1, 30, 'L', 'N', 'BLOG_COMMENTS_CNT', '', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_property_enum`
--

CREATE TABLE `b_iblock_property_enum` (
  `ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_property_enum`
--

INSERT INTO `b_iblock_property_enum` (`ID`, `PROPERTY_ID`, `VALUE`, `DEF`, `SORT`, `XML_ID`, `TMP_ID`) VALUES
(1, 23, 'landing', 'N', 500, 'landing', NULL),
(2, 23, 'internet_shop', 'N', 500, 'internet_shop', NULL),
(3, 23, 'promo', 'N', 500, 'promo', NULL),
(4, 23, 'corporative_site', 'N', 500, 'corporative_site', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_property_feature`
--

CREATE TABLE `b_iblock_property_feature` (
  `ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FEATURE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `IS_ENABLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_property_feature`
--

INSERT INTO `b_iblock_property_feature` (`ID`, `PROPERTY_ID`, `MODULE_ID`, `FEATURE_ID`, `IS_ENABLED`) VALUES
(1, 23, 'iblock', 'LIST_PAGE_SHOW', 'N'),
(2, 23, 'iblock', 'DETAIL_PAGE_SHOW', 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_right`
--

CREATE TABLE `b_iblock_right` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_rss`
--

CREATE TABLE `b_iblock_rss` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section`
--

CREATE TABLE `b_iblock_section` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_section`
--

INSERT INTO `b_iblock_section` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `GLOBAL_ACTIVE`, `SORT`, `NAME`, `PICTURE`, `LEFT_MARGIN`, `RIGHT_MARGIN`, `DEPTH_LEVEL`, `DESCRIPTION`, `DESCRIPTION_TYPE`, `SEARCHABLE_CONTENT`, `CODE`, `XML_ID`, `TMP_ID`, `DETAIL_PICTURE`, `SOCNET_GROUP_ID`) VALUES
(2, '2020-12-01 18:35:22', 1, '2020-11-15 20:18:46', 1, 6, NULL, 'Y', 'Y', 500, 'Лендинги', NULL, 7, 8, 1, '.landing', 'html', 'ЛЕНДИНГИ\r\n.LANDING', 'landing', NULL, NULL, NULL, NULL),
(3, '2020-12-01 18:35:37', 1, '2020-11-15 20:19:04', 1, 6, NULL, 'Y', 'Y', 500, 'Интренет магазины', NULL, 3, 4, 1, '.internet_shop', 'html', 'ИНТРЕНЕТ МАГАЗИНЫ\r\n.INTERNET_SHOP', 'internet_shop', NULL, NULL, NULL, NULL),
(4, '2020-12-01 18:35:49', 1, '2020-11-15 20:19:21', 1, 6, NULL, 'Y', 'Y', 500, 'Промо сайты', NULL, 9, 10, 1, '.promo', 'html', 'ПРОМО САЙТЫ\r\n.PROMO', 'promo', NULL, NULL, NULL, NULL),
(5, '2020-12-01 18:35:59', 1, '2020-11-15 20:19:44', 1, 6, NULL, 'Y', 'Y', 500, 'Корпоративные порталы', NULL, 5, 6, 1, '.corporative_site', 'html', 'КОРПОРАТИВНЫЕ ПОРТАЛЫ\r\n.CORPORATIVE_SITE', 'corporative_site', NULL, NULL, NULL, NULL),
(6, '2020-11-16 14:08:52', 1, '2020-11-16 17:08:52', 1, 9, NULL, 'Y', 'Y', 500, 'Web-Дизайн', NULL, 1, 2, 1, '', 'text', 'WEB-ДИЗАЙН\r\n', 'web-dizayn', NULL, NULL, NULL, NULL),
(7, '2020-11-16 14:09:03', 1, '2020-11-16 17:09:03', 1, 9, NULL, 'Y', 'Y', 500, 'События', NULL, 7, 8, 1, '', 'text', 'СОБЫТИЯ\r\n', 'sobytiya', NULL, NULL, NULL, NULL),
(8, '2020-11-16 14:09:21', 1, '2020-11-16 17:09:21', 1, 9, NULL, 'Y', 'Y', 500, 'Разработка', NULL, 5, 6, 1, '', 'text', 'РАЗРАБОТКА\r\n', 'razrabotka', NULL, NULL, NULL, NULL),
(9, '2020-11-16 14:09:36', 1, '2020-11-16 17:09:36', 1, 9, NULL, 'Y', 'Y', 500, 'Разное', NULL, 3, 4, 1, '', 'text', 'РАЗНОЕ\r\n', 'raznoe', NULL, NULL, NULL, NULL),
(10, '2020-12-01 18:38:13', 1, '2020-12-01 21:22:12', 1, 6, NULL, 'Y', 'Y', 500, 'Все', NULL, 1, 2, 1, 'all', 'text', 'ВСЕ\r\nALL', 'vse', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_element`
--

CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_section_element`
--

INSERT INTO `b_iblock_section_element` (`IBLOCK_SECTION_ID`, `IBLOCK_ELEMENT_ID`, `ADDITIONAL_PROPERTY_ID`) VALUES
(2, 22, NULL),
(2, 23, NULL),
(3, 24, NULL),
(3, 25, NULL),
(4, 22, NULL),
(4, 27, NULL),
(5, 24, NULL),
(5, 26, NULL),
(6, 36, NULL),
(8, 35, NULL),
(10, 22, NULL),
(10, 23, NULL),
(10, 24, NULL),
(10, 25, NULL),
(10, 26, NULL),
(10, 27, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_iprop`
--

CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_section_iprop`
--

INSERT INTO `b_iblock_section_iprop` (`IBLOCK_ID`, `SECTION_ID`, `IPROP_ID`, `VALUE`) VALUES
(9, 6, 1, 'Web-Дизайн'),
(9, 6, 2, 'Web-Дизайн'),
(9, 7, 1, 'События'),
(9, 7, 2, 'События'),
(9, 8, 1, 'Разработка'),
(9, 8, 2, 'Разработка'),
(9, 9, 1, 'Разное'),
(9, 9, 2, 'Разное');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_property`
--

CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_section_right`
--

CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_sequence`
--

CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_site`
--

CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_site`
--

INSERT INTO `b_iblock_site` (`IBLOCK_ID`, `SITE_ID`) VALUES
(1, 's1'),
(2, 's1'),
(3, 's1'),
(4, 's1'),
(5, 's1'),
(6, 's1'),
(7, 's1'),
(8, 's1'),
(9, 's1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_type`
--

CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_type`
--

INSERT INTO `b_iblock_type` (`ID`, `SECTIONS`, `EDIT_FILE_BEFORE`, `EDIT_FILE_AFTER`, `IN_RSS`, `SORT`) VALUES
('blog', 'Y', '', '', 'N', 500),
('content', 'N', '', '', 'N', 500),
('portfolio', 'Y', '', '', 'N', 500),
('rest_entity', 'Y', NULL, NULL, 'N', 1000),
('services', 'N', '', '', 'N', 500);

-- --------------------------------------------------------

--
-- Структура таблицы `b_iblock_type_lang`
--

CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_iblock_type_lang`
--

INSERT INTO `b_iblock_type_lang` (`IBLOCK_TYPE_ID`, `LID`, `NAME`, `SECTION_NAME`, `ELEMENT_NAME`) VALUES
('rest_entity', 'ru', 'Хранилище данных для приложений Маркетплейс24', 'Разделы', 'Элементы'),
('services', 'ru', 'Услуги', '', ''),
('services', 'en', 'Services', '', ''),
('portfolio', 'ru', 'Портфолио', '', ''),
('portfolio', 'en', 'Portfolio', '', ''),
('content', 'ru', 'Контент', '', ''),
('content', 'en', 'Content', '', ''),
('blog', 'ru', 'Блог', '', ''),
('blog', 'en', 'Blog', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing`
--

CREATE TABLE `b_landing` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIATOR_APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `VIEWS` int(18) NOT NULL DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TPL_ID` int(18) DEFAULT NULL,
  `TPL_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` int(18) NOT NULL,
  `SITEMAP` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FOLDER_ID` int(18) DEFAULT NULL,
  `SEARCH_CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `VERSION` int(18) NOT NULL DEFAULT '1',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL,
  `DATE_PUBLIC` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_binding`
--

CREATE TABLE `b_landing_binding` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `BINDING_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BINDING_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_block`
--

CREATE TABLE `b_landing_block` (
  `ID` int(18) NOT NULL,
  `PARENT_ID` int(18) DEFAULT NULL,
  `LID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIATOR_APP_CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ANCHOR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT '500',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACCESS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'X',
  `SOURCE_PARAMS` mediumtext COLLATE utf8_unicode_ci,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `SEARCH_CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `ASSETS` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_chat`
--

CREATE TABLE `b_landing_chat` (
  `ID` int(18) NOT NULL,
  `CHAT_ID` int(18) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AVATAR` int(18) DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_chat_binding`
--

CREATE TABLE `b_landing_chat_binding` (
  `ID` int(18) NOT NULL,
  `INTERNAL_CHAT_ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_cookies_agreement`
--

CREATE TABLE `b_landing_cookies_agreement` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SITE_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_demo`
--

CREATE TABLE `b_landing_demo` (
  `ID` int(18) NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TPL_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW2X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW3X` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` mediumtext COLLATE utf8_unicode_ci,
  `LANG` text COLLATE utf8_unicode_ci,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_domain`
--

CREATE TABLE `b_landing_domain` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROTOCOL` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `PROVIDER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_entity_rights`
--

CREATE TABLE `b_landing_entity_rights` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ROLE_ID` int(18) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_file`
--

CREATE TABLE `b_landing_file` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_filter_block`
--

CREATE TABLE `b_landing_filter_block` (
  `ID` int(18) NOT NULL,
  `FILTER_ID` int(18) NOT NULL,
  `BLOCK_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_filter_entity`
--

CREATE TABLE `b_landing_filter_entity` (
  `ID` int(18) NOT NULL,
  `SOURCE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_HASH` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_hook_data`
--

CREATE TABLE `b_landing_hook_data` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `HOOK` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `PUBLIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_placement`
--

CREATE TABLE `b_landing_placement` (
  `ID` int(18) NOT NULL,
  `APP_ID` int(18) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_repo`
--

CREATE TABLE `b_landing_repo` (
  `ID` int(18) NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `APP_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREVIEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MANIFEST` text COLLATE utf8_unicode_ci,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_role`
--

CREATE TABLE `b_landing_role` (
  `ID` int(18) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODES` text COLLATE utf8_unicode_ci,
  `ADDITIONAL_RIGHTS` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_site`
--

CREATE TABLE `b_landing_site` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PAGE',
  `TPL_ID` int(18) DEFAULT NULL,
  `TPL_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_ID` int(18) NOT NULL,
  `SMN_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANDING_ID_INDEX` int(18) DEFAULT NULL,
  `LANDING_ID_404` int(18) DEFAULT NULL,
  `LANDING_ID_503` int(18) DEFAULT NULL,
  `LANG` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SPECIAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_syspage`
--

CREATE TABLE `b_landing_syspage` (
  `ID` int(18) NOT NULL,
  `SITE_ID` int(18) NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_template`
--

CREATE TABLE `b_landing_template` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) DEFAULT '100',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` text COLLATE utf8_unicode_ci NOT NULL,
  `AREA_COUNT` int(2) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_landing_template`
--

INSERT INTO `b_landing_template` (`ID`, `ACTIVE`, `TITLE`, `SORT`, `XML_ID`, `CONTENT`, `AREA_COUNT`, `CREATED_BY_ID`, `MODIFIED_BY_ID`, `DATE_CREATE`, `DATE_MODIFY`) VALUES
(1, 'Y', '#EMPTY#', 100, 'empty', '#CONTENT#', 0, 1, 1, '2020-11-11 17:12:09', '2020-11-11 17:12:09'),
(2, 'Y', '#SIDEBAR_LEFT#', 200, 'sidebar_left', '<div class=\"landing-layout-flex\">\n								<div class=\"landing-sidebar g-max-width-100x g-overflow-hidden\">#AREA_1#</div>\n								<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n							</div>', 1, 1, 1, '2020-11-11 17:12:09', '2020-11-11 17:12:09'),
(3, 'Y', '#SIDEBAR_RIGHT#', 300, 'sidebar_right', '<div class=\"landing-layout-flex sidebar-right\">\n								<div class=\"landing-sidebar g-max-width-100x\">#AREA_1#</div>\n								<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n							</div>', 1, 1, 1, '2020-11-11 17:12:09', '2020-11-11 17:12:09'),
(4, 'Y', '#HEADER_ONLY#', 400, 'header_only', '<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div>', 1, 1, 1, '2020-11-11 17:12:09', '2020-11-11 17:12:09'),
(5, 'Y', '#HEADER_FOOTER#', 500, 'header_footer', '<div class=\"landing-header\">#AREA_1#</div> \n								<div class=\"landing-main\">#CONTENT#</div> \n							<div class=\"landing-footer\">#AREA_2#</div>', 2, 1, 1, '2020-11-11 17:12:09', '2020-11-11 17:12:09'),
(6, 'Y', '#WITHOUT_LEFT#', 600, 'without_left', '<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex without-left\">\n									<div class=\"landing-sidebar g-max-width-100x\">#AREA_2#</div>\n									<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>', 3, 1, 1, '2020-11-11 17:12:09', '2020-11-11 17:12:09'),
(7, 'Y', '#WITHOUT_RIGHT#', 700, 'without_right', '<div class=\"landing-header\">#AREA_1#</div>\n								<div class=\"landing-layout-flex\">\n									<div class=\"landing-sidebar g-max-width-100x\">#AREA_2#</div>\n									<div class=\"landing-main g-max-width-100x\">#CONTENT#</div>\n								</div>\n							<div class=\"landing-footer\">#AREA_3#</div>', 3, 1, 1, '2020-11-11 17:12:09', '2020-11-11 17:12:09');

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_template_ref`
--

CREATE TABLE `b_landing_template_ref` (
  `ID` int(18) NOT NULL,
  `ENTITY_ID` int(18) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `AREA` int(2) NOT NULL,
  `LANDING_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_update_block`
--

CREATE TABLE `b_landing_update_block` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_BLOCK_ID` int(18) DEFAULT '0',
  `PARAMS` text COLLATE utf8_unicode_ci,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_urlrewrite`
--

CREATE TABLE `b_landing_urlrewrite` (
  `ID` int(18) NOT NULL,
  `SITE_ID` int(18) NOT NULL,
  `RULE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LANDING_ID` int(18) NOT NULL,
  `CREATED_BY_ID` int(18) NOT NULL,
  `MODIFIED_BY_ID` int(18) NOT NULL,
  `DATE_CREATE` timestamp NULL DEFAULT NULL,
  `DATE_MODIFY` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_landing_view`
--

CREATE TABLE `b_landing_view` (
  `ID` int(18) NOT NULL,
  `LID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `VIEWS` int(18) NOT NULL,
  `FIRST_VIEW` datetime NOT NULL,
  `LAST_VIEW` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_lang`
--

CREATE TABLE `b_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_lang`
--

INSERT INTO `b_lang` (`LID`, `SORT`, `DEF`, `ACTIVE`, `NAME`, `DIR`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `LANGUAGE_ID`, `DOC_ROOT`, `DOMAIN_LIMITED`, `SERVER_NAME`, `SITE_NAME`, `EMAIL`, `CULTURE_ID`) VALUES
('s1', 1, 'Y', 'Y', 'Название сайта', '/', NULL, NULL, NULL, NULL, NULL, 'ru', '', 'N', '', '', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_language`
--

CREATE TABLE `b_language` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_language`
--

INSERT INTO `b_language` (`LID`, `SORT`, `DEF`, `ACTIVE`, `NAME`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `DIRECTION`, `CULTURE_ID`) VALUES
('en', 2, 'N', 'Y', 'English', NULL, NULL, NULL, NULL, NULL, NULL, 2),
('ru', 1, 'Y', 'Y', 'Russian', NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_lang_domain`
--

CREATE TABLE `b_lang_domain` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_list_rubric`
--

CREATE TABLE `b_list_rubric` (
  `ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `AUTO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DAYS_OF_MONTH` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DAYS_OF_WEEK` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMES_OF_DAY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `VISIBLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FROM_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_log_notification`
--

CREATE TABLE `b_log_notification` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECK_INTERVAL` int(11) DEFAULT NULL,
  `ALERT_COUNT` int(11) DEFAULT NULL,
  `DATE_CHECKED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_log_notification_action`
--

CREATE TABLE `b_log_notification_action` (
  `ID` int(10) UNSIGNED NOT NULL,
  `NOTIFICATION_ID` int(10) UNSIGNED NOT NULL,
  `NOTIFICATION_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `RECIPIENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_TEXT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_main_mail_blacklist`
--

CREATE TABLE `b_main_mail_blacklist` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `CATEGORY_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_main_mail_sender`
--

CREATE TABLE `b_main_mail_sender` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `IS_CONFIRMED` tinyint(4) NOT NULL DEFAULT '0',
  `IS_PUBLIC` tinyint(4) NOT NULL DEFAULT '0',
  `OPTIONS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_collection`
--

CREATE TABLE `b_medialib_collection` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_collection_item`
--

CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_item`
--

CREATE TABLE `b_medialib_item` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_medialib_type`
--

CREATE TABLE `b_medialib_type` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_medialib_type`
--

INSERT INTO `b_medialib_type` (`ID`, `NAME`, `CODE`, `EXT`, `SYSTEM`, `DESCRIPTION`) VALUES
(1, 'image_name', 'image', 'jpg,jpeg,gif,png', 'Y', 'image_desc'),
(2, 'video_name', 'video', 'flv,mp4,wmv', 'Y', 'video_desc'),
(3, 'sound_name', 'sound', 'mp3,wma,aac', 'Y', 'sound_desc');

-- --------------------------------------------------------

--
-- Структура таблицы `b_messageservice_message`
--

CREATE TABLE `b_messageservice_message` (
  `ID` int(18) NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SENDER_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT '0',
  `MESSAGE_FROM` varchar(260) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE_TO` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_HEADERS` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_BODY` longtext COLLATE utf8_unicode_ci NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EXEC_ERROR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `EXTERNAL_ID` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_messageservice_rest_app`
--

CREATE TABLE `b_messageservice_rest_app` (
  `ID` int(18) NOT NULL,
  `APP_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `HANDLER` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ADD` datetime DEFAULT NULL,
  `AUTHOR_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_messageservice_rest_app_lang`
--

CREATE TABLE `b_messageservice_rest_app_lang` (
  `ID` int(18) NOT NULL,
  `APP_ID` int(18) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_mobileapp_app`
--

CREATE TABLE `b_mobileapp_app` (
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SHORT_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci NOT NULL,
  `FILES` text COLLATE utf8_unicode_ci NOT NULL,
  `LAUNCH_ICONS` text COLLATE utf8_unicode_ci NOT NULL,
  `LAUNCH_SCREENS` text COLLATE utf8_unicode_ci NOT NULL,
  `FOLDER` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_mobileapp_config`
--

CREATE TABLE `b_mobileapp_config` (
  `APP_CODE` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PLATFORM` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_module`
--

CREATE TABLE `b_module` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_module`
--

INSERT INTO `b_module` (`ID`, `DATE_ACTIVE`) VALUES
('b24connector', NULL),
('bitrix.sitecorporate', NULL),
('bitrix.siteinfoportal', NULL),
('bitrix.sitepersonal', NULL),
('bitrixcloud', NULL),
('blog', NULL),
('clouds', NULL),
('fileman', NULL),
('form', NULL),
('forum', NULL),
('highloadblock', NULL),
('iblock', NULL),
('landing', NULL),
('main', NULL),
('messageservice', NULL),
('mobileapp', NULL),
('perfmon', NULL),
('photogallery', NULL),
('rest', NULL),
('scale', NULL),
('search', NULL),
('security', NULL),
('seo', NULL),
('socialservices', NULL),
('subscribe', NULL),
('translate', NULL),
('ui', NULL),
('vote', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_module_group`
--

CREATE TABLE `b_module_group` (
  `ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_module_to_module`
--

CREATE TABLE `b_module_to_module` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `FROM_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) DEFAULT NULL,
  `UNIQUE_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_module_to_module`
--

INSERT INTO `b_module_to_module` (`ID`, `TIMESTAMP_X`, `SORT`, `FROM_MODULE_ID`, `MESSAGE_ID`, `TO_MODULE_ID`, `TO_PATH`, `TO_CLASS`, `TO_METHOD`, `TO_METHOD_ARG`, `VERSION`, `UNIQUE_ID`) VALUES
(1, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'main', '/modules/main/tools/prop_userid.php', 'CIBlockPropertyUserID', 'GetUserTypeDescription', '', 1, '2b30c309bf87645959b9bfbed51b49c6'),
(2, NULL, 100, 'main', 'OnUserDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnUserDelete', '', 1, 'f437e170e4daf957766b0b0579f08fb4'),
(3, NULL, 100, 'main', 'OnLanguageDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnLanguageDelete', '', 1, '9211999c5cfc3a4d374e4f957d5079f6'),
(4, NULL, 100, 'main', 'OnUserDelete', 'main', '', 'CUserOptions', 'OnUserDelete', '', 1, '9ef4e969f975b6425c7113444d210a90'),
(5, NULL, 100, 'main', 'OnChangeFile', 'main', '', 'CMain', 'OnChangeFileComponent', '', 1, '332179402f77c4d41c6c2e524acde4d0'),
(6, NULL, 100, 'main', 'OnUserTypeRightsCheck', 'main', '', 'CUser', 'UserTypeRightsCheck', '', 1, 'e1aae03ea8eb08e7bbb6d8d42cbc2ebe'),
(7, NULL, 100, 'main', 'OnUserLogin', 'main', '', 'UpdateTools', 'CheckUpdates', '', 1, 'a2986b9f6e9a99c0351c2ba858dafc85'),
(8, NULL, 100, 'main', 'OnModuleUpdate', 'main', '', 'UpdateTools', 'SetUpdateResult', '', 1, 'f9b70c6a75b6341063b23bde5d32e582'),
(9, NULL, 100, 'main', 'OnUpdateCheck', 'main', '', 'UpdateTools', 'SetUpdateError', '', 1, 'a0aecef95a192ec3dd134f71f0f4f175'),
(10, NULL, 100, 'main', 'OnPanelCreate', 'main', '', 'CUndo', 'CheckNotifyMessage', '', 1, '6476f96ffba6ab2b4a7dbe644f42edf6'),
(11, NULL, 100, 'main', 'OnAfterAddRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterAddRating', '', 1, '6122bee2ad083f8f72e35655cee48859'),
(12, NULL, 100, 'main', 'OnAfterUpdateRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterUpdateRating', '', 1, 'f8f806e33dc35737bdbe6b9bc42626a4'),
(13, NULL, 100, 'main', 'OnSetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnSetRatingConfigs', '', 1, '9244ca7fd6964757ca191c9407cb1218'),
(14, NULL, 100, 'main', 'OnGetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingConfigs', '', 1, 'd8ae8e1f8889b1fbb6af276fb14c8411'),
(15, NULL, 100, 'main', 'OnGetRatingsObjects', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingObject', '', 1, '129315715250c195ee115002b445a156'),
(16, NULL, 100, 'main', 'OnGetRatingContentOwner', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingContentOwner', '', 1, 'bf1f5deaa1532fe9a28acd6d19d23a80'),
(17, NULL, 100, 'main', 'OnAfterAddRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterAddRatingRule', '', 1, '298e763431f7f7d6c3af9798663f410d'),
(18, NULL, 100, 'main', 'OnAfterUpdateRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterUpdateRatingRule', '', 1, '4ecdc4a15e24c49f0fa8f44064bf1511'),
(19, NULL, 100, 'main', 'OnGetRatingRuleObjects', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleObjects', '', 1, '6ac10928b76183004ba0e88ace0a1b5b'),
(20, NULL, 100, 'main', 'OnGetRatingRuleConfigs', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleConfigs', '', 1, '06769c4f6bbba4fad79c1619a874ee97'),
(21, NULL, 100, 'main', 'OnAfterUserAdd', 'main', '', 'CRatings', 'OnAfterUserRegister', '', 1, 'ecb9ae0476db69da6c95b06bcb3aebbb'),
(22, NULL, 100, 'main', 'OnUserDelete', 'main', '', 'CRatings', 'OnUserDelete', '', 1, '9fe6984fd29b7ab9508ac02c23690094'),
(23, NULL, 100, 'main', 'OnAfterGroupAdd', 'main', '', 'CGroupAuthProvider', 'OnAfterGroupAdd', '', 1, '02f2fe70b9068a6b307192321fe74430'),
(24, NULL, 100, 'main', 'OnBeforeGroupUpdate', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupUpdate', '', 1, 'ef0f2e4d0ae7bbf59d0798e8078143f9'),
(25, NULL, 100, 'main', 'OnBeforeGroupDelete', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupDelete', '', 1, 'd3ec9527c0e77709402a05ae4249afca'),
(26, NULL, 100, 'main', 'OnAfterSetUserGroup', 'main', '', 'CGroupAuthProvider', 'OnAfterSetUserGroup', '', 1, '0de6c5b48e9382f6e857d79f76d95f25'),
(27, NULL, 100, 'main', 'OnUserLogin', 'main', '', 'CGroupAuthProvider', 'OnUserLogin', '', 1, '954e2c4ca8624f90f1aee6f40183d5fc'),
(28, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'main', '', 'CEventMain', 'GetAuditTypes', '', 1, 'ac0b8b7a5e703131a3bd41b4399bc032'),
(29, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'main', '', 'CEventMain', 'MakeMainObject', '', 1, '1ddb38ccf35a8a9da5d3b2bc80591ad6'),
(30, NULL, 100, 'perfmon', 'OnGetTableSchema', 'main', '', 'CTableSchema', 'OnGetTableSchema', '', 1, 'c1f65f88d449e8b8a3b7af9d54ef3f50'),
(31, NULL, 100, 'sender', 'OnConnectorList', 'main', '', '\\Bitrix\\Main\\SenderEventHandler', 'onConnectorListUser', '', 1, '8af99568465a1ccdb6a84e868cf5aad8'),
(32, NULL, 110, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeString', 'GetUserTypeDescription', '', 1, '09f8200652932044934bd3c522e920c5'),
(33, NULL, 120, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeInteger', 'GetUserTypeDescription', '', 1, '71ef247b3eb3b07e4bd6940791b89497'),
(34, NULL, 130, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDouble', 'GetUserTypeDescription', '', 1, '4fe2008255fe567423cc0c2f080ca741'),
(35, NULL, 140, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDateTime', 'GetUserTypeDescription', '', 1, '686c0679e60bee52dbcc27f5502277b6'),
(36, NULL, 145, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDate', 'GetUserTypeDescription', '', 1, '7e19b5fc5fc48b1cd317a6ac44d84236'),
(37, NULL, 150, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeBoolean', 'GetUserTypeDescription', '', 1, '4d5e1dd2369089f2db9480549241205f'),
(38, NULL, 155, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeUrl', 'GetUserTypeDescription', '', 1, '79fcd650625b296abf13216cd5af2428'),
(39, NULL, 160, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeFile', 'GetUserTypeDescription', '', 1, '67b9a4fbc45240a7887b73e3a246eba0'),
(40, NULL, 170, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeEnum', 'GetUserTypeDescription', '', 1, 'fbebdb289fe38c1fbfeda4d3d8ee43ef'),
(41, NULL, 180, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockSection', 'GetUserTypeDescription', '', 1, '2065f8305645790970bac0b99f127f47'),
(42, NULL, 190, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockElement', 'GetUserTypeDescription', '', 1, '65bda5818e3545f1683a3ff5271cc891'),
(43, NULL, 200, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeStringFormatted', 'GetUserTypeDescription', '', 1, '47e3cf1c280e01dbaed43f9989a6747b'),
(44, NULL, 210, 'main', 'OnUserTypeBuildList', 'main', '', '\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType', 'getUserTypeDescription', '', 1, '719d15ee5f60f6348d2bd6a8911aeed1'),
(45, NULL, 100, 'main', 'OnBeforeEndBufferContent', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeEndBufferContent', '', 1, 'ff5eb984fe6ce3e8d769bf3ba646b902'),
(46, NULL, 100, 'main', 'OnBeforeRestartBuffer', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeRestartBuffer', '', 1, '0782f5a6df6dd52d834caea88c3ba3a7'),
(47, NULL, 100, 'main', 'OnFileDelete', 'main', '', '\\Bitrix\\Main\\UI\\Viewer\\FilePreviewTable', 'onFileDelete', '', 1, '54c80cd94412db221338aeb59902f059'),
(48, NULL, 100, 'socialnetwork', 'OnSocNetLogDelete', 'main', '', 'CUserCounter', 'OnSocNetLogDelete', '', 1, '33e603755a0bc07abd51a1f8ed52966e'),
(49, NULL, 100, 'socialnetwork', 'OnSocNetLogCommentDelete', 'main', '', 'CUserCounter', 'OnSocNetLogCommentDelete', '', 1, '51ee2214895be904a880046f43e84138'),
(50, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'main', '', 'CMpNotifications', 'OnAdminInformerInsertItemsHandlerMP', '', 1, 'c89c0e94ac1110c334a24c70e1773daa'),
(51, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'main', '', '\\Bitrix\\Main\\Rest\\Handlers', 'onRestServiceBuildDescription', '', 1, 'c0b0c358a21b648d4f9c5d29d17a5ab2'),
(52, NULL, 100, 'sale', 'OnSaleBasketItemSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogBasket', '', 2, 'fa4fc3924ff2585e92f8bdabaf287864'),
(53, NULL, 100, 'sale', 'OnSaleOrderSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrder', '', 2, '6b358bb17b30da91b105fb1451ed9aaa'),
(54, NULL, 100, 'sale', 'OnSaleOrderPaid', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrderPayment', '', 2, '8f5ca6e1c5136cb4bbf30474f0ff4183'),
(55, NULL, 1000, 'sale', 'onBuildDiscountConditionInterfaceControls', 'main', '', '\\Bitrix\\Main\\Discount\\UserConditionControl', 'onBuildDiscountConditionInterfaceControls', '', 1, '9f0d91c081704e52b52f540b3acaf52e'),
(56, NULL, 100, 'main', 'OnBeforePhpMail', 'main', '', '\\Bitrix\\Main\\Mail\\Sender', 'applyCustomSmtp', '', 2, '10fbf5b8dec05a02d8d7010e594f16ec'),
(57, NULL, 100, 'main', 'OnBuildFilterFactoryMethods', 'main', '', '\\Bitrix\\Main\\Filter\\FactoryMain', 'onBuildFilterFactoryMethods', '', 2, '19f10c2686a955bd8b8116ea1f1ad829'),
(58, NULL, 100, 'main', 'OnBeforeUserTypeAdd', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'OnBeforeUserTypeAdd', '', 1, 'e204684efc0764af9431ca94b950619a'),
(59, NULL, 100, 'main', 'OnAfterUserTypeAdd', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'onAfterUserTypeAdd', '', 1, '50932fb244caf7af686fac906caf3e73'),
(60, NULL, 100, 'main', 'OnBeforeUserTypeDelete', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'OnBeforeUserTypeDelete', '', 1, 'd22a86deba0ff4bd031d022e331033b4'),
(61, NULL, 100, 'main', 'onGetUserFieldValues', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'onGetUserFieldValues', '', 2, '7f9a5e25d638a6bff29f0bf4666da1a9'),
(62, NULL, 100, 'main', 'onUpdateUserFieldValues', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'onUpdateUserFieldValues', '', 2, 'd78761f994d74258421d271810f03ebf'),
(63, NULL, 100, 'main', 'onDeleteUserFieldValues', 'main', '', '\\Bitrix\\Main\\UserField\\Internal\\UserFieldHelper', 'onDeleteUserFieldValues', '', 2, '074b2e25238a00ffc809ad12b609db2c'),
(64, NULL, 100, 'main', 'OnAuthProvidersBuildList', 'main', '', '\\Bitrix\\Main\\Access\\Auth\\AccessAuthProvider', 'getProviders', '', 1, '3a2839dac113bf47bce01812903e768a'),
(65, NULL, 100, 'iblock', 'OnBeforeIBlockSectionUpdate', 'main', '', '\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler', 'onBeforeIBlockSectionUpdate', '', 1, 'dde505dba68c59bd4661b7680c329485'),
(66, NULL, 100, 'iblock', 'OnBeforeIBlockSectionAdd', 'main', '', '\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler', 'onBeforeIBlockSectionAdd', '', 1, 'd3a665b1890dabbba32ff01e3e46ec57'),
(67, NULL, 100, 'iblock', 'OnBeforeIBlockSectionDelete', 'main', '', '\\Bitrix\\Main\\Access\\Auth\\AccessEventHandler', 'onBeforeIBlockSectionDelete', '', 1, '157add4b02621a60fabf1369c3e7ea9b'),
(68, NULL, 100, 'main', 'OnBuildGlobalMenu', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBuildGlobalMenu', '', 1, '9c4452a442bacc2d4d70635962485be1'),
(69, NULL, 100, 'main', 'OnBeforeProlog', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBeforeProlog', '', 1, '641053ff6ee8ff57518d7c30724530e5'),
(70, NULL, 100, 'main', 'OnBeforeProlog', 'bitrix.sitecorporate', '', 'CSiteCorporate', 'ShowPanel', '', 1, 'bc7c322534797a9ed3493c40e1b8fdac'),
(71, NULL, 100, 'main', 'OnBeforeProlog', 'bitrix.siteinfoportal', '', 'CSiteInfoportal', 'ShowPanel', '', 1, '7ffb3da30f1bec7fe0c7456a8ec3b8d7'),
(72, NULL, 100, 'main', 'OnBeforeProlog', 'bitrix.sitepersonal', '', 'CSitePersonal', 'ShowPanel', '', 1, '5a8bf3ea4b17f8d011b8f398c05ac89b'),
(73, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'bitrixcloud', '', 'CBitrixCloudBackup', 'OnAdminInformerInsertItems', '', 1, '5499039afdd0fdb38d4b245c8b886dcb'),
(74, NULL, 100, 'mobileapp', 'OnBeforeAdminMobileMenuBuild', 'bitrixcloud', '', 'CBitrixCloudMobile', 'OnBeforeAdminMobileMenuBuild', '', 1, '5828a8cdb2cc45e2724ef1c76139df88'),
(75, NULL, 100, 'search', 'OnReindex', 'blog', '', 'CBlogSearch', 'OnSearchReindex', '', 1, '6c23ebfcdfc99d14541ad083b0ee7430'),
(76, NULL, 100, 'main', 'OnUserDelete', 'blog', '', '\\Bitrix\\Blog\\BlogUser', 'onUserDelete', '', 1, '470dc0caadb6eee3cf6bd32a89d2aa38'),
(77, NULL, 100, 'main', 'OnSiteDelete', 'blog', '', 'CBlogSitePath', 'DeleteBySiteID', '', 1, '33b1b3449b56990b745b251f3976521d'),
(78, NULL, 100, 'socialnetwork', 'OnSocNetGroupDelete', 'blog', '', 'CBlogSoNetPost', 'OnGroupDelete', '', 1, '4fa06723b7108652d8f6846f17c4bfda'),
(79, NULL, 100, 'socialnetwork', 'OnSocNetFeaturesAdd', 'blog', '', 'CBlogSearch', 'SetSoNetFeatureIndexSearch', '', 1, '5e642b195637a47eda278a2f769d72ae'),
(80, NULL, 100, 'socialnetwork', 'OnSocNetFeaturesUpdate', 'blog', '', 'CBlogSearch', 'SetSoNetFeatureIndexSearch', '', 1, '94116bd773c35830e32cabd264e1deac'),
(81, NULL, 100, 'socialnetwork', 'OnBeforeSocNetFeaturesPermsAdd', 'blog', '', 'CBlogSearch', 'OnBeforeSocNetFeaturesPermsAdd', '', 1, 'ef99702762ccf8958b3bd05a0bc2bd21'),
(82, NULL, 100, 'socialnetwork', 'OnSocNetFeaturesPermsAdd', 'blog', '', 'CBlogSearch', 'SetSoNetFeaturePermIndexSearch', '', 1, '7e78a43487928787ac0665eb1eade0d5'),
(83, NULL, 100, 'socialnetwork', 'OnBeforeSocNetFeaturesPermsUpdate', 'blog', '', 'CBlogSearch', 'OnBeforeSocNetFeaturesPermsUpdate', '', 1, '13116dc44040b680c93a2b7f60ff2845'),
(84, NULL, 100, 'socialnetwork', 'OnSocNetFeaturesPermsUpdate', 'blog', '', 'CBlogSearch', 'SetSoNetFeaturePermIndexSearch', '', 1, '06ae1cde11216c73393f8720c0f31ea9'),
(85, NULL, 200, 'main', 'OnAfterAddRating', 'blog', '', 'CRatingsComponentsBlog', 'OnAfterAddRating', '', 1, '6dd70a97fa5c2f15e619721007813bd0'),
(86, NULL, 200, 'main', 'OnAfterUpdateRating', 'blog', '', 'CRatingsComponentsBlog', 'OnAfterUpdateRating', '', 1, 'a2f4b906bc5e1e984c28ef37728d7007'),
(87, NULL, 200, 'main', 'OnSetRatingsConfigs', 'blog', '', 'CRatingsComponentsBlog', 'OnSetRatingConfigs', '', 1, '4461c77de3ca9dec12cd66c9554555a0'),
(88, NULL, 200, 'main', 'OnGetRatingsConfigs', 'blog', '', 'CRatingsComponentsBlog', 'OnGetRatingConfigs', '', 1, '6708964800c60ed28bb3ac095494d0f8'),
(89, NULL, 200, 'main', 'OnGetRatingsObjects', 'blog', '', 'CRatingsComponentsBlog', 'OnGetRatingObject', '', 1, '29df09132203259924e883921fed0971'),
(90, NULL, 200, 'main', 'OnGetRatingContentOwner', 'blog', '', 'CRatingsComponentsBlog', 'OnGetRatingContentOwner', '', 1, 'a47b921e59710bdca16e2284d11e8aa0'),
(91, NULL, 100, 'im', 'OnGetNotifySchema', 'blog', '', 'CBlogNotifySchema', 'OnGetNotifySchema', '', 1, 'cd6910b2ee2dd66f257a68a6406b9f79'),
(92, NULL, 100, 'im', 'OnAnswerNotify', 'blog', '', 'CBlogNotifySchema', 'CBlogEventsIMCallback', '', 1, '890d3be770eab6025cc54e120d3b51f5'),
(93, NULL, 100, 'main', 'OnAfterRegisterModule', 'main', '/modules/blog/install/index.php', 'blog', 'installUserFields', '', 1, 'bfd07861166a9d51c1d21d18b291a1dc'),
(94, NULL, 100, 'conversion', 'OnGetCounterTypes', 'blog', '', '\\Bitrix\\Blog\\Internals\\ConversionHandlers', 'onGetCounterTypes', '', 1, 'e5df84e19828b3b95901e7b2a5d55cb1'),
(95, NULL, 100, 'conversion', 'OnGetRateTypes', 'blog', '', '\\Bitrix\\Blog\\Internals\\ConversionHandlers', 'onGetRateTypes', '', 1, '75028a7a2551f7c677c09c367ed1a54c'),
(96, NULL, 100, 'blog', 'OnPostAdd', 'blog', '', '\\Bitrix\\Blog\\Internals\\ConversionHandlers', 'onPostAdd', '', 1, 'a3b637f0c0945089c95d5c08e1166938'),
(97, NULL, 100, 'mail', 'onReplyReceivedBLOG_POST', 'blog', '', '\\Bitrix\\Blog\\Internals\\MailHandler', 'handleReplyReceivedBlogPost', '', 2, '5e3d8ad3f14c5b994981074e43a02cd7'),
(98, NULL, 100, 'mail', 'onForwardReceivedBLOG_POST', 'blog', '', '\\Bitrix\\Blog\\Internals\\MailHandler', 'handleForwardReceivedBlogPost', '', 2, '6002badd4ffa13790a43d45c5c29fca3'),
(99, NULL, 100, 'socialnetwork', 'onLogIndexGetContent', 'blog', '', '\\Bitrix\\Blog\\Integration\\Socialnetwork\\Log', 'onIndexGetContent', '', 2, '3fba13b74a731f896448388c082c24a4'),
(100, NULL, 100, 'socialnetwork', 'onLogCommentIndexGetContent', 'blog', '', '\\Bitrix\\Blog\\Integration\\Socialnetwork\\LogComment', 'onIndexGetContent', '', 2, '57ce8e76c004b1447554d8ec64c48783'),
(101, NULL, 100, 'socialnetwork', 'onContentViewed', 'blog', '', '\\Bitrix\\Blog\\Integration\\Socialnetwork\\ContentViewHandler', 'onContentViewed', '', 2, 'd33a4b2ae579a2c9b5ddcea17bc62806'),
(102, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'clouds', '', 'CCloudStorage', 'GetAuditTypes', '', 1, 'da69722ba95497cf263381b46e24df40'),
(103, NULL, 90, 'main', 'OnBeforeProlog', 'clouds', '', 'CCloudStorage', 'OnBeforeProlog', '', 1, 'f8c39ff182ad873715f10a7091f928a4'),
(104, NULL, 100, 'main', 'OnAdminListDisplay', 'clouds', '', 'CCloudStorage', 'OnAdminListDisplay', '', 1, '8ddf4f578e7229a63cba4d2124c7643c'),
(105, NULL, 100, 'main', 'OnBuildGlobalMenu', 'clouds', '', 'CCloudStorage', 'OnBuildGlobalMenu', '', 1, 'd6d308843a6521ad50bfa230a2fcef8f'),
(106, NULL, 100, 'main', 'OnFileSave', 'clouds', '', 'CCloudStorage', 'OnFileSave', '', 1, '1e4f94a842d6166359ed1789a6f21245'),
(107, NULL, 100, 'main', 'OnAfterFileSave', 'clouds', '', 'CCloudStorage', 'OnAfterFileSave', '', 1, 'c36bae07a3080f9b5bc5d422ec96933f'),
(108, NULL, 100, 'main', 'OnGetFileSRC', 'clouds', '', 'CCloudStorage', 'OnGetFileSRC', '', 1, '7ec03b3b7ad3f2f54c1e438a1172e5a8'),
(109, NULL, 100, 'main', 'OnFileCopy', 'clouds', '', 'CCloudStorage', 'OnFileCopy', '', 1, '6880b56c76f7d3c5d09f887fca6341ca'),
(110, NULL, 100, 'main', 'OnPhysicalFileDelete', 'clouds', '', 'CCloudStorage', 'OnFileDelete', '', 1, '3151c487c747a57d7817f68e97fd1c94'),
(111, NULL, 100, 'main', 'OnMakeFileArray', 'clouds', '', 'CCloudStorage', 'OnMakeFileArray', '', 1, '713ea8a7a25764b1af60f7a1ec3032d5'),
(112, NULL, 100, 'main', 'OnBeforeResizeImage', 'clouds', '', 'CCloudStorage', 'OnBeforeResizeImage', '', 1, '705cd310c52f9c7e8e0c8a0578a22667'),
(113, NULL, 100, 'main', 'OnAfterResizeImage', 'clouds', '', 'CCloudStorage', 'OnAfterResizeImage', '', 1, 'a403ad2328227153475df0c478a465cc'),
(114, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_AmazonS3', 'GetObjectInstance', '', 1, 'a4eb7ed1f50b5931474c565f448a4069'),
(115, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_GoogleStorage', 'GetObjectInstance', '', 1, '1e559e2225608e8d40eeede5b7526f2a'),
(116, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_OpenStackStorage', 'GetObjectInstance', '', 1, '5ad09feff5dab28ab571ad034ccdf2ea'),
(117, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_RackSpaceCloudFiles', 'GetObjectInstance', '', 1, 'cc976773610cf809bb56871ac7dd9f01'),
(118, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_ClodoRU', 'GetObjectInstance', '', 1, 'faadad31436e94c420ed787e4424714b'),
(119, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_Selectel', 'GetObjectInstance', '', 1, '5e63a8eebed42bd099b4a9ef62e8d52b'),
(120, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_HotBox', 'GetObjectInstance', '', 1, '1913169adcd6d6f3b7fb5f3b70ba1fd8'),
(121, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_Yandex', 'GetObjectInstance', '', 1, '12bd1d4f0d145d5b1681955612fe61c8'),
(122, NULL, 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_S3', 'GetObjectInstance', '', 1, '4af3f0ba1f50ed9be6efcdb55dfbee4e'),
(123, NULL, 100, 'perfmon', 'OnGetTableSchema', 'clouds', '', 'clouds', 'OnGetTableSchema', '', 1, 'd31a1f80f07441976eb1711db4902a71'),
(124, NULL, 100, 'main', 'OnGroupDelete', 'fileman', '', 'CFileman', 'OnGroupDelete', '', 1, 'd10f791d422ba0e7551ab267db50404c'),
(125, NULL, 100, 'main', 'OnPanelCreate', 'fileman', '', 'CFileman', 'OnPanelCreate', '', 1, 'b00a6174fb1763684c299ccf5e054c65'),
(126, NULL, 100, 'main', 'OnModuleUpdate', 'fileman', '', 'CFileman', 'OnModuleUpdate', '', 1, '58ae853e2b7c230b5cdb51129efd8a05'),
(127, NULL, 100, 'main', 'OnModuleInstalled', 'fileman', '', 'CFileman', 'ClearComponentsListCache', '', 1, '7bdbd354eab11f376fa257a998587277'),
(128, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapGoogle', 'GetUserTypeDescription', '', 1, 'd9d06fd05f80b33379359ebd8e36e655'),
(129, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapYandex', 'GetUserTypeDescription', '', 1, '20ca1d02998884b5abec68b32fdb561d'),
(130, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyVideo', 'GetUserTypeDescription', '', 1, '991c32062e05844708a5cf7aba37bf9a'),
(131, NULL, 100, 'main', 'OnUserTypeBuildList', 'fileman', '', 'CUserTypeVideo', 'GetUserTypeDescription', '', 1, '41bc5efb49ebf8d165acd4e4d556f60c'),
(132, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'fileman', '', 'CEventFileman', 'GetAuditTypes', '', 1, 'e0a610651ffec1fbddb2f261223fb2e9'),
(133, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'fileman', '', 'CEventFileman', 'MakeFilemanObject', '', 1, 'fbfef1ef99530f6eae191da293f9566c'),
(134, NULL, 154, 'main', 'OnUserTypeBuildList', 'fileman', '', '\\Bitrix\\Fileman\\UserField\\Address', 'getUserTypeDescription', '', 1, 'f0583a376e38d3d2675513b1a367ed3c'),
(135, NULL, 100, 'sender', 'OnConnectorList', 'form', '', '\\Bitrix\\Form\\SenderEventHandler', 'onConnectorListForm', '', 1, '182217f1803d20e2899086e379ada21c'),
(136, NULL, 100, 'main', 'OnAfterUserUpdate', 'forum', '', 'CForumUser', 'OnAfterUserUpdate', '', 1, '18ca0a9757a229b6290603235dfff0d1'),
(137, NULL, 100, 'main', 'OnGroupDelete', 'forum', '', 'CForumNew', 'OnGroupDelete', '', 1, '63f10ce39f269a9f1add6a0600aa05b9'),
(138, NULL, 100, 'main', 'OnBeforeLangDelete', 'forum', '', 'CForumNew', 'OnBeforeLangDelete', '', 1, '201c2a343960654a90382521e253328f'),
(139, NULL, 100, 'main', 'OnFileDelete', 'forum', '', 'CForumFiles', 'OnFileDelete', '', 1, 'a00aa95408b2665018cb63e21cef4684'),
(140, NULL, 100, 'search', 'OnReindex', 'forum', '', 'CForumNew', 'OnReindex', '', 1, '3fe2c3077963069fee2360611d840816'),
(141, NULL, 100, 'main', 'OnUserDelete', 'forum', '', 'CForumUser', 'OnUserDelete', '', 1, 'eb0cb7958d708be629eba740bcabd8c4'),
(142, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'main', '/modules/forum/tools/prop_topicid.php', 'CIBlockPropertyTopicID', 'GetUserTypeDescription', '', 1, 'd5b04b52654500981293dbcf10ca1ef9'),
(143, NULL, 100, 'iblock', 'OnBeforeIBlockElementDelete', 'forum', '', 'CForumTopic', 'OnBeforeIBlockElementDelete', '', 1, '929cf569dd703b922e4a96a0a023f120'),
(144, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'forum', '', 'CForumEventLog', 'GetAuditTypes', '', 1, '30a759001702af8052ea65e700c519c7'),
(145, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'forum', '', 'CEventForum', 'MakeForumObject', '', 1, '78ecc0524ac5d4fb0545c8a3fa28b3bd'),
(146, NULL, 100, 'socialnetwork', 'OnSocNetGroupDelete', 'forum', '', 'CForumUser', 'OnSocNetGroupDelete', '', 1, '94cfb4cf5460746b7b31a5b93a3805f6'),
(147, NULL, 100, 'socialnetwork', 'OnSocNetLogFormatEvent', 'forum', '', 'CForumMessage', 'OnSocNetLogFormatEvent', '', 1, '28c7a91a467c1190a064f597487abd5c'),
(148, NULL, 100, 'mail', 'OnGetFilterList', 'forum', '', 'CForumEMail', 'OnGetSocNetFilterList', '', 1, 'e42fc61795fed0c5f397259bb6f1f6b9'),
(149, NULL, 100, 'main', 'OnAfterAddRating', 'forum', '', 'CRatingsComponentsForum', 'OnAfterAddRating', '', 1, 'db966e6ee1f8b98f83e57411f4757858'),
(150, NULL, 100, 'main', 'OnAfterUpdateRating', 'forum', '', 'CRatingsComponentsForum', 'OnAfterUpdateRating', '', 1, 'f5f6a93c1fe6d7dc61fbb5bf25f9965f'),
(151, NULL, 100, 'main', 'OnSetRatingsConfigs', 'forum', '', 'CRatingsComponentsForum', 'OnSetRatingConfigs', '', 1, '84556c2f1f7f23189f90603f45ad3942'),
(152, NULL, 100, 'main', 'OnGetRatingsConfigs', 'forum', '', 'CRatingsComponentsForum', 'OnGetRatingConfigs', '', 1, '7ead6be47d7bb2e297a2af57f85dc7ee'),
(153, NULL, 100, 'main', 'OnGetRatingsObjects', 'forum', '', 'CRatingsComponentsForum', 'OnGetRatingObject', '', 1, '99f4b68c8e6c1598377e0016b31234bb'),
(154, NULL, 100, 'main', 'OnGetRatingContentOwner', 'forum', '', 'CRatingsComponentsForum', 'OnGetRatingContentOwner', '', 1, '5ef51ecf36931b3a32f4fea00dc49c8c'),
(155, NULL, 100, 'im', 'OnGetNotifySchema', 'forum', '', 'CForumNotifySchema', 'OnGetNotifySchema', '', 1, 'ad425ff862192078c050ea34d60f8d63'),
(156, NULL, 100, 'main', 'OnAfterRegisterModule', 'main', '/modules/forum/install/index.php', 'forum', 'InstallUserFields', '', 1, '205fd3e33648d7e1ed6f4b7f0298f603'),
(157, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'forum', '', 'CForumRestService', 'OnRestServiceBuildDescription', '', 1, '506b2a93cea64d73c9e7c187fdde2840'),
(158, NULL, 100, 'conversion', 'OnGetCounterTypes', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onGetCounterTypes', '', 1, 'fa69bf6ff10a0fb9b2e91098f0c0bab3'),
(159, NULL, 100, 'conversion', 'OnGetRateTypes', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onGetRateTypes', '', 1, '9eb2b6d8edde63385655c1001d9e0c31'),
(160, NULL, 100, 'forum', 'onAfterTopicAdd', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onTopicAdd', '', 1, 'ea61a319e93c2c3a9bfc9a63840b2155'),
(161, NULL, 100, 'forum', 'onAfterMessageAdd', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onMessageAdd', '', 1, '3cc5f27501dad77acdecb1c8a4e978de'),
(162, NULL, 100, 'socialnetwork', 'onLogIndexGetContent', 'forum', '', '\\Bitrix\\Forum\\Integration\\Socialnetwork\\Log', 'onIndexGetContent', '', 2, '909a8b84bf80774a6a89bfbbd2258ce8'),
(163, NULL, 100, 'socialnetwork', 'onLogCommentIndexGetContent', 'forum', '', '\\Bitrix\\Forum\\Integration\\Socialnetwork\\LogComment', 'onIndexGetContent', '', 2, 'e6aaa86c7daeae2bc002e513f06ccffa'),
(164, NULL, 100, 'socialnetwork', 'onContentViewed', 'forum', '', '\\Bitrix\\Forum\\Integration\\Socialnetwork\\ContentViewHandler', 'onContentViewed', '', 2, '5db6b373f6612f36c2ff6783dd4d6154'),
(165, NULL, 100, 'main', 'OnBeforeUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeAdd', '', 1, 'f9dcff287cf7753e5c56974d37975507'),
(166, NULL, 100, 'main', 'OnAfterUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'onAfterUserTypeAdd', '', 1, 'd1fa2865e72eca144b964b6fb1eefc15'),
(167, NULL, 100, 'main', 'OnBeforeUserTypeDelete', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeDelete', '', 1, '1bf13707e1a45b8320c2ecd35534cbb4'),
(168, NULL, 100, 'main', 'OnUserTypeBuildList', 'highloadblock', '', 'CUserTypeHlblock', 'GetUserTypeDescription', '', 1, '2ac4a2154f4fd85d67b50f412ed5ed48'),
(169, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'highloadblock', '', 'CIBlockPropertyDirectory', 'GetUserTypeDescription', '', 1, 'a6f7df502db8a04590e43188d7cbfc99'),
(170, NULL, 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlock', 'OnGroupDelete', '', 1, 'f2320df213f38adf32364d3169d5b197'),
(171, NULL, 100, 'main', 'OnBeforeLangDelete', 'iblock', '', 'CIBlock', 'OnBeforeLangDelete', '', 1, '46aef774958db327c1170a12d3a70ee5'),
(172, NULL, 100, 'main', 'OnLangDelete', 'iblock', '', 'CIBlock', 'OnLangDelete', '', 1, '861f6ee2ca56bf63c3af07db0553606b'),
(173, NULL, 100, 'main', 'OnUserTypeRightsCheck', 'iblock', '', 'CIBlockSection', 'UserTypeRightsCheck', '', 1, '2a6d446893d46f04f2c151f458d2908c'),
(174, NULL, 100, 'search', 'OnReindex', 'iblock', '', 'CIBlock', 'OnSearchReindex', '', 1, 'c6c8111f129e0eb19e558106e354e6f6'),
(175, NULL, 100, 'search', 'OnSearchGetURL', 'iblock', '', 'CIBlock', 'OnSearchGetURL', '', 1, '0ae9fc756bfb1273309240cd8f535672'),
(176, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'iblock', '', 'CIBlock', 'GetAuditTypes', '', 1, '182d19c163e3a5a965bca170c3fb0e83'),
(177, NULL, 100, 'main', 'OnEventLogGetAuditHandlers', 'iblock', '', 'CEventIBlock', 'MakeIBlockObject', '', 1, 'f7a182e8d9b204970d111e4703b9f523'),
(178, NULL, 200, 'main', 'OnGetRatingContentOwner', 'iblock', '', 'CRatingsComponentsIBlock', 'OnGetRatingContentOwner', '', 1, '6da245944e376d586a3fa2aaee02c70b'),
(179, NULL, 100, 'main', 'OnTaskOperationsChanged', 'iblock', '', 'CIBlockRightsStorage', 'OnTaskOperationsChanged', '', 1, '01b3f9984fa07b1dfb4bc35d107d5672'),
(180, NULL, 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnGroupDelete', '', 1, '2dbbccdee3f2e7bd86446bec02be1d54'),
(181, NULL, 100, 'main', 'OnUserDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnUserDelete', '', 1, '78f090ee29030c54788098b0782d28f9'),
(182, NULL, 100, 'perfmon', 'OnGetTableSchema', 'iblock', '', 'iblock', 'OnGetTableSchema', '', 1, '4b71a345c136beed338aa7137943d80b'),
(183, NULL, 100, 'sender', 'OnConnectorList', 'iblock', '', '\\Bitrix\\Iblock\\SenderEventHandler', 'onConnectorListIblock', '', 1, '3de75587a47352dd3cb6d10866f69385'),
(184, NULL, 10, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDate', 'GetUserTypeDescription', '', 1, 'fa608e2c397b6793c54ad296619a22e2'),
(185, NULL, 20, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDateTime', 'GetUserTypeDescription', '', 1, '78554c9e3c38ac383d51f0ee4d013120'),
(186, NULL, 30, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyXmlID', 'GetUserTypeDescription', '', 1, '952fe5f2ea67493fb9f9b924ce1b992b'),
(187, NULL, 40, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyFileMan', 'GetUserTypeDescription', '', 1, 'fd688441d5e8203751fb47374931e011'),
(188, NULL, 50, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyHTML', 'GetUserTypeDescription', '', 1, '27645f81ce5d6d9f19a47cc171860beb'),
(189, NULL, 60, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementList', 'GetUserTypeDescription', '', 1, 'c53e9314ae43c30267b32310a02d7df4'),
(190, NULL, 70, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySequence', 'GetUserTypeDescription', '', 1, '3ff9528d1264fc77697248957aafdab5'),
(191, NULL, 80, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementAutoComplete', 'GetUserTypeDescription', '', 1, '0d233a1e7a0d6a52a52e13df88291024'),
(192, NULL, 90, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySKU', 'GetUserTypeDescription', '', 1, '8678bc826ced4f66640fba3775b18516'),
(193, NULL, 100, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySectionAutoComplete', 'GetUserTypeDescription', '', 1, '26ff6f651cb94a1fe4ce9827566f0730'),
(194, NULL, 100, 'main', 'onVirtualClassBuildList', 'iblock', '', 'Bitrix\\Iblock\\IblockTable', 'compileAllEntities', '', 2, '8a4e85071d25e6ba7f9ed315874c411b'),
(195, NULL, 100, 'bitrix24', 'onDomainChange', 'landing', '', '\\Bitrix\\Landing\\Update\\Block\\NodeAttributes', 'updateFormDomain', '', 2, 'a5f1ac2c31163115813298acc7bbffcf'),
(196, NULL, 100, 'intranet', 'onBuildBindingMenu', 'landing', '', '\\Bitrix\\Landing\\Connector\\Intranet', 'onBuildBindingMenu', '', 2, 'd5464da9aea2308d3d5f13c2387c4c40'),
(197, NULL, 100, 'landing', 'onBuildSourceList', 'landing', '', '\\Bitrix\\Landing\\Connector\\Landing', 'onSourceBuildHandler', '', 2, 'fc391addc82a816df68510b0ae3363a5'),
(198, NULL, 100, 'main', 'onBeforeSiteDelete', 'landing', '', '\\Bitrix\\Landing\\Site', 'onBeforeMainSiteDelete', '', 2, '5faa9b5de931dbb101e2e0aef6fc594b'),
(199, NULL, 100, 'main', 'onSiteDelete', 'landing', '', '\\Bitrix\\Landing\\Site', 'onMainSiteDelete', '', 2, 'af029bceca7ea9cc809515e95bd3a710'),
(200, NULL, 100, 'main', 'onUserConsentProviderList', 'landing', '', '\\Bitrix\\Landing\\Site\\Cookies', 'onUserConsentProviderList', '', 2, 'f59a96e272348f934d62ba5d3ee79f21'),
(201, NULL, 100, 'mobile', 'onMobileMenuStructureBuilt', 'landing', '', '\\Bitrix\\Landing\\Connector\\Mobile', 'onMobileMenuStructureBuilt', '', 2, '01fd8a44b83b5f7fcd2f36a626657ad0'),
(202, NULL, 100, 'rest', 'onRestServiceBuildDescription', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'restBase', '', 2, '9af99ddecf2dd8c3c5b14721f23e8fef'),
(203, NULL, 100, 'rest', 'onBeforeApplicationUninstall', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'beforeRestApplicationDelete', '', 2, 'ef1f080a088ad54298a4ba9bf2896313'),
(204, NULL, 100, 'rest', 'onRestAppDelete', 'landing', '', '\\Bitrix\\Landing\\Publicaction', 'restApplicationDelete', '', 2, '031cfc016e3be91368376a391c351dea'),
(205, NULL, 100, 'rest', 'onRestApplicationConfigurationGetManifest', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'getManifestList', '', 2, 'b88124aac7c2c8ddecf2ce127a9c6ef8'),
(206, NULL, 100, 'rest', 'onRestApplicationConfigurationExport', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'onEventExportController', '', 2, '917b00a9f82e6b8f7899a6e8c3b22236'),
(207, NULL, 100, 'rest', 'onRestApplicationConfigurationGetManifestSetting', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'onInitManifest', '', 2, '99fa9aa37a23a371cca0153c840c7802'),
(208, NULL, 100, 'rest', 'onRestApplicationConfigurationEntity', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'getEntityList', '', 2, '820df699b9abf22ce0356fc9957be794'),
(209, NULL, 100, 'rest', 'onRestApplicationConfigurationImport', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'onEventImportController', '', 2, 'e65daaed01b2c52e6098ee47ddb7f07a'),
(210, NULL, 100, 'rest', 'onRestApplicationConfigurationFinish', 'landing', '', '\\Bitrix\\Landing\\Transfer\\AppConfiguration', 'onFinish', '', 2, '45343e5617dca2ad06a5d13050232caf'),
(211, NULL, 100, 'socialnetwork', 'onFillSocNetFeaturesList', 'landing', '', '\\Bitrix\\Landing\\Connector\\SocialNetwork', 'onFillSocNetFeaturesList', '', 2, '9825d91c89b53b69655aa98ea4f3a6cf'),
(212, NULL, 100, 'socialnetwork', 'onFillSocNetMenu', 'landing', '', '\\Bitrix\\Landing\\Connector\\SocialNetwork', 'onFillSocNetMenu', '', 2, '14ecfb8fb4fc20f22ddb5ac64783461d'),
(213, NULL, 100, 'socialnetwork', 'onSocNetGroupDelete', 'landing', '', '\\Bitrix\\Landing\\Connector\\SocialNetwork', 'onSocNetGroupDelete', '', 2, '78202f1461a8822a105a19f45502c327'),
(214, NULL, 100, 'socialservices', '\\Bitrix\\Socialservices\\ApTable::OnAfterAdd', 'landing', '', '\\Bitrix\\Landing\\Update\\Block\\NodeAttributes', 'updateFormDomainByConnector', '', 2, '0152997776462d358b5364b794cd205e'),
(215, NULL, 100, 'main', 'OnAfterEpilog', 'messageservice', '', '\\Bitrix\\MessageService\\Queue', 'run', '', 1, '6bcb21b0ccc5ac89d9531ddf8b94683c'),
(216, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestServiceBuildDescription', '', 1, '7524628243223e572590eea87cc03f73'),
(217, NULL, 100, 'rest', 'OnRestAppDelete', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestAppDelete', '', 1, '5febc41cd526ecba95dbb4843dd9c134'),
(218, NULL, 100, 'rest', 'OnRestAppUpdate', 'messageservice', '', '\\Bitrix\\MessageService\\RestService', 'onRestAppUpdate', '', 1, '7e77b4d550c200a4ec06872af7857ee6'),
(219, NULL, 100, 'pull', 'OnGetDependentModule', 'mobileapp', '', 'CMobileAppPullSchema', 'OnGetDependentModule', '', 1, '4833278dbe60d476fbccbaa54545cffa'),
(220, NULL, 100, 'perfmon', 'OnGetTableSchema', 'perfmon', '', 'perfmon', 'OnGetTableSchema', '', 1, '3a4da255b44f05899b64e66a40c12662'),
(221, NULL, 100, 'iblock', 'OnBeforeIBlockElementDelete', 'photogallery', '', 'CPhotogalleryElement', 'OnBeforeIBlockElementDelete', '', 1, 'dc9ea0b8411dfa54929a022d44bc5b1a'),
(222, NULL, 100, 'iblock', 'OnAfterIBlockElementAdd', 'photogallery', '', 'CPhotogalleryElement', 'OnAfterIBlockElementAdd', '', 1, '7fc7f3cc71ad3188022388365d446ed2'),
(223, NULL, 100, 'search', 'BeforeIndex', 'photogallery', '', 'CRatingsComponentsPhotogallery', 'BeforeIndex', '', 1, '06e2330d56c3b972e67707d665383704'),
(224, NULL, 100, 'im', 'OnGetNotifySchema', 'photogallery', '', 'CPhotogalleryNotifySchema', 'OnGetNotifySchema', '', 1, '7ca75249042a033e858d90dc2473adac'),
(225, NULL, 100, 'socialnetwork', 'OnSocNetGroupDelete', 'photogallery', '', '\\Bitrix\\Photogallery\\Integration\\Socialnetwork\\Group', 'onSocNetGroupDelete', '', 1, 'bded61c39d768685fa7dd112c63c702b'),
(226, NULL, 49, 'main', 'OnBeforeProlog', 'rest', '', 'CRestEventHandlers', 'OnBeforeProlog', '', 2, '395c9c42c3cc9392de1e5887617afe6d'),
(227, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', 'CBitrixRestEntity', 'OnRestServiceBuildDescription', '', 2, 'f63068b1eb62c36219518206e1e2827c'),
(228, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\User', 'onRestServiceBuildDescription', '', 2, 'c9a03e9019564649e55f5409b661e050'),
(229, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\Placement', 'onRestServiceBuildDescription', '', 2, '9751a266c2b6f6be5c34b1541bf7c194'),
(230, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\Event', 'onRestServiceBuildDescription', '', 2, '842ad63f19aff6d810059c7e56739aae'),
(231, NULL, 100, 'rest', 'OnRestServiceBuildDescription', 'rest', '', '\\Bitrix\\Rest\\Api\\UserFieldType', 'onRestServiceBuildDescription', '', 2, '4caf68a5256aabe4abef37f24562e59b'),
(232, NULL, 100, 'rest', 'onFindMethodDescription', 'rest', '', '\\Bitrix\\Rest\\Engine\\RestManager', 'onFindMethodDescription', '', 2, '4d0614f880674af333326dd5ba9b2828'),
(233, NULL, 100, 'main', 'OnApplicationsBuildList', 'main', 'modules/rest/lib/apauth/application.php', '\\Bitrix\\Rest\\APAuth\\Application', 'onApplicationsBuildList', '', 2, '9c39129872987f8dcc8baacc0c446ed7'),
(234, NULL, 100, 'im', 'OnAfterConfirmNotify', 'rest', '', '\\Bitrix\\Rest\\NotifyIm', 'receive', '', 2, '2ac9c19fe69d4e106deaa6f4a7a4371b'),
(235, NULL, 100, 'rest', '\\Bitrix\\Rest\\APAuth\\Password::OnDelete', 'rest', '', '\\Bitrix\\Rest\\APAuth\\PermissionTable', 'onPasswordDelete', '', 2, 'f04447ca635f045ec1a64e593964fc90'),
(236, NULL, 100, 'perfmon', 'OnGetTableSchema', 'rest', '', 'rest', 'OnGetTableSchema', '', 2, '47a76003c8f9f2d8c820f446e084ff39'),
(237, NULL, 100, 'rest', 'OnRestApplicationConfigurationImport', 'rest', '', '\\Bitrix\\Rest\\Configuration\\AppConfiguration', 'onEventImportController', '', 2, '3fc1dd7e523b33f9d76c19e54d45c2fb'),
(238, NULL, 100, 'rest', 'OnRestApplicationConfigurationExport', 'rest', '', '\\Bitrix\\Rest\\Configuration\\AppConfiguration', 'onEventExportController', '', 2, 'b90a349060c693506b740c4d36f75f5f'),
(239, NULL, 100, 'rest', 'OnRestApplicationConfigurationClear', 'rest', '', '\\Bitrix\\Rest\\Configuration\\AppConfiguration', 'onEventClearController', '', 2, '75dccda637a740c033b2d014a84a8009'),
(240, NULL, 100, 'rest', 'OnRestApplicationConfigurationEntity', 'rest', '', '\\Bitrix\\Rest\\Configuration\\AppConfiguration', 'getEntityList', '', 2, '8d83d219eaf2f415d55fb67e221b7c3d'),
(241, NULL, 100, 'rest', 'OnRestApplicationConfigurationGetManifest', 'rest', '', '\\Bitrix\\Rest\\Configuration\\AppConfiguration', 'getManifestList', '', 2, '6ba35b1f4b01d1e358e1b3a79ac437d6'),
(242, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\OAuth\\Auth', 'onRestCheckAuth', '', 2, '70e923729089b8cba69bb3b4311da11e'),
(243, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\APAuth\\Auth', 'onRestCheckAuth', '', 2, '3550e6c95772564101770e0c9cb54470'),
(244, NULL, 100, 'rest', 'onRestCheckAuth', 'rest', '', '\\Bitrix\\Rest\\SessionAuth\\Auth', 'onRestCheckAuth', '', 2, '8e33ae5a47b59d21df7d26f916d19e38'),
(245, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'scale', '', '\\Bitrix\\Scale\\Logger', 'onEventLogGetAuditTypes', '', 1, 'd8192b7113f1652bdf8a37bcd4e38dea'),
(246, NULL, 100, 'main', 'OnChangePermissions', 'search', '', 'CSearch', 'OnChangeFilePermissions', '', 1, '1c37aedc2ec89f94624291d097fe7adf'),
(247, NULL, 100, 'main', 'OnChangeFile', 'search', '', 'CSearch', 'OnChangeFile', '', 1, 'd51170fc3433fde7eab8edc1c2b933a0'),
(248, NULL, 100, 'main', 'OnGroupDelete', 'search', '', 'CSearch', 'OnGroupDelete', '', 1, '05382d7448b1ba259b89bf9e87e4eb44'),
(249, NULL, 100, 'main', 'OnLangDelete', 'search', '', 'CSearch', 'OnLangDelete', '', 1, '15ebda82514af5a966b3466cd26992a4'),
(250, NULL, 100, 'main', 'OnAfterUserUpdate', 'search', '', 'CSearchUser', 'OnAfterUserUpdate', '', 1, '9e0cea5039973193afc706ec8978d674'),
(251, NULL, 100, 'main', 'OnUserDelete', 'search', '', 'CSearchUser', 'DeleteByUserID', '', 1, '524a910f381ba144bf50caa152222ed6'),
(252, NULL, 100, 'cluster', 'OnGetTableList', 'search', '', 'search', 'OnGetTableList', '', 1, 'a40ffd36df151e2c0294b5639e81d665'),
(253, NULL, 100, 'perfmon', 'OnGetTableSchema', 'search', '', 'search', 'OnGetTableSchema', '', 1, '9c8df2577e0cb80c68afa2030e193efb'),
(254, NULL, 90, 'main', 'OnEpilog', 'search', '', 'CSearchStatistic', 'OnEpilog', '', 1, '6b3591ad78ac2a3ce6ad411f0aff47fe'),
(255, NULL, 100, 'main', 'OnUserDelete', 'security', '', 'CSecurityUser', 'OnUserDelete', '', 1, '450a1c7509f5363a9bf7d1472f22f9cf'),
(256, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'security', '', 'CSecurityFilter', 'GetAuditTypes', '', 1, '893bc94df887141b4f3579561ea37454'),
(257, NULL, 100, 'main', 'OnEventLogGetAuditTypes', 'security', '', 'CSecurityAntiVirus', 'GetAuditTypes', '', 1, '9ba919b0537aa25fe47e438c2428b4d9'),
(258, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'security', '', 'CSecurityFilter', 'OnAdminInformerInsertItems', '', 1, 'c751923f396ccc4e102ed17e97cb8afb'),
(259, NULL, 100, 'main', 'OnAdminInformerInsertItems', 'security', '', 'CSecuritySiteChecker', 'OnAdminInformerInsertItems', '', 1, '0c7cea553d58a72f7c5521d282898bc7'),
(260, NULL, 5, 'main', 'OnBeforeProlog', 'security', '', 'CSecurityFilter', 'OnBeforeProlog', '', 1, 'bb70fedd18267b1c5290068ae80dbc4d'),
(261, NULL, 9999, 'main', 'OnEndBufferContent', 'security', '', 'CSecurityXSSDetect', 'OnEndBufferContent', '', 1, 'd1886589ecd51b020420e6c1415edeaf'),
(262, NULL, 1, 'main', 'OnBeforeLocalRedirect', 'security', '', 'CSecurityRedirect', 'BeforeLocalRedirect', '', 1, '2dbeb7fa7a8bec4d90e8940616976b3d'),
(263, NULL, 1, 'main', 'OnEndBufferContent', 'security', '', 'CSecurityRedirect', 'EndBufferContent', '', 1, '099871646b4df8c1263e26f9bd91f3bd'),
(264, NULL, 100, 'main', 'OnPanelCreate', 'seo', '', 'CSeoEventHandlers', 'SeoOnPanelCreate', '', 2, '79688b0b4a106b805d09e63ffe88f580'),
(265, NULL, 100, 'fileman', 'OnIncludeHTMLEditorScript', 'seo', '', 'CSeoEventHandlers', 'OnIncludeHTMLEditorScript', '', 2, '7995eac5813e40f6b3e82b146631397e'),
(266, NULL, 100, 'fileman', 'OnBeforeHTMLEditorScriptRuns', 'seo', '', 'CSeoEventHandlers', 'OnBeforeHTMLEditorScriptRuns', '', 2, '313b34609f1fa34d34cde1c2103c09ff'),
(267, NULL, 100, 'iblock', 'OnAfterIBlockSectionAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addSection', '', 2, 'c61de21b0b0873525fa5c39427324664'),
(268, NULL, 100, 'iblock', 'OnAfterIBlockElementAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addElement', '', 2, '1b167ab85d6d744bba456e559546f13e'),
(269, NULL, 100, 'iblock', 'OnBeforeIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteSection', '', 2, '148ce014df9dd9f99f17ebfc5d766e8a'),
(270, NULL, 100, 'iblock', 'OnBeforeIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteElement', '', 2, '4b1e9896d9f0aa37a7039a321f25f9a5'),
(271, NULL, 100, 'iblock', 'OnAfterIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteSection', '', 2, 'b699c1c0d6665f9cffe7ff76ab108a24'),
(272, NULL, 100, 'iblock', 'OnAfterIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteElement', '', 2, 'ff3a36654015c53890f4cf2204b030c4'),
(273, NULL, 100, 'iblock', 'OnBeforeIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateSection', '', 2, 'aa5f8c360ed88eb5e2884c57b6f1f2f3'),
(274, NULL, 100, 'iblock', 'OnBeforeIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateElement', '', 2, 'a1022e0619263c0e91139fb3f9837085'),
(275, NULL, 100, 'iblock', 'OnAfterIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateSection', '', 2, '27930cffcd40b84666d0a22e1a953c41'),
(276, NULL, 100, 'iblock', 'OnAfterIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateElement', '', 2, 'f0151e07363564774d45acba4100aebe'),
(277, NULL, 100, 'forum', 'onAfterTopicAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'addTopic', '', 2, 'd4d54756116942c9ee0bda9b31e9d0e7'),
(278, NULL, 100, 'forum', 'onAfterTopicUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'updateTopic', '', 2, '3e0a8569016a4c941f3eb4aa9fca6e8b'),
(279, NULL, 100, 'forum', 'onAfterTopicDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'deleteTopic', '', 2, '7f4379c818231561b41589d3de41e36b'),
(280, NULL, 100, 'main', 'OnAdminIBlockElementEdit', 'seo', '', '\\Bitrix\\Seo\\AdvTabEngine', 'eventHandler', '', 2, 'c894d167ef03c35375b8eb8f2551a798'),
(281, NULL, 100, 'main', 'OnBeforeProlog', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'checkSession', '', 2, '5fdf8dd9fd70719e442efcb589175bf0'),
(282, NULL, 100, 'sale', 'OnOrderSave', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onOrderSave', '', 2, '07d4ab0b1aa0aa130a0cbc06403f6eae'),
(283, NULL, 100, 'sale', 'OnBasketOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onBasketOrder', '', 2, 'cf6298b090e92e955b32c358c1d14b25'),
(284, NULL, 100, 'sale', 'onSalePayOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSalePayOrder', '', 2, '745afed820778e33d5cd3e91cbd622f1'),
(285, NULL, 100, 'sale', 'onSaleDeductOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeductOrder', '', 2, '12861bd5c6c27ffa2abe5cac90ea58d8'),
(286, NULL, 100, 'sale', 'onSaleDeliveryOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeliveryOrder', '', 2, 'ead8fb64fece572d1fabd3d6fd27af27'),
(287, NULL, 100, 'sale', 'onSaleStatusOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleStatusOrder', '', 2, 'b7b9ac4bbf458d433e1cf3835ff4cb6c'),
(288, NULL, 100, 'conversion', 'OnSetDayContextAttributes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onSetDayContextAttributes', '', 2, 'c19eb7659342fabc34b953f69e8b9eee'),
(289, NULL, 100, 'conversion', 'OnGetAttributeTypes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onGetAttributeTypes', '', 2, '379294eefad289e474bf0c5ce2a281d8'),
(290, NULL, 100, 'catalog', 'OnProductUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2, '0f4deda4d57adb4389d85a19e5bbcf2b'),
(291, NULL, 100, 'catalog', 'OnProductSetAvailableUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2, '3d040ae51f0f6a4b2a08be0e6e1494d4'),
(292, NULL, 100, 'main', 'OnUserDelete', 'socialservices', '', 'CSocServAuthDB', 'OnUserDelete', '', 1, '1f5b8fc024dfdf83952d6c723466cdf5'),
(293, NULL, 100, 'timeman', 'OnAfterTMReportDailyAdd', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMReportDailyAdd', '', 1, 'a16159f6a90f1b67cb9ec15b0c1bab3a'),
(294, NULL, 100, 'timeman', 'OnAfterTMDayStart', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMDayStart', '', 1, '9567feb38890d6581a3204dc5e65e8b6'),
(295, NULL, 100, 'timeman', 'OnTimeManShow', 'socialservices', '', 'CSocServEventHandlers', 'OnTimeManShow', '', 1, 'b728f3cea11d374f7638c29f84e8e15e'),
(296, NULL, 100, 'main', 'OnFindExternalUser', 'socialservices', '', 'CSocServAuthDB', 'OnFindExternalUser', '', 1, '1ab251d15efc87c5b5cfe6396f5dec1b'),
(297, NULL, 100, 'perfmon', 'OnGetTableSchema', 'socialservices', '', 'socialservices', 'OnGetTableSchema', '', 1, '56107bf1a0dcee0db660c0ec27c31c6c'),
(298, NULL, 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkOldUser', '', 1, 'c3d7460e4ef694f5bc53b6a6ad902407'),
(299, NULL, 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkAbandonedUser', '', 1, '331f99f0b265544c33777c299eab16f6'),
(300, NULL, 100, 'main', 'OnBeforeLangDelete', 'subscribe', '', 'CRubric', 'OnBeforeLangDelete', '', 1, 'ee539731a3e52fe65cb52596ce0856d2'),
(301, NULL, 100, 'main', 'OnUserDelete', 'subscribe', '', 'CSubscription', 'OnUserDelete', '', 1, '88c6e57a6f0f18341332db1879c0005b'),
(302, NULL, 100, 'main', 'OnUserLogout', 'subscribe', '', 'CSubscription', 'OnUserLogout', '', 1, 'f4fa3b156b00fb4415c8612f8439f278'),
(303, NULL, 100, 'main', 'OnGroupDelete', 'subscribe', '', 'CPosting', 'OnGroupDelete', '', 1, '990d63845f75e93e670ed85f1aa15152'),
(304, NULL, 100, 'sender', 'OnConnectorList', 'subscribe', '', 'Bitrix\\Subscribe\\SenderEventHandler', 'onConnectorListSubscriber', '', 1, '8a1cffe1bd46a72108e48656a1bae99b'),
(305, NULL, 100, 'perfmon', 'OnGetTableSchema', 'subscribe', '', 'subscribe', 'OnGetTableSchema', '', 1, '320b1fb657ce46ad23992d00b2f54916'),
(306, NULL, 100, 'main', 'OnPanelCreate', 'translate', '', '\\Bitrix\\Translate\\Ui\\Panel', 'onPanelCreate', '', 1, '88ecb95eac2e28b80f234bfc8c1cd597'),
(307, NULL, 100, 'perfmon', 'OnGetTableSchema', 'translate', '', 'translate', 'onGetTableSchema', '', 1, '00347f45b2f48480b1a521c32036beb5'),
(310, NULL, 10, 'main', 'OnBeforeProlog', 'main', '/modules/vote/keepvoting.php', '', '', '', 1, '251d4d100c1545ca5847d8d6d626dea9'),
(311, NULL, 200, 'main', 'OnUserTypeBuildList', 'vote', '', 'Bitrix\\Vote\\Uf\\VoteUserType', 'getUserTypeDescription', '', 1, 'e30dd2d26df22ce2dcffef84256cf160'),
(312, NULL, 200, 'main', 'OnUserLogin', 'vote', '', 'Bitrix\\Vote\\User', 'onUserLogin', '', 1, '5047b245af7aede3f2474b40dfbc65be'),
(313, NULL, 100, 'im', 'OnGetNotifySchema', 'vote', '', 'CVoteNotifySchema', 'OnGetNotifySchema', '', 1, '97ffe9642e64dc7d68f9ec9bc789be47'),
(314, NULL, 100, 'main', 'OnBeforeProlog', 'main', '/modules/main/install/wizard_sol/panel_button.php', 'CWizardSolPanel', 'ShowPanel', '', 1, 'bbd7b8c1e518a0b3eae815eb91a95c11');

-- --------------------------------------------------------

--
-- Структура таблицы `b_numerator`
--

CREATE TABLE `b_numerator` (
  `ID` int(10) UNSIGNED NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CREATED_AT` datetime DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_numerator_sequence`
--

CREATE TABLE `b_numerator_sequence` (
  `NUMERATOR_ID` int(11) NOT NULL DEFAULT '0',
  `KEY` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `TEXT_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NEXT_NUMBER` int(11) DEFAULT NULL,
  `LAST_INVOCATION_TIME` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_operation`
--

CREATE TABLE `b_operation` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_operation`
--

INSERT INTO `b_operation` (`ID`, `NAME`, `MODULE_ID`, `DESCRIPTION`, `BINDING`) VALUES
(1, 'edit_php', 'main', NULL, 'module'),
(2, 'view_own_profile', 'main', NULL, 'module'),
(3, 'edit_own_profile', 'main', NULL, 'module'),
(4, 'view_all_users', 'main', NULL, 'module'),
(5, 'view_groups', 'main', NULL, 'module'),
(6, 'view_tasks', 'main', NULL, 'module'),
(7, 'view_other_settings', 'main', NULL, 'module'),
(8, 'view_subordinate_users', 'main', NULL, 'module'),
(9, 'edit_subordinate_users', 'main', NULL, 'module'),
(10, 'edit_all_users', 'main', NULL, 'module'),
(11, 'edit_groups', 'main', NULL, 'module'),
(12, 'edit_tasks', 'main', NULL, 'module'),
(13, 'edit_other_settings', 'main', NULL, 'module'),
(14, 'cache_control', 'main', NULL, 'module'),
(15, 'lpa_template_edit', 'main', NULL, 'module'),
(16, 'view_event_log', 'main', NULL, 'module'),
(17, 'edit_ratings', 'main', NULL, 'module'),
(18, 'manage_short_uri', 'main', NULL, 'module'),
(19, 'fm_view_permission', 'main', NULL, 'file'),
(20, 'fm_view_file', 'main', NULL, 'file'),
(21, 'fm_view_listing', 'main', NULL, 'file'),
(22, 'fm_edit_existent_folder', 'main', NULL, 'file'),
(23, 'fm_create_new_file', 'main', NULL, 'file'),
(24, 'fm_edit_existent_file', 'main', NULL, 'file'),
(25, 'fm_create_new_folder', 'main', NULL, 'file'),
(26, 'fm_delete_file', 'main', NULL, 'file'),
(27, 'fm_delete_folder', 'main', NULL, 'file'),
(28, 'fm_edit_in_workflow', 'main', NULL, 'file'),
(29, 'fm_rename_file', 'main', NULL, 'file'),
(30, 'fm_rename_folder', 'main', NULL, 'file'),
(31, 'fm_upload_file', 'main', NULL, 'file'),
(32, 'fm_add_to_menu', 'main', NULL, 'file'),
(33, 'fm_download_file', 'main', NULL, 'file'),
(34, 'fm_lpa', 'main', NULL, 'file'),
(35, 'fm_edit_permission', 'main', NULL, 'file'),
(36, 'bitrixcloud_monitoring', 'bitrixcloud', NULL, 'module'),
(37, 'bitrixcloud_backup', 'bitrixcloud', NULL, 'module'),
(38, 'bitrixcloud_cdn', 'bitrixcloud', NULL, 'module'),
(39, 'clouds_browse', 'clouds', NULL, 'module'),
(40, 'clouds_upload', 'clouds', NULL, 'module'),
(41, 'clouds_config', 'clouds', NULL, 'module'),
(42, 'fileman_view_all_settings', 'fileman', '', 'module'),
(43, 'fileman_edit_menu_types', 'fileman', '', 'module'),
(44, 'fileman_add_element_to_menu', 'fileman', '', 'module'),
(45, 'fileman_edit_menu_elements', 'fileman', '', 'module'),
(46, 'fileman_edit_existent_files', 'fileman', '', 'module'),
(47, 'fileman_edit_existent_folders', 'fileman', '', 'module'),
(48, 'fileman_admin_files', 'fileman', '', 'module'),
(49, 'fileman_admin_folders', 'fileman', '', 'module'),
(50, 'fileman_view_permissions', 'fileman', '', 'module'),
(51, 'fileman_edit_all_settings', 'fileman', '', 'module'),
(52, 'fileman_upload_files', 'fileman', '', 'module'),
(53, 'fileman_view_file_structure', 'fileman', '', 'module'),
(54, 'fileman_install_control', 'fileman', '', 'module'),
(55, 'medialib_view_collection', 'fileman', '', 'medialib'),
(56, 'medialib_new_collection', 'fileman', '', 'medialib'),
(57, 'medialib_edit_collection', 'fileman', '', 'medialib'),
(58, 'medialib_del_collection', 'fileman', '', 'medialib'),
(59, 'medialib_access', 'fileman', '', 'medialib'),
(60, 'medialib_new_item', 'fileman', '', 'medialib'),
(61, 'medialib_edit_item', 'fileman', '', 'medialib'),
(62, 'medialib_del_item', 'fileman', '', 'medialib'),
(63, 'sticker_view', 'fileman', '', 'stickers'),
(64, 'sticker_edit', 'fileman', '', 'stickers'),
(65, 'sticker_new', 'fileman', '', 'stickers'),
(66, 'sticker_del', 'fileman', '', 'stickers'),
(67, 'hl_element_read', 'highloadblock', NULL, 'module'),
(68, 'hl_element_write', 'highloadblock', NULL, 'module'),
(69, 'hl_element_delete', 'highloadblock', NULL, 'module'),
(70, 'section_read', 'iblock', NULL, 'iblock'),
(71, 'element_read', 'iblock', NULL, 'iblock'),
(72, 'section_element_bind', 'iblock', NULL, 'iblock'),
(73, 'iblock_admin_display', 'iblock', NULL, 'iblock'),
(74, 'element_edit', 'iblock', NULL, 'iblock'),
(75, 'element_edit_price', 'iblock', NULL, 'iblock'),
(76, 'element_delete', 'iblock', NULL, 'iblock'),
(77, 'element_bizproc_start', 'iblock', NULL, 'iblock'),
(78, 'section_edit', 'iblock', NULL, 'iblock'),
(79, 'section_delete', 'iblock', NULL, 'iblock'),
(80, 'section_section_bind', 'iblock', NULL, 'iblock'),
(81, 'element_edit_any_wf_status', 'iblock', NULL, 'iblock'),
(82, 'iblock_edit', 'iblock', NULL, 'iblock'),
(83, 'iblock_delete', 'iblock', NULL, 'iblock'),
(84, 'iblock_rights_edit', 'iblock', NULL, 'iblock'),
(85, 'iblock_export', 'iblock', NULL, 'iblock'),
(86, 'section_rights_edit', 'iblock', NULL, 'iblock'),
(87, 'element_rights_edit', 'iblock', NULL, 'iblock'),
(88, 'landing_read', 'landing', NULL, 'module'),
(89, 'landing_edit', 'landing', NULL, 'module'),
(90, 'landing_sett', 'landing', NULL, 'module'),
(91, 'landing_public', 'landing', NULL, 'module'),
(92, 'landing_delete', 'landing', NULL, 'module'),
(93, 'security_filter_bypass', 'security', NULL, 'module'),
(94, 'security_edit_user_otp', 'security', NULL, 'module'),
(95, 'security_module_settings_read', 'security', NULL, 'module'),
(96, 'security_panel_view', 'security', NULL, 'module'),
(97, 'security_filter_settings_read', 'security', NULL, 'module'),
(98, 'security_otp_settings_read', 'security', NULL, 'module'),
(99, 'security_iprule_admin_settings_read', 'security', NULL, 'module'),
(100, 'security_session_settings_read', 'security', NULL, 'module'),
(101, 'security_redirect_settings_read', 'security', NULL, 'module'),
(102, 'security_stat_activity_settings_read', 'security', NULL, 'module'),
(103, 'security_iprule_settings_read', 'security', NULL, 'module'),
(104, 'security_antivirus_settings_read', 'security', NULL, 'module'),
(105, 'security_frame_settings_read', 'security', NULL, 'module'),
(106, 'security_module_settings_write', 'security', NULL, 'module'),
(107, 'security_filter_settings_write', 'security', NULL, 'module'),
(108, 'security_otp_settings_write', 'security', NULL, 'module'),
(109, 'security_iprule_admin_settings_write', 'security', NULL, 'module'),
(110, 'security_session_settings_write', 'security', NULL, 'module'),
(111, 'security_redirect_settings_write', 'security', NULL, 'module'),
(112, 'security_stat_activity_settings_write', 'security', NULL, 'module'),
(113, 'security_iprule_settings_write', 'security', NULL, 'module'),
(114, 'security_file_verifier_sign', 'security', NULL, 'module'),
(115, 'security_file_verifier_collect', 'security', NULL, 'module'),
(116, 'security_file_verifier_verify', 'security', NULL, 'module'),
(117, 'security_antivirus_settings_write', 'security', NULL, 'module'),
(118, 'security_frame_settings_write', 'security', NULL, 'module'),
(119, 'seo_settings', 'seo', '', 'module'),
(120, 'seo_tools', 'seo', '', 'module');

-- --------------------------------------------------------

--
-- Структура таблицы `b_option`
--

CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_option`
--

INSERT INTO `b_option` (`MODULE_ID`, `NAME`, `VALUE`, `DESCRIPTION`, `SITE_ID`) VALUES
('blog', 'socNetNewPerms', 'Y', NULL, NULL),
('fileman', '~allowed_components', '', NULL, NULL),
('fileman', '~script_files', 'php,php3,php4,php5,php6,phtml,pl,asp,aspx,cgi,exe,ico,shtm,shtml', NULL, NULL),
('fileman', 'ar_entities', 'none', NULL, NULL),
('fileman', 'archive_step_time', '30', NULL, NULL),
('fileman', 'default_edit', 'text', NULL, NULL),
('fileman', 'default_edit_groups', '', NULL, NULL),
('fileman', 'different_set', 'N', NULL, NULL),
('fileman', 'editor_body_class', '', NULL, NULL),
('fileman', 'editor_body_id', '', NULL, NULL),
('fileman', 'google_map_api_key', '', NULL, NULL),
('fileman', 'GROUP_DEFAULT_RIGHT', 'D', NULL, NULL),
('fileman', 'GROUP_DEFAULT_TASK', '18', NULL, NULL),
('fileman', 'hide_physical_struc', '', NULL, NULL),
('fileman', 'log_menu', 'Y', NULL, NULL),
('fileman', 'log_page', 'Y', NULL, NULL),
('fileman', 'menutypes', 'a:2:{s:3:\\\"top\\\";s:23:\\\"Верхнее меню\\\";s:6:\\\"bottom\\\";s:21:\\\"Нижнее меню\\\";}', NULL, NULL),
('fileman', 'ml_max_height', '1024', NULL, NULL),
('fileman', 'ml_max_width', '1024', NULL, NULL),
('fileman', 'ml_media_available_ext', 'jpg,jpeg,gif,png,flv,mp4,wmv,wma,mp3,ppt,aac', NULL, NULL),
('fileman', 'ml_media_extentions', 'jpg,jpeg,gif,png,flv,mp4,wmv,wma,mp3,ppt', NULL, NULL),
('fileman', 'ml_thumb_height', '105', NULL, NULL),
('fileman', 'ml_thumb_width', '140', NULL, NULL),
('fileman', 'ml_use_default', '1', NULL, NULL),
('fileman', 'num_menu_param', '1', NULL, NULL),
('fileman', 'propstypes', 'a:2:{s:11:\\\"description\\\";s:16:\\\"Описание\\\";s:8:\\\"keywords\\\";s:27:\\\"Ключевые слова\\\";}', NULL, NULL),
('fileman', 'replace_new_lines', 'Y', NULL, NULL),
('fileman', 'search_mask', '*.php', NULL, NULL),
('fileman', 'search_max_open_file_size', '1024', NULL, NULL),
('fileman', 'search_max_res_count', '', NULL, NULL),
('fileman', 'search_time_step', '5', NULL, NULL),
('fileman', 'show_inc_icons', 'N', NULL, NULL),
('fileman', 'stickers_use_hotkeys', 'N', NULL, NULL),
('fileman', 'use_code_editor', 'Y', NULL, NULL),
('fileman', 'use_custom_spell', 'N', NULL, NULL),
('fileman', 'use_editor_3', 'Y', NULL, NULL),
('fileman', 'use_medialib', 'Y', NULL, NULL),
('fileman', 'use_pspell', 'N', NULL, NULL),
('fileman', 'use_separeted_dics', 'N', NULL, NULL),
('fileman', 'use_translit', '1', NULL, NULL),
('fileman', 'use_translit_google', '1', NULL, NULL),
('fileman', 'user_dics_path', '/bitrix/modules/fileman/u_dics', NULL, NULL),
('fileman', 'yandex_map_api_key', '434afd04-4453-4350-b244-8aeb6bfc2605', NULL, NULL),
('forum', 'FILTER', 'N', NULL, NULL),
('landing', 'pub_path_s1', '/lp/', NULL, NULL),
('main', '~crypto_b_socialservices_user', 'a:2:{s:7:\"OATOKEN\";b:1;s:13:\"REFRESH_TOKEN\";b:1;}', NULL, NULL),
('main', '~crypto_b_user_auth_code', 'a:1:{s:10:\"OTP_SECRET\";b:1;}', NULL, NULL),
('main', '~crypto_b_user_phone_auth', 'a:1:{s:10:\"OTP_SECRET\";b:1;}', NULL, NULL),
('main', '~new_license11_sign', 'Y', NULL, NULL),
('main', '~update_autocheck_result', 'a:4:{s:10:\"check_date\";i:1605114799;s:6:\"result\";b:0;s:5:\"error\";s:0:\"\";s:7:\"modules\";a:0:{}}', NULL, NULL),
('main', 'admin_lid', 'ru', NULL, NULL),
('main', 'admin_passwordh', 'FVkQemYUBwUtCUVcBxcGCgsTAQ==', NULL, NULL),
('main', 'captcha_password', '9gTj2BaMzE', NULL, NULL),
('main', 'component_cache_on', 'N', NULL, NULL),
('main', 'component_managed_cache_on', 'N', NULL, NULL),
('main', 'control_file_duplicates', 'Y', NULL, NULL),
('main', 'distributive6', 'Y', NULL, NULL),
('main', 'email_from', 'admin@mail.ru', NULL, NULL),
('main', 'GROUP_DEFAULT_TASK', '1', NULL, NULL),
('main', 'last_mp_modules_result', 'a:4:{s:10:\"check_date\";i:1607021139;s:13:\"update_module\";a:0:{}s:10:\"end_update\";a:0:{}s:10:\"new_module\";a:0:{}}', NULL, NULL),
('main', 'optimize_css_files', 'Y', NULL, NULL),
('main', 'optimize_js_files', 'Y', NULL, NULL),
('main', 'PARAM_MAX_SITES', '2', NULL, NULL),
('main', 'PARAM_MAX_USERS', '0', NULL, NULL),
('main', 'rating_assign_authority_group', '4', NULL, NULL),
('main', 'rating_assign_authority_group_add', '2', NULL, NULL),
('main', 'rating_assign_authority_group_delete', '2', NULL, NULL),
('main', 'rating_assign_rating_group', '3', NULL, NULL),
('main', 'rating_assign_rating_group_add', '1', NULL, NULL),
('main', 'rating_assign_rating_group_delete', '1', NULL, NULL),
('main', 'rating_assign_type', 'auto', NULL, NULL),
('main', 'rating_authority_rating', '2', NULL, NULL),
('main', 'rating_authority_weight_formula', 'Y', NULL, NULL),
('main', 'rating_community_authority', '30', NULL, NULL),
('main', 'rating_community_last_visit', '90', NULL, NULL),
('main', 'rating_community_size', '1', NULL, NULL),
('main', 'rating_count_vote', '10', NULL, NULL),
('main', 'rating_normalization', '10', NULL, NULL),
('main', 'rating_normalization_type', 'auto', NULL, NULL),
('main', 'rating_self_vote', 'Y', NULL, NULL),
('main', 'rating_start_authority', '3', NULL, NULL),
('main', 'rating_text_like_d', 'Это нравится', NULL, NULL),
('main', 'rating_text_like_n', 'Не нравится', NULL, NULL),
('main', 'rating_text_like_y', 'Нравится', NULL, NULL),
('main', 'rating_vote_show', 'Y', NULL, NULL),
('main', 'rating_vote_template', 'like', NULL, NULL),
('main', 'rating_vote_type', 'like', NULL, NULL),
('main', 'rating_vote_weight', '10', NULL, NULL),
('main', 'server_uniq_id', '19734f396ecae42e878e04a6aefa6536', NULL, NULL),
('main', 'signer_default_key', '4d1dbc6d37ece6089549152c47f2f2bb35693cf33ad792a3d215ebb4e4be43caba8f857be1e9cf2239f37d84de0495f086e4245d05de46ec46ff97ad6fd5a32e', NULL, NULL),
('main', 'site_checker_success', 'N', NULL, NULL),
('main', 'smile_gallery_id', '1', NULL, NULL),
('main', 'update_site', 'www.bitrixsoft.com', NULL, NULL),
('main', 'update_site_ns', 'Y', NULL, NULL),
('main', 'vendor', '1c_bitrix', NULL, NULL),
('messageservice', 'clean_up_period', '14', NULL, NULL),
('rest', 'entity_iblock_type', 'rest_entity', NULL, NULL),
('rest', 'server_path', '/rest', NULL, NULL),
('search', 'dbnode_id', 'N', NULL, NULL),
('search', 'dbnode_status', 'ok', NULL, NULL),
('search', 'version', 'v2.0', NULL, NULL),
('security', 'ipcheck_disable_file', '/bitrix/modules/ipcheck_disable_58a5227e8562ed6d99ba67915b0af2e0', NULL, NULL),
('security', 'redirect_sid', 'lyb8r2gdykelkr64s3ge1558jwbo04f5', NULL, NULL),
('socialservices', 'allow_encrypted_tokens', '1', NULL, NULL),
('socialservices', 'bitrix24net_domain', 'http://wecoders.loc', NULL, NULL),
('socialservices', 'bitrix24net_id', 'ext.5fac1b7d1819b9.69573282', NULL, NULL),
('socialservices', 'bitrix24net_secret', 'gacwyN8AzsvJLVbo8LEkbJ8AqRagYlv0HllqPLBeqfIMbTashS', NULL, NULL),
('vote', 'VOTE_COMPATIBLE_OLD_TEMPLATE', 'N', NULL, NULL),
('vote', 'VOTE_DIR', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_option_site`
--

CREATE TABLE `b_option_site` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_option_site`
--

INSERT INTO `b_option_site` (`MODULE_ID`, `NAME`, `SITE_ID`, `VALUE`) VALUES
('forum', 'FILTER_DICT_T', 'en', '4'),
('forum', 'FILTER_DICT_T', 'ru', '2'),
('forum', 'FILTER_DICT_W', 'en', '3'),
('forum', 'FILTER_DICT_W', 'ru', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_cache`
--

CREATE TABLE `b_perf_cache` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `BASE_DIR` text COLLATE utf8_unicode_ci,
  `INIT_DIR` text COLLATE utf8_unicode_ci,
  `FILE_NAME` text COLLATE utf8_unicode_ci,
  `FILE_PATH` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_cluster`
--

CREATE TABLE `b_perf_cluster` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_component`
--

CREATE TABLE `b_perf_component` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_error`
--

CREATE TABLE `b_perf_error` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text COLLATE utf8_unicode_ci,
  `ERRFILE` text COLLATE utf8_unicode_ci,
  `ERRLINE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_history`
--

CREATE TABLE `b_perf_history` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_hit`
--

CREATE TABLE `b_perf_hit` (
  `ID` int(11) NOT NULL,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_ban`
--

CREATE TABLE `b_perf_index_ban` (
  `ID` int(11) NOT NULL,
  `BAN_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_complete`
--

CREATE TABLE `b_perf_index_complete` (
  `ID` int(11) NOT NULL,
  `BANNED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_suggest`
--

CREATE TABLE `b_perf_index_suggest` (
  `ID` int(11) NOT NULL,
  `SQL_MD5` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci,
  `SQL_EXPLAIN` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_index_suggest_sql`
--

CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL DEFAULT '0',
  `SQL_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_sql`
--

CREATE TABLE `b_perf_sql` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `SQL_TEXT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_sql_backtrace`
--

CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL DEFAULT '0',
  `NN` int(18) NOT NULL DEFAULT '0',
  `FILE_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_tab_column_stat`
--

CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_tab_stat`
--

CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_perf_test`
--

CREATE TABLE `b_perf_test` (
  `ID` int(18) NOT NULL,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_posting`
--

CREATE TABLE `b_posting` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `VERSION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `SENT_BCC` mediumtext COLLATE utf8_unicode_ci,
  `FROM_FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BCC_FIELD` mediumtext COLLATE utf8_unicode_ci,
  `EMAIL_FILTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BODY` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `DIRECT_SEND` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CHARSET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MSG_CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBSCR_FORMAT` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_EMAIL` mediumtext COLLATE utf8_unicode_ci,
  `AUTO_SEND_TIME` datetime DEFAULT NULL,
  `BCC_TO_SEND` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_posting_email`
--

CREATE TABLE `b_posting_email` (
  `ID` int(11) NOT NULL,
  `POSTING_ID` int(11) NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SUBSCRIPTION_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_posting_file`
--

CREATE TABLE `b_posting_file` (
  `POSTING_ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_posting_group`
--

CREATE TABLE `b_posting_group` (
  `POSTING_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_posting_rubric`
--

CREATE TABLE `b_posting_rubric` (
  `POSTING_ID` int(11) NOT NULL,
  `LIST_RUBRIC_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating`
--

CREATE TABLE `b_rating` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating`
--

INSERT INTO `b_rating` (`ID`, `ACTIVE`, `NAME`, `ENTITY_ID`, `CALCULATION_METHOD`, `CREATED`, `LAST_MODIFIED`, `LAST_CALCULATED`, `POSITION`, `AUTHORITY`, `CALCULATED`, `CONFIGS`) VALUES
(1, 'N', 'Рейтинг', 'USER', 'SUM', '2020-11-11 20:11:32', NULL, NULL, 'Y', 'N', 'N', 'a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:16:\"TODAY_TOPIC_COEF\";s:3:\"0.4\";s:15:\"WEEK_TOPIC_COEF\";s:3:\"0.2\";s:16:\"MONTH_TOPIC_COEF\";s:3:\"0.1\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.2\";s:14:\"WEEK_POST_COEF\";s:3:\"0.1\";s:15:\"MONTH_POST_COEF\";s:4:\"0.05\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.5\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:3:\"0.1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:9:{s:6:\"ACTIVE\";s:1:\"Y\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}'),
(2, 'N', 'Авторитет', 'USER', 'SUM', '2020-11-11 20:11:32', NULL, NULL, 'Y', 'Y', 'N', 'a:3:{s:4:\"MAIN\";a:2:{s:4:\"VOTE\";a:1:{s:4:\"USER\";a:3:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:1:\"0\";}}s:6:\"RATING\";a:1:{s:5:\"BONUS\";a:2:{s:6:\"ACTIVE\";s:1:\"Y\";s:11:\"COEFFICIENT\";s:1:\"1\";}}}s:5:\"FORUM\";a:2:{s:4:\"VOTE\";a:2:{s:5:\"TOPIC\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:16:\"TODAY_TOPIC_COEF\";s:2:\"20\";s:15:\"WEEK_TOPIC_COEF\";s:2:\"10\";s:16:\"MONTH_TOPIC_COEF\";s:1:\"5\";s:14:\"ALL_TOPIC_COEF\";s:1:\"0\";s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";}}}s:4:\"BLOG\";a:2:{s:4:\"VOTE\";a:2:{s:4:\"POST\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}s:7:\"COMMENT\";a:2:{s:11:\"COEFFICIENT\";s:1:\"1\";s:5:\"LIMIT\";s:2:\"30\";}}s:6:\"RATING\";a:1:{s:8:\"ACTIVITY\";a:8:{s:15:\"TODAY_POST_COEF\";s:3:\"0.4\";s:14:\"WEEK_POST_COEF\";s:3:\"0.2\";s:15:\"MONTH_POST_COEF\";s:3:\"0.1\";s:13:\"ALL_POST_COEF\";s:1:\"0\";s:18:\"TODAY_COMMENT_COEF\";s:3:\"0.2\";s:17:\"WEEK_COMMENT_COEF\";s:3:\"0.1\";s:18:\"MONTH_COMMENT_COEF\";s:4:\"0.05\";s:16:\"ALL_COMMENT_COEF\";s:1:\"0\";}}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_component`
--

CREATE TABLE `b_rating_component` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_component_results`
--

CREATE TABLE `b_rating_component_results` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_prepare`
--

CREATE TABLE `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_results`
--

CREATE TABLE `b_rating_results` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT '0',
  `PREVIOUS_POSITION` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_rule`
--

CREATE TABLE `b_rating_rule` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_rule`
--

INSERT INTO `b_rating_rule` (`ID`, `ACTIVE`, `NAME`, `ENTITY_TYPE_ID`, `CONDITION_NAME`, `CONDITION_MODULE`, `CONDITION_CLASS`, `CONDITION_METHOD`, `CONDITION_CONFIG`, `ACTION_NAME`, `ACTION_CONFIG`, `ACTIVATE`, `ACTIVATE_CLASS`, `ACTIVATE_METHOD`, `DEACTIVATE`, `DEACTIVATE_CLASS`, `DEACTIVATE_METHOD`, `CREATED`, `LAST_MODIFIED`, `LAST_APPLIED`) VALUES
(1, 'N', 'Добавление в группу пользователей, имеющих право голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:1;}}', 'ADD_TO_GROUP', 'a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2020-11-11 20:11:32', '2020-11-11 20:11:32', NULL),
(2, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:1;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"3\";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2020-11-11 20:11:32', '2020-11-11 20:11:32', NULL),
(3, 'N', 'Добавление в группу пользователей, имеющих право голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:1;s:12:\"RATING_VALUE\";i:2;}}', 'ADD_TO_GROUP', 'a:1:{s:12:\"ADD_TO_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2020-11-11 20:11:32', '2020-11-11 20:11:32', NULL),
(4, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:\"AUTHORITY\";a:2:{s:16:\"RATING_CONDITION\";i:2;s:12:\"RATING_VALUE\";i:2;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:\"REMOVE_FROM_GROUP\";a:1:{s:8:\"GROUP_ID\";s:1:\"4\";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2020-11-11 20:11:32', '2020-11-11 20:11:32', NULL),
(5, 'Y', 'Автоматическое голосование за авторитет пользователя', 'USER', 'VOTE', NULL, 'CRatingRulesMain', 'voteCheck', 'a:1:{s:4:\"VOTE\";a:6:{s:10:\"VOTE_LIMIT\";i:90;s:11:\"VOTE_RESULT\";i:10;s:16:\"VOTE_FORUM_TOPIC\";d:0.5;s:15:\"VOTE_FORUM_POST\";d:0.1;s:14:\"VOTE_BLOG_POST\";d:0.5;s:17:\"VOTE_BLOG_COMMENT\";d:0.1;}}', 'empty', 'a:0:{}', 'N', 'empty', 'empty', 'N', 'empty ', 'empty', '2020-11-11 20:11:32', '2020-11-11 20:11:32', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_rule_vetting`
--

CREATE TABLE `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_user`
--

CREATE TABLE `b_rating_user` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT '0.0000',
  `VOTE_WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `VOTE_COUNT` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_user`
--

INSERT INTO `b_rating_user` (`ID`, `RATING_ID`, `ENTITY_ID`, `BONUS`, `VOTE_WEIGHT`, `VOTE_COUNT`) VALUES
(1, 2, 1, '3.0000', '30.0000', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_vote`
--

CREATE TABLE `b_rating_vote` (
  `ID` int(11) NOT NULL,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_vote_group`
--

CREATE TABLE `b_rating_vote_group` (
  `ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_vote_group`
--

INSERT INTO `b_rating_vote_group` (`ID`, `GROUP_ID`, `TYPE`) VALUES
(5, 1, 'A'),
(1, 1, 'R'),
(3, 1, 'R'),
(2, 3, 'R'),
(4, 3, 'R'),
(6, 4, 'A');

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_voting`
--

CREATE TABLE `b_rating_voting` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_voting_prepare`
--

CREATE TABLE `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_voting_reaction`
--

CREATE TABLE `b_rating_voting_reaction` (
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `REACTION` varchar(8) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TOTAL_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rating_weight`
--

CREATE TABLE `b_rating_weight` (
  `ID` int(11) NOT NULL,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `COUNT` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_rating_weight`
--

INSERT INTO `b_rating_weight` (`ID`, `RATING_FROM`, `RATING_TO`, `WEIGHT`, `COUNT`) VALUES
(1, '-1000000.0000', '1000000.0000', '1.0000', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_ap`
--

CREATE TABLE `b_rest_ap` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_app`
--

CREATE TABLE `b_rest_app` (
  `ID` int(11) NOT NULL,
  `CLIENT_ID` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INSTALLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `URL` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `URL_DEMO` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_INSTALL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` varchar(4) COLLATE utf8_unicode_ci DEFAULT '1',
  `SCOPE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'F',
  `DATE_FINISH` date DEFAULT NULL,
  `IS_TRIALED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SHARED_KEY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `APP_NAME` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS` varchar(2000) COLLATE utf8_unicode_ci DEFAULT '',
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `MOBILE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `USER_INSTALL` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_app_lang`
--

CREATE TABLE `b_rest_app_lang` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_app_log`
--

CREATE TABLE `b_rest_app_log` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `APP_ID` int(11) NOT NULL,
  `ACTION_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_ap_permission`
--

CREATE TABLE `b_rest_ap_permission` (
  `ID` int(11) NOT NULL,
  `PASSWORD_ID` int(11) NOT NULL,
  `PERM` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_event`
--

CREATE TABLE `b_rest_event` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) DEFAULT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `APPLICATION_TOKEN` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_event_offline`
--

CREATE TABLE `b_rest_event_offline` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MESSAGE_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_DATA` text COLLATE utf8_unicode_ci,
  `EVENT_ADDITIONAL` text COLLATE utf8_unicode_ci,
  `PROCESS_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `CONNECTOR_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `ERROR` int(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_log`
--

CREATE TABLE `b_rest_log` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CLIENT_ID` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD_ID` int(11) DEFAULT NULL,
  `SCOPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_AUTH` text COLLATE utf8_unicode_ci,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_STATUS` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESPONSE_DATA` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_owner_entity`
--

CREATE TABLE `b_rest_owner_entity` (
  `ID` int(11) NOT NULL,
  `OWNER_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_placement`
--

CREATE TABLE `b_rest_placement` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) DEFAULT NULL,
  `PLACEMENT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PLACEMENT_HANDLER` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `GROUP_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_CREATE` datetime DEFAULT NULL,
  `ADDITIONAL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_stat`
--

CREATE TABLE `b_rest_stat` (
  `STAT_DATE` date NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `METHOD_ID` int(11) NOT NULL,
  `HOUR_0` int(11) NOT NULL DEFAULT '0',
  `HOUR_1` int(11) NOT NULL DEFAULT '0',
  `HOUR_2` int(11) NOT NULL DEFAULT '0',
  `HOUR_3` int(11) NOT NULL DEFAULT '0',
  `HOUR_4` int(11) NOT NULL DEFAULT '0',
  `HOUR_5` int(11) NOT NULL DEFAULT '0',
  `HOUR_6` int(11) NOT NULL DEFAULT '0',
  `HOUR_7` int(11) NOT NULL DEFAULT '0',
  `HOUR_8` int(11) NOT NULL DEFAULT '0',
  `HOUR_9` int(11) NOT NULL DEFAULT '0',
  `HOUR_10` int(11) NOT NULL DEFAULT '0',
  `HOUR_11` int(11) NOT NULL DEFAULT '0',
  `HOUR_12` int(11) NOT NULL DEFAULT '0',
  `HOUR_13` int(11) NOT NULL DEFAULT '0',
  `HOUR_14` int(11) NOT NULL DEFAULT '0',
  `HOUR_15` int(11) NOT NULL DEFAULT '0',
  `HOUR_16` int(11) NOT NULL DEFAULT '0',
  `HOUR_17` int(11) NOT NULL DEFAULT '0',
  `HOUR_18` int(11) NOT NULL DEFAULT '0',
  `HOUR_19` int(11) NOT NULL DEFAULT '0',
  `HOUR_20` int(11) NOT NULL DEFAULT '0',
  `HOUR_21` int(11) NOT NULL DEFAULT '0',
  `HOUR_22` int(11) NOT NULL DEFAULT '0',
  `HOUR_23` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_stat_app`
--

CREATE TABLE `b_rest_stat_app` (
  `APP_ID` int(11) NOT NULL,
  `APP_CODE` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_stat_method`
--

CREATE TABLE `b_rest_stat_method` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `METHOD_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_usage_entity`
--

CREATE TABLE `b_rest_usage_entity` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY_CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUB_ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUB_ENTITY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_rest_usage_stat`
--

CREATE TABLE `b_rest_usage_stat` (
  `STAT_DATE` date NOT NULL,
  `ENTITY_ID` int(11) NOT NULL DEFAULT '0',
  `IS_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HOUR_0` int(11) NOT NULL DEFAULT '0',
  `HOUR_1` int(11) NOT NULL DEFAULT '0',
  `HOUR_2` int(11) NOT NULL DEFAULT '0',
  `HOUR_3` int(11) NOT NULL DEFAULT '0',
  `HOUR_4` int(11) NOT NULL DEFAULT '0',
  `HOUR_5` int(11) NOT NULL DEFAULT '0',
  `HOUR_6` int(11) NOT NULL DEFAULT '0',
  `HOUR_7` int(11) NOT NULL DEFAULT '0',
  `HOUR_8` int(11) NOT NULL DEFAULT '0',
  `HOUR_9` int(11) NOT NULL DEFAULT '0',
  `HOUR_10` int(11) NOT NULL DEFAULT '0',
  `HOUR_11` int(11) NOT NULL DEFAULT '0',
  `HOUR_12` int(11) NOT NULL DEFAULT '0',
  `HOUR_13` int(11) NOT NULL DEFAULT '0',
  `HOUR_14` int(11) NOT NULL DEFAULT '0',
  `HOUR_15` int(11) NOT NULL DEFAULT '0',
  `HOUR_16` int(11) NOT NULL DEFAULT '0',
  `HOUR_17` int(11) NOT NULL DEFAULT '0',
  `HOUR_18` int(11) NOT NULL DEFAULT '0',
  `HOUR_19` int(11) NOT NULL DEFAULT '0',
  `HOUR_20` int(11) NOT NULL DEFAULT '0',
  `HOUR_21` int(11) NOT NULL DEFAULT '0',
  `HOUR_22` int(11) NOT NULL DEFAULT '0',
  `HOUR_23` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content`
--

CREATE TABLE `b_search_content` (
  `ID` int(11) NOT NULL,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `TITLE` text COLLATE utf8_unicode_ci,
  `BODY` longtext COLLATE utf8_unicode_ci,
  `TAGS` text COLLATE utf8_unicode_ci,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `UPD` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content`
--

INSERT INTO `b_search_content` (`ID`, `DATE_CHANGE`, `MODULE_ID`, `ITEM_ID`, `CUSTOM_RANK`, `USER_ID`, `ENTITY_TYPE_ID`, `ENTITY_ID`, `URL`, `TITLE`, `BODY`, `TAGS`, `PARAM1`, `PARAM2`, `UPD`, `DATE_FROM`, `DATE_TO`) VALUES
(1, '2020-11-12 17:43:22', 'main', 's1|/about/index.php', 0, NULL, NULL, NULL, '/about/index.php', 'О нас', 'Немного о нас\rКоманда\rТворческие и гениальные. Мастера своего дела\rСроки не проблема!\r\"\rСпасут любой проект с самыми горящими сроками! Ребята действительно\nпрофессионалы своего дела.\r\"\r- Андрей Александров, Best Shop.\rЭто взрыв!\r\"\rЯ рад, что мы получили такой классный продукт на выходе!\nДумаю, что совместными усилиями мы реализуем ещё не один\nпроект.\r\"\r- Виталий Нохрин, NA\'MAN Rec.\rБольшая удача?\r\"\rМы нашли WeCoders после десятка неудачных проектов с другими web студиями. И…\nЭто большая удача, \r\"\r- Ирина Граф, Cars & Cars company', '', '', '', NULL, NULL, NULL),
(2, '2020-11-15 16:19:57', 'main', 's1|/services/index.php', 0, NULL, NULL, NULL, '/services/index.php', 'Услуги', 'Чем мы занимаемся\rSkills\rНаправления\rВсё что нужно для производства сайта любой сложности\rРазработка сайта\rКакой сайт вам нужен? Выбирайте, оставляйте заявку в форме ниже и мы свяжемся с вами!', '', '', '', NULL, NULL, NULL),
(3, '2020-11-15 23:13:06', 'main', 's1|/portfolio/index.php', 0, NULL, NULL, NULL, '/portfolio/index.php', 'Портфолио', 'Портфолио\rЛучший способ найти хорошую команду - это посмотреть результаты её работы', '', '', '', NULL, NULL, NULL),
(4, '2020-11-17 17:25:18', 'main', 's1|/blog/index.php', 0, NULL, NULL, NULL, '/blog/index.php', 'Блог', '', '', '', '', NULL, NULL, NULL),
(5, '2020-11-17 16:37:35', 'main', 's1|/contacts/index.php', 0, NULL, NULL, NULL, '/contacts/index.php', 'Контакты', 'Нужен классный сайт?\rОставьте заявку в форме ниже и мы всё сделаем!\rМы находимся по адресу:\nг. Тюмень, ул. Республики 94, офис 23\r8-123-456-7899\rwecoders@wecodres.com', '', '', '', NULL, NULL, NULL),
(6, '2020-11-16 16:34:02', 'main', 's1|/index.php', 0, NULL, NULL, NULL, '/index.php', 'Главная', 'О нас\rОсновные направления\rВсё что нужно для производства сайта любой сложности\rПортфолио\rЛучший способ найти хорошую команду - это посмотреть результаты её работы\rВсе\rЛендинги\rИнтренет магазины\rПромо сайты\rКорпоративные порталы\rGreen Planet\rДизайн\rCreative developer\rРазработка лендинга\rDress & Jeans\rРазработка интернет-магазина\rMountain King\rРазработка сайта визитки\rBeauty SPA\rРазработка сайта визитки\rBent Application\rРазработка лендинга', '', '', '', NULL, NULL, NULL),
(7, '2020-11-11 22:40:23', 'iblock', '1', 0, NULL, NULL, NULL, '=ID=1&EXTERNAL_ID=1&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=1&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=dobro-pozhalovat', 'Добро пожаловать', 'Digital-агентство\rWe Coders', '', 'content', '1', NULL, NULL, NULL),
(8, '2020-11-11 22:19:02', 'iblock', '2', 0, NULL, NULL, NULL, '=ID=2&EXTERNAL_ID=2&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=1&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=rabotayte-s-luchshimi', 'Работайте с лучшими', 'Судите по результатам', '', 'content', '1', NULL, NULL, NULL),
(9, '2020-11-11 22:20:08', 'iblock', '3', 0, NULL, NULL, NULL, '=ID=3&EXTERNAL_ID=3&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=1&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=bolshoy-opyt', 'Большой опыт', 'Классный результат', '', 'content', '1', NULL, NULL, NULL),
(11, '2020-11-12 16:58:28', 'iblock', '4', 0, NULL, NULL, NULL, '=ID=4&EXTERNAL_ID=4&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=anton-morozov', 'Антон Морозов', 'Креативный директор\r\nНи один человек за всю историю не добился ничего великого, не породив этого сначала в своем воображении.', '', 'content', '2', NULL, NULL, NULL),
(12, '2020-11-12 16:59:16', 'iblock', '5', 0, NULL, NULL, NULL, '=ID=5&EXTERNAL_ID=5&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=anastasiya-lyubimova', 'Анастасия Любимова', 'Дизайнер\r\nСосредоточь все силы на достижение желаемого, чтобы у тебя не было времени бояться нежелательного.', '', 'content', '2', NULL, NULL, NULL),
(13, '2020-11-12 17:25:10', 'iblock', '6', 0, NULL, NULL, NULL, '=ID=6&EXTERNAL_ID=6&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=2&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=aleksandr-lenskiy', 'Александр Ленский', 'Web разработчик\r\nЧем дольше вы идете к успеху, тем он становится ближе. Слишком многие бросают дело за шаг до победы. Запомните: этот шаг сделают другие.', '', 'content', '2', NULL, NULL, NULL),
(14, '2020-11-12 18:01:41', 'iblock', '7', 0, NULL, NULL, NULL, '=ID=7&EXTERNAL_ID=7&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=', 'Web-дизайн', '', '', 'services', '3', NULL, NULL, NULL),
(15, '2020-11-12 18:05:04', 'iblock', '8', 0, NULL, NULL, NULL, '=ID=8&EXTERNAL_ID=8&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=', 'PHP (Bitrix / Laravel / Symfony)', '', '', 'services', '3', NULL, NULL, NULL),
(16, '2020-11-12 18:05:57', 'iblock', '9', 0, NULL, NULL, NULL, '=ID=9&EXTERNAL_ID=9&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=', 'Node.js', '', '', 'services', '3', NULL, NULL, NULL),
(17, '2020-11-12 18:06:24', 'iblock', '10', 0, NULL, NULL, NULL, '=ID=10&EXTERNAL_ID=10&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=', 'JavaScript (Angular / React)', '', '', 'services', '3', NULL, NULL, NULL),
(18, '2020-11-12 18:07:00', 'iblock', '11', 0, NULL, NULL, NULL, '=ID=11&EXTERNAL_ID=11&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=3&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=', 'CSS (LESS)', '', '', 'services', '3', NULL, NULL, NULL),
(19, '2020-11-15 14:25:14', 'iblock', '12', 0, NULL, NULL, NULL, '=ID=12&EXTERNAL_ID=12&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=4&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=web-dizayn', 'Web-дизайн', 'Создание индивидуальной концепции, от лаконичных решений до сложных динамических элементов.', '', 'services', '4', NULL, NULL, NULL),
(20, '2020-11-15 14:12:37', 'iblock', '13', 0, NULL, NULL, NULL, '=ID=13&EXTERNAL_ID=13&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=4&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=frontend', 'Frontend', 'Красивая и отзывчивая \rfrontend\rчасть сайта, которая будет отлично работать на всех разрешениях и устройствах.', '', 'services', '4', NULL, NULL, NULL),
(21, '2020-11-15 14:12:16', 'iblock', '14', 0, NULL, NULL, NULL, '=ID=14&EXTERNAL_ID=14&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=4&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=backend', 'Backend', 'Красивая и отзывчивая <b>frontend</b> часть сайта, которая будет отлично работать на всех разрешениях и устройствах.\r\nСтабильный и быстрый \rbackend\rсайта с гибкой админкой и высоким уровнем безопасности.', '', 'services', '4', NULL, NULL, NULL),
(22, '2020-11-15 14:13:28', 'iblock', '15', 0, NULL, NULL, NULL, '=ID=15&EXTERNAL_ID=15&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=4&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=prodvizhenie', 'Продвижение', 'От SEO-оптимизации до контекстной рекламы. Всё для того, чтобы сайт собирал тысячи лидов.', '', 'services', '4', NULL, NULL, NULL),
(23, '2020-11-15 14:13:59', 'iblock', '16', 0, NULL, NULL, NULL, '=ID=16&EXTERNAL_ID=16&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=4&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=podderzhka', 'Поддержка', 'Поправим, переделаем и реализуем новые решения на уже готовом сайте, а также предложим идеи по улучшению.', '', 'services', '4', NULL, NULL, NULL),
(24, '2020-11-15 14:15:07', 'iblock', '17', 0, NULL, NULL, NULL, '=ID=17&EXTERNAL_ID=17&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=4&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=kontent', 'Контент', 'Подготовим лучший контент от написания статей до подбора музыкального сопровождения и наполним сайт.', '', 'services', '4', NULL, NULL, NULL),
(25, '2020-11-15 19:12:14', 'iblock', '18', 0, NULL, NULL, NULL, '=ID=18&EXTERNAL_ID=18&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=5&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=lending', 'Лендинг', 'Одностраничный сайт', '', 'services', '5', NULL, NULL, NULL),
(26, '2020-11-15 19:29:20', 'iblock', '19', 0, NULL, NULL, NULL, '=ID=19&EXTERNAL_ID=19&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=5&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=sayt-vizitka', 'Сайт визитка', '', '', 'services', '5', NULL, NULL, NULL),
(27, '2020-11-15 19:29:11', 'iblock', '20', 0, NULL, NULL, NULL, '=ID=20&EXTERNAL_ID=20&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=5&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=internet-magazin', 'Интернет магазин', '', '', 'services', '5', NULL, NULL, NULL),
(28, '2020-11-15 19:13:03', 'iblock', '21', 0, NULL, NULL, NULL, '=ID=21&EXTERNAL_ID=21&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=services&IBLOCK_ID=5&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=korp-sayt', 'Корп. сайт', 'Любой сложности', '', 'services', '5', NULL, NULL, NULL),
(30, '2020-12-01 21:35:22', 'iblock', 'S2', 0, NULL, NULL, NULL, '=ID=2&EXTERNAL_ID=&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=landing', 'Лендинги', '.landing', NULL, 'portfolio', '6', NULL, NULL, NULL),
(31, '2020-12-01 21:35:37', 'iblock', 'S3', 0, NULL, NULL, NULL, '=ID=3&EXTERNAL_ID=&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=internet_shop', 'Интренет магазины', '.internet_shop', NULL, 'portfolio', '6', NULL, NULL, NULL),
(32, '2020-12-01 21:35:49', 'iblock', 'S4', 0, NULL, NULL, NULL, '=ID=4&EXTERNAL_ID=&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=promo', 'Промо сайты', '.promo', NULL, 'portfolio', '6', NULL, NULL, NULL),
(33, '2020-12-01 21:35:59', 'iblock', 'S5', 0, NULL, NULL, NULL, '=ID=5&EXTERNAL_ID=&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=corporative_site', 'Корпоративные порталы', '.corporative_site', NULL, 'portfolio', '6', NULL, NULL, NULL),
(34, '2020-12-01 21:24:18', 'iblock', '22', 0, NULL, NULL, NULL, '=ID=22&EXTERNAL_ID=22&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=green-planet', 'Green Planet', 'Дизайн', '', 'portfolio', '6', NULL, NULL, NULL),
(35, '2020-12-01 21:23:47', 'iblock', '23', 0, NULL, NULL, NULL, '=ID=23&EXTERNAL_ID=23&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=dress-jeans', 'Dress & Jeans', 'Разработка интернет-магазина', '', 'portfolio', '6', NULL, NULL, NULL),
(36, '2020-12-01 21:24:07', 'iblock', '24', 0, NULL, NULL, NULL, '=ID=24&EXTERNAL_ID=24&IBLOCK_SECTION_ID=3&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=creative-developers', 'Creative developers', 'Разработка лендинга', '', 'portfolio', '6', NULL, NULL, NULL),
(37, '2020-12-01 21:24:22', 'iblock', '25', 0, NULL, NULL, NULL, '=ID=25&EXTERNAL_ID=25&IBLOCK_SECTION_ID=3&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=mountain-king', 'Mountain King', 'Разработка сайта визитки', '', 'portfolio', '6', NULL, NULL, NULL),
(38, '2020-12-01 21:24:13', 'iblock', '26', 0, NULL, NULL, NULL, '=ID=26&EXTERNAL_ID=26&IBLOCK_SECTION_ID=5&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=beauty-spa', 'Beauty SPA', 'Разработка сайта визитки', '', 'portfolio', '6', NULL, NULL, NULL),
(39, '2020-12-01 21:24:02', 'iblock', '27', 0, NULL, NULL, NULL, '=ID=27&EXTERNAL_ID=27&IBLOCK_SECTION_ID=4&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=bent-application', 'Bent Application', 'Разработка лендинга', '', 'portfolio', '6', NULL, NULL, NULL),
(40, '2020-11-17 22:32:19', 'iblock', '28', 0, NULL, NULL, NULL, '=ID=28&EXTERNAL_ID=28&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=7&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=gotovykh-proektov', 'Готовых проектов', '', '', 'content', '7', NULL, NULL, NULL),
(41, '2020-11-16 16:10:42', 'iblock', '29', 0, NULL, NULL, NULL, '=ID=29&EXTERNAL_ID=29&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=7&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=chashek-kofe-vypito', 'Чашек кофе выпито', '', '', 'content', '7', NULL, NULL, NULL),
(42, '2020-11-16 16:11:52', 'iblock', '30', 0, NULL, NULL, NULL, '=ID=30&EXTERNAL_ID=30&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=7&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=voplotili-super-ydey', 'Воплотили идей', '', '', 'content', '7', NULL, NULL, NULL),
(43, '2020-11-16 16:11:43', 'iblock', '31', 0, NULL, NULL, NULL, '=ID=31&EXTERNAL_ID=31&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=7&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=schastlivykh-klientov', 'Счастливых клиентов', '', '', 'content', '7', NULL, NULL, NULL),
(44, '2020-11-16 16:24:25', 'iblock', '32', 0, NULL, NULL, NULL, '=ID=32&EXTERNAL_ID=32&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=8&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=sroki-ne-problema', 'Сроки не проблема!', 'Спасут любой проект с самыми горящими сроками! Ребята действительно профессионалы своего дела.', '', 'content', '8', NULL, NULL, NULL),
(45, '2020-11-16 16:25:05', 'iblock', '33', 0, NULL, NULL, NULL, '=ID=33&EXTERNAL_ID=33&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=8&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=eto-vzryv', 'Это взрыв!', 'Я рад, что мы получили такой классный продукт на выходе! Думаю, что совместными усилиями мы реализуем ещё не один проект.', '', 'content', '8', NULL, NULL, NULL),
(46, '2020-11-16 16:26:35', 'iblock', '34', 0, NULL, NULL, NULL, '=ID=34&EXTERNAL_ID=34&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=content&IBLOCK_ID=8&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=bolshaya-udacha', 'Большая удача!', 'Мы нашли WeCoders после десятка неудачных проектов с другими web студиями. И это большая удача.', '', 'content', '8', NULL, NULL, NULL),
(47, '2020-11-16 17:08:52', 'iblock', 'S6', 0, NULL, NULL, NULL, '=ID=6&EXTERNAL_ID=&IBLOCK_TYPE_ID=blog&IBLOCK_ID=9&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=web-dizayn', 'Web-Дизайн', '', NULL, 'blog', '9', NULL, NULL, NULL),
(48, '2020-11-16 17:09:03', 'iblock', 'S7', 0, NULL, NULL, NULL, '=ID=7&EXTERNAL_ID=&IBLOCK_TYPE_ID=blog&IBLOCK_ID=9&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=sobytiya', 'События', '', NULL, 'blog', '9', NULL, NULL, NULL),
(49, '2020-11-16 17:09:21', 'iblock', 'S8', 0, NULL, NULL, NULL, '=ID=8&EXTERNAL_ID=&IBLOCK_TYPE_ID=blog&IBLOCK_ID=9&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=razrabotka', 'Разработка', '', NULL, 'blog', '9', NULL, NULL, NULL),
(50, '2020-11-16 17:09:36', 'iblock', 'S9', 0, NULL, NULL, NULL, '=ID=9&EXTERNAL_ID=&IBLOCK_TYPE_ID=blog&IBLOCK_ID=9&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=raznoe', 'Разное', '', NULL, 'blog', '9', NULL, NULL, NULL),
(51, '2020-11-16 19:38:00', 'iblock', '35', 0, NULL, NULL, NULL, '=ID=35&EXTERNAL_ID=35&IBLOCK_SECTION_ID=8&IBLOCK_TYPE_ID=blog&IBLOCK_ID=9&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=blog-na-bitrix', 'Блог на Bitrix', '1С-Битрикс — система управления содержимым от российской компании 1С-Битрикс. Имеет несколько \"редакций\" – лицензионных версий: Старт, Стандарт, Малый бизнес, Бизнес, которые отличаются включаемыми модулями системы.\r\n\r1С-Битрикс — система управления содержимым от российской компании 1С-Битрикс. Имеет несколько \"редакций\" – лицензионных версий: Старт, Стандарт, Малый бизнес, Бизнес, которые отличаются включаемыми модулями системы.\rПоддерживаются следующие СУБД: MySQL. Количество модулей в устанавливаемой системе зависит от редакции продукта.', 'Php, UI/UX, Портфолио, Bitrix', 'blog', '9', NULL, '2020-11-16 19:38:00', NULL),
(52, '2020-11-16 19:38:00', 'iblock', '36', 0, NULL, NULL, NULL, '=ID=36&EXTERNAL_ID=36&IBLOCK_SECTION_ID=6&IBLOCK_TYPE_ID=blog&IBLOCK_ID=9&IBLOCK_CODE=blog&IBLOCK_EXTERNAL_ID=&CODE=dizayn-vo-vsem', 'Дизайн во всем', 'Считается, что дизайн призван не только к художественному конструированию, но должен участвовать в решении более широких проблем функционирования производства, существования людей в предметной среде.\r\n\rСчитается, что дизайн призван не только к художественному конструированию, но должен участвовать в решении более широких проблем функционирования производства, существования людей в предметной среде.\rПроцесс разработки дизайна нельзя назвать однообразной работой. Напротив, дизайнерам-художникам постоянно приходится творить - придумывать и воплощать в своих проектах революционные идеи в самых разных сферах жизни человека.', 'Дизайн, Html5, Css3', 'blog', '9', NULL, '2020-11-16 19:38:00', NULL),
(53, '2020-11-17 14:51:26', 'blog', 'U1', 0, NULL, NULL, NULL, NULL, 'Александр Аксенов', '', NULL, 'USER', '1', NULL, NULL, NULL),
(54, '2020-11-20 22:08:10', 'main', 's1|/blog/search/index.php', 0, NULL, NULL, NULL, '/blog/search/index.php', 'Поиск', '', '', '', '', NULL, NULL, NULL),
(55, '2020-12-01 21:38:13', 'iblock', 'S10', 0, NULL, NULL, NULL, '=ID=10&EXTERNAL_ID=&IBLOCK_TYPE_ID=portfolio&IBLOCK_ID=6&IBLOCK_CODE=&IBLOCK_EXTERNAL_ID=&CODE=vse', 'Все', 'all', NULL, 'portfolio', '6', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_freq`
--

CREATE TABLE `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content_freq`
--

INSERT INTO `b_search_content_freq` (`STEM`, `LANGUAGE_ID`, `SITE_ID`, `FREQ`, `TF`) VALUES
(233, 'ru', 's1', 3, 0),
(69, 'ru', 's1', 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_param`
--

CREATE TABLE `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_right`
--

CREATE TABLE `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content_right`
--

INSERT INTO `b_search_content_right` (`SEARCH_CONTENT_ID`, `GROUP_CODE`) VALUES
(1, 'G2'),
(2, 'G2'),
(3, 'G2'),
(4, 'G2'),
(5, 'G2'),
(6, 'G2'),
(7, 'G1'),
(7, 'G2'),
(8, 'G1'),
(8, 'G2'),
(9, 'G1'),
(9, 'G2'),
(11, 'G1'),
(11, 'G2'),
(12, 'G1'),
(12, 'G2'),
(13, 'G1'),
(13, 'G2'),
(14, 'G1'),
(14, 'G2'),
(15, 'G1'),
(15, 'G2'),
(16, 'G1'),
(16, 'G2'),
(17, 'G1'),
(17, 'G2'),
(18, 'G1'),
(18, 'G2'),
(19, 'G1'),
(19, 'G2'),
(20, 'G1'),
(20, 'G2'),
(21, 'G1'),
(21, 'G2'),
(22, 'G1'),
(22, 'G2'),
(23, 'G1'),
(23, 'G2'),
(24, 'G1'),
(24, 'G2'),
(25, 'G1'),
(25, 'G2'),
(26, 'G1'),
(26, 'G2'),
(27, 'G1'),
(27, 'G2'),
(28, 'G1'),
(28, 'G2'),
(30, 'G1'),
(30, 'G2'),
(31, 'G1'),
(31, 'G2'),
(32, 'G1'),
(32, 'G2'),
(33, 'G1'),
(33, 'G2'),
(34, 'G1'),
(34, 'G2'),
(35, 'G1'),
(35, 'G2'),
(36, 'G1'),
(36, 'G2'),
(37, 'G1'),
(37, 'G2'),
(38, 'G1'),
(38, 'G2'),
(39, 'G1'),
(39, 'G2'),
(40, 'G1'),
(41, 'G1'),
(42, 'G1'),
(43, 'G1'),
(44, 'G1'),
(45, 'G1'),
(46, 'G1'),
(47, 'G1'),
(47, 'G2'),
(48, 'G1'),
(48, 'G2'),
(49, 'G1'),
(49, 'G2'),
(50, 'G1'),
(50, 'G2'),
(51, 'G1'),
(51, 'G2'),
(52, 'G1'),
(52, 'G2'),
(53, 'G2'),
(54, 'G2'),
(55, 'G1'),
(55, 'G2');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_site`
--

CREATE TABLE `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content_site`
--

INSERT INTO `b_search_content_site` (`SEARCH_CONTENT_ID`, `SITE_ID`, `URL`) VALUES
(1, 's1', ''),
(2, 's1', ''),
(3, 's1', ''),
(4, 's1', ''),
(5, 's1', ''),
(6, 's1', ''),
(7, 's1', ''),
(8, 's1', ''),
(9, 's1', ''),
(11, 's1', ''),
(12, 's1', ''),
(13, 's1', ''),
(14, 's1', ''),
(15, 's1', ''),
(16, 's1', ''),
(17, 's1', ''),
(18, 's1', ''),
(19, 's1', ''),
(20, 's1', ''),
(21, 's1', ''),
(22, 's1', ''),
(23, 's1', ''),
(24, 's1', ''),
(25, 's1', ''),
(26, 's1', ''),
(27, 's1', ''),
(28, 's1', ''),
(30, 's1', ''),
(31, 's1', ''),
(32, 's1', ''),
(33, 's1', ''),
(34, 's1', ''),
(35, 's1', ''),
(36, 's1', ''),
(37, 's1', ''),
(38, 's1', ''),
(39, 's1', ''),
(40, 's1', ''),
(41, 's1', ''),
(42, 's1', ''),
(43, 's1', ''),
(44, 's1', ''),
(45, 's1', ''),
(46, 's1', ''),
(47, 's1', ''),
(48, 's1', ''),
(49, 's1', ''),
(50, 's1', ''),
(51, 's1', ''),
(52, 's1', ''),
(53, 's1', '/users/1.php'),
(54, 's1', ''),
(55, 's1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_stem`
--

CREATE TABLE `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

--
-- Дамп данных таблицы `b_search_content_stem`
--

INSERT INTO `b_search_content_stem` (`SEARCH_CONTENT_ID`, `LANGUAGE_ID`, `STEM`, `TF`, `PS`) VALUES
(1, 'ru', 1, 0.2662, 3.5),
(1, 'ru', 18, 0.2662, 118.5),
(1, 'ru', 20, 0.1679, 71),
(1, 'ru', 22, 0.1679, 3),
(1, 'ru', 23, 0.1679, 115),
(1, 'ru', 25, 0.1679, 27),
(1, 'ru', 35, 0.1679, 7),
(1, 'ru', 43, 0.1679, 121),
(1, 'ru', 64, 0.1679, 6),
(1, 'ru', 65, 0.1679, 9),
(1, 'ru', 66, 0.1679, 15),
(1, 'ru', 67, 0.2662, 29.5),
(1, 'ru', 70, 0.1679, 88),
(1, 'ru', 107, 0.2662, 50),
(1, 'ru', 109, 0.1679, 122),
(1, 'ru', 111, 0.2662, 25),
(1, 'ru', 112, 0.1679, 20),
(1, 'ru', 113, 0.1679, 26),
(1, 'ru', 114, 0.39, 88.75),
(1, 'ru', 115, 0.1679, 31),
(1, 'ru', 116, 0.1679, 38),
(1, 'ru', 117, 0.1679, 39),
(1, 'ru', 118, 0.1679, 40),
(1, 'ru', 119, 0.1679, 49),
(1, 'ru', 120, 0.1679, 50),
(1, 'ru', 121, 0.1679, 51),
(1, 'ru', 122, 0.1679, 52),
(1, 'ru', 123, 0.1679, 59),
(1, 'ru', 124, 0.1679, 66),
(1, 'ru', 125, 0.1679, 69),
(1, 'ru', 126, 0.1679, 72),
(1, 'ru', 127, 0.1679, 74),
(1, 'ru', 128, 0.1679, 80),
(1, 'ru', 129, 0.1679, 82),
(1, 'ru', 130, 0.1679, 83),
(1, 'ru', 131, 0.1679, 85),
(1, 'ru', 132, 0.1679, 96),
(1, 'ru', 133, 0.1679, 97),
(1, 'ru', 134, 0.1679, 98),
(1, 'ru', 135, 0.1679, 99),
(1, 'ru', 136, 0.1679, 100),
(1, 'ru', 137, 0.2662, 119.5),
(1, 'ru', 138, 0.1679, 114),
(1, 'ru', 139, 0.1679, 116),
(1, 'ru', 140, 0.1679, 117),
(1, 'ru', 141, 0.1679, 118),
(1, 'ru', 142, 0.1679, 119),
(1, 'ru', 143, 0.1679, 123),
(1, 'ru', 144, 0.1679, 134),
(1, 'ru', 145, 0.1679, 135),
(1, 'ru', 146, 0.2662, 136.5),
(1, 'ru', 147, 0.1679, 138),
(2, 'ru', 4, 0.2314, 1),
(2, 'ru', 25, 0.2314, 13),
(2, 'ru', 33, 0.2314, 4),
(2, 'ru', 161, 0.2314, 5),
(2, 'ru', 162, 0.2314, 6),
(2, 'ru', 163, 0.2314, 9),
(2, 'ru', 164, 0.2314, 11),
(2, 'ru', 165, 0.4628, 15.3333),
(2, 'ru', 166, 0.2314, 14),
(2, 'ru', 219, 0.2314, 15),
(2, 'ru', 220, 0.2314, 20),
(2, 'ru', 221, 0.2314, 26),
(2, 'ru', 222, 0.2314, 27),
(2, 'ru', 223, 0.2314, 28),
(2, 'ru', 224, 0.2314, 30),
(2, 'ru', 225, 0.2314, 31),
(2, 'ru', 226, 0.2314, 34),
(3, 'ru', 5, 0.3667, 1.5),
(3, 'ru', 15, 0.2314, 3),
(3, 'ru', 17, 0.2314, 11),
(3, 'ru', 51, 0.2314, 13),
(3, 'ru', 64, 0.2314, 7),
(3, 'ru', 280, 0.2314, 4),
(3, 'ru', 281, 0.2314, 5),
(3, 'ru', 282, 0.2314, 6),
(3, 'ru', 283, 0.2314, 10),
(4, 'ru', 6, 0.2314, 1),
(5, 'ru', 7, 0.2277, 1),
(5, 'ru', 20, 0.2277, 3),
(5, 'ru', 23, 0.2277, 46),
(5, 'ru', 106, 0.2277, 18),
(5, 'ru', 165, 0.2277, 4),
(5, 'ru', 220, 0.2277, 2),
(5, 'ru', 223, 0.2277, 11),
(5, 'ru', 224, 0.2277, 13),
(5, 'ru', 225, 0.2277, 14),
(5, 'ru', 284, 0.2277, 10),
(5, 'ru', 285, 0.2277, 25),
(5, 'ru', 286, 0.2277, 27),
(5, 'ru', 287, 0.2277, 34),
(5, 'ru', 288, 0.2277, 35),
(5, 'ru', 289, 0.2277, 41),
(5, 'ru', 290, 0.2277, 42),
(5, 'ru', 291, 0.2277, 43),
(5, 'ru', 292, 0.2277, 44),
(5, 'ru', 293, 0.2277, 45),
(5, 'ru', 294, 0.2277, 47),
(5, 'ru', 295, 0.2277, 53),
(6, 'ru', 1, 0.1772, 3),
(6, 'ru', 5, 0.1772, 14),
(6, 'ru', 8, 0.1772, 1),
(6, 'ru', 15, 0.1772, 15),
(6, 'ru', 17, 0.1772, 23),
(6, 'ru', 25, 0.1772, 12),
(6, 'ru', 51, 0.1772, 25),
(6, 'ru', 64, 0.1772, 19),
(6, 'ru', 162, 0.1772, 5),
(6, 'ru', 163, 0.1772, 8),
(6, 'ru', 164, 0.1772, 10),
(6, 'ru', 165, 0.4114, 35.75),
(6, 'ru', 166, 0.1772, 13),
(6, 'ru', 219, 0.458, 47.6),
(6, 'ru', 227, 0.3544, 41.6667),
(6, 'ru', 233, 0.1772, 36),
(6, 'ru', 236, 0.2808, 51.5),
(6, 'ru', 240, 0.1772, 29),
(6, 'ru', 260, 0.1772, 28),
(6, 'ru', 262, 0.1772, 30),
(6, 'ru', 264, 0.1772, 32),
(6, 'ru', 265, 0.1772, 33),
(6, 'ru', 267, 0.1772, 34),
(6, 'ru', 268, 0.1772, 35),
(6, 'ru', 269, 0.1772, 41),
(6, 'ru', 270, 0.1772, 42),
(6, 'ru', 271, 0.1772, 44),
(6, 'ru', 272, 0.1772, 37),
(6, 'ru', 274, 0.1772, 45),
(6, 'ru', 275, 0.1772, 46),
(6, 'ru', 276, 0.1772, 50),
(6, 'ru', 277, 0.1772, 51),
(6, 'ru', 278, 0.1772, 55),
(6, 'ru', 279, 0.1772, 56),
(6, 'ru', 280, 0.1772, 16),
(6, 'ru', 281, 0.1772, 17),
(6, 'ru', 282, 0.1772, 18),
(6, 'ru', 283, 0.1772, 22),
(6, 'ru', 296, 0.1772, 4),
(6, 'ru', 309, 0.1772, 38),
(7, 'ru', 9, 0.2314, 1),
(7, 'ru', 10, 0.2314, 2),
(7, 'ru', 11, 0.2314, 3),
(7, 'ru', 12, 0.2314, 4),
(7, 'ru', 13, 0.2314, 5),
(8, 'ru', 14, 0.2314, 1),
(8, 'ru', 15, 0.2314, 3),
(8, 'ru', 16, 0.2314, 4),
(8, 'ru', 17, 0.2314, 6),
(9, 'ru', 17, 0.2314, 4),
(9, 'ru', 18, 0.2314, 1),
(9, 'ru', 19, 0.2314, 2),
(9, 'ru', 20, 0.2314, 3),
(11, 'ru', 70, 0.2314, 6),
(11, 'ru', 71, 0.2314, 7),
(11, 'ru', 72, 0.2314, 9),
(11, 'ru', 73, 0.2314, 10),
(11, 'ru', 74, 0.2314, 12),
(11, 'ru', 75, 0.2314, 13),
(11, 'ru', 76, 0.2314, 14),
(11, 'ru', 77, 0.2314, 16),
(11, 'ru', 78, 0.2314, 18),
(11, 'ru', 79, 0.2314, 21),
(11, 'ru', 80, 0.2314, 1),
(11, 'ru', 81, 0.2314, 2),
(11, 'ru', 82, 0.3667, 2),
(11, 'ru', 83, 0.2314, 3),
(11, 'ru', 84, 0.2314, 4),
(12, 'ru', 38, 0.2314, 6),
(12, 'ru', 85, 0.2314, 4),
(12, 'ru', 86, 0.2314, 8),
(12, 'ru', 87, 0.2314, 9),
(12, 'ru', 88, 0.2314, 15),
(12, 'ru', 89, 0.2314, 16),
(12, 'ru', 90, 0.2314, 17),
(12, 'ru', 91, 0.2314, 1),
(12, 'ru', 92, 0.2314, 2),
(12, 'ru', 93, 0.2314, 2),
(12, 'ru', 94, 0.2314, 3),
(13, 'ru', 43, 0.2314, 37),
(13, 'ru', 49, 0.2314, 21),
(13, 'ru', 67, 0.2314, 23),
(13, 'ru', 95, 0.2314, 6),
(13, 'ru', 96, 0.2314, 8),
(13, 'ru', 97, 0.2314, 10),
(13, 'ru', 98, 0.2314, 11),
(13, 'ru', 99, 0.2314, 13),
(13, 'ru', 100, 0.2314, 14),
(13, 'ru', 101, 0.2314, 20),
(13, 'ru', 102, 0.2314, 22),
(13, 'ru', 103, 0.3667, 30),
(13, 'ru', 104, 0.2314, 27),
(13, 'ru', 105, 0.2314, 33),
(13, 'ru', 106, 0.2314, 36),
(13, 'ru', 107, 0.2314, 1),
(13, 'ru', 108, 0.2314, 2),
(13, 'ru', 109, 0.2314, 3),
(13, 'ru', 110, 0.2314, 4),
(14, 'ru', 149, 0.2314, 1),
(15, 'ru', 150, 0.2314, 1),
(15, 'ru', 151, 0.2314, 2),
(15, 'ru', 152, 0.2314, 3),
(15, 'ru', 153, 0.2314, 4),
(16, 'ru', 154, 0.2314, 1),
(16, 'ru', 155, 0.2314, 7),
(17, 'ru', 156, 0.2314, 1),
(17, 'ru', 157, 0.2314, 2),
(17, 'ru', 158, 0.2314, 3),
(18, 'ru', 159, 0.2314, 1),
(18, 'ru', 160, 0.2314, 2),
(19, 'ru', 149, 0.2314, 1),
(19, 'ru', 167, 0.2314, 2),
(19, 'ru', 168, 0.2314, 3),
(19, 'ru', 169, 0.2314, 4),
(19, 'ru', 170, 0.2314, 6),
(19, 'ru', 171, 0.2314, 7),
(19, 'ru', 172, 0.2314, 9),
(19, 'ru', 173, 0.2314, 10),
(19, 'ru', 174, 0.2314, 11),
(19, 'ru', 175, 0.3667, 11),
(20, 'ru', 14, 0.2314, 11),
(20, 'ru', 27, 0.2314, 8),
(20, 'ru', 165, 0.2314, 7),
(20, 'ru', 176, 0.3667, 3),
(20, 'ru', 177, 0.2314, 2),
(20, 'ru', 178, 0.2314, 4),
(20, 'ru', 179, 0.2314, 6),
(20, 'ru', 180, 0.2314, 9),
(20, 'ru', 181, 0.2314, 10),
(20, 'ru', 182, 0.2314, 13),
(20, 'ru', 183, 0.2314, 14),
(20, 'ru', 184, 0.2314, 16),
(21, 'ru', 14, 0.2242, 13),
(21, 'ru', 27, 0.2242, 10),
(21, 'ru', 165, 0.3554, 18.5),
(21, 'ru', 176, 0.2242, 6),
(21, 'ru', 177, 0.2242, 2),
(21, 'ru', 178, 0.2242, 4),
(21, 'ru', 179, 0.2242, 8),
(21, 'ru', 180, 0.2242, 11),
(21, 'ru', 181, 0.2242, 12),
(21, 'ru', 182, 0.2242, 15),
(21, 'ru', 183, 0.2242, 16),
(21, 'ru', 184, 0.2242, 18),
(21, 'ru', 185, 0.3554, 14),
(21, 'ru', 186, 0.2242, 24),
(21, 'ru', 187, 0.2242, 26),
(21, 'ru', 188, 0.2242, 30),
(21, 'ru', 189, 0.2242, 31),
(21, 'ru', 190, 0.2242, 33),
(21, 'ru', 191, 0.2242, 34),
(21, 'ru', 192, 0.2242, 35),
(22, 'ru', 165, 0.2314, 16),
(22, 'ru', 193, 0.2314, 1),
(22, 'ru', 194, 0.2314, 3),
(22, 'ru', 195, 0.2314, 5),
(22, 'ru', 196, 0.2314, 6),
(22, 'ru', 197, 0.2314, 14),
(22, 'ru', 198, 0.2314, 17),
(22, 'ru', 199, 0.2314, 18),
(22, 'ru', 200, 0.2314, 19),
(22, 'ru', 201, 0.3667, 19),
(23, 'ru', 131, 0.2314, 5),
(23, 'ru', 165, 0.2314, 11),
(23, 'ru', 171, 0.2314, 7),
(23, 'ru', 202, 0.2314, 1),
(23, 'ru', 203, 0.2314, 2),
(23, 'ru', 204, 0.2314, 3),
(23, 'ru', 205, 0.2314, 6),
(23, 'ru', 206, 0.2314, 10),
(23, 'ru', 207, 0.2314, 13),
(23, 'ru', 208, 0.2314, 14),
(23, 'ru', 209, 0.2314, 15),
(23, 'ru', 210, 0.2314, 17),
(24, 'ru', 15, 0.2314, 3),
(24, 'ru', 165, 0.2314, 14),
(24, 'ru', 211, 0.3667, 2.5),
(24, 'ru', 212, 0.2314, 2),
(24, 'ru', 213, 0.2314, 6),
(24, 'ru', 214, 0.2314, 7),
(24, 'ru', 215, 0.2314, 9),
(24, 'ru', 216, 0.2314, 10),
(24, 'ru', 217, 0.2314, 11),
(24, 'ru', 252, 0.2314, 13),
(25, 'ru', 165, 0.2314, 3),
(25, 'ru', 227, 0.2314, 1),
(25, 'ru', 228, 0.2314, 2),
(26, 'ru', 165, 0.2314, 1),
(26, 'ru', 236, 0.2314, 2),
(27, 'ru', 239, 0.2314, 1),
(27, 'ru', 240, 0.2314, 2),
(28, 'ru', 25, 0.2314, 8),
(28, 'ru', 165, 0.2314, 7),
(28, 'ru', 166, 0.2314, 9),
(28, 'ru', 248, 0.2314, 1),
(30, 'ru', 227, 0.2314, 1),
(30, 'ru', 259, 0.2314, 7),
(31, 'ru', 240, 0.2314, 2),
(31, 'ru', 260, 0.2314, 1),
(31, 'ru', 261, 0.2314, 8),
(32, 'ru', 165, 0.2314, 2),
(32, 'ru', 262, 0.2314, 1),
(32, 'ru', 263, 0.2314, 8),
(33, 'ru', 264, 0.2314, 1),
(33, 'ru', 265, 0.2314, 2),
(33, 'ru', 266, 0.2314, 8),
(34, 'ru', 233, 0.2314, 3),
(34, 'ru', 267, 0.2314, 1),
(34, 'ru', 268, 0.2314, 2),
(35, 'ru', 219, 0.2314, 3),
(35, 'ru', 269, 0.2314, 1),
(35, 'ru', 270, 0.2314, 2),
(35, 'ru', 271, 0.2314, 4),
(36, 'ru', 219, 0.2314, 3),
(36, 'ru', 227, 0.2314, 4),
(36, 'ru', 272, 0.2314, 1),
(36, 'ru', 273, 0.2314, 2),
(37, 'ru', 165, 0.2314, 4),
(37, 'ru', 219, 0.2314, 3),
(37, 'ru', 236, 0.2314, 5),
(37, 'ru', 274, 0.2314, 1),
(37, 'ru', 275, 0.2314, 2),
(38, 'ru', 165, 0.2314, 4),
(38, 'ru', 219, 0.2314, 3),
(38, 'ru', 236, 0.2314, 5),
(38, 'ru', 276, 0.2314, 1),
(38, 'ru', 277, 0.2314, 2),
(39, 'ru', 219, 0.2314, 3),
(39, 'ru', 227, 0.2314, 4),
(39, 'ru', 278, 0.2314, 1),
(39, 'ru', 279, 0.2314, 2),
(40, 'ru', 114, 0.3667, 2),
(40, 'ru', 142, 0.2314, 2),
(40, 'ru', 206, 0.2314, 1),
(41, 'ru', 299, 0.2314, 1),
(41, 'ru', 300, 0.2314, 2),
(41, 'ru', 301, 0.2314, 3),
(42, 'ru', 209, 0.2314, 2),
(42, 'ru', 303, 0.2314, 1),
(43, 'ru', 306, 0.2314, 1),
(43, 'ru', 307, 0.2314, 2),
(43, 'ru', 308, 0.3667, 2),
(44, 'ru', 25, 0.2314, 10),
(44, 'ru', 67, 0.2314, 25),
(44, 'ru', 111, 0.3667, 8),
(44, 'ru', 112, 0.2314, 3),
(44, 'ru', 113, 0.2314, 9),
(44, 'ru', 114, 0.2314, 11),
(44, 'ru', 115, 0.2314, 14),
(44, 'ru', 116, 0.2314, 21),
(44, 'ru', 117, 0.2314, 22),
(44, 'ru', 118, 0.2314, 23),
(45, 'ru', 20, 0.2314, 14),
(45, 'ru', 70, 0.2314, 31),
(45, 'ru', 114, 0.2314, 32),
(45, 'ru', 123, 0.2314, 2),
(45, 'ru', 124, 0.2314, 9),
(45, 'ru', 125, 0.2314, 12),
(45, 'ru', 126, 0.2314, 15),
(45, 'ru', 127, 0.2314, 17),
(45, 'ru', 128, 0.2314, 23),
(45, 'ru', 129, 0.2314, 25),
(45, 'ru', 130, 0.2314, 26),
(45, 'ru', 131, 0.2314, 28),
(46, 'ru', 18, 0.3667, 13.5),
(46, 'ru', 23, 0.2314, 10),
(46, 'ru', 43, 0.2314, 16),
(46, 'ru', 109, 0.2314, 17),
(46, 'ru', 114, 0.3667, 14),
(46, 'ru', 137, 0.3667, 14.5),
(46, 'ru', 138, 0.2314, 9),
(46, 'ru', 139, 0.2314, 11),
(46, 'ru', 140, 0.2314, 12),
(46, 'ru', 141, 0.2314, 13),
(46, 'ru', 142, 0.2314, 14),
(46, 'ru', 143, 0.2314, 18),
(47, 'ru', 149, 0.2314, 1),
(48, 'ru', 310, 0.2314, 1),
(49, 'ru', 219, 0.2314, 1),
(50, 'ru', 311, 0.2314, 1),
(51, 'ru', 5, 0.1679, 96),
(51, 'ru', 6, 0.1679, 1),
(51, 'ru', 27, 0.2662, 43.5),
(51, 'ru', 44, 0.39, 42),
(51, 'ru', 126, 0.1679, 87),
(51, 'ru', 150, 0.1679, 93),
(51, 'ru', 151, 0.2662, 50),
(51, 'ru', 251, 0.2662, 22.5),
(51, 'ru', 312, 0.39, 24),
(51, 'ru', 313, 0.4341, 44.2),
(51, 'ru', 314, 0.2662, 23.5),
(51, 'ru', 315, 0.2662, 25.5),
(51, 'ru', 316, 0.2662, 26.5),
(51, 'ru', 317, 0.2662, 33.5),
(51, 'ru', 318, 0.2662, 34.5),
(51, 'ru', 319, 0.3359, 52.3333),
(51, 'ru', 320, 0.2662, 36.5),
(51, 'ru', 321, 0.2662, 37.5),
(51, 'ru', 322, 0.2662, 38.5),
(51, 'ru', 323, 0.2662, 39.5),
(51, 'ru', 324, 0.2662, 40.5),
(51, 'ru', 325, 0.2662, 44.5),
(51, 'ru', 326, 0.2662, 45.5),
(51, 'ru', 327, 0.3359, 57.6667),
(51, 'ru', 328, 0.1679, 70),
(51, 'ru', 329, 0.1679, 71),
(51, 'ru', 330, 0.1679, 72),
(51, 'ru', 331, 0.1679, 73),
(51, 'ru', 332, 0.1679, 79),
(51, 'ru', 333, 0.1679, 82),
(51, 'ru', 334, 0.1679, 84),
(51, 'ru', 366, 0.1679, 94),
(51, 'ru', 367, 0.1679, 95),
(52, 'ru', 24, 0.2683, 18.5),
(52, 'ru', 37, 0.2683, 38.5),
(52, 'ru', 39, 0.2683, 34.5),
(52, 'ru', 40, 0.1693, 91),
(52, 'ru', 51, 0.1693, 68),
(52, 'ru', 69, 0.1693, 3),
(52, 'ru', 71, 0.1693, 93),
(52, 'ru', 114, 0.1693, 85),
(52, 'ru', 164, 0.2683, 36.5),
(52, 'ru', 171, 0.2683, 31.5),
(52, 'ru', 209, 0.1693, 87),
(52, 'ru', 219, 0.1693, 63),
(52, 'ru', 233, 0.4376, 41),
(52, 'ru', 311, 0.1693, 90),
(52, 'ru', 335, 0.2683, 21.5),
(52, 'ru', 336, 0.2683, 25.5),
(52, 'ru', 337, 0.2683, 26.5),
(52, 'ru', 338, 0.2683, 28.5),
(52, 'ru', 339, 0.2683, 29.5),
(52, 'ru', 340, 0.2683, 32.5),
(52, 'ru', 341, 0.2683, 33.5),
(52, 'ru', 342, 0.2683, 35.5),
(52, 'ru', 343, 0.2683, 37.5),
(52, 'ru', 344, 0.2683, 40.5),
(52, 'ru', 345, 0.2683, 41.5),
(52, 'ru', 346, 0.1693, 62),
(52, 'ru', 347, 0.1693, 65),
(52, 'ru', 348, 0.1693, 66),
(52, 'ru', 349, 0.1693, 67),
(52, 'ru', 350, 0.1693, 74),
(52, 'ru', 351, 0.1693, 75),
(52, 'ru', 352, 0.1693, 76),
(52, 'ru', 353, 0.1693, 77),
(52, 'ru', 354, 0.1693, 78),
(52, 'ru', 355, 0.1693, 80),
(52, 'ru', 356, 0.1693, 82),
(52, 'ru', 357, 0.1693, 86),
(52, 'ru', 358, 0.1693, 92),
(52, 'ru', 364, 0.1693, 100),
(52, 'ru', 365, 0.1693, 101),
(53, 'ru', 107, 0.2314, 1),
(53, 'ru', 359, 0.2314, 2),
(53, 'ru', 360, 0.2314, 2),
(53, 'ru', 361, 0.2314, 2),
(54, 'ru', 362, 0.2314, 1),
(55, 'ru', 258, 0.2314, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_text`
--

CREATE TABLE `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_content_text`
--

INSERT INTO `b_search_content_text` (`SEARCH_CONTENT_ID`, `SEARCH_CONTENT_MD5`, `SEARCHABLE_CONTENT`) VALUES
(1, '6d4a7891ccc65964cb3d5ac8a32bbe35', 'О НАС\r\nНЕМНОГО О НАС\rКОМАНДА\rТВОРЧЕСКИЕ И ГЕНИАЛЬНЫЕ. МАСТЕРА СВОЕГО ДЕЛА\rСРОКИ НЕ ПРОБЛЕМА!\r\"\rСПАСУТ ЛЮБОЙ ПРОЕКТ С САМЫМИ ГОРЯЩИМИ СРОКАМИ! РЕБЯТА ДЕЙСТВИТЕЛЬНО\nПРОФЕССИОНАЛЫ СВОЕГО ДЕЛА.\r\"\r- АНДРЕЙ АЛЕКСАНДРОВ, BEST SHOP.\rЭТО ВЗРЫВ!\r\"\rЯ РАД, ЧТО МЫ ПОЛУЧИЛИ ТАКОЙ КЛАССНЫЙ ПРОДУКТ НА ВЫХОДЕ!\nДУМАЮ, ЧТО СОВМЕСТНЫМИ УСИЛИЯМИ МЫ РЕАЛИЗУЕМ ЕЩЁ НЕ ОДИН\nПРОЕКТ.\r\"\r- ВИТАЛИЙ НОХРИН, NA\'MAN REC.\rБОЛЬШАЯ УДАЧА?\r\"\rМЫ НАШЛИ WECODERS ПОСЛЕ ДЕСЯТКА НЕУДАЧНЫХ ПРОЕКТОВ С ДРУГИМИ WEB СТУДИЯМИ. И…\nЭТО БОЛЬШАЯ УДАЧА, \r\"\r- ИРИНА ГРАФ, CARS & CARS COMPANY\r\n'),
(2, 'f18bfdba67745d5b33a01341823a4abe', 'УСЛУГИ\r\nЧЕМ МЫ ЗАНИМАЕМСЯ\rSKILLS\rНАПРАВЛЕНИЯ\rВСЁ ЧТО НУЖНО ДЛЯ ПРОИЗВОДСТВА САЙТА ЛЮБОЙ СЛОЖНОСТИ\rРАЗРАБОТКА САЙТА\rКАКОЙ САЙТ ВАМ НУЖЕН? ВЫБИРАЙТЕ, ОСТАВЛЯЙТЕ ЗАЯВКУ В ФОРМЕ НИЖЕ И МЫ СВЯЖЕМСЯ С ВАМИ!\r\n'),
(3, '0bbd672b4675a3bbd5894dcf3a7c5ed8', 'ПОРТФОЛИО\r\nПОРТФОЛИО\rЛУЧШИЙ СПОСОБ НАЙТИ ХОРОШУЮ КОМАНДУ - ЭТО ПОСМОТРЕТЬ РЕЗУЛЬТАТЫ ЕЁ РАБОТЫ\r\n'),
(4, 'd8392ffcfad9d9932414957ebe4b9a46', 'БЛОГ\r\n\r\n'),
(5, '5fc921fec18fb7e71fc86fd86ee8789f', 'КОНТАКТЫ\r\nНУЖЕН КЛАССНЫЙ САЙТ?\rОСТАВЬТЕ ЗАЯВКУ В ФОРМЕ НИЖЕ И МЫ ВСЁ СДЕЛАЕМ!\rМЫ НАХОДИМСЯ ПО АДРЕСУ:\nГ. ТЮМЕНЬ, УЛ. РЕСПУБЛИКИ 94, ОФИС 23\r8-123-456-7899\rWECODERS@WECODRES.COM\r\n'),
(6, '4a7077e0b4701710c9f0426034b857fc', 'ГЛАВНАЯ\r\nО НАС\rОСНОВНЫЕ НАПРАВЛЕНИЯ\rВСЁ ЧТО НУЖНО ДЛЯ ПРОИЗВОДСТВА САЙТА ЛЮБОЙ СЛОЖНОСТИ\rПОРТФОЛИО\rЛУЧШИЙ СПОСОБ НАЙТИ ХОРОШУЮ КОМАНДУ - ЭТО ПОСМОТРЕТЬ РЕЗУЛЬТАТЫ ЕЁ РАБОТЫ\rВСЕ\rЛЕНДИНГИ\rИНТРЕНЕТ МАГАЗИНЫ\rПРОМО САЙТЫ\rКОРПОРАТИВНЫЕ ПОРТАЛЫ\rGREEN PLANET\rДИЗАЙН\rCREATIVE DEVELOPER\rРАЗРАБОТКА ЛЕНДИНГА\rDRESS & JEANS\rРАЗРАБОТКА ИНТЕРНЕТ-МАГАЗИНА\rMOUNTAIN KING\rРАЗРАБОТКА САЙТА ВИЗИТКИ\rBEAUTY SPA\rРАЗРАБОТКА САЙТА ВИЗИТКИ\rBENT APPLICATION\rРАЗРАБОТКА ЛЕНДИНГА\r\n'),
(7, '0781a1ea70108903bc30579205495586', 'ДОБРО ПОЖАЛОВАТЬ\r\nDIGITAL-АГЕНТСТВО\rWE CODERS\r\n'),
(8, 'c0c9d72c0d9fa9eb3ce6fc60c3f5ed49', 'РАБОТАЙТЕ С ЛУЧШИМИ\r\nСУДИТЕ ПО РЕЗУЛЬТАТАМ\r\n'),
(9, '5236caaf849229c286f6059757dd2761', 'БОЛЬШОЙ ОПЫТ\r\nКЛАССНЫЙ РЕЗУЛЬТАТ\r\n'),
(11, '9307107af4bf51f96b00dda9d0b617f1', 'АНТОН МОРОЗОВ\r\nКРЕАТИВНЫЙ ДИРЕКТОР\r\nНИ ОДИН ЧЕЛОВЕК ЗА ВСЮ ИСТОРИЮ НЕ ДОБИЛСЯ НИЧЕГО ВЕЛИКОГО, НЕ ПОРОДИВ ЭТОГО СНАЧАЛА В СВОЕМ ВООБРАЖЕНИИ.\r\n'),
(12, '6f609a77c14447cf27a54bb5a55c851b', 'АНАСТАСИЯ ЛЮБИМОВА\r\nДИЗАЙНЕР\r\nСОСРЕДОТОЧЬ ВСЕ СИЛЫ НА ДОСТИЖЕНИЕ ЖЕЛАЕМОГО, ЧТОБЫ У ТЕБЯ НЕ БЫЛО ВРЕМЕНИ БОЯТЬСЯ НЕЖЕЛАТЕЛЬНОГО.\r\n'),
(13, '97fe331a141d64183aee4b55d76be983', 'АЛЕКСАНДР ЛЕНСКИЙ\r\nWEB РАЗРАБОТЧИК\r\nЧЕМ ДОЛЬШЕ ВЫ ИДЕТЕ К УСПЕХУ, ТЕМ ОН СТАНОВИТСЯ БЛИЖЕ. СЛИШКОМ МНОГИЕ БРОСАЮТ ДЕЛО ЗА ШАГ ДО ПОБЕДЫ. ЗАПОМНИТЕ: ЭТОТ ШАГ СДЕЛАЮТ ДРУГИЕ.\r\n'),
(14, '4cb30d701ab394658658e6d74270a449', 'WEB-ДИЗАЙН\r\n\r\n'),
(15, '2976d945e0043bdf62c84d523b492a1f', 'PHP (BITRIX / LARAVEL / SYMFONY)\r\n\r\n'),
(16, '5f07d8409910e07a9bd87c4cc831ecc2', 'NODE.JS\r\n\r\n'),
(17, 'ee83252e4d9037f4835d3b11962f549f', 'JAVASCRIPT (ANGULAR / REACT)\r\n\r\n'),
(18, '157ea8e0d6d01e87344286b59ea42218', 'CSS (LESS)\r\n\r\n'),
(19, '0774b67fb486e671e54c331d77ae4842', 'WEB-ДИЗАЙН\r\nСОЗДАНИЕ ИНДИВИДУАЛЬНОЙ КОНЦЕПЦИИ, ОТ ЛАКОНИЧНЫХ РЕШЕНИЙ ДО СЛОЖНЫХ ДИНАМИЧЕСКИХ ЭЛЕМЕНТОВ.\r\n'),
(20, 'd236e1cf7fb680dc7319c5ba4436f146', 'FRONTEND\r\nКРАСИВАЯ И ОТЗЫВЧИВАЯ \rFRONTEND\rЧАСТЬ САЙТА, КОТОРАЯ БУДЕТ ОТЛИЧНО РАБОТАТЬ НА ВСЕХ РАЗРЕШЕНИЯХ И УСТРОЙСТВАХ.\r\n'),
(21, '4eb0ae8932b76e8cb94ebe871097fba5', 'BACKEND\r\nКРАСИВАЯ И ОТЗЫВЧИВАЯ <B>FRONTEND</B> ЧАСТЬ САЙТА, КОТОРАЯ БУДЕТ ОТЛИЧНО РАБОТАТЬ НА ВСЕХ РАЗРЕШЕНИЯХ И УСТРОЙСТВАХ.\r\nСТАБИЛЬНЫЙ И БЫСТРЫЙ \rBACKEND\rСАЙТА С ГИБКОЙ АДМИНКОЙ И ВЫСОКИМ УРОВНЕМ БЕЗОПАСНОСТИ.\r\n'),
(22, '625f398609b33dcd48dc5b32ac48b54d', 'ПРОДВИЖЕНИЕ\r\nОТ SEO-ОПТИМИЗАЦИИ ДО КОНТЕКСТНОЙ РЕКЛАМЫ. ВСЁ ДЛЯ ТОГО, ЧТОБЫ САЙТ СОБИРАЛ ТЫСЯЧИ ЛИДОВ.\r\n'),
(23, 'e42b41fccfc94b3d29e5ae7a82953219', 'ПОДДЕРЖКА\r\nПОПРАВИМ, ПЕРЕДЕЛАЕМ И РЕАЛИЗУЕМ НОВЫЕ РЕШЕНИЯ НА УЖЕ ГОТОВОМ САЙТЕ, А ТАКЖЕ ПРЕДЛОЖИМ ИДЕИ ПО УЛУЧШЕНИЮ.\r\n'),
(24, '2b86ade608463e1bb9328362059eb31a', 'КОНТЕНТ\r\nПОДГОТОВИМ ЛУЧШИЙ КОНТЕНТ ОТ НАПИСАНИЯ СТАТЕЙ ДО ПОДБОРА МУЗЫКАЛЬНОГО СОПРОВОЖДЕНИЯ И НАПОЛНИМ САЙТ.\r\n'),
(25, 'f6e583ad5f4aaac83c5b9566acefe37d', 'ЛЕНДИНГ\r\nОДНОСТРАНИЧНЫЙ САЙТ\r\n'),
(26, 'bd157240a00861919499070e6d944308', 'САЙТ ВИЗИТКА\r\n\r\n'),
(27, 'df2ef81f229feb1906a5bbc8610dbcef', 'ИНТЕРНЕТ МАГАЗИН\r\n\r\n'),
(28, 'c93c8f43a2413441a0c660908be1928b', 'КОРП. САЙТ\r\nЛЮБОЙ СЛОЖНОСТИ\r\n'),
(30, 'e3384c4e5182db746400b90ed7bebf9c', 'ЛЕНДИНГИ\r\n.LANDING\r\n'),
(31, 'ba03e36c3e86d21dd210569c3d90531f', 'ИНТРЕНЕТ МАГАЗИНЫ\r\n.INTERNET_SHOP\r\n'),
(32, '8b7475195b3dc0e5130379e85cd158c6', 'ПРОМО САЙТЫ\r\n.PROMO\r\n'),
(33, 'a70c4b4c1e84a4c89bea7fe6dd5604eb', 'КОРПОРАТИВНЫЕ ПОРТАЛЫ\r\n.CORPORATIVE_SITE\r\n'),
(34, '289a84ef041563fbbf49b368ddc85d55', 'GREEN PLANET\r\nДИЗАЙН\r\n'),
(35, '0c8ffd21db041bd6cbc692def84861c1', 'DRESS & JEANS\r\nРАЗРАБОТКА ИНТЕРНЕТ-МАГАЗИНА\r\n'),
(36, '880de114817f9504a66e8cd70d4252ba', 'CREATIVE DEVELOPERS\r\nРАЗРАБОТКА ЛЕНДИНГА\r\n'),
(37, '4406500f03f6df9e4003dc556ac5d0f0', 'MOUNTAIN KING\r\nРАЗРАБОТКА САЙТА ВИЗИТКИ\r\n'),
(38, 'ed20704c6f13d51e22b321cbae492b5a', 'BEAUTY SPA\r\nРАЗРАБОТКА САЙТА ВИЗИТКИ\r\n'),
(39, '913f4b86bf287287d3cbbd5479fe1d08', 'BENT APPLICATION\r\nРАЗРАБОТКА ЛЕНДИНГА\r\n'),
(40, 'e48d0e2e06cf3517ab466aa2ca12ab3d', 'ГОТОВЫХ ПРОЕКТОВ\r\n\r\n'),
(41, '4f2c76616e46e1ff2182729348e2c7e6', 'ЧАШЕК КОФЕ ВЫПИТО\r\n\r\n'),
(42, '6190b0c72f4ac463c64b1ce584108123', 'ВОПЛОТИЛИ ИДЕЙ\r\n\r\n'),
(43, '07ece575539508e6b22f2a67324db565', 'СЧАСТЛИВЫХ КЛИЕНТОВ\r\n\r\n'),
(44, '682517eea01575ab6b6fb3a6ab891579', 'СРОКИ НЕ ПРОБЛЕМА!\r\nСПАСУТ ЛЮБОЙ ПРОЕКТ С САМЫМИ ГОРЯЩИМИ СРОКАМИ! РЕБЯТА ДЕЙСТВИТЕЛЬНО ПРОФЕССИОНАЛЫ СВОЕГО ДЕЛА.\r\n'),
(45, 'fb996ded80fc40a22febe82b44ec38c3', 'ЭТО ВЗРЫВ!\r\nЯ РАД, ЧТО МЫ ПОЛУЧИЛИ ТАКОЙ КЛАССНЫЙ ПРОДУКТ НА ВЫХОДЕ! ДУМАЮ, ЧТО СОВМЕСТНЫМИ УСИЛИЯМИ МЫ РЕАЛИЗУЕМ ЕЩЁ НЕ ОДИН ПРОЕКТ.\r\n'),
(46, 'd523e5fcfe1cdecc7ab4f4dd7ee2df08', 'БОЛЬШАЯ УДАЧА!\r\nМЫ НАШЛИ WECODERS ПОСЛЕ ДЕСЯТКА НЕУДАЧНЫХ ПРОЕКТОВ С ДРУГИМИ WEB СТУДИЯМИ. И ЭТО БОЛЬШАЯ УДАЧА.\r\n'),
(47, '4cb30d701ab394658658e6d74270a449', 'WEB-ДИЗАЙН\r\n\r\n'),
(48, '9ecac6c186912101a020cff70131afdc', 'СОБЫТИЯ\r\n\r\n'),
(49, '506d35a68cb85cc903af1f9e1115b571', 'РАЗРАБОТКА\r\n\r\n'),
(50, '7e9e4da7ebafc397fd980820fbece5e6', 'РАЗНОЕ\r\n\r\n'),
(51, 'c0971fa7289daf419633be51b44fcc20', 'БЛОГ НА BITRIX\r\n1С-БИТРИКС — СИСТЕМА УПРАВЛЕНИЯ СОДЕРЖИМЫМ ОТ РОССИЙСКОЙ КОМПАНИИ 1С-БИТРИКС. ИМЕЕТ НЕСКОЛЬКО \"РЕДАКЦИЙ\" – ЛИЦЕНЗИОННЫХ ВЕРСИЙ: СТАРТ, СТАНДАРТ, МАЛЫЙ БИЗНЕС, БИЗНЕС, КОТОРЫЕ ОТЛИЧАЮТСЯ ВКЛЮЧАЕМЫМИ МОДУЛЯМИ СИСТЕМЫ.\r\n\r1С-БИТРИКС — СИСТЕМА УПРАВЛЕНИЯ СОДЕРЖИМЫМ ОТ РОССИЙСКОЙ КОМПАНИИ 1С-БИТРИКС. ИМЕЕТ НЕСКОЛЬКО \"РЕДАКЦИЙ\" – ЛИЦЕНЗИОННЫХ ВЕРСИЙ: СТАРТ, СТАНДАРТ, МАЛЫЙ БИЗНЕС, БИЗНЕС, КОТОРЫЕ ОТЛИЧАЮТСЯ ВКЛЮЧАЕМЫМИ МОДУЛЯМИ СИСТЕМЫ.\rПОДДЕРЖИВАЮТСЯ СЛЕДУЮЩИЕ СУБД: MYSQL. КОЛИЧЕСТВО МОДУЛЕЙ В УСТАНАВЛИВАЕМОЙ СИСТЕМЕ ЗАВИСИТ ОТ РЕДАКЦИИ ПРОДУКТА.\r\nPHP, UI/UX, ПОРТФОЛИО, BITRIX'),
(52, '340a59fa8498f9ab0a72d3800eec95da', 'ДИЗАЙН ВО ВСЕМ\r\nСЧИТАЕТСЯ, ЧТО ДИЗАЙН ПРИЗВАН НЕ ТОЛЬКО К ХУДОЖЕСТВЕННОМУ КОНСТРУИРОВАНИЮ, НО ДОЛЖЕН УЧАСТВОВАТЬ В РЕШЕНИИ БОЛЕЕ ШИРОКИХ ПРОБЛЕМ ФУНКЦИОНИРОВАНИЯ ПРОИЗВОДСТВА, СУЩЕСТВОВАНИЯ ЛЮДЕЙ В ПРЕДМЕТНОЙ СРЕДЕ.\r\n\rСЧИТАЕТСЯ, ЧТО ДИЗАЙН ПРИЗВАН НЕ ТОЛЬКО К ХУДОЖЕСТВЕННОМУ КОНСТРУИРОВАНИЮ, НО ДОЛЖЕН УЧАСТВОВАТЬ В РЕШЕНИИ БОЛЕЕ ШИРОКИХ ПРОБЛЕМ ФУНКЦИОНИРОВАНИЯ ПРОИЗВОДСТВА, СУЩЕСТВОВАНИЯ ЛЮДЕЙ В ПРЕДМЕТНОЙ СРЕДЕ.\rПРОЦЕСС РАЗРАБОТКИ ДИЗАЙНА НЕЛЬЗЯ НАЗВАТЬ ОДНООБРАЗНОЙ РАБОТОЙ. НАПРОТИВ, ДИЗАЙНЕРАМ-ХУДОЖНИКАМ ПОСТОЯННО ПРИХОДИТСЯ ТВОРИТЬ - ПРИДУМЫВАТЬ И ВОПЛОЩАТЬ В СВОИХ ПРОЕКТАХ РЕВОЛЮЦИОННЫЕ ИДЕИ В САМЫХ РАЗНЫХ СФЕРАХ ЖИЗНИ ЧЕЛОВЕКА.\r\nДИЗАЙН, HTML5, CSS3'),
(53, '19c7933283175d90928176591fb01558', 'АЛЕКСАНДР АКСЕНОВ\r\n\r\n'),
(54, 'f58e028735b5d07233c4a161c9231405', 'ПОИСК\r\n\r\n'),
(55, 'ff886afbd8b050459a39cd8f0e5aa13d', 'ВСЕ\r\nALL\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_content_title`
--

CREATE TABLE `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

--
-- Дамп данных таблицы `b_search_content_title`
--

INSERT INTO `b_search_content_title` (`SEARCH_CONTENT_ID`, `SITE_ID`, `POS`, `WORD`) VALUES
(1, 's1', 2, 'НАС'),
(1, 's1', 0, 'О'),
(2, 's1', 0, 'УСЛУГИ'),
(3, 's1', 0, 'ПОРТФОЛИО'),
(4, 's1', 0, 'БЛОГ'),
(5, 's1', 0, 'КОНТАКТЫ'),
(6, 's1', 0, 'ГЛАВНАЯ'),
(7, 's1', 0, 'ДОБРО'),
(7, 's1', 6, 'ПОЖАЛОВАТЬ'),
(8, 's1', 12, 'ЛУЧШИМИ'),
(8, 's1', 0, 'РАБОТАЙТЕ'),
(8, 's1', 10, 'С'),
(9, 's1', 0, 'БОЛЬШОЙ'),
(9, 's1', 8, 'ОПЫТ'),
(11, 's1', 0, 'АНТОН'),
(11, 's1', 6, 'МОРОЗОВ'),
(12, 's1', 0, 'АНАСТАСИЯ'),
(12, 's1', 10, 'ЛЮБИМОВА'),
(13, 's1', 0, 'АЛЕКСАНДР'),
(13, 's1', 10, 'ЛЕНСКИЙ'),
(14, 's1', 0, 'WEB-ДИЗАЙН'),
(15, 's1', 5, 'BITRIX'),
(15, 's1', 14, 'LARAVEL'),
(15, 's1', 0, 'PHP'),
(15, 's1', 24, 'SYMFONY'),
(16, 's1', 5, 'JS'),
(16, 's1', 0, 'NODE'),
(17, 's1', 12, 'ANGULAR'),
(17, 's1', 0, 'JAVASCRIPT'),
(17, 's1', 22, 'REACT'),
(18, 's1', 0, 'CSS'),
(18, 's1', 5, 'LESS'),
(19, 's1', 0, 'WEB-ДИЗАЙН'),
(20, 's1', 0, 'FRONTEND'),
(21, 's1', 0, 'BACKEND'),
(22, 's1', 0, 'ПРОДВИЖЕНИЕ'),
(23, 's1', 0, 'ПОДДЕРЖКА'),
(24, 's1', 0, 'КОНТЕНТ'),
(25, 's1', 0, 'ЛЕНДИНГ'),
(26, 's1', 5, 'ВИЗИТКА'),
(26, 's1', 0, 'САЙТ'),
(27, 's1', 0, 'ИНТЕРНЕТ'),
(27, 's1', 9, 'МАГАЗИН'),
(28, 's1', 0, 'КОРП'),
(28, 's1', 6, 'САЙТ'),
(30, 's1', 0, 'ЛЕНДИНГИ'),
(31, 's1', 0, 'ИНТРЕНЕТ'),
(31, 's1', 9, 'МАГАЗИНЫ'),
(32, 's1', 0, 'ПРОМО'),
(32, 's1', 6, 'САЙТЫ'),
(33, 's1', 0, 'КОРПОРАТИВНЫЕ'),
(33, 's1', 14, 'ПОРТАЛЫ'),
(34, 's1', 0, 'GREEN'),
(34, 's1', 6, 'PLANET'),
(35, 's1', 0, 'DRESS'),
(35, 's1', 8, 'JEANS'),
(36, 's1', 0, 'CREATIVE'),
(36, 's1', 9, 'DEVELOPERS'),
(37, 's1', 9, 'KING'),
(37, 's1', 0, 'MOUNTAIN'),
(38, 's1', 0, 'BEAUTY'),
(38, 's1', 7, 'SPA'),
(39, 's1', 5, 'APPLICATION'),
(39, 's1', 0, 'BENT'),
(40, 's1', 0, 'ГОТОВЫХ'),
(40, 's1', 8, 'ПРОЕКТОВ'),
(41, 's1', 11, 'ВЫПИТО'),
(41, 's1', 6, 'КОФЕ'),
(41, 's1', 0, 'ЧАШЕК'),
(42, 's1', 0, 'ВОПЛОТИЛИ'),
(42, 's1', 10, 'ИДЕЙ'),
(43, 's1', 11, 'КЛИЕНТОВ'),
(43, 's1', 0, 'СЧАСТЛИВЫХ'),
(44, 's1', 6, 'НЕ'),
(44, 's1', 9, 'ПРОБЛЕМА'),
(44, 's1', 0, 'СРОКИ'),
(45, 's1', 4, 'ВЗРЫВ'),
(45, 's1', 0, 'ЭТО'),
(46, 's1', 0, 'БОЛЬШАЯ'),
(46, 's1', 8, 'УДАЧА'),
(47, 's1', 0, 'WEB-ДИЗАЙН'),
(48, 's1', 0, 'СОБЫТИЯ'),
(49, 's1', 0, 'РАЗРАБОТКА'),
(50, 's1', 0, 'РАЗНОЕ'),
(51, 's1', 8, 'BITRIX'),
(51, 's1', 0, 'БЛОГ'),
(51, 's1', 5, 'НА'),
(52, 's1', 7, 'ВО'),
(52, 's1', 10, 'ВСЕМ'),
(52, 's1', 0, 'ДИЗАЙН'),
(53, 's1', 10, 'АКСЕНОВ'),
(53, 's1', 0, 'АЛЕКСАНДР'),
(54, 's1', 0, 'ПОИСК'),
(55, 's1', 0, 'ВСЕ');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_custom_rank`
--

CREATE TABLE `b_search_custom_rank` (
  `ID` int(11) NOT NULL,
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_phrase`
--

CREATE TABLE `b_search_phrase` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8_unicode_ci,
  `URL_TO_404` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_phrase`
--

INSERT INTO `b_search_phrase` (`ID`, `TIMESTAMP_X`, `SITE_ID`, `RESULT_COUNT`, `PAGES`, `SESSION_ID`, `PHRASE`, `TAGS`, `URL_TO`, `URL_TO_404`, `URL_TO_SITE_ID`, `STAT_SESS_ID`, `EVENT1`) VALUES
(1, '2020-11-17 20:27:41', 's1', 1, 1, '7670f165ab93d29fffedec6133313d0e', 'дизайн во всем', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2020-11-17 20:50:50', 's1', 1, 1, '56de456ac3fd629c3c0c61f12709af50', 'дизайн во всем', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2020-11-17 21:15:44', 's1', 0, 0, '7670f165ab93d29fffedec6133313d0e', 'пр', NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2020-11-17 22:48:12', 's1', 0, 0, '7670f165ab93d29fffedec6133313d0e', 'рпо', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2020-11-20 21:21:48', 's1', 1, 1, 'a9389edb12585a7c50ea77adc82b1523', 'дизайн во всем', NULL, 'http://wecoders.loc/blog/web-dizayn/dizayn-vo-vsem', 'N', 's1', NULL, NULL),
(6, '2020-11-20 21:45:16', 's1', 0, 0, 'a9389edb12585a7c50ea77adc82b1523', 'туалет', NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2020-11-20 22:14:53', 's1', 0, 0, 'a9389edb12585a7c50ea77adc82b1523', 'битрикс', NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2020-11-20 22:38:00', 's1', 1, 1, 'a9389edb12585a7c50ea77adc82b1523', NULL, 'Дизайн', NULL, NULL, NULL, NULL, NULL),
(9, '2020-11-20 22:38:14', 's1', 1, 1, 'a9389edb12585a7c50ea77adc82b1523', NULL, 'Html5. Css3', NULL, NULL, NULL, NULL, NULL),
(10, '2020-11-20 22:48:13', 's1', 1, 1, 'a9389edb12585a7c50ea77adc82b1523', NULL, 'Html5', NULL, NULL, NULL, NULL, NULL),
(11, '2020-11-20 22:50:43', 's1', 1, 1, 'a9389edb12585a7c50ea77adc82b1523', NULL, 'Bitrix', NULL, NULL, NULL, NULL, NULL),
(12, '2020-11-20 23:12:42', 's1', 1, 1, 'a9389edb12585a7c50ea77adc82b1523', NULL, 'Bitrix, UI/UX', NULL, NULL, NULL, NULL, NULL),
(13, '2020-11-20 23:12:45', 's1', 1, 1, 'a9389edb12585a7c50ea77adc82b1523', NULL, 'Bitrix, UI/UX, Портфолио', NULL, NULL, NULL, NULL, NULL),
(14, '2020-11-21 16:19:59', 's1', 1, 1, '88e2367b010d5baceb51adf8ec30ead4', 'дизайн во всем', NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2020-11-21 16:22:11', 's1', 1, 1, '88e2367b010d5baceb51adf8ec30ead4', NULL, 'Css3', NULL, NULL, NULL, NULL, NULL),
(16, '2020-11-21 16:22:14', 's1', 1, 1, '88e2367b010d5baceb51adf8ec30ead4', NULL, 'Css3, Дизайн', NULL, NULL, NULL, NULL, NULL),
(17, '2020-11-21 16:22:18', 's1', 1, 1, '88e2367b010d5baceb51adf8ec30ead4', NULL, 'UI/UX', NULL, NULL, NULL, NULL, NULL),
(18, '2020-11-21 16:22:23', 's1', 1, 1, '88e2367b010d5baceb51adf8ec30ead4', NULL, 'UI/UX, Портфолио', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_stem`
--

CREATE TABLE `b_search_stem` (
  `ID` int(11) NOT NULL,
  `STEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_stem`
--

INSERT INTO `b_search_stem` (`ID`, `STEM`) VALUES
(230, '000'),
(229, '10'),
(305, '115'),
(237, '15'),
(312, '1С-БИТРИКС'),
(292, '23'),
(231, '2Х'),
(241, '30'),
(297, '360'),
(242, '3Х'),
(302, '420'),
(249, '50'),
(298, '690'),
(293, '8-123-456-7899'),
(290, '94'),
(258, 'ALL'),
(157, 'ANGULAR'),
(279, 'APPLICATION'),
(185, 'BACKEND'),
(276, 'BEAUTY'),
(278, 'BENT'),
(121, 'BEST'),
(151, 'BITRIX'),
(146, 'CARS'),
(13, 'CODERS'),
(295, 'COM'),
(147, 'COMPANY'),
(266, 'CORPORATIVE_SITE'),
(272, 'CREATIVE'),
(159, 'CSS'),
(365, 'CSS3'),
(309, 'DEVELOPER'),
(273, 'DEVELOPERS'),
(41, 'DIGITAL'),
(11, 'DIGITAL-АГЕНТСТВ'),
(269, 'DRESS'),
(176, 'FRONTEND'),
(267, 'GREEN'),
(3, 'HERE'),
(364, 'HTML5'),
(261, 'INTERNET_SHOP'),
(156, 'JAVASCRIPT'),
(270, 'JEANS'),
(155, 'JS'),
(275, 'KING'),
(259, 'LANDING'),
(152, 'LARAVEL'),
(160, 'LESS'),
(135, 'MAN'),
(274, 'MOUNTAIN'),
(331, 'MYSQL'),
(134, 'NA'),
(154, 'NODE'),
(150, 'PHP'),
(268, 'PLANET'),
(263, 'PROMO'),
(158, 'REACT'),
(136, 'REC'),
(194, 'SEO-ОПТИМИЗАЦ'),
(122, 'SHOP'),
(161, 'SKILLS'),
(277, 'SPA'),
(153, 'SYMFONY'),
(363, 'TEST'),
(2, 'TEXT'),
(366, 'UI'),
(367, 'UX'),
(12, 'WE'),
(109, 'WEB'),
(149, 'WEB-ДИЗАЙН'),
(23, 'WECODERS'),
(294, 'WECODRES'),
(257, 'АВЫЫВАЫВАЫВ'),
(189, 'АДМИНК'),
(286, 'АДРЕС'),
(361, 'АКС'),
(360, 'АКСЕН'),
(359, 'АКСЕНОВ'),
(107, 'АЛЕКСАНДР'),
(120, 'АЛЕКСАНДРОВ'),
(91, 'АНАСТАС'),
(119, 'АНДР'),
(80, 'АНТОН'),
(247, 'БАЗОВ'),
(192, 'БЕЗОПАСН'),
(44, 'БИЗНЕС'),
(100, 'БЛИЖ'),
(6, 'БЛОГ'),
(340, 'БОЛ'),
(18, 'БОЛЬШ'),
(89, 'БОЯ'),
(102, 'БРОСА'),
(180, 'БУДЕТ'),
(187, 'БЫСТР'),
(76, 'ВЕЛИК'),
(321, 'ВЕРС'),
(123, 'ВЗРЫВ'),
(236, 'ВИЗИТК'),
(132, 'ВИТАЛ'),
(326, 'ВКЛЮЧА'),
(245, 'ВНЕШН'),
(60, 'ВНИЗ'),
(79, 'ВООБРАЖЕН'),
(303, 'ВОПЛОТ'),
(356, 'ВОПЛОЩА'),
(88, 'ВРЕМЕН'),
(69, 'ВСЕМ'),
(182, 'ВСЕХ'),
(72, 'ВСЮ'),
(221, 'ВЫБИРА'),
(301, 'ВЫПИТ'),
(190, 'ВЫСОК'),
(127, 'ВЫХОД'),
(65, 'ГЕНИАЛЬН'),
(188, 'ГИБК'),
(8, 'ГЛАВН'),
(50, 'ГОД'),
(115, 'ГОРЯ'),
(206, 'ГОТОВ'),
(145, 'ГРАФ'),
(117, 'ДЕЙСТВИТЕЛЬН'),
(67, 'ДЕЛ'),
(63, 'ДЕЛА'),
(140, 'ДЕСЯТК'),
(233, 'ДИЗАЙН'),
(94, 'ДИЗАЙНЕР'),
(351, 'ДИЗАЙНЕРАМ-ХУДОЖНИК'),
(173, 'ДИНАМИЧЕСК'),
(84, 'ДИРЕКТОР'),
(74, 'ДОБ'),
(9, 'ДОБР'),
(338, 'ДОЛЖ'),
(95, 'ДОЛЬШ'),
(234, 'ДОМ'),
(86, 'ДОСТИЖЕН'),
(45, 'ДОСТИЧ'),
(43, 'ДРУГ'),
(128, 'ДУМА'),
(87, 'ЖЕЛА'),
(358, 'ЖИЗН'),
(334, 'ЗАВИС'),
(26, 'ЗАДАЧ'),
(33, 'ЗАНИМА'),
(105, 'ЗАПОМН'),
(223, 'ЗАЯВК'),
(209, 'ИД'),
(96, 'ИДЕТ'),
(317, 'ИМЕЕТ'),
(168, 'ИНДИВИДУАЛЬН'),
(56, 'ИННОВАЦ'),
(244, 'ИНТЕГРАЦ'),
(239, 'ИНТЕРНЕТ'),
(271, 'ИНТЕРНЕТ-МАГАЗИН'),
(260, 'ИНТРЕНЕТ'),
(256, 'ИНФОРМАЦ'),
(144, 'ИРИН'),
(47, 'ИСПОЛЬЗУ'),
(73, 'ИСТОР'),
(28, 'КАЖЕТ'),
(20, 'КЛАССН'),
(308, 'КЛИЕНТ'),
(307, 'КЛИЕНТОВ'),
(332, 'КОЛИЧЕСТВ'),
(64, 'КОМАНД'),
(316, 'КОМПАН'),
(337, 'КОНСТРУИРОВАН'),
(7, 'КОНТАКТ'),
(195, 'КОНТЕКСТН'),
(211, 'КОНТЕНТ'),
(169, 'КОНЦЕПЦ'),
(248, 'КОРП'),
(264, 'КОРПОРАТИВН'),
(54, 'КОРПОРАЦ'),
(27, 'КОТОР'),
(300, 'КОФ'),
(177, 'КРАСИВ'),
(83, 'КРЕАТИВН'),
(52, 'КРУПН'),
(170, 'ЛАКОНИЧН'),
(227, 'ЛЕНДИНГ'),
(108, 'ЛЕНСК'),
(148, 'ЛЕНСКИЙ2'),
(201, 'ЛИД'),
(200, 'ЛИДОВ'),
(320, 'ЛИЦЕНЗИОН'),
(15, 'ЛУЧШ'),
(25, 'ЛЮБ'),
(93, 'ЛЮБИМ'),
(92, 'ЛЮБИМОВ'),
(37, 'ЛЮД'),
(240, 'МАГАЗИН'),
(324, 'МАЛ'),
(66, 'МАСТЕР'),
(243, 'МЕС'),
(53, 'МИРОВ'),
(49, 'МНОГ'),
(327, 'МОДУЛ'),
(30, 'МОЖН'),
(82, 'МОРОЗ'),
(81, 'МОРОЗОВ'),
(216, 'МУЗЫКАЛЬН'),
(348, 'НАЗВА'),
(281, 'НАЙТ'),
(48, 'НАКОПЛЕН'),
(213, 'НАПИСАН'),
(252, 'НАПОЛН'),
(218, 'НАПОН'),
(162, 'НАПРАВЛЕН'),
(350, 'НАПРОТ'),
(1, 'НАС'),
(285, 'НАХОД'),
(138, 'НАШЛ'),
(29, 'НЕВОЗМОЖН'),
(232, 'НЕДЕЛ'),
(90, 'НЕЖЕЛАТЕЛЬН'),
(347, 'НЕЛЬЗ'),
(22, 'НЕМН'),
(318, 'НЕСКОЛЬК'),
(141, 'НЕУДАЧН'),
(225, 'НИЖ'),
(75, 'НИЧ'),
(205, 'НОВ'),
(133, 'НОХРИН'),
(220, 'НУЖ'),
(163, 'НУЖН'),
(57, 'ОБЕСПЕЧИВА'),
(70, 'ОДИН'),
(349, 'ОДНООБРАЗН'),
(228, 'ОДНОСТРАНИЧН'),
(19, 'ОП'),
(254, 'ОРГАНИЗАЦ'),
(296, 'ОСНОВН'),
(222, 'ОСТАВЛЯ'),
(284, 'ОСТАВЬТ'),
(36, 'ОТВЕТСТВЕН'),
(178, 'ОТЗЫВЧИВ'),
(325, 'ОТЛИЧА'),
(181, 'ОТЛИЧН'),
(291, 'ОФИС'),
(250, 'ПАНЕЛ'),
(204, 'ПЕРЕДЕЛА'),
(255, 'ПЕРСОНАЛЬН'),
(104, 'ПОБЕД'),
(215, 'ПОДБОР'),
(212, 'ПОДГОТОВ'),
(328, 'ПОДДЕРЖИВА'),
(202, 'ПОДДЕРЖК'),
(10, 'ПОЖАЛОВА'),
(362, 'ПОИСК'),
(125, 'ПОЛУЧ'),
(42, 'ПОМОЧ'),
(203, 'ПОПРАВ'),
(77, 'ПОРОД'),
(265, 'ПОРТАЛ'),
(5, 'ПОРТФОЛ'),
(139, 'ПОСЛ'),
(283, 'ПОСМОТРЕТ'),
(352, 'ПОСТОЯ'),
(208, 'ПРЕДЛОЖ'),
(344, 'ПРЕДМЕТН'),
(253, 'ПРЕДСТАВЛЕН'),
(68, 'ПРИВЕТ'),
(355, 'ПРИДУМЫВА'),
(335, 'ПРИЗВА'),
(353, 'ПРИХОД'),
(39, 'ПРОБЛ'),
(112, 'ПРОБЛЕМ'),
(193, 'ПРОДВИЖЕН'),
(126, 'ПРОДУКТ'),
(114, 'ПРОЕКТ'),
(142, 'ПРОЕКТОВ'),
(164, 'ПРОИЗВОДСТВ'),
(59, 'ПРОКРУТ'),
(262, 'ПРОМ'),
(118, 'ПРОФЕССИОНАЛ'),
(346, 'ПРОЦЕСС'),
(51, 'РАБОТ'),
(14, 'РАБОТА'),
(124, 'РАД'),
(311, 'РАЗН'),
(219, 'РАЗРАБОТК'),
(110, 'РАЗРАБОТЧИК'),
(183, 'РАЗРЕШЕН'),
(131, 'РЕАЛИЗУ'),
(58, 'РЕАЛЬН'),
(116, 'РЕБЯТ'),
(357, 'РЕВОЛЮЦИОН'),
(319, 'РЕДАКЦ'),
(17, 'РЕЗУЛЬТАТ'),
(196, 'РЕКЛАМ'),
(289, 'РЕСПУБЛИК'),
(31, 'РЕШ'),
(171, 'РЕШЕН'),
(315, 'РОССИЙСК'),
(165, 'САЙТ'),
(226, 'СВЯЖ'),
(106, 'СДЕЛА'),
(246, 'СЕРВИС'),
(38, 'СИЛ'),
(313, 'СИСТЕМ'),
(329, 'СЛЕД'),
(101, 'СЛИШК'),
(172, 'СЛОЖН'),
(166, 'СЛОЖНОСТ'),
(78, 'СНАЧА'),
(198, 'СОБИРА'),
(34, 'СОБРА'),
(310, 'СОБЫТ'),
(129, 'СОВМЕСТН'),
(314, 'СОДЕРЖИМ'),
(55, 'СОЗДА'),
(167, 'СОЗДАН'),
(217, 'СОПРОВОЖДЕН'),
(85, 'СОСРЕДОТОЧ'),
(113, 'СПАСУТ'),
(280, 'СПОСОБ'),
(345, 'СРЕД'),
(111, 'СРОК'),
(186, 'СТАБИЛЬН'),
(323, 'СТАНДАРТ'),
(99, 'СТАНОВ'),
(322, 'СТАРТ'),
(214, 'СТАТ'),
(143, 'СТУД'),
(330, 'СУБД'),
(16, 'СУД'),
(304, 'СУПЕР-ЙД'),
(343, 'СУЩЕСТВОВАН'),
(40, 'СФЕР'),
(306, 'СЧАСТЛИВ'),
(24, 'СЧИТА'),
(207, 'ТАКЖ'),
(354, 'ТВОР'),
(35, 'ТВОРЧЕСК'),
(98, 'ТЕМ'),
(21, 'ТЕСТ'),
(197, 'ТОГ'),
(62, 'ТОМ'),
(199, 'ТЫСЯЧ'),
(287, 'ТЮМЕН'),
(137, 'УДАЧ'),
(238, 'УДОБН'),
(61, 'УЗНА'),
(288, 'УЛ'),
(210, 'УЛУЧШЕН'),
(251, 'УПРАВЛЕН'),
(191, 'УРОВН'),
(130, 'УСИЛ'),
(4, 'УСЛУГ'),
(97, 'УСПЕХ'),
(32, 'УСПЕШН'),
(333, 'УСТАНАВЛИВА'),
(184, 'УСТРОЙСТВ'),
(339, 'УЧАСТВОВА'),
(224, 'ФОРМ'),
(342, 'ФУНКЦИОНИРОВАН'),
(282, 'ХОРОШ'),
(235, 'ХОСТИНГ'),
(336, 'ХУДОЖЕСТВЕН'),
(46, 'ЦЕЛ'),
(179, 'ЧАСТ'),
(299, 'ЧАШЕК'),
(71, 'ЧЕЛОВЕК'),
(103, 'ШАГ'),
(341, 'ШИРОК'),
(175, 'ЭЛЕМЕНТ'),
(174, 'ЭЛЕМЕНТОВ');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_suggest`
--

CREATE TABLE `b_search_suggest` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_search_suggest`
--

INSERT INTO `b_search_suggest` (`ID`, `SITE_ID`, `FILTER_MD5`, `PHRASE`, `RATE`, `TIMESTAMP_X`, `RESULT_COUNT`) VALUES
(1, 's1', '8db4033e04bd6fa2f1bc67c1a840bed2', 'дизайн во всем', 1, '2020-11-17 21:14:57', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_tags`
--

CREATE TABLE `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

--
-- Дамп данных таблицы `b_search_tags`
--

INSERT INTO `b_search_tags` (`SEARCH_CONTENT_ID`, `SITE_ID`, `NAME`) VALUES
(51, 's1', 'Bitrix'),
(52, 's1', 'Css3'),
(52, 's1', 'Html5'),
(51, 's1', 'Php'),
(51, 's1', 'UI/UX'),
(52, 's1', 'Дизайн'),
(51, 's1', 'Портфолио');

-- --------------------------------------------------------

--
-- Структура таблицы `b_search_user_right`
--

CREATE TABLE `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_security_sitecheck`
--

CREATE TABLE `b_security_sitecheck` (
  `ID` int(11) NOT NULL,
  `TEST_DATE` datetime DEFAULT NULL,
  `RESULTS` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_filter_mask`
--

CREATE TABLE `b_sec_filter_mask` (
  `ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '10',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_frame_mask`
--

CREATE TABLE `b_sec_frame_mask` (
  `ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '10',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FRAME_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_iprule`
--

CREATE TABLE `b_sec_iprule` (
  `ID` int(11) NOT NULL,
  `RULE_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ADMIN_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_FROM_TIMESTAMP` int(11) DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `ACTIVE_TO_TIMESTAMP` int(11) DEFAULT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_iprule_excl_ip`
--

CREATE TABLE `b_sec_iprule_excl_ip` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_IP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `IP_START` bigint(18) DEFAULT NULL,
  `IP_END` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_iprule_excl_mask`
--

CREATE TABLE `b_sec_iprule_excl_mask` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_MASK` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_iprule_incl_ip`
--

CREATE TABLE `b_sec_iprule_incl_ip` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_IP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `IP_START` bigint(18) DEFAULT NULL,
  `IP_END` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_iprule_incl_mask`
--

CREATE TABLE `b_sec_iprule_incl_mask` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_MASK` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_recovery_codes`
--

CREATE TABLE `b_sec_recovery_codes` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USED` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USING_DATE` datetime DEFAULT NULL,
  `USING_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_redirect_url`
--

CREATE TABLE `b_sec_redirect_url` (
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `URL` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETER_NAME` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_sec_redirect_url`
--

INSERT INTO `b_sec_redirect_url` (`IS_SYSTEM`, `SORT`, `URL`, `PARAMETER_NAME`) VALUES
('Y', 10, '/bitrix/redirect.php', 'goto'),
('Y', 20, '/bitrix/rk.php', 'goto'),
('Y', 30, '/bitrix/click.php', 'goto');

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_session`
--

CREATE TABLE `b_sec_session` (
  `SESSION_ID` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `SESSION_DATA` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_user`
--

CREATE TABLE `b_sec_user` (
  `USER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECRET` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(18) DEFAULT NULL,
  `INITIAL_DATE` datetime DEFAULT NULL,
  `SKIP_MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_UNTIL` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_virus`
--

CREATE TABLE `b_sec_virus` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INFO` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sec_white_list`
--

CREATE TABLE `b_sec_white_list` (
  `ID` int(11) NOT NULL,
  `WHITE_SUBSTR` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_autolog`
--

CREATE TABLE `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT '0',
  `SUCCESS` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_banner`
--

CREATE TABLE `b_seo_adv_banner` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_campaign`
--

CREATE TABLE `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_group`
--

CREATE TABLE `b_seo_adv_group` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_link`
--

CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_log`
--

CREATE TABLE `b_seo_adv_log` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `REQUEST_URI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_order`
--

CREATE TABLE `b_seo_adv_order` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT '0',
  `PROCESSED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_adv_region`
--

CREATE TABLE `b_seo_adv_region` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `PARENT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_keywords`
--

CREATE TABLE `b_seo_keywords` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_search_engine`
--

CREATE TABLE `b_seo_search_engine` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(5) DEFAULT '100',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_seo_search_engine`
--

INSERT INTO `b_seo_search_engine` (`ID`, `CODE`, `ACTIVE`, `SORT`, `NAME`, `CLIENT_ID`, `CLIENT_SECRET`, `REDIRECT_URI`, `SETTINGS`) VALUES
(1, 'google', 'Y', 200, 'Google', '868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com', 'EItMlJpZLC2WRPKB6QsA5bV9', 'urn:ietf:wg:oauth:2.0:oob', NULL),
(2, 'yandex', 'Y', 300, 'Yandex', 'f848c7bfc1d34a94ba6d05439f81bbd7', 'da0e73b2d9cc4e809f3170e49cb9df01', 'https://oauth.yandex.ru/verification_code', NULL),
(3, 'yandex_direct', 'Y', 400, 'Yandex.Direct', '', '', 'https://oauth.yandex.ru/verification_code', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_log`
--

CREATE TABLE `b_seo_service_log` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_rtg_queue`
--

CREATE TABLE `b_seo_service_rtg_queue` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCOUNT_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIENCE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PARENT_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_subscription`
--

CREATE TABLE `b_seo_service_subscription` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALLBACK_SERVER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_service_webhook`
--

CREATE TABLE `b_seo_service_webhook` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap`
--

CREATE TABLE `b_seo_sitemap` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap_entity`
--

CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap_iblock`
--

CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_sitemap_runtime`
--

CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_seo_yandex_direct_stat`
--

CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT '0',
  `SUM_SEARCH` float DEFAULT '0',
  `SUM_CONTEXT` float DEFAULT '0',
  `CLICKS` int(7) DEFAULT '0',
  `CLICKS_SEARCH` int(7) DEFAULT '0',
  `CLICKS_CONTEXT` int(7) DEFAULT '0',
  `SHOWS` int(7) DEFAULT '0',
  `SHOWS_SEARCH` int(7) DEFAULT '0',
  `SHOWS_CONTEXT` int(7) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_short_uri`
--

CREATE TABLE `b_short_uri` (
  `ID` int(18) NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `URI_CRC` int(18) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(18) NOT NULL,
  `STATUS` int(18) NOT NULL DEFAULT '301',
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_site_template`
--

CREATE TABLE `b_site_template` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_site_template`
--

INSERT INTO `b_site_template` (`ID`, `SITE_ID`, `CONDITION`, `SORT`, `TEMPLATE`) VALUES
(7, 's1', 'CSite::InDir(\'/index.php\')', 1, 'main'),
(8, 's1', '', 2, 'other'),
(9, 's1', 'CSite::InDir(\'/blog/\')', 3, 'blog'),
(10, 's1', 'CSite::InDir(\'/blog/search/\')', 4, 'blog');

-- --------------------------------------------------------

--
-- Структура таблицы `b_smile`
--

CREATE TABLE `b_smile` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int(18) NOT NULL DEFAULT '0',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `TYPING` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT '0',
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_smile`
--

INSERT INTO `b_smile` (`ID`, `TYPE`, `SET_ID`, `SORT`, `TYPING`, `CLICKABLE`, `HIDDEN`, `IMAGE`, `IMAGE_DEFINITION`, `IMAGE_WIDTH`, `IMAGE_HEIGHT`) VALUES
(1, 'S', 2, 100, ':) :-)', 'Y', 'N', 'bx_smile_smile.png', 'UHD', 20, 20),
(2, 'S', 2, 105, ';) ;-)', 'Y', 'N', 'bx_smile_wink.png', 'UHD', 20, 20),
(3, 'S', 2, 110, ':D :-D', 'Y', 'N', 'bx_smile_biggrin.png', 'UHD', 20, 20),
(4, 'S', 2, 115, '8-)', 'Y', 'N', 'bx_smile_cool.png', 'UHD', 20, 20),
(5, 'S', 2, 120, ':facepalm:', 'Y', 'N', 'bx_smile_facepalm.png', 'UHD', 20, 20),
(6, 'S', 2, 125, ':{} :-{}', 'Y', 'N', 'bx_smile_kiss.png', 'UHD', 20, 20),
(7, 'S', 2, 130, ':( :-(', 'Y', 'N', 'bx_smile_sad.png', 'UHD', 20, 20),
(8, 'S', 2, 135, ':| :-|', 'Y', 'N', 'bx_smile_neutral.png', 'UHD', 20, 20),
(9, 'S', 2, 140, ':oops:', 'Y', 'N', 'bx_smile_redface.png', 'UHD', 20, 20),
(10, 'S', 2, 145, ':cry: :~(', 'Y', 'N', 'bx_smile_cry.png', 'UHD', 20, 20),
(11, 'S', 2, 150, ':evil: >:-<', 'Y', 'N', 'bx_smile_evil.png', 'UHD', 20, 20),
(12, 'S', 2, 155, ':o :-o :shock:', 'Y', 'N', 'bx_smile_eek.png', 'UHD', 20, 20),
(13, 'S', 2, 160, ':/ :-/', 'Y', 'N', 'bx_smile_confuse.png', 'UHD', 20, 20),
(14, 'S', 2, 165, ':idea:', 'Y', 'N', 'bx_smile_idea.png', 'UHD', 20, 20),
(15, 'S', 2, 170, ':?:', 'Y', 'N', 'bx_smile_question.png', 'UHD', 20, 20),
(16, 'S', 2, 175, ':!:', 'Y', 'N', 'bx_smile_exclaim.png', 'UHD', 20, 20),
(17, 'S', 2, 180, ':like:', 'Y', 'N', 'bx_smile_like.png', 'UHD', 20, 20),
(18, 'I', 2, 175, 'ICON_NOTE', 'Y', 'N', 'bx_icon_1.gif', 'SD', 15, 15),
(19, 'I', 2, 180, 'ICON_DIRRECTION', 'Y', 'N', 'bx_icon_2.gif', 'SD', 15, 15),
(20, 'I', 2, 185, 'ICON_IDEA', 'Y', 'N', 'bx_icon_3.gif', 'SD', 15, 15),
(21, 'I', 2, 190, 'ICON_ATTANSION', 'Y', 'N', 'bx_icon_4.gif', 'SD', 15, 15),
(22, 'I', 2, 195, 'ICON_QUESTION', 'Y', 'N', 'bx_icon_5.gif', 'SD', 15, 15),
(23, 'I', 2, 200, 'ICON_BAD', 'Y', 'N', 'bx_icon_6.gif', 'SD', 15, 15),
(24, 'I', 2, 205, 'ICON_GOOD', 'Y', 'N', 'bx_icon_7.gif', 'SD', 15, 15);

-- --------------------------------------------------------

--
-- Структура таблицы `b_smile_lang`
--

CREATE TABLE `b_smile_lang` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_smile_lang`
--

INSERT INTO `b_smile_lang` (`ID`, `TYPE`, `SID`, `LID`, `NAME`) VALUES
(1, 'P', 1, 'ru', 'Стандартная галерея'),
(2, 'P', 1, 'en', 'Standard gallery'),
(3, 'G', 2, 'ru', 'Основной набор'),
(4, 'G', 2, 'en', 'Default pack'),
(5, 'S', 1, 'ru', 'С улыбкой'),
(6, 'S', 1, 'en', 'Smile'),
(7, 'S', 2, 'ru', 'Шутливо'),
(8, 'S', 2, 'en', 'Wink'),
(9, 'S', 3, 'ru', 'Широкая улыбка'),
(10, 'S', 3, 'en', 'Big grin'),
(11, 'S', 4, 'ru', 'Здорово'),
(12, 'S', 4, 'en', 'Cool'),
(13, 'S', 5, 'ru', 'Разочарование'),
(14, 'S', 5, 'en', 'Facepalm'),
(15, 'S', 6, 'ru', 'Поцелуй'),
(16, 'S', 6, 'en', 'Kiss'),
(17, 'S', 7, 'ru', 'Печально'),
(18, 'S', 7, 'en', 'Sad'),
(19, 'S', 8, 'ru', 'Скептически'),
(20, 'S', 8, 'en', 'Skeptic'),
(21, 'S', 9, 'ru', 'Смущенный'),
(22, 'S', 9, 'en', 'Embarrassed'),
(23, 'S', 10, 'ru', 'Очень грустно'),
(24, 'S', 10, 'en', 'Crying'),
(25, 'S', 11, 'ru', 'Со злостью'),
(26, 'S', 11, 'en', 'Angry'),
(27, 'S', 12, 'ru', 'Удивленно'),
(28, 'S', 12, 'en', 'Surprised'),
(29, 'S', 13, 'ru', 'Смущенно'),
(30, 'S', 13, 'en', 'Confused'),
(31, 'S', 14, 'ru', 'Идея'),
(32, 'S', 14, 'en', 'Idea'),
(33, 'S', 15, 'ru', 'Вопрос'),
(34, 'S', 15, 'en', 'Question'),
(35, 'S', 16, 'ru', 'Восклицание'),
(36, 'S', 16, 'en', 'Exclamation'),
(37, 'S', 17, 'ru', 'Нравится'),
(38, 'S', 17, 'en', 'Like');

-- --------------------------------------------------------

--
-- Структура таблицы `b_smile_set`
--

CREATE TABLE `b_smile_set` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int(18) NOT NULL DEFAULT '0',
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT '150'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_smile_set`
--

INSERT INTO `b_smile_set` (`ID`, `TYPE`, `PARENT_ID`, `STRING_ID`, `SORT`) VALUES
(1, 'P', 0, 'bitrix', 150),
(2, 'G', 1, 'bitrix_main', 150);

-- --------------------------------------------------------

--
-- Структура таблицы `b_sms_template`
--

CREATE TABLE `b_sms_template` (
  `ID` int(11) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SENDER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RECEIVER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_sms_template`
--

INSERT INTO `b_sms_template` (`ID`, `EVENT_NAME`, `ACTIVE`, `SENDER`, `RECEIVER`, `MESSAGE`, `LANGUAGE_ID`) VALUES
(1, 'SMS_USER_CONFIRM_NUMBER', 'Y', '#DEFAULT_SENDER#', '#USER_PHONE#', 'Код подтверждения #CODE#', NULL),
(2, 'SMS_USER_RESTORE_PASSWORD', 'Y', '#DEFAULT_SENDER#', '#USER_PHONE#', 'Код для восстановления пароля #CODE#', NULL),
(3, 'SMS_EVENT_LOG_NOTIFICATION', 'Y', '#DEFAULT_SENDER#', '#PHONE_NUMBER#', '#NAME#: #ADDITIONAL_TEXT# (событий: #EVENT_COUNT#)', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_sms_template_site`
--

CREATE TABLE `b_sms_template_site` (
  `TEMPLATE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_sms_template_site`
--

INSERT INTO `b_sms_template_site` (`TEMPLATE_ID`, `SITE_ID`) VALUES
(1, 's1'),
(2, 's1'),
(3, 's1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_sm_version_history`
--

CREATE TABLE `b_sm_version_history` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `VERSIONS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_ap`
--

CREATE TABLE `b_socialservices_ap` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENDPOINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `SETTINGS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_contact`
--

CREATE TABLE `b_socialservices_contact` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_contact_connect`
--

CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_message`
--

CREATE TABLE `b_socialservices_message` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_user`
--

CREATE TABLE `b_socialservices_user` (
  `ID` int(11) NOT NULL,
  `LOGIN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_DELETE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERMISSIONS` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN` text COLLATE utf8_unicode_ci,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` text COLLATE utf8_unicode_ci,
  `REFRESH_TOKEN` text COLLATE utf8_unicode_ci,
  `SEND_ACTIVITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SITE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIALIZED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_user_link`
--

CREATE TABLE `b_socialservices_user_link` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_socialservices_zoom_meeting`
--

CREATE TABLE `b_socialservices_zoom_meeting` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CONFERENCE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFERENCE_EXTERNAL_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CONFERENCE_PASSWORD` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `JOINED` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFERENCE_CREATED` datetime DEFAULT NULL,
  `CONFERENCE_ENDED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sticker`
--

CREATE TABLE `b_sticker` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8_unicode_ci,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_sticker_group_task`
--

CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_subscription`
--

CREATE TABLE `b_subscription` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_CONFIRM` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_subscription_rubric`
--

CREATE TABLE `b_subscription_rubric` (
  `SUBSCRIPTION_ID` int(11) NOT NULL,
  `LIST_RUBRIC_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_task`
--

CREATE TABLE `b_task` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_task`
--

INSERT INTO `b_task` (`ID`, `NAME`, `LETTER`, `MODULE_ID`, `SYS`, `DESCRIPTION`, `BINDING`) VALUES
(1, 'main_denied', 'D', 'main', 'Y', NULL, 'module'),
(2, 'main_change_profile', 'P', 'main', 'Y', NULL, 'module'),
(3, 'main_view_all_settings', 'R', 'main', 'Y', NULL, 'module'),
(4, 'main_view_all_settings_change_profile', 'T', 'main', 'Y', NULL, 'module'),
(5, 'main_edit_subordinate_users', 'V', 'main', 'Y', NULL, 'module'),
(6, 'main_full_access', 'W', 'main', 'Y', NULL, 'module'),
(7, 'fm_folder_access_denied', 'D', 'main', 'Y', NULL, 'file'),
(8, 'fm_folder_access_read', 'R', 'main', 'Y', NULL, 'file'),
(9, 'fm_folder_access_write', 'W', 'main', 'Y', NULL, 'file'),
(10, 'fm_folder_access_full', 'X', 'main', 'Y', NULL, 'file'),
(11, 'fm_folder_access_workflow', 'U', 'main', 'Y', NULL, 'file'),
(12, 'bitrixcloud_deny', 'D', 'bitrixcloud', 'Y', NULL, 'module'),
(13, 'bitrixcloud_control', 'W', 'bitrixcloud', 'Y', NULL, 'module'),
(14, 'clouds_denied', 'D', 'clouds', 'Y', NULL, 'module'),
(15, 'clouds_browse', 'F', 'clouds', 'Y', NULL, 'module'),
(16, 'clouds_upload', 'U', 'clouds', 'Y', NULL, 'module'),
(17, 'clouds_full_access', 'W', 'clouds', 'Y', NULL, 'module'),
(18, 'fileman_denied', 'D', 'fileman', 'Y', '', 'module'),
(19, 'fileman_allowed_folders', 'F', 'fileman', 'Y', '', 'module'),
(20, 'fileman_full_access', 'W', 'fileman', 'Y', '', 'module'),
(21, 'medialib_denied', 'D', 'fileman', 'Y', '', 'medialib'),
(22, 'medialib_view', 'F', 'fileman', 'Y', '', 'medialib'),
(23, 'medialib_only_new', 'R', 'fileman', 'Y', '', 'medialib'),
(24, 'medialib_edit_items', 'V', 'fileman', 'Y', '', 'medialib'),
(25, 'medialib_editor', 'W', 'fileman', 'Y', '', 'medialib'),
(26, 'medialib_full', 'X', 'fileman', 'Y', '', 'medialib'),
(27, 'stickers_denied', 'D', 'fileman', 'Y', '', 'stickers'),
(28, 'stickers_read', 'R', 'fileman', 'Y', '', 'stickers'),
(29, 'stickers_edit', 'W', 'fileman', 'Y', '', 'stickers'),
(30, 'hblock_denied', 'D', 'highloadblock', 'Y', NULL, 'module'),
(31, 'hblock_read', 'R', 'highloadblock', 'Y', NULL, 'module'),
(32, 'hblock_write', 'W', 'highloadblock', 'Y', NULL, 'module'),
(33, 'iblock_deny', 'D', 'iblock', 'Y', NULL, 'iblock'),
(34, 'iblock_read', 'R', 'iblock', 'Y', NULL, 'iblock'),
(35, 'iblock_element_add', 'E', 'iblock', 'Y', NULL, 'iblock'),
(36, 'iblock_admin_read', 'S', 'iblock', 'Y', NULL, 'iblock'),
(37, 'iblock_admin_add', 'T', 'iblock', 'Y', NULL, 'iblock'),
(38, 'iblock_limited_edit', 'U', 'iblock', 'Y', NULL, 'iblock'),
(39, 'iblock_full_edit', 'W', 'iblock', 'Y', NULL, 'iblock'),
(40, 'iblock_full', 'X', 'iblock', 'Y', NULL, 'iblock'),
(41, 'landing_right_denied', 'D', 'landing', 'Y', NULL, 'module'),
(42, 'landing_right_read', 'R', 'landing', 'Y', NULL, 'module'),
(43, 'landing_right_edit', 'U', 'landing', 'Y', NULL, 'module'),
(44, 'landing_right_sett', 'V', 'landing', 'Y', NULL, 'module'),
(45, 'landing_right_public', 'W', 'landing', 'Y', NULL, 'module'),
(46, 'landing_right_delete', 'X', 'landing', 'Y', NULL, 'module'),
(47, 'security_denied', 'D', 'security', 'Y', NULL, 'module'),
(48, 'security_filter', 'F', 'security', 'Y', NULL, 'module'),
(49, 'security_otp', 'S', 'security', 'Y', NULL, 'module'),
(50, 'security_view_all_settings', 'T', 'security', 'Y', NULL, 'module'),
(51, 'security_full_access', 'W', 'security', 'Y', NULL, 'module'),
(52, 'seo_denied', 'D', 'seo', 'Y', '', 'module'),
(53, 'seo_edit', 'F', 'seo', 'Y', '', 'module'),
(54, 'seo_full_access', 'W', 'seo', 'Y', '', 'module');

-- --------------------------------------------------------

--
-- Структура таблицы `b_task_operation`
--

CREATE TABLE `b_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_task_operation`
--

INSERT INTO `b_task_operation` (`TASK_ID`, `OPERATION_ID`) VALUES
(2, 2),
(2, 3),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(5, 2),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(8, 19),
(8, 20),
(8, 21),
(9, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 26),
(9, 27),
(9, 28),
(9, 29),
(9, 30),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(10, 19),
(10, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(10, 25),
(10, 26),
(10, 27),
(10, 28),
(10, 29),
(10, 30),
(10, 31),
(10, 32),
(10, 33),
(10, 34),
(10, 35),
(11, 19),
(11, 20),
(11, 21),
(11, 24),
(11, 28),
(13, 36),
(13, 37),
(13, 38),
(15, 39),
(16, 39),
(16, 40),
(17, 39),
(17, 40),
(17, 41),
(19, 44),
(19, 45),
(19, 46),
(19, 47),
(19, 48),
(19, 49),
(19, 50),
(19, 52),
(19, 53),
(20, 42),
(20, 43),
(20, 44),
(20, 45),
(20, 46),
(20, 47),
(20, 48),
(20, 49),
(20, 50),
(20, 51),
(20, 52),
(20, 53),
(20, 54),
(22, 55),
(23, 55),
(23, 56),
(23, 60),
(24, 55),
(24, 60),
(24, 61),
(24, 62),
(25, 55),
(25, 56),
(25, 57),
(25, 58),
(25, 60),
(25, 61),
(25, 62),
(26, 55),
(26, 56),
(26, 57),
(26, 58),
(26, 59),
(26, 60),
(26, 61),
(26, 62),
(28, 63),
(29, 63),
(29, 64),
(29, 65),
(29, 66),
(31, 67),
(32, 68),
(32, 69),
(34, 70),
(34, 71),
(35, 72),
(36, 70),
(36, 71),
(36, 73),
(37, 70),
(37, 71),
(37, 72),
(37, 73),
(38, 70),
(38, 71),
(38, 72),
(38, 73),
(38, 74),
(38, 75),
(38, 76),
(38, 77),
(39, 70),
(39, 71),
(39, 72),
(39, 73),
(39, 74),
(39, 75),
(39, 76),
(39, 77),
(39, 78),
(39, 79),
(39, 80),
(39, 81),
(40, 70),
(40, 71),
(40, 72),
(40, 73),
(40, 74),
(40, 75),
(40, 76),
(40, 77),
(40, 78),
(40, 79),
(40, 80),
(40, 81),
(40, 82),
(40, 83),
(40, 84),
(40, 85),
(40, 86),
(40, 87),
(42, 88),
(43, 89),
(44, 90),
(45, 91),
(46, 92),
(48, 93),
(49, 94),
(50, 95),
(50, 96),
(50, 97),
(50, 98),
(50, 99),
(50, 100),
(50, 101),
(50, 102),
(50, 103),
(50, 104),
(50, 105),
(51, 93),
(51, 94),
(51, 95),
(51, 96),
(51, 97),
(51, 98),
(51, 99),
(51, 100),
(51, 101),
(51, 102),
(51, 103),
(51, 104),
(51, 105),
(51, 106),
(51, 107),
(51, 108),
(51, 109),
(51, 110),
(51, 111),
(51, 112),
(51, 113),
(51, 114),
(51, 115),
(51, 116),
(51, 117),
(51, 118),
(53, 120),
(54, 119),
(54, 120);

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_diff`
--

CREATE TABLE `b_translate_diff` (
  `ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `AGAINST_LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EXCESS_COUNT` int(18) NOT NULL DEFAULT '0',
  `DEFICIENCY_COUNT` int(18) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_file`
--

CREATE TABLE `b_translate_file` (
  `ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FULL_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE_COUNT` int(18) NOT NULL DEFAULT '0',
  `INDEXED` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INDEXED_TIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_path`
--

CREATE TABLE `b_translate_path` (
  `ID` int(18) NOT NULL,
  `PARENT_ID` int(18) NOT NULL DEFAULT '0',
  `DEPTH_LEVEL` int(18) NOT NULL DEFAULT '0',
  `SORT` int(18) NOT NULL DEFAULT '0',
  `PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `IS_LANG` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_DIR` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `OBLIGATORY_LANGS` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEXED` enum('Y','N') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INDEXED_TIME` datetime DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ASSIGNMENT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_path_lang`
--

CREATE TABLE `b_translate_path_lang` (
  `ID` int(18) NOT NULL,
  `PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_path_tree`
--

CREATE TABLE `b_translate_path_tree` (
  `ID` int(18) NOT NULL,
  `PARENT_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_translate_phrase`
--

CREATE TABLE `b_translate_phrase` (
  `ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `PATH_ID` int(18) NOT NULL,
  `LANG_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `PHRASE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- --------------------------------------------------------

--
-- Структура таблицы `b_undo`
--

CREATE TABLE `b_undo` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_urlpreview_metadata`
--

CREATE TABLE `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL,
  `URL` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8_unicode_ci,
  `EXTRA` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_urlpreview_route`
--

CREATE TABLE `b_urlpreview_route` (
  `ID` int(11) NOT NULL,
  `ROUTE` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user`
--

CREATE TABLE `b_user` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user`
--

INSERT INTO `b_user` (`ID`, `TIMESTAMP_X`, `LOGIN`, `PASSWORD`, `CHECKWORD`, `ACTIVE`, `NAME`, `LAST_NAME`, `EMAIL`, `LAST_LOGIN`, `DATE_REGISTER`, `LID`, `PERSONAL_PROFESSION`, `PERSONAL_WWW`, `PERSONAL_ICQ`, `PERSONAL_GENDER`, `PERSONAL_BIRTHDATE`, `PERSONAL_PHOTO`, `PERSONAL_PHONE`, `PERSONAL_FAX`, `PERSONAL_MOBILE`, `PERSONAL_PAGER`, `PERSONAL_STREET`, `PERSONAL_MAILBOX`, `PERSONAL_CITY`, `PERSONAL_STATE`, `PERSONAL_ZIP`, `PERSONAL_COUNTRY`, `PERSONAL_NOTES`, `WORK_COMPANY`, `WORK_DEPARTMENT`, `WORK_POSITION`, `WORK_WWW`, `WORK_PHONE`, `WORK_FAX`, `WORK_PAGER`, `WORK_STREET`, `WORK_MAILBOX`, `WORK_CITY`, `WORK_STATE`, `WORK_ZIP`, `WORK_COUNTRY`, `WORK_PROFILE`, `WORK_LOGO`, `WORK_NOTES`, `ADMIN_NOTES`, `STORED_HASH`, `XML_ID`, `PERSONAL_BIRTHDAY`, `EXTERNAL_AUTH_ID`, `CHECKWORD_TIME`, `SECOND_NAME`, `CONFIRM_CODE`, `LOGIN_ATTEMPTS`, `LAST_ACTIVITY_DATE`, `AUTO_TIME_ZONE`, `TIME_ZONE`, `TIME_ZONE_OFFSET`, `TITLE`, `BX_USER_ID`, `LANGUAGE_ID`) VALUES
(1, NULL, 'admin', '8zKdG3U9cbbf8e0a05fc8fdb0bb697f768382030', '4tANfC6v47826fc278c9cb18f5f9016dc35abad0', 'Y', 'Александр', 'Аксенов', 'admin@mail.ru', '2020-12-03 21:45:38', '2020-11-11 20:12:59', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-11 20:12:59', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '9fb8c5afcd9584c75ff409c423def2cf', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_access`
--

CREATE TABLE `b_user_access` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_access`
--

INSERT INTO `b_user_access` (`USER_ID`, `PROVIDER_ID`, `ACCESS_CODE`) VALUES
(0, 'group', 'G2'),
(1, 'group', 'G1'),
(1, 'group', 'G3'),
(1, 'group', 'G4'),
(1, 'group', 'G2'),
(1, 'user', 'U1');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_access_check`
--

CREATE TABLE `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_auth_action`
--

CREATE TABLE `b_user_auth_action` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT '100',
  `ACTION` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_auth_code`
--

CREATE TABLE `b_user_auth_code` (
  `USER_ID` int(11) NOT NULL,
  `CODE_TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'email',
  `OTP_SECRET` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(11) DEFAULT '0',
  `DATE_SENT` datetime DEFAULT NULL,
  `DATE_RESENT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_counter`
--

CREATE TABLE `b_user_counter` (
  `USER_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CNT` int(18) NOT NULL DEFAULT '0',
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `SENT` char(1) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_digest`
--

CREATE TABLE `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field`
--

CREATE TABLE `b_user_field` (
  `ID` int(11) NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_field`
--

INSERT INTO `b_user_field` (`ID`, `ENTITY_ID`, `FIELD_NAME`, `USER_TYPE_ID`, `XML_ID`, `SORT`, `MULTIPLE`, `MANDATORY`, `SHOW_FILTER`, `SHOW_IN_LIST`, `EDIT_IN_LIST`, `IS_SEARCHABLE`, `SETTINGS`) VALUES
(1, 'BLOG_POST', 'UF_BLOG_POST_DOC', 'file', 'UF_BLOG_POST_DOC', 100, 'Y', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(2, 'BLOG_COMMENT', 'UF_BLOG_COMMENT_DOC', 'file', 'UF_BLOG_COMMENT_DOC', 100, 'Y', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(3, 'BLOG_POST', 'UF_BLOG_POST_URL_PRV', 'url_preview', 'UF_BLOG_POST_URL_PRV', 100, 'N', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(4, 'BLOG_COMMENT', 'UF_BLOG_COMM_URL_PRV', 'url_preview', 'UF_BLOG_COMM_URL_PRV', 100, 'N', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(5, 'BLOG_POST', 'UF_GRATITUDE', 'integer', 'UF_GRATITUDE', 100, 'N', 'N', 'N', 'N', 'Y', 'N', 'a:0:{}'),
(6, 'FORUM_MESSAGE', 'UF_FORUM_MES_URL_PRV', 'url_preview', 'UF_FORUM_MES_URL_PRV', 100, 'N', 'N', 'N', 'N', 'Y', 'N', 'a:0:{}'),
(7, 'FORUM_MESSAGE', 'UF_TASK_COMMENT_TYPE', 'integer', 'UF_TASK_COMMENT_TYPE', 100, 'N', 'N', 'N', 'N', 'Y', 'N', 'a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_confirm`
--

CREATE TABLE `b_user_field_confirm` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NULL DEFAULT NULL,
  `FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ATTEMPTS` int(18) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_enum`
--

CREATE TABLE `b_user_field_enum` (
  `ID` int(11) NOT NULL,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_lang`
--

CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_field_permission`
--

CREATE TABLE `b_user_field_permission` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ENTITY_TYPE_ID` tinyint(2) UNSIGNED NOT NULL,
  `USER_FIELD_ID` int(10) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `PERMISSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_group`
--

CREATE TABLE `b_user_group` (
  `USER_ID` int(18) NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_group`
--

INSERT INTO `b_user_group` (`USER_ID`, `GROUP_ID`, `DATE_ACTIVE_FROM`, `DATE_ACTIVE_TO`) VALUES
(1, 1, NULL, NULL),
(1, 3, NULL, NULL),
(1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_hit_auth`
--

CREATE TABLE `b_user_hit_auth` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_index`
--

CREATE TABLE `b_user_index` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_USER_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_DEPARTMENT_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_ADMIN_CONTENT` text COLLATE utf8_unicode_ci,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_index`
--

INSERT INTO `b_user_index` (`USER_ID`, `SEARCH_USER_CONTENT`, `SEARCH_DEPARTMENT_CONTENT`, `SEARCH_ADMIN_CONTENT`, `NAME`, `LAST_NAME`, `SECOND_NAME`, `WORK_POSITION`, `UF_DEPARTMENT_NAME`) VALUES
(1, '001 Александр Аксенов', '', '001 Александр Аксенов nqzva znvy nqzva@znvy.eh', 'Александр', 'Аксенов', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_index_selector`
--

CREATE TABLE `b_user_index_selector` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_SELECTOR_CONTENT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_index_selector`
--

INSERT INTO `b_user_index_selector` (`USER_ID`, `SEARCH_SELECTOR_CONTENT`) VALUES
(1, 'Александр Аксенов');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_option`
--

CREATE TABLE `b_user_option` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8_unicode_ci,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_option`
--

INSERT INTO `b_user_option` (`ID`, `USER_ID`, `CATEGORY`, `NAME`, `VALUE`, `COMMON`) VALUES
(1, 0, 'intranet', '~gadgets_admin_index', 'a:1:{i:0;a:1:{s:7:\"GADGETS\";a:8:{s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_SITESPEED@666666777\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";}}}}', 'Y'),
(2, 1, 'admin_panel', 'settings', 'a:2:{s:4:\"edit\";s:3:\"off\";s:9:\"collapsed\";s:3:\"off\";}', 'N'),
(3, 1, 'hot_keys', 'user_defined', 'b:1;', 'N'),
(4, 1, 'favorite', 'favorite_menu', 'a:1:{s:5:\"stick\";s:1:\"N\";}', 'N'),
(5, 1, 'socialservices', 'networkPopup', 'a:2:{s:9:\"showcount\";s:1:\"4\";s:8:\"dontshow\";s:1:\"Y\";}', 'N'),
(8, 1, 'admin_menu', 'pos', 'a:3:{s:8:\"sections\";s:157:\"menu_system,iblock_admin,menu_site,menu_util,diag,menu_blog,menu_iblock,menu_module_settings,menu_iblock_/blog,menu_iblock_%2Fblog%2F9,menu_iblock_/portfolio\";s:5:\"width\";s:3:\"358\";s:3:\"ver\";s:2:\"on\";}', 'N'),
(19, 1, 'html_editor', 'user_settings_', 'a:4:{s:14:\"split_vertical\";s:1:\"0\";s:4:\"view\";s:5:\"split\";s:13:\"taskbar_shown\";s:1:\"1\";s:16:\"link_dialog_type\";s:8:\"internal\";}', 'N'),
(20, 1, 'bx.windowmanager.9.5', 'size_bx_component_properties_res', 'a:2:{s:5:\"width\";s:3:\"986\";s:6:\"height\";s:3:\"616\";}', 'N'),
(34, 1, 'fileman', 'code_editor', 'a:1:{s:5:\"theme\";s:5:\"light\";}', 'N'),
(39, 1, 'main.interface.grid', 'tbl_iblock_admin_9a0364b9e99bb480dd25e1f0284c8555', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(42, 1, 'main.ui.filter', 'tbl_iblock_section_b095a8c351bd6c9eb4a0aa9a40ca8120', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"0\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(48, 1, 'main.interface.grid', 'tbl_iblock_section_b095a8c351bd6c9eb4a0aa9a40ca8120', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(49, 1, 'html_editor', 'type_selector_DETAIL_TEXT1', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(51, 1, 'main.ui.filter', 'tbl_iblock_element_b095a8c351bd6c9eb4a0aa9a40ca8120', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:14:\"default_filter\";a:0:{}}}', 'N'),
(56, 1, 'main.interface.grid', 'tbl_iblock_element_b095a8c351bd6c9eb4a0aa9a40ca8120', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(69, 1, 'bx.windowmanager.9.5', 'size_/bitrix/admin/component_props.php', 'a:2:{s:5:\"width\";s:4:\"1096\";s:6:\"height\";s:3:\"678\";}', 'N'),
(82, 1, 'fileman', 'file_dialog_config', 's:29:\"s1;/blog/search;list;type;asc\";', 'N'),
(87, 1, 'bx.windowmanager.9.5', 'size_/bitrix/admin/public_file_edit.php', 'a:2:{s:5:\"width\";s:4:\"1144\";s:6:\"height\";s:3:\"556\";}', 'N'),
(116, 1, 'main.interface.grid', 'tbl_iblock_9a0364b9e99bb480dd25e1f0284c8555', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(176, 1, 'main.ui.filter', 'tbl_iblock_section_b7d3215a9c5d7a3446fc85e1a5877fc2', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"0\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(182, 1, 'main.interface.grid', 'tbl_iblock_section_b7d3215a9c5d7a3446fc85e1a5877fc2', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(183, 1, 'html_editor', 'type_selector_DETAIL_TEXT2', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(187, 1, 'main.ui.filter', 'tbl_iblock_element_b7d3215a9c5d7a3446fc85e1a5877fc2', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:14:\"default_filter\";a:0:{}}}', 'N'),
(192, 1, 'main.interface.grid', 'tbl_iblock_element_b7d3215a9c5d7a3446fc85e1a5877fc2', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(216, 1, 'main.interface.grid', 'tbl_iblock_admin_10cd395cf71c18328c863c08e78f3fd0', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(219, 1, 'main.interface.grid', 'tbl_iblock_element_c33abd152bf56e1d96f9b0b23ceb1362', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(225, 1, 'main.interface.grid', 'tbl_iblock_10cd395cf71c18328c863c08e78f3fd0', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(226, 1, 'main.interface.grid', 'tbl_iblock_element_292774cb0819dc65aeaa14a4eab110a0', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(227, 1, 'html_editor', 'type_selector_DETAIL_TEXT4', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(228, 1, 'html_editor', 'type_selector_PREVIEW_TEXT4', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(234, 1, 'main.interface.grid', 'tbl_iblock_element_4b068213f1b09281fe0e06fb6b93ad6a', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(235, 1, 'html_editor', 'type_selector_PREVIEW_TEXT5', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(260, 1, 'main.interface.grid', 'tbl_iblock_admin_b68e15f27bb5c24c13ead6608ac8c903', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(263, 1, 'main.ui.filter', 'tbl_iblock_section_9129066036b4bf92ce38e4d779e4b60c', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"0\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(269, 1, 'main.interface.grid', 'tbl_iblock_section_9129066036b4bf92ce38e4d779e4b60c', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(270, 1, 'html_editor', 'type_selector_DESCRIPTION', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(332, 1, 'main.ui.filter', 'tbl_iblock_element_9129066036b4bf92ce38e4d779e4b60c', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:2:{s:14:\"default_filter\";a:0:{}s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"1\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(337, 1, 'main.interface.grid', 'tbl_iblock_element_9129066036b4bf92ce38e4d779e4b60c', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(388, 1, 'main.interface.grid', 'tbl_iblock_b68e15f27bb5c24c13ead6608ac8c903', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(423, 1, 'main.ui.filter', 'tbl_iblock_section_1097325896348d88c388bac1c246d6c0', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"0\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(429, 1, 'main.interface.grid', 'tbl_iblock_section_1097325896348d88c388bac1c246d6c0', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(453, 1, 'main.interface.grid', 'tbl_iblock_element_1097325896348d88c388bac1c246d6c0', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(456, 1, 'main.interface.grid', 'tbl_iblock_element_b3ef987326af755a2538f798acbc126c', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(457, 1, 'html_editor', 'type_selector_PREVIEW_TEXT8', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(471, 1, 'main.interface.grid', 'tbl_iblock_admin_126ac9f6149081eb0e97c2e939eaad52', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(472, 1, 'main.interface.grid', 'tbl_iblock_126ac9f6149081eb0e97c2e939eaad52', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(473, 1, 'main.ui.filter', 'tbl_iblock_section_4fe269e9d0d36d249ef52faa481f7558', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"8\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(479, 1, 'main.interface.grid', 'tbl_iblock_section_4fe269e9d0d36d249ef52faa481f7558', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(510, 1, 'html_editor', 'type_selector_DETAIL_TEXT9', 'a:1:{s:4:\"type\";s:4:\"html\";}', 'N'),
(512, 1, 'main.ui.filter', 'tbl_iblock_element_4fe269e9d0d36d249ef52faa481f7558', 'a:6:{s:14:\"use_pin_preset\";b:1;s:15:\"deleted_presets\";a:0:{}s:15:\"default_presets\";a:0:{}s:7:\"default\";s:14:\"default_filter\";s:6:\"filter\";s:14:\"default_filter\";s:7:\"filters\";a:1:{s:10:\"tmp_filter\";a:2:{s:6:\"fields\";a:1:{s:10:\"SECTION_ID\";s:1:\"8\";}s:11:\"filter_rows\";s:10:\"SECTION_ID\";}}}', 'N'),
(517, 1, 'main.interface.grid', 'tbl_iblock_element_4fe269e9d0d36d249ef52faa481f7558', 'a:3:{s:5:\"views\";a:1:{s:7:\"default\";a:3:{s:7:\"columns\";s:0:\"\";s:13:\"columns_sizes\";a:2:{s:6:\"expand\";i:1;s:7:\"columns\";a:0:{}}s:15:\"sticked_columns\";a:0:{}}}s:7:\"filters\";a:0:{}s:12:\"current_view\";s:7:\"default\";}', 'N'),
(524, 1, 'intranet', '~gadgets_admin_index', 'a:1:{i:0;a:1:{s:7:\"GADGETS\";a:8:{s:20:\"ADMIN_INFO@333333333\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:19:\"HTML_AREA@444444444\";a:5:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";s:8:\"USERDATA\";a:1:{s:7:\"content\";s:797:\"<table class=\"bx-gadgets-info-site-table\" cellspacing=\"0\"><tr>	<td class=\"bx-gadget-gray\">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class=\"bx-gadgets-info-site-logo\" rowspan=\"5\"><img src=\"/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png\"></td></tr><tr>	<td class=\"bx-gadget-gray\">Адрес сайта:</td>	<td><a href=\"http://www.1c-bitrix.ru\">www.1c-bitrix.ru</a></td></tr><tr>	<td class=\"bx-gadget-gray\">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class=\"bx-gadget-gray\">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class=\"bx-gadget-gray\">E-mail:</td>	<td><a href=\"mailto:info@1c-bitrix.ru\">info@1c-bitrix.ru</a></td></tr></table>\";}s:8:\"SETTINGS\";a:1:{s:9:\"TITLE_STD\";s:34:\"Информация о сайте\";}}s:25:\"ADMIN_CHECKLIST@777888999\";a:3:{s:6:\"COLUMN\";i:0;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:24:\"ADMIN_SECURITY@555555555\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:0;s:4:\"HIDE\";s:1:\"N\";}s:25:\"ADMIN_SITESPEED@666666777\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:1;s:4:\"HIDE\";s:1:\"N\";}s:23:\"ADMIN_PERFMON@666666666\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:2;s:4:\"HIDE\";s:1:\"N\";}s:19:\"RSSREADER@777777777\";a:4:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:3;s:4:\"HIDE\";s:1:\"N\";s:8:\"SETTINGS\";a:3:{s:9:\"TITLE_STD\";s:33:\"Новости 1С-Битрикс\";s:3:\"CNT\";i:10;s:7:\"RSS_URL\";s:45:\"https://www.1c-bitrix.ru/about/life/news/rss/\";}}s:23:\"ADMIN_MARKETPALCE@22549\";a:3:{s:6:\"COLUMN\";i:1;s:3:\"ROW\";i:4;s:4:\"HIDE\";s:1:\"N\";}}}}', 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_phone_auth`
--

CREATE TABLE `b_user_phone_auth` (
  `USER_ID` int(11) NOT NULL,
  `PHONE_NUMBER` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `OTP_SECRET` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(11) DEFAULT '0',
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DATE_SENT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_profile_history`
--

CREATE TABLE `b_user_profile_history` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `EVENT_TYPE` int(11) DEFAULT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `UPDATED_BY_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_profile_record`
--

CREATE TABLE `b_user_profile_record` (
  `ID` int(11) NOT NULL,
  `HISTORY_ID` int(11) NOT NULL,
  `FIELD` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_user_stored_auth`
--

CREATE TABLE `b_user_stored_auth` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `b_user_stored_auth`
--

INSERT INTO `b_user_stored_auth` (`ID`, `USER_ID`, `DATE_REG`, `LAST_AUTH`, `STORED_HASH`, `TEMP_HASH`, `IP_ADDR`) VALUES
(1, 1, '2020-11-11 20:12:59', '2020-11-11 20:12:59', '5de1a49989d87f22c345d5af3ce3b818', 'N', 2130706433),
(2, 1, '2020-11-12 11:18:56', '2020-12-03 21:45:38', 'cd8ac7f3498b65e5cf22c733518a125f', 'N', 2130706433);

-- --------------------------------------------------------

--
-- Структура таблицы `b_utm_blog_comment`
--

CREATE TABLE `b_utm_blog_comment` (
  `ID` int(11) NOT NULL,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_utm_blog_post`
--

CREATE TABLE `b_utm_blog_post` (
  `ID` int(11) NOT NULL,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_utm_forum_message`
--

CREATE TABLE `b_utm_forum_message` (
  `ID` int(11) NOT NULL,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_uts_blog_comment`
--

CREATE TABLE `b_uts_blog_comment` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_BLOG_COMMENT_DOC` text COLLATE utf8_unicode_ci,
  `UF_BLOG_COMM_URL_PRV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_uts_blog_post`
--

CREATE TABLE `b_uts_blog_post` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_BLOG_POST_DOC` text COLLATE utf8_unicode_ci,
  `UF_BLOG_POST_URL_PRV` int(11) DEFAULT NULL,
  `UF_GRATITUDE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_uts_forum_message`
--

CREATE TABLE `b_uts_forum_message` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_FORUM_MES_URL_PRV` int(11) DEFAULT NULL,
  `UF_TASK_COMMENT_TYPE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote`
--

CREATE TABLE `b_vote` (
  `ID` int(18) NOT NULL,
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ANONYMITY` int(11) NOT NULL DEFAULT '0',
  `NOTIFY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `AUTHOR_ID` int(18) DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `DATE_START` datetime NOT NULL,
  `DATE_END` datetime NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNIQUE_TYPE` int(18) NOT NULL DEFAULT '2',
  `KEEP_IP_SEC` int(18) DEFAULT NULL,
  `OPTIONS` int(18) DEFAULT '1',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_answer`
--

CREATE TABLE `b_vote_answer` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime NOT NULL,
  `QUESTION_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `MESSAGE_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `COUNTER` int(18) NOT NULL DEFAULT '0',
  `FIELD_TYPE` int(5) NOT NULL DEFAULT '0',
  `FIELD_WIDTH` int(18) DEFAULT NULL,
  `FIELD_HEIGHT` int(18) DEFAULT NULL,
  `FIELD_PARAM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLOR` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_attached_object`
--

CREATE TABLE `b_vote_attached_object` (
  `ID` int(11) NOT NULL,
  `OBJECT_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `CREATED_BY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_channel`
--

CREATE TABLE `b_vote_channel` (
  `ID` int(18) NOT NULL,
  `SYMBOLIC_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_SORT` int(18) DEFAULT '100',
  `FIRST_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TIMESTAMP_X` datetime NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VOTE_SINGLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_channel_2_group`
--

CREATE TABLE `b_vote_channel_2_group` (
  `ID` int(18) NOT NULL,
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_channel_2_site`
--

CREATE TABLE `b_vote_channel_2_site` (
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_event`
--

CREATE TABLE `b_vote_event` (
  `ID` int(18) NOT NULL,
  `VOTE_ID` int(18) NOT NULL DEFAULT '0',
  `VOTE_USER_ID` int(18) NOT NULL DEFAULT '0',
  `DATE_VOTE` datetime NOT NULL,
  `STAT_SESSION_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALID` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `VISIBLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_event_answer`
--

CREATE TABLE `b_vote_event_answer` (
  `ID` int(18) NOT NULL,
  `EVENT_QUESTION_ID` int(18) NOT NULL DEFAULT '0',
  `ANSWER_ID` int(18) NOT NULL DEFAULT '0',
  `MESSAGE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_event_question`
--

CREATE TABLE `b_vote_event_question` (
  `ID` int(18) NOT NULL,
  `EVENT_ID` int(18) NOT NULL DEFAULT '0',
  `QUESTION_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_question`
--

CREATE TABLE `b_vote_question` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime NOT NULL,
  `VOTE_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `QUESTION` text COLLATE utf8_unicode_ci NOT NULL,
  `QUESTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `FIELD_TYPE` int(5) NOT NULL DEFAULT '0',
  `REQUIRED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `DIAGRAM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DIAGRAM_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'histogram',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE_NEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `b_vote_user`
--

CREATE TABLE `b_vote_user` (
  `ID` int(18) NOT NULL,
  `COOKIE_ID` int(18) NOT NULL,
  `AUTH_USER_ID` int(18) DEFAULT NULL,
  `COUNTER` int(18) NOT NULL DEFAULT '0',
  `DATE_FIRST` datetime NOT NULL,
  `DATE_LAST` datetime NOT NULL,
  `LAST_IP` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_GUEST_ID` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `b_admin_notify`
--
ALTER TABLE `b_admin_notify`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_AD_TAG` (`TAG`);

--
-- Индексы таблицы `b_admin_notify_lang`
--
ALTER TABLE `b_admin_notify_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  ADD KEY `IX_ADM_NTFY_LID` (`LID`);

--
-- Индексы таблицы `b_agent`
--
ALTER TABLE `b_agent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  ADD KEY `ix_agent_user_id` (`USER_ID`),
  ADD KEY `ix_agent_name` (`NAME`(100));

--
-- Индексы таблицы `b_app_password`
--
ALTER TABLE `b_app_password`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_app_password_user` (`USER_ID`);

--
-- Индексы таблицы `b_b24connector_buttons`
--
ALTER TABLE `b_b24connector_buttons`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_bitrixcloud_option`
--
ALTER TABLE `b_bitrixcloud_option`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_bitrixcloud_option_1` (`NAME`);

--
-- Индексы таблицы `b_blog`
--
ALTER TABLE `b_blog`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_BLOG_4` (`URL`),
  ADD KEY `IX_BLOG_BLOG_1` (`GROUP_ID`,`ACTIVE`),
  ADD KEY `IX_BLOG_BLOG_2` (`OWNER_ID`),
  ADD KEY `IX_BLOG_BLOG_5` (`LAST_POST_DATE`),
  ADD KEY `IX_BLOG_BLOG_6` (`SOCNET_GROUP_ID`);

--
-- Индексы таблицы `b_blog_category`
--
ALTER TABLE `b_blog_category`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_CAT_1` (`BLOG_ID`,`NAME`);

--
-- Индексы таблицы `b_blog_comment`
--
ALTER TABLE `b_blog_comment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_COMM_1` (`BLOG_ID`,`POST_ID`),
  ADD KEY `IX_BLOG_COMM_2` (`AUTHOR_ID`),
  ADD KEY `IX_BLOG_COMM_3` (`DATE_CREATE`,`AUTHOR_ID`),
  ADD KEY `IX_BLOG_COMM_4` (`POST_ID`);

--
-- Индексы таблицы `b_blog_group`
--
ALTER TABLE `b_blog_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_GROUP_1` (`SITE_ID`);

--
-- Индексы таблицы `b_blog_image`
--
ALTER TABLE `b_blog_image`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_IMAGE_1` (`POST_ID`,`BLOG_ID`);

--
-- Индексы таблицы `b_blog_post`
--
ALTER TABLE `b_blog_post`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_POST_1` (`BLOG_ID`,`PUBLISH_STATUS`,`DATE_PUBLISH`),
  ADD KEY `IX_BLOG_POST_2` (`BLOG_ID`,`DATE_PUBLISH`,`PUBLISH_STATUS`),
  ADD KEY `IX_BLOG_POST_3` (`BLOG_ID`,`CATEGORY_ID`),
  ADD KEY `IX_BLOG_POST_4` (`PUBLISH_STATUS`,`DATE_PUBLISH`),
  ADD KEY `IX_BLOG_POST_5` (`DATE_PUBLISH`,`AUTHOR_ID`),
  ADD KEY `IX_BLOG_POST_CODE` (`BLOG_ID`,`CODE`),
  ADD KEY `IX_BLOG_POST_6` (`CODE`);

--
-- Индексы таблицы `b_blog_post_category`
--
ALTER TABLE `b_blog_post_category`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_POST_CATEGORY` (`POST_ID`,`CATEGORY_ID`),
  ADD KEY `IX_BLOG_POST_CATEGORY_CAT_ID` (`CATEGORY_ID`);

--
-- Индексы таблицы `b_blog_post_param`
--
ALTER TABLE `b_blog_post_param`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_PP_1` (`POST_ID`,`USER_ID`),
  ADD KEY `IX_BLOG_PP_2` (`USER_ID`);

--
-- Индексы таблицы `b_blog_site_path`
--
ALTER TABLE `b_blog_site_path`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_SITE_PATH_2` (`SITE_ID`,`TYPE`);

--
-- Индексы таблицы `b_blog_socnet`
--
ALTER TABLE `b_blog_socnet`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_SOCNET` (`BLOG_ID`);

--
-- Индексы таблицы `b_blog_socnet_rights`
--
ALTER TABLE `b_blog_socnet_rights`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_SR_1` (`POST_ID`),
  ADD KEY `IX_BLOG_SR_2` (`ENTITY`);

--
-- Индексы таблицы `b_blog_trackback`
--
ALTER TABLE `b_blog_trackback`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_TRBK_1` (`BLOG_ID`,`POST_ID`),
  ADD KEY `IX_BLOG_TRBK_2` (`POST_ID`);

--
-- Индексы таблицы `b_blog_user`
--
ALTER TABLE `b_blog_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_USER_1` (`USER_ID`),
  ADD KEY `IX_BLOG_USER_2` (`ALIAS`);

--
-- Индексы таблицы `b_blog_user2blog`
--
ALTER TABLE `b_blog_user2blog`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_USER2GROUP_1` (`BLOG_ID`,`USER_ID`);

--
-- Индексы таблицы `b_blog_user2user_group`
--
ALTER TABLE `b_blog_user2user_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_USER2GROUP_1` (`USER_ID`,`BLOG_ID`,`USER_GROUP_ID`);

--
-- Индексы таблицы `b_blog_user_group`
--
ALTER TABLE `b_blog_user_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_USER_GROUP_1` (`BLOG_ID`);

--
-- Индексы таблицы `b_blog_user_group_perms`
--
ALTER TABLE `b_blog_user_group_perms`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_UG_PERMS_1` (`BLOG_ID`,`USER_GROUP_ID`,`PERMS_TYPE`,`POST_ID`),
  ADD KEY `IX_BLOG_UG_PERMS_2` (`USER_GROUP_ID`,`PERMS_TYPE`,`POST_ID`),
  ADD KEY `IX_BLOG_UG_PERMS_3` (`POST_ID`,`USER_GROUP_ID`,`PERMS_TYPE`);

--
-- Индексы таблицы `b_cache_tag`
--
ALTER TABLE `b_cache_tag`
  ADD KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  ADD KEY `ix_b_cache_tag_1` (`TAG`);

--
-- Индексы таблицы `b_captcha`
--
ALTER TABLE `b_captcha`
  ADD UNIQUE KEY `UX_B_CAPTCHA` (`ID`);

--
-- Индексы таблицы `b_checklist`
--
ALTER TABLE `b_checklist`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_clouds_copy_queue`
--
ALTER TABLE `b_clouds_copy_queue`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_clouds_delete_queue`
--
ALTER TABLE `b_clouds_delete_queue`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_clouds_delete_queue_1` (`BUCKET_ID`,`FILE_PATH`(100));

--
-- Индексы таблицы `b_clouds_file_bucket`
--
ALTER TABLE `b_clouds_file_bucket`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_clouds_file_resize`
--
ALTER TABLE `b_clouds_file_resize`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  ADD KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  ADD KEY `ix_b_file_resize_file` (`FILE_ID`);

--
-- Индексы таблицы `b_clouds_file_save`
--
ALTER TABLE `b_clouds_file_save`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_EXTERNAL_ID` (`EXTERNAL_ID`);

--
-- Индексы таблицы `b_clouds_file_upload`
--
ALTER TABLE `b_clouds_file_upload`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_component_params`
--
ALTER TABLE `b_component_params`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  ADD KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  ADD KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`);

--
-- Индексы таблицы `b_composite_log`
--
ALTER TABLE `b_composite_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  ADD KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  ADD KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`);

--
-- Индексы таблицы `b_composite_page`
--
ALTER TABLE `b_composite_page`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  ADD KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  ADD KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`);

--
-- Индексы таблицы `b_consent_agreement`
--
ALTER TABLE `b_consent_agreement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`);

--
-- Индексы таблицы `b_consent_field`
--
ALTER TABLE `b_consent_field`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`);

--
-- Индексы таблицы `b_consent_user_consent`
--
ALTER TABLE `b_consent_user_consent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`),
  ADD KEY `IX_CONSENT_USER_CONSENT_USER_ORIGIN` (`USER_ID`,`ORIGIN_ID`);

--
-- Индексы таблицы `b_consent_user_consent_item`
--
ALTER TABLE `b_consent_user_consent_item`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_USER_ITEM_AG_ID` (`USER_CONSENT_ID`);

--
-- Индексы таблицы `b_counter_data`
--
ALTER TABLE `b_counter_data`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_culture`
--
ALTER TABLE `b_culture`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_entity_usage`
--
ALTER TABLE `b_entity_usage`
  ADD PRIMARY KEY (`USER_ID`,`CONTEXT`,`ENTITY_ID`,`ITEM_ID`),
  ADD KEY `IX_ENTITY_USAGE_ITEM_ID_INT` (`ITEM_ID_INT`),
  ADD KEY `IX_ENTITY_USAGE_LAST_USE_DATE` (`LAST_USE_DATE`);

--
-- Индексы таблицы `b_event`
--
ALTER TABLE `b_event`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_success` (`SUCCESS_EXEC`),
  ADD KEY `ix_b_event_date_exec` (`DATE_EXEC`);

--
-- Индексы таблицы `b_event_attachment`
--
ALTER TABLE `b_event_attachment`
  ADD PRIMARY KEY (`EVENT_ID`,`FILE_ID`);

--
-- Индексы таблицы `b_event_log`
--
ALTER TABLE `b_event_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  ADD KEY `ix_b_event_log_audit_type_time` (`AUDIT_TYPE_ID`,`TIMESTAMP_X`);

--
-- Индексы таблицы `b_event_message`
--
ALTER TABLE `b_event_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_event_message_name` (`EVENT_NAME`(50));

--
-- Индексы таблицы `b_event_message_attachment`
--
ALTER TABLE `b_event_message_attachment`
  ADD PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`);

--
-- Индексы таблицы `b_event_message_site`
--
ALTER TABLE `b_event_message_site`
  ADD PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_event_type`
--
ALTER TABLE `b_event_type`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`);

--
-- Индексы таблицы `b_favorite`
--
ALTER TABLE `b_favorite`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_file`
--
ALTER TABLE `b_file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`);

--
-- Индексы таблицы `b_file_duplicate`
--
ALTER TABLE `b_file_duplicate`
  ADD PRIMARY KEY (`DUPLICATE_ID`,`ORIGINAL_ID`),
  ADD KEY `ix_file_duplicate_duplicate` (`ORIGINAL_ID`);

--
-- Индексы таблицы `b_file_hash`
--
ALTER TABLE `b_file_hash`
  ADD PRIMARY KEY (`FILE_ID`),
  ADD KEY `ix_file_hash_size_hash` (`FILE_SIZE`,`FILE_HASH`);

--
-- Индексы таблицы `b_file_preview`
--
ALTER TABLE `b_file_preview`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FILE_PL_TOUCH` (`TOUCHED_AT`),
  ADD KEY `IX_B_FILE_PL_FILE` (`FILE_ID`);

--
-- Индексы таблицы `b_file_search`
--
ALTER TABLE `b_file_search`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_filters`
--
ALTER TABLE `b_filters`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_finder_dest`
--
ALTER TABLE `b_finder_dest`
  ADD PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  ADD KEY `IX_FINDER_DEST` (`CODE_TYPE`);

--
-- Индексы таблицы `b_form`
--
ALTER TABLE `b_form`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_SID` (`SID`);

--
-- Индексы таблицы `b_form_2_group`
--
ALTER TABLE `b_form_2_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`);

--
-- Индексы таблицы `b_form_2_mail_template`
--
ALTER TABLE `b_form_2_mail_template`
  ADD PRIMARY KEY (`FORM_ID`,`MAIL_TEMPLATE_ID`);

--
-- Индексы таблицы `b_form_2_site`
--
ALTER TABLE `b_form_2_site`
  ADD PRIMARY KEY (`FORM_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_form_answer`
--
ALTER TABLE `b_form_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`);

--
-- Индексы таблицы `b_form_crm`
--
ALTER TABLE `b_form_crm`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_form_crm_field`
--
ALTER TABLE `b_form_crm_field`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_form_crm_field_1` (`LINK_ID`);

--
-- Индексы таблицы `b_form_crm_link`
--
ALTER TABLE `b_form_crm_link`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_form_crm_link_1` (`FORM_ID`,`CRM_ID`);

--
-- Индексы таблицы `b_form_field`
--
ALTER TABLE `b_form_field`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`),
  ADD KEY `IX_SID` (`SID`);

--
-- Индексы таблицы `b_form_field_filter`
--
ALTER TABLE `b_form_field_filter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`);

--
-- Индексы таблицы `b_form_field_validator`
--
ALTER TABLE `b_form_field_validator`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`);

--
-- Индексы таблицы `b_form_menu`
--
ALTER TABLE `b_form_menu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`);

--
-- Индексы таблицы `b_form_result`
--
ALTER TABLE `b_form_result`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`),
  ADD KEY `IX_STATUS_ID` (`STATUS_ID`),
  ADD KEY `IX_SENT_TO_CRM` (`SENT_TO_CRM`);

--
-- Индексы таблицы `b_form_result_answer`
--
ALTER TABLE `b_form_result_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RESULT_ID` (`RESULT_ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`),
  ADD KEY `IX_ANSWER_ID` (`ANSWER_ID`);

--
-- Индексы таблицы `b_form_status`
--
ALTER TABLE `b_form_status`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`);

--
-- Индексы таблицы `b_form_status_2_group`
--
ALTER TABLE `b_form_status_2_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_STATUS_GROUP` (`STATUS_ID`,`GROUP_ID`);

--
-- Индексы таблицы `b_form_status_2_mail_template`
--
ALTER TABLE `b_form_status_2_mail_template`
  ADD PRIMARY KEY (`STATUS_ID`,`MAIL_TEMPLATE_ID`);

--
-- Индексы таблицы `b_forum`
--
ALTER TABLE `b_forum`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_SORT` (`SORT`),
  ADD KEY `IX_FORUM_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_FORUM_GROUP_ID` (`FORUM_GROUP_ID`);

--
-- Индексы таблицы `b_forum2site`
--
ALTER TABLE `b_forum2site`
  ADD PRIMARY KEY (`FORUM_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_forum_dictionary`
--
ALTER TABLE `b_forum_dictionary`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_forum_email`
--
ALTER TABLE `b_forum_email`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_EMAIL_FORUM_SOC` (`FORUM_ID`,`SOCNET_GROUP_ID`),
  ADD KEY `IX_B_FORUM_EMAIL_FILTER_ID` (`MAIL_FILTER_ID`);

--
-- Индексы таблицы `b_forum_file`
--
ALTER TABLE `b_forum_file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_FILE_FILE` (`FILE_ID`),
  ADD KEY `IX_FORUM_FILE_FORUM` (`FORUM_ID`),
  ADD KEY `IX_FORUM_FILE_TOPIC` (`TOPIC_ID`),
  ADD KEY `IX_FORUM_FILE_MESSAGE` (`MESSAGE_ID`);

--
-- Индексы таблицы `b_forum_filter`
--
ALTER TABLE `b_forum_filter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_FILTER_2` (`USE_IT`),
  ADD KEY `IX_B_FORUM_FILTER_3` (`PATTERN_CREATE`);

--
-- Индексы таблицы `b_forum_group`
--
ALTER TABLE `b_forum_group`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_forum_group_lang`
--
ALTER TABLE `b_forum_group_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_GROUP` (`FORUM_GROUP_ID`,`LID`);

--
-- Индексы таблицы `b_forum_letter`
--
ALTER TABLE `b_forum_letter`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_forum_message`
--
ALTER TABLE `b_forum_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_MESSAGE_FORUM` (`FORUM_ID`,`APPROVED`),
  ADD KEY `IX_FORUM_MESSAGE_FORUM_TOPIC` (`FORUM_ID`,`TOPIC_ID`),
  ADD KEY `IX_FORUM_MESSAGE_TOPIC` (`TOPIC_ID`,`APPROVED`),
  ADD KEY `IX_FORUM_MESSAGE_AUTHOR` (`AUTHOR_ID`,`APPROVED`,`FORUM_ID`),
  ADD KEY `IX_FORUM_MESSAGE_APPROVED` (`APPROVED`),
  ADD KEY `IX_FORUM_MESSAGE_PARAM2` (`PARAM2`),
  ADD KEY `IX_FORUM_MESSAGE_XML_ID` (`XML_ID`),
  ADD KEY `IX_FORUM_MESSAGE_DATE_AUTHOR_ID` (`POST_DATE`,`AUTHOR_ID`),
  ADD KEY `IX_FORUM_MESSAGE_AUTHOR_TOPIC_ID` (`AUTHOR_ID`,`TOPIC_ID`),
  ADD KEY `IX_FORUM_MESSAGE_AUTHOR_FORUM_ID` (`AUTHOR_ID`,`FORUM_ID`,`ID`,`APPROVED`,`TOPIC_ID`);

--
-- Индексы таблицы `b_forum_perms`
--
ALTER TABLE `b_forum_perms`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_PERMS_FORUM` (`FORUM_ID`,`GROUP_ID`),
  ADD KEY `IX_FORUM_PERMS_GROUP` (`GROUP_ID`);

--
-- Индексы таблицы `b_forum_pm_folder`
--
ALTER TABLE `b_forum_pm_folder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_PM_FOLDER_USER_IST` (`USER_ID`,`ID`,`SORT`,`TITLE`);

--
-- Индексы таблицы `b_forum_points`
--
ALTER TABLE `b_forum_points`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_P_MP` (`MIN_POINTS`);

--
-- Индексы таблицы `b_forum_points2post`
--
ALTER TABLE `b_forum_points2post`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_P2P_MNP` (`MIN_NUM_POSTS`);

--
-- Индексы таблицы `b_forum_points_lang`
--
ALTER TABLE `b_forum_points_lang`
  ADD PRIMARY KEY (`POINTS_ID`,`LID`);

--
-- Индексы таблицы `b_forum_private_message`
--
ALTER TABLE `b_forum_private_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_PM_AFR` (`AUTHOR_ID`,`FOLDER_ID`,`IS_READ`),
  ADD KEY `IX_B_FORUM_PM_UFP` (`USER_ID`,`FOLDER_ID`,`POST_DATE`),
  ADD KEY `IX_B_FORUM_PM_POST_DATE` (`POST_DATE`);

--
-- Индексы таблицы `b_forum_rank`
--
ALTER TABLE `b_forum_rank`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_forum_rank_lang`
--
ALTER TABLE `b_forum_rank_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_RANK` (`RANK_ID`,`LID`);

--
-- Индексы таблицы `b_forum_stat`
--
ALTER TABLE `b_forum_stat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_STAT_SITE_ID` (`SITE_ID`,`LAST_VISIT`),
  ADD KEY `IX_B_FORUM_STAT_TOPIC_ID` (`TOPIC_ID`,`LAST_VISIT`),
  ADD KEY `IX_B_FORUM_STAT_FORUM_ID` (`FORUM_ID`,`LAST_VISIT`),
  ADD KEY `IX_B_FORUM_STAT_PHPSESSID` (`PHPSESSID`);

--
-- Индексы таблицы `b_forum_subscribe`
--
ALTER TABLE `b_forum_subscribe`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_SUBSCRIBE_USER` (`USER_ID`,`FORUM_ID`,`TOPIC_ID`,`SOCNET_GROUP_ID`);

--
-- Индексы таблицы `b_forum_topic`
--
ALTER TABLE `b_forum_topic`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_TOPIC_FORUM` (`FORUM_ID`,`APPROVED`),
  ADD KEY `IX_FORUM_TOPIC_APPROVED` (`APPROVED`),
  ADD KEY `IX_FORUM_TOPIC_ABS_L_POST_DATE` (`ABS_LAST_POST_DATE`),
  ADD KEY `IX_FORUM_TOPIC_LAST_POST_DATE` (`LAST_POST_DATE`),
  ADD KEY `IX_FORUM_TOPIC_USER_START_ID` (`USER_START_ID`),
  ADD KEY `IX_FORUM_TOPIC_DATE_USER_START_ID` (`START_DATE`,`USER_START_ID`),
  ADD KEY `IX_FORUM_TOPIC_XML_ID` (`XML_ID`),
  ADD KEY `IX_FORUM_TOPIC_TITLE_SEO` (`FORUM_ID`,`TITLE_SEO`),
  ADD KEY `IX_FORUM_TOPIC_TITLE_SEO2` (`TITLE_SEO`);

--
-- Индексы таблицы `b_forum_user`
--
ALTER TABLE `b_forum_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_FORUM_USER_USER6` (`USER_ID`);

--
-- Индексы таблицы `b_forum_user_forum`
--
ALTER TABLE `b_forum_user_forum`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_USER_FORUM_ID1` (`USER_ID`,`FORUM_ID`);

--
-- Индексы таблицы `b_forum_user_points`
--
ALTER TABLE `b_forum_user_points`
  ADD PRIMARY KEY (`FROM_USER_ID`,`TO_USER_ID`),
  ADD KEY `IX_B_FORUM_USER_POINTS_TO_USER` (`TO_USER_ID`);

--
-- Индексы таблицы `b_forum_user_topic`
--
ALTER TABLE `b_forum_user_topic`
  ADD PRIMARY KEY (`TOPIC_ID`,`USER_ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `IX_B_FORUM_USER_FORUM_ID2` (`USER_ID`,`FORUM_ID`,`TOPIC_ID`);

--
-- Индексы таблицы `b_geoip_handlers`
--
ALTER TABLE `b_geoip_handlers`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_group`
--
ALTER TABLE `b_group`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_group_collection_task`
--
ALTER TABLE `b_group_collection_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`);

--
-- Индексы таблицы `b_group_subordinate`
--
ALTER TABLE `b_group_subordinate`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_group_task`
--
ALTER TABLE `b_group_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`);

--
-- Индексы таблицы `b_hlblock_entity`
--
ALTER TABLE `b_hlblock_entity`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_hlblock_entity_rights`
--
ALTER TABLE `b_hlblock_entity_rights`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_hot_keys`
--
ALTER TABLE `b_hot_keys`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  ADD KEY `ix_hot_keys_user` (`USER_ID`);

--
-- Индексы таблицы `b_hot_keys_code`
--
ALTER TABLE `b_hot_keys_code`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  ADD KEY `ix_hot_keys_code_url` (`URL`);

--
-- Индексы таблицы `b_iblock`
--
ALTER TABLE `b_iblock`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_iblock_api_code` (`API_CODE`),
  ADD KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`);

--
-- Индексы таблицы `b_iblock_cache`
--
ALTER TABLE `b_iblock_cache`
  ADD PRIMARY KEY (`CACHE_KEY`);

--
-- Индексы таблицы `b_iblock_element`
--
ALTER TABLE `b_iblock_element`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  ADD KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  ADD KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  ADD KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`);

--
-- Индексы таблицы `b_iblock_element_iprop`
--
ALTER TABLE `b_iblock_element_iprop`
  ADD PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  ADD KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`);

--
-- Индексы таблицы `b_iblock_element_lock`
--
ALTER TABLE `b_iblock_element_lock`
  ADD PRIMARY KEY (`IBLOCK_ELEMENT_ID`);

--
-- Индексы таблицы `b_iblock_element_property`
--
ALTER TABLE `b_iblock_element_property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`);

--
-- Индексы таблицы `b_iblock_element_right`
--
ALTER TABLE `b_iblock_element_right`
  ADD PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  ADD KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`);

--
-- Индексы таблицы `b_iblock_fields`
--
ALTER TABLE `b_iblock_fields`
  ADD PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`);

--
-- Индексы таблицы `b_iblock_group`
--
ALTER TABLE `b_iblock_group`
  ADD UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`);

--
-- Индексы таблицы `b_iblock_iblock_iprop`
--
ALTER TABLE `b_iblock_iblock_iprop`
  ADD PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`);

--
-- Индексы таблицы `b_iblock_iproperty`
--
ALTER TABLE `b_iblock_iproperty`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`);

--
-- Индексы таблицы `b_iblock_messages`
--
ALTER TABLE `b_iblock_messages`
  ADD PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`);

--
-- Индексы таблицы `b_iblock_offers_tmp`
--
ALTER TABLE `b_iblock_offers_tmp`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_iblock_property`
--
ALTER TABLE `b_iblock_property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  ADD KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  ADD KEY `ix_iblock_property_2` (`CODE`);

--
-- Индексы таблицы `b_iblock_property_enum`
--
ALTER TABLE `b_iblock_property_enum`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`);

--
-- Индексы таблицы `b_iblock_property_feature`
--
ALTER TABLE `b_iblock_property_feature`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_iblock_property_feature` (`PROPERTY_ID`,`MODULE_ID`,`FEATURE_ID`);

--
-- Индексы таблицы `b_iblock_right`
--
ALTER TABLE `b_iblock_right`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  ADD KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  ADD KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  ADD KEY `ix_b_iblock_right_task_id` (`TASK_ID`);

--
-- Индексы таблицы `b_iblock_rss`
--
ALTER TABLE `b_iblock_rss`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_iblock_section`
--
ALTER TABLE `b_iblock_section`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  ADD KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  ADD KEY `ix_iblock_section_left_margin` (`IBLOCK_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`),
  ADD KEY `ix_iblock_section_right_margin` (`IBLOCK_ID`,`RIGHT_MARGIN`,`LEFT_MARGIN`),
  ADD KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`);

--
-- Индексы таблицы `b_iblock_section_element`
--
ALTER TABLE `b_iblock_section_element`
  ADD UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  ADD KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`);

--
-- Индексы таблицы `b_iblock_section_iprop`
--
ALTER TABLE `b_iblock_section_iprop`
  ADD PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  ADD KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`);

--
-- Индексы таблицы `b_iblock_section_property`
--
ALTER TABLE `b_iblock_section_property`
  ADD PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  ADD KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  ADD KEY `ix_b_iblock_section_property_2` (`SECTION_ID`);

--
-- Индексы таблицы `b_iblock_section_right`
--
ALTER TABLE `b_iblock_section_right`
  ADD PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  ADD KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`);

--
-- Индексы таблицы `b_iblock_sequence`
--
ALTER TABLE `b_iblock_sequence`
  ADD PRIMARY KEY (`IBLOCK_ID`,`CODE`);

--
-- Индексы таблицы `b_iblock_site`
--
ALTER TABLE `b_iblock_site`
  ADD PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_iblock_type`
--
ALTER TABLE `b_iblock_type`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_landing`
--
ALTER TABLE `b_landing`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_LAND_CODE` (`CODE`),
  ADD KEY `IX_B_LAND_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_LAND_DELETED` (`DELETED`),
  ADD KEY `IX_B_LAND_SYS` (`SYS`),
  ADD KEY `IX_B_LAND_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_LAND_SITEMAP` (`SITEMAP`),
  ADD KEY `IX_B_LAND_FOLDER` (`FOLDER`),
  ADD KEY `IX_B_LAND_FOLDER_ID` (`FOLDER_ID`);
ALTER TABLE `b_landing` ADD FULLTEXT KEY `IX_B_LANDING_SEARCH` (`SEARCH_CONTENT`);

--
-- Индексы таблицы `b_landing_binding`
--
ALTER TABLE `b_landing_binding`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_BINDING` (`BINDING_ID`,`BINDING_TYPE`),
  ADD KEY `IX_B_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `IX_B_BINDING_TYPE` (`BINDING_TYPE`);

--
-- Индексы таблицы `b_landing_block`
--
ALTER TABLE `b_landing_block`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_BLOCK_LID` (`LID`),
  ADD KEY `IX_B_BLOCK_CODE` (`CODE`),
  ADD KEY `IX_B_BLOCK_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_BLOCK_PUBLIC` (`PUBLIC`),
  ADD KEY `IX_B_BLOCK_DELETED` (`DELETED`);
ALTER TABLE `b_landing_block` ADD FULLTEXT KEY `IX_B_BLOCK_SEARCH` (`SEARCH_CONTENT`);

--
-- Индексы таблицы `b_landing_chat`
--
ALTER TABLE `b_landing_chat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CHAT` (`CHAT_ID`);

--
-- Индексы таблицы `b_landing_chat_binding`
--
ALTER TABLE `b_landing_chat_binding`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CHAT` (`INTERNAL_CHAT_ID`),
  ADD KEY `IX_B_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`);

--
-- Индексы таблицы `b_landing_cookies_agreement`
--
ALTER TABLE `b_landing_cookies_agreement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SITE` (`SITE_ID`,`CODE`);

--
-- Индексы таблицы `b_landing_demo`
--
ALTER TABLE `b_landing_demo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_DEMO_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_DEMO_SHOW_IN_LIST` (`SHOW_IN_LIST`),
  ADD KEY `IX_B_DEMO_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_DEMO_APP_CODE` (`APP_CODE`),
  ADD KEY `IX_B_DEMO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`);

--
-- Индексы таблицы `b_landing_domain`
--
ALTER TABLE `b_landing_domain`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_DOMAIN_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_DOMAIN_DOMAIN` (`DOMAIN`),
  ADD KEY `IX_B_DOMAIN_PROVIDER` (`PROVIDER`),
  ADD KEY `IX_B_DOMAIN_XML_ID` (`XML_ID`);

--
-- Индексы таблицы `b_landing_entity_rights`
--
ALTER TABLE `b_landing_entity_rights`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `IX_ROLE` (`ROLE_ID`);

--
-- Индексы таблицы `b_landing_file`
--
ALTER TABLE `b_landing_file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `IX_FILE` (`FILE_ID`);

--
-- Индексы таблицы `b_landing_filter_block`
--
ALTER TABLE `b_landing_filter_block`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_FILTER_BLOCK` (`FILTER_ID`,`BLOCK_ID`);

--
-- Индексы таблицы `b_landing_filter_entity`
--
ALTER TABLE `b_landing_filter_entity`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_FILTER_HASH` (`FILTER_HASH`);

--
-- Индексы таблицы `b_landing_hook_data`
--
ALTER TABLE `b_landing_hook_data`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`);

--
-- Индексы таблицы `b_landing_placement`
--
ALTER TABLE `b_landing_placement`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_landing_repo`
--
ALTER TABLE `b_landing_repo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_REPO_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_REPO_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_REPO_APP_CODE` (`APP_CODE`),
  ADD KEY `IX_B_REPO_TEMPLATE_ID` (`SITE_TEMPLATE_ID`);

--
-- Индексы таблицы `b_landing_role`
--
ALTER TABLE `b_landing_role`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_ROLE_TYPE` (`TYPE`);

--
-- Индексы таблицы `b_landing_site`
--
ALTER TABLE `b_landing_site`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SITE_CODE` (`CODE`),
  ADD KEY `IX_B_SITE_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_B_SITE_DELETED` (`DELETED`),
  ADD KEY `IX_B_SITE_XML_ID` (`XML_ID`),
  ADD KEY `IX_B_SITE_SPECIAL` (`SPECIAL`);

--
-- Индексы таблицы `b_landing_syspage`
--
ALTER TABLE `b_landing_syspage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_SITE_ID` (`SITE_ID`),
  ADD KEY `IX_LANDING_ID` (`LANDING_ID`);

--
-- Индексы таблицы `b_landing_template`
--
ALTER TABLE `b_landing_template`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_landing_template_ref`
--
ALTER TABLE `b_landing_template_ref`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `K_LANDING_ID` (`LANDING_ID`),
  ADD KEY `K_ENTITY` (`ENTITY_ID`,`ENTITY_TYPE`);

--
-- Индексы таблицы `b_landing_update_block`
--
ALTER TABLE `b_landing_update_block`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_CODE` (`CODE`);

--
-- Индексы таблицы `b_landing_urlrewrite`
--
ALTER TABLE `b_landing_urlrewrite`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_SITE_RULE` (`SITE_ID`,`RULE`),
  ADD KEY `IX_LANDING_ID` (`LANDING_ID`);

--
-- Индексы таблицы `b_landing_view`
--
ALTER TABLE `b_landing_view`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_VIEW_LIDUID` (`LID`,`USER_ID`);

--
-- Индексы таблицы `b_lang`
--
ALTER TABLE `b_lang`
  ADD PRIMARY KEY (`LID`);

--
-- Индексы таблицы `b_language`
--
ALTER TABLE `b_language`
  ADD PRIMARY KEY (`LID`);

--
-- Индексы таблицы `b_lang_domain`
--
ALTER TABLE `b_lang_domain`
  ADD PRIMARY KEY (`LID`,`DOMAIN`);

--
-- Индексы таблицы `b_list_rubric`
--
ALTER TABLE `b_list_rubric`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_log_notification`
--
ALTER TABLE `b_log_notification`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_log_notification_action`
--
ALTER TABLE `b_log_notification_action`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_log_notification_action_notification_id` (`NOTIFICATION_ID`);

--
-- Индексы таблицы `b_main_mail_blacklist`
--
ALTER TABLE `b_main_mail_blacklist`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_B_MAIN_MAIL_BLACKLIST_CODE` (`CODE`);

--
-- Индексы таблицы `b_main_mail_sender`
--
ALTER TABLE `b_main_mail_sender`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_MAIN_MAIL_SENDER_USER_ID` (`USER_ID`,`IS_CONFIRMED`,`IS_PUBLIC`);

--
-- Индексы таблицы `b_medialib_collection`
--
ALTER TABLE `b_medialib_collection`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_medialib_collection_item`
--
ALTER TABLE `b_medialib_collection_item`
  ADD PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`);

--
-- Индексы таблицы `b_medialib_item`
--
ALTER TABLE `b_medialib_item`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_medialib_type`
--
ALTER TABLE `b_medialib_type`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_messageservice_message`
--
ALTER TABLE `b_messageservice_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `B_MESSAGESERVICE_MESSAGE_1` (`DATE_EXEC`),
  ADD KEY `B_MESSAGESERVICE_MESSAGE_2` (`SUCCESS_EXEC`),
  ADD KEY `B_MESSAGESERVICE_MESSAGE_3` (`SENDER_ID`,`EXTERNAL_ID`);

--
-- Индексы таблицы `b_messageservice_rest_app`
--
ALTER TABLE `b_messageservice_rest_app`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `B_MESSAGESERVICE_REST_APP_1` (`APP_ID`,`CODE`);

--
-- Индексы таблицы `b_messageservice_rest_app_lang`
--
ALTER TABLE `b_messageservice_rest_app_lang`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_mobileapp_app`
--
ALTER TABLE `b_mobileapp_app`
  ADD PRIMARY KEY (`CODE`);

--
-- Индексы таблицы `b_mobileapp_config`
--
ALTER TABLE `b_mobileapp_config`
  ADD PRIMARY KEY (`APP_CODE`,`PLATFORM`);

--
-- Индексы таблицы `b_module`
--
ALTER TABLE `b_module`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_module_group`
--
ALTER TABLE `b_module_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_module_to_module`
--
ALTER TABLE `b_module_to_module`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_module_to_module_unique_id` (`UNIQUE_ID`),
  ADD KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20));

--
-- Индексы таблицы `b_numerator`
--
ALTER TABLE `b_numerator`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_numerator_sequence`
--
ALTER TABLE `b_numerator_sequence`
  ADD PRIMARY KEY (`NUMERATOR_ID`,`KEY`);

--
-- Индексы таблицы `b_operation`
--
ALTER TABLE `b_operation`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_option`
--
ALTER TABLE `b_option`
  ADD PRIMARY KEY (`MODULE_ID`,`NAME`),
  ADD KEY `ix_option_name` (`NAME`);

--
-- Индексы таблицы `b_option_site`
--
ALTER TABLE `b_option_site`
  ADD PRIMARY KEY (`MODULE_ID`,`NAME`,`SITE_ID`),
  ADD KEY `ix_option_site_module_site` (`MODULE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_perf_cache`
--
ALTER TABLE `b_perf_cache`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  ADD KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`);

--
-- Индексы таблицы `b_perf_cluster`
--
ALTER TABLE `b_perf_cluster`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_perf_component`
--
ALTER TABLE `b_perf_component`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`);

--
-- Индексы таблицы `b_perf_error`
--
ALTER TABLE `b_perf_error`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_ERROR_0` (`HIT_ID`);

--
-- Индексы таблицы `b_perf_history`
--
ALTER TABLE `b_perf_history`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_perf_hit`
--
ALTER TABLE `b_perf_hit`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_HIT_0` (`DATE_HIT`);

--
-- Индексы таблицы `b_perf_index_ban`
--
ALTER TABLE `b_perf_index_ban`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_perf_index_complete`
--
ALTER TABLE `b_perf_index_complete`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`);

--
-- Индексы таблицы `b_perf_index_suggest`
--
ALTER TABLE `b_perf_index_suggest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`);

--
-- Индексы таблицы `b_perf_index_suggest_sql`
--
ALTER TABLE `b_perf_index_suggest_sql`
  ADD PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  ADD KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`);

--
-- Индексы таблицы `b_perf_sql`
--
ALTER TABLE `b_perf_sql`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  ADD KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`);

--
-- Индексы таблицы `b_perf_sql_backtrace`
--
ALTER TABLE `b_perf_sql_backtrace`
  ADD PRIMARY KEY (`SQL_ID`,`NN`);

--
-- Индексы таблицы `b_perf_tab_column_stat`
--
ALTER TABLE `b_perf_tab_column_stat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`);

--
-- Индексы таблицы `b_perf_tab_stat`
--
ALTER TABLE `b_perf_tab_stat`
  ADD PRIMARY KEY (`TABLE_NAME`);

--
-- Индексы таблицы `b_perf_test`
--
ALTER TABLE `b_perf_test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`);

--
-- Индексы таблицы `b_posting`
--
ALTER TABLE `b_posting`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_posting_email`
--
ALTER TABLE `b_posting_email`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_posting_email_status` (`POSTING_ID`,`STATUS`),
  ADD KEY `ix_posting_email_email` (`POSTING_ID`,`EMAIL`);

--
-- Индексы таблицы `b_posting_file`
--
ALTER TABLE `b_posting_file`
  ADD UNIQUE KEY `UK_POSTING_POSTING_FILE` (`POSTING_ID`,`FILE_ID`);

--
-- Индексы таблицы `b_posting_group`
--
ALTER TABLE `b_posting_group`
  ADD UNIQUE KEY `UK_POSTING_POSTING_GROUP` (`POSTING_ID`,`GROUP_ID`);

--
-- Индексы таблицы `b_posting_rubric`
--
ALTER TABLE `b_posting_rubric`
  ADD UNIQUE KEY `UK_POSTING_POSTING_RUBRIC` (`POSTING_ID`,`LIST_RUBRIC_ID`);

--
-- Индексы таблицы `b_rating`
--
ALTER TABLE `b_rating`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rating_component`
--
ALTER TABLE `b_rating_component`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`);

--
-- Индексы таблицы `b_rating_component_results`
--
ALTER TABLE `b_rating_component_results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  ADD KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  ADD KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`);

--
-- Индексы таблицы `b_rating_results`
--
ALTER TABLE `b_rating_results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  ADD KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`);

--
-- Индексы таблицы `b_rating_rule`
--
ALTER TABLE `b_rating_rule`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rating_rule_vetting`
--
ALTER TABLE `b_rating_rule_vetting`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`);

--
-- Индексы таблицы `b_rating_user`
--
ALTER TABLE `b_rating_user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  ADD KEY `IX_B_RAT_USER_2` (`ENTITY_ID`);

--
-- Индексы таблицы `b_rating_vote`
--
ALTER TABLE `b_rating_vote`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_4` (`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  ADD KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  ADD KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`);

--
-- Индексы таблицы `b_rating_vote_group`
--
ALTER TABLE `b_rating_vote_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RATING_ID` (`GROUP_ID`,`TYPE`);

--
-- Индексы таблицы `b_rating_voting`
--
ALTER TABLE `b_rating_voting`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  ADD KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`);

--
-- Индексы таблицы `b_rating_voting_prepare`
--
ALTER TABLE `b_rating_voting_prepare`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`);

--
-- Индексы таблицы `b_rating_voting_reaction`
--
ALTER TABLE `b_rating_voting_reaction`
  ADD PRIMARY KEY (`ENTITY_TYPE_ID`,`ENTITY_ID`,`REACTION`);

--
-- Индексы таблицы `b_rating_weight`
--
ALTER TABLE `b_rating_weight`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rest_ap`
--
ALTER TABLE `b_rest_ap`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_rest_ap` (`USER_ID`,`PASSWORD`,`ACTIVE`);

--
-- Индексы таблицы `b_rest_app`
--
ALTER TABLE `b_rest_app`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_app1` (`CLIENT_ID`);

--
-- Индексы таблицы `b_rest_app_lang`
--
ALTER TABLE `b_rest_app_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_app_lang1` (`APP_ID`,`LANGUAGE_ID`);

--
-- Индексы таблицы `b_rest_app_log`
--
ALTER TABLE `b_rest_app_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_rest_app_log1` (`APP_ID`);

--
-- Индексы таблицы `b_rest_ap_permission`
--
ALTER TABLE `b_rest_ap_permission`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_ap_perm1` (`PASSWORD_ID`,`PERM`);

--
-- Индексы таблицы `b_rest_event`
--
ALTER TABLE `b_rest_event`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_event_app_event` (`APP_ID`,`EVENT_NAME`(50),`EVENT_HANDLER`(180),`USER_ID`,`CONNECTOR_ID`(70)),
  ADD KEY `ix_b_rest_event_event_name` (`EVENT_NAME`);

--
-- Индексы таблицы `b_rest_event_offline`
--
ALTER TABLE `b_rest_event_offline`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_event_offline1` (`MESSAGE_ID`(50),`APP_ID`,`CONNECTOR_ID`(100),`PROCESS_ID`(50)),
  ADD KEY `ix_b_rest_event_offline2` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_rest_log`
--
ALTER TABLE `b_rest_log`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_rest_owner_entity`
--
ALTER TABLE `b_rest_owner_entity`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_b_rest_owner_entity` (`ENTITY_TYPE`,`ENTITY`);

--
-- Индексы таблицы `b_rest_placement`
--
ALTER TABLE `b_rest_placement`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_placement1` (`APP_ID`,`PLACEMENT`(100),`PLACEMENT_HANDLER`(200)),
  ADD KEY `ix_b_rest_placement3` (`PLACEMENT`(100),`ADDITIONAL`(100));

--
-- Индексы таблицы `b_rest_stat`
--
ALTER TABLE `b_rest_stat`
  ADD PRIMARY KEY (`APP_ID`,`STAT_DATE`,`METHOD_ID`);

--
-- Индексы таблицы `b_rest_stat_app`
--
ALTER TABLE `b_rest_stat_app`
  ADD PRIMARY KEY (`APP_ID`),
  ADD KEY `ix_b_rest_stat_app_code` (`APP_CODE`);

--
-- Индексы таблицы `b_rest_stat_method`
--
ALTER TABLE `b_rest_stat_method`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_rest_stat_method` (`NAME`);

--
-- Индексы таблицы `b_rest_usage_entity`
--
ALTER TABLE `b_rest_usage_entity`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_b_rest_usage_entity` (`ENTITY_TYPE`,`ENTITY_ID`,`SUB_ENTITY_TYPE`,`SUB_ENTITY_NAME`);

--
-- Индексы таблицы `b_rest_usage_stat`
--
ALTER TABLE `b_rest_usage_stat`
  ADD PRIMARY KEY (`STAT_DATE`,`ENTITY_ID`),
  ADD KEY `ix_b_rest_usage` (`ENTITY_ID`,`STAT_DATE`);

--
-- Индексы таблицы `b_search_content`
--
ALTER TABLE `b_search_content`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  ADD KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  ADD KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`);

--
-- Индексы таблицы `b_search_content_freq`
--
ALTER TABLE `b_search_content_freq`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_search_content_param`
--
ALTER TABLE `b_search_content_param`
  ADD KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  ADD KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_content_right`
--
ALTER TABLE `b_search_content_right`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`);

--
-- Индексы таблицы `b_search_content_site`
--
ALTER TABLE `b_search_content_site`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_search_content_stem`
--
ALTER TABLE `b_search_content_stem`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  ADD KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_content_text`
--
ALTER TABLE `b_search_content_text`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_content_title`
--
ALTER TABLE `b_search_content_title`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  ADD KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`);

--
-- Индексы таблицы `b_search_custom_rank`
--
ALTER TABLE `b_search_custom_rank`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`);

--
-- Индексы таблицы `b_search_phrase`
--
ALTER TABLE `b_search_phrase`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_search_stem`
--
ALTER TABLE `b_search_stem`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`);

--
-- Индексы таблицы `b_search_suggest`
--
ALTER TABLE `b_search_suggest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  ADD KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  ADD KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_search_tags`
--
ALTER TABLE `b_search_tags`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  ADD KEY `IX_B_SEARCH_TAGS_0` (`NAME`);

--
-- Индексы таблицы `b_search_user_right`
--
ALTER TABLE `b_search_user_right`
  ADD UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`);

--
-- Индексы таблицы `b_security_sitecheck`
--
ALTER TABLE `b_security_sitecheck`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sec_filter_mask`
--
ALTER TABLE `b_sec_filter_mask`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sec_frame_mask`
--
ALTER TABLE `b_sec_frame_mask`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sec_iprule`
--
ALTER TABLE `b_sec_iprule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_sec_iprule_active_to` (`ACTIVE_TO`);

--
-- Индексы таблицы `b_sec_iprule_excl_ip`
--
ALTER TABLE `b_sec_iprule_excl_ip`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_IP`);

--
-- Индексы таблицы `b_sec_iprule_excl_mask`
--
ALTER TABLE `b_sec_iprule_excl_mask`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_MASK`);

--
-- Индексы таблицы `b_sec_iprule_incl_ip`
--
ALTER TABLE `b_sec_iprule_incl_ip`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_IP`);

--
-- Индексы таблицы `b_sec_iprule_incl_mask`
--
ALTER TABLE `b_sec_iprule_incl_mask`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_MASK`);

--
-- Индексы таблицы `b_sec_recovery_codes`
--
ALTER TABLE `b_sec_recovery_codes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_sec_recovery_codes_user_id` (`USER_ID`);

--
-- Индексы таблицы `b_sec_session`
--
ALTER TABLE `b_sec_session`
  ADD PRIMARY KEY (`SESSION_ID`),
  ADD KEY `ix_b_sec_session_time` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_sec_user`
--
ALTER TABLE `b_sec_user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Индексы таблицы `b_sec_virus`
--
ALTER TABLE `b_sec_virus`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sec_white_list`
--
ALTER TABLE `b_sec_white_list`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_seo_adv_autolog`
--
ALTER TABLE `b_seo_adv_autolog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  ADD KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_seo_adv_banner`
--
ALTER TABLE `b_seo_adv_banner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  ADD KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`);

--
-- Индексы таблицы `b_seo_adv_campaign`
--
ALTER TABLE `b_seo_adv_campaign`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`);

--
-- Индексы таблицы `b_seo_adv_group`
--
ALTER TABLE `b_seo_adv_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`);

--
-- Индексы таблицы `b_seo_adv_link`
--
ALTER TABLE `b_seo_adv_link`
  ADD PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`);

--
-- Индексы таблицы `b_seo_adv_log`
--
ALTER TABLE `b_seo_adv_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  ADD KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_seo_adv_order`
--
ALTER TABLE `b_seo_adv_order`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  ADD KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`);

--
-- Индексы таблицы `b_seo_adv_region`
--
ALTER TABLE `b_seo_adv_region`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_region1` (`PARENT_ID`);

--
-- Индексы таблицы `b_seo_keywords`
--
ALTER TABLE `b_seo_keywords`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`);

--
-- Индексы таблицы `b_seo_search_engine`
--
ALTER TABLE `b_seo_search_engine`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`);

--
-- Индексы таблицы `b_seo_service_log`
--
ALTER TABLE `b_seo_service_log`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_seo_service_rtg_queue`
--
ALTER TABLE `b_seo_service_rtg_queue`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  ADD KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`);

--
-- Индексы таблицы `b_seo_service_subscription`
--
ALTER TABLE `b_seo_service_subscription`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SERVICE_SUB_1` (`TYPE`,`GROUP_ID`);

--
-- Индексы таблицы `b_seo_service_webhook`
--
ALTER TABLE `b_seo_service_webhook`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`);

--
-- Индексы таблицы `b_seo_sitemap`
--
ALTER TABLE `b_seo_sitemap`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_seo_sitemap_entity`
--
ALTER TABLE `b_seo_sitemap_entity`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  ADD KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`);

--
-- Индексы таблицы `b_seo_sitemap_iblock`
--
ALTER TABLE `b_seo_sitemap_iblock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  ADD KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`);

--
-- Индексы таблицы `b_seo_sitemap_runtime`
--
ALTER TABLE `b_seo_sitemap_runtime`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`);

--
-- Индексы таблицы `b_seo_yandex_direct_stat`
--
ALTER TABLE `b_seo_yandex_direct_stat`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  ADD KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`);

--
-- Индексы таблицы `b_short_uri`
--
ALTER TABLE `b_short_uri`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  ADD KEY `ux_b_short_uri_2` (`URI_CRC`);

--
-- Индексы таблицы `b_site_template`
--
ALTER TABLE `b_site_template`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_site_template_site` (`SITE_ID`);

--
-- Индексы таблицы `b_smile`
--
ALTER TABLE `b_smile`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_smile_lang`
--
ALTER TABLE `b_smile_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`);

--
-- Индексы таблицы `b_smile_set`
--
ALTER TABLE `b_smile_set`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sms_template`
--
ALTER TABLE `b_sms_template`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_sms_message_name` (`EVENT_NAME`(50));

--
-- Индексы таблицы `b_sms_template_site`
--
ALTER TABLE `b_sms_template_site`
  ADD PRIMARY KEY (`TEMPLATE_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_sm_version_history`
--
ALTER TABLE `b_sm_version_history`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_socialservices_ap`
--
ALTER TABLE `b_socialservices_ap`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_socialservices_ap1` (`USER_ID`,`DOMAIN`);

--
-- Индексы таблицы `b_socialservices_contact`
--
ALTER TABLE `b_socialservices_contact`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_contact1` (`USER_ID`),
  ADD KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  ADD KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  ADD KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`);

--
-- Индексы таблицы `b_socialservices_contact_connect`
--
ALTER TABLE `b_socialservices_contact_connect`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  ADD KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  ADD KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`);

--
-- Индексы таблицы `b_socialservices_message`
--
ALTER TABLE `b_socialservices_message`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_socialservices_user`
--
ALTER TABLE `b_socialservices_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  ADD KEY `IX_B_SOCIALSERVICES_US_1` (`USER_ID`),
  ADD KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`);

--
-- Индексы таблицы `b_socialservices_user_link`
--
ALTER TABLE `b_socialservices_user_link`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  ADD KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  ADD KEY `ix_b_socialservices_user_link_7` (`LINK_UID`);

--
-- Индексы таблицы `b_socialservices_zoom_meeting`
--
ALTER TABLE `b_socialservices_zoom_meeting`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sticker`
--
ALTER TABLE `b_sticker`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_sticker_group_task`
--
ALTER TABLE `b_sticker_group_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`);

--
-- Индексы таблицы `b_subscription`
--
ALTER TABLE `b_subscription`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_SUBSCRIPTION_EMAIL` (`EMAIL`,`USER_ID`),
  ADD KEY `IX_DATE_CONFIRM` (`CONFIRMED`,`DATE_CONFIRM`);

--
-- Индексы таблицы `b_subscription_rubric`
--
ALTER TABLE `b_subscription_rubric`
  ADD UNIQUE KEY `UK_SUBSCRIPTION_RUBRIC` (`SUBSCRIPTION_ID`,`LIST_RUBRIC_ID`);

--
-- Индексы таблицы `b_task`
--
ALTER TABLE `b_task`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`);

--
-- Индексы таблицы `b_task_operation`
--
ALTER TABLE `b_task_operation`
  ADD PRIMARY KEY (`TASK_ID`,`OPERATION_ID`);

--
-- Индексы таблицы `b_translate_diff`
--
ALTER TABLE `b_translate_diff`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IXU_TRNSL_DIFF` (`FILE_ID`,`LANG_ID`,`AGAINST_LANG_ID`),
  ADD KEY `IX_TRNSL_DIFF_PATH` (`PATH_ID`,`LANG_ID`);

--
-- Индексы таблицы `b_translate_file`
--
ALTER TABLE `b_translate_file`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_TRNSL_FL_PATH` (`PATH_ID`,`LANG_ID`),
  ADD KEY `IX_TRNSL_FULL_PATH` (`FULL_PATH`(255));

--
-- Индексы таблицы `b_translate_path`
--
ALTER TABLE `b_translate_path`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_TRNSL_PTH_NAME` (`PARENT_ID`,`NAME`),
  ADD KEY `IX_TRNSL_PTH_PARENT` (`PARENT_ID`,`IS_DIR`,`IS_LANG`),
  ADD KEY `IX_TRNSL_PTH_PATH` (`PATH`(255));

--
-- Индексы таблицы `b_translate_path_lang`
--
ALTER TABLE `b_translate_path_lang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_TRNSL_LNG_PATH` (`PATH`(255));

--
-- Индексы таблицы `b_translate_path_tree`
--
ALTER TABLE `b_translate_path_tree`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_TRNSL_ANCESTOR` (`PARENT_ID`,`DEPTH_LEVEL`,`PATH_ID`),
  ADD UNIQUE KEY `IX_TRNSL_DESCENDANT` (`PATH_ID`,`PARENT_ID`,`DEPTH_LEVEL`);

--
-- Индексы таблицы `b_translate_phrase`
--
ALTER TABLE `b_translate_phrase`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IXU_TRNSL_PHR_PATH_CODE` (`PATH_ID`,`LANG_ID`,`CODE`),
  ADD KEY `IX_TRNSL_PHR_PATH` (`PATH_ID`,`CODE`),
  ADD KEY `IX_TRNSL_FILE` (`FILE_ID`);
ALTER TABLE `b_translate_phrase` ADD FULLTEXT KEY `IXF_TRNSL_PHR` (`PHRASE`);

--
-- Индексы таблицы `b_undo`
--
ALTER TABLE `b_undo`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_urlpreview_metadata`
--
ALTER TABLE `b_urlpreview_metadata`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_URLPREVIEW_METADATA_URL` (`URL`(255));

--
-- Индексы таблицы `b_urlpreview_route`
--
ALTER TABLE `b_urlpreview_route`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`(255));

--
-- Индексы таблицы `b_user`
--
ALTER TABLE `b_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  ADD KEY `ix_b_user_email` (`EMAIL`),
  ADD KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  ADD KEY `IX_B_USER_XML_ID` (`XML_ID`),
  ADD KEY `ix_user_last_login` (`LAST_LOGIN`),
  ADD KEY `ix_user_date_register` (`DATE_REGISTER`);

--
-- Индексы таблицы `b_user_access`
--
ALTER TABLE `b_user_access`
  ADD KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  ADD KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  ADD KEY `ix_ua_access` (`ACCESS_CODE`),
  ADD KEY `ix_ua_provider` (`PROVIDER_ID`);

--
-- Индексы таблицы `b_user_access_check`
--
ALTER TABLE `b_user_access_check`
  ADD KEY `ix_uac_user_provider` (`USER_ID`,`PROVIDER_ID`);

--
-- Индексы таблицы `b_user_auth_action`
--
ALTER TABLE `b_user_auth_action`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  ADD KEY `ix_auth_action_date` (`ACTION_DATE`);

--
-- Индексы таблицы `b_user_auth_code`
--
ALTER TABLE `b_user_auth_code`
  ADD PRIMARY KEY (`USER_ID`,`CODE_TYPE`);

--
-- Индексы таблицы `b_user_counter`
--
ALTER TABLE `b_user_counter`
  ADD PRIMARY KEY (`USER_ID`,`SITE_ID`,`CODE`),
  ADD KEY `ix_buc_tag` (`TAG`),
  ADD KEY `ix_buc_code` (`CODE`),
  ADD KEY `ix_buc_ts` (`TIMESTAMP_X`),
  ADD KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`);

--
-- Индексы таблицы `b_user_digest`
--
ALTER TABLE `b_user_digest`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Индексы таблицы `b_user_field`
--
ALTER TABLE `b_user_field`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`);

--
-- Индексы таблицы `b_user_field_confirm`
--
ALTER TABLE `b_user_field_confirm`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`);

--
-- Индексы таблицы `b_user_field_enum`
--
ALTER TABLE `b_user_field_enum`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`);

--
-- Индексы таблицы `b_user_field_lang`
--
ALTER TABLE `b_user_field_lang`
  ADD PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`);

--
-- Индексы таблицы `b_user_field_permission`
--
ALTER TABLE `b_user_field_permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ROLE_ID` (`ENTITY_TYPE_ID`),
  ADD KEY `GROUP_ID` (`USER_FIELD_ID`),
  ADD KEY `PERMISSION_ID` (`PERMISSION_ID`);

--
-- Индексы таблицы `b_user_group`
--
ALTER TABLE `b_user_group`
  ADD UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  ADD KEY `ix_user_group_group` (`GROUP_ID`);

--
-- Индексы таблицы `b_user_hit_auth`
--
ALTER TABLE `b_user_hit_auth`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  ADD KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  ADD KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`);

--
-- Индексы таблицы `b_user_index`
--
ALTER TABLE `b_user_index`
  ADD PRIMARY KEY (`USER_ID`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_1` (`SEARCH_USER_CONTENT`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_2` (`SEARCH_DEPARTMENT_CONTENT`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_3` (`SEARCH_ADMIN_CONTENT`);

--
-- Индексы таблицы `b_user_index_selector`
--
ALTER TABLE `b_user_index_selector`
  ADD PRIMARY KEY (`USER_ID`);
ALTER TABLE `b_user_index_selector` ADD FULLTEXT KEY `IXF_B_USER_INDEX_SELECTOR_1` (`SEARCH_SELECTOR_CONTENT`);

--
-- Индексы таблицы `b_user_option`
--
ALTER TABLE `b_user_option`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`);

--
-- Индексы таблицы `b_user_phone_auth`
--
ALTER TABLE `b_user_phone_auth`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `ix_user_phone_auth_number` (`PHONE_NUMBER`);

--
-- Индексы таблицы `b_user_profile_history`
--
ALTER TABLE `b_user_profile_history`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_profile_history_user` (`USER_ID`),
  ADD KEY `ix_profile_history_date` (`DATE_INSERT`);

--
-- Индексы таблицы `b_user_profile_record`
--
ALTER TABLE `b_user_profile_record`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_profile_record_history_field` (`HISTORY_ID`,`FIELD`);

--
-- Индексы таблицы `b_user_stored_auth`
--
ALTER TABLE `b_user_stored_auth`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ux_user_hash` (`USER_ID`);

--
-- Индексы таблицы `b_utm_blog_comment`
--
ALTER TABLE `b_utm_blog_comment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_utm_BLOG_COMMENT_1` (`FIELD_ID`),
  ADD KEY `ix_utm_BLOG_COMMENT_2` (`VALUE_ID`);

--
-- Индексы таблицы `b_utm_blog_post`
--
ALTER TABLE `b_utm_blog_post`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_utm_BLOG_POST_1` (`FIELD_ID`),
  ADD KEY `ix_utm_BLOG_POST_2` (`VALUE_ID`);

--
-- Индексы таблицы `b_utm_forum_message`
--
ALTER TABLE `b_utm_forum_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_utm_FORUM_MESSAGE_1` (`FIELD_ID`),
  ADD KEY `ix_utm_FORUM_MESSAGE_2` (`VALUE_ID`);

--
-- Индексы таблицы `b_uts_blog_comment`
--
ALTER TABLE `b_uts_blog_comment`
  ADD PRIMARY KEY (`VALUE_ID`);

--
-- Индексы таблицы `b_uts_blog_post`
--
ALTER TABLE `b_uts_blog_post`
  ADD PRIMARY KEY (`VALUE_ID`);

--
-- Индексы таблицы `b_uts_forum_message`
--
ALTER TABLE `b_uts_forum_message`
  ADD PRIMARY KEY (`VALUE_ID`);

--
-- Индексы таблицы `b_vote`
--
ALTER TABLE `b_vote`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_CHANNEL_ID` (`CHANNEL_ID`);

--
-- Индексы таблицы `b_vote_answer`
--
ALTER TABLE `b_vote_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_QUESTION_ID` (`QUESTION_ID`);

--
-- Индексы таблицы `b_vote_attached_object`
--
ALTER TABLE `b_vote_attached_object`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_VOTE_AO_1` (`OBJECT_ID`),
  ADD KEY `IX_VOTE_AO_2` (`MODULE_ID`,`ENTITY_TYPE`,`ENTITY_ID`);

--
-- Индексы таблицы `b_vote_channel`
--
ALTER TABLE `b_vote_channel`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `b_vote_channel_2_group`
--
ALTER TABLE `b_vote_channel_2_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_VOTE_CHANNEL_ID_GROUP_ID` (`CHANNEL_ID`,`GROUP_ID`);

--
-- Индексы таблицы `b_vote_channel_2_site`
--
ALTER TABLE `b_vote_channel_2_site`
  ADD PRIMARY KEY (`CHANNEL_ID`,`SITE_ID`);

--
-- Индексы таблицы `b_vote_event`
--
ALTER TABLE `b_vote_event`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_USER_ID` (`VOTE_USER_ID`),
  ADD KEY `IX_B_VOTE_EVENT_2` (`VOTE_ID`,`IP`);

--
-- Индексы таблицы `b_vote_event_answer`
--
ALTER TABLE `b_vote_event_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_EVENT_QUESTION_ID` (`EVENT_QUESTION_ID`);

--
-- Индексы таблицы `b_vote_event_question`
--
ALTER TABLE `b_vote_event_question`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_EVENT_ID` (`EVENT_ID`);

--
-- Индексы таблицы `b_vote_question`
--
ALTER TABLE `b_vote_question`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_VOTE_ID` (`VOTE_ID`);

--
-- Индексы таблицы `b_vote_user`
--
ALTER TABLE `b_vote_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_VOTE_COOKIE_USER` (`COOKIE_ID`,`AUTH_USER_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `b_admin_notify`
--
ALTER TABLE `b_admin_notify`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_admin_notify_lang`
--
ALTER TABLE `b_admin_notify_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_agent`
--
ALTER TABLE `b_agent`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблицы `b_app_password`
--
ALTER TABLE `b_app_password`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_bitrixcloud_option`
--
ALTER TABLE `b_bitrixcloud_option`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_blog`
--
ALTER TABLE `b_blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_blog_category`
--
ALTER TABLE `b_blog_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_comment`
--
ALTER TABLE `b_blog_comment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_blog_group`
--
ALTER TABLE `b_blog_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_blog_image`
--
ALTER TABLE `b_blog_image`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_post`
--
ALTER TABLE `b_blog_post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_blog_post_category`
--
ALTER TABLE `b_blog_post_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_post_param`
--
ALTER TABLE `b_blog_post_param`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_site_path`
--
ALTER TABLE `b_blog_site_path`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_socnet`
--
ALTER TABLE `b_blog_socnet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_socnet_rights`
--
ALTER TABLE `b_blog_socnet_rights`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_trackback`
--
ALTER TABLE `b_blog_trackback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_user`
--
ALTER TABLE `b_blog_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_blog_user2blog`
--
ALTER TABLE `b_blog_user2blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_user2user_group`
--
ALTER TABLE `b_blog_user2user_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_blog_user_group`
--
ALTER TABLE `b_blog_user_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_blog_user_group_perms`
--
ALTER TABLE `b_blog_user_group_perms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `b_checklist`
--
ALTER TABLE `b_checklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_copy_queue`
--
ALTER TABLE `b_clouds_copy_queue`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_delete_queue`
--
ALTER TABLE `b_clouds_delete_queue`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_file_bucket`
--
ALTER TABLE `b_clouds_file_bucket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_file_resize`
--
ALTER TABLE `b_clouds_file_resize`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_clouds_file_save`
--
ALTER TABLE `b_clouds_file_save`
  MODIFY `ID` int(32) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_component_params`
--
ALTER TABLE `b_component_params`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT для таблицы `b_composite_log`
--
ALTER TABLE `b_composite_log`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_composite_page`
--
ALTER TABLE `b_composite_page`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_agreement`
--
ALTER TABLE `b_consent_agreement`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_field`
--
ALTER TABLE `b_consent_field`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_user_consent`
--
ALTER TABLE `b_consent_user_consent`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_consent_user_consent_item`
--
ALTER TABLE `b_consent_user_consent_item`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_culture`
--
ALTER TABLE `b_culture`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_event`
--
ALTER TABLE `b_event`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_event_log`
--
ALTER TABLE `b_event_log`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT для таблицы `b_event_message`
--
ALTER TABLE `b_event_message`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT для таблицы `b_event_type`
--
ALTER TABLE `b_event_type`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT для таблицы `b_favorite`
--
ALTER TABLE `b_favorite`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_file`
--
ALTER TABLE `b_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `b_file_preview`
--
ALTER TABLE `b_file_preview`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_file_search`
--
ALTER TABLE `b_file_search`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_filters`
--
ALTER TABLE `b_filters`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form`
--
ALTER TABLE `b_form`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_2_group`
--
ALTER TABLE `b_form_2_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_answer`
--
ALTER TABLE `b_form_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_crm`
--
ALTER TABLE `b_form_crm`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_crm_field`
--
ALTER TABLE `b_form_crm_field`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_crm_link`
--
ALTER TABLE `b_form_crm_link`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_field`
--
ALTER TABLE `b_form_field`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_field_filter`
--
ALTER TABLE `b_form_field_filter`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_field_validator`
--
ALTER TABLE `b_form_field_validator`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_menu`
--
ALTER TABLE `b_form_menu`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_result`
--
ALTER TABLE `b_form_result`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_result_answer`
--
ALTER TABLE `b_form_result_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_status`
--
ALTER TABLE `b_form_status`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_form_status_2_group`
--
ALTER TABLE `b_form_status_2_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum`
--
ALTER TABLE `b_forum`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_dictionary`
--
ALTER TABLE `b_forum_dictionary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_forum_email`
--
ALTER TABLE `b_forum_email`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_file`
--
ALTER TABLE `b_forum_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_filter`
--
ALTER TABLE `b_forum_filter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT для таблицы `b_forum_group`
--
ALTER TABLE `b_forum_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_group_lang`
--
ALTER TABLE `b_forum_group_lang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_letter`
--
ALTER TABLE `b_forum_letter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `b_forum_message`
--
ALTER TABLE `b_forum_message`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_perms`
--
ALTER TABLE `b_forum_perms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_pm_folder`
--
ALTER TABLE `b_forum_pm_folder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_forum_points`
--
ALTER TABLE `b_forum_points`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_points2post`
--
ALTER TABLE `b_forum_points2post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_private_message`
--
ALTER TABLE `b_forum_private_message`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_rank`
--
ALTER TABLE `b_forum_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_rank_lang`
--
ALTER TABLE `b_forum_rank_lang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_stat`
--
ALTER TABLE `b_forum_stat`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_subscribe`
--
ALTER TABLE `b_forum_subscribe`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_topic`
--
ALTER TABLE `b_forum_topic`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_user`
--
ALTER TABLE `b_forum_user`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_user_forum`
--
ALTER TABLE `b_forum_user_forum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_forum_user_topic`
--
ALTER TABLE `b_forum_user_topic`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_geoip_handlers`
--
ALTER TABLE `b_geoip_handlers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_group`
--
ALTER TABLE `b_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_hlblock_entity`
--
ALTER TABLE `b_hlblock_entity`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_hlblock_entity_rights`
--
ALTER TABLE `b_hlblock_entity_rights`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_hot_keys`
--
ALTER TABLE `b_hot_keys`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `b_hot_keys_code`
--
ALTER TABLE `b_hot_keys_code`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT для таблицы `b_iblock`
--
ALTER TABLE `b_iblock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `b_iblock_element`
--
ALTER TABLE `b_iblock_element`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `b_iblock_element_property`
--
ALTER TABLE `b_iblock_element_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT для таблицы `b_iblock_iproperty`
--
ALTER TABLE `b_iblock_iproperty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_iblock_offers_tmp`
--
ALTER TABLE `b_iblock_offers_tmp`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_property`
--
ALTER TABLE `b_iblock_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `b_iblock_property_enum`
--
ALTER TABLE `b_iblock_property_enum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `b_iblock_property_feature`
--
ALTER TABLE `b_iblock_property_feature`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_iblock_right`
--
ALTER TABLE `b_iblock_right`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_rss`
--
ALTER TABLE `b_iblock_rss`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_iblock_section`
--
ALTER TABLE `b_iblock_section`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `b_landing`
--
ALTER TABLE `b_landing`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_binding`
--
ALTER TABLE `b_landing_binding`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_block`
--
ALTER TABLE `b_landing_block`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_chat`
--
ALTER TABLE `b_landing_chat`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_chat_binding`
--
ALTER TABLE `b_landing_chat_binding`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_cookies_agreement`
--
ALTER TABLE `b_landing_cookies_agreement`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_demo`
--
ALTER TABLE `b_landing_demo`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_domain`
--
ALTER TABLE `b_landing_domain`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_entity_rights`
--
ALTER TABLE `b_landing_entity_rights`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_file`
--
ALTER TABLE `b_landing_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_filter_block`
--
ALTER TABLE `b_landing_filter_block`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_filter_entity`
--
ALTER TABLE `b_landing_filter_entity`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_hook_data`
--
ALTER TABLE `b_landing_hook_data`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_placement`
--
ALTER TABLE `b_landing_placement`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_repo`
--
ALTER TABLE `b_landing_repo`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_role`
--
ALTER TABLE `b_landing_role`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_site`
--
ALTER TABLE `b_landing_site`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_syspage`
--
ALTER TABLE `b_landing_syspage`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_template`
--
ALTER TABLE `b_landing_template`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `b_landing_template_ref`
--
ALTER TABLE `b_landing_template_ref`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_update_block`
--
ALTER TABLE `b_landing_update_block`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_urlrewrite`
--
ALTER TABLE `b_landing_urlrewrite`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_landing_view`
--
ALTER TABLE `b_landing_view`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_list_rubric`
--
ALTER TABLE `b_list_rubric`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_log_notification`
--
ALTER TABLE `b_log_notification`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_log_notification_action`
--
ALTER TABLE `b_log_notification_action`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_main_mail_blacklist`
--
ALTER TABLE `b_main_mail_blacklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_main_mail_sender`
--
ALTER TABLE `b_main_mail_sender`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_medialib_collection`
--
ALTER TABLE `b_medialib_collection`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_medialib_item`
--
ALTER TABLE `b_medialib_item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_medialib_type`
--
ALTER TABLE `b_medialib_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_messageservice_message`
--
ALTER TABLE `b_messageservice_message`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_messageservice_rest_app`
--
ALTER TABLE `b_messageservice_rest_app`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_messageservice_rest_app_lang`
--
ALTER TABLE `b_messageservice_rest_app_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_module_group`
--
ALTER TABLE `b_module_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_module_to_module`
--
ALTER TABLE `b_module_to_module`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT для таблицы `b_numerator`
--
ALTER TABLE `b_numerator`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_operation`
--
ALTER TABLE `b_operation`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT для таблицы `b_perf_cache`
--
ALTER TABLE `b_perf_cache`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_cluster`
--
ALTER TABLE `b_perf_cluster`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_component`
--
ALTER TABLE `b_perf_component`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_error`
--
ALTER TABLE `b_perf_error`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_history`
--
ALTER TABLE `b_perf_history`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_hit`
--
ALTER TABLE `b_perf_hit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_index_ban`
--
ALTER TABLE `b_perf_index_ban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_index_complete`
--
ALTER TABLE `b_perf_index_complete`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_index_suggest`
--
ALTER TABLE `b_perf_index_suggest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_sql`
--
ALTER TABLE `b_perf_sql`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_tab_column_stat`
--
ALTER TABLE `b_perf_tab_column_stat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_perf_test`
--
ALTER TABLE `b_perf_test`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_posting`
--
ALTER TABLE `b_posting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_posting_email`
--
ALTER TABLE `b_posting_email`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating`
--
ALTER TABLE `b_rating`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_rating_component`
--
ALTER TABLE `b_rating_component`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_component_results`
--
ALTER TABLE `b_rating_component_results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_results`
--
ALTER TABLE `b_rating_results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_rule`
--
ALTER TABLE `b_rating_rule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `b_rating_rule_vetting`
--
ALTER TABLE `b_rating_rule_vetting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_user`
--
ALTER TABLE `b_rating_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_rating_vote`
--
ALTER TABLE `b_rating_vote`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_vote_group`
--
ALTER TABLE `b_rating_vote_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `b_rating_voting`
--
ALTER TABLE `b_rating_voting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_voting_prepare`
--
ALTER TABLE `b_rating_voting_prepare`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rating_weight`
--
ALTER TABLE `b_rating_weight`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_rest_ap`
--
ALTER TABLE `b_rest_ap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_app`
--
ALTER TABLE `b_rest_app`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_app_lang`
--
ALTER TABLE `b_rest_app_lang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_app_log`
--
ALTER TABLE `b_rest_app_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_ap_permission`
--
ALTER TABLE `b_rest_ap_permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_event`
--
ALTER TABLE `b_rest_event`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_event_offline`
--
ALTER TABLE `b_rest_event_offline`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_log`
--
ALTER TABLE `b_rest_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_owner_entity`
--
ALTER TABLE `b_rest_owner_entity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_placement`
--
ALTER TABLE `b_rest_placement`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_stat_method`
--
ALTER TABLE `b_rest_stat_method`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_rest_usage_entity`
--
ALTER TABLE `b_rest_usage_entity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_search_content`
--
ALTER TABLE `b_search_content`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT для таблицы `b_search_custom_rank`
--
ALTER TABLE `b_search_custom_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_search_phrase`
--
ALTER TABLE `b_search_phrase`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `b_search_stem`
--
ALTER TABLE `b_search_stem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT для таблицы `b_search_suggest`
--
ALTER TABLE `b_search_suggest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_security_sitecheck`
--
ALTER TABLE `b_security_sitecheck`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sec_filter_mask`
--
ALTER TABLE `b_sec_filter_mask`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sec_frame_mask`
--
ALTER TABLE `b_sec_frame_mask`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sec_iprule`
--
ALTER TABLE `b_sec_iprule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sec_recovery_codes`
--
ALTER TABLE `b_sec_recovery_codes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_autolog`
--
ALTER TABLE `b_seo_adv_autolog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_banner`
--
ALTER TABLE `b_seo_adv_banner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_campaign`
--
ALTER TABLE `b_seo_adv_campaign`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_group`
--
ALTER TABLE `b_seo_adv_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_log`
--
ALTER TABLE `b_seo_adv_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_order`
--
ALTER TABLE `b_seo_adv_order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_adv_region`
--
ALTER TABLE `b_seo_adv_region`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_keywords`
--
ALTER TABLE `b_seo_keywords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_search_engine`
--
ALTER TABLE `b_seo_search_engine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_log`
--
ALTER TABLE `b_seo_service_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_rtg_queue`
--
ALTER TABLE `b_seo_service_rtg_queue`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_subscription`
--
ALTER TABLE `b_seo_service_subscription`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_service_webhook`
--
ALTER TABLE `b_seo_service_webhook`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap`
--
ALTER TABLE `b_seo_sitemap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap_entity`
--
ALTER TABLE `b_seo_sitemap_entity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap_iblock`
--
ALTER TABLE `b_seo_sitemap_iblock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_sitemap_runtime`
--
ALTER TABLE `b_seo_sitemap_runtime`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_seo_yandex_direct_stat`
--
ALTER TABLE `b_seo_yandex_direct_stat`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_short_uri`
--
ALTER TABLE `b_short_uri`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_site_template`
--
ALTER TABLE `b_site_template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `b_smile`
--
ALTER TABLE `b_smile`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `b_smile_lang`
--
ALTER TABLE `b_smile_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `b_smile_set`
--
ALTER TABLE `b_smile_set`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_sms_template`
--
ALTER TABLE `b_sms_template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `b_sm_version_history`
--
ALTER TABLE `b_sm_version_history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_ap`
--
ALTER TABLE `b_socialservices_ap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_contact`
--
ALTER TABLE `b_socialservices_contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_contact_connect`
--
ALTER TABLE `b_socialservices_contact_connect`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_message`
--
ALTER TABLE `b_socialservices_message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_user`
--
ALTER TABLE `b_socialservices_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_user_link`
--
ALTER TABLE `b_socialservices_user_link`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_socialservices_zoom_meeting`
--
ALTER TABLE `b_socialservices_zoom_meeting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_sticker`
--
ALTER TABLE `b_sticker`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_subscription`
--
ALTER TABLE `b_subscription`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_task`
--
ALTER TABLE `b_task`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `b_translate_diff`
--
ALTER TABLE `b_translate_diff`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_translate_file`
--
ALTER TABLE `b_translate_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_translate_path`
--
ALTER TABLE `b_translate_path`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_translate_path_lang`
--
ALTER TABLE `b_translate_path_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_translate_path_tree`
--
ALTER TABLE `b_translate_path_tree`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_translate_phrase`
--
ALTER TABLE `b_translate_phrase`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_urlpreview_metadata`
--
ALTER TABLE `b_urlpreview_metadata`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_urlpreview_route`
--
ALTER TABLE `b_urlpreview_route`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user`
--
ALTER TABLE `b_user`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `b_user_auth_action`
--
ALTER TABLE `b_user_auth_action`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_field`
--
ALTER TABLE `b_user_field`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `b_user_field_confirm`
--
ALTER TABLE `b_user_field_confirm`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_field_enum`
--
ALTER TABLE `b_user_field_enum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_field_permission`
--
ALTER TABLE `b_user_field_permission`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_hit_auth`
--
ALTER TABLE `b_user_hit_auth`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_option`
--
ALTER TABLE `b_user_option`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=525;

--
-- AUTO_INCREMENT для таблицы `b_user_profile_history`
--
ALTER TABLE `b_user_profile_history`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_profile_record`
--
ALTER TABLE `b_user_profile_record`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_user_stored_auth`
--
ALTER TABLE `b_user_stored_auth`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `b_utm_blog_comment`
--
ALTER TABLE `b_utm_blog_comment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_utm_blog_post`
--
ALTER TABLE `b_utm_blog_post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_utm_forum_message`
--
ALTER TABLE `b_utm_forum_message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote`
--
ALTER TABLE `b_vote`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_answer`
--
ALTER TABLE `b_vote_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_attached_object`
--
ALTER TABLE `b_vote_attached_object`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_channel`
--
ALTER TABLE `b_vote_channel`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_channel_2_group`
--
ALTER TABLE `b_vote_channel_2_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_event`
--
ALTER TABLE `b_vote_event`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_event_answer`
--
ALTER TABLE `b_vote_event_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_event_question`
--
ALTER TABLE `b_vote_event_question`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_question`
--
ALTER TABLE `b_vote_question`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `b_vote_user`
--
ALTER TABLE `b_vote_user`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
