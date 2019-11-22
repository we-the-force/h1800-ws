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
                    <div class="col-sm-12 col-xs-12 main-content">
                        <div class="owl-carousel rooms owl-theme">
                            {assign var='htlRoomBlockIteration' value=0}
                            {foreach from=$hotelRoomDisplay item=roomDisplay name=htlRoom}
                                {* {if $smarty.foreach.htlRoom.iteration%2}
                                    <div class="row">
                                {/if} *}
                                    <div class="item">
                                        <div class="margin-btm-30">
                                            {* <img src="{$roomDisplay.image|escape:'htmlall':'UTF-8'}" alt="{$roomDisplay.name|escape:'htmlall':'UTF-8'}" class="img-responsive width-100"> *}
                                            <img src="{$base_dir}img/rooms/{$roomDisplay.id_product}/DSC_01.jpg" alt="{$roomDisplay.name|escape:'htmlall':'UTF-8'}" class="img-responsive width-100">
                                            <div class="hotelRoomDescContainer">
                                                <div class="row margin-lr-0">
                                                    <h2 class="htlRoomTypeNameText col-xs-6 pull-left">{$roomDisplay.name|escape:'htmlall':'UTF-8'}</h2>
                                                    {if $roomDisplay.show_price && !isset($restricted_country_mode) && !$PS_CATALOG_MODE}
                                                        <h3 class="htlRoomTypePriceText col-xs-6 pull-right">
                                                            {* {$roomDisplay|@var_dump} *}
                                                            {* {convertPrice price = $roomDisplay.feature_price} *}
                                                            {if $roomDisplay.feature_price_diff > 0}
                                                                {convertPrice price = $roomDisplay.feature_price}
                                                            {elseif $roomDisplay.feature_price_diff == 0}
                                                                {convertPrice price = $roomDisplay.price_without_reduction}
                                                            {/if}
                                                            {* {if $roomDisplay.feature_price_diff >= 0}
                                                                {convertPrice price = $roomDisplay.price_without_reduction}
                                                            {/if}
                                                            {if $roomDisplay.feature_price_diff}
                                                                {convertPrice price = $roomDisplay.feature_price}
                                                            {/if} *}
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
                                                    <a target="" class="btn btn-default button htlRoomTypeBookNow" href="{$link->getProductLink($roomDisplay.id_product)|escape:'html':'UTF-8'}"><span>{if $lang_iso == 'es'} {l s='Reservar'} {elseif $lang_iso == 'en'} {l s='Book Now'} {/if}</span></a>{* actualizar el problema del idioma *}
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                {* {if !($smarty.foreach.htlRoom.iteration%2)}
                                    </div>
                                {/if} *}
                                {assign var='htlRoomBlockIteration' value=$smarty.foreach.htlRoom.iteration}
                            {/foreach}
                            {if $htlRoomBlockIteration%2}
                                </div>
                            {/if}
                        </div>
                        <div class="owl-controls hidden-xs hidden-sm">
                        <div class="rooms-nav owl-nav"></div>
                        </div>

                        {* <div class="owl-controls hidden-xs hidden-sm">
                        <div class="rooms-nav owl-nav disabled" style="position: absolute; top: 45%; width: 100%; left: 0;"><div class="owl-prev"><svg width="29" height="30" viewBox="0 0 29 30" fill="none" xmlns="http://www.w3.org/2000/svg" style="position: absolute;
                        left: 0;"><path d="M1.90735e-06 14.5561C1.90735e-06 22.5953 6.49187 29.1124 14.5 29.1124C22.5081 29.1124 29 22.5953 29 14.5561C29 6.51698 22.5081 0 14.5 0C6.49187 0 1.90735e-06 6.51698 1.90735e-06 14.5561Z" fill="#005DCC"></path><path d="M8.76736 14.5562C8.76736 13.938 8.87976 13.2637 9.04837 12.7017C9.32938 11.8586 9.83518 11.0718 10.5096 10.3973L15.2867 5.67647C15.8487 5.11445 16.6918 5.17066 17.2538 5.67647C17.8158 6.23849 17.7596 7.08151 17.2538 7.64352L12.4766 12.3644C12.0832 12.7578 11.8022 13.1512 11.6898 13.6008C11.465 14.219 11.465 14.9497 11.6898 15.6241C11.8022 16.0175 12.0832 16.4671 12.4766 16.8605L17.2538 21.6377C17.8158 22.1997 17.8158 23.0427 17.2538 23.6047C16.6918 24.1667 15.8487 24.1667 15.2867 23.6047L10.5096 18.8276C9.77898 18.097 9.32938 17.3663 9.04837 16.5233C8.82356 15.7926 8.76736 15.1744 8.76736 14.5562Z" fill="#F2F2F2"></path></svg></div><div class="owl-next"><svg width="29" height="30" viewBox="0 0 29 30" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M29 14.5563C29 6.51711 22.5081 0 14.5 0C6.49188 0 0 6.51711 0 14.5563C0 22.5954 6.49188 29.1124 14.5 29.1124C22.5081 29.1124 29 22.5954 29 14.5563Z" fill="#005DCC"></path><path d="M20.2326 14.5562C20.2326 15.1744 20.1202 15.8487 19.9516 16.4108C19.6706 17.2538 19.1648 18.0407 18.4904 18.7151L13.7133 23.436C13.1513 23.998 12.3082 23.9418 11.7462 23.436C11.1842 22.8739 11.2404 22.0309 11.7462 21.4689L16.5234 16.748C16.9168 16.3546 17.1978 15.9612 17.3102 15.5116C17.535 14.8934 17.535 14.1627 17.3102 13.4883C17.1978 13.0949 16.9168 12.6453 16.5234 12.2519L11.7462 7.47477C11.1842 6.91276 11.1842 6.06973 11.7462 5.50772C12.3082 4.9457 13.1513 4.9457 13.7133 5.50772L18.4904 10.2848C19.221 11.0155 19.6706 11.7461 19.9516 12.5892C20.1764 13.3198 20.2326 13.938 20.2326 14.5562Z" fill="#F2F2F2"></path></svg></div></div>
                        </div> *}
                    </div>
                </div>
            {/if}
        </div>
        <hr class="home_block_seperator"/>
    </div>
{/if}
<script type="text/javascript">
    $(document).ready(function(e) {
       $('#hotelRoomsBlock .owl-carousel.rooms').owlCarousel({
            loop:true,
            margin: 10,
            nav:true,
            navText : ["<svg width=\"29\" height=\"30\" viewBox=\"0 0 29 30\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M1.90735e-06 14.5561C1.90735e-06 22.5953 6.49187 29.1124 14.5 29.1124C22.5081 29.1124 29 22.5953 29 14.5561C29 6.51698 22.5081 0 14.5 0C6.49187 0 1.90735e-06 6.51698 1.90735e-06 14.5561Z\" fill=\"#005DCC\"/><path d=\"M8.76736 14.5562C8.76736 13.938 8.87976 13.2637 9.04837 12.7017C9.32938 11.8586 9.83518 11.0718 10.5096 10.3973L15.2867 5.67647C15.8487 5.11445 16.6918 5.17066 17.2538 5.67647C17.8158 6.23849 17.7596 7.08151 17.2538 7.64352L12.4766 12.3644C12.0832 12.7578 11.8022 13.1512 11.6898 13.6008C11.465 14.219 11.465 14.9497 11.6898 15.6241C11.8022 16.0175 12.0832 16.4671 12.4766 16.8605L17.2538 21.6377C17.8158 22.1997 17.8158 23.0427 17.2538 23.6047C16.6918 24.1667 15.8487 24.1667 15.2867 23.6047L10.5096 18.8276C9.77898 18.097 9.32938 17.3663 9.04837 16.5233C8.82356 15.7926 8.76736 15.1744 8.76736 14.5562Z\" fill=\"#F2F2F2\"/></svg>",
            "<svg width=\"29\" height=\"30\" viewBox=\"0 0 29 30\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M29 14.5563C29 6.51711 22.5081 0 14.5 0C6.49188 0 0 6.51711 0 14.5563C0 22.5954 6.49188 29.1124 14.5 29.1124C22.5081 29.1124 29 22.5954 29 14.5563Z\" fill=\"#005DCC\"/><path d=\"M20.2326 14.5562C20.2326 15.1744 20.1202 15.8487 19.9516 16.4108C19.6706 17.2538 19.1648 18.0407 18.4904 18.7151L13.7133 23.436C13.1513 23.998 12.3082 23.9418 11.7462 23.436C11.1842 22.8739 11.2404 22.0309 11.7462 21.4689L16.5234 16.748C16.9168 16.3546 17.1978 15.9612 17.3102 15.5116C17.535 14.8934 17.535 14.1627 17.3102 13.4883C17.1978 13.0949 16.9168 12.6453 16.5234 12.2519L11.7462 7.47477C11.1842 6.91276 11.1842 6.06973 11.7462 5.50772C12.3082 4.9457 13.1513 4.9457 13.7133 5.50772L18.4904 10.2848C19.221 11.0155 19.6706 11.7461 19.9516 12.5892C20.1764 13.3198 20.2326 13.938 20.2326 14.5562Z\" fill=\"#F2F2F2\"/>\</svg>"],
            navContainer: '#hotelRoomsBlock .rooms-nav',
            dots: false,
            responsive: {
                0:{
                    items:1,
                    stagePadding: 20
                },
                769:{
                    items:2,
                    stagePadding: 50
                },
            }
        });
    });
</script>