<?if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true) die();
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

$arCloudParams = array(
	"SEARCH" => $arResult["REQUEST"]["~QUERY"],
	"TAGS" => $arResult["REQUEST"]["~TAGS"],
	"CHECK_DATES" => $arParams["CHECK_DATES"],
	"arrFILTER" => $arParams["arrFILTER"],
	"SORT" => $arParams["TAGS_SORT"],
	"PAGE_ELEMENTS" => $arParams["TAGS_PAGE_ELEMENTS"],
	"PERIOD" => $arParams["TAGS_PERIOD"],
	"URL_SEARCH" => $arParams["TAGS_URL_SEARCH"],
	"TAGS_INHERIT" => $arParams["TAGS_INHERIT"],
	"FONT_MAX" => $arParams["FONT_MAX"],
	"FONT_MIN" => $arParams["FONT_MIN"],
	"COLOR_NEW" => $arParams["COLOR_NEW"],
	"COLOR_OLD" => $arParams["COLOR_OLD"],
	"PERIOD_NEW_TAGS" => $arParams["PERIOD_NEW_TAGS"],
	"SHOW_CHAIN" => $arParams["SHOW_CHAIN"],
	"COLOR_TYPE" => $arParams["COLOR_TYPE"],
	"WIDTH" => $arParams["WIDTH"],
	"CACHE_TIME" => $arParams["CACHE_TIME"],
	"CACHE_TYPE" => $arParams["CACHE_TYPE"],
	"RESTART" => $arParams["RESTART"],
); ?>

<div class="search-page">
<?if(isset($arResult["REQUEST"]["ORIGINAL_QUERY"])):
	?>
	<div class="search-language-guess">
		<?echo GetMessage("CT_BSP_KEYBOARD_WARNING", array("#query#"=>'<a href="'.$arResult["ORIGINAL_QUERY_URL"].'">'.$arResult["REQUEST"]["ORIGINAL_QUERY"].'</a>'))?>
	</div><br /><?
endif;?>

<?if($arResult["REQUEST"]["QUERY"] === false && $arResult["REQUEST"]["TAGS"] === false):?>
<?elseif($arResult["ERROR_CODE"]!=0):?>
	<p><?=GetMessage("SEARCH_ERROR")?></p>
	<?ShowError($arResult["ERROR_TEXT"]);?>
<?elseif(count($arResult["SEARCH"])>0):?>
	<?if($arParams["DISPLAY_TOP_PAGER"] != "N") echo $arResult["NAV_STRING"]?>
	<h3>Результаты поиска:</h3><hr><br>

	<?php foreach ($arResult['SEARCH'] as $arItem): ?>
		<?php
		$get_id_images = GetIBlockElement($arItem['ITEM_ID']);
		$images_tumb = CFile::GetPath($get_id_images['PREVIEW_PICTURE']);
		$image_full = CFile::GetPath($get_id_images['DETAIL_PICTURE']);
		?>
		<article class="post-wrapper mb-60">
			<div class="post-img hover-bg-opacity">
			    <a href="<?=$arItem['URL_WO_PARAMS']?>">
			        <img src="<?=$images_tumb?>" alt="<?=$arItem['TITLE']?>">
			    </a>
			</div>
		    <div class="post-content">
		        <h3>
		            <a href="<?=$arItem['URL_WO_PARAMS']?>"><?=$arItem['TITLE']?></a>
		        </h3>
		        <div class="post-meta">
		            <span><a href="#"><i class="fa fa-clock-o"></i> <?=$arItem['DATE_CHANGE']?></a></span>
		        </div>
		        <p><?=$arItem['BODY_FORMATED']?></p>
		        <a class="read-more btn btn-small" href="<?=$arItem['URL_WO_PARAMS']?>">Читать
		            <i class="fa fa-arrow-right"></i></a>
		    </div>
		</article>
	<?php endforeach; ?>

	<?php if (count($arResult['SEARCH']) > 2): ?>
		<?if($arParams["DISPLAY_BOTTOM_PAGER"] != "N") echo $arResult["NAV_STRING"]?>
		<p>
		<?if($arResult["REQUEST"]["HOW"]=="d"):?>
			<a href="<?=$arResult["URL"]?>&amp;how=r"><?=GetMessage("SEARCH_SORT_BY_RANK")?></a>&nbsp;|&nbsp;<b><?=GetMessage("SEARCH_SORTED_BY_DATE")?></b>
		<?else:?>
			<b><?=GetMessage("SEARCH_SORTED_BY_RANK")?></b>&nbsp;|&nbsp;<a href="<?=$arResult["URL"]?>&amp;how=d"><?=GetMessage("SEARCH_SORT_BY_DATE")?></a>
		<?endif;?>
	<?php endif; ?>
	
<?else:?>
	<?ShowNote(GetMessage("SEARCH_NOTHING_TO_FOUND"));?>
<?endif;?>
</div>