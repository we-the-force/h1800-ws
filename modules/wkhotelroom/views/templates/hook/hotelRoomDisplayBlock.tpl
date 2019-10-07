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

{if ($HOTEL_ROOM_DISPLAY_HEADING && $HOTEL_ROOM_DISPLAY_DESCRIPTION) || $hotelRoomDisplay}
    <div id="hotelRoomsBlock" class="row home_block_container">
        <div class="col-xs-12 col-sm-12">
            {if $HOTEL_ROOM_DISPLAY_HEADING && $HOTEL_ROOM_DISPLAY_DESCRIPTION}
                <div class="row home_block_desc_wrapper">
                    <div class=" col-md-12  col-lg-12">
                        <h1 class="home_block_heading">{l s='Our Roomss' mod='wkhotelroom'}</h1>
                        {* <p class="home_block_description">{$HOTEL_ROOM_DISPLAY_DESCRIPTION|escape:'htmlall':'UTF-8'}</p>
                        <hr class="home_block_desc_line"/> *}
                    </div>
                </div>
            {/if}
            {if $hotelRoomDisplay}
                <div class="row home_block_content">
                    <div class="col-sm-12 col-xs-12">
                        {assign var='htlRoomBlockIteration' value=0}
                        {foreach from=$hotelRoomDisplay item=roomDisplay name=htlRoom}
                            {if $smarty.foreach.htlRoom.iteration%2}
                                <div class="row">
                            {/if}
                                    <div class="col-sm-12 col-md-6 margin-btm-30">
                                        <img src="{$roomDisplay.image|escape:'htmlall':'UTF-8'}" alt="{$roomDisplay.name|escape:'htmlall':'UTF-8'}" class="img-responsive width-100">
                                        <div class="hotelRoomDescContainer">
                                            <div class="row margin-lr-0">
                                                <h2 class="htlRoomTypeNameText col-xs-6 pull-left">{$roomDisplay.name|escape:'htmlall':'UTF-8'}</h2>
                                                {if $roomDisplay.show_price && !isset($restricted_country_mode) && !$PS_CATALOG_MODE}
                                                    <h3 class="htlRoomTypePriceText col-xs-6 pull-right">
                                                        {if $roomDisplay.feature_price_diff >= 0}
                                                             {convertPrice price = $roomDisplay.price_without_reduction}
                                                        {/if}
                                                        {if $roomDisplay.feature_price_diff}
                                                            {convertPrice price = $roomDisplay.feature_price}
                                                        {/if}
                                                        <br/>
                                                        <span class="wk_roomType_price">
                                                        &nbsp;{l s='Per Night' mod='wkhotelroom'}
                                                        </span>
                                                    </h3>
                                                {/if}
                                            </div>
                                            <div class="row margin-lr-0 htlRoomTypeDescText hidden-xs">
                                                {$roomDisplay.description}
                                            </div>
                                            <div class="row margin-lr-0" style="text-align: right;">
                                                <a target="blank" class="btn btn-default button htlRoomTypeBookNow" href="{$link->getProductLink($roomDisplay.id_product)|escape:'html':'UTF-8'}"><span>{l s='book now' mod='wkhotelroom'}</span></a>
                                            </div>
                                        </div>
                                    </div>
                            {if !($smarty.foreach.htlRoom.iteration%2)}
                                </div>
                            {/if}
                            {assign var='htlRoomBlockIteration' value=$smarty.foreach.htlRoom.iteration}
                        {/foreach}
                        {if $htlRoomBlockIteration%2}
                            </div>
                        {/if}
                    </div>
                </div>
            {/if}
        </div>
        <hr class="home_block_seperator"/>
    </div>
{/if}