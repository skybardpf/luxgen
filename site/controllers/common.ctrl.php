<?php
class CommonController extends Site_Common_Controller
{
	public function run()
	{
		parent::run();
		
		zf::addCSS('main', '/public/site/css/main.css');
		zf::addJS('common', '/public/site/js/common.js');
		zf::addCSS('jquery-ui', '/public/site/css/jquery-ui.css');
		zf::addCSS('jquery.pnotify', '/public/site/css/jquery.pnotify.css');
		zf::addJS('jquery.pnotify', '/public/site/js/jquery.pnotify.js');
		
	}
}
?>
