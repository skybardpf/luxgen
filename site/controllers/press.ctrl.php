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

        $cond = $ind = array();
        $cond['order'] = array('created' => 'DESC');
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
            $meta_tags['title'] = 'О компании LUXGEN — Хроники';
            $meta_tags['keywords'] = 'О компании LUXGEN — Хроники';
            $meta_tags['description'] = 'О компании LUXGEN — Хроники';
            $this->page->meta = $meta_tags;
        }


        $this->page->content = $this->renderView('list');
//        debug::dump($years);
        $this->loadView('main',null);
    }

}