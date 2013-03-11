// JavaScript Document

//Tracking
var CategoryName = "SUV";
var TrackingClick = new Array('EN_SUVTech', 'EN_SUVExterior', 'EN_SUVInterior', 'EN_SUVPerformance', 'EN_SUVQuality', 'EN_SUVSafety', 'EN_SUVColor', 'EN_SUVMedia');

//youtube Video

jQuery(document).ready(function(){
    //kindsNav
    //$(".kindsNav").find("li:eq(1)").addClass("activte");

    //Technology хЙНчЮ╗чзСцКА
    $(".Technology .technologyUL").find("li.technologyList:nth-child(3n+2)").addClass("technologyCenter");


    //closeYoutube
    function closeYoutube (){

        jQuery(".youtubeMedia").remove();

    }

    //Wrap
    jQuery("span.mediaHref[rel^='prettyPhoto']").prettyPhoto({
        animation_speed       : "normal",
        theme                 : "light_square",
        slideshow             : 3000,
        autoplay_slideshow    : false,
        changepicturecallback : function() {

            closeYoutube();

        }
    });

    //Exterior хдЦшзА
    $(".Exterior").find("li.photoList").addClass("photoLeft");
    $(".Exterior").find("li.photoList:eq(3)").addClass("photoCenter");
    $(".Exterior").find("li.photoList:eq(1)").addClass("photoRight");

    $(".Exterior .ContData li.photoList .infoFrame").hide();

    jQuery("li.photoList:nth-child(1n+3)").css({

        width : 326 + "px"

    });


    $(".Exterior .ContData li.photoList").hover(function () {
        $(this).find(".infoFrame").fadeIn(300);
    }, function () {
        $(this).find(".infoFrame").fadeOut(300);
    });

    jQuery(".Exterior ul:first li.photoList[rel^='prettyPhoto']").prettyPhoto({
        animation_speed       : "normal",
        theme                 : "light_square",
        slideshow             : 3000,
        autoplay_slideshow    : false,
        changepicturecallback : function() {

            closeYoutube();

        }
    });

    //Interior хЕзшгЭ
    var cf = new ContentFlow("contentFlow", {
        reflectionColor      : "#FFF" ,
        endOpacity           : 0.1, //х╛МщЭвitemщАПцШОх║ж
        maxItemHeight        : 250, //цЬАхдзщлШх║ж
        relativeItemPosition : "center"
    });

    jQuery(".flow:first div.item[rel^='prettyPhoto']").prettyPhoto({
        animation_speed       : "normal",
        theme                 : "light_square",
        slideshow             : 3000,
        autoplay_slideshow    : false,
        changepicturecallback : function() {

            closeYoutube();

        }
    });

    //Power цАзшГ╜ & Safety хоЙхЕи
    jQuery(".ContData .ConSlides").each(function( index , value ){

        var _this          = jQuery(this);
        _ConSlidesList = _this.find("ul.ConSlidesUL .ConSlidesList");

        _ConSlidesList.each(function(idx , val){

            var _this          = jQuery(this);
            _ConSlidesInfo = _this.find(".ConSlidesInfo");
            _height        = _ConSlidesInfo.height();

            _ConSlidesInfo.css({

                top       : 50 + "%",
                marginTop : ((_height * (-1)) / 2) + "px"

            });

        });

    }).slides({

            preload    : false,
            play       : 0,
            pause      : 2500,
            hoverPause : true

        });

    //Quality хУБш│к
    $("div.Quality .ContData").find(".qualityList:nth-child(3n+2)").addClass("qualityListCenter");

    //ш╗КшЙ▓ф╗Хциг
    jQuery(".CarColor .list:first span.image[rel^='prettyPhoto']").prettyPhoto({
        animation_speed       : "normal",
        theme                 : "light_square",
        slideshow             : 3000,
        autoplay_slideshow    : false,
        changepicturecallback : function() {

            closeYoutube();

        }

    });

    jQuery(".CarColor").hover(function(){

        jQuery(this).find("li.list").slideDown(300);

    }, function(){

        jQuery(this).find("li.list").slideUp(300);

    });

})