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
* @author PrestaShop SA <contact@prestashop.com>
	* @copyright 2007-2017 PrestaShop SA
	* @license http://opensource.org/licenses/afl-3.0.php Academic Free License (AFL 3.0)
	* International Registered Trademark & Property of PrestaShop SA
*}

{include file="$tpl_dir./errors.tpl"}
{if $errors|@count == 0}
	{if !isset($priceDisplayPrecision)}
		{assign var='priceDisplayPrecision' value=2}
	{/if}
	{if !$priceDisplay || $priceDisplay == 2}
		{assign var='productPrice' value=$product->getPrice(true, $smarty.const.NULL, 6)}
		{assign var='productPriceWithoutReduction' value=$product->getPriceWithoutReduct(false, $smarty.const.NULL)}
	{elseif $priceDisplay == 1}
		{assign var='productPrice' value=$product->getPrice(false, $smarty.const.NULL, 6)}
		{assign var='productPriceWithoutReduction' value=$product->getPriceWithoutReduct(true, $smarty.const.NULL)}
	{/if}
<div class="product_wrapper" itemscope itemtype="http://schema.org/Product">
	{if isset($product_id_hotel) && $product_id_hotel}
		<meta itemprop="url" content="{$link->getProductLink($product)}">
		<div class="primary_block row">
			<!-- {if !$content_only}
				<div class="container">
					<div class="top-hr"></div>
				</div>
			{/if} -->
			<!-- by webkul -->
			{if isset($adminActionDisplay) && $adminActionDisplay}
				<div id="admin-action" class="container">
					<p class="alert alert-info">{l s='This product is not visible to your customers.'}
						<input type="hidden" id="admin-action-product-id" value="{$product->id}" />
						<a id="publish_button" class="btn btn-default button button-small" href="#">
							<span>{l s='Publish'}</span>
						</a>
						<a id="lnk_view" class="btn btn-default button button-small" href="#">
							<span>{l s='Back'}</span>
						</a>
					</p>
					<p id="admin-action-result"></p>
				</div>
			{/if}
			{if isset($confirmation) && $confirmation}
				<p class="confirmation">
					{$confirmation}
				</p>
			{/if}

			<!-- By webkul to search panel on product page -->

			<!-- end -->
			<!-- left infos-->
			<div class="top-block{* pb-right-column col-xs-12 col-sm-4 col-md-4 *}">
				{if ($product->show_price && !isset($restricted_country_mode)) || isset($groups) || $product->reference || (isset($HOOK_PRODUCT_ACTIONS) && $HOOK_PRODUCT_ACTIONS)}
					<p class="hidden">
						<input type="hidden" name="token" value="{$static_token}" />
						<input type="hidden" name="id_product" value="{$product->id|intval}" id="product_page_product_id" />
						<input type="hidden" name="add" value="1" />
						<input type="hidden" name="id_product_attribute" id="idCombination" value="" />
					</p>
					<div class="booking-form card">
						<div class="booking_room_fields">
							<form action="" method="post">
								{* <div class="form-group htl_location_block">
									<label for="" class="control-label">{l s='Hotel Location'}</label>
									<p>{$hotel_location|escape:'html':'UTF-8'}</p>
								</div> *}
								{if $product->show_price && !isset($restricted_country_mode) && !$PS_CATALOG_MODE}
									<div class="row">
										<div class="form-group col-sm-6">
											<label for="" class="control-label">{if $lang_iso == 'es'}{l s='Entrada'}{elseif $lang_iso == 'en'}{l s='Check In Date'}{/if}</label>
											<div class="input-group">
												<input type="text" class="form-control input-date" name="room_check_in" id="room_check_in" value="{if isset($date_from)}{$date_from|date_format:"%d-%m-%Y"}{/if}" autocomplete="off" readonly />
												<label class="input-group-addon" for="room_check_in"><i class="icon-calendar"></i></label>
											</div>
										</div>
										<div class="form-group col-sm-6">
											<label for="" class="control-label">{if $lang_iso == 'es'}{l s='Salida'}{elseif $lang_iso == 'en'}{l s='Check Out Date'}{/if}</label>
											<div class="input-group">
												<input type="text" class="form-control input-date" name="room_check_out" id="room_check_out" value="{if isset($date_to)}{$date_to|escape:'html':'UTF-8'|date_format:"%d-%m-%Y"}{/if}" autocomplete="off" readonly />
												<label class="input-group-addon" for="room_check_out"><i class="icon-calendar"></i></label>
											</div>
										</div>
										<div class="room_unavailability_date_error_div"></div>
										<div class="unvail_rooms_cond_display">
											<div class="form-group col-sm-6" id="quantity_wanted_p" {if (!$allow_oosp && $product-> quantity <= 0) || !$product->available_for_order || $PS_CATALOG_MODE} style="display: none;"{/if}>
												<label for="quantity_wanted">{if $lang_iso == 'es'}{l s='Núm. de habitaciones'}{elseif $lang_iso == 'en'}{l s='No. of Rooms'}{/if}</label>
												<div class="qty_sec_cont">
													<div class="qty_direction">
														<a href="#" data-field-qty="qty" class="btn btn-default product_quantity_down">
															<span>
																<i class="icon-minus"></i>
															</span>
														</a>
														<div class="qty_input_cont row margin-lr-0">
															<input autocomplete="off" type="text" min="1" name="qty" id="quantity_wanted" class="text" value="{if isset($quantityBackup)}{$quantityBackup|intval}{else}{if $product->minimal_quantity > 1}{$product->minimal_quantity}{else}1{/if}{/if}">
															<input type="hidden" id="num_days" value="{if isset($num_days)}{$num_days|escape:'html':'UTF-8'}{/if}">
															<input type="hidden" id="max_avail_type_qty" value="{if isset($total_available_rooms)}{$total_available_rooms|escape:'html':'UTF-8'}{/if}">
														</div>
														<a href="#" data-field-qty="qty" class="btn btn-default product_quantity_up">
															<span>
															<i class="icon-plus"></i>
															</span>
														</a>
													</div>
												</div>
												<span class="clearfix"></span>
											</div>
										</div>
										{* {if isset($room_type_demands) && $room_type_demands}
											<hr class="separator-hr-mg-10 unvail_rooms_cond_display">
											<div class="row price_desc_block unvail_rooms_cond_display">
												<div class="col-sm-6">
													<label class="control-label">{l s='Room Price'}</label>
														<p>
															<span class="total_rooms_price_block">{convertPrice price=$total_price|floatval}</span>
															<span class="pull-right plus-sign">+</span>
														</p>
												</div>
												<div class="col-sm-6">
													<label class="control-label">{l s='Extra Facilities'}</label>
														<p class="extra_demands_price_block">{convertPrice price=0}</p>
												</div>
											</div>
											<hr class="separator-hr-mg-10 form-group unvail_rooms_cond_display">
										{/if} *}
										<div class="room_unavailability_qty_error_div"></div>
										<div class="{* row *} unvail_rooms_cond_display">
											<div class="total_price_block col-xs-7 form-group">
												<label class="control-label">{l s='Subtotal'}</label>
												<p>
													{convertPrice price=$total_price|floatval}
												</p>
											</div>
											{* <div class="col-xs-5 form-group pull-right num_quantity_alert">
										<span class="num_searched_avail_rooms">{$total_available_rooms|escape:'html':'UTF-8'}</span>
										{l s='Room(s) Left !'}
											</div> *}
										</div>

										<!-- End -->
										<div class="sold_out_alert form-group col-sm-6">
											<label for="" class="control-label hidden-xs hidden-sm">{if $lang_iso == 'es'}{l s='Lo sentimos'}{elseif $lang_iso == 'en'}{l s='Sorry :('}{/if}</label>
											<div class="input-group hidden-xs hidden-sm">
												<span>{l s='Esta habitación no está disponible. Por favor intenta seleccionando otras fechas.'}</span>
											</div>
											<div id="popup_sold" class="popup_sold">
												<div class="popup_sold-content">
													<h2>
														<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
															<path d="M11.4106 16.6422C11.063 16.6422 10.8313 16.4105 10.8313 16.0629V6.90918C10.8313 6.61951 11.063 6.32983 11.4106 6.32983C11.7583 6.32983 11.99 6.61951 11.99 6.90918V16.0629C11.99 16.3525 11.7003 16.6422 11.4106 16.6422Z" fill="#D62D2D"/>
															<path d="M11.4105 20.0025C10.947 20.0025 10.5415 19.597 10.5415 19.1335V18.9017C10.5415 18.4383 10.947 18.0327 11.4105 18.0327C11.874 18.0327 12.2795 18.4383 12.2795 18.9017V19.1335C12.2795 19.597 11.874 20.0025 11.4105 20.0025Z" fill="#D62D2D"/>
															<path d="M23.1713 15.7733C23.1713 14.4988 22.1285 13.5139 20.9118 13.5139C20.8539 13.5139 20.8539 13.5139 20.796 13.5139L15.8715 3.66498C15.0604 1.98487 13.3803 1 11.5264 1C9.67253 1 7.99243 2.04281 7.18134 3.66498L0.518865 16.9899C-0.234284 18.4962 -0.176371 20.2343 0.750583 21.6826C1.6196 23.131 3.18386 24 4.86396 24H18.1889C19.869 24 21.4332 23.131 22.3023 21.6826C23.1713 20.2922 23.2292 18.67 22.5919 17.1637C22.9395 16.8161 23.1713 16.2947 23.1713 15.7733ZM22.0126 15.7733C22.0126 16.4106 21.4912 16.874 20.9118 16.874C20.3325 16.874 19.8111 16.3527 19.8111 15.7733C19.8111 15.194 20.3325 14.6725 20.9118 14.6725C21.4912 14.6725 22.0126 15.136 22.0126 15.7733ZM20.8539 20.8136C20.2745 21.7406 19.2897 22.262 18.1889 22.262H4.86396C3.7632 22.262 2.77829 21.7406 2.19895 20.8136C1.6196 19.8866 1.56169 18.7859 2.08311 17.801L8.74558 4.47607C9.26699 3.37532 10.3098 2.73804 11.5264 2.73804C12.7431 2.73804 13.7859 3.37532 14.3073 4.47607L19.2317 14.267C18.8841 14.6725 18.6524 15.194 18.6524 15.7733C18.6524 17.0479 19.6952 18.0327 20.9118 18.0327C20.9698 18.0327 21.0277 18.0327 21.0856 18.0327C21.4332 18.9017 21.3753 19.9446 20.8539 20.8136Z" fill="#D62D2D"/>
														</svg>
														{if $lang_iso == 'es'}{l s='Lo sentimos'}{elseif $lang_iso == 'en'}{l s='Sorry :('}{/if}
													</h2>
													<p>
														{if $lang_iso == 'es'}{l s='Esta habitación no está disponible. 
														Por favor intenta seleccionando otras fechas.'}
														{elseif $lang_iso == 'en'}{l s='This room is not available.
														Please try selecting other dates.'}{/if}
													</p>
														<a class="btn btn-default button button-medium exclusive popup_sold_button">
															{if $lang_iso == 'es'}{l s='Aceptar'}{elseif $lang_iso == 'en'}{l s='Accept'}{/if}
														</a>
												</div>
											</div>
										</div>
										<div class="unvail_rooms_cond_display last-block">
											{if (!$allow_oosp && $product->quantity <= 0) || !$product->available_for_order || (isset($restricted_country_mode) && $restricted_country_mode) || $PS_CATALOG_MODE}
											{else}
												<p id="add_to_cart" class="buttons_bottom_block no-print">
													<button type="submit" name="Submit" class="exclusive book_now_submit">
														<span>
															{if $content_only && (isset($product->customization_required) && $product->customization_required)}{l s='Customize'}{else}{if $lang_iso == 'es'}{l s='Reservar'}{elseif $lang_iso == 'en'}{l s='Book Now'}{/if}{/if}
														</span>
													</button>
												</p>
											{/if}
										</div>
									</div>
								{/if}
							</form>
						</div>
					</div>
					{* extra room type demands *}
					{* {if isset($room_type_demands) && $room_type_demands}
						<div class="col-sm-12 card room_demands_container">
							<label for="" class="control-label">{l s='Additional Facilities'}</label>
							{foreach $room_type_demands as $idGlobalDemand => $demand}
								<div class="row room_demand_block">
									{if $product->show_price && !isset($restricted_country_mode) && !$PS_CATALOG_MODE}
										<div class="col-xs-1">
											<p class="checkbox">
												<input value="{$idGlobalDemand|escape:'html':'UTF-8'}" type="checkbox" class="id_room_type_demand" />
											</p>
										</div>
									{/if}
									<div class="col-xs-11 demand_adv_option_block">
										<p>{$demand['name']|escape:'html':'UTF-8'} {if $product->show_price && !isset($restricted_country_mode) && !$PS_CATALOG_MODE}<span class="pull-right extra_demand_option_price">{convertPrice price = {$demand['price']}}</span>{/if}</p>
										{if isset($demand['adv_option']) && $demand['adv_option']}
											<select class="id_option">
												{foreach $demand['adv_option'] as $idOption => $option}
													<option optionPrice="{$option['price']|escape:'html':'UTF-8'}" value="{$idOption|escape:'html':'UTF-8'}">{$option['name']|escape:'html':'UTF-8'}</option>
												{/foreach}
											</select>
										{else}
											<input type="hidden" class="id_option" value="0" />
										{/if}
									</div>
								</div>
							{/foreach}
							<div class="room_demands_container_overlay">
							</div>
						</div>
					{/if} *}
				{/if}
			</div>
			<div class="bottom-block{* pb-left-column col-xs-12 col-sm-8 col-md-8 *}">
				<div class="room_type_img_containter card">
					<div class="room_hotel_name_block">
						<div class="hotel_name_block">
							<span>{$product->name}&nbsp;-&nbsp;{$hotel_name}</span>
							{* {foreach from=$dir item=file}
							{if $file != "." && $file != ".."}
							{$file}
							{/if}
							{/foreach} *}
						</div>
						{* {if isset($num_reviews)}
							{for $foo=1 to 5}
								{if $foo <= $ratting}
									<div class="room_ratting_yes" style="background-image:url({$ratting_img_path});"></div>
								{else}
									<div class="room_ratting_no" style="background-image:url({$ratting_img_path});"></div>
								{/if}
							{/for}
							<span class="num_reviews">{$num_reviews} &nbsp;{l s='Review(s)'}</span>
						{/if} *}
					</div>
					<!-- product img-->
					<div id="image-block" class="clearfix">
						<!-- {if $product->new}
							<span class="new-box">
								<span class="new-label">{l s='New'}</span>
							</span>
						{/if} -->
						{* {if $product->on_sale}
							<span class="sale-box no-print">
								<span class="sale-label">{l s='Sale!'}</span>
							</span>
						{elseif $product->specificPrice && $product->specificPrice.reduction && $productPriceWithoutReduction > $productPrice}
							<span class="discount">{l s='Reduced price!'}</span>
						{/if} *}
							<span id="view_full_size">
								<div id="panorama">
								</div>
								<a class="jqzoom" rel="gal1" href="">
									<img itemprop="image" src="{$base_dir}/img/rooms/{$product->id}/DSC_01.jpg" style="height: 100%;"/>
								</a>
							</span>
						{* {if $have_image}
							<span id="view_full_size">
								<div id="panorama">
								</div>
								{if $jqZoomEnabled && $have_image && !$content_only}
									<a class="jqzoom" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" rel="gal1" href="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'thickbox_default')|escape:'html':'UTF-8'}">
										<img itemprop="image" src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'large_default')|escape:'html':'UTF-8'}" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" alt="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}"/>
									</a>
								{else}
									<img id="bigpic" itemprop="image" src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'large_default')|escape:'html':'UTF-8'}" title="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" alt="{if !empty($cover.legend)}{$cover.legend|escape:'html':'UTF-8'}{else}{$product->name|escape:'html':'UTF-8'}{/if}" width="{$largeSize.width}" height="{$largeSize.height}"/>
								{/if}
							</span>
						{else}
							<span id="view_full_size">
								<img itemprop="image" src="{$img_prod_dir}{$lang_iso}-default-large_default.jpg" id="bigpic" alt="" title="{$product->name|escape:'html':'UTF-8'}" width="{$largeSize.width}" height="{$largeSize.height}"/>
								{if !$content_only}
									<span class="span_link">
										{l s='View larger'}
									</span>
								{/if}
							</span>
						{/if} *}
					</div> 
					<!-- end image-block -->
					{* {if isset($images) && count($images) > 0} *}
						<!-- thumbnails -->
						<div class="row">
						<div id="views_block" class="clearfix {if isset($images) && count($images) < 2}hidden{/if}">
							{if isset($images) && count($images) > 2}
								<span class="view_scroll_spacer">
									<a id="view_scroll_left" class="" title="{l s='Other views'}" href="javascript:{ldelim}{rdelim}">
										{l s='Previous'}
									</a>
								</span>
							{/if}
							<div id="thumbs_list">
								<ul id="thumbs_list_frame">
									{foreach from=$dir item=file name=thumbnails}
									{if $file != "." && $file != ".."}
									<li>
										<a>
											<img class="img-responsive" id="thumb_{$file}" src="{$base_dir}/img/rooms/{$product->id}/{$file}" itemprop="image"/>
										</a>
									</li>
									{/if}
									{/foreach}
								{* {if isset($images)}
									{foreach from=$images item=image name=thumbnails}
										{assign var=imageIds value="`$product->id`-`$image.id_image`"}
										{if !empty($image.legend)}
											{assign var=imageTitle value=$image.legend|escape:'html':'UTF-8'}
										{else}
											{assign var=imageTitle value=$product->name|escape:'html':'UTF-8'}
										{/if}
										<li id="thumbnail_{$image.id_image}"{if $smarty.foreach.thumbnails.last} class="last"{/if}>
											<a {if $jqZoomEnabled && $have_image && !$content_only} href="javascript:void(0);" rel="{literal}{{/literal}gallery: 'gal1', smallimage: '{$link->getImageLink($product->link_rewrite, $imageIds, 'large_default')|escape:'html':'UTF-8'}',largeimage: '{$link->getImageLink($product->link_rewrite, $imageIds, 'thickbox_default')|escape:'html':'UTF-8'}'{literal}}{/literal}"{else} href="{$link->getImageLink($product->link_rewrite, $imageIds, 'thickbox_default')|escape:'html':'UTF-8'}"	data-fancybox-group="other-views" class="fancybox{if $image.id_image == $cover.id_image} shown{/if}"{/if} title="{$imageTitle}">
												<img class="img-responsive" id="thumb_{$image.id_image}" src="{$link->getImageLink($product->link_rewrite, $imageIds, 'cart_default')|escape:'html':'UTF-8'}" alt="{$imageTitle}" title="{$imageTitle}"{if isset($cartSize)} height="{$cartSize.height}" width="{$cartSize.width}"{/if} itemprop="image" />
											</a>
										</li>
									{/foreach}
								{/if} *}
								</ul>
							</div> <!-- end thumbs_list -->
							{if isset($images) && count($images) > 2}
							<span class="view_scroll_spacer right">
								<a id="view_scroll_right" title="{l s='Other views'}" href="javascript:{ldelim}{rdelim}">
									{l s='Next'}
								</a>
							</span>
							{/if}
						</div>
						</div>
						<!-- end views-block -->
						<!-- end thumbnails -->
					{* {/if} *}
					{if isset($images) && count($images) > 1}
						<p class="resetimg clear no-print">
							<span id="wrapResetImages" style="display: none;">
								<a href="{$link->getProductLink($product)|escape:'html':'UTF-8'}" data-id="resetImages">
									<i class="icon-repeat"></i>
									{l s='Display all pictures'}
								</a>
							</span>
						</p>
					{/if}
				</div>

				<div class="room_type_info_containter">
					<!-- tab hook is added here -->
					<!--HOOK_PRODUCT_TAB -->
					<section class="page-product-box">
						<ul class="nav nav-tabs product_description_tabs">
							<li class="active"><a href="#room_info_tab" class="idTabHrefShort" data-toggle="tab">{if $lang_iso == 'es'}{l s='Información de la habitación' mod='productcomments'}{elseif $lang_iso == 'en'}{l s='Room Information' mod='productcomments'}{/if}</a></li>
							{$HOOK_PRODUCT_TAB}
						</ul>
						<div class="tab-content product_description_tabs_contents">
							<div id="room_info_tab" class="tab-pane active card">
								<div id="room_info_tab_information">
									<div class="info_margin_div room_description">
										{$product->description}
									</div>
									{if isset($features) && $features}
										<div class="info_margin_div">
											<div class="room_info_heading">
												<span>
												{if $lang_iso == 'es'}
																{l s='Características de la habitación'}
												{elseif $lang_iso == 'en'}
																{l s='Room features'}
												{/if}
												</span>
												{* <span>{l s='Room Features'}</span> *}
											</div>
											<div class="room_info_content">
												{foreach from=$features key=ftr_k item=ftr_v}

                                        			<div class="col-md-6">
													<i class="icon icon-circle"></i><span class="amenity_name">{$ftr_v['name']}</span>
													</div>
													{* <img title="{$ftr_v.name|escape:'html':'UTF-8'}" alt="{$ftr_v.name|escape:'html':'UTF-8'}" width="15px" src="{$ftr_img_src|escape:'html':'UTF-8'}{$ftr_v.value|escape:'html':'UTF-8'}">&nbsp; *}
												{/foreach}
											</div>
										</div>
									{/if}
									{* {if isset($hotel_features) && $hotel_features}
										<div class="info_margin_div">
											<div class="room_info_heading">
												<span>{l s='Hotel Features'}</span>
											</div>
											<div class="room_info_content row">
												{foreach from=$hotel_features key=ftr_k item=ftr_v}
													<div class="col-sm-4 col-xs-12"><i class="circle-small">o</i> {$ftr_v|escape:'html':'UTF-8'}</div>
												{/foreach}
											</div>
										</div>
									{/if} *}
									<!-- <div class="info_margin_div">
										<div class="room_info_heading">
											<span>{l s='Rooms'}</span>
										</div>
										<div class="room_info_content row"></div>
									</div> -->
									{if isset($hotel_policies) && $hotel_policies}
										<div class="info_margin_div">
											<div class="room_info_heading">{*
												<span>{l s='Hotel Policies'}</span> *}
											</div>
											<div class="room_info_content">{*
												<p class="">{$hotel_policies}</p> *}
											</div>
										</div>
									{/if}
								</div>
							</div>
							{if isset($HOOK_PRODUCT_TAB_CONTENT) && $HOOK_PRODUCT_TAB_CONTENT}{$HOOK_PRODUCT_TAB_CONTENT}{/if}
						</div>
					</section>
				</div>
			</div> <!-- end pb-left-column -->



		</div> <!-- end primary_block -->
		{if !$content_only}
	{if (isset($quantity_discounts) && count($quantity_discounts) > 0)}
				<!-- quantity discount -->
				<section class="page-product-box ">
					<h3 class="page-product-heading">{l s='Volume discounts'}</h3>
					<div id="quantityDiscount">
						<table class="std table-product-discounts">
							<thead>
								<tr>
									<th>{l s='Quantity'}</th>
									<th>{if $display_discount_price}{l s='Price'}{else}{l s='Discount'}{/if}</th>
									<th>{l s='You Save'}</th>
								</tr>
							</thead>
							<tbody>
								{foreach from=$quantity_discounts item='quantity_discount' name='quantity_discounts'}
									{if $quantity_discount.price >= 0 || $quantity_discount.reduction_type == 'amount'}
										{$realDiscountPrice=$quantity_discount.base_price|floatval-$quantity_discount.real_value|floatval}
									{else}
										{$realDiscountPrice=$quantity_discount.base_price|floatval*(1 - $quantity_discount.reduction)|floatval}
									{/if}
									<tr class="quantityDiscount_{$quantity_discount.id_product_attribute}" data-real-discount-value="{convertPrice price = $realDiscountPrice}" data-discount-type="{$quantity_discount.reduction_type}" data-discount="{$quantity_discount.real_value|floatval}" data-discount-quantity="{$quantity_discount.quantity|intval}">
										<td>
											{$quantity_discount.quantity|intval}
										</td>
										<td>
											{if $quantity_discount.price >= 0 || $quantity_discount.reduction_type == 'amount'}
												{if $display_discount_price}
													{if $quantity_discount.reduction_tax == 0 && !$quantity_discount.price}
														{convertPrice price = $productPriceWithoutReduction|floatval-($productPriceWithoutReduction*$quantity_discount.reduction_with_tax)|floatval}
													{else}
														{convertPrice price=$productPriceWithoutReduction|floatval-$quantity_discount.real_value|floatval}
													{/if}
												{else}
													{convertPrice price=$quantity_discount.real_value|floatval}
												{/if}
											{else}
												{if $display_discount_price}
													{if $quantity_discount.reduction_tax == 0}
														{convertPrice price = $productPriceWithoutReduction|floatval-($productPriceWithoutReduction*$quantity_discount.reduction_with_tax)|floatval}
													{else}
														{convertPrice price = $productPriceWithoutReduction|floatval-($productPriceWithoutReduction*$quantity_discount.reduction)|floatval}
													{/if}
												{else}
													{$quantity_discount.real_value|floatval}%
												{/if}
											{/if}
										</td>
										<td>
											<span>{l s='Up to'}</span>
											{if $quantity_discount.price >= 0 || $quantity_discount.reduction_type == 'amount'}
												{$discountPrice=$productPriceWithoutReduction|floatval-$quantity_discount.real_value|floatval}
											{else}
												{$discountPrice=$productPriceWithoutReduction|floatval-($productPriceWithoutReduction*$quantity_discount.reduction)|floatval}
											{/if}
											{$discountPrice=$discountPrice * $quantity_discount.quantity}
											{$qtyProductPrice=$productPriceWithoutReduction|floatval * $quantity_discount.quantity}
											{convertPrice price=$qtyProductPrice - $discountPrice}
										</td>
									</tr>
								{/foreach}
							</tbody>
						</table>
					</div>
				</section>
			{/if}
			<!-- {if isset($features) && $features}
				<section class="page-product-box">
					<h3 class="page-product-heading">{l s='Data sheet'}</h3>
					<table class="table-data-sheet">
						{foreach from=$features item=feature}
						<tr class="{cycle values="odd,even"}">
							{if isset($feature.value)}
							<td>{$feature.name|escape:'html':'UTF-8'}</td>
							<td>{$feature.value|escape:'html':'UTF-8'}</td>
							{/if}
						</tr>
						{/foreach}
					</table>
				</section>
			{/if} -->
			<!-- {if isset($product) && $product->description}
				<section class="page-product-box">
					<h3 class="page-product-heading">{l s='More info'}</h3>
					<div  class="rte">{$product->description}</div>
				</section>
			{/if} --><!-- by webkul commented -->
			{if isset($packItems) && $packItems|@count > 0}
			<section id="blockpack">
				<h3 class="page-product-heading">{l s='Pack content'}</h3>
				{include file="$tpl_dir./product-list.tpl" products=$packItems}
			</section>
			{/if}
			<!-- tab hook is shifted to left column -->
			<!--end HOOK_PRODUCT_TAB -->
			{if isset($accessories) && $accessories}
				<!--Accessories -->
				<section class="page-product-box">
					<h3 class="page-product-heading">{l s='Accessories'}</h3>
					<div class="block products_block accessories-block clearfix">
						<div class="block_content">
							<ul id="bxslider" class="bxslider clearfix">
								{foreach from=$accessories item=accessory name=accessories_list}
									{if ($accessory.allow_oosp || $accessory.quantity_all_versions > 0 || $accessory.quantity > 0) && $accessory.available_for_order && !isset($restricted_country_mode)}
										{assign var='accessoryLink' value=$link->getProductLink($accessory.id_product, $accessory.link_rewrite, $accessory.category)}
										<li class="item product-box ajax_block_product{if $smarty.foreach.accessories_list.first} first_item{elseif $smarty.foreach.accessories_list.last} last_item{else} item{/if} product_accessories_description">
											<div class="product_desc">
												<a href="{$accessoryLink|escape:'html':'UTF-8'}" title="{$accessory.legend|escape:'html':'UTF-8'}" class="product-image product_image">
													<img class="lazyOwl" src="{$link->getImageLink($accessory.link_rewrite, $accessory.id_image, 'home_default')|escape:'html':'UTF-8'}" alt="{$accessory.legend|escape:'html':'UTF-8'}" width="{$homeSize.width}" height="{$homeSize.height}"/>
												</a>
												<div class="block_description">
													<a href="{$accessoryLink|escape:'html':'UTF-8'}" title="{l s='More'}" class="product_description">
														{$accessory.description_short|strip_tags|truncate:25:'...'}
													</a>
												</div>
											</div>
											<div class="s_title_block">
												<h5 itemprop="name" class="product-name">
													<a href="{$accessoryLink|escape:'html':'UTF-8'}">
														{$accessory.name|truncate:20:'...':true|escape:'html':'UTF-8'}
													</a>
												</h5>
												{if $accessory.show_price && !isset($restricted_country_mode) && !$PS_CATALOG_MODE}
												<span class="price">
													{if $priceDisplay != 1}
													{displayWtPrice p=$accessory.price}{else}{displayWtPrice p=$accessory.price_tax_exc}
													{/if}
												</span>
												{/if}
											</div>
											<div class="clearfix" style="margin-top:5px">
												{if !$PS_CATALOG_MODE && ($accessory.allow_oosp || $accessory.quantity > 0)}
													<div class="no-print">
														<a class="exclusive button ajax_add_to_cart_button" href="{$link->getPageLink('cart', true, NULL, "qty=1&amp;id_product={$accessory.id_product|intval}&amp;token={$static_token}&amp;add")|escape:'html':'UTF-8'}" data-id-product="{$accessory.id_product|intval}" title="{l s='Add to cart'}">
															<span>{l s='Add to cart'}</span>
														</a>
													</div>
												{/if}
											</div>
										</li>
									{/if}
								{/foreach}
							</ul>
						</div>
					</div>
				</section>
				<!--end Accessories -->
			{/if}
			{if isset($HOOK_PRODUCT_FOOTER) && $HOOK_PRODUCT_FOOTER}{$HOOK_PRODUCT_FOOTER}{/if}
			<!-- description & features -->
			{if (isset($product) && $product->description) || (isset($features) && $features) || (isset($accessories) && $accessories) || (isset($HOOK_PRODUCT_TAB) && $HOOK_PRODUCT_TAB) || (isset($attachments) && $attachments) || isset($product) && $product->customizable}
				{if isset($attachments) && $attachments}
				<!--Download -->
				<section class="page-product-box">
					<h3 class="page-product-heading">{l s='Download'}</h3>
					{foreach from=$attachments item=attachment name=attachements}
						{if $smarty.foreach.attachements.iteration %3 == 1}<div class="row">{/if}
							<div class="col-lg-4">
								<h4><a href="{$link->getPageLink('attachment', true, NULL, "id_attachment={$attachment.id_attachment}")|escape:'html':'UTF-8'}">{$attachment.name|escape:'html':'UTF-8'}</a></h4>
								<p class="text-muted">{$attachment.description|escape:'html':'UTF-8'}</p>
								<a class="btn btn-default btn-block" href="{$link->getPageLink('attachment', true, NULL, "id_attachment={$attachment.id_attachment}")|escape:'html':'UTF-8'}">
									<i class="icon-download"></i>
									{l s="Download"} ({Tools::formatBytes($attachment.file_size, 2)})
								</a>
								<hr />
							</div>
						{if $smarty.foreach.attachements.iteration %3 == 0 || $smarty.foreach.attachements.last}</div>{/if}
					{/foreach}
				</section>
				<!--end Download -->
				{/if}
				{if isset($product) && $product->customizable}
				<!--Customization -->
				<section class="page-product-box">
					<h3 class="page-product-heading">{l s='Product customization'}</h3>
					<!-- Customizable products -->
					<form method="post" action="{$customizationFormTarget}" enctype="multipart/form-data" id="customizationForm" class="clearfix">
						<p class="infoCustomizable">
							{l s='After saving your customized product, remember to add it to your cart.'}
							{if $product->uploadable_files}
							<br />
							{l s='Allowed file formats are: GIF, JPG, PNG'}{/if}
						</p>
						{if $product->uploadable_files|intval}
							<div class="customizableProductsFile">
								<h5 class="product-heading-h5">{l s='Pictures'}</h5>
								<ul id="uploadable_files" class="clearfix">
									{counter start=0 assign='customizationField'}
									{foreach from=$customizationFields item='field' name='customizationFields'}
										{if $field.type == 0}
											<li class="customizationUploadLine{if $field.required} required{/if}">{assign var='key' value='pictures_'|cat:$product->id|cat:'_'|cat:$field.id_customization_field}
												{if isset($pictures.$key)}
													<div class="customizationUploadBrowse">
														<img src="{$pic_dir}{$pictures.$key}_small" alt="" />
															<a href="{$link->getProductDeletePictureLink($product, $field.id_customization_field)|escape:'html':'UTF-8'}" title="{l s='Delete'}" >
																<img src="{$img_dir}icon/delete.gif" alt="{l s='Delete'}" class="customization_delete_icon" width="11" height="13" />
															</a>
													</div>
												{/if}
												<div class="customizationUploadBrowse form-group">
													<label class="customizationUploadBrowseDescription">
														{if !empty($field.name)}
															{$field.name}
														{else}
															{l s='Please select an image file from your computer'}
														{/if}
														{if $field.required}<sup>*</sup>{/if}
													</label>
													<input type="file" name="file{$field.id_customization_field}" id="img{$customizationField}" class="form-control customization_block_input {if isset($pictures.$key)}filled{/if}" />
												</div>
											</li>
											{counter}
										{/if}
									{/foreach}
								</ul>
							</div>
						{/if}
						{if $product->text_fields|intval}
							<div class="customizableProductsText">
								<h5 class="product-heading-h5">{l s='Text'}</h5>
								<ul id="text_fields">
								{counter start=0 assign='customizationField'}
								{foreach from=$customizationFields item='field' name='customizationFields'}
									{if $field.type == 1}
										<li class="customizationUploadLine{if $field.required} required{/if}">
											<label for ="textField{$customizationField}">
												{assign var='key' value='textFields_'|cat:$product->id|cat:'_'|cat:$field.id_customization_field}
												{if !empty($field.name)}
													{$field.name}
												{/if}
												{if $field.required}<sup>*</sup>{/if}
											</label>
											<textarea name="textField{$field.id_customization_field}" class="form-control customization_block_input" id="textField{$customizationField}" rows="3" cols="20">{strip}
												{if isset($textFields.$key)}
													{$textFields.$key|stripslashes}
												{/if}
											{/strip}</textarea>
										</li>
										{counter}
									{/if}
								{/foreach}
								</ul>
							</div>
						{/if}
						<p id="customizedDatas">
							<input type="hidden" name="quantityBackup" id="quantityBackup" value="" />
							<input type="hidden" name="submitCustomizedDatas" value="1" />
							<button class="button btn btn-default button button-small" name="saveCustomization">
								<span>{l s='Save'}</span>
							</button>
							<span id="ajax-loader" class="unvisible">
								<img src="{$img_ps_dir}loader.gif" alt="loader" />
							</span>
						</p>
					</form>
					<p class="clear required"><sup>*</sup> {l s='required fields'}</p>
				</section>
				<!--end Customization -->
				{/if}
			{/if}
		{/if}
		{strip}
			{* By webkul variable needed in product.js *}
			{addJsDef total_avail_rms = $total_available_rooms}
			{addJsDef max_order_date = $max_order_date}
			{addJsDef booking_date_to = $date_to}
			{addJsDef booking_date_from = $date_from}

			{addJsDef product_controller_url=$product_controller_url}
		{/strip}
	{else}
		<div class="bootstrap">
			<div class="alert alert-warning">
				{l s='This room type has not enough information. Please save information of related hotel and other required room information for the booking of this room type.'}
			</div>
		</div>
	{/if}
