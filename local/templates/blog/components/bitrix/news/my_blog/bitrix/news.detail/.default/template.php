<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();
/** @var array $arParams */
/** @var array $arResult */
/** @global CMain $APPLICATION */
/** @global CUser $USER */
/** @global CDatabase $DB */
/** @var CBitrixComponentTemplate $this */
/** @var string $templateName */
/** @var string $templateFile */
/** @var string $templateFolder */
/** @var string $componentPath */
/** @var CBitrixComponent $component */
$this->setFrameMode(true);
//debug($arResult);
?>

<!-- Контент материала -->
<div>
    <article class="post-wrapper mb-60">
        <h3 class="text-blue"><?=$arResult['NAME']?></h3>
        <div class="post-img hover-bg-opacity">
            <img src="<?=$arResult['DETAIL_PICTURE']['SRC']?>" alt="<?=$arResult['DETAIL_PICTURE']['ALT']?>">
        </div>
        <div class="post-content">

            <div class="post-meta">
                <span><a href=""><i class="fa fa-clock-o"></i> <?=$arResult['DISPLAY_ACTIVE_FROM']?></a></span> -
                <span><a href=""><i class="fa fa-user"></i> <?=$arResult['CREATED_USER_NAME']?></a></span> -
                <span><a href=""><i class="fa fa-comments"></i> <?= (!empty($arResult['PROPERTIES']['BLOG_COMMENTS_CNT']['VALUE'])) ? $arResult['PROPERTIES']['BLOG_COMMENTS_CNT']['VALUE'] : 'Нет комментариев' ?></a></span>
            </div>
            <p><?=$arResult['DETAIL_TEXT']?></p>
        </div>
    </article>

    <!-- Комментарии -->
   
    <?$APPLICATION->IncludeComponent(
	"bitrix:catalog.comments", 
	".default", 
	array(
		"BLOG_TITLE" => "Комментарии",
		"BLOG_URL" => "catalog_comments",
		"BLOG_USE" => "Y",
		"CACHE_TIME" => "0",
		"CACHE_TYPE" => "A",
		"CHECK_DATES" => "Y",
		"COMMENTS_COUNT" => "4",
		"ELEMENT_CODE" => "",
		"ELEMENT_ID" => $arResult["ID"],
		"EMAIL_NOTIFY" => "N",
		"FB_USE" => "N",
		"IBLOCK_ID" => "9",
		"IBLOCK_TYPE" => "blog",
		"PATH_TO_SMILE" => "/bitrix/images/blog/smile/",
		"SHOW_DEACTIVATED" => "N",
		"SHOW_RATING" => "N",
		"SHOW_SPAM" => "Y",
		"TEMPLATE_THEME" => "blue",
		"URL_TO_COMMENT" => "",
		"VK_USE" => "N",
		"WIDTH" => "",
		"COMPONENT_TEMPLATE" => ".default"
	),
	false
);?>

</div>