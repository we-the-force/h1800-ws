{* * 2010-2018 Webkul. * * NOTICE OF LICENSE * * All right is reserved, * Please go through this link for complete license : https://store.webkul.com/license.html * * DISCLAIMER * * Do not edit or add to this file if you wish to upgrade this module to
newer * versions in the future. If you wish to customize this module for your * needs please refer to https://store.webkul.com/customisation-guidelines/ for more information. * * @author Webkul IN
<support@webkul.com>
    * @copyright 2010-2018 Webkul IN * @license https://store.webkul.com/license.html *}

    <div id="hotelAmenitiesBlock" class="row home_block_container">
        <div class="col-xs-12 col-sm-12 home_amenities_wrapper">
            <div class="row home_block_desc_wrapper">
                <div class="col-md-12 col-lg-12">
                    <h1 class="home_block_heading">{$HOTEL_AMENITIES_HEADING|escape:'htmlall':'UTF-8'}</h1>
                    {*
                    <p class="home_block_description">{$HOTEL_AMENITIES_DESCRIPTION|escape:'htmlall':'UTF-8'}</p> *}
                </div>
            </div>


            {if $hotelAmenities}
            <div class="row homeAmenitiesBlock home_block_content">


                <div id="carouselExampleControls" class=" slide" >
                    <div class="carousel-inner">
                        {assign var='counter' value=1} {foreach from=$hotelAmenities item=amenity name=amenityBlock} {if $counter == 1}
                        <div class="carousel-item active">
                            {else}
                            <div class="carousel-item">
                                {/if}
                                <div class="media d-block w-100">
                                    <div class="">
                                        <a href="#">
                                            <img class="media-object" src="{$module_dir|escape:'htmlall':'UTF-8'}views/img/hotels_features_img/{$amenity.id_features_block|escape:'htmlall':'UTF-8'}.jpg" alt="...">
                                        </a>
                                    </div>
                                    <div class="media-body">
                                        <div class="row">
                                            <div class="col-md-9 col-lg-9">
                                                <h2 class="media-heading">{$amenity['feature_title']|escape:'htmlall':'UTF-8'}</h2>
                                                <p>
                                                    {$amenity['feature_description']|escape:'htmlall':'UTF-8'}
                                                </p>
                                                <a href="{$base_dir}/index.php?controller=features" class="link">
                                                    Ver más...
                                                </a>
                                            </div>
                                            {* <div class="col-md-3 col-lg-3">
                                                <a href="" class="btn button btn-default ">
                                                    <span>Conocer más</span>
                                                </a>
                                            </div> *}
                                        </div>


                                    </div>
                                </div>
                            </div>
                            {$counter=$counter+1} {/foreach}

                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                {*
                <div class="row homeAmenitiesBlock home_block_content">

                    <div class="amenitiesContainer">
                        {foreach from=$hotelAmenities item=amenity name=amenityBlock}
                        <div class="amenity">
                            <div class="media">
                                <div class="">
                                    <a href="#">
                                        <img class="media-object" src="{$module_dir|escape:'htmlall':'UTF-8'}views/img/hotels_features_img/{$amenity.id_features_block|escape:'htmlall':'UTF-8'}.jpg" alt="...">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <h2 class="media-heading">{$amenity['feature_title']|escape:'htmlall':'UTF-8'}</h2>
                                    <p>
                                        {$amenity['feature_description']|escape:'htmlall':'UTF-8'}
                                    </p>
                                </div>
                            </div>
                        </div>
                        {/foreach}

                    </div>
                </div> *} {/if}

            </div>
            <hr class="home_block_seperator" />
        </div>
        <script>
            $(document).ready(function() {
            });
        </script>