<?
require($_SERVER['DOCUMENT_ROOT'].'/bitrix/header.php');
$APPLICATION->SetPageProperty("TITLE", "Digital-агентство WeCoders");
$APPLICATION->SetPageProperty("keywords", "Digital-агентство WeCoders");
$APPLICATION->SetPageProperty("description", "Digital-агентство WeCoders");
$APPLICATION->SetTitle("Главная");
?> 

<!-- О нас -->
<section class="who-area-are pad-90" id="about_us">
    <div class="container">
        <h2 class="title-1">О нас</h2>
        <div class="row">
            <div class="col-md-7">
                <div class="who-we">
                    <?$APPLICATION->IncludeComponent(
                        "bitrix:main.include",
                        "",
                        Array(
                            "AREA_FILE_SHOW" => "file",
                            "AREA_FILE_SUFFIX" => "about_text_file",
                            "EDIT_TEMPLATE" => "",
                            "PATH" => "/include/about_text.php"
                        )
                    );?>
                </div>
            </div>
            <div class="col-md-5">
                <div class="about-bg">
                    <?$APPLICATION->IncludeComponent(
                        "bitrix:main.include",
                        "",
                        Array(
                            "AREA_FILE_SHOW" => "file",
                            "AREA_FILE_SUFFIX" => "inc",
                            "EDIT_TEMPLATE" => "",
                            "PATH" => "/include/about_image.php"
                        )
                    );?>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Основные направления -->
<section class="service-area pt-90 pb-60 bg-color">
    <div class="container">
        <div class="row">
            <div class="section-heading text-center mb-70">
                <h2>Основные направления</h2>
                <p>Всё что нужно для производства сайта любой сложности</p>
            </div>
        </div>
        <div class="row">
            <?$APPLICATION->IncludeComponent(
               "bitrix:news.list", 
               "routes", 
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
                     0 => "",
                     1 => "",
                 ),
                  "FILTER_NAME" => "",
                  "HIDE_LINK_WHEN_NO_DETAIL" => "N",
                  "IBLOCK_ID" => "4",
                  "IBLOCK_TYPE" => "services",
                  "INCLUDE_IBLOCK_INTO_CHAIN" => "N",
                  "INCLUDE_SUBSECTIONS" => "Y",
                  "MESSAGE_404" => "",
                  "NEWS_COUNT" => "3",
                  "PAGER_BASE_LINK_ENABLE" => "N",
                  "PAGER_DESC_NUMBERING" => "N",
                  "PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",
                  "PAGER_SHOW_ALL" => "N",
                  "PAGER_SHOW_ALWAYS" => "N",
                  "PAGER_TEMPLATE" => ".default",
                  "PAGER_TITLE" => "Направления",
                  "PARENT_SECTION" => "",
                  "PARENT_SECTION_CODE" => "",
                  "PREVIEW_TRUNCATE_LEN" => "",
                  "PROPERTY_CODE" => array(
                     0 => "ICON",
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
                  "COMPONENT_TEMPLATE" => "routes"
              ),
               false
           );?>
       </div>
   </div>
</section>

