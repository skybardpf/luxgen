(function($){

    jQuery(window).load(function(){

        var _SubNav            = jQuery(".subNav");
        _NavNum            = _SubNav.find("li.NavNum");
        _NavList           = _SubNav.find("li.NavList");
        _NavSlide          = _SubNav.find("li.NavSlide");
        _Cont              = jQuery("div.mainContent div.cont");
        _WinHeight         = jQuery(window).height();
        _Header            = jQuery("Header");
        _HeaderSlide       = jQuery(".HeaderSlide");
        _HeaderHeight      = _Header.outerHeight(true) + _SubNav.outerHeight(true);
        _HeaderSlideHeight = _HeaderSlide.outerHeight();
        // _topBtn            = jQuery(".topBtn");
        _fadeOutSpeed      = 1000;
        _fadeInSpeed       = 2000;

        // console.log("_HeaderSlideHeight " + _HeaderSlideHeight);

        if(_WinHeight <= _HeaderSlideHeight) {

            _SubNav.addClass("HeaderFixedTop");

        }


        var _NavLists = [];

        _NavNum.each(function( index , value ){

            var _this = jQuery(this);

            _NavLists.push({
                link   : _this,
                top    : _Cont.eq(index).offset().top - (_WinHeight / 2),
                bottom : _Cont.eq(index).offset().top + _Cont.eq(index).outerHeight()
            });

            // console.log(_Cont.eq(index).offset().top);

            _this.click(function(){


                jQuery("html , body").animate({

                    scrollTop: _Cont.eq(index).offset().top - _HeaderHeight

                },{

                    quenu : false , step : function() {


                    }, duration : 500 , complete : function(){


                        jQuery(".HeaderSlide").find("li.SlideList:first").stop().fadeTo(_fadeInSpeed , 1).css('zIndex', 5).siblings("li.SlideTab").stop().fadeTo(_fadeOutSpeed , 0).css('zIndex', 3);

                    }

                });

            }).focus(function(){

                    jQuery(this).blur();

                });

        });

        jQuery("li.SlideList").css({
            opacity : 0,
            zIndex  : 3
        }).eq(0).css({
                opacity : 1,
                zIndex  : 5
            });

        _NavSlide.click(function(){

            var _this = jQuery(this);

            jQuery("html , body").animate({

                scrollTop : jQuery("html , body").offset().top

            },{
                quenu : 500 , step : function() {


                }, duration : false , complete : function(){

                    _this.addClass("selected");

                    jQuery(".HeaderSlide").find("li.SlideTab").stop().fadeTo(_fadeInSpeed , 1).css('zIndex', 5).siblings("li.SlideList").stop().fadeTo(_fadeOutSpeed , 0).css('zIndex', 3);

                }

            });

        }).focus(function(){

                jQuery(this).blur();

            });


        jQuery(window).scroll(function(){

            for(var i = 0 ; i < _NavLists.length ; i++)

                if(jQuery(window).scrollTop() >= _NavLists[i].top && jQuery(window).scrollTop() <= _NavLists[i].bottom){

                    _NavLists[i].link.addClass("selected").siblings().removeClass("selected");

                }


            if(jQuery(window).scrollTop() <= (_WinHeight / 2) && _HeaderSlideHeight != 0) {

                _NavNum.removeClass("selected");

            }

            if (jQuery(window).scrollTop() >= _HeaderSlideHeight){

                if(_SubNav.css("position") != "fixed") {

                    _SubNav.addClass("HeaderFixed");

                }

            } else {

                _SubNav.removeClass("HeaderFixed");

            }


            // if(jQuery(window).scrollTop() >= _HeaderSlideHeight && jQuery(window).scrollTop() != 0 ){

            // 	_topBtn.fadeIn(200);

            // } else {

            // 	_topBtn.fadeOut(100);
            // }

        });

        //    topBtn();

        //    function topBtn() {

        //    	var leftvalue = (jQuery(window).width() - 980) / 2 + 990;

        // 	_topBtn.css({

        // 		left : leftvalue

        // 	});

        // }

        _NavList.click(function(){

            var _idx = jQuery(this).index();

            _gaq.push(['_trackEvent', CategoryName, TrackingClick[_idx], 'label']);

            // console.log(TrackingClick[_idx]);

        });

        // _topBtn.click(function(){


        // 	jQuery("html , body").animate({

        // 		scrollTop : jQuery("html , body").offset().top

        // 	},{
        // 		quenu : 500 , step : function() {


        // 		}, duration : false , complete : function(){

        // 			jQuery(".HeaderSlide").find("li.SlideList:first").stop().fadeTo(_fadeInSpeed , 1).css('zIndex', 5).siblings("li.SlideTab").stop().fadeTo(_fadeOutSpeed , 0).css('zIndex', 3);

        // 		}

        // 	});
        // });

    });

})(jQuery);