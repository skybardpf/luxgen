<div class="newsTitle">
    <h3>{$press_item.title}</h3>
    <h3>Источник: <a class="blue_link" href="{if $press_item.linktype eq 'url'}{$press_item.link}{else}{$press_item.article}{/if}">Статья целиком</a></h3>
</div>
<div id="contentFont" class="fontNormal">
    <div class="ContData">
        <div>
            <ul class="ContNews">
                <li class="ContNewsLeft">
                    <div>
                        <div class="contentImg"><img id="ctl00_MainContent_img1"></div>
                        <p> <span style="color: rgb(0, 0, 255); ">Дата：{$press_item.created|date_format:'%Y/%m/%d'}</span></p>
                        {$press_item.articletext}
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>