<!-- Инфографика -->
<section class="project-count-area brand-bg pad-90">
    <div class="container">
        <div class="row">
            <?$APPLICATION->IncludeComponent("bitrix:news.list", "static", Array(
	"ACTIVE_DATE_FORMAT" => "d.m.Y",	// Формат показа даты
		"ADD_SECTIONS_CHAIN" => "N",	// Включать раздел в цепочку навигации
		"AJAX_MODE" => "N",	// Включить режим AJAX
		"AJAX_OPTION_ADDITIONAL" => "",	// Дополнительный идентификатор
		"AJAX_OPTION_HISTORY" => "N",	// Включить эмуляцию навигации браузера
		"AJAX_OPTION_JUMP" => "N",	// Включить прокрутку к началу компонента
		"AJAX_OPTION_STYLE" => "Y",	// Включить подгрузку стилей
		"CACHE_FILTER" => "N",	// Кешировать при установленном фильтре
		"CACHE_GROUPS" => "N",	// Учитывать права доступа
		"CACHE_TIME" => "36000000",	// Время кеширования (сек.)
		"CACHE_TYPE" => "A",	// Тип кеширования
		"CHECK_DATES" => "Y",	// Показывать только активные на данный момент элементы
		"DETAIL_URL" => "",	// URL страницы детального просмотра (по умолчанию - из настроек инфоблока)
		"DISPLAY_BOTTOM_PAGER" => "N",	// Выводить под списком
		"DISPLAY_DATE" => "Y",	// Выводить дату элемента
		"DISPLAY_NAME" => "Y",	// Выводить название элемента
		"DISPLAY_PICTURE" => "Y",	// Выводить изображение для анонса
		"DISPLAY_PREVIEW_TEXT" => "Y",	// Выводить текст анонса
		"DISPLAY_TOP_PAGER" => "N",	// Выводить над списком
		"FIELD_CODE" => array(	// Поля
			0 => "NAME",
			1 => "",
		),
		"FILTER_NAME" => "",	// Фильтр
		"HIDE_LINK_WHEN_NO_DETAIL" => "N",	// Скрывать ссылку, если нет детального описания
		"IBLOCK_ID" => "7",	// Код информационного блока
		"IBLOCK_TYPE" => "content",	// Тип информационного блока (используется только для проверки)
		"INCLUDE_IBLOCK_INTO_CHAIN" => "N",	// Включать инфоблок в цепочку навигации
		"INCLUDE_SUBSECTIONS" => "Y",	// Показывать элементы подразделов раздела
		"MESSAGE_404" => "",	// Сообщение для показа (по умолчанию из компонента)
		"NEWS_COUNT" => "8",	// Количество новостей на странице
		"PAGER_BASE_LINK_ENABLE" => "N",	// Включить обработку ссылок
		"PAGER_DESC_NUMBERING" => "N",	// Использовать обратную навигацию
		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",	// Время кеширования страниц для обратной навигации
		"PAGER_SHOW_ALL" => "N",	// Показывать ссылку "Все"
		"PAGER_SHOW_ALWAYS" => "N",	// Выводить всегда
		"PAGER_TEMPLATE" => ".default",	// Шаблон постраничной навигации
		"PAGER_TITLE" => "Статистика",	// Название категорий
		"PARENT_SECTION" => "",	// ID раздела
		"PARENT_SECTION_CODE" => "",	// Код раздела
		"PREVIEW_TRUNCATE_LEN" => "",	// Максимальная длина анонса для вывода (только для типа текст)
		"PROPERTY_CODE" => array(	// Свойства
			0 => "ICON",
			1 => "SUM",
			2 => "",
		),
		"SET_BROWSER_TITLE" => "Y",	// Устанавливать заголовок окна браузера
		"SET_LAST_MODIFIED" => "N",	// Устанавливать в заголовках ответа время модификации страницы
		"SET_META_DESCRIPTION" => "Y",	// Устанавливать описание страницы
		"SET_META_KEYWORDS" => "Y",	// Устанавливать ключевые слова страницы
		"SET_STATUS_404" => "N",	// Устанавливать статус 404
		"SET_TITLE" => "Y",	// Устанавливать заголовок страницы
		"SHOW_404" => "N",	// Показ специальной страницы
		"SORT_BY1" => "ACTIVE_FROM",	// Поле для первой сортировки новостей
		"SORT_BY2" => "ID",	// Поле для второй сортировки новостей
		"SORT_ORDER1" => "ASC",	// Направление для первой сортировки новостей
		"SORT_ORDER2" => "ASC",	// Направление для второй сортировки новостей
		"STRICT_SECTION_CHECK" => "N",	// Строгая проверка раздела для показа списка
	),
            false
        );?>
    </div>
</div>
</section>

<!-- Наши работы -->

