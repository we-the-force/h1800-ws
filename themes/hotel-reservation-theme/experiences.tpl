<iframe src="experiences/" frameborder="0"></iframe>
<script>
    $(window).load(function() {

        var pnav = $('#activities iframe').contents().find('#princ-navbar').height();
        var nav = $('#activities iframe').contents().find('#app .page .navbar').height();
        var headerH = pnav + nav;
        var pageH = $('#activities iframe').contents().find('#app .page .tabs').height();
        var totalExHeight = pageH + headerH;
        console.log('total Height: ' + totalExHeight);
        $('#activities iframe').height(totalExHeight);

    });
</script>