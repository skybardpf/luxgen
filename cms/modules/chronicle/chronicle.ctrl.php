<?php
class ChronicleController extends CMS_Controller
{
    
    public function actionDelete_image()
    {
        $this->model()->deleteFileFromElement('news', array('id' => $this->app->request->id), $this->app->request->field); 
        header("Location: /admin/news/modify/id/".$this->app->request->id);
    }

    public function actionList() {
        $this->listCond = array('order' => array('created' => 'DESC'));
        parent::actionList();
    }
}