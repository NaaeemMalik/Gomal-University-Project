$(document).ready(function(){
    
    $.getJSON("getProvinces.php", success = function(data){
        var options = "";
        for(var i=0; i<data.length; i++) {
            options += "<option value='" + data[i].toLowerCase() + "' >" + data[i] + "</option>";
        }
        
        $('#slctMake').append(options);
        $('#slctMake').change();
    });
    
    $('#slctMake').change(function (){
        $.getJSON("getDistricts.php?province=" + $(this).val() , success = function(data){
            var options = "";
            for(var i=0; i<data.length; i++) {
                options += "<option value='" + data[i].toLowerCase() + "' >" + data[i] + "</option>";
            }
            
            $('#slctModel').html("");
            $('#slctModel').append(options);
        });
    });
});


// video cover
//jQuery is required to run this code
$( document ).ready(function() {

    scaleVideoContainer();

    initBannerVideoSize('.video-container .poster img');
    initBannerVideoSize('.video-container .filter');
    initBannerVideoSize('.video-container video');

    $(window).on('resize', function() {
        scaleVideoContainer();
        scaleBannerVideoSize('.video-container .poster img');
        scaleBannerVideoSize('.video-container .filter');
        scaleBannerVideoSize('.video-container video');
    });

});

function scaleVideoContainer() {

    var height = $(window).height() + 5;
    var unitHeight = parseInt(height) + 'px';
    $('.homepage-hero-module').css('height',unitHeight);

}

function initBannerVideoSize(element){

    $(element).each(function(){
        $(this).data('height', $(this).height());
        $(this).data('width', $(this).width());
    });

    scaleBannerVideoSize(element);

}

function scaleBannerVideoSize(element){

    var windowWidth = $(window).width(),
    windowHeight = $(window).height() + 5,
    videoWidth,
    videoHeight;

    console.log(windowHeight);

    $(element).each(function(){
        var videoAspectRatio = $(this).data('height')/$(this).data('width');

        $(this).width(windowWidth);

        if(windowWidth < 1000){
            videoHeight = windowHeight;
            videoWidth = videoHeight / videoAspectRatio;
            $(this).css({'margin-top' : 0, 'margin-left' : -(videoWidth - windowWidth) / 2 + 'px'});

            $(this).width(videoWidth).height(videoHeight);
        }

        $('.homepage-hero-module .video-container video').addClass('fadeIn animated');

    });
}
// video cover end

// animation
// effects {bounce flash pulse rubberBand shake headShake swing tada wobble jello bounceIn bounceInDown bounceInLeft bounceInRight bounceInUp bounceOut bounceOutDown bounceOutLeft bounceOutRight bounceOutUp fadeIn fadeInDown fadeInDownBig fadeInLeft fadeInLeftBig fadeInRight fadeInRightBig fadeInUp fadeInUpBig fadeOut fadeOutDown fadeOutDownBig fadeOutLeft fadeOutLeftBig fadeOutRight fadeOutRightBig fadeOutUp fadeOutUpBig flipInX flipInY flipOutX flipOutY lightSpeedIn lightSpeedOut rotateIn rotateInDownLeft rotateInDownRight rotateInUpLeft rotateInUpRight rotateOut rotateOutDownLeft rotateOutDownRight rotateOutUpLeft rotateOutUpRight hinge rollIn rollOut zoomIn zoomInDown zoomInLeft zoomInRight zoomInUp zoomOut  zoomOutDown zoomOutLeft zoomOutRight zoomOutUp slideInDown slideInLeft slideInRight slideInUp slideOutDown slideOutLeft slideOutRight slideOutUp }

  // custom animation 
$(".animation").hover( function() {
    $(this).addClass('animated headShake');
});
$(".animation").mouseout( function() {
    $(this).removeClass('animated headShake');
}); 

// signup form
$("#login").hover( function() {
    $(this).addClass('animated zoomIn');
});

$("#login").mouseout( function() {
    $(this).removeClass('animated zoomIn');
});

// tooltip
$(document).ready( function() {
    $('.tooltipped').tooltip({delay: 50});
});

// tabs
$(document).ready(function(){
    $('ul.tabs').tabs();
});

// signup modal
$(document).ready( function($) {
    $('.modal-trigger').leanModal();
});

// mobile navigation
$(".button-collapse").sideNav();


// smooth scrolling
// $(document).ready(function($) {
//   $('a[href*="#"]:not([href="#"])').click(function() {
//     if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
//       var target = $(this.hash);
//       target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
//       if (target.length) {
//         $('html, body').animate({
//           scrollTop: target.offset().top
//         }, 1000);
//         return false;
//       }
//     }
//   });
// });

// parallax
$(document).ready(function(){
  $('.parallax').parallax();
});

// slider
$(document).ready(function(){
  $('.slider').slider({full_width: true});
});

// carousel
$('.carousel.carousel-slider').carousel({full_width: true});

// pushpin
$('.pushpin').each(function() {
var $this = $(this);
var $target = $('#' + $(this).attr('data-target'));
$this.pushpin({
  top: $target.offset().top,
  bottom: $target.offset().top + $target.outerHeight() - $this.height()
});
});