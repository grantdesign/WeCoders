<?
if(!defined('B_PROLOG_INCLUDED') || B_PROLOG_INCLUDED !== true) die();
use Bitrix\Main\Page\Asset;
?>
	
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?$APPLICATION->ShowTitle();?></title>

    <link rel="shortcut icon" type="image/x-icon" href="<?=DEFAULT_TEMPLATE_PATH?>/img/favicon.png">

    <?php
    Asset::getInstance()->addString('<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700" rel="stylesheet">');

    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/css/bootstrap.min.css");
    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/css/owl.carousel.css");
    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/css/animate-text.css");
    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/css/magnific-popup.css");
    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/css/et-line.css");
    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/css/pe-icon-7-stroke.css");
    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/css/shortcode/shortcodes.css");
    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/css/meanmenu.min.css");
    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/css/font-awesome.min.css");
    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/style.css");
    Asset::getInstance()->addCss(DEFAULT_TEMPLATE_PATH."/css/responsive.css");

    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/vendor/modernizr-2.8.3.min.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/vendor/jquery-1.12.0.min.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/bootstrap.min.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/owl.carousel.min.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/jquery.counterup.min.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/waypoints.min.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/jquery.magnific-popup.min.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/jquery.mixitup.min.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/jquery.meanmenu.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/jquery.nav.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/jquery.parallax-1.1.3.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/animate-text.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/plugins.js");
    Asset::getInstance()->addJs(DEFAULT_TEMPLATE_PATH."/js/main.js");
    ?>

    <?$APPLICATION->ShowHead();?>
</head>
<body>

<div id="panel">
	<?$APPLICATION->ShowPanel();?>
</div>

<!--[if lt IE 8]>
<p class="browserupgrade">Вы используете <strong>устаревший</strong> браузер. Пожалуйста
    <a href="http://browsehappy.com/">обновите его</a>
</p>
<![endif]-->

<!-- Шапка сайта (меню) -->
<header id="sticky-header" class="header-area header-wrapper transparent-header">

    <!-- Меню (для десктопа) -->
    <div class="header-middle-area full-width">
        <div class="container">
            <div class="full-width-mega-dropdown">
                <div class="row">
                    <!-- Логотип -->
                    <div class="col-md-2 col-sm-3 col-xs-8">
                        <div class="logo ptb-22">
                            <?$APPLICATION->IncludeComponent(
                            	"bitrix:main.include",
                            	"",
                            	Array(
                            		"AREA_FILE_SHOW" => "file",
                            		"AREA_FILE_SUFFIX" => "inc",
                            		"EDIT_TEMPLATE" => "",
                            		"PATH" => "/include/logo.php"
                            	)
                            );?>
                        </div>
                    </div>

                    <!-- Меню (основное) -->
                    <div class="col-md-10 col-sm-9 col-xs-4 text-right">
                        
                        <?$APPLICATION->IncludeComponent("bitrix:menu", "top_menu", Array(
	"ALLOW_MULTI_SELECT" => "N",	// Разрешить несколько активных пунктов одновременно
		"CHILD_MENU_TYPE" => "left",	// Тип меню для остальных уровней
		"DELAY" => "N",	// Откладывать выполнение шаблона меню
		"MAX_LEVEL" => "2",	// Уровень вложенности меню
		"MENU_CACHE_GET_VARS" => array(	// Значимые переменные запроса
			0 => "",
		),
		"MENU_CACHE_TIME" => "3600",	// Время кеширования (сек.)
		"MENU_CACHE_TYPE" => "N",	// Тип кеширования
		"MENU_CACHE_USE_GROUPS" => "N",	// Учитывать права доступа
		"ROOT_MENU_TYPE" => "top",	// Тип меню для первого уровня
		"USE_EXT" => "N",	// Подключать файлы с именами вида .тип_меню.menu_ext.php
	),
	false
);?>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Меню (для мобилки) -->
    
    <?$APPLICATION->IncludeComponent("bitrix:menu", "top_menu_mobile", Array(
	"ALLOW_MULTI_SELECT" => "N",	// Разрешить несколько активных пунктов одновременно
		"CHILD_MENU_TYPE" => "left",	// Тип меню для остальных уровней
		"DELAY" => "N",	// Откладывать выполнение шаблона меню
		"MAX_LEVEL" => "2",	// Уровень вложенности меню
		"MENU_CACHE_GET_VARS" => array(	// Значимые переменные запроса
			0 => "",
		),
		"MENU_CACHE_TIME" => "3600",	// Время кеширования (сек.)
		"MENU_CACHE_TYPE" => "N",	// Тип кеширования
		"MENU_CACHE_USE_GROUPS" => "N",	// Учитывать права доступа
		"ROOT_MENU_TYPE" => "top",	// Тип меню для первого уровня
		"USE_EXT" => "N",	// Подключать файлы с именами вида .тип_меню.menu_ext.php
	),
	false
);?>

