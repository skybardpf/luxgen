
<div class="midWrap">
    <div class="HeaderSlide"></div>
    <div class="subNav subNavFixed both">
        <ul class="subNavUL both">
            <li class="NavList png{if !$smarty.get.year} selected{/if}"><a href="/news/">Последние</a></li>
            {if $years}
                {foreach from=$years item=year}
                    <li class="NavList png{if $smarty.get.year == $year} selected{/if}"><a href="/news/?year={$year}">{$year}</a></li>
                {/foreach}
            {/if}
            <li class="NavList png"><a href="/press/">Пресса о нас</a></li>
        </ul>
        <span class="subNavMask"></span>
    </div>
    <div class="mainContent">
        <div class="cont Technology">
            <div class="both titleFrame">
                <h3 class="title">Новости</h3>
                <span id="chooseFont" class="tools">
                    <a rel="fontSmall" href="#" class="fontDecrease">Маленький</a>
                    <a rel="fontNormal" href="#" class="fontReset">Средний</a>
                    <a rel="fontLarge" href="#" class="fontIncrease">Большой</a>
                </span>
            </div>
            {if $request.id}
                {loadview name='news/show'}
            {else}
                <div>
                    <ul class="ContMonth both">
                        <li sid="1" class="month MonthBtn"><span class="month01">1</span></li>
                        <li sid="2" class="month MonthBtn"><span class="month02">2</span></li>
                        <li sid="3" class="month MonthBtn"><span class="month03">3</span></li>
                        <li sid="4" class="month MonthBtn"><span class="month04">4</span></li>
                        <li sid="5" class="month MonthBtn"><span class="month05">5</span></li>
                        <li sid="6" class="month MonthBtn"><span class="month06">6</span></li>
                        <li sid="7" class="month MonthBtn"><span class="month07">7</span></li>
                        <li sid="8" class="month MonthBtn"><span class="month08">8</span></li>
                        <li sid="9" class="month MonthBtn"><span class="month09">9</span></li>
                        <li sid="10" class="month MonthBtn"><span class="month10">10</span></li>
                        <li sid="11" class="month MonthBtn"><span class="month11">11</span></li>
                        <li sid="12" class="month MonthBtn"><span class="month12">12</span></li>
                    </ul>
                </div>
                <div id="contentFont" class="fontNormal">
                    <div class="ContData">
                        {if $news}
                            <ul class="ContTimeline both">
                                {foreach from=$news item=new name=i}
                                    <li class="ContTimelineList">
                                        {if $new.sid}
                                            <span sid="{$new.sid}" class="TimelineYear" id="monthcont{$new.monthcont}">{$new.mon}</span>
                                        {/if}
                                        <ul class="TimelineBox">
                                            <a href="/news/id/{$new.id}/{if $smarty.get.year}?year={$smarty.get.year}{/if}">
                                                <li class="ContTimelineTop">
                                                    <time class="TimelineDate">{$new.created|date_format:'%Y.%m.%d'}</time>
                                                    <h5 class="TimelineTitle">{$new.title}</h5>
                                                </li>
                                                <li><img src="{$new.image|replace:'[dir]':'small'}"></li>
                                            </a>
                                        </ul>
                                    </li>
                                {/foreach}
                            {*<li class="ContTimelineList ContTimelineLeft">
                                <span sid="9" class="TimelineYear" id="monthcont3">Сен.</span>

                                <ul class="TimelineBox">
                                    <a href="new.html">
                                        <li class="ContTimelineTop">
                                            <time class="TimelineDate">2012.09.28</time>
                                            <h5 class="TimelineTitle">LUXGEN демонстрирует новую модельную линию на Вьетнамской автовыставке-2012</h5>
                                        </li>
                                        <li><img src="img/upload/20121009105509253.jpg"></li>
                                    </a>
                                </ul>
                            </li>
                            <li class="ContTimelineList ContTimelineMargin ContTimelineRight">

                                <ul class="TimelineBox">
                                    <a href="new.html">
                                        <li class="ContTimelineTop">
                                            <time class="TimelineDate">2012.09.20</time>
                                            <h5 class="TimelineTitle">LUXGEN объявляет об открытии представительства в Султанате Оман</h5>
                                        </li>
                                        <li><img src="img/upload/20121009105421860.jpg"></li>
                                    </a>
                                </ul>
                            </li>
                            <li class="ContTimelineList ContTimelineLeft">
                                <span sid="8" class="TimelineYear" id="monthcont2">Авг.</span>

                                <ul class="TimelineBox">
                                    <a href="new.html">
                                        <li class="ContTimelineTop">
                                            <time class="TimelineDate">2012.08.30</time>
                                            <h5 class="TimelineTitle">Презентация LUXGEN на Московском Международном Автомобильном Салоне в России</h5>
                                        </li>
                                        <li><img src="img/upload/20120920151216762.jpg"></li>
                                    </a>
                                </ul>
                            </li>
                            <li class="ContTimelineList ContTimelineRight">
                                <span sid="4" class="TimelineYear" id="monthcont1">Апр.</span>

                                <ul class="TimelineBox">
                                    <a href="new.html">
                                        <li class="ContTimelineTop">
                                            <time class="TimelineDate">2012.04.22</time>
                                            <h5 class="TimelineTitle">LUXGEN EV+ присоединяется к программе в поддержку Дня Земли</h5>
                                        </li>
                                        <li><img src="img/upload/20120920151238762.jpg"></li>
                                    </a>
                                </ul>
                            </li>
                            <li class="ContTimelineList ContTimelineLeft">

                                <ul class="TimelineBox">
                                    <a href="new.html">
                                        <li class="ContTimelineTop">
                                            <time class="TimelineDate">2012.04.12</time>
                                            <h5 class="TimelineTitle">LUXGEN EV+ представлен на Тайваньской Международной Выставке Электромобилей-2012</h5>
                                        </li>
                                        <li><img src="img/upload/20120920151253007.jpg"></li>
                                    </a>
                                </ul>
                            </li>
                            <li class="ContTimelineList ContTimelineRight">
                                <span sid="1" class="TimelineYear" id="monthcont0">Янв.</span>

                                <ul class="TimelineBox">
                                    <a href="new.html">
                                        <li class="ContTimelineTop">
                                            <time class="TimelineDate">2012.01.12</time>
                                            <h5 class="TimelineTitle">LUXGEN получает три премии Yahoo! Auto Awards 2011.</h5>
                                        </li>
                                        <li><img src="img/upload/20120920151308948.jpg"></li>
                                    </a>
                                </ul>
                            </li>*}

                        </ul>
                        {/if}
                    </div>
                </div>
            {/if}
        </div>
        <div id="topBtn" class="topBtn" style="display: none;">
            <span> </span>
        </div>
    </div>
</div>