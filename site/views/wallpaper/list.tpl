<link rel="stylesheet" href="/public/site/css/style.media.css">
<div class="HeaderSlide"></div>
<div class="subNav subNavFixed both">
    <ul class="subNavUL both">
        <li class="NavList png " id="li1" style="display: list-item;"><a href="/gallery/">Изображения</a></li>
        <li class="NavList png selected" id="li2" style="display: list-item;"><a href="/wallpaper/">Обои</a></li>
        <li class="NavList png " id="li3" style="display: list-item;"><a href="/videos/">Видео</a></li>
    </ul>
    <span class="subNavMask"></span>
</div>
<div class="mainContent">
    <div class="cont media">
        <div class="both titleFrame">
            <h3 class="title">Галерея</h3>
        </div>
    {if $imgs}
        <ul>
            {foreach from=$imgs item=img}
                <li class="mediaList" rel="prettyPhoto[iframe]" href="/wallpaper/id/{$img.id}?iframe=true&width=100%25&height=100%25">
                    <img src="{$img.image|replace:'[dir]':'small'}">
                    <div class="active png" style="display: none;">
                        <ul class="Article">
                            <li class="title">{$img.title}</li>
                        </ul>
                    </div>
                </li>
            {/foreach}
        </ul>
        {else}
        <p>Изображений не найдено</p>
    {/if}
    </div>
</div>