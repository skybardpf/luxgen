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