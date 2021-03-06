<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>{$meta.title|default:$title}</title>
    <meta name="keywords" content="{$meta.keywords}">
    <meta name="description" content="{$meta.description}">
    <meta name="author" content="{$meta.author}">
    <!-- CSS -->
    {foreach from=$pageCSS item=item}
        <link href='{$item}' rel='stylesheet' type='text/css'>
    {/foreach}
    <!-- JS -->
    <script type="text/javascript">
        var root_url = '{$root_url}';
        var ctrlName = '{$ctrlName}';
    </script>
    {foreach from=$pageJS item=item}
        <script src='{$item}' type='text/javascript'></script>
    {/foreach}
    <!--zf::debug:head-->
</head>

<body>
<div id="fb-root"></div>
<script>(function (d, s, id) {ldelim}
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/ru_RU/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
        {rdelim
    }(document, 'script', 'facebook-jssdk'));</script>
<div class="Wrap">
    {loadview name=header}
    <div class="midWrap">
        {if $page_content.id == 1}
            {loadview name=main_page}
        {else}
            {$page_content.content}
            {$content}
        {/if}
    </div>
    {loadview name=footer}
</div>
<!--zf::debug:body-->
</body>
</html>