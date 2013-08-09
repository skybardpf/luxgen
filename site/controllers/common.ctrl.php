<?php
class CommonController extends Site_Common_Controller
{
	public function run()
	{
		parent::run();

        zf::addJS('jquery.pnotify', PUBLIC_PATH. 'site/js/jquery.pnotify.js');
        zf::addJS('youtube', PUBLIC_PATH. 'site/js/jquery.youtube.js');
        zf::addJS('ContentSet', PUBLIC_PATH. 'site/js/jquery.ContentSet.js');
        zf::addJS('common', PUBLIC_PATH. 'site/js/common.js');
        zf::addCSS('jquery-ui', PUBLIC_PATH. 'site/css/jquery-ui.css');
        zf::addCSS('jquery.pnotify', PUBLIC_PATH. 'site/css/jquery.pnotify.css');
        zf::addCSS('reset', PUBLIC_PATH. 'site/css/reset.css');
        zf::addCSS('chooseFont', PUBLIC_PATH. 'site/css/style.chooseFont.css');
        zf::addCSS('main', PUBLIC_PATH. 'site/css/style.css');
        zf::addCSS('template', PUBLIC_PATH. 'site/css/style.template.css');

	}
}
?>
