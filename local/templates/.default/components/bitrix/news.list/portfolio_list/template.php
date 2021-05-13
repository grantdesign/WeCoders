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
//debug($arResult["ITEMS"]);
?>

<?php if (!empty($arResult['ITEMS'])): ?>
	<?php foreach ($arResult['ITEMS'] as $arItem): ?>
		<?
		$this->AddEditAction($arItem['ID'], $arItem['EDIT_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_EDIT"));
		$this->AddDeleteAction($arItem['ID'], $arItem['DELETE_LINK'], CIBlock::GetArrayByID($arItem["IBLOCK_ID"], "ELEMENT_DELETE"), array("CONFIRM" => GetMessage('CT_BNL_ELEMENT_DELETE_CONFIRM')));
		?>
			<?php $res = CIBlockSection::GetByID($arItem["IBLOCK_SECTION_ID"]); ?>
			<?php if ($ar_res = $res->GetNext()): ?>
				<div class="col-md-4 col-sm-6 col-xs-12 mb-30 mix <?=$ar_res['CODE']?>" id="<?=$this->GetEditAreaId($arItem['ID']);?>">
			<?php endif; ?>
		    <div class="portfolio-wrapper portfolio-title">
		        <div class="portfolio-img">
		            <img src="<?=$arItem['DETAIL_PICTURE']['SRC']?>" alt="<?=$arItem['DETAIL_PICTURE']['ALT']?>">
		            <div class="work-text brand-bg">
		                <div class="inner-text">
		                    <a class="view-portfolio image-link" href="<?=$arItem['DETAIL_PICTURE']['SRC']?>">
		                        <span class="plus"></span>
		                    </a>
		                </div>
		            </div>
		        </div>
		        <div class="portfolio-heading pd-15">
		            <h4 class="mb-10">
		                <a href="#"><?=$arItem['NAME']?></a>
		            </h4>
		            <h5 class="m-0"><?=$arItem['PREVIEW_TEXT']?></h5>
		        </div>
		    </div>
		</div>
	<?php endforeach; ?>
<?php endif; ?>