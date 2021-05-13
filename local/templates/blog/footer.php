<?
if(!defined('B_PROLOG_INCLUDED') || B_PROLOG_INCLUDED !== true)
	die();
?>

</div>

<!-- Правая колонка -->
<div class="col-md-4 col-sm-12 col-xs-12 mt-sm-40 mt-xs-40">

    <!-- Поиск -->
    <div class="widget mb-60">
        <?$APPLICATION->IncludeComponent(
           "bitrix:search.form", 
           "my_search", 
           array(
              "PAGE" => "#SITE_DIR#blog/search/index.php",
              "USE_SUGGEST" => "N",
              "COMPONENT_TEMPLATE" => "my_search"
          ),
           false
       );?>
   </div>

   <!-- Категории -->
   <div class="widget mb-60">
    <h4 class="sidebar-title text-uppercase mb-35 pb-10">Категории</h4>
    <?$APPLICATION->IncludeComponent("bitrix:catalog.section.list", "my_categories", Array(
	"ADD_SECTIONS_CHAIN" => "N",	// Включать раздел в цепочку навигации
		"CACHE_FILTER" => "N",	// Кешировать при установленном фильтре
		"CACHE_GROUPS" => "N",	// Учитывать права доступа
		"CACHE_TIME" => "36000000",	// Время кеширования (сек.)
		"CACHE_TYPE" => "A",	// Тип кеширования
		"COUNT_ELEMENTS" => "N",	// Показывать количество элементов в разделе
		"COUNT_ELEMENTS_FILTER" => "CNT_ACTIVE",	// Показывать количество
		"FILTER_NAME" => "sectionsFilter",	// Имя массива со значениями фильтра разделов
		"IBLOCK_ID" => "9",	// Инфоблок
		"IBLOCK_TYPE" => "blog",	// Тип инфоблока
		"SECTION_CODE" => "",	// Код раздела
		"SECTION_FIELDS" => array(	// Поля разделов
			0 => "",
			1 => "",
		),
		"SECTION_ID" => $_REQUEST["SECTION_ID"],	// ID раздела
		"SECTION_URL" => "",	// URL, ведущий на страницу с содержимым раздела
		"SECTION_USER_FIELDS" => array(	// Свойства разделов
			0 => "",
			1 => "",
		),
		"SHOW_PARENT_NAME" => "Y",	// Показывать название раздела
		"TOP_DEPTH" => "2",	// Максимальная отображаемая глубина разделов
		"VIEW_MODE" => "LINE",	// Вид списка подразделов
	),
    false
);?>
</div>

<!-- Популярные теги -->
<div class="widget mb-60">
    <h4 class="sidebar-title text-uppercase mb-35 pb-10">Популярные теги</h4>
    <?$APPLICATION->IncludeComponent(
	"bitrix:search.tags.cloud", 
	"my_tags", 
	array(
		"CACHE_TIME" => "3600",
		"CACHE_TYPE" => "A",
		"CHECK_DATES" => "N",
		"COLOR_NEW" => "3E74E6",
		"COLOR_OLD" => "C0C0C0",
		"COLOR_TYPE" => "Y",
		"COMPONENT_TEMPLATE" => "my_tags",
		"FILTER_NAME" => "",
		"FONT_MAX" => "50",
		"FONT_MIN" => "10",
		"PAGE_ELEMENTS" => "15",
		"PERIOD" => "",
		"PERIOD_NEW_TAGS" => "",
		"SHOW_CHAIN" => "N",
		"SORT" => "CNT",
		"TAGS_INHERIT" => "Y",
		"URL_SEARCH" => "/blog/search/index.php",
		"WIDTH" => "100%",
		"arrFILTER" => array(
			0 => "iblock_blog",
		),
		"arrFILTER_iblock_blog" => array(
			0 => "9",
		)
	),
	false
);?>
</div>

</div>
</div>
</div>
</div>

<!-- Футер -->
<footer class="footer-style-2">
    <div class="footer-top-area brand-bg pad-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="footer-widget footer-widget-center text-center">
                        <!-- Лого + текст -->
                        <div class="footer-logo">
                            <a href="/">
                                <img src="<?=DEFAULT_TEMPLATE_PATH?>/img/logo/logo-white.png" alt=""/>
                            </a>
                        </div>
                        <p>Если вы похожи на большинство компаний, у вас нет маркетингового бюджета в миллион
                           долларов<br>
                           или своей команды разработки. Но это не значит, что у вас не может быть<br>
                       сайта мирового класса. И мы вам в этом поможем!</p>

                       <!-- Соц. сети -->
                       <div class="social-icon">
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
</div>

<!-- нижнее меню -->
<div class="footer-bottom-area pad-20 brand-bg footer-border">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-md-5 col-sm-12">
                <div class="copyright white-text">
                    <p>We Coders © <?=date('Y')?></p>
                </div>
            </div>

            <div class="col-lg-7 col-md-7 col-sm-12">
                <?$APPLICATION->IncludeComponent("bitrix:menu", "footer_menu", Array(
	"ALLOW_MULTI_SELECT" => "N",	// Разрешить несколько активных пунктов одновременно
		"CHILD_MENU_TYPE" => "left",	// Тип меню для остальных уровней
		"DELAY" => "N",	// Откладывать выполнение шаблона меню
		"MAX_LEVEL" => "1",	// Уровень вложенности меню
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
</footer>

</body>
</html>