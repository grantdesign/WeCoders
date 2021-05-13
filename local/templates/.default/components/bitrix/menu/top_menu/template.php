<?if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();?>

<?php if (!empty($arResult)): ?>
	<div class="header-main-menu hidden-xs">
	    <nav id="primary-menu">
	        <ul class="main-menu text-right">
	        	<?php 
	        	foreach ($arResult as $arItem):
	        	if ($arParams['MAX_LEVEL'] == 1 && $arItem['DEPTH_LEVEL'] > 1) continue;
	        	 ?>
	        		<?php if ($arItem['SELECTED']): ?>
	        			<li class="mega-parent">
	        			    <a href="<?=$arItem['LINK']?>" class="selected"><?=$arItem['TEXT']?></a>
	        			</li>
	        		<?php else: ?>
	        			<li class="mega-parent">
	        			    <a href="<?=$arItem['LINK']?>"><?=$arItem['TEXT']?></a>
	        			</li>
	        		<?php endif; ?>
	        	<?php endforeach; ?>
	        </ul>
	    </nav>
	</div>
<?php endif; ?>