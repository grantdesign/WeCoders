<?if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();?>

<?php if (!empty($arResult)): ?>
	<div class="footer-nav white-text">
	    <nav>
	        <ul>
	            <?php foreach ($arResult as $arItem): ?>
	            	<li class="mega-parent">
	            	    <a href="<?=$arItem['LINK']?>"><?=$arItem['TEXT']?></a>
	            	</li>
	            <?php endforeach; ?>
	        </ul>
	    </nav>
	</div>
<?php endif; ?>