<section class="work-area pt-90 pb-60" id="portfolio">
    <div class="container">
        <div class="row">
            <div class="section-heading text-center mb-70">
                <h2>Портфолио</h2>
                <p>Лучший способ найти хорошую команду - это посмотреть результаты её работы</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <?$APPLICATION->IncludeComponent("bitrix:catalog.section.list", "portfolio_categories", Array(
                    "ADD_SECTIONS_CHAIN" => "N",    // Включать раздел в цепочку навигации
                        "CACHE_FILTER" => "N",  // Кешировать при установленном фильтре
                        "CACHE_GROUPS" => "N",  // Учитывать права доступа
                        "CACHE_TIME" => "36000000", // Время кеширования (сек.)
                        "CACHE_TYPE" => "A",    // Тип кеширования
                        "COUNT_ELEMENTS" => "N",    // Показывать количество элементов в разделе
                        "COUNT_ELEMENTS_FILTER" => "CNT_ACTIVE",    // Показывать количество
                        "FILTER_NAME" => "sectionsFilter",  // Имя массива со значениями фильтра разделов
                        "IBLOCK_ID" => "6", // Инфоблок
                        "IBLOCK_TYPE" => "portfolio",   // Тип инфоблока
                        "SECTION_CODE" => "",   // Код раздела
                        "SECTION_FIELDS" => array(  // Поля разделов
                            0 => "",
                            1 => "",
                        ),
                        "SECTION_ID" => $_REQUEST["SECTION_ID"],    // ID раздела
                        "SECTION_URL" => "",    // URL, ведущий на страницу с содержимым раздела
                        "SECTION_USER_FIELDS" => array( // Свойства разделов
                            0 => "",
                            1 => "",
                        ),
                        "SHOW_PARENT_NAME" => "Y",  // Показывать название раздела
                        "TOP_DEPTH" => "2", // Максимальная отображаемая глубина разделов
                        "VIEW_MODE" => "LINE",  // Вид списка подразделов
                    ),
                false
            );?>
        </div>
        <div id="Container">
            <?$APPLICATION->IncludeComponent(
                "bitrix:news.list", 
                "portfolio_list", 
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
                        1 => "PREVIEW_TEXT",
                        2 => "DETAIL_TEXT",
                        3 => "DETAIL_PICTURE",
                        4 => "IBLOCK_ID",
                        5 => "IBLOCK_CODE",
                        6 => "IBLOCK_NAME",
                        7 => "",
                    ),
                    "FILTER_NAME" => "",
                    "HIDE_LINK_WHEN_NO_DETAIL" => "N",
                    "IBLOCK_ID" => "6",
                    "IBLOCK_TYPE" => "portfolio",
                    "INCLUDE_IBLOCK_INTO_CHAIN" => "N",
                    "INCLUDE_SUBSECTIONS" => "Y",
                    "MESSAGE_404" => "",
                    "NEWS_COUNT" => "18",
                    "PAGER_BASE_LINK_ENABLE" => "N",
                    "PAGER_DESC_NUMBERING" => "N",
                    "PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",
                    "PAGER_SHOW_ALL" => "N",
                    "PAGER_SHOW_ALWAYS" => "N",
                    "PAGER_TEMPLATE" => ".default",
                    "PAGER_TITLE" => "Работы",
                    "PARENT_SECTION" => "",
                    "PARENT_SECTION_CODE" => "",
                    "PREVIEW_TRUNCATE_LEN" => "",
                    "PROPERTY_CODE" => array(
                        0 => "SEO",
                        1 => "DESIGN",
                        2 => "CUSTOMER",
                        3 => "PROJECT",
                        4 => "SITE",
                        5 => "TIME",
                        6 => "TECHNOLOGY",
                        7 => "",
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
                    "COMPONENT_TEMPLATE" => "portfolio_list"
                ),
                false
            );?>
        </div>
    </div>

</div>
</section>

<!-- Отзывы клиентов -->
<section class="testimonial-area bg-color pad-90">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <?$APPLICATION->IncludeComponent(
                   "bitrix:news.list", 
                   "reviews", 
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
                         1 => "PREVIEW_TEXT",
                         2 => "",
                     ),
                      "FILTER_NAME" => "",
                      "HIDE_LINK_WHEN_NO_DETAIL" => "N",
                      "IBLOCK_ID" => "8",
                      "IBLOCK_TYPE" => "content",
                      "INCLUDE_IBLOCK_INTO_CHAIN" => "N",
                      "INCLUDE_SUBSECTIONS" => "Y",
                      "MESSAGE_404" => "",
                      "NEWS_COUNT" => "3",
                      "PAGER_BASE_LINK_ENABLE" => "N",
                      "PAGER_DESC_NUMBERING" => "N",
                      "PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",
                      "PAGER_SHOW_ALL" => "N",
                      "PAGER_SHOW_ALWAYS" => "N",
                      "PAGER_TEMPLATE" => ".default",
                      "PAGER_TITLE" => "Отзывы",
                      "PARENT_SECTION" => "",
                      "PARENT_SECTION_CODE" => "",
                      "PREVIEW_TRUNCATE_LEN" => "",
                      "PROPERTY_CODE" => array(
                         0 => "ORDER",
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
                      "COMPONENT_TEMPLATE" => "reviews"
                  ),
                   false
               );?>       
           </div>
       </div>
   </div>
</section>

<?
require($_SERVER['DOCUMENT_ROOT'].'/bitrix/footer.php');
?>