<?php

class ImgsModel extends CMS_Model {
    protected $valuesConf = array(
        'model_id' => array(
            'keyField'   => 'id',
            'titleField' => 'title',
            'tableName'  => 'models',
            'cond'       => array('order' => array('title' => 'asc'))
        ),
    );
}
