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
	<?php foreach ($arResult['ITEMS'] as $arItem): ?>
		<?
		$this->AddEditAction($arItem['ID'], $arItem['EDIT_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_EDIT"));
		$this->AddDeleteAction($arItem['ID'], $arItem['DELETE_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_DELETE"), array("CONFIRM" => GetMessage('CT_BNL_ELEMENT_DELETE_CONFIRM')));
		?>
		<div class="col-lg-4 col-md-4 col-sm-4">
		    <div class="single-team mb-30" id="<?=$this->GetEditAreaId($arItem['ID']);?>">
		        <div class="team-img">
		            <img src="<?=$arItem['DETAIL_PICTURE']['SRC']?>" alt="<?=$arItem['DETAIL_PICTURE']['ALT']?>">
		            <div class="team-text">
		                <p><?=$arItem['DETAIL_TEXT']?></p>
		                <div class="team-icon">
		                    <a href="<?=$arItem['PROPERTIES']['FACEBOOK']['VALUE']?>"><i class="fa fa-facebook"></i></a>
		                    <a href="<?=$arItem['PROPERTIES']['TWITTER']['VALUE']?>"><i class="fa fa-twitter"></i></a>
		                    <a href="<?=$arItem['PROPERTIES']['INSTAGRAM']['VALUE']?>"><i class="fa fa-linkedin"></i></a>
		                </div>
		            </div>
		        </div>
		        <div class="team-name text-center">
		            <h4><?=$arItem['NAME']?></h4>
		            <h5><?=$arItem['PREVIEW_TEXT']?></h5>
		        </div>
		    </div>
		</div>
	<?php endforeach ?>
<?php endif; ?>