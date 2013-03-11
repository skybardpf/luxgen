<?php
class CommonController extends Site_Common_Controller
{
	public function run()
	{
		parent::run();

        zf::addJS('jquery.pnotify', '/public/site/js/jquery.pnotify.js');
        zf::addJS('youtube', '/public/site/js/jquery.youtube.js');
        zf::addJS('ContentSet', '/public/site/js/jquery.ContentSet.js');
        zf::addJS('common', '/public/site/js/common.js');
        zf::addCSS('jquery-ui', '/public/site/css/jquery-ui.css');
        zf::addCSS('jquery.pnotify', '/public/site/css/jquery.pnotify.css');
        zf::addCSS('reset', '/public/site/css/reset.css');
        zf::addCSS('chooseFont', '/public/site/css/style.chooseFont.css');
        zf::addCSS('main', '/public/site/css/style.css');
        zf::addCSS('template', '/public/site/css/style.template.css');

	}
}
?>