</header>

<!-- Слайдер -->
<section class="slider-area">
    <?$APPLICATION->IncludeComponent(
	"bitrix:news.list", 
	"sliders", 
	array(
		"ACTIVE_DATE_FORMAT" => "d.m.Y",
		"ADD_SECTIONS_CHAIN" => "N",
		"AJAX_MODE" => "N",
		"AJAX_OPTION_ADDITIONAL" => "",
		"AJAX_OPTION_HISTORY" => "N",
		"AJAX_OPTION_JUMP" => "N",
		"AJAX_OPTION_STYLE" => "Y",
		"CACHE_FILTER" => "N",
		"CACHE_GROUPS" => "N",
		"CACHE_TIME" => "36000000",
		"CACHE_TYPE" => "A",
		"CHECK_DATES" => "Y",
		"DETAIL_URL" => "",
		"DISPLAY_BOTTOM_PAGER" => "N",
		"DISPLAY_DATE" => "Y",
		"DISPLAY_NAME" => "Y",
		"DISPLAY_PICTURE" => "Y",
		"DISPLAY_PREVIEW_TEXT" => "Y",
		"DISPLAY_TOP_PAGER" => "N",
		"FIELD_CODE" => array(
			0 => "NAME",
			1 => "DETAIL_TEXT",
			2 => "DETAIL_PICTURE",
			3 => "",
		),
		"FILTER_NAME" => "",
		"HIDE_LINK_WHEN_NO_DETAIL" => "N",
		"IBLOCK_ID" => "1",
		"IBLOCK_TYPE" => "content",
		"INCLUDE_IBLOCK_INTO_CHAIN" => "N",
		"INCLUDE_SUBSECTIONS" => "Y",
		"MESSAGE_404" => "",
		"NEWS_COUNT" => "5",
		"PAGER_BASE_LINK_ENABLE" => "N",
		"PAGER_DESC_NUMBERING" => "N",
		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",
		"PAGER_SHOW_ALL" => "N",
		"PAGER_SHOW_ALWAYS" => "N",
		"PAGER_TEMPLATE" => ".default",
		"PAGER_TITLE" => "Слайдеры",
		"PARENT_SECTION" => "",
		"PARENT_SECTION_CODE" => "",
		"PREVIEW_TRUNCATE_LEN" => "",
		"PROPERTY_CODE" => array(
			0 => "REF",
			1 => "",
		),
		"SET_BROWSER_TITLE" => "Y",
		"SET_LAST_MODIFIED" => "N",
		"SET_META_DESCRIPTION" => "Y",
		"SET_META_KEYWORDS" => "Y",
		"SET_STATUS_404" => "N",
		"SET_TITLE" => "Y",
		"SHOW_404" => "N",
		"SORT_BY1" => "ACTIVE_FROM",
		"SORT_BY2" => "ID",
		"SORT_ORDER1" => "ASC",
		"SORT_ORDER2" => "ASC",
		"STRICT_SECTION_CHECK" => "N",
		"COMPONENT_TEMPLATE" => "sliders"
	),
	false
);?>
</section>			