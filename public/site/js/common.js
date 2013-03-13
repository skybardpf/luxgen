$(document).ready(function(){
    $("#chooseFont a").click(function(){
        var $size = $(this).attr("rel");
        $("#contentFont").removeAttr('class').addClass($size);
        return false;
    });

    var winH = window.innerHeight;
    var winW = window.innerWidth;
    $("._bg, ._bg_grid_mask, ._bg_warp").height((winH/2)-77).css({
        display: 'block'
    });
    $("#floor").height(winH/2).css({
        display: 'block'
    });
    $("._bg_warp").css({
        display: 'block'
    });
    $("#tv_bg > ._car > img").css({
        left: winW/2-475,
        top: 100/(987/winH)
    });
    $(".topBtn").css({
        right: winW/2-528
    });


    jQuery(".technologyUL").find(".link").each(function (index, value) {
        jQuery(this).attr('id', 'link' + index);
        var Link = "#link" + index;
        jQuery(Link).click(function () {
            var DataList = "#dataList" + index;
            jQuery(DataList).fadeIn(300);
            jQuery(".technologyDataUL").find("li.btn").fadeIn(300);
        });
    });
    jQuery(".technologyDataUL").find("li.data").each(function (index, value) {
        jQuery(this).attr('id', 'dataList' + index);
    });
    jQuery(".technologyDataUL").find("li.btn").click(function () {
        jQuery(".technologyDataUL li.data , .technologyDataUL li.btn").fadeOut(300);
    });
    jQuery(".technologyDataUL").find(".media li:even").addClass("left");
    jQuery(".technologyDataUL").find(".media li:odd").addClass("right");


    $(".topbar").find("li:eq(0)").addClass("activite");
    $(".ContTimeline").find(".ContTimelineList").eq(1).addClass("ContTimelineMargin");
    $(".ContTimeline").find(".ContTimelineList:even").addClass("ContTimelineLeft");
    $(".ContTimeline").find(".ContTimelineList:odd").addClass("ContTimelineRight");
    var GetNowYear = new Date().getFullYear();
    GetNowMonth = new Date().getMonth();
    //console.log(GetNowYear);
    var _marginTop = 140;
    jQuery.fn.reverse = [].reverse;
    jQuery(".ContTimelineList span.TimelineYear").reverse().each(function (index, value) {
        jQuery(this).attr("id", "monthcont" + index);
    });
    var YearText = jQuery(".subNavUL li.selected").text();
    //console.log(YearText);
    if (YearText == "最新") {
        YearText = GetNowYear
        //alert(GetNowYear);
    }
    jQuery(".ContMonth li.month span").each(function (index, value) {
        var MonthID = jQuery(this).text();
        var MonthIDText = MonthID;
        var TimelineYearIDText = jQuery(".ContTimelineList span.TimelineYear").text();
    });
    jQuery(".ContMonth li").each(function (index, value) {
        if (GetNowMonth >= index || GetNowYear > YearText) {
            jQuery(this).addClass("MonthBtn").click(function () {
                var Monthly = new Array('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12');
                var ndx = 0;
                var self = this;
                jQuery.map(Monthly, function (n, i) {
                    if (jQuery(self).attr('sid') === n) {
                        ndx = n;
                        return true;
                    }
                });
                jQuery(".TimelineYear").reverse().each(function (index, value) {
                    if (jQuery(this).attr('sid') == ndx) {
                        if (jQuery("#monthcont" + (index)) != undefined) {
                            var Monthcont = "#monthcont" + (index);
                            try {
                                $("html, body").animate({
                                    scrollTop:jQuery(Monthcont).offset().top - _marginTop
                                });
                            } catch (e) {
                            // console.log(e);
                            }
                        }
                        return true;
                    }
                });
            });
            jQuery(".ContMonth").find("li.MonthBtn").hover(function () {
                jQuery(this).addClass("active");
            }, function () {
                jQuery(this).removeClass("active");
            });
        }
    });

    if($("*[rel^='prettyPhoto']").length){
        $(".media:first li.mediaList[rel^='prettyPhoto']").prettyPhoto({
        animation_speed: "normal",
            theme: "light_square",
            slideshow: 3000,
            autoplay_slideshow: false
    });
    }
});