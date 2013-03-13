<?php
class SuvController extends Site_Controller
{
    public function actionDefault(){ 
        $this->page->imgs = $imgs = $this->model('imgs')->getList(
            'imgs', 
            'site', 
            array(
                'where' => array(
                    'model_id' => 2
                ),
                'order' => array(
                    'pos' => 'ASC'
                )
            )
        );
        
        if(count($this->page->meta) < 2) {
            $meta_tags['title'] = 'LUXGEN 7 SUV';
            $meta_tags['keywords'] = 'LUXGEN 7 SUV';
            $meta_tags['description'] = 'LUXGEN 7 SUV';
            $this->page->meta = $meta_tags;
        }
        
        $this->page->content = $this->renderView('list');
//        debug::dump($imgs);
        $this->loadView('main',null);
    }
}