<?php
class ChroniclesController extends Site_Controller
{
    public function actionDefault(){ 
        zf::addCSS('reset', '/public/site/css/reset.css');
        zf::addCSS('style', '/public/site/css/style.css');
        zf::addCSS('style.timeline', '/public/site/css/style.timeline.css');
        zf::addCSS('style.template', '/public/site/css/style.template.css');
        $cond = $ind = array();
        $cond['order'] = array('created' => 'DESC');
        debug::add_log("<b>Вытаскиваем хроники</b>");
        $chronicles = $this->model('chronicle')->getList('chronicle', 'site', $cond);
        if (!empty($chronicles)) {
            foreach($chronicles as &$chronicle) {
                $year = date('Y', strtotime($chronicle['created']));
                if (!isset($ind[$year])) {
                    $ind[$year] = $chronicle['year'] = $year; 
                } 
                
            }
            unset($chronicle);
        }
        
        $this->page->chronicles = $chronicles;
        
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