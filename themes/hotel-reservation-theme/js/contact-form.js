/*
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
 */
//global variables
var airmty;
var airtrc;
var hotel1800;
var directionsService;
var directionsRenderer;

if (typeof $.uniform.defaults !== 'undefined') {
    if (typeof contact_fileDefaultHtml !== 'undefined')
        $.uniform.defaults.fileDefaultHtml = contact_fileDefaultHtml;
    if (typeof contact_fileButtonHtml !== 'undefined')
        $.uniform.defaults.fileButtonHtml = contact_fileButtonHtml;
}

$(document).ready(function() {

    //By Webkul JS
    $(document).on('click', '.contact_type_ul li', function() {
        $('#contact_type').html($(this).html());
        $('#id_contact').val($(this).attr('value'));
    });

    $(document).on('change', 'select[name=id_contact]', function() {
        $('.desc_contact').hide();
        $('#desc_contact' + parseInt($(this).val())).show();
    });

    $(document).on('change', 'select[name=id_order]', function() {
        showProductSelect($(this).attr('value'));
    });

    showProductSelect($('select[name=id_order]').attr('value'));


    //By Webkul JS for Map locations of the hotels on google Map
    // if (hotelLocationArray) {
    //     initMap();
    // }
    initMap();
});

function showProductSelect(id_order) {
    $('.product_select').hide().prop('disabled', 'disabled').parent('.selector').hide();
    $('.product_select').parents('.form-group').find('label').hide();
    if ($('#' + id_order + '_order_products').length > 0) {
        $('#' + id_order + '_order_products').removeProp('disabled').show().parent('.selector').removeClass('disabled').show();
        $('.product_select').parents('.form-group').show().find('label').show();
    }
}


// function initMap() {
//     hotelLocationArray = JSON.parse(hotelLocationArray);
//     airmty = "25.777896,-100.107835";
//     airtrc = "25.563133,-103.403130";
//     console.log(hotelLocationArray[0].latitude);
//     console.log(hotelLocationArray[0].longitude);

//     hotel1800 = ''+hotelLocationArray[0].latitude+','+ hotelLocationArray[0].longitude;
//   var directionsService = new google.maps.DirectionsService();
//   var directionsRenderer = new google.maps.DirectionsRenderer();
//   var map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 7,
//     center: {lat: 41.85, lng: -87.65}
//   });
//   directionsRenderer.setMap(map);

//   var onChangeHandler = function() {
//   };
//     $('.from-btn').on('click', function(){
//     calculateAndDisplayRoute(directionsService, directionsRenderer);

//     });
// //   document.getElementById('start').addEventListener('change', onChangeHandler);
// //   document.getElementById('end').addEventListener('change', onChangeHandler);
// }

// function calculateAndDisplayRoute(directionsService, directionsRenderer) {
//   directionsService.route(
//       {
//           origin: airmty,
//           destination: hotel1800,
//         travelMode: 'DRIVING'
//       },
//       function(response, status) {
//         if (status === 'OK') {
//           directionsRenderer.setDirections(response);
//         } else {
//           window.alert('Directions request failed due to ' + status);
//         }
//       });
// }



function initMap() {
    airmty = new google.maps.LatLng(25.777896, -100.107835);
    airtrc = new google.maps.LatLng(25.563133, -103.403130);
    hotel1800 = new google.maps.LatLng(hotelLocationArray[0].latitude, hotelLocationArray[0].longitude);
    directionsService = new google.maps.DirectionsService();
    directionsRenderer = new google.maps.DirectionsRenderer();

    var map;
    var bounds = new google.maps.LatLngBounds();
    hotelLocationArray = JSON.parse(hotelLocationArray);
    console.log(hotelLocationArray);

    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map"));
    directionsRenderer.setMap(map);
    google.maps.event.trigger(map, 'resize');

    map.setTilt(45);

    // Display multiple markers on a map
    var infoWindow = new google.maps.InfoWindow();
    var marker;
    var i;

    $.each(hotelLocationArray, function(i, location) {
        var position = hotel1800;
        var position = new google.maps.LatLng(location.latitude, location.longitude);
        bounds.extend(position);
        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: location.hotel_name,
            animation: google.maps.Animation.DROP,
            disableDefaultUI: false,
            zoomControl: false,
            mapTypeControl: false,
            scaleControl: false,
            streetViewControl: false,
            rotateControl: false,
            fullscreenControl: false
        });

        // Allow each marker to have an info window
        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(location.map_formated_address);
                infoWindow.open(map, marker);
            }
        })(marker, i));

        // Automatically center the map fitting all markers on the screen
        map.fitBounds(bounds);
    });

    // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
    var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
        // this.setZoom(8);
        google.maps.event.removeListener(boundsListener);
    });
}
function calcRoute() {
    airmty = new google.maps.LatLng(25.777896, -100.107835);
    airtrc = new google.maps.LatLng(25.563133, -103.403130);

    var selectedMode = 'DRIVING';
    var request = {
        origin: airmty,
        destination: airtrc,
        // Note that JavaScript allows us to access the constant
        // using square brackets and a string value as its
        // "property."
        travelMode: google.maps.TravelMode[selectedMode]
    };
    directionsService.route(request, function (response, status) {
        if (status == 'OK') {
            directionsRenderer.setDirections(response);
        }
    });
}