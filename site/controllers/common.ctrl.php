<?php
class CommonController extends Site_Common_Controller
{
	public function run()
	{
		parent::run();

        zf::addJS('jquery.pnotify', BASE_URL.'site/js/jquery.pnotify.js');
        zf::addJS('youtube', BASE_URL.'site/js/jquery.youtube.js');
        zf::addJS('ContentSet', BASE_URL.'site/js/jquery.ContentSet.js');
        zf::addJS('common', BASE_URL.'site/js/common.js');
        zf::addCSS('jquery-ui', BASE_URL.'site/css/jquery-ui.css');
        zf::addCSS('jquery.pnotify', BASE_URL.'site/css/jquery.pnotify.css');
        zf::addCSS('reset', BASE_URL.'site/css/reset.css');
        zf::addCSS('chooseFont', BASE_URL.'site/css/style.chooseFont.css');
        zf::addCSS('main', BASE_URL.'site/css/style.css');
        zf::addCSS('template', BASE_URL.'site/css/style.template.css');

	}
}
?>
