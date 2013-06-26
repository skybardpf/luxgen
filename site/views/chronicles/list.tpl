
    <div class="HeaderSlide"></div>
    <div class="subNav subNavFixed both">
        <ul class="subNavUL both">
	        <li class="NavList png"><a href="/brand-introduction/">О бренде LUXGEN</a></li>
	        <li class="NavList png"><a href="/about/">Философия бренда</a></li>
	        <li class="NavList png selected"><a href="/chronicles/">Хроники</a></li>
        </ul>
        <span class="subNavMask"></span>
    </div>
    <div class="mainContent">
        <div class="cont Technology">
            <div class="both titleFrame">
                <h3 class="title">Хроники</h3>
                <span id="chooseFont" class="tools">
                    <a rel="fontSmall" href="#" class="fontDecrease">Маленький</a>
                    <a rel="fontNormal" href="#" class="fontReset">Средний</a>
                    <a rel="fontLarge" href="#" class="fontIncrease">Большой</a>
                </span>
            </div>
            <div id="contentFont" class="fontNormal">
                <div class="ContData">
                    {if $chronicles}
                        <ul class="ContTimeline both">
                            {foreach from=$chronicles item=chronicle name=i}
                                <li class="ContTimelineList{if $smarty.foreach.i.iteration%2 == 0} ContTimelineMargin ContTimelineRight{else} ContTimelineLeft{/if}">
                                    {if $chronicle.year}
                                        <span class="TimelineYear">{$chronicle.year}</span>
                                    {/if}
                                    <ul class="TimelineBox">

                                        <li class="ContTimelineTop">
                                            <time class="TimelineDate">{$chronicle.created|date_format:'%Y.%m.%d'}</time>
                                            <h5 class="TimelineTitle">{$chronicle.title}</h5>
                                        </li>
                                        <li><img src="{$chronicle.image|replace:'[dir]':'small'}"></li>

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