{* * 2010-2018 Webkul. * * NOTICE OF LICENSE * * All right is reserved, * Please go through this link for complete license : https://store.webkul.com/license.html * * DISCLAIMER * * Do not edit or add to this file if you wish to upgrade this module to
newer * versions in the future. If you wish to customize this module for your * needs please refer to https://store.webkul.com/customisation-guidelines/ for more information. * * @author Webkul IN
<support@webkul.com>
    * @copyright 2010-2018 Webkul IN * @license https://store.webkul.com/license.html *} {if isset($is_index_page) && $is_index_page}
    <div class="header-desc-container">
        <div class="header-desc-wrapper">


            <div class="carousel slide carousel-fade" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <div class="item active">

                        <div id="header-panorama2" class="header-panorama">

                        </div>
                        <img src="{$img_ps_dir}360.svg" class="pano360icon" alt=""> {* <img src="{$img_ps_dir}hotel_header_lifestyle2.jpg" alt=""> *}

                    </div>
                    <div class="item lifestyle">
                        <div class="img" style="background-image: url('{$img_ps_dir}hotel_header_lifestyle.jpg');"></div>


                    </div>
                    <div class="item">

                        <div id="header-panorama1" class="header-panorama">

                        </div>
                        <img src="{$img_ps_dir}360.svg" class="pano360icon" alt="">

                    </div>
                    <div class="item lifestyle">
                        <div class="img" style="background-image: url('{$img_ps_dir}hotel_header_lifestyle2.jpg');"></div>


                    </div>
                </div>
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
                                {*
                                <p class="header-hotel-desc noselect">{$WK_HTL_TAG_LINE}</p> *}
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

    {*
    <div class="header-rmsearch-container header-rmsearch-show-xs visible-xs">
        {include file="./roomSearchWrapperXS.tpl"}
    </div>*} {/if} {strip} {addJsDefL name=no_results_found_cond}{l s='No results found for this search' js=1 mod='wkroomsearchblock'}{/addJsDefL} {addJsDefL name=hotel_loc_cond}{l s='Please enter a hotel location' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=hotel_name_cond}{l s='Please select a hotel name' js=1 mod='wkroomsearchblock'}{/addJsDefL} {addJsDefL name=check_in_time_cond}{l s='Please enter Check In time' js=1 mod='wkroomsearchblock'}{/addJsDefL} {addJsDefL name=check_out_time_cond}{l
    s='Please enter Check Out time' js=1 mod='wkroomsearchblock'}{/addJsDefL} {addJsDefL name=num_adults_cond}{l s='Please enter number of adults.' js=1 mod='wkroomsearchblock'}{/addJsDefL} {addJsDefL name=num_children_cond}{l s='Children' js=1 mod='wkroomsearchblock'}{/addJsDefL}
    {addJsDefL name=some_error_occur_cond}{l s='Some error occured. Please try again.' js=1 mod='wkroomsearchblock'}{/addJsDefL} {addJsDefL name=less_checkin_date}{l s='Use other date.' js=1 mod='wkroomsearchblock'}{/addJsDefL} {addJsDefL name=more_checkout_date}{l
    s='Check Out date must be greater than Check In date.' js=1 mod='wkroomsearchblock'}{/addJsDefL} {addJsDef autocomplete_search_url=$link->getModuleLink('wkroomsearchblock','autocompletesearch')} {/strip}

    <script>
        /* $('#hotel_cat_id').val('19');
                $('#id_hotel').val('1'); */
    </script>