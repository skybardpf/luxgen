
    <div class="HeaderSlide"></div>
    <div class="subNav subNavFixed both">
        <ul class="subNavUL both">
	        <li class="NavList png"><a href="/brand-introduction/">О бренде LUXGEN</a></li>
	        <li class="NavList png"><a href="/about/">Философия бренда</a></li>
	        <li class="NavList png"><a href="/chronicles/">Хроники</a></li>
	        <li class="NavList png selected"><a href="/press/">Пресса о нас</a></li>
        </ul>
        <span class="subNavMask"></span>
    </div>
    <div class="mainContent">
        <div class="cont Technology">
            <div class="both titleFrame">
                <h3 class="title">Пресса о нас</h3>
                <span id="chooseFont" class="tools">
                    <a rel="fontSmall" href="#" class="fontDecrease">Маленький</a>
                    <a rel="fontNormal" href="#" class="fontReset">Средний</a>
                    <a rel="fontLarge" href="#" class="fontIncrease">Большой</a>
                </span>
            </div>
            <div id="contentFont" class="fontNormal">
                <div class="ContData press">
                    {if $press}
                        <ul class="ContTimeline both">
                            {foreach from=$press item=chronicle name=i}
                                <li class="ContTimelineList{if $smarty.foreach.i.iteration%2 == 0} ContTimelineMargin ContTimelineRight{else} ContTimelineLeft{/if}">
                                    {if $chronicle.year}
                                        <span class="TimelineYear">{$chronicle.year}</span>
                                    {/if}
                                    <ul class="TimelineBox">

                                        <li class="ContTimelineTop">
                                            <time class="TimelineDate">{$chronicle.created|date_format:'%Y.%m.%d'}</time>
                                            <h5 class="TimelineTitle">{$chronicle.title}</h5>
	                                        <h5 class="TimelineTitle grey">{$chronicle.source}</h5>
                                        </li>
                                        <li class="lefter">{$chronicle.annotation}</li>
                                        <li class="lefter"><a class="blue_link" href="{$chronicle.article}"><img src="/public/site/img/pdf_icon.gif" style="margin-right: 5px;margin-bottom: 3px;">Статья целиком</a><li>

                                    </ul>
                                </li>
                            {/foreach}
                        </ul>
                    {/if}
                </div>
            </div>
        </div>
        <div id="topBtn" class="topBtn" style="display: none;">
            <span> </span>
        </div>
    </div>