<?
require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetPageProperty("TITLE", "О нас");
$APPLICATION->SetTitle("О нас");
?>

<!-- О нас -->
<section class="who-area-are pad-90" id="about_us">
    <div class="container">
        <h2 class="title-1">Немного о нас</h2>
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

<!-- Команда -->
<div id="team" class="team-area bg-color pt-90 pb-60">
    <div class="container">
        <div class="row">
            <div class="section-heading text-center mb-70">
                <h2>Команда</h2>
                <p>Творческие и гениальные. Мастера своего дела</p>
            </div>
        </div>
        <div class="row">
            
            <?$APPLICATION->IncludeComponent(
	"bitrix:news.list", 
	"team", 
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
		"DISPLAY_BOTTOM_PAGER" => "Y",
		"DISPLAY_DATE" => "Y",
		"DISPLAY_NAME" => "Y",
		"DISPLAY_PICTURE" => "Y",
		"DISPLAY_PREVIEW_TEXT" => "Y",
		"DISPLAY_TOP_PAGER" => "N",
		"FIELD_CODE" => array(
			0 => "PREVIEW_TEXT",
			1 => "DETAIL_TEXT",
			2 => "DETAIL_PICTURE",
			3 => "",
		),
		"FILTER_NAME" => "",
		"HIDE_LINK_WHEN_NO_DETAIL" => "N",
		"IBLOCK_ID" => "2",
		"IBLOCK_TYPE" => "content",
		"INCLUDE_IBLOCK_INTO_CHAIN" => "N",
		"INCLUDE_SUBSECTIONS" => "Y",
		"MESSAGE_404" => "",
		"NEWS_COUNT" => "20",
		"PAGER_BASE_LINK_ENABLE" => "N",
		"PAGER_DESC_NUMBERING" => "N",
		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",
		"PAGER_SHOW_ALL" => "N",
		"PAGER_SHOW_ALWAYS" => "N",
		"PAGER_TEMPLATE" => ".default",
		"PAGER_TITLE" => "Новости",
		"PARENT_SECTION" => "",
		"PARENT_SECTION_CODE" => "",
		"PREVIEW_TRUNCATE_LEN" => "",
		"PROPERTY_CODE" => array(
			0 => "FACEBOOK",
			1 => "INSTAGRAM",
			2 => "TWITTER",
			3 => "",
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
		"COMPONENT_TEMPLATE" => "team"
	),
	false
);?>
            
        </div>
    </div>
</div>

<!-- Отзывы -->
<section class="testimonial-area pad-90">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="testimonial-active dots-style">
                    <div class="single-testimonial black-text text-center">
                        <div class="testimonial-title">
                            <span class="icon-quote"></span>
                            <h3 class="black-text">Сроки не проблема!</h3>
                        </div>
                        <p><span>"</span>Спасут любой проект с самыми горящими сроками! Ребята действительно
                                         профессионалы своего дела.<span>"</span>
                        </p>
                        <div class="testimonial-author text-uppercase">
                            <span>- Андрей Александров, Best Shop.</span>
                        </div>
                    </div>
                    <div class="single-testimonial black-text text-center">
                        <div class="testimonial-title">
                            <span class="icon-quote"></span>
                            <h3 class="black-text">Это взрыв!</h3>
                        </div>
                        <p><span>"</span>Я рад, что мы получили такой классный продукт на выходе!
                                         Думаю, что совместными усилиями мы реализуем ещё не один
                                         проект.<span>"</span></p>
                        <div class="testimonial-author text-uppercase">
                            <span>- Виталий Нохрин, NA'MAN Rec.</span>
                        </div>
                    </div>
                    <div class="single-testimonial black-text text-center">
                        <div class="testimonial-title">
                            <span class="icon-quote"></span>
                            <h3 class="black-text">Большая удача?</h3>
                        </div>
                        <p><span>"</span>Мы нашли WeCoders после десятка неудачных проектов с другими web студиями. И…
                                         Это большая удача, <span>"</span></p>
                        <div class="testimonial-author text-uppercase">
                            <span>- Ирина Граф, Cars & Cars company</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>