</div> <!-- itemscope product wrapper -->
{strip}
{if isset($smarty.get.ad) && $smarty.get.ad}
	{addJsDefL name=ad}{$base_dir|cat:$smarty.get.ad|escape:'html':'UTF-8'}{/addJsDefL}
{/if}
{if isset($smarty.get.adtoken) && $smarty.get.adtoken}
	{addJsDefL name=adtoken}{$smarty.get.adtoken|escape:'html':'UTF-8'}{/addJsDefL}
{/if}
{addJsDef allowBuyWhenOutOfStock=$allow_oosp|boolval}
{addJsDef availableNowValue=$product->available_now|escape:'quotes':'UTF-8'}
{addJsDef availableLaterValue=$product->available_later|escape:'quotes':'UTF-8'}
{addJsDef attribute_anchor_separator=$attribute_anchor_separator|escape:'quotes':'UTF-8'}
{addJsDef attributesCombinations=$attributesCombinations}
{addJsDef currentDate=$smarty.now|date_format:'%Y-%m-%d %H:%M:%S'}
{if isset($combinations) && $combinations}
	{addJsDef combinations=$combinations}
	{addJsDef combinationsFromController=$combinations}
	{addJsDef displayDiscountPrice=$display_discount_price}
	{addJsDefL name='upToTxt'}{l s='Up to' js=1}{/addJsDefL}
{/if}
{if isset($combinationImages) && $combinationImages}
	{addJsDef combinationImages=$combinationImages}
{/if}
{addJsDef customizationId=$id_customization}
{addJsDef customizationFields=$customizationFields}
{addJsDef default_eco_tax=$product->ecotax|floatval}
{addJsDef displayPrice=$priceDisplay|intval}
{addJsDef ecotaxTax_rate=$ecotaxTax_rate|floatval}
{if isset($cover.id_image_only)}
	{addJsDef idDefaultImage=$cover.id_image_only|intval}
{else}
	{addJsDef idDefaultImage=0}
{/if}
{addJsDef img_ps_dir=$img_ps_dir}
{addJsDef img_prod_dir=$img_prod_dir}
{addJsDef id_product=$product->id|intval}
{addJsDef jqZoomEnabled=$jqZoomEnabled|boolval}
{addJsDef maxQuantityToAllowDisplayOfLastQuantityMessage=$last_qties|intval}
{addJsDef minimalQuantity=$product->minimal_quantity|intval}
{addJsDef noTaxForThisProduct=$no_tax|boolval}
{if isset($customer_group_without_tax)}
	{addJsDef customerGroupWithoutTax=$customer_group_without_tax|boolval}
{else}
	{addJsDef customerGroupWithoutTax=false}
{/if}
{if isset($group_reduction)}
	{addJsDef groupReduction=$group_reduction|floatval}
{else}
	{addJsDef groupReduction=false}
{/if}
{addJsDef oosHookJsCodeFunctions=Array()}
{addJsDef productHasAttributes=isset($groups)|boolval}
{addJsDef productPriceTaxExcluded=($product->getPriceWithoutReduct(true)|default:'null' - $product->ecotax)|floatval}
{addJsDef productPriceTaxIncluded=($product->getPriceWithoutReduct(false)|default:'null' - $product->ecotax)|floatval}
{addJsDef productBasePriceTaxExcluded=($product->getPrice(false, null, 6, null, false, false) - $product->ecotax)|floatval}
{addJsDef productBasePriceTaxExcl=($product->getPrice(false, null, 6, null, false, false)|floatval)}
{addJsDef productBasePriceTaxIncl=($product->getPrice(true, null, 6, null, false, false)|floatval)}
{addJsDef productReference=$product->reference|escape:'html':'UTF-8'}
{addJsDef productAvailableForOrder=$product->available_for_order|boolval}
{addJsDef productPriceWithoutReduction=$productPriceWithoutReduction|floatval}
{addJsDef productPrice=$productPrice|floatval}
{addJsDef productUnitPriceRatio=$product->unit_price_ratio|floatval}
{addJsDef productShowPrice=(!$PS_CATALOG_MODE && $product->show_price)|boolval}
{addJsDef PS_CATALOG_MODE=$PS_CATALOG_MODE}
{if $product->specificPrice && $product->specificPrice|@count}
	{addJsDef product_specific_price=$product->specificPrice}
{else}
	{addJsDef product_specific_price=array()}
{/if}
{if $display_qties == 1 && $product->quantity}
	{addJsDef quantityAvailable=$product->quantity}
{else}
	{addJsDef quantityAvailable=0}
{/if}
{addJsDef quantitiesDisplayAllowed=$display_qties|boolval}
{if $product->specificPrice && $product->specificPrice.reduction && $product->specificPrice.reduction_type == 'percentage'}
	{addJsDef reduction_percent=$product->specificPrice.reduction*100|floatval}
{else}
	{addJsDef reduction_percent=0}
{/if}
{if $product->specificPrice && $product->specificPrice.reduction && $product->specificPrice.reduction_type == 'amount'}
	{addJsDef reduction_price=$product->specificPrice.reduction|floatval}
{else}
	{addJsDef reduction_price=0}
{/if}
{if $product->specificPrice && $product->specificPrice.price}
	{addJsDef specific_price=$product->specificPrice.price|floatval}
{else}
	{addJsDef specific_price=0}
{/if}
{addJsDef specific_currency=($product->specificPrice && $product->specificPrice.id_currency)|boolval} {* TODO: remove if always false *}
{addJsDef stock_management=$PS_STOCK_MANAGEMENT|intval}
{addJsDef taxRate=$tax_rate|floatval}
{addJsDefL name=doesntExist}{l s='This combination does not exist for this product. Please select another combination.' js=1}{/addJsDefL}
{addJsDefL name=doesntExistNoMore}{l s='This product is no longer in stock' js=1}{/addJsDefL}
{addJsDefL name=doesntExistNoMoreBut}{l s='with those attributes but is available with others.' js=1}{/addJsDefL}
{addJsDefL name=fieldRequired}{l s='Please fill in all the required fields before saving your customization.' js=1}{/addJsDefL}
{addJsDefL name=uploading_in_progress}{l s='Uploading in progress, please be patient.' js=1}{/addJsDefL}
{addJsDefL name='product_fileDefaultHtml'}{l s='No file selected' js=1}{/addJsDefL}
{addJsDefL name='product_fileButtonHtml'}{l s='Choose File' js=1}{/addJsDefL}
{addJsDef currency_sign = $currency->sign}
{addJsDef currency_format = $currency->format}
{addJsDef currency_blank = $currency->blank}
{addJsDefL name=correct_date_cond}{l s='Check Out Date should be greater than Check in date.' js=1}{/addJsDefL}
{addJsDefL name=some_error_cond}{l s='Some error occured .Please try again.' js=1}{/addJsDefL}
{addJsDefL name=unavail_qty_text}{l s='Required quantity of rooms are Not available.' js=1}{/addJsDefL}
{addJsDefL name=out_of_stock_cond}{l s='No room is available for this period.' js=1}{/addJsDefL}
{addJsDefL name=wrong_qty_cond}{l s='you are trying for a invalid quantity.' js=1}{/addJsDefL}


