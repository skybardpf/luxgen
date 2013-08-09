<?php
class VideosController extends Site_Controller
{
    public function actionDefault(){ 
        if ($this->app->request->id) {
            return $this->Show($this->app->request->id);
        }
        zf::addCSS('colorbox', PUBLIC_PATH.'/site/css/colorbox.css');
        zf::addJS('colorbox', PUBLIC_PATH.'/site/js/jquery.colorbox.js');
        zf::addJS('jyoutube', PUBLIC_PATH.'/site/js/jyoutube.js');
        $this->page->videos = $videos = $this->model('videos')->getList(
            'videos', 
            'site', 
            array(
                'order' => array(
                    'pos' => 'ASC'
                )
            )
        );
        
        if(count($this->page->meta) < 2) {
            $meta_tags['title'] = 'Галерея — Видео';
            $meta_tags['keywords'] = 'Галерея — Видео';
            $meta_tags['description'] = 'Галерея — Видео';
            $this->page->meta = $meta_tags;
        }
        
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