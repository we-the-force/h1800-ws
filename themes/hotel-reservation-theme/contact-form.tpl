{*
* 2007-2017 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2017 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

{if isset($confirmation)}
	<p class="alert alert-success">{l s='Your message has been successfully sent to our team.'}</p>
	<ul class="footer_links clearfix">
		<li>
			<a class="btn btn-default button button-small" href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}">
				<span>
					<i class="icon-chevron-left"></i>{l s='Home'}
				</span>
			</a>
		</li>
	</ul>
{elseif isset($alreadySent)}
	<p class="alert alert-warning">{l s='Your message has already been sent.'}</p>
	<ul class="footer_links clearfix">
		<li>
			<a class="btn btn-default button button-small" href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}">
				<span>
					<i class="icon-chevron-left"></i>{l s='Home'}
				</span>
			</a>
		</li>
	</ul>
{else}
	{include file="$tpl_dir./errors.tpl"}
	<div class="margin-top-30 htl-contact-page">
		<div class="row">
			<p class="contact-header col-sm-offset-2 col-sm-8">{if $lang_iso == 'es'} {l s='Sobre nosotros'} {elseif $lang_iso == 'en'} {l s='About us'} {/if}</p>
			<div class="cover" style="background-image: url('{$base_dir}img/contact/01_Web.png');" ></div>
			{* <p class="contact-desc col-sm-offset-2 col-sm-8">{l s='Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry`s standard dummy text.'}</p> *}
		</div>
		<div class="row margin-top-30" style="display: flex;">
			<div class="col-sm-8 margin-top-50">
				<p class="about">
				{if $lang_iso == 'es'} {l s='Nuestro Hotel Hacienda 1800 está ubicado en el pueblo mágico de Cuatrociénegas, Coahuila. Es un oasis en el desierto con jardines y albercas al aire libre.'} 
				{elseif $lang_iso == 'en'} {l s='Our Hotel Hacienda 1800 is located in the magical town of Cuatrociénegas, Coahuila. It is an oasis in the desert with gardens and outdoor pools.'} 
				{/if}
				</p>
				<p class="about">
				{if $lang_iso == 'es'} {l s='Cuenta con 34 habitaciones, 2 suites y una villa para hasta 6 personas, todas equipadas con aire acondicionado, amenidades de lujo y smart tv.'} 
				{elseif $lang_iso == 'en'} {l s='It has 34 rooms, 2 suites and a villa for up to 6 people, all equipped with air conditioning, luxury amenities and smart TV.'} 
				{/if}
				</p>
				<p class="about">
				{if $lang_iso == 'es'} {l s='También contamos con un aqua bar donde podrás disfrutar de una extensa gama de bebidas.'} 
				{elseif $lang_iso == 'en'} {l s='We also have an aqua bar where you can enjoy an extensive range of drinks.'} 
				{/if}
				</p>
				<p class="about">
				{if $lang_iso == 'es'} {l s='El hotel está ubicado en una zona privilegiada y tiene al alcance bellezas naturales que hacen de Cuatrociénegas el lugar ideal para aventureros y vacacionistas. El Río Mezquites, la Poza Azul, las Dunas de Yeso y las Minas de Mármol son solo algunos lugares que están a no más de 30 minutos de Hacienda 1800.'} 
				{elseif $lang_iso == 'en'} {l s='The hotel is located in a privileged area and has natural beauties that make Cuatrociénegas the ideal place for adventurers and vacationers. The Mezquites River, the Blue Pool, the Plaster Dunes and the Marble Mines are just a few places that are no more than 30 minutes away from Hacienda 1800.'} 
				{/if}
				</p>
				<p class="about">
				{if $lang_iso == 'es'} {l s='Nuestra cocina prepara exquisitos platillos con ingredientes regionales y está considerada como la mejor de la región.'} 
				{elseif $lang_iso == 'en'} {l s='Our kitchen prepares exquisite dishes with regional ingredients and is determined as the best in the region.'} 
				{/if}
				</p>
				<p class="about">
				{if $lang_iso == 'es'} {l s='Se halla a solo 2 km del centro de la ciudad de Cuatrociénegas de Carranza. El museo Casa Venustiano Carranza se encuentra a sólo 1.5 km de distancia. Distancia al Aeropuerto de Monclova es de 65 km.'} 
				{elseif $lang_iso == 'en'} {l s='It is only 2 km from the city center of Cuatrociénegas de Carranza. The Casa Venustiano Carranza museum is only 1.5 km away. Distance to Monclova Airport is 65 km.'} 
				{/if}
				</p>
			</div>
			<div class="col-sm-4 img-01" style="background-image: url('{$base_dir}img/contact/02_Web.png');">
			</div>
		</div>
		<div class="row margin-top-30 images">
			<div class="col img" style="background-image: url('{$base_dir}img/contact/03_Web.png');">
			</div>
			<div class="col img" style="background-image: url('{$base_dir}img/contact/04_Web.png');">
			</div>
			<div class="col img" style="background-image: url('{$base_dir}img/contact/05_Web.png');">
			</div>
			<div class="col img" style="background-image: url('{$base_dir}img/contact/06_Web.png');">
			</div>
		</div>
		<div class="row margin-top-70" style="display: flex; margin-bottom: 80px;">
			<div class="col-sm-7 img-02" style="background-image: url('{$base_dir}img/contact/07_Web.png');">
			</div>
			<div class="col-sm-6 frase">
				<img src="{$base_dir}img/Vector_izq.png" class="left">
				<p class="frase-01">{if $lang_iso == 'es'} {l s='Se halla solo a 2 km del centro de la ciudad de Cuatrociénegas de Carranza.'} {elseif $lang_iso == 'en'} {l s='It is only 2 km from the city center of Cuatrociénegas de Carranza.'} {/if}</p>
				<img src="{$base_dir}img/Vector_der.png" class="right">
			</div>
		</div>
		<div class="row">
			<p class="contact-header col-sm-offset-2 col-sm-8">{if $lang_iso == 'es'} {l s='Contactanos'} {elseif $lang_iso == 'en'} {l s='Contact us'} {/if}</p>
			<p class="contact-desc col-sm-offset-2 col-sm-8">{if $lang_iso == 'es'} {l s='Si requieres información extra sobre el hotel o nuestros recorridos en los principales atractivos de Cuatrociénegas, ¡escríbenos!'} {elseif $lang_iso == 'en'} {l s='If you require extra information about the hotel or our tours in the main attractions of Cuatrociénegas, write us!'} {/if} </p>
		</div>
		<div class="row margin-top-50">
			<div id ="map" class="map"></div>
		</div>

		<div class="row margin-top-30">
			{if (isset($gblHtlAddress) && $gblHtlAddress) && (isset($gblHtlPhone) && $gblHtlPhone) && (isset($gblHtlEmail) && $gblHtlEmail)}
				<div class="col-sm-6">
					<div class="htl-global-address-div col-md-8 col-sm-12">
						{if isset($gblHtlPhone) && $gblHtlPhone }
							<div>
								<p class="global-address-header">{l s='Main Branch'}</p>
								<p class="global-address-value">
									{$gblHtlAddress}
								</p>
							</div>
						{/if}
						{if isset($gblHtlPhone) && $gblHtlPhone}
							<div>
								<p class="global-address-header">{l s='Phone'}</p>
								<p class="global-address-value">
									{$gblHtlPhone}
								</p>
							</div>
						{/if}
						{if isset($gblHtlEmail) && $gblHtlEmail}
							<div>
								<p class="global-address-header">{l s='Mail Us'}</p>
								<p class="global-address-value">
									{$gblHtlEmail}
								</p>
							</div>
						{/if}
					</div>
				</div>
			{/if}
			<div class="col-sm-6 {if !(isset($gblHtlAddress) && $gblHtlAddress) && !(isset($gblHtlPhone) && $gblHtlPhone) && !(isset($gblHtlEmail) && $gblHtlEmail)} col-sm-offset-3 {/if}">
				<form action="{$request_uri}" method="post" class="contact-form-box" enctype="multipart/form-data">
					{if isset($customerThread.id_contact) && $customerThread.id_contact && $contacts|count}
						{assign var=flag value=true}
						{foreach from=$contacts item=contact}
							{if $contact.id_contact == $customerThread.id_contact}
								<input type="text" class="form-control" id="contact_name" name="contact_name" value="{$contact.name|escape:'html':'UTF-8'}" readonly="readonly" />
								<input type="hidden" name="id_contact" value="{$contact.id_contact|intval}" />
								{$flag=false}
							{/if}
						{/foreach}
						{if $flag && isset($contacts.0.id_contact)}
							<input type="text" class="form-control" id="contact_name" name="contact_name" value="{$contacts.0.name|escape:'html':'UTF-8'}" readonly="readonly" />
							<input type="hidden" name="id_contact" value="{$contacts.0.id_contact|intval}" />
						{/if}
					{else}
						<div class="form-group row">
							<div class="col-sm-12">
								<label for="message" class="control-label">
									{l s='Tema'}
								</label>
								<div class="dropdown">
		                            <button class="form-control contact_type_input" type="button" data-toggle="dropdown">
										<span id="contact_type" class="pull-left">{l s='Choose'}</span>
										<input type="hidden" id="id_contact" name="id_contact" value="0">
										<span class="arrow_span">
		                                    <i class="icon icon-angle-down"></i>
		                                </span>
		                            </button>
		                            <ul class="dropdown-menu contact_type_ul">
										{foreach from=$contacts item=contact}
											<li  value="{$contact.id_contact|intval}"{if isset($smarty.request.id_contact) && $smarty.request.id_contact == $contact.id_contact} selected="selected"{/if}>{$contact.name|escape:'html':'UTF-8'}
											</li>
										{/foreach}

		                                {if isset($all_hotels_info) && $all_hotels_info}
											{foreach from=$all_hotels_info key=htl_k item=htl_v}
											{/foreach}
										{/if}
		                            </ul>
		                        </div>
							</div>
						</div>
					{/if}
					<div class="form-group row">
						<div class="col-sm-12">
							<label for="price" class="control-label">
								{l s='Correo'}
							</label>
							{if isset($customerThread.email)}
								<input class="form-control contact_input" type="email" id="email" name="from" value="{$customerThread.email|escape:'html':'UTF-8'}" readonly="readonly" />
							{else}
								<input class="form-control contact_input validate" type="email" id="email" name="from" data-validate="isEmail" value="{$email|escape:'html':'UTF-8'}" />
							{/if}
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-12">
							<label for="message" class="control-label msg">
								{l s='Mensaje'}
							</label>
							<textarea class="form-control contact_textarea" id="message" name="message">{if isset($message)}{$message|escape:'html':'UTF-8'|stripslashes}{/if}</textarea>
						</div>
					</div>
					{if $fileupload == 1}
						<div class="form-group row">
							<div class="col-sm-12">
								<label for="fileUpload" class="control-label attch">
									{l s='Adjuntar un archivo'}
								</label>
								<input type="hidden" name="MAX_FILE_SIZE" value="{if isset($max_upload_size) && $max_upload_size}{$max_upload_size|intval}{else}2000000{/if}" />
								<input type="file" name="fileUpload" id="fileUpload" class="form-control" />
							</div>
						</div>
					{/if}
					{hook h='displayGDPRConsent' moduleName='contactform'}
					<div class="form-group">
						<input type="text" name="url" value="" class="hidden" />
						<input type="hidden" name="contactKey" value="{$contactKey}" />
						<button class="btn button button-medium contact_btn" type="submit" name="submitMessage" id="submitMessage" ><span>{l s='Send Message'}</span></button>
					</div>
				</form>
			</div>
		</div>
		{* {if isset($hotelsInfo) && $hotelsInfo}
			<div class="row hotels-container">
				<div class="col-sm-12 hotel-header">
					<span>{l s='Our Hotels'}</span>
				</div>
				{foreach $hotelsInfo as $hotel}
					<div class="col-sm-6 margin-bottom-50">
						<div class="hotel-city-container">
							<span class="htl-map-icon"></span><span>{$hotel['city']}</span>
						</div>
						<div class="hotel-address-container">
							<div class="col-xs-4">
								<img class="htl-img" style="width:100%" src="{$hotel['image_url']}">
							</div>
							<div class="col-xs-8">
								<p class="hotel-name"><span>{$hotel['hotel_name']}</span></p>
								<p class="hotel-branch-info-value">{$hotel['address']}, {$hotel['city']}, {if {$hotel['state_name']}}{$hotel['state_name']},{/if} {$hotel['country_name']}, {$hotel['zipcode']}</p>
								{if $hotel['latitude'] != 0 || $hotel['longitude'] != 0}
									<p class="hotel-branch-info-value">
										<a class="btn htl-map-direction-btn" href="http://maps.google.com/maps?daddr=({$hotel['latitude']},{$hotel['longitude']})" target="_blank">
											<span class="">{l s='View on map'}</span>
										</a>
									</p>
								{/if}
								<p class="hotel-branch-info-value">
									<span class="htl-address-icon htl-phone-icon"></span>{$hotel['phone']}
								</p>
								<p class="hotel-branch-info-value">
									<span class="htl-address-icon htl-email-icon"></span>{$hotel['email']}
								</p>
							</div>
						</div>
					</div>
				{/foreach}
			</div>
		{/if} *}
		{if isset($hotelLocationArray)}
			<div class="row">
				<div class="col-xs-12 col-sm-12" id="googleMapWrapper">
					<div id="map"></div>
				</div>
			</div>
		{/if}
		<div style="clear:both;"></div>
	</div>
{/if}

{strip}
	{addJsDefL name='contact_fileDefaultHtml'}{l s='No file selected' js=1}{/addJsDefL}
	{addJsDefL name='contact_fileButtonHtml'}{l s='Choose File' js=1}{/addJsDefL}
{/strip}
{if isset($hotelLocationArray)}
	{strip}
		{addJsDef hotelLocationArray = $hotelLocationArray}
	{/strip}
{else}
	{strip}
		{addJsDef hotelLocationArray = 0}
	{/strip}
{/if}
{* <script>
var map;
var latlng = new google.maps.LatLng(26.984732, -102.081558);
map = new google.maps.Map(document.getElementById("map"), {
				center: latlng,
				zoom: 8
});
</script> *}