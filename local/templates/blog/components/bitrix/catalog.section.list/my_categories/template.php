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

$arViewModeList = $arResult['VIEW_MODE_LIST'];

$arViewStyles = array(
	'LINE' => array(
		'TITLE' => 'catalog-section-list-item-title',
		'LIST' =>  'catalog-section-list-line-list mb-4',
		'EMPTY_IMG' => $this->GetFolder().'/images/line-empty.png'
	)
);
$arCurView = $arViewStyles[$arParams['VIEW_MODE']];

switch ($arParams['LIST_COLUMNS_COUNT'])
{
	case "1":
	$listColumsClass = "col-12";
	break;
	case "2":
	$listColumsClass = "col-6";
	break;
	case "3":
	$listColumsClass = "col-sm-4 col-6";
	break;
	case "4":
	$listColumsClass = "col-md-3 col-sm-4 col-6";
	break;
	case "6":
	$listColumsClass = "col-lg-2 col-md-3 col-sm-4 col-6";
	break;
	case "12":
	$listColumsClass = "col-lg-1 col-md-3 col-sm-4 col-6";
	break;
}

$strSectionEdit = CIBlock::GetArrayByID($arParams["IBLOCK_ID"], "SECTION_EDIT");
$strSectionDelete = CIBlock::GetArrayByID($arParams["IBLOCK_ID"], "SECTION_DELETE");
$arSectionDeleteParams = array("CONFIRM" => GetMessage('CT_BCSL_ELEMENT_DELETE_CONFIRM'));

?>
<div class="row mb-4">
	<div class="col">
		<? if ('Y' == $arParams['SHOW_PARENT_NAME'] && 0 < $arResult['SECTION']['ID'])
		{
			$this->AddEditAction($arResult['SECTION']['ID'], $arResult['SECTION']['EDIT_LINK'], $strSectionEdit);
			$this->AddDeleteAction($arResult['SECTION']['ID'], $arResult['SECTION']['DELETE_LINK'], $strSectionDelete, $arSectionDeleteParams);

			?><h2 class="mb-3" id="<? echo $this->GetEditAreaId($arResult['SECTION']['ID']); ?>" ><?
			echo (
				isset($arResult['SECTION']["IPROPERTY_VALUES"]["SECTION_PAGE_TITLE"]) && $arResult['SECTION']["IPROPERTY_VALUES"]["SECTION_PAGE_TITLE"] != ""
				? $arResult['SECTION']["IPROPERTY_VALUES"]["SECTION_PAGE_TITLE"]
				: $arResult['SECTION']['NAME']
			);
			?>
			</h2><?
		}

		if (0 < $arResult["SECTIONS_COUNT"])
		{
			?><ul class="widget-cat"><?

			switch ($arParams['VIEW_MODE'])
			{
				case 'LINE':
				foreach ($arResult['SECTIONS'] as &$arSection)
				{
					$this->AddEditAction($arSection['ID'], $arSection['EDIT_LINK'], $strSectionEdit);
					$this->AddDeleteAction($arSection['ID'], $arSection['DELETE_LINK'], $strSectionDelete, $arSectionDeleteParams);

					if (false === $arSection['PICTURE'])
						$arSection['PICTURE'] = array(
							'SRC' => $arCurView['EMPTY_IMG'],
							'ALT' => (
								'' != $arSection["IPROPERTY_VALUES"]["SECTION_PICTURE_FILE_ALT"]
								? $arSection["IPROPERTY_VALUES"]["SECTION_PICTURE_FILE_ALT"]
								: $arSection["NAME"]
							),
							'TITLE' => (
								'' != $arSection["IPROPERTY_VALUES"]["SECTION_PICTURE_FILE_TITLE"]
								? $arSection["IPROPERTY_VALUES"]["SECTION_PICTURE_FILE_TITLE"]
								: $arSection["NAME"]
							)
						);
						?>
						<li id="<? echo $this->GetEditAreaId($arSection['ID']); ?>">
							<a href="<? echo $arSection['SECTION_PAGE_URL']; ?>">
								<? echo $arSection['NAME']; ?>
							</a>
							<? if ($arParams["COUNT_ELEMENTS"] && $arSection['ELEMENT_CNT'] !== null)
							{
								?>
								<span>(<? echo $arSection['ELEMENT_CNT']; ?>)</span>
								<?
							}
							?>
							</li><?
						}
						unset($arSection);
						break;
					}
					?></ul><?
				}
				?>
			</div>
		</div>