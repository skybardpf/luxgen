(function($){

    jQuery(window).load(function(){

        var _HeaderSlide          = jQuery(".HeaderSlide");
        _SlideList            = _HeaderSlide.find(".SlideTab");
        _SlideTabList         = _SlideList.find(".SlideTabList");
        _SlideTabContent      = jQuery(".SlideTabContent");
        _SlideTabContentList  = _SlideTabContent.find(".SlideTabContentList");
        _SlideTabContentWidth = _SlideTabContent.outerWidth();

        // console.log(_SlideTabContentWidth);

        jQuery(".SlideList .SlideTabContent").find("ul.SlideTabPhotoUL").find("li.list:eq(0), li.list:eq(1)").addClass("listL");


        _SlideTabList.click(function(){

            var _selected = _SlideTabList.filter(".active").removeClass("active"),
                _idx      = _selected.index(),
                _this     = jQuery(this).addClass("active"),
                _index    = _this.index(),
                _isNext   = _index > _idx;

            if(_idx == _index) return;

            _SlideTabContentList.eq(_idx).stop().animate({

                left : _isNext ? - _SlideTabContentWidth : _SlideTabContentWidth

            }).end().eq(_index).css({

                    left : _isNext ? _SlideTabContentWidth : - _SlideTabContentWidth

                }).stop().animate({

                    left : 0

                });

        }).eq(0).click();

        _SlideTabContentList.find("li.list").hover(function () {

            jQuery(this).find("div.active").stop(true , true).fadeIn(300);

        }, function () {

            jQuery(this).find("div.active").stop(true , true).fadeOut(300);

        });

        _SlideTabContentList.each(function(index , value){

            var _this            = jQuery(this);
            _list            = _this.find("li.list[rel^='prettyPhoto']");
            _SlideTabPhotoUL = _this.find(".SlideTabPhotoUL");
            _SlideTabMediaUL = _this.find(".SlideTabMediaUL > li.list");
            _Page            = _this.find("div.JQpaper");

            //colorBox
            _list.prettyPhoto({
                animation_speed    : "normal",
                theme              : "light_square",
                slideshow          : 3000,
                autoplay_slideshow : false
            });

            //хЬЦчЙЗхИЖщаБ
            _SlideTabPhotoUL.quickpaginate({
                perpage : 1,
                pager   : _Page
            });

            //х╜▒чЙЗхИЖщаБ
            _SlideTabMediaUL.quickpaginate({
                perpage : 11,
                pager   : _Page
            });

            // console.log(_PhotoPage);

        });

        //siteMap link

        var _CarCont     = jQuery.jget["cont"];
        var _DefaultCont = !!!_CarCont ? 0 : parseInt(_CarCont);

        jQuery(".subNav li.NavList").eq(_CarCont).click();

        // function ScrollMovie() {

        // 	var _CarCont     = jQuery.jget["cont"];
        // 	var _DefaultCont = !!!_CarCont ? 0 : parseInt(_CarCont);

        // 	jQuery(".subNav li.NavList").eq(_CarCont).click();

        // }


        // var MrTime = window.setInterval(function(){

        // 	ScrollMovie();
        // 	window.clearInterval(MrTime);

        // }, 300);

    });

})(jQuery);