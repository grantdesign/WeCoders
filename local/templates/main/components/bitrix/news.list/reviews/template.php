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
?>

<?php if (!empty($arResult['ITEMS'])): ?>
	<div class="testimonial-active dots-style">
	<?php foreach ($arResult['ITEMS'] as $arItem): ?>
		<?
		$this->AddEditAction($arItem['ID'], $arItem['EDIT_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_EDIT"));
		$this->AddDeleteAction($arItem['ID'], $arItem['DELETE_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_DELETE"), array("CONFIRM" => GetMessage('CT_BNL_ELEMENT_DELETE_CONFIRM')));
		?>
		<div class="single-testimonial black-text text-center" id="<?=$this->GetEditAreaId($arItem['ID']);?>">
		    <div class="testimonial-title">
		        <span class="icon-quote"></span>
		        <h3 class="black-text"><?=$arItem['NAME']?></h3>
		    </div>
		    <p><span>"</span><?=$arItem['PREVIEW_TEXT']?><span>"</span>
		    </p>
		    <div class="testimonial-author text-uppercase">
		        <span><?=$arItem['PROPERTIES']['ORDER']['VALUE']?></span>
		    </div>
		</div>
	<?php endforeach; ?>
	</div>
<?php endif; ?>