<?php
class GalleryController extends Site_Controller
{
    public function actionDefault(){ 
        if ($this->app->request->id) {
            return $this->Show($this->app->request->id);
        }
        zf::addCSS('colorbox', '/public/site/css/colorbox.css');
        zf::addJS('colorbox', '/public/site/js/jquery.colorbox.js');
        $this->page->imgs = $imgs = $this->model('imgs')->getList(
            'imgs', 
            'site', 
            array(
                'where' => array(
                    'where_show' => 'imgs'
                ),
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
        $this->page->img = $imgs = $this->model('imgs')->GetByCond(
            'imgs', 
            'site', 
            array(
                'where' => array(
                    'where_show' => 'imgs',
                    'id' => $this->app->request->id,
                ),
            )
        );
        $this->loadView('show');
        //debug::dump($imgs);
        //$this->loadView('main',null);
    }
    public function actionDownload(){ 
        $id = $this->app->request->id;
        $img = $this->model('imgs')->GetByCond(
            'imgs', 
            'site', 
            array(
                'where' => array(
                    'where_show' => 'imgs',
                    'id' => $this->app->request->id,
                ),
            )
        );
        if (!empty($img)) {
            $file = str_replace('[dir]', 'original', $img['image']);
            $image = pathinfo($file);
            $image = md5(time().rand(5, 100) . $image['filename']) . "." . $image['extension'];
            header("Content-type: image/jpeg");
            header("Content-Disposition: attachment; filename='{$image}'");
            readfile($_SERVER['DOCUMENT_ROOT'].$file);
        }
        
    }
}