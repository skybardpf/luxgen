<link rel="stylesheet" href="/public/site/css/style.mediaBox.template.css">
<div class="Wrap">
    <header class="Header">
        <ul class="both">
            <li class="title"><h1>Luxgen</h1></li>
            <li class="info">
                <article class="Article">
                    <h3>{$img.title}</h3>
                </article>
                <a class="download" target="_blank" href="/wallpaper/download/id/{$img.id}">Скачать</a>
            </li>
        </ul>
    </header>
    <div class="midWrap">
        <div class="mainContent">
            <span class="spanPhoto"></span>
            <img src="{$img.image|replace:'[dir]':'original'}">
        </div>
    </div>
</div>