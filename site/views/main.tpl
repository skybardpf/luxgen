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
		{$page_content.content}
		{$content}
    <!--zf::debug:body-->
</body>
</html>