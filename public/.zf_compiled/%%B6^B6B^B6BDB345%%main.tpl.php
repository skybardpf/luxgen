<?php /* Smarty version 2.6.25, created on 2013-08-08 19:02:43
         compiled from /home/le/projects/luxgen-dealer/public/../site/views/main.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'default', '/home/le/projects/luxgen-dealer/public/../site/views/main.tpl', 5, false),array('function', 'loadview', '/home/le/projects/luxgen-dealer/public/../site/views/main.tpl', 34, false),)), $this); ?>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><?php echo ((is_array($_tmp=@$this->_tpl_vars['meta']['title'])) ? $this->_run_mod_handler('default', true, $_tmp, @$this->_tpl_vars['title']) : smarty_modifier_default($_tmp, @$this->_tpl_vars['title'])); ?>
</title>
	<meta name="keywords" content="<?php echo $this->_tpl_vars['meta']['keywords']; ?>
">
	<meta name="description" content="<?php echo $this->_tpl_vars['meta']['description']; ?>
">
	<meta name="author" content="<?php echo $this->_tpl_vars['meta']['author']; ?>
">
	<!-- CSS -->
<?php $_from = $this->_tpl_vars['pageCSS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
	<link href='<?php echo $this->_tpl_vars['item']; ?>
' rel='stylesheet' type='text/css'>
<?php endforeach; endif; unset($_from); ?>
	<!-- JS -->
	<script type="text/javascript">
		var root_url = '<?php echo $this->_tpl_vars['root_url']; ?>
';
		var ctrlName = '<?php echo $this->_tpl_vars['ctrlName']; ?>
';
	</script>
<?php $_from = $this->_tpl_vars['pageJS']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
	<script src='<?php echo $this->_tpl_vars['item']; ?>
' type='text/javascript'></script>
<?php endforeach; endif; unset($_from); ?>
	<!--zf::debug:head-->
</head>    

<body>
<div id="fb-root"></div>
<script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/ru_RU/all.js#xfbml=1";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
<div class="Wrap">
    <?php echo smarty_function_loadview(array('name' => 'header'), $this);?>

    <div class="midWrap">
        <?php if ($this->_tpl_vars['page_content']['id'] == 1): ?>
            <?php echo smarty_function_loadview(array('name' => 'main_page'), $this);?>

        <?php else: ?>
            <?php echo $this->_tpl_vars['page_content']['content']; ?>

            <?php echo $this->_tpl_vars['content']; ?>

        <?php endif; ?>
    </div>
    <?php echo smarty_function_loadview(array('name' => 'footer'), $this);?>

</div>
<!--zf::debug:body-->
</body>
</html>