<div class="header-desc-container">
    <div class="header-desc-wrapper">
        <div id="header-panorama">

        </div>
        <div class="header-desc-primary">

            <div class="container">
                <div class="row">
                    <div class="col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
                        <p class="header-desc-welcome">{l s='Welcome To' mod='hotelreservationsystem'}</p>
                        <hr class="heasder-desc-hr-first" />
                        <div class="header-desc-inner-wrapper">
                            <h1 class="header-hotel-name">{$WK_HTL_CHAIN_NAME}</h1>
                            <p class="header-hotel-desc">{$WK_HTL_TAG_LINE}</p>
                            <hr class="heasder-desc-hr-second" />
                        </div>
                    </div>
                </div>
                {hook h="displayAfterHeaderHotelDesc"}
            </div>
        </div>
    </div>
</div>
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
</script>