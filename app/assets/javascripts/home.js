$(document).ready (function () {
    $('.carousel-inner').fadeIn(3000);

    function doAnimation() {
        $(".span3").effect("bounce", {time: 2}, 300, doAnimation);
    }
    doAnimation();

});

