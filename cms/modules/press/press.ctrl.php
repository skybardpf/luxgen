<?php
class PressController extends CMS_Controller
{
    public function actionAdd(){
        zf::addJS('presscms', PUBLIC_PATH.'/site/js/press.js');
        if($_POST){
            if($_POST["linktype"]=='url'){
                $this->fields = $this->model()->getFields('press', 'modurl');
            } else if($_POST["linktype"]=='file'){
                $this->fields = $this->model()->getFields('press', 'modfile');
            }
        }
        parent::actionAdd('press', 'press', array('created' => date('Y-m-d H:i:s')));
    }

    public function actionModify(){
        zf::addJS('presscms', PUBLIC_PATH.'/site/js/press.js');
        if($_POST){
            if($_POST["linktype"]=='url'){
                $this->fields = $this->model()->getFields('press', 'modurl');
            } else if($_POST["linktype"]=='file'){
                $this->fields = $this->model()->getFields('press', 'modfile');
            }
        } else {
            $pr = $this->model()->Get($this->app->request->id, 'press', array('linktype'));
            if($pr['linktype']=='url'){
                $this->fieldsNames = $this->model()->getFieldsNames('press', 'modurl');
            }
            else {
                $this->fieldsNames = $this->model()->getfieldsNames('press', 'modfile');
            }

        }
        parent::actionModify();
    }
}