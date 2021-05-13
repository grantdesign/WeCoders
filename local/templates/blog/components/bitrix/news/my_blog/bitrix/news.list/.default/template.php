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
//debug($arResult['ITEMS']);
?>

<?php if (!empty($arResult['ITEMS'])): ?>
	<?php foreach ($arResult['ITEMS'] as $arItem): ?>
		<?
		$this->AddEditAction($arItem['ID'], $arItem['EDIT_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_EDIT"));
		$this->AddDeleteAction($arItem['ID'], $arItem['DELETE_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_DELETE"), array("CONFIRM" => GetMessage('CT_BNL_ELEMENT_DELETE_CONFIRM')));
		?>
		<article class="post-wrapper mb-60" id="<?=$this->GetEditAreaId($arItem['ID']);?>">
		    <div class="post-img hover-bg-opacity">
		        <a href="<?=$arItem['DETAIL_PAGE_URL']?>">
		            <img src="<?=$arItem['DETAIL_PICTURE']['SRC']?>" alt="<?=$arItem['DETAIL_PICTURE']['ALT']?>">
		        </a>
		    </div>
		    <div class="post-content">
		        <h3>
		            <a href="<?=$arItem['DETAIL_PAGE_URL']?>"><?=$arItem['NAME']?></a>
		        </h3>
		        <div class="post-meta">
		            <span><a href=""><i class="fa fa-clock-o"></i> <?=$arItem['DISPLAY_ACTIVE_FROM']?></a></span> -
		            <span><a href=""><i class="fa fa-user"></i> <?=$arItem['CREATED_USER_NAME']?></a></span> -
		            <span><a href="<?=$arItem['DETAIL_PAGE_URL']?>"><i class="fa fa-comments"></i> <?= (!empty($arItem['PROPERTIES']['BLOG_COMMENTS_CNT']['VALUE'])) ? $arItem['PROPERTIES']['BLOG_COMMENTS_CNT']['VALUE'] : 'Нет комментариев' ?></a></span>
		        </div>
		        <p><?=$arItem['PREVIEW_TEXT']?></p>
		        <a class="read-more btn btn-small" href="<?=$arItem['DETAIL_PAGE_URL']?>">Читать
		            <i class="fa fa-arrow-right"></i></a>
		    </div>
		</article>
	<?php endforeach; ?>

	<?if($arParams["DISPLAY_BOTTOM_PAGER"]):?>
		<br /><?=$arResult["NAV_STRING"]?>
	<?endif;?>
<?php else: ?>
	<h3>Список статей пуст</h3>
	<a href="/blog">Вернуться назад</a>
<?php endif; ?>