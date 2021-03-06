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
<p class="browserupgrade">???? ?????????????????????? <strong>????????????????????</strong> ??????????????. ????????????????????
    <a href="http://browsehappy.com/">???????????????? ??????</a>
</p>
<![endif]-->

<!-- ?????????? ?? ???????????????????? -->
<div class="header-top-area bg-color ptb-10 hidden-xs">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-sm-6">
                <?$APPLICATION->IncludeComponent(
                	"bitrix:main.include",
                	"",
                	Array(
                		"AREA_FILE_SHOW" => "file",
                		"AREA_FILE_SUFFIX" => "inc",
                		"EDIT_TEMPLATE" => "",
                		"PATH" => "/include/text-logo.php"
                	)
                );?>
            </div>
            <div class="col-md-6 col-sm-6">
                <div class="social-icon-header text-right">
                    <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                    <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
                    <a href="https://www.google.com/"><i class="fa fa-google-plus"></i></a>
                    <a href="https://www.youtube.com/"><i class="fa fa-youtube"></i></a>
                    <a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ?????????? ?????????? (????????) -->
<header id="sticky-header" class="header-area header-wrapper white-bg">
    <!-- ???????? (?????? ????????????????) -->
    <div class="header-middle-area full-width">
        <div class="container">
            <div class="full-width-mega-dropdown">
                <div class="row">
                    <!-- ?????????????? -->
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

                    <!-- ???????? (????????????????) -->
                    <div class="col-md-10 col-sm-9 col-xs-4 text-right dark-menu">
                        
                        <?$APPLICATION->IncludeComponent("bitrix:menu", "top_menu", Array(
	"ALLOW_MULTI_SELECT" => "N",	// ?????????????????? ?????????????????? ???????????????? ?????????????? ????????????????????????
		"CHILD_MENU_TYPE" => "left",	// ?????? ???????? ?????? ?????????????????? ??????????????
		"DELAY" => "N",	// ?????????????????????? ???????????????????? ?????????????? ????????
		"MAX_LEVEL" => "2",	// ?????????????? ?????????????????????? ????????
		"MENU_CACHE_GET_VARS" => array(	// ???????????????? ???????????????????? ??????????????
			0 => "",
		),
		"MENU_CACHE_TIME" => "3600",	// ?????????? ?????????????????????? (??????.)
		"MENU_CACHE_TYPE" => "N",	// ?????? ??????????????????????
		"MENU_CACHE_USE_GROUPS" => "N",	// ?????????????????? ?????????? ??????????????
		"ROOT_MENU_TYPE" => "top",	// ?????? ???????? ?????? ?????????????? ????????????
		"USE_EXT" => "N",	// ???????????????????? ?????????? ?? ?????????????? ???????? .??????_????????.menu_ext.php
	),
	false
);?>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ???????? (?????? ??????????????) -->
    
    <?$APPLICATION->IncludeComponent("bitrix:menu", "top_menu_mobile", Array(
	"ALLOW_MULTI_SELECT" => "N",	// ?????????????????? ?????????????????? ???????????????? ?????????????? ????????????????????????
		"CHILD_MENU_TYPE" => "left",	// ?????? ???????? ?????? ?????????????????? ??????????????
		"DELAY" => "N",	// ?????????????????????? ???????????????????? ?????????????? ????????
		"MAX_LEVEL" => "2",	// ?????????????? ?????????????????????? ????????
		"MENU_CACHE_GET_VARS" => array(	// ???????????????? ???????????????????? ??????????????
			0 => "",
		),
		"MENU_CACHE_TIME" => "3600",	// ?????????? ?????????????????????? (??????.)
		"MENU_CACHE_TYPE" => "N",	// ?????? ??????????????????????
		"MENU_CACHE_USE_GROUPS" => "N",	// ?????????????????? ?????????? ??????????????
		"ROOT_MENU_TYPE" => "top",	// ?????? ???????? ?????? ?????????????? ????????????
		"USE_EXT" => "N",	// ???????????????????? ?????????? ?? ?????????????? ???????? .??????_????????.menu_ext.php
	),
	false
);?>

</header>

<!-- ?????????????? ???????????? (??????????????????) -->
<div class="breadcrumb-area brand-bg ptb-100">
    <div class="container width-100">
        <div class="row z-index">
            <div class="col-md-7 col-sm-6">
                <div class="breadcrumb-title">
                    <h2 class="white-text"><?=$APPLICATION->ShowTitle()?></h2>
                </div>
            </div>
            <div class="col-md-5 col-sm-6">
                        <?$APPLICATION->IncludeComponent(
	"bitrix:breadcrumb", 
	"bread_crumb", 
	array(
		"PATH" => "",
		"SITE_ID" => "s1",
		"START_FROM" => "0",
		"COMPONENT_TEMPLATE" => "bread_crumb"
	),
	false
);?>
            </div>
        </div>
    </div>
</div>