{addJsDefL name=hotel_loc_cond}{l s='Please enter a hotel location' js=1 mod='wkroomsearchblock'}{/addJsDefL}
{addJsDefL name=hotel_name_cond}{l s='Please select a hotel name' js=1 mod='wkroomsearchblock'}{/addJsDefL}
{addJsDefL name=check_in_time_cond}{l s='Please enter Check In time' js=1 mod='wkroomsearchblock'}{/addJsDefL}
{addJsDefL name=check_out_time_cond}{l s='Please enter Check Out time' js=1 mod='wkroomsearchblock'}{/addJsDefL}
{addJsDefL name=num_adults_cond}{l s='Please enter number of adults.' js=1 mod='wkroomsearchblock'}{/addJsDefL}
{addJsDefL name=num_children_cond}{l s='Children' js=1 mod='wkroomsearchblock'}{/addJsDefL}
{addJsDefL name=some_error_occur_cond}{l s='Some error occured. Please try again.' js=1 mod='wkroomsearchblock'}{/addJsDefL}
{addJsDefL name=less_checkin_date}{l s='Use another date.' js=1 mod='wkroomsearchblock'}{/addJsDefL}
{* {addJsDefL name=less_checkin_date}{l s='Check In date can not be before current date.' js=1 mod='wkroomsearchblock'}{/addJsDefL} *}
{addJsDefL name=more_checkout_date}{l s='Check Out date must be greater than Check In date.' js=1 mod='wkroomsearchblock'}{/addJsDefL}
{addJsDef autocomplete_search_url=$link->getModuleLink('wkroomsearchblock','autocompletesearch')}
{addJsDef images=$product->getImages(EN)}
{addJsDef panorama=$product->getPanorama($product->id|intval)}
{addJsDef dir=$dir}

