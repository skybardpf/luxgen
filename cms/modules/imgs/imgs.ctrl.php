<?php
class ImgsController extends CMS_Controller
{
    
    public function run() {
        $this->model()->initValues(array('model_id'));
        parent::run();
    }
           
    public function actionDelete_image()
    {
        $this->model()->deleteFileFromElement('news', array('id' => $this->app->request->id), $this->app->request->field); 
        header("Location: /admin/news/modify/id/".$this->app->request->id);
    }
             
    public function actionList() { 
        $this->listCond = array('order' => array('imgs.pos' => 'ASC'));
        parent::actionList();   
    }  
}