<?php
/**
 * Created by JetBrains PhpStorm.
 * User: cyberlis
 * Date: 20.06.13
 * Time: 14:49
 */

class PressController extends Site_Controller
{
    public function actionDefault(){
        zf::addCSS('reset', '/public/site/css/reset.css');
        zf::addCSS('style', '/public/site/css/style.css');
        zf::addCSS('style.timeline', '/public/site/css/style.timeline.css');
        zf::addCSS('style.template', '/public/site/css/style.template.css');
        if($this->app->request->id){
           return $this->Show();
        }
        $cond = $ind = array();
        $cond['order'] = array('created' => 'DESC');
		$cond['where'] = array('display' => 'yes');
        debug::add_log("<b>Вытаскиваем прессу</b>");
        $press = $this->model('press')->getList('press', 'site', $cond);
        if (!empty($press)) {
            foreach($press as &$pr) {
                $year = date('Y', strtotime($pr['created']));
                if (!isset($ind[$year])) {
                    $ind[$year] = $pr['year'] = $year;
                }

            }
            unset($pr);
        }

        $this->page->press = $press;


        if(count($this->page->meta) < 2) {
            $meta_tags['title'] = 'Новости — Пресса о нас';
            $meta_tags['keywords'] = 'Новости — Пресса о нас';
            $meta_tags['description'] = 'Новости — Пресса о нас';
            $this->page->meta = $meta_tags;
        }

        $tmpyears = $this->model('news')->getList('news', array('created'));
        if (!empty($tmpyears)) {
            foreach($tmpyears as $year) {
                $year = date('Y', strtotime($year['created']));
                $years[$year] = $year;
            }
        }

        $this->page->years = $years;

        $this->page->content = $this->renderView('list');
//        debug::dump($years);
        $this->loadView('main',null);
    }
    public function Show(){
        if($this->app->request->id){
            $this->page->press_item = $this->model('press', 'press')->Get($this->app->request->id, 'press', $this->model('press', 'press')->getFieldsNames('press', 'site'));
        }
		        if(count($this->page->meta) < 2) {
            $meta_tags['title'] = $this->page->press_item['title'];
            $meta_tags['keywords'] = 'Новости — Пресса о нас';
            $meta_tags['description'] = 'Новости — Пресса о нас';
            $this->page->meta = $meta_tags;
        }
		$tmpyears = $this->model('news')->getList('news', array('created'));
        if (!empty($tmpyears)) {
            foreach($tmpyears as $year) {
                $year = date('Y', strtotime($year['created']));
                $years[$year] = $year;
            }
        }

        $this->page->years = $years;
        $this->page->content = $this->renderView('list');
//        debug::dump($years);
        $this->loadView('main',null);
    }

}