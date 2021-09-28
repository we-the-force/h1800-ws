{* * 2010-2018 Webkul. * * NOTICE OF LICENSE * * All right is reserved, * Please go through this link for complete license : https://store.webkul.com/license.html * * DISCLAIMER * * Do not edit or add to this file if you wish to upgrade this module to
newer * versions in the future. If you wish to customize this module for your * needs please refer to https://store.webkul.com/customisation-guidelines/ for more information. * * @author Webkul IN
<support@webkul.com>
    * @copyright 2010-2018 Webkul IN * @license https://store.webkul.com/license.html *}

    <div id="hotelInteriorBlock" class="row home_block_container">
        <div class="col-xs-12 col-sm-12">
            {*
            <div class="row home_block_desc_wrapper">
                <div class="col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
                    <p class="home_block_heading"> test {$HOTEL_INTERIOR_HEADING|escape:'htmlall':'UTF-8'}</p>
                    <p class="home_block_description">{$HOTEL_INTERIOR_DESCRIPTION|escape:'htmlall':'UTF-8'}</p>
                    <hr class="home_block_desc_line" />
                </div>
            </div>
            {if $InteriorImg}
            <div class="row home_block_content htlInterior-owlCarousel">
                <div class="col-sm-12 col-xs-12">
                    <div class="owl-carousel owl-theme">
                        {assign var='intImgIteration' value=0} {foreach from=$InteriorImg item=img_name name=intImg} {if $smarty.foreach.intImg.iteration%3 == 1}
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
                        {/if} {assign var='intImgIteration' value=$smarty.foreach.intImg.iteration} {/foreach} {if $intImgIteration%3} {assign var='intImgLeft' value=3-($intImgIteration%3)} {for $foo=1 to $intImgLeft}
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

        <div id="instagram-feed1" class="row instagram_feed"></div>
    </div>
    <hr class="home_block_seperator" />
    </div>
    <div id="hotelActivitiesBlock" class="row home_block_container">

        <div class="row home_block_desc_wrapper">
            <div class="col-md-12 col-lg-12">
                <h1 class="home_block_heading">
                    {if $lang_iso == 'es'} {l s='Parques'} {elseif $lang_iso == 'en'} {l s='Parks'} {/if}
                </h1>

            </div>
        </div>
        <div class="main-content">
            <div class="owl-carousel parks owl-theme">
                <div class="item">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <a class="activity-link" style="width: 100%; height: 340px; overflow: hidden; display: block; background-image: url({$img_dir}parks/DUNAS_YESO_1.jpg); background-repeat: no-repeat; background-position: 50% 50%; background-size: cover;" href="{$base_url}experiences">
                            {* <img style="width: 100%; height: auto;" src="{$img_dir}parks/DUNAS_YESO_1.jpg" class="img-responsive"> *}
                        </a>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h3 class="text-center" style="color: #1f1f1f;">
                            {if $lang_iso == 'es'} {l s='Dunas de yeso'} {elseif $lang_iso == 'en'} {l s='Plaster dunes'} {/if}

                        </h3>
                        <p class="text-center">
                            {if $lang_iso == 'es'} {l s='Majestuosas dunas de yeso formadas por la evaporación del mar Tetis.'} {elseif $lang_iso == 'en'} {l s='Majestic plaster dunes formed by the evaporation of the Tetis Sea.'} {/if}
                        </p>
                    </div>
                </div>
                <div class="item">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <a class="activity-link" style="width: 100%; height: 340px; overflow: hidden; display: block; background-image: url({$img_dir}parks/CAÑON_GRANDE_3.jpg); background-repeat: no-repeat; background-position: 50% 50%; background-size: cover;" href="{$base_url}experiences">
                            {* <img style="width: 100%; height: auto;" src="{$img_dir}parks/DUNAS_YESO_1.jpg" class="img-responsive"> *}
                        </a>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h3 class="text-center" style="color: #1f1f1f;">
                            {if $lang_iso == 'es'} {l s='Cañón grande'} {elseif $lang_iso == 'en'} {l s='Big canyon'} {/if}

                        </h3>
                        <p class="text-center">
                            {if $lang_iso == 'es'} {l s='Vive una nueva aventura y redescubre el horizonte.'} {elseif $lang_iso == 'en'} {l s='Live a new adventure and rediscover the horizon.'} {/if}
                        </p>
                    </div>
                </div>
                <div class="item">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <a class="activity-link" style="width: 100%; height: 340px; overflow: hidden; display: block; background-image: url({$img_dir}parks/RIO_MEZQUITES_5.jpg); background-repeat: no-repeat; background-position: 50% 50%; background-size: cover;" href="{$base_url}experiences">
                            {* <img style="width: 100%; height: auto;" src="{$img_dir}parks/DUNAS_YESO_1.jpg" class="img-responsive"> *}
                        </a>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h3 class="text-center" style="color: #1f1f1f;">
                            {if $lang_iso == 'es'} {l s='Río San Marcos'} {elseif $lang_iso == 'en'} {l s='San Marcos River'} {/if}

                        </h3>
                        <p class="text-center">
                            {if $lang_iso == 'es'} {l s='Una diversidad de colores y refrescantes experiencias.'} {elseif $lang_iso == 'en'} {l s='A diversity of colors and refreshing experiences.'} {/if}
                        </p>
                    </div>
                </div>
                <div class="item">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <a class="activity-link" style="width: 100%; height: 340px; overflow: hidden; display: block; background-image: url({$img_dir}parks/MINA_MARMOL_6.jpg); background-repeat: no-repeat; background-position: 50% 50%; background-size: cover;" href="{$base_url}experiences">
                            {* <img style="width: 100%; height: auto;" src="{$img_dir}parks/DUNAS_YESO_1.jpg" class="img-responsive"> *}
                        </a>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h3 class="text-center" style="color: #1f1f1f;">
                            {if $lang_iso == 'es'} {l s='Mina de mármol'} {elseif $lang_iso == 'en'} {l s='Marble mine'} {/if}

                        </h3>
                        <p class="text-center">
                            {if $lang_iso == 'es'} {l s='Disfruta de una espectacular vista entre largos bloques de mármol.'} {elseif $lang_iso == 'en'} {l s='Enjoy a spectacular view between long marble blocks.'} {/if}
                        </p>
                    </div>
                </div>
            </div>
            <div class="owl-controls hidden-xs hidden-sm">
            <div class="parks-nav owl-nav"></div>
            </div>
        </div>
    </div>
{*---------------DINING--------------*}
    <div id="hotelInteriorBlock1" class="row home_block_container">
        <div class="col-xs-12 col-sm-12">

        <div id="instagram-feed1" class="row instagram_feed"></div>
    </div>
    <hr class="home_block_seperator" />
    </div>
    <div id="hotelActivitiesBlock1" class="row home_block_container">

        <div class="row home_block_desc_wrapper">
            <div class="col-md-12 col-lg-12">
                <h1 class="home_block_heading">
                    {if $lang_iso == 'es'} {l s='Gastronomía'} {elseif $lang_iso == 'en'} {l s='Dining'} {/if}
                </h1>

            </div>
        </div>
        <div class="main-content">
            <div class="owl-carousel dining owl-theme">
                <div class="item"> {*Number 1*}
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <a class="activity-link" style="width: 100%; height: 340px; overflow: hidden; display: block; background-image: url({$img_dir}parks/DINING_CENA_ROMANTICA.jpg); background-repeat: no-repeat; background-position: 50% 50%; background-size: cover;" href="{$base_url}/experiences/#!/dining">
                            {* <img style="width: 100%; height: auto;" src="{$img_dir}parks/DUNAS_YESO_1.jpg" class="img-responsive"> *}
                        </a>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 ">
                        <h3 class="text-center" style="color: #1f1f1f;">
                            {if $lang_iso == 'es'} {l s='Cena Romántica'} {elseif $lang_iso == 'en'} {l s='Romantic Dinner'} {/if}

                        </h3>
                        <p class="text-center">
                            {if $lang_iso == 'es'} {l s='Vive una experiencia mágica junto a tu persona favorita en Río San Marcos. Una velada romántica donde podrán contemplar las estrellas mientras degustan nuestros exquisitos platillos y vinos.'} {elseif $lang_iso == 'en'} {l s='Experience a magical moment beside your favorite person in Río San Marcos. A romantic evening where you will be able to contemplate the stars while you taste our exquisite dishes and wines.'} {/if}
                        </p>
                    </div>
                </div>
                <div class="item">{*Number 2*}
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <a class="activity-link" style="width: 100%; height: 340px; overflow: hidden; display: block; background-image: url({$img_dir}parks/DINING_PICNIC.jpg); background-repeat: no-repeat; background-position: 50% 50%; background-size: cover;" href="{$base_url}/experiences/#!/dining">
                            {* <img style="width: 100%; height: auto;" src="{$img_dir}parks/DUNAS_YESO_1.jpg" class="img-responsive"> *}
                        </a>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h3 class="text-center" style="color: #1f1f1f;">
                            {if $lang_iso == 'es'} {l s='Picnic Romántico'} {elseif $lang_iso == 'en'} {l s='Romantic Picnic'} {/if}

                        </h3>
                        <p class="text-center">
                            {if $lang_iso == 'es'} {l s='Confía en nosotros para hacer de tu velada un recuerdo que perdure para toda la vida con un romántico Picnic al atardecer en Dunas de Yeso.'} {elseif $lang_iso == 'en'} {l s='Trust us to make your evening a memory that will last a lifetime with a romantic picnic under the Gypsum Dunes\' sunset.'} {/if}
                        </p>
                    </div>
                </div>
                <div class="item">{*Number 3*}
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <a class="activity-link" style="width: 100%; height: 340px; overflow: hidden; display: block; background-image: url({$img_dir}parks/DINING_PICNIC_TRADICIONAL.jpg); background-repeat: no-repeat; background-position: 50% 50%; background-size: cover;" href="{$base_url}/experiences/#!/dining">
                            {* <img style="width: 100%; height: auto;" src="{$img_dir}parks/DUNAS_YESO_1.jpg" class="img-responsive"> *}
                        </a>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h3 class="text-center" style="color: #1f1f1f;">
                            {if $lang_iso == 'es'} {l s='Picnic Tradicional'} {elseif $lang_iso == 'en'} {l s='Traditional Picnic'} {/if}

                        </h3>
                        <p class="text-center">
                            {if $lang_iso == 'es'} {l s='Vive una experiencia multisensorial en Dunas de Yeso; degustando una copa de vino mientras contemplas un hermoso atardecer en el increíble paisaje de arena blanca rodeada de montañas.'} {elseif $lang_iso == 'en'} {l s='Live a multisensorial experience in the Gypsum Dunes; sipping a glass of wine while you contemplate a beautiful sunset in the incredible white sand horizon surrounded by mountains.'} {/if}
                        </p>
                    </div>
                </div>
                <div class="item">{*Number 4*}
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <a class="activity-link" style="width: 100%; height: 340px; overflow: hidden; display: block; background-image: url({$img_dir}parks/DINING_VELADA_ASTRONOMICA.jpg); background-repeat: no-repeat; background-position: 50% 50%; background-size: cover;" href="{$base_url}/experiences/#!/dining">
                            {* <img style="width: 100%; height: auto;" src="{$img_dir}parks/DUNAS_YESO_1.jpg" class="img-responsive"> *}
                        </a>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <h3 class="text-center" style="color: #1f1f1f;">
                            {if $lang_iso == 'es'} {l s='Velada Astronómica'} {elseif $lang_iso == 'en'} {l s='Astronomical Evening'} {/if}

                        </h3>
                        <p class="text-center">
                            {if $lang_iso == 'es'} {l s='Disfruta de una velada astronómica en Río San Marcos contemplando las estrellas y degustando nuestros exquisitos platillos acompañados de un buen vino.'} {elseif $lang_iso == 'en'} {l s='Enjoy an astronomical evening in Río San Marcos contemplating the stars and tasting our exquisite dishes accompanied by some great wine.'} {/if}
                        </p>
                    </div>
                </div>
            </div>
            <div class="owl-controls hidden-xs hidden-sm">
            <div class="dining-nav owl-nav"></div>
            </div>
        </div>
    </div>
<script type="text/javascript">
    $(document).ready(function(e) {
        $('#hotelActivitiesBlock .owl-carousel.parks').owlCarousel({
            loop:true,
            margin: 10,
            items: 1,
            nav:true,
            navText : ["<svg width=\"29\" height=\"30\" viewBox=\"0 0 29 30\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M1.90735e-06 14.5561C1.90735e-06 22.5953 6.49187 29.1124 14.5 29.1124C22.5081 29.1124 29 22.5953 29 14.5561C29 6.51698 22.5081 0 14.5 0C6.49187 0 1.90735e-06 6.51698 1.90735e-06 14.5561Z\" fill=\"#005DCC\"/><path d=\"M8.76736 14.5562C8.76736 13.938 8.87976 13.2637 9.04837 12.7017C9.32938 11.8586 9.83518 11.0718 10.5096 10.3973L15.2867 5.67647C15.8487 5.11445 16.6918 5.17066 17.2538 5.67647C17.8158 6.23849 17.7596 7.08151 17.2538 7.64352L12.4766 12.3644C12.0832 12.7578 11.8022 13.1512 11.6898 13.6008C11.465 14.219 11.465 14.9497 11.6898 15.6241C11.8022 16.0175 12.0832 16.4671 12.4766 16.8605L17.2538 21.6377C17.8158 22.1997 17.8158 23.0427 17.2538 23.6047C16.6918 24.1667 15.8487 24.1667 15.2867 23.6047L10.5096 18.8276C9.77898 18.097 9.32938 17.3663 9.04837 16.5233C8.82356 15.7926 8.76736 15.1744 8.76736 14.5562Z\" fill=\"#F2F2F2\"/></svg>",
            "<svg width=\"29\" height=\"30\" viewBox=\"0 0 29 30\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M29 14.5563C29 6.51711 22.5081 0 14.5 0C6.49188 0 0 6.51711 0 14.5563C0 22.5954 6.49188 29.1124 14.5 29.1124C22.5081 29.1124 29 22.5954 29 14.5563Z\" fill=\"#005DCC\"/><path d=\"M20.2326 14.5562C20.2326 15.1744 20.1202 15.8487 19.9516 16.4108C19.6706 17.2538 19.1648 18.0407 18.4904 18.7151L13.7133 23.436C13.1513 23.998 12.3082 23.9418 11.7462 23.436C11.1842 22.8739 11.2404 22.0309 11.7462 21.4689L16.5234 16.748C16.9168 16.3546 17.1978 15.9612 17.3102 15.5116C17.535 14.8934 17.535 14.1627 17.3102 13.4883C17.1978 13.0949 16.9168 12.6453 16.5234 12.2519L11.7462 7.47477C11.1842 6.91276 11.1842 6.06973 11.7462 5.50772C12.3082 4.9457 13.1513 4.9457 13.7133 5.50772L18.4904 10.2848C19.221 11.0155 19.6706 11.7461 19.9516 12.5892C20.1764 13.3198 20.2326 13.938 20.2326 14.5562Z\" fill=\"#F2F2F2\"/>\</svg>"],
            navContainer: '.main-content .parks-nav',
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
        $('#hotelActivitiesBlock1 .owl-carousel.dining').owlCarousel({
            loop:true,
            margin: 10,
            items: 1,
            nav:true,
            navText : ["<svg width=\"29\" height=\"30\" viewBox=\"0 0 29 30\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M1.90735e-06 14.5561C1.90735e-06 22.5953 6.49187 29.1124 14.5 29.1124C22.5081 29.1124 29 22.5953 29 14.5561C29 6.51698 22.5081 0 14.5 0C6.49187 0 1.90735e-06 6.51698 1.90735e-06 14.5561Z\" fill=\"#005DCC\"/><path d=\"M8.76736 14.5562C8.76736 13.938 8.87976 13.2637 9.04837 12.7017C9.32938 11.8586 9.83518 11.0718 10.5096 10.3973L15.2867 5.67647C15.8487 5.11445 16.6918 5.17066 17.2538 5.67647C17.8158 6.23849 17.7596 7.08151 17.2538 7.64352L12.4766 12.3644C12.0832 12.7578 11.8022 13.1512 11.6898 13.6008C11.465 14.219 11.465 14.9497 11.6898 15.6241C11.8022 16.0175 12.0832 16.4671 12.4766 16.8605L17.2538 21.6377C17.8158 22.1997 17.8158 23.0427 17.2538 23.6047C16.6918 24.1667 15.8487 24.1667 15.2867 23.6047L10.5096 18.8276C9.77898 18.097 9.32938 17.3663 9.04837 16.5233C8.82356 15.7926 8.76736 15.1744 8.76736 14.5562Z\" fill=\"#F2F2F2\"/></svg>",
            "<svg width=\"29\" height=\"30\" viewBox=\"0 0 29 30\" fill=\"none\" xmlns=\"http://www.w3.org/2000/svg\"><path d=\"M29 14.5563C29 6.51711 22.5081 0 14.5 0C6.49188 0 0 6.51711 0 14.5563C0 22.5954 6.49188 29.1124 14.5 29.1124C22.5081 29.1124 29 22.5954 29 14.5563Z\" fill=\"#005DCC\"/><path d=\"M20.2326 14.5562C20.2326 15.1744 20.1202 15.8487 19.9516 16.4108C19.6706 17.2538 19.1648 18.0407 18.4904 18.7151L13.7133 23.436C13.1513 23.998 12.3082 23.9418 11.7462 23.436C11.1842 22.8739 11.2404 22.0309 11.7462 21.4689L16.5234 16.748C16.9168 16.3546 17.1978 15.9612 17.3102 15.5116C17.535 14.8934 17.535 14.1627 17.3102 13.4883C17.1978 13.0949 16.9168 12.6453 16.5234 12.2519L11.7462 7.47477C11.1842 6.91276 11.1842 6.06973 11.7462 5.50772C12.3082 4.9457 13.1513 4.9457 13.7133 5.50772L18.4904 10.2848C19.221 11.0155 19.6706 11.7461 19.9516 12.5892C20.1764 13.3198 20.2326 13.938 20.2326 14.5562Z\" fill=\"#F2F2F2\"/>\</svg>"],
            navContainer: '.main-content .dining-nav',
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

    });
        

  
    
   
</script>