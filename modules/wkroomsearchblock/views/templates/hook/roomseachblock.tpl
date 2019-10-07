{*
* 2010-2018 Webkul.
*
* NOTICE OF LICENSE
*
* All right is reserved,
* Please go through this link for complete license : https://store.webkul.com/license.html
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade this module to newer
* versions in the future. If you wish to customize this module for your
* needs please refer to https://store.webkul.com/customisation-guidelines/ for more information.
*
*  @author    Webkul IN <support@webkul.com>
*  @copyright 2010-2018 Webkul IN
*  @license   https://store.webkul.com/license.html
*}

{if isset($is_index_page) && $is_index_page}
<div class="header-desc-container">
    <div class="header-desc-wrapper">
        <div id="header-panorama">

        </div>
        <div class="header-desc-primary">

            <div class="container">
                <div class="row" style="pointer-events: none;">
                    <div class="col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
                        <img src="{$img_dir}logo.svg" alt="" class="noselect" style="width: 100%; height: auto; ">
                        <!-- <p class="header-desc-welcome">{l s='Welcome To' mod='hotelreservationsystem'}</p> -->
                        <!-- <hr class="heasder-desc-hr-first" /> -->
                        <div class="header-desc-inner-wrapper">
                            <!-- <h1 class="header-hotel-name">{$WK_HTL_CHAIN_NAME}</h1> -->
                            {* <p class="header-hotel-desc noselect">{$WK_HTL_TAG_LINE}</p> *}
                            <!-- <hr class="heasder-desc-hr-second" /> -->
                        </div>
                    </div>
                </div>
                {* {hook h="displayAfterHeaderHotelDesc"} *}
               <div class="row">
                <div class="header-rmsearch-container header-rmsearch-hide-xs hidden-xs">

                    {include file="./roomSearchWrapper.tpl"}

                </div>
               </div>
            </div>
        </div>

    </div>
</div>

    {*<div class="header-rmsearch-container header-rmsearch-show-xs visible-xs">
        {include file="./roomSearchWrapperXS.tpl"}
    </div>*}
{/if}
{strip}
    {addJsDefL name=no_results_found_cond}{l s='No results found for this search' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=hotel_loc_cond}{l s='Please enter a hotel location' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=hotel_name_cond}{l s='Please select a hotel name' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=check_in_time_cond}{l s='Please enter Check In time' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=check_out_time_cond}{l s='Please enter Check Out time' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=num_adults_cond}{l s='Please enter number of adults.' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=num_children_cond}{l s='Please enter number of children.' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=some_error_occur_cond}{l s='Some error occured. Please try again.' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=less_checkin_date}{l s='Check In date can not be before current date.' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=more_checkout_date}{l s='Check Out date must be greater than Check In date.' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDef autocomplete_search_url=$link->getModuleLink('wkroomsearchblock','autocompletesearch')}
{/strip}

<script>
    var wheight = $(window).height();
    var wwidth = $(window).width();
    var headerPanorama = pannellum.viewer('header-panorama', {
        "type": "equirectangular",
        "panorama": "{$img_ps_dir}hotel_header_panorama.jpg",
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
    if (wwidth < wheight) {
        // portrait
        headerPanorama.setHfov(50);
    } else {
        // landscape
        headerPanorama.setHfov(100);
    }
    var onChange = window.addEventListener("resize", function() {
        // Get screen size (inner/outerWidth, inner/outerHeight)

        if (wwidth < wheight) {
            // portrait
            headerPanorama.setHfov(50);
        } else {
            // landscape
            headerPanorama.setHfov(100);
        }
    }, false);
    $(document).ready(function() {
        $(window).bind(onChange);
    }).bind('load', onChange);
    $('#hotel_cat_id').val('15');
    $('#id_hotel').val('1');
</script>