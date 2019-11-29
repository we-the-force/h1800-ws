{* * 2007-2017 PrestaShop * * NOTICE OF LICENSE * * This source file is subject to the Academic Free License (AFL 3.0) * that is bundled with this package in the file LICENSE.txt. * It is also available through the world-wide-web at this URL: * http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to * obtain it through the world-wide-web, please send an email * to license@prestashop.com so we can send you a copy immediately. * * DISCLAIMER * * Do not edit or add to this file if you
wish to upgrade PrestaShop to newer * versions in the future. If you wish to customize PrestaShop for your * needs please refer to http://www.prestashop.com for more information. * * @author PrestaShop SA
<contact@prestashop.com>
    * @copyright 2007-2017 PrestaShop SA * @license http://opensource.org/licenses/afl-3.0.php Academic Free License (AFL 3.0) * International Registered Trademark & Property of PrestaShop SA *}

    <!-- Block RSS module-->
    <div id="rss_block_left" class="block">

        <h1>
            {if $lang_iso == 'es'}
                {l s='Noticias'}
            {elseif $lang_iso == 'en'}
                {l s='News'}
            {/if}
        </h1>
        <div class="block_content">

                <ul id="news-home">

                </ul>

        </div>
        <div id="popup" style="display: none;">
            <div class="content-popup">
                <div class="close"><a href="#" id="close"><img src="images/close.png"/></a></div>
                <div>
                    <h2>Contenido POPUP</h2>
                    <p>Lorem Ipsum...</p>
                    <div style="float:left; width:100%;">
                </div>
                </div>
            </div>
        </div>
        <div class="popup-overlay"></div>
    </div>
    <!-- /Block RSS module-->
    <script>

    $(document).ready(function(e) {
        if($('body').hasClass('news')){
            console.log('test');
            $('#paypal-column-block').css('display', 'none');
            $.getJSON("https://hacienda1800.com/panel/api/collections/get/news?token=8c4e6225dd7f133664f09e3f8dac1d", function(result){

                $.each(result.entries, function(i, field){
                    var body = '<li class="row news-item">' +
                              '<div class="col-lg-4 col-sm-12">' +
                              '<a href="#">' +
                              '<img src="https://hacienda1800.com' + field.thumbnail.path+ '" alt="" class="news-thumb">' +
                              '</a>' +
                              '</div>' +
                              '<div class="col-lg-8 col-sm-12">' +
                              '<h3>' + field.title + '</h3>' +
                              '<p class="news-content">'+field.short_description+'</p>' +
                              "<a href='#' class='news-link' data-id='"+ i +"'><p class='news-content'>{if $lang_iso == 'es'}{l s='Ver más...'}{elseif $lang_iso == 'en'}{l s='See more...'}{/if}</p></a>" +
                              '</div>' +
                              '</li>';
                    
                    $('#news-home').append(body);
                });

                /**var modal = '<div class="modal" id="myModal">'+
                    '<div class="modal-dialog modal-lg">'+
                    '<div class="modal-content">'+
                    '<div class="modal-header">'+
                    '<button type="button" class="close" data-dismiss="modal">&times;</button>'+
                    '</div>'+
                    '<div class="modal-body">'+
                    'Modal body..'+
                    '</div>'+
                    '</div>'+
                    '</div>'+
                    '</div>'+;*/
                $('.news-link').click(function(e){
                    e.preventDefault();
                    console.log($(this).data('id'));
                });
            });
        } else if ($('body').hasClass('index')){
            $.getJSON("https://hacienda1800.com/panel/api/collections/get/news?token=8c4e6225dd7f133664f09e3f8dac1d&limit=3", function(result){
                console.log(result.entries);
                $.each(result.entries, function(i, field){
                    var body = '<li class="row news-item">' +
                            '<div class="col-lg-4 col-sm-12">' +
                            '<a href="{$base_dir}/index.php?controller=news">' +
                            '<img src="https://hacienda1800.com' + field.thumbnail.path + '" alt="" class="news-thumb">' +
                            '</a>' +
                            '</div>' +
                            '<div class="col-lg-8 col-sm-12">' +
                            '<h3>' + field.title + '</h3>' +
                            '<p class="news-content">'+field.short_description+'</p>' +
                            "<a href='{$base_dir}/index.php?controller=news' class='news-link'><p class='news-content'>{if $lang_iso == 'es'}{l s='Ver más...'}{elseif $lang_iso == 'en'}{l s='See more...'}{/if}</p></a>" +
                            '</div>' +
                            '</li>';
                    $('#news-home').append(body);
                });
            });
        }
    });

/**    function toText(node) {
       let tag = document.createElement('div')
       tag.innerHTML = node
       node = tag.innerText
       return node
    }
    function shortenText(text,startingPoint ,maxLength) {
       return text.length > maxLength?
       text.slice(startingPoint, maxLength):
       text
    }
        $.ajax({
            type: "GET",
            url: "https://api.rss2json.com/v1/api.json?rss_url=https%3A%2F%2Fmedium.com%2Ffeed%2F%40hacienda1800&api_key=lmh5gbkqghozzufvtqczxlh6cyad4k4urohx3mag",
            headers: {
                "Access-Control-Allow-Headers": "*"
            },
            dataType: "jsonp",
            success: function(feed) {

                var items = feed.items;

                  if($('#hotelAmenitiesBlock').length){
                      for (var i = 0; i < 3; i++) {
                        var body = '<li class="row news-item">' +
                            '<div class="col-lg-4 col-sm-12">' +
                            '<a href="{$base_dir}/index.php?controller=news">' +
                            '<img src="' + items[i].thumbnail + '" alt="" class="news-thumb">' +
                            '</a>' +
                            '</div>' +
                            '<div class="col-lg-8 col-sm-12">' +
                            '<h3>' + items[i].title + '</h3>' +
                            '<p class="news-content">'+shortenText(toText(items[i].content),60, 300)+'</p>' +
                            "<a href='{$base_dir}/index.php?controller=news' class='news-link'><p class='news-content'>{if $lang_iso == 'es'}{l s='Ver más...'}{elseif $lang_iso == 'en'}{l s='See more...'}{/if}</p></a>" +
                            '</div>' +

                            '</li>';
                        $(body).find('.news-content').html('test');

                        $('#news-home').append(body);
                      }
                  } else {
                      items.forEach(function(item) {



                          var body = '<li class="row news-item">' +
                              '<div class="col-lg-4 col-sm-12">' +
                              '<a href="' + item.link + '">' +
                              '<img src="' + item.thumbnail + '" alt="" class="news-thumb">' +
                              '</a>' +
                              '</div>' +
                              '<div class="col-lg-8 col-sm-12">' +
                              '<h3>' + item.title + '</h3>' +
                              '<p class="news-content">'+shortenText(toText(item.content),60, 300)+'</p>' +
                              "<a href='" + item.link + "' class='news-link'><p class='news-content'>{if $lang_iso == 'es'}{l s='Ver más...'}{elseif $lang_iso == 'en'}{l s='See more...'}{/if}</p></a>" +
                              '</div>' +

                              '</li>';
                          $(body).find('.news-content').html('test');

                          $('#news-home').append(body);
                      });
                  }







            }
        });*/
    </script>