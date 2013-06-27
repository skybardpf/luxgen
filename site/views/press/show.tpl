<div class="newsTitle no_marg">
    <h3 class="press_title">{$press_item.title}</h3>
    <h3 class="press">Источник <a class="blue_link press" href="{if $press_item.linktype eq 'url'}{$press_item.link}{else}{$press_item.article}{/if}">{$press_item.source}</a></h3>
</div>
<div id="contentFont" class="fontNormal">
    <div class="ContData">
        <div>
            <ul class="ContNews">
                <li class="ContNewsLeft">
                    <div>
                        <p> <span class="press_date">Дата：{$press_item.created|date_format:'%Y/%m/%d'}</span></p>
                        {$press_item.articletext}
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>