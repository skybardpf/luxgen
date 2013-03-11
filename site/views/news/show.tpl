<div class="newsTitle">
    <h3>{$new.title}</h3>
</div>
<div id="contentFont" class="fontNormal">
    <div class="ContData">
        <div>
            <ul class="ContNews">
                <li class="ContNewsLeft">
                    <div>
                        <div class="contentImg"><img id="ctl00_MainContent_img1"></div>
                        <p> <span style="color: rgb(0, 0, 255); ">Дата：{$new.created|date_format:'%Y/%m/%d'}</span></p>
                        {$new.text}
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
{*<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=YOUR-PROFILE-ID"></script>
<div class="addthis_toolbox addthis_default_style">
    <a class="addthis_button_facebook"></a>
    <a class="addthis_button_plurk"></a>
    <a class="addthis_button_twitter"></a>
    <a class="addthis_button_email"></a>
    <a class="addthis_button_favorites"></a>
    <a class="addthis_button_print"></a>
    <span class="addthis_separator">|</span>
    <a class="addthis_button_expanded" style="text-decoration:none;" href="http://addthis.com/bookmark.php?v=250&pub=luxgen" title="View more services">Ещё сервисы</a>
    <div class="atclear"></div>
</div>*}
<div class="dCenter">
    <a href="/news/{if $year_get}?year={$year_get}{/if}" style="color:#3384c6; ">Список</a>
</div>