{* * 2010-2018 Webkul. * * NOTICE OF LICENSE * * All right is reserved, * Please go through this link for complete license : https://store.webkul.com/license.html * * DISCLAIMER * * Do not edit or add to this file if you wish to upgrade this module to
newer * versions in the future. If you wish to customize this module for your * needs please refer to https://store.webkul.com/customisation-guidelines/ for more information. * * @author Webkul IN
<support@webkul.com>
    * @copyright 2010-2018 Webkul IN * @license https://store.webkul.com/license.html *} {if $smarty.get.controller eq "features"}
    <div id="hotelAmenitiesBlock" class="row home_block_container">
        <div class="col-xs-12 col-md-12 col-lg-12">
            {if $hotelAmenities} {foreach from=$hotelAmenities item=amenity name=amenityBlock}

            <div class="row amenity no-gutters">
                <div class="col-xs-12 col-md-8 col-lg-8 nopadding">
                    <div class="media d-block" style="background-image: url({$module_dir|escape:'htmlall':'UTF-8'}views/img/hotels_features_img/{$amenity.id_features_block|escape:'htmlall':'UTF-8'}.jpg)">


                    </div>
                </div>
                <div class="col-xs-12 col-md-4 col-lg-4">
                    <div class="media-body">

                        <div class="media-body-cont">
                            <h2 class="media-heading">{$amenity['feature_title']|escape:'htmlall':'UTF-8'}</h2>
                            <hr>
                            <p>
                                {$amenity['feature_description']|escape:'htmlall':'UTF-8'}

                            </p>
                            {if $smarty.foreach.amenityBlock.first}
                            <p style="text-align: center;">
                                <a target="_blank" class="btn btn-default button htlRoomTypeBookNow" href="https://api.whatsapp.com/send?phone=5218662376908&text=Hola,%20quisiera%20m%C3%A1s%20informaci%C3%B3n"><span>Reservar</span></a>
                            </p>

                            {/if}

                        </div>







                    </div>
                </div>
            </div>
            {/foreach} {/if}
        </div>
    </div>
    {else}

    <div id="hotelAmenitiesBlock" class="row home_block_container">
        <div class="col-xs-12 col-sm-12 home_amenities_wrapper">
            <div class="row home_block_desc_wrapper">
                <div class="col-md-12 col-lg-12">
                    <h1 class="home_block_heading">
                        {if $lang_iso == 'es'}
                            {l s='Espacios'}
                        {elseif $lang_iso == 'en'}
                            {l s='Amenities'}
                        {/if}
                    </h1>
                    {*
                    <p class="home_block_description">{$HOTEL_AMENITIES_DESCRIPTION|escape:'htmlall':'UTF-8'}</p> *}
                </div>
            </div>


            {if $hotelAmenities}
            <div class="row homeAmenitiesBlock home_block_content">


                <div id="carouselExampleControls" class="slide">
                    <div class="main-content">
                        <div class="owl-carousel amenities owl-theme">
                            {* <div class="carousel-inner"> *}
                                {assign var='counter' value=1} {foreach from=$hotelAmenities item=amenity name=amenityBlock} {* {if $counter == 1}
                                <div class="carousel-item active">
                                    {else}
                                    <div class="carousel-item">
                                        {/if} *}
                                    <div class="item">
                                        <div class="media d-block w-100">
                                            <div class="">
                                                <a href="{$base_dir}/index.php?controller=features" style="width: 100%; height: 350px; overflow: hidden; display: block; background-image: url({$module_dir|escape:'htmlall':'UTF-8'}views/img/hotels_features_img/{$amenity.id_features_block|escape:'htmlall':'UTF-8'}.jpg); background-repeat: no-repeat; background-position: 50% 50%; background-size: cover;">
                                                    {* <img class="media-object" src="" alt="..."> *}
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
                                                    {*
                                                    <div class="col-md-3 col-lg-3">
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
                                {* <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a> *}
                            {* </div> *}
                            <div class="owl-controls hidden-xs hidden-sm">
                            <div class="amenities-nav owl-nav"></div>
                            </div>
                        </div>

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


        {/if}

<script type="text/javascript">
    $(document).ready(function(e) {
        
        if($('body').hasClass('index')){
            $('#hotelAmenitiesBlock .owl-carousel.amenities').owlCarousel({
            loop:true,
            margin: 10,
            items: 1,
            nav:true,
            navText : ["<svg width=\"29\" height=\"30\" viewBox=\"0 0 29 30\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M1.90735e-06 14.5561C1.90735e-06 22.5953 6.49187 29.1124 14.5 29.1124C22.5081 29.1124 29 22.5953 29 14.5561C29 6.51698 22.5081 0 14.5 0C6.49187 0 1.90735e-06 6.51698 1.90735e-06 14.5561Z\" fill=\"#005DCC\"/><path d=\"M8.76736 14.5562C8.76736 13.938 8.87976 13.2637 9.04837 12.7017C9.32938 11.8586 9.83518 11.0718 10.5096 10.3973L15.2867 5.67647C15.8487 5.11445 16.6918 5.17066 17.2538 5.67647C17.8158 6.23849 17.7596 7.08151 17.2538 7.64352L12.4766 12.3644C12.0832 12.7578 11.8022 13.1512 11.6898 13.6008C11.465 14.219 11.465 14.9497 11.6898 15.6241C11.8022 16.0175 12.0832 16.4671 12.4766 16.8605L17.2538 21.6377C17.8158 22.1997 17.8158 23.0427 17.2538 23.6047C16.6918 24.1667 15.8487 24.1667 15.2867 23.6047L10.5096 18.8276C9.77898 18.097 9.32938 17.3663 9.04837 16.5233C8.82356 15.7926 8.76736 15.1744 8.76736 14.5562Z\" fill=\"#F2F2F2\"/></svg>",
            "<svg width=\"29\" height=\"30\" viewBox=\"0 0 29 30\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M29 14.5563C29 6.51711 22.5081 0 14.5 0C6.49188 0 0 6.51711 0 14.5563C0 22.5954 6.49188 29.1124 14.5 29.1124C22.5081 29.1124 29 22.5954 29 14.5563Z\" fill=\"#005DCC\"/><path d=\"M20.2326 14.5562C20.2326 15.1744 20.1202 15.8487 19.9516 16.4108C19.6706 17.2538 19.1648 18.0407 18.4904 18.7151L13.7133 23.436C13.1513 23.998 12.3082 23.9418 11.7462 23.436C11.1842 22.8739 11.2404 22.0309 11.7462 21.4689L16.5234 16.748C16.9168 16.3546 17.1978 15.9612 17.3102 15.5116C17.535 14.8934 17.535 14.1627 17.3102 13.4883C17.1978 13.0949 16.9168 12.6453 16.5234 12.2519L11.7462 7.47477C11.1842 6.91276 11.1842 6.06973 11.7462 5.50772C12.3082 4.9457 13.1513 4.9457 13.7133 5.50772L18.4904 10.2848C19.221 11.0155 19.6706 11.7461 19.9516 12.5892C20.1764 13.3198 20.2326 13.938 20.2326 14.5562Z\" fill=\"#F2F2F2\"/>\</svg>"],
            navContainer: '.main-content .amenities-nav',
            dots: false,
            responsive: {
                0:{
                    stagePadding: 20
                },
                769:{
                    stagePadding: 80
                },
            }
        });
        }
        
    });
</script>
<style>
.main-content {
  position: relative;
}

.main-content .parks-nav {
  position: absolute;
  top: 45%;
  width: 100%;
  left: 0;
}

.main-content .owl-stage {
  padding-left: 0px !important;
}

.main-content .parks-nav .owl-prev, .main-content .parks-nav .owl-next{
  position: absolute;
  width: 100%;
  color: inherit;
  background: none;
  border: none;
  z-index: 100;
}

.main-content .parks-nav .owl-prev svg{
  position: absolute;
  left: 0px;
}

.main-content .parks-nav .owl-next svg{
  position: absolute;
  right: -15px;
}
</style>