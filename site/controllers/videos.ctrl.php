<?php
class VideosController extends Site_Controller
{
    public function actionDefault(){ 
        if ($this->app->request->id) {
            return $this->Show($this->app->request->id);
        }
        zf::addCSS('colorbox', '/public/site/css/colorbox.css');
        zf::addJS('colorbox', '/public/site/js/jquery.colorbox.js');
        zf::addJS('jyoutube', '/public/site/js/jyoutube.js');
        $this->page->videos = $videos = $this->model('videos')->getList(
            'videos', 
            'site', 
            array(
                'order' => array(
                    'pos' => 'ASC'
                )
            )
        );
        $this->page->content = $this->renderView('list');
//        debug::dump($imgs);
        $this->loadView('main',null);
    }
    
    public function Show(){ 
        $this->page->video = $video = $this->model('videos')->GetByCond(
            'videos', 
            'site', 
            array(
                'where' => array(
                    'id' => $this->app->request->id,
                ),
            )
        );
        $this->loadView('show');
        //debug::dump($imgs);
//        $this->loadView('main',null);
    }
}