{/strip}
{/if}
<script type="text/javascript">
	let id_panorama,id_180;
	/**let x = false;
	let id_panorama;
	images.forEach(function(x){
		if(x.panorama != null){
			id_panorama = x.id_image;
		}
	});*/
	dir.forEach(function(x){
		if(x == "panorama_01.jpg"){
			id_panorama = true;
		}
		else if(x == "180_01.jpg"){
			id_180 = true;
		}
	});

	if(id_panorama){
	//	let z = id_panorama.split('');
		$('.jqzoom').css('display','none');

		var headerPanorama = pannellum.viewer('panorama', {
			"type": "equirectangular",
			"panorama": "{$base_dir}img/rooms/{$product->id}/panorama_01.jpg",
			"autoLoad": true,
			"showControls": false,
			"vaov": 120,
			"autoRotate": true,
			"minXaw": -120,
			"maxXaw": 120,
			"minPitch": -55,
			"maxPitch": 55,
			"mouseZoom": false,
			"autoRotateInactivityDelay": 2000
		});
		/**var headerPanorama = pannellum.viewer('panorama', {
			"type": "equirectangular",
			"panorama": "{$img_prod_dir}"+z[0]+"/"+z[1]+"/"+id_panorama+".jpg",
			"autoLoad": true,
			"showControls": false,
			"vaov": 120,
			"autoRotate": true,
			"minXaw": -120,
			"maxXaw": 120,
			"minPitch": -55,
			"maxPitch": 55,
			"mouseZoom": false,
			"autoRotateInactivityDelay": 2000
		});*/
	}else if(id_180){
		$('.jqzoom').css('display','none');

		var headerPanorama = pannellum.viewer('panorama', {
			"type": "equirectangular",
			"panorama": "{$base_dir}img/rooms/{$product->id}/180_01.jpg",
			"autoLoad": true,
			"showControls": false,
			"vaov": 120,
			"haov": 180,
			"autoRotate": true,
			"minXaw": -60,
			"maxXaw": 60,
			"minPitch": -55,
			"maxPitch": 55,
			"mouseZoom": false,
			"autoRotateInactivityDelay": 2000
		});
	};

	$('#image-block').off('click');

	$('#thumbs_list li a').click(function(){
		let name = $(this).children().attr('id').split('_');
		if(name[1] == "panorama"){
			$('#panorama').empty();
			$('.jqzoom').css('display','none');
			var wheight = $(window).height();
			var wwidth = $(window).width();
			var headerPanorama = pannellum.viewer('panorama', {
				"type": "equirectangular",
				"panorama": "{$base_dir}img/rooms/{$product->id}/"+name[1]+"_"+name[2],
				"autoLoad": true,
				"showControls": false,
				"vaov": 120,
				"autoRotate": true,
				"minXaw": -120,
				"maxXaw": 120,
				"minPitch": -55,
				"maxPitch": 55,
				"mouseZoom": false,
				"autoRotateInactivityDelay": 2000
			});
		}else if(name[1] == "180"){
			$('#panorama').empty();
			$('.jqzoom').css('display','none');
			var wheight = $(window).height();
			var wwidth = $(window).width();
			var headerPanorama = pannellum.viewer('panorama', {
				"type": "equirectangular",
				"panorama": "{$base_dir}img/rooms/{$product->id}/"+name[1]+"_"+name[2],
				"autoLoad": true,
				"showControls": false,
				"vaov": 120,
				"haov": 180,
				"autoRotate": true,
				"minXaw": -60,
				"maxXaw": 60,
				"minPitch": -55,
				"maxPitch": 55,
				"mouseZoom": false,
				"autoRotateInactivityDelay": 2000
			});
		}else{
			$('#panorama').empty();
			$('#panorama').removeAttr('class');
			$('.jqzoom img').attr('src',"{$base_dir}img/rooms/{$product->id}/"+name[1]+"_"+name[2]);
			$('.jqzoom').css('display','unset');
			/**$('.jqzoom').jqzoom({
				zoomType: 'innerzoom', //innerzoom/standard/reverse/drag
				zoomWidth: 458, //zooming div default width(default width value is 200)
				zoomHeight: 458, //zooming div default width(default height value is 200)
				xOffset: 21, //zooming div default offset(default offset value is 10)
				yOffset: 0,
				title: false
			});*/
		}
	});
    /**$('#thumbs_list li a').click(function(){
			let id = $(this).parent().attr('id').split('_')[1];
			let image,exception = {};
			try{
				images.forEach(function(x){
					if(x.id_image == id){
						image = x;
						throw exception;
					}
				});
			}catch(e){
				if(e !== exception) throw e;
			}
			let n = image.id_image.split('');
			if(image.panorama == 1){
				$('#panorama').empty();
				$('.jqzoom').css('display','none');
				var wheight = $(window).height();
				var wwidth = $(window).width();
				var headerPanorama = pannellum.viewer('panorama', {
					"type": "equirectangular",
					"panorama": "{$img_prod_dir}"+n[0]+"/"+n[1]+"/"+image.id_image+".jpg",
					"autoLoad": true,
					"showControls": false,
					"vaov": 120,
					"autoRotate": true,
					"minXaw": -120,
					"maxXaw": 120,
					"minPitch": -55,
					"maxPitch": 55,
					"mouseZoom": false,
					"autoRotateInactivityDelay": 2000
				});
			}else{
				$('#panorama').empty();
				$('#panorama').removeAttr('class');
				$('.jqzoom img').attr('src',"{$img_prod_dir}"+n[0]+"/"+n[1]+"/"+image.id_image+"-large_default.jpg").parent().attr('href', "{$img_prod_dir}"+n[0]+"/"+n[1]+"/"+image.id_image+"-thickbox_default.jpg");;
				$('.jqzoom').css('display','unset');
				$('.jqzoom').jqzoom({
					zoomType: 'innerzoom', //innerzoom/standard/reverse/drag
					zoomWidth: 458, //zooming div default width(default width value is 200)
					zoomHeight: 458, //zooming div default width(default height value is 200)
					xOffset: 21, //zooming div default offset(default offset value is 10)
					yOffset: 0,
					title: false
				});
			}
    });*/
</script>