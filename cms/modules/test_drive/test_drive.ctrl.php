<?php
class Test_driveController extends CMS_Controller
{
    public function actionList(){
        $this->model()->initValues(array('start_time', 'end_time'));
        $this->listCond = array('order' => array('created'));
        parent::actionList();
    }
    public function actionShow(){
        $this->model()->initValues(array('start_time', 'end_time'));
        parent::actionShow();
    }
}