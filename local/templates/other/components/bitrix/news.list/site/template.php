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
		<div class="col-lg-3 col-md-3 col-sm-6" id="<?=$this->GetEditAreaId($arItem['ID']);?>">
		    <div class="single-pricing text-center mb-30">
		        <div class="pricing-head">
		            <h2 class="pricing-title text-uppercase"><?=$arItem['NAME']?></h2>
		            <span><?=$arItem['PREVIEW_TEXT']?></span>
		        </div>
		        	<div class="pricing-plan-price <?=$arItem['PROPERTIES']['BACKGROUND']['VALUE']?>">
		        	    <span><span>от </span><?=$arItem['PROPERTIES']['PRICE']['VALUE']?><span> ₽</span></span>
		        	</div>
		        <div class="pricing-plan-list">
		            <ul>
		                <li><?= ($arItem['PROPERTIES']['TIME']['VALUE']) ? $arItem['PROPERTIES']['TIME']['VALUE'] : '-' ?></li>
		                <li><?= ($arItem['PROPERTIES']['DESIGN']['VALUE']) ? $arItem['PROPERTIES']['DESIGN']['VALUE'] : '-' ?></li>
		                <li><?= ($arItem['PROPERTIES']['LOCATION']['VALUE']) ? $arItem['PROPERTIES']['LOCATION']['VALUE'] : '-' ?></li>
		                <li><?= ($arItem['PROPERTIES']['ADMIN']['VALUE']) ? $arItem['PROPERTIES']['ADMIN']['VALUE'] : '-' ?></li>
		                <li><?= ($arItem['PROPERTIES']['INTEGRATION']['VALUE']) ? $arItem['PROPERTIES']['INTEGRATION']['VALUE'] : '-' ?></li>
		                <li><?= ($arItem['PROPERTIES']['SEO']['VALUE']) ? $arItem['PROPERTIES']['TIME']['SEO'] : '-' ?></li>
		            </ul>
		        </div>
		        <div class="get-started">
		            <a href="/contacts/" class="btn <?=$arItem['PROPERTIES']['BACKGROUND']['VALUE']?>">Узнать больше</a>
		        </div>
		    </div>
		</div>
	<?php endforeach; ?>
<?php endif; ?>