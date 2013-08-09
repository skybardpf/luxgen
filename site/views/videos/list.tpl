<link rel="stylesheet" href="{$BASE_URL}site/css/style.media.css">
<div class="HeaderSlide"></div>
<div class="subNav subNavFixed both">
    <ul class="subNavUL both">
        <li class="NavList png " id="li1" style="display: list-item;"><a href="/gallery/">Изображения</a></li>
        <li class="NavList png " id="li2" style="display: list-item;"><a href="/wallpaper/">Обои</a></li>
        <li class="NavList png selected" id="li3" style="display: list-item;"><a href="/videos/">Видео</a></li>
    </ul>
    <span class="subNavMask"></span>
</div>
<div class="mainContent">
    <div class="cont media">
        <div class="both titleFrame">
            <h3 class="title">Галерея</h3>
        </div>
    {if $videos}
        <ul>
            {foreach from=$videos item=video}
                {*<li class="mediaList" rel="prettyPhoto[iframe]" href="/videos/id/{$video.id}?iframe=true&width=100%25&height=100%25">*}
                <li class="mediaList" rel="prettyPhoto[iframe]" href="{$video.link}?iframe=true&width=100%25&height=100%25">
                    <img src="{$video.image|replace:'[dir]':'small'}" alt="{$video.title}">
                    <div class="active png" style="display: none;">
                        <ul class="Article">
                            <li class="title">{$video.title}</li>
                        </ul>
                    </div>
                    <!--<embed src="{$video.link}" type="application/x-shockwave-flash" width="100%" height="100%" allowscriptaccess="always" allowfullscreen="true" quality="high" menu="false" wmode="transparent" scale="scale">-->
                    <!--<iframe src="{$video.link}" name="info" id="Iframe" style="border: 1px solid #000" width="100%" frameborder="0"></iframe>-->
                </li>
            {/foreach}
        </ul>
        {else}
        <p>Изображений не найдено</p>
    {/if}
    </div>
</div>

{*
{literal}
    <script>
        $(document).ready(function(){
            var url = '';
            $('.vid').each(function(){
                url = $.jYoutube(this.src);
                $(this).attr({'src': url});
            });
            $("a[rel='showvideo']").colorbox({
                current: ''
            });
        });
    </script>
{/literal}
<div>
    {if $videos}
        {foreach from=$videos item=video}
            <div>
                <a rel="showvideo" href="/videos/id/{$video.id}/">
                    <img src="{$video.link}" class="vid" alt="{$video.title}">
                    <!--<embed src="{$video.link}" type="application/x-shockwave-flash" width="100%" height="100%" allowscriptaccess="always" allowfullscreen="true" quality="high" menu="false" wmode="transparent" scale="scale">-->
                    <!--<iframe src="{$video.link}" name="info" id="Iframe" style="border: 1px solid #000" width="100%" frameborder="0"></iframe>-->
                </a>
            </div>
        {/foreach}
    {else}
        <p>Видео не найдено</p>
    {/if}
</div>

*}
