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

<div id="hotelInteriorBlock" class="row home_block_container">
    <div class="col-xs-12 col-sm-12">
        {* <div class="row home_block_desc_wrapper">
            <div class="col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
                <p class="home_block_heading"> test {$HOTEL_INTERIOR_HEADING|escape:'htmlall':'UTF-8'}</p>
                <p class="home_block_description">{$HOTEL_INTERIOR_DESCRIPTION|escape:'htmlall':'UTF-8'}</p>
                <hr class="home_block_desc_line"/>
            </div>
        </div>
        {if $InteriorImg}
            <div class="row home_block_content htlInterior-owlCarousel">
                <div class="col-sm-12 col-xs-12">
                    <div class="owl-carousel owl-theme">
                        {assign var='intImgIteration' value=0}
                        {foreach from=$InteriorImg item=img_name name=intImg}
                            {if $smarty.foreach.intImg.iteration%3 == 1}
                            <div class="interiorImgWrapper">
                            {/if}
                                <div class="interiorbox" data-fancybox-group="interiorGallery" rel="interiorGallery" href="{$module_dir|escape:'htmlall':'UTF-8'}views/img/hotel_interior/{$img_name['name']|escape:'htmlall':'UTF-8'}" title="{$img_name['display_name']|escape:'htmlall':'UTF-8'}">
                                    <div class="interiorboxInner">
                                        <img src="{$module_dir|escape:'htmlall':'UTF-8'}views/img/hotel_interior/{$img_name['name']|escape:'htmlall':'UTF-8'}" class="interiorImg" alt="{$img_name['display_name']|escape:'htmlall':'UTF-8'}">
                                    </div>
                                    <div class="interiorHoverBlockWrapper">
                                        <div class="interiorHoverPrimaryBlock">
                                            <div class="interiorHoverSecondaryBlock">
                                                <i class="icon-search-plus"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            {if $smarty.foreach.intImg.iteration%3 == 0}
                            </div>
                            {/if}
                            {assign var='intImgIteration' value=$smarty.foreach.intImg.iteration}
                        {/foreach}
                        {if $intImgIteration%3}
                            {assign var='intImgLeft' value=3-($intImgIteration%3)}
                            {for $foo=1 to $intImgLeft}
                                <div class="interiorbox">
                                    <div class="interiorboxInner">
                                        <img src="{$module_dir|escape:'htmlall':'UTF-8'}views/img/Default-Image.png" class="interiorImg" alt="Default Image">
                                    </div>
                                </div>
                            {/for}
                            </div>
                        {/if}
                    </div>
                </div>
            </div>
        {/if} *}
        <!-- SnapWidget -->
        <script src="https://snapwidget.com/js/snapwidget.js"></script>
        <iframe src="https://snapwidget.com/embed/726558" class="snapwidget-widget" allowtransparency="true" frameborder="0" scrolling="no" style="border:none; width:100%; height: 1195px;"></iframe>

    </div>
    <hr class="home_block_seperator"/>
</div>