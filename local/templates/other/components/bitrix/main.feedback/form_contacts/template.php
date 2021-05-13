<?
if(!defined("B_PROLOG_INCLUDED")||B_PROLOG_INCLUDED!==true)die();

\Bitrix\Main\UI\Extension::load("ui.bootstrap4");
/**
 * Bitrix vars
 *
 * @var array $arParams
 * @var array $arResult
 * @var CBitrixComponentTemplate $this
 * @global CMain $APPLICATION
 * @global CUser $USER
 */
?>

<style>
    .btn{
        width: 120px;
    }
</style>

<?if(!empty($arResult["ERROR_MESSAGE"]))
{
	foreach($arResult["ERROR_MESSAGE"] as $v)
		ShowError($v);
}

if($arResult["OK_MESSAGE"] <> '')
{
	?><div class="alert alert-success"><?=$arResult["OK_MESSAGE"]?></div><?
}
?>

<form id="contact-form" class="default-form" action="<?=POST_FORM_ACTION_URI?>" method="POST">
	<?=bitrix_sessid_post()?>
    <div class="col-sm-6">
        <input
        	type="text"
        	id="mainFeedback_name"
        	name="user_name"
        	placeholder="Имя"
        	value="<?=$arResult["AUTHOR_NAME"]?>"
        	<?if(empty($arParams["REQUIRED_FIELDS"]) || in_array("NAME", $arParams["REQUIRED_FIELDS"])): ?>required<?endif?>
        />
    </div>
    <div class="col-sm-6">
        <input
        	type="text"
        	name="user_email"
        	id="mainFeedback_email"
        	placeholder="Email"
        	value="<?=$arResult["AUTHOR_EMAIL"]?>"
        	<?if(empty($arParams["REQUIRED_FIELDS"]) || in_array("EMAIL", $arParams["REQUIRED_FIELDS"])):?>required<?endif?>
        />
    </div>
    <div class="col-md-12 col-sm-12">
        <textarea id="mainFeedback_message" name="MESSAGE" placeholder="Сообщение" cols="30" rows="10"><?=$arResult["MESSAGE"]?></textarea>
        <input type="hidden" name="PARAMS_HASH" value="<?=$arResult["PARAMS_HASH"]?>">
        <input type="submit" name="submit" class="btn mt-30" value="<?=GetMessage("MFT_SUBMIT")?>">
    </div>
</form>