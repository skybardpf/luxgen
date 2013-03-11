(function($){
    jQuery(document).ready(function(){
        var _YoutubeList = jQuery(".youtubeMediaList");
        _youtubePlay = '<span class="playMask"></span>';
        _YoutubeList.append(_youtubePlay);
        jQuery("span.playMask").each(function(index , value){
            var _this = jQuery(this);
// _youtubeplayer, _youtubetimer, _checkSpeed = 0;
            _this.click(function(){
                var _youtube = _this.parent().attr("youtube");
                _youtubeId = "youtubeId" + index;
                _youtubeMedia = jQuery(".youtubeMedia");
                _youtubeMedia.find("iframe").remove();
                _youtubeMedia.remove();
                jQuery(".ContInfoData .close").click();
                _this.parent().append('<div class="youtubeMedia"><iframe src="http://www.youtube.com/embed/' + _youtube + '?version=3&amp;hl=zh_TW&amp;rel=0&amp;showinfo=0&amp;autoplay=1&amp;wmode=transparent" width="100%" height="100%" marginwidth="0" marginheight="0" frameborder="0" wmode="transparent" allowtransparency="true" style="background : transparent;"></iframe></div>');
// _youtubetimer = setInterval(checkStatechange, _checkSpeed);
// console.log(_youtubeId);
            });
            _this.hover(function(){
                _this.addClass("playMaskHover");
            } , function(){
                _this.removeClass("playMaskHover");
            });
// function checkStatechange(){
// if((_youtubeplayer = jQuery("#" + _youtubeId)[0]) == undefined) return;
// try{
// var currentState = _youtubeplayer.getPlayerState();
// if(currentState == "0"){
// clearInterval(_youtubetimer);
// jQuery(".youtubeMedia").remove();
// }
// }catch(err){}
// }
        });
// _YoutubeList.each(function(index , value){
// var _this = jQuery(this);
// // _playMask = _this.find("span.playMask");
// _this.append('<span class="playMask"></span>');
// jQuery("span.playMask").hover(function(){
// var _this = jQuery(this);
// _this.addClass("playMaskHover");
// }, function(){
// var _this = jQuery(this);
// _this.removeClass("playMaskHover");
// }).click(function(){
// var _this = jQuery(this);
// _youtube = _this.parent().attr("youtube");
// _youtubeMedia = jQuery(".youtubeMedia");
// _youtubeMedia.remove();
// jQuery(".ContInfoData .close").click();
// _this.parent().append('<div class="youtubeMedia"><iframe src="http://www.youtube.com/embed/' + _youtube + '?version=3&amp;hl=zh_TW&amp;rel=0&amp;showinfo=0&amp;autoplay=1&amp;wmode=transparent" width="100%" height="100%" marginwidth="0" marginheight="0" frameborder="0" wmode="transparent" allowtransparency="true" style="background : transparent;"></iframe></div>');
// console.log(index);
// });
// });
    })
})(jQuery)