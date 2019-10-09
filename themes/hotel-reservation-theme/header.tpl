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
<!DOCTYPE HTML>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8 ie7"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9 ie8"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<!--[if gt IE 8]> <html class="no-js ie9"{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if}><![endif]-->
<html{if isset($language_code) && $language_code} lang="{$language_code|escape:'html':'UTF-8'}"{/if} style="{if $page_name == 'index'}height: 100%;{/if}">
	<head>
		<meta charset="utf-8" />
		<title>{$meta_title|escape:'html':'UTF-8'}</title>
		{if isset($meta_description) AND $meta_description}
			<meta name="description" content="{$meta_description|escape:'html':'UTF-8'}" />
		{/if}
		{if isset($meta_keywords) AND $meta_keywords}
			<meta name="keywords" content="{$meta_keywords|escape:'html':'UTF-8'}" />
		{/if}
		<meta name="generator" content="PrestaShop" />
		<meta name="robots" content="{if isset($nobots)}no{/if}index,{if isset($nofollow) && $nofollow}no{/if}follow" />
		<meta name="viewport" content="width=device-width, minimum-scale=0.25, maximum-scale=1.6, initial-scale=1.0" />
		<meta name="apple-mobile-web-app-capable" content="yes" />
		<link rel="icon" type="image/vnd.microsoft.icon" href="{$favicon_url}?{$img_update_time}" />
		<link rel="shortcut icon" type="image/x-icon" href="{$favicon_url}?{$img_update_time}" />
		{if isset($css_files)}
			{foreach from=$css_files key=css_uri item=media}
				{if $css_uri == 'lteIE9'}
					<!--[if lte IE 9]>
					{foreach from=$css_files[$css_uri] key=css_uriie9 item=mediaie9}
					<link rel="stylesheet" href="{$css_uriie9|escape:'html':'UTF-8'}" type="text/css" media="{$mediaie9|escape:'html':'UTF-8'}" />
					{/foreach}
					<![endif]-->
				{else}
					<link rel="stylesheet" href="{$css_uri|escape:'html':'UTF-8'}" type="text/css" media="{$media|escape:'html':'UTF-8'}" />
				{/if}
			{/foreach}
		{/if}
		{if isset($js_defer) && !$js_defer && isset($js_files) && isset($js_def)}
			{$js_def}
			{foreach from=$js_files item=js_uri}
			<script type="text/javascript" src="{$js_uri|escape:'html':'UTF-8'}"></script>
			{/foreach}
		{/if}
		{$HOOK_HEADER}
		<!-- <link rel="stylesheet" href="http{if Tools::usingSecureMode()}s{/if}://fonts.googleapis.com/css?family=Open+Sans:300,600&amp;subset=latin,latin-ext" type="text/css" media="all" /> -->

		<!--[if IE 8]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
		<![endif]-->

		<!-- by webkul -->
		<!-- <link href='https://fonts.googleapis.com/css?family=Parisienne' rel='stylesheet' type='text/css'> -->
		<!-- <link href='https://fonts.googleapis.com/css?family=PT+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'> -->
		<link href='//fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
	</head>
	<body{if isset($page_name)} id="{$page_name|escape:'html':'UTF-8'}"{/if} class="{if isset($page_name)}{$page_name|escape:'html':'UTF-8'}{/if}{if isset($body_classes) && $body_classes|@count} {implode value=$body_classes separator=' '}{/if}{if $hide_left_column} hide-left-column{else} show-left-column{/if}{if $hide_right_column} hide-right-column{else} hide-right-column{/if}{if isset($content_only) && $content_only} content_only{/if} lang_{$lang_iso}" style="{if $page_name == 'index'}height: 100%;{/if}">
	{if !isset($content_only) || !$content_only}
		{if isset($restricted_country_mode) && $restricted_country_mode}
			<div id="restricted-country">
				<p>{l s='You cannot place a new order from your country.'}{if isset($geolocation_country) && $geolocation_country} <span class="bold">{$geolocation_country|escape:'html':'UTF-8'}</span>{/if}</p>
			</div>
		{/if}
		<div id="page" style="{if $page_name == 'index'}height: 100%;{/if}">
			<div class="header-container" style="{if $page_name == 'index'}height: 100%;{/if}">
				<header id="header" style='{if $page_name == "index"}background-image:url("{$img_ps_dir}hotel_header_image.jpg"); height: 100%;{else}background-color:#252525;{/if}' >
					<div class="banner">
						<div class="container">
							<div class="row">
								{hook h="displayBanner"}
							</div>
						</div>
					</div>
					<div class="nav">
						<div class="container">
							<div class="row">
								<nav>{hook h="displayNav"}</nav>
							</div>
						</div>
					</div>
					<div class="menu">
						<div class="container">
							<div class="row">
								{* <div id="header_logo" class="col-xs-4">
									<a href="{if isset($force_ssl) && $force_ssl}{$base_dir_ssl}{else}{$base_dir}{/if}" title="{$shop_name|escape:'html':'UTF-8'}">
										<img class="logo img-responsive" src="{$logo_url}" alt="{$shop_name|escape:'html':'UTF-8'}"{if isset($logo_image_width) && $logo_image_width} width="{$logo_image_width}"{/if}{if isset($logo_image_height) && $logo_image_height} height="{$logo_image_height}"{/if}/>
									</a>
								</div> *}
								<div class="calendar nav_menu_padding pull-left">
									<a href="#">
										{* <img class="img-calendar" src="themes/hotel-reservation-theme/img/Calendar.svg" /> *}
										<svg width="36" height="36" viewBox="0 0 36 36" fill="none" xmlns="http://www.w3.org/2000/svg">
										<path d="M10.5828 23.0337C8.84357 23.0337 7.42645 21.6166 7.42645 19.8773C7.42645 18.1381 8.84357 16.7209 10.5828 16.7209C12.3221 16.7209 13.7393 18.1381 13.7393 19.8773C13.7393 21.681 12.3221 23.0337 10.5828 23.0337ZM10.5828 18.0736C9.55216 18.0736 8.7148 18.9111 8.7148 19.9417C8.7148 20.9724 9.55216 21.8099 10.5828 21.8099C11.6135 21.8099 12.4509 20.9724 12.4509 19.9417C12.4509 18.9111 11.6135 18.0736 10.5828 18.0736Z" fill="#1F70D1"/>
										<path d="M18.313 25.997C17.2824 25.997 16.445 26.8344 16.445 27.865C16.445 28.8957 17.2824 29.7332 18.313 29.7332C19.3437 29.7332 20.1812 28.8957 20.1812 27.865C20.1812 26.8344 19.3437 25.997 18.313 25.997Z" fill="#1F70D1"/>
										<path d="M10.5829 25.997C9.5522 25.997 8.71484 26.8344 8.71484 27.865C8.71484 28.8957 9.5522 29.7332 10.5829 29.7332C11.6136 29.7332 12.451 28.8957 12.451 27.865C12.451 26.8344 11.6136 25.997 10.5829 25.997Z" fill="#1F70D1"/>
										<path d="M18.313 17.9449C17.2824 17.9449 16.445 18.7822 16.445 19.8129C16.445 20.8436 17.2824 21.681 18.313 21.681C19.3437 21.681 20.1812 20.8436 20.1812 19.8129C20.1812 18.7822 19.3437 17.9449 18.313 17.9449Z" fill="#1F70D1"/>
										<path d="M26.2362 17.9449C25.2055 17.9449 24.3681 18.7822 24.3681 19.8129C24.3681 20.8436 25.2055 21.681 26.2362 21.681C27.2669 21.681 28.1043 20.8436 28.1043 19.8129C28.1043 18.7822 27.2669 17.9449 26.2362 17.9449Z" fill="#1F70D1"/>
										<path d="M26.2362 30.9571C24.497 30.9571 23.0798 29.5399 23.0798 27.8007C23.0798 26.0614 24.497 24.6442 26.2362 24.6442C27.9755 24.6442 29.3927 26.0614 29.3927 27.8007C29.3927 29.5399 27.9755 30.9571 26.2362 30.9571ZM26.2362 25.997C25.2056 25.997 24.3681 26.8344 24.3681 27.8651C24.3681 28.8958 25.2056 29.7332 26.2362 29.7332C27.2669 29.7332 28.1043 28.8958 28.1043 27.8651C28.1043 26.8344 27.2669 25.997 26.2362 25.997Z" fill="#1F70D1"/>
										<path d="M30.8098 6.09205H27.2025V3.96626C27.2025 3.45092 26.7515 3 26.2362 3C25.7209 3 25.2699 3.45092 25.2699 3.96626V6.09205H10.7117V3.96626C10.7117 3.45092 10.2608 3 9.74543 3C9.23009 3 8.77917 3.45092 8.77917 3.96626V6.09205H5.17182C3.17489 6.09205 1.5 7.70245 1.5 9.7638V30.8283C1.5 32.8252 3.11048 34.5 5.17182 34.5H30.7454C32.7423 34.5 34.4171 32.8252 34.4171 30.8283V9.7638C34.4816 7.70245 32.8067 6.09205 30.8098 6.09205ZM5.23623 8.02457H8.84357V9.50612C8.84357 10.0215 9.29449 10.4724 9.80983 10.4724C10.3252 10.4724 10.7761 10.0215 10.7761 9.50612V8.02457H25.3343V9.50612C25.3343 10.0215 25.7853 10.4724 26.3006 10.4724C26.8159 10.4724 27.2669 10.0215 27.2669 9.50612V8.02457H30.8742C31.8405 8.02457 32.6135 8.79754 32.6135 9.7638V13.3711H3.5614V9.7638C3.49698 8.79754 4.26997 8.02457 5.23623 8.02457ZM30.8098 32.5675H5.23623C4.26997 32.5675 3.49692 31.7945 3.49692 30.8283V15.3037H32.5491V30.8283C32.5491 31.7945 31.7761 32.5675 30.8098 32.5675Z" fill="#1F70D1"/>
										</svg>
									</a>
								</div>

								<div class="centered nav_menu_padding">
									<div class="home nav_icon">
										<a href="/">
											<svg width="26" height="23" viewBox="0 0 26 23" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path d="M5 13L11.5858 6.41421C12.3668 5.63317 13.6332 5.63317 14.4142 6.41421L20.5 12.5M5 13L3.85355 14.1464C3.65829 14.3417 3.34171 14.3417 3.14645 14.1464L1.70711 12.7071C1.31658 12.3166 1.31658 11.6834 1.70711 11.2929L11.5858 1.41421C12.3668 0.633165 13.6332 0.633165 14.4142 1.41421L24.2929 11.2929C24.6834 11.6834 24.6834 12.3166 24.2929 12.7071L22.8536 14.1464C22.6583 14.3417 22.3417 14.3417 22.1464 14.1464L20.5 12.5M5 13V20C5 21.1046 5.89543 22 7 22H18.5C19.6046 22 20.5 21.1046 20.5 20V12.5" stroke="#8B8B8B" stroke-width="1.3"/>
											<circle cx="13" cy="18" r="1.35" stroke="#8B8B8B" stroke-width="1.3"/>
											</svg>
											<p>HOME</p>
										</a>
									</div>
									<div class="rooms nav_icon">

										<a href="/index.php?id_category=15&controller=category">
											{* <img class="img-rooms" src="themes/hotel-reservation-theme/img/Rooms.svg" /> *}
											<svg width="28" height="23" viewBox="0 0 28 23" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path d="M26.5033 11.6628H26.0069V2.10923C26.0069 0.992576 25.0765 0 23.8978 0H4.04617C2.92952 0 1.93684 0.93054 1.93684 2.10923V11.6628H1.44068C0.758277 11.6628 0.199951 12.2211 0.199951 12.9035V17.184C0.199951 17.8664 0.758277 18.4248 1.44068 18.4248H1.93684V21.4025C1.93684 22.1469 2.55727 22.7053 3.23967 22.7053H7.02394C7.76837 22.7053 8.32661 22.0849 8.32661 21.4025V18.4248H19.4931V21.4025C19.4931 22.1469 20.1136 22.7053 20.7959 22.7053H24.5801C25.3245 22.7053 25.8829 22.0849 25.8829 21.4025V18.4248H26.3792C27.0616 18.4248 27.6199 17.8664 27.6199 17.184V12.9035C27.744 12.2211 27.1857 11.6628 26.5033 11.6628ZM3.17757 2.10923C3.17757 1.61294 3.61182 1.17868 4.10811 1.17868H23.9597C24.456 1.17868 24.8903 1.61294 24.8903 2.10923V11.6628H23.2774V10.3601C23.2774 8.62304 21.8506 7.25824 20.1756 7.25824H16.6396C15.5229 7.25824 14.5303 7.81656 13.972 8.7471C13.4136 7.8786 12.421 7.25824 11.3044 7.25824H7.76834C6.03133 7.25824 4.66653 8.68507 4.66653 10.3601V11.6628H3.05353V2.10923H3.17757ZM22.2228 10.298V11.6008H14.7164V10.298C14.7164 9.18136 15.5848 8.31285 16.7015 8.31285H20.2375C21.2922 8.31285 22.2228 9.24339 22.2228 10.298ZM13.4135 10.298V11.6008H5.90725V10.298C5.90725 9.18136 6.77573 8.31285 7.89238 8.31285H11.4284C12.5451 8.31285 13.4135 9.24339 13.4135 10.298ZM7.33412 21.3405C7.33412 21.4645 7.27205 21.5266 7.14798 21.5266H3.36371C3.23964 21.5266 3.17757 21.4645 3.17757 21.3405V18.3627H7.33412V21.3405ZM24.9523 21.3405C24.9523 21.4645 24.8903 21.5266 24.7662 21.5266H20.9821C20.858 21.5266 20.7959 21.4645 20.7959 21.3405V18.3627H24.9523V21.3405ZM26.6273 17.122C26.6273 17.184 26.5653 17.2461 26.5033 17.2461H26.0069H19.6172H8.45065H2.06104H1.56472C1.50268 17.2461 1.44068 17.184 1.44068 17.122V12.8415C1.44068 12.7795 1.50268 12.7174 1.56472 12.7174H2.06104H4.79057H13.5997H14.5923H23.4014H26.131H26.6273C26.6893 12.7174 26.7513 12.7795 26.7513 12.8415V17.122H26.6273Z" fill="#8B8B8B"/>
											</svg>
											<p>ROOMS</p>
										</a>
									</div>
									<div class="amenities nav_icon">
										<a href="/index.php?controller=features">
{* 											<img class="img-amenities" src="themes/hotel-reservation-theme/img/Amenities.svg" /> *}
											<svg width="28" height="28" viewBox="0 0 28 28" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path d="M25.1868 10.0499H21.2165V3.28792C21.2165 2.41942 21.7128 1.61295 22.4572 1.30276C23.5119 0.868511 24.6285 1.3648 25.0627 2.29534C25.1868 2.54348 25.4969 2.72959 25.745 2.60552C26.1173 2.48145 26.2414 2.10923 26.1173 1.79905C25.4349 0.372214 23.76 -0.372216 22.1471 0.186111C20.8443 0.682401 20.0998 1.92313 20.0998 3.28792V6.63788C20.0998 6.76195 20.0998 6.76195 20.0998 6.76195H13.7101V3.28792C13.7101 2.41942 14.2064 1.61295 14.9508 1.30276C16.0054 0.868511 17.122 1.3648 17.5563 2.29534C17.6804 2.54348 17.9906 2.72959 18.2387 2.60552C18.611 2.48145 18.7349 2.10923 18.6109 1.79905C18.1146 0.682395 16.936 0 15.7573 0C14.0203 0 12.5934 1.42684 12.5934 3.16385C12.5934 3.16385 12.5934 6.57584 12.5934 10.0499H2.29546C1.05474 10.0499 0 11.0424 0 12.3452V26.0552C0 26.7997 0.620483 27.42 1.36492 27.42H26.0552C26.7997 27.42 27.4201 26.7997 27.4201 26.0552V12.2832C27.4822 11.0425 26.4275 10.0499 25.1868 10.0499ZM25.1868 11.1665C25.8071 11.1665 26.3035 11.6628 26.3035 12.2832V16.3155C25.7451 16.5016 25.3729 16.6877 25.0006 16.9359C24.3182 17.3081 23.7599 17.6183 22.5192 17.6183C21.9609 17.6183 21.5266 17.5563 21.1544 17.4322V11.1665H25.1868ZM13.7101 7.8786H20.0998V11.973H13.7101V7.8786ZM13.7101 13.1517H20.0998V16.8118C19.4174 16.4396 18.611 16.0054 17.1842 16.0054C15.6953 16.0054 14.8888 16.4396 14.2064 16.8118C14.0823 16.8739 13.9583 16.9359 13.7722 17.06V13.1517H13.7101ZM14.6406 17.8664C15.323 17.4942 15.8813 17.184 17.1221 17.184C18.3628 17.184 18.9211 17.4942 19.6035 17.8664C20.2859 18.2387 21.0924 18.6729 22.5813 18.6729C24.0702 18.6729 24.8767 18.2387 25.559 17.8664C25.8072 17.7424 26.0553 17.6183 26.3035 17.4942V23.2015C25.7451 23.3877 25.3729 23.5738 25.0006 23.8219C24.3182 24.1941 23.7599 24.5043 22.5192 24.5043C21.2785 24.5043 20.7201 24.1941 20.0377 23.8219C19.3553 23.4497 18.5488 23.0154 17.06 23.0154C15.5711 23.0154 14.7647 23.4497 14.0823 23.8219C13.3999 24.1941 12.8416 24.5043 11.6009 24.5043C10.3602 24.5043 9.80185 24.1941 9.11945 23.8219C8.43705 23.4497 7.63055 23.0154 6.14168 23.0154C4.65281 23.0154 3.84631 23.4497 3.16391 23.8219C2.54355 24.1321 2.04732 24.4423 1.05474 24.5043V18.7349C2.3575 18.6729 3.03978 18.3007 3.72217 17.9285C4.40457 17.5563 4.9629 17.2461 6.20362 17.2461C7.44435 17.2461 8.00267 17.5563 8.68507 17.9285C9.36747 18.3007 10.174 18.7349 11.6628 18.7349C13.1517 18.7349 13.9582 18.3007 14.6406 17.8664ZM2.23337 11.1665H12.5314C12.5314 14.3304 12.5314 17.2461 12.5314 17.4942C12.2833 17.5563 11.973 17.5563 11.6628 17.5563C10.4221 17.5563 9.86379 17.2461 9.18139 16.8739C8.49899 16.5016 7.69249 16.0674 6.20362 16.0674C4.71475 16.0674 3.9084 16.5016 3.22601 16.8739C2.60564 17.184 2.10926 17.4942 1.11668 17.5563V12.2832C1.11668 11.6628 1.613 11.1665 2.23337 11.1665ZM26.0552 26.3034H1.36492C1.24085 26.3034 1.11668 26.1793 1.11668 26.0552V25.621C2.41944 25.5589 3.10187 25.1867 3.78427 24.8145C4.46667 24.4423 5.025 24.1321 6.26572 24.1321C7.50644 24.1321 8.06477 24.4423 8.74717 24.8145C9.42957 25.1867 10.2361 25.621 11.7249 25.621C13.2138 25.621 14.0203 25.1867 14.7027 24.8145C15.3851 24.4423 15.9434 24.1321 17.1842 24.1321C18.4249 24.1321 18.9832 24.4423 19.6656 24.8145C20.348 25.1867 21.1544 25.621 22.6432 25.621C24.1321 25.621 24.9386 25.1867 25.621 24.8145C25.8691 24.6904 26.1173 24.5663 26.3654 24.4423V26.0552C26.3034 26.1793 26.2413 26.3034 26.0552 26.3034Z" fill="#8B8B8B"/>
											</svg>

											<p>AMENITIES</p>
										</a>
									</div>
									<div class="parks nav_icon">
										<a href="index.php?controller=activities">
{* 											<img class="img-parks" src="themes/hotel-reservation-theme/img/Parques.svg" /> *}
											<svg width="23" height="32" viewBox="0 0 23 32" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path d="M22.9005 21.4692C22.5903 20.4766 21.5356 20.2284 20.7911 20.9108C20.605 21.0969 20.3569 21.283 20.1708 21.5312C20.1087 21.4691 20.1088 21.4691 20.0467 21.4071C19.2403 20.4766 18.4958 19.484 17.6893 18.5534C17.069 17.871 16.3246 17.6229 15.4561 17.871C14.8978 18.0572 14.3395 18.1812 13.7812 18.3673C13.6571 18.4294 13.533 18.3673 13.4089 18.2433C12.9746 17.6849 12.4784 17.1886 12.0441 16.6303C11.9821 16.5062 11.858 16.4442 11.7339 16.3201C11.796 16.3201 11.858 16.3201 11.858 16.3201C13.0367 16.1961 13.8432 15.3276 14.0913 14.335C14.1534 14.0868 14.1533 13.8387 14.1533 13.5905C14.2153 12.722 14.2774 11.8535 14.3394 10.985C14.4015 10.2406 13.7811 9.55819 13.0987 9.49615C12.2922 9.43412 11.6098 9.93041 11.4857 10.7369C11.4237 11.4193 11.3617 12.0396 11.3617 12.722C11.3617 12.9081 11.3617 13.0942 11.2997 13.2804C11.1756 13.2804 11.0515 13.2183 10.9274 13.2183C10.9895 12.9081 10.9894 12.5359 11.0515 12.2257C11.2376 10.8609 11.4238 9.49616 11.6099 8.13136C11.796 6.58045 12.0441 5.09158 12.2303 3.54067C12.4164 2.17587 12.6024 0.811076 12.7885 -0.491685C12.8506 -0.73983 12.6644 -0.987977 12.4162 -0.987977C12.1681 -1.05001 11.9201 -0.8639 11.9201 -0.615755C11.858 -0.429647 11.858 -0.181502 11.858 0.00460696C11.7339 1.05922 11.5478 2.0518 11.4238 3.10642C11.2997 4.22307 11.1136 5.27769 10.9895 6.39434C10.8655 7.38692 10.6792 8.44153 10.5552 9.43411C10.4311 10.4267 10.307 11.3572 10.1209 12.3498C10.0589 12.598 10.0589 12.7841 9.99689 13.0322C9.93485 13.0322 9.87285 13.0322 9.87285 13.0322C9.56267 12.9702 9.19039 12.9081 8.88021 12.8461C8.75614 12.8461 8.63206 12.7841 8.57003 12.66C8.19781 12.2257 7.70149 11.9776 7.14316 11.9156C6.95705 11.9156 6.77095 11.9156 6.5228 11.9156C6.58484 11.1711 6.27469 10.6128 5.7784 10.1165C5.59229 9.93041 5.40624 9.68226 5.22013 9.43411C5.46828 9.0619 5.46821 8.87579 5.15803 8.56561C4.10342 7.6971 2.49054 7.82118 1.49796 8.87579C0.567413 9.93041 0.567413 11.4813 1.49796 12.4119C1.7461 12.722 1.99428 12.722 2.30446 12.4119C2.30446 12.4119 2.3664 12.4119 2.3664 12.3498C2.55251 12.598 2.73862 12.7841 2.98677 13.0322C3.29695 13.3424 3.6071 13.5905 4.04135 13.6526C4.16542 13.6526 4.22746 13.7146 4.35153 13.7146C4.35153 13.7767 4.35162 13.8387 4.28959 13.9007C3.97941 14.9553 3.60713 16.01 3.29695 17.1266C3.23491 17.4368 3.17297 17.747 3.235 18.0572C3.42111 19.1738 4.35156 19.7942 5.46821 19.6701C5.65432 19.6701 5.84043 19.6081 6.08858 19.6081C6.08858 19.6701 6.08867 19.7321 6.02663 19.7321C5.65441 20.7868 5.28208 21.9034 4.97189 22.958C4.78579 23.5784 4.53764 24.2608 4.35153 24.8811C4.2895 25.0673 4.28962 25.2534 4.47573 25.3774C4.5998 25.5015 4.78588 25.5635 4.90995 25.5015C5.09606 25.4395 5.15809 25.2534 5.22013 25.1293C5.77846 23.3923 6.39885 21.6553 6.95718 19.8562C6.95718 19.7942 7.01912 19.7321 7.01912 19.6701C7.08116 19.7321 7.14316 19.7942 7.14316 19.7942C7.76353 20.5386 8.38389 21.221 9.00425 21.9654C9.81072 22.896 10.6173 23.8265 11.4238 24.7571C11.4858 24.8191 11.4857 24.8811 11.4857 25.0052C11.3616 25.2534 11.2996 25.4395 11.1755 25.6876C10.4931 27.1144 9.81081 28.5413 9.25249 29.9681C9.12841 30.2783 9.19039 30.4644 9.50057 30.5885C10.4931 31.0227 11.4858 31.3949 12.4783 31.7672C12.6644 31.8292 12.8505 31.8292 13.0366 31.8292C13.4088 31.8292 13.657 31.6431 13.9671 31.395C14.6495 30.7746 14.4635 29.6579 13.595 29.3478C13.3469 29.2237 13.0987 29.1616 12.7885 29.0376C12.7265 29.0376 12.7265 28.9755 12.6645 28.9755C12.6645 28.9135 12.7264 28.9135 12.7264 28.8515C13.2847 27.7348 13.7811 26.6802 14.3394 25.5635C14.7116 24.7571 14.5876 23.8886 14.0292 23.2062C13.7811 22.958 13.5949 22.7099 13.3468 22.4617C13.1607 22.2756 12.9747 22.0895 12.8506 21.8414C12.6645 21.5932 12.7264 21.3451 13.0366 21.283C13.1607 21.221 13.3469 21.221 13.471 21.159C14.2775 20.9729 15.0218 20.7247 15.8282 20.5386C15.8903 20.5386 15.9523 20.5386 16.0144 20.6006C16.3866 21.0349 16.8209 21.4691 17.1932 21.9654C17.6274 22.4617 18.0616 23.02 18.4958 23.5163C18.868 23.9506 19.3023 24.3848 19.7365 24.8191C19.9847 25.0672 20.1708 25.0672 20.481 24.8191C21.1634 24.1367 21.9079 23.4543 22.5903 22.8339C22.9625 22.5858 23.0866 22.0895 22.9005 21.4692ZM10.6793 14.9553C10.7414 14.7072 10.7414 14.397 10.8034 14.1489C11.1136 14.2109 11.3617 14.2109 11.6099 14.2729C11.858 14.335 12.044 14.1489 12.1061 13.9007C12.1681 13.2804 12.2303 12.598 12.2303 11.9776C12.2303 11.6674 12.2922 11.3572 12.2922 10.985C12.3542 10.6128 12.6024 10.3647 12.9747 10.3647C13.2848 10.3647 13.5329 10.6748 13.5329 11.0471C13.4709 12.0396 13.4088 13.0322 13.3468 14.0248C13.2227 15.0794 12.2301 15.7618 11.1755 15.5137C11.0514 15.5137 10.9274 15.4516 10.8653 15.3896C10.6792 15.2655 10.6173 15.1415 10.6793 14.9553ZM9.56267 13.9007C9.68674 13.9007 9.74878 13.9628 9.87285 13.9628C9.87285 14.0868 9.87279 14.1489 9.81075 14.2729C9.74872 14.1489 9.6247 14.0248 9.56267 13.9007ZM7.20526 12.8461C7.4534 12.9081 7.70161 13.0322 7.88772 13.2183C8.44604 13.9007 9.00425 14.5211 9.62461 15.2035C9.68665 15.2655 9.74874 15.3896 9.68671 15.4516C9.62467 15.7618 9.6247 16.072 9.56267 16.3822C9.56267 16.4442 9.50066 16.5063 9.43862 16.5063C8.50808 16.5683 7.51544 16.6924 6.5849 16.7544C6.52286 16.7544 6.52289 16.7544 6.46086 16.7544C6.58493 16.4442 6.64696 16.134 6.77104 15.8238C6.89511 15.4516 7.01909 15.0794 7.14316 14.7692C7.39131 14.0868 7.08122 13.4044 6.46086 13.0322C6.46086 13.0322 6.39876 13.0322 6.39876 12.9702C6.52283 12.8461 6.89508 12.7841 7.20526 12.8461ZM1.93218 11.6674C1.55996 11.1091 1.68403 10.1785 2.24236 9.62022C2.80069 9.0619 3.73126 8.87578 4.28959 9.248C3.48312 10.0545 2.67661 10.861 1.93218 11.6674ZM3.60713 12.7841C3.35898 12.5359 3.11087 12.2257 2.86272 11.9776C3.42105 11.3572 4.04144 10.7989 4.59977 10.1785L4.66171 10.2406C4.90986 10.5508 5.15812 10.7989 5.40627 11.1091C5.71645 11.5433 5.77846 11.9776 5.53031 12.4119C5.28217 12.8461 4.90992 13.0943 4.41363 13.0943C4.10345 13.0943 3.85527 12.9702 3.60713 12.7841ZM5.65435 18.9877C5.40621 18.9877 5.15809 19.0497 4.90995 18.9877C4.35162 18.9257 4.04144 18.4294 3.97941 17.871C3.97941 17.747 4.04135 17.6229 4.04135 17.4988C4.35153 16.3822 4.72387 15.2655 5.09609 14.1489C5.22016 13.8387 5.46821 13.6526 5.7784 13.6526C6.08858 13.6526 6.27478 13.9007 6.33681 14.2109C6.33681 14.2729 6.33681 14.397 6.33681 14.4591C6.08867 15.3276 5.77846 16.134 5.53031 17.0025C5.40624 17.3748 5.59238 17.6849 6.02663 17.6229C6.8331 17.5609 7.63957 17.4988 8.50808 17.3748C8.75623 17.3748 9.06629 17.3127 9.31443 17.3127C9.68665 17.2507 9.99695 17.4368 10.059 17.747C10.121 18.1192 9.93488 18.4294 9.56267 18.4914C9.12841 18.5534 8.63215 18.6155 8.1979 18.6155C7.39143 18.8016 6.52286 18.8636 5.65435 18.9877ZM7.88772 19.546C8.07383 19.546 8.25988 19.484 8.44598 19.484C8.8182 19.4219 9.19036 19.4219 9.62461 19.3599C10.245 19.2979 10.6173 18.9257 10.8034 18.3673C10.9895 17.809 10.8654 17.3127 10.4311 16.8785C10.3691 16.8164 10.3071 16.7544 10.3692 16.6303C10.4312 16.5062 10.4311 16.3822 10.4311 16.1961C11.1135 17.0025 11.7959 17.747 12.4162 18.4914C11.3616 19.422 10.307 20.2905 9.31443 21.221C8.88018 20.7247 8.38401 20.1664 7.88772 19.546ZM13.1608 30.2783C13.533 30.4644 13.595 30.7746 13.2848 31.0227C13.0987 31.2088 12.8505 31.2709 12.6024 31.1468C11.8579 30.8366 11.1136 30.5264 10.3692 30.2163C10.3071 30.2163 10.2451 30.1542 10.183 30.1542C10.3071 29.844 10.4311 29.5339 10.5552 29.2237C10.6792 29.2857 10.7413 29.2857 10.8653 29.3478C11.6098 29.6579 12.3543 29.9681 13.1608 30.2783ZM18.6199 22.6478C17.8754 21.7793 17.1311 20.9729 16.3867 20.1043C16.2626 19.9182 16.0764 19.8562 15.8282 19.9182C14.8977 20.1664 14.0292 20.4145 13.0987 20.6627C12.9746 20.6627 12.9126 20.7247 12.7885 20.7247C11.92 20.9108 11.5478 21.9654 12.1682 22.6478C12.5404 23.0821 12.9746 23.5784 13.3468 24.0126C13.719 24.4469 13.7811 24.9432 13.5329 25.4395C12.9746 26.5561 12.4784 27.6107 11.9201 28.7274C11.9201 28.7894 11.858 28.8515 11.858 28.9135C11.5478 28.7894 11.2376 28.6653 10.9274 28.5413C10.9274 28.4792 10.9895 28.4172 10.9895 28.4172C11.4858 27.4246 11.92 26.37 12.4162 25.3774C12.5403 25.1293 12.4784 24.9432 12.3543 24.7571C11.6099 23.8886 10.8654 23.0821 10.1209 22.2136C10.0589 22.1515 9.99689 22.0895 9.99689 22.0275C10.3691 21.7173 10.7413 21.4071 11.0515 21.0969C11.7339 20.5386 12.4162 19.9182 13.0366 19.3599C13.0986 19.2979 13.1608 19.2979 13.2848 19.2979C13.533 19.3599 13.781 19.3599 13.9671 19.2979C14.5255 19.1118 15.0838 18.9257 15.7042 18.8016C16.2625 18.6155 16.6967 18.8016 17.069 19.2358C17.8754 20.1664 18.682 21.159 19.4885 22.0895C19.4885 22.0895 19.5504 22.1515 19.5504 22.2136C19.3023 22.4617 19.0541 22.6478 18.806 22.896C18.6819 22.7099 18.6819 22.6478 18.6199 22.6478ZM21.9699 22.3997C21.3496 22.958 20.7292 23.5784 20.1088 24.1367L20.0467 24.1987C19.7986 23.9506 19.6126 23.7024 19.3644 23.5163C19.5505 23.3302 19.7366 23.1441 19.9227 22.958C20.419 22.4617 20.9153 22.0275 21.3496 21.5932C21.6597 21.3451 21.9699 21.4071 22.094 21.7793C22.218 21.9654 22.156 22.2136 21.9699 22.3997Z" fill="#8B8B8B"/>
											<path d="M4.35154 26.308C4.1034 26.2459 3.85532 26.37 3.79328 26.6182C3.73124 26.7422 3.73127 26.8663 3.66924 26.9904C3.42109 27.6728 3.17289 28.4172 2.98678 29.0996C2.86271 29.4718 3.04887 29.72 3.35906 29.72C3.54516 29.72 3.73124 29.5959 3.79328 29.4098C4.10346 28.5413 4.35154 27.6728 4.66173 26.8663C4.72376 26.6182 4.59969 26.37 4.35154 26.308Z" fill="#8B8B8B"/>
											</svg>

											<p>PARKS</p>
										</a>
									</div>
									<div class="news nav_icon">
										<a href="https://medium.com/@hacienda1800" target="_blank">
{* 											<img class="img-news" src="themes/hotel-reservation-theme/img/News.svg" /> *}
											<svg width="27" height="22" viewBox="0 0 27 22" fill="none" xmlns="http://www.w3.org/2000/svg">
											<path d="M24.1996 0H7.40567C6.34206 0 5.50228 0.8397 5.50228 1.90331V7.50128H1.97568C1.30392 7.50128 0.800049 8.00509 0.800049 8.67684V19.6489C0.800049 20.9364 1.86363 22 3.15117 22H3.71096H4.21486H5.44639H7.23771H22.0723C24.2555 22 26.1028 20.2087 26.1028 17.9695V1.79136C26.1028 0.839701 25.2632 0 24.1996 0ZM3.767 21.0483H3.2072C2.47947 21.0483 1.86361 20.4326 1.86361 19.7048V8.73283C1.86361 8.62087 1.91961 8.56489 2.03157 8.56489H5.55832V19.8168C5.55832 20.4886 4.99855 21.0483 4.32679 21.0483H3.767ZM25.0952 18.0254C25.0952 19.6489 23.7518 20.9924 22.1283 20.9924H7.29374H6.50994V19.7608V7.50128V1.90331C6.50994 1.3995 6.90186 1.00764 7.40567 1.00764H24.1996C24.7034 1.00764 25.0952 1.3995 25.0952 1.90331V18.0254Z" fill="#8B8B8B"/>
											<path d="M10.1485 10.5241H13.9552C14.6829 10.5241 15.2986 9.90832 15.2986 9.18058V5.37396C15.2986 4.64623 14.6829 4.03046 13.9552 4.03046H10.1485C9.42078 4.03046 8.80505 4.64623 8.80505 5.37396V9.18058C8.80505 9.90832 9.42078 10.5241 10.1485 10.5241ZM9.86861 5.37396C9.86861 5.20603 9.98057 5.09407 10.1485 5.09407H13.9552C14.1231 5.09407 14.2351 5.20603 14.2351 5.37396V9.18058C14.2351 9.34852 14.1231 9.46048 13.9552 9.46048H10.1485C9.98057 9.46048 9.86861 9.34852 9.86861 9.18058V5.37396Z" fill="#8B8B8B"/>
											<path d="M22.576 5.03815H17.5938C17.314 5.03815 17.0901 5.26207 17.0901 5.54197C17.0901 5.82187 17.314 6.04578 17.5938 6.04578H22.576C22.8559 6.04578 23.0799 5.82187 23.0799 5.54197C23.0799 5.26207 22.8559 5.03815 22.576 5.03815Z" fill="#8B8B8B"/>
											<path d="M22.576 8.00513H17.5938C17.314 8.00513 17.0901 8.22905 17.0901 8.50895C17.0901 8.78885 17.314 9.01276 17.5938 9.01276H22.576C22.8559 9.01276 23.0799 8.78885 23.0799 8.50895C23.0799 8.22905 22.8559 8.00513 22.576 8.00513Z" fill="#8B8B8B"/>
											<path d="M22.3521 12.2595H9.42072C9.14083 12.2595 8.91696 12.4834 8.91696 12.7633C8.91696 13.0432 9.14083 13.2672 9.42072 13.2672H22.3521C22.632 13.2672 22.8558 13.0432 22.8558 12.7633C22.8558 12.4834 22.632 12.2595 22.3521 12.2595Z" fill="#8B8B8B"/>
											<path d="M22.3521 15.0585H9.42072C9.14083 15.0585 8.91696 15.2824 8.91696 15.5623C8.91696 15.8422 9.14083 16.0662 9.42072 16.0662H22.3521C22.632 16.0662 22.8558 15.8422 22.8558 15.5623C22.8558 15.2824 22.632 15.0585 22.3521 15.0585Z" fill="#8B8B8B"/>
											<path d="M22.3521 17.8015H9.42072C9.14083 17.8015 8.91696 18.0254 8.91696 18.3053C8.91696 18.5852 9.14083 18.8091 9.42072 18.8091H22.3521C22.632 18.8091 22.8558 18.5852 22.8558 18.3053C22.8558 18.0254 22.632 17.8015 22.3521 17.8015Z" fill="#8B8B8B"/>
											</svg>

											<p>NEWS</p>
										</a>
									</div>
								</div>

								{if isset($HOOK_TOP)}{$HOOK_TOP}{/if}
							</div>
							{hook h='displaySearchHotelPanel'}
						</div>
					</div>
					{hook h='displayAfterHookTop'}
				</header>
			</div>
			<div class="columns-container">
				<div id="columns" class="container">
					{if $show_breadcrump}
						{include file="$tpl_dir./breadcrumb.tpl"}
					{/if}
					<div id="slider_row" class="row">
						<div id="top_column" class="center_column col-xs-12 col-sm-12">{hook h="displayTopColumn"}</div>
					</div>
					<div class="row">
						{if isset($left_column_size) && !empty($left_column_size)}
						<div id="left_column" class="column col-xs-12 col-sm-{$left_column_size|intval}">{$HOOK_LEFT_COLUMN}</div>
						{/if}
						{if isset($left_column_size) && isset($right_column_size)}{assign var='cols' value=(12 - $left_column_size - $right_column_size)}{else}{assign var='cols' value=12}{/if}
						<div id="center_column" class="center_column col-xs-12 col-sm-12">
	{/if}
