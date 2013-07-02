// JavaScript Document
(function ($) {
    $(document).ready(function () {
// $(".topbar").find("li.tabNav:eq(3), li.tabNav:eq(4)").hide();
// $(".kindsNav").find("li:eq(3)").hide();
// $(".FootNav").find("li:eq(3), li:eq(4)").hide();
// $(".siteMap").find("li:eq(0)").hide();
        jQuery("li.mediaList").hover(function () {
            jQuery(this).find(".active").stop(true , true).fadeIn(300);
        }, function () {
            jQuery(this).find(".active").stop(true , true).fadeOut(300);
        });
        var _topBtn = jQuery(".topBtn");
        jQuery(window).scroll(function(){
            if(jQuery(window).scrollTop() >= jQuery(".HeaderSlide").outerHeight() && jQuery(window).scrollTop() != 0 ){
                _topBtn.fadeIn(200);
            } else {
                _topBtn.fadeOut(100);
            }
        });
        topBtn();
        function topBtn() {
            var leftvalue = (jQuery(window).width() - 980) / 2 + 990;
            _topBtn.css({
                left : leftvalue
            });
        }
        _topBtn.click(function(){
            jQuery("html , body").animate({
                scrollTop : jQuery("html , body").offset().top
            },{
                quenu : 500 , step : function() {
                }, duration : false , complete : function(){
                    jQuery(".HeaderSlide").find("li.SlideList:first").stop().fadeTo(2000 , 1).css('zIndex', 5).siblings("li.SlideTab").stop().fadeTo(1000 , 0).css('zIndex', 3);
                }
            });
        });
        jQuery(window).resize(function() {
            topBtn();
        });
        var path = '';
        /*$.ajax({
            url: "http://www.luxgen-motor.com/API/GetURL" + '?time=' + new Date().getTime(),
            data: { lang: "TC", mode: "M" },
            dataType: "json",
            type: "GET",
            async: false,
            dataFilter: function (data) {
                return data;
            },
            success: function (data) {
                path = data;
            },
            error: function () {
                console.log('GetUrlError');
            }
        });*/
        var temp = getCookie('mode');
        function getQueryParams(qs) {
            qs.split("+").join(" ");
            var params = {},
                tokens,
                re = /[?&]?([^=]+)=([^&]*)/g;
            while (tokens = re.exec(qs)) {
                params[decodeURIComponent(tokens[1])]
                    = decodeURIComponent(tokens[2]);
            }
            return params;
        }
        var _get = getQueryParams(document.location.search);
        if (_get['mode'] == 'false' && temp != 'w') {
            setCookie('mode','w',1)
        }
        function setCookie(name, value, days) {
//var days = 1;
//if (days) {
            var date = new Date();
            date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
//date.setTime(date.getTime() + (5 * 60 * 1000));
            var expires = "; expires=" + date.toGMTString();
//} else var expires = "";
            document.cookie = name + "=" + value + expires + "; path=/";
        }
        function getCookie(name) {
            var nameEQ = name + "=";
            var ca = document.cookie.split(';');
            for (var i = 0; i < ca.length; i++) {
                var c = ca[i];
                while (c.charAt(0) == ' ') c = c.substring(1, c.length);
                if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
            }
            return null;
        }
        function eraseCookie(name) {
            createCookie(name, "", -1);
        }
        /*var u = navigator.userAgent;
        if (u.match(/(iPhone|iPad)/i) || u.match(/Android/i) || u.match(/(IEMobile|Windows Phone)/i)) {
            if (getCookie('mode') != 'w') {
                window.location = path;
            }
        }*/
    });
})(jQuery);