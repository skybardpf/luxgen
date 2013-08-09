<link rel="stylesheet" href="{$BASE_URL}site/css/style.mediaBox.template.css">
<div class="Wrap">
    <header class="Header">
        <ul class="both">
            <li class="title"><h1>Luxgen</h1></li>
            <li class="info">
                <article class="Article">
                    <h3>{$video.title}</h3>
                </article>
            </li>
        </ul>
    </header>
    <div class="midWrap">
        <div class="mainContent">
            <object type="application/x-shockwave-flash" data="{$video.link}" width="100%" height="100%">
                <param name="quality" value="high">
                <param name="wmode" value="opaque">
                <embed src="{$video.link}" type="application/x-shockwave-flash" width="100%" height="100%" allowscriptaccess="always" allowfullscreen="true" quality="high" menu="false" wmode="transparent" scale="scale">
            </object>
        </div>
    </div>
</div>