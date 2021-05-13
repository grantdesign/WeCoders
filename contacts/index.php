<?
require($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");
$APPLICATION->SetTitle("Контакты");
?>

<!-- Контакты + ФОС -->
<div class="contact-form pt-90">
    <div class="container">
        <div class="row">
            <div class="section-heading text-center mb-70">
                <h2>Нужен классный сайт?</h2>
                <p>Оставьте заявку в форме ниже и мы всё сделаем!</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="contact-info">
                    <address>
                        <ul>
                            <li>
                                <i aria-hidden="true" class="fa fa-map-marker brand-color"></i>
                                <div class="address">
                                    Мы находимся по адресу:
                                    <hr>
                                    <p>г. Тюмень, ул. Республики 94, офис 23</p>
                                </div>
                            </li>
                            <li>
                                <i aria-hidden="true" class="fa fa-phone brand-color"></i>
                                <div class="phone">
                                    <p>8-123-456-7899</p>
                                </div>
                            </li>
                            <li>
                                <i class="fa fa-envelope brand-color"></i>
                                <div class="mail">
                                    <p>
                                        <a href="mailto:#">wecoders@wecodres.com</a>
                                    </p>
                                </div>
                            </li>
                            <li></li>
                        </ul>
                    </address>
                </div>
            </div>
            <div class="col-md-8">
                <div class="row">
                    <?$APPLICATION->IncludeComponent(
	"bitrix:main.feedback", 
	"form_contacts", 
	array(
		"EMAIL_TO" => "admin@mail.ru",
		"EVENT_MESSAGE_ID" => array(
		),
		"OK_TEXT" => "Спасибо, ваше сообщение принято.",
		"REQUIRED_FIELDS" => array(
			0 => "EMAIL",
			1 => "MESSAGE",
		),
		"USE_CAPTCHA" => "N",
		"COMPONENT_TEMPLATE" => "form_contacts"
	),
	false
);?>
                    <p class="form-messege"></p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Карта -->
<div class="map-area">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div id="map" class="mtb-90">
                    <?$APPLICATION->IncludeComponent(
	"bitrix:map.yandex.view", 
	".default", 
	array(
		"API_KEY" => "434afd04-4453-4350-b244-8aeb6bfc2605",
		"CONTROLS" => array(
			0 => "ZOOM",
			1 => "MINIMAP",
			2 => "TYPECONTROL",
			3 => "SCALELINE",
		),
		"INIT_MAP_TYPE" => "MAP",
		"MAP_DATA" => "a:4:{s:10:\"yandex_lat\";d:57.151823451313895;s:10:\"yandex_lon\";d:65.52515540185556;s:12:\"yandex_scale\";i:11;s:10:\"PLACEMARKS\";a:1:{i:0;a:3:{s:3:\"LON\";d:65.527326767499;s:3:\"LAT\";d:57.139207057719;s:4:\"TEXT\";s:15:\"Наш офис\";}}}",
		"MAP_HEIGHT" => "400",
		"MAP_ID" => "",
		"MAP_WIDTH" => "1140",
		"OPTIONS" => array(
			0 => "ENABLE_SCROLL_ZOOM",
			1 => "ENABLE_DBLCLICK_ZOOM",
			2 => "ENABLE_DRAGGING",
		),
		"COMPONENT_TEMPLATE" => ".default"
	),
	false
);?>
                </div>
            </div>
        </div>
    </div>
</div>

<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>