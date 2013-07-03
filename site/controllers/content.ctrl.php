<?php
class ContentController extends Site_Content_Controller
{
	public function actionTest_drive(){
		$data = ($_POST) ? $_POST : array();
		$model = $this->model('test_drive', 'test_drive');
		$model->initValues(array('start_time', 'end_time'));
		$elements = $model->getFields('test_drive', 'site_form');
		$this->loadForm('test_drive', $elements, $data);
		if ($_POST && $this->form('test_drive')->validate($model)) {
			$data = $this->form('test_drive')->getData();
			$fields_titles = $model->getTitles('test_drive', 'site_form');
			$fields = '<table>';
			foreach ($data as $k => $d) {
				$fields .= '<tr><td>'.$fields_titles[$k].':</td><td>'.$d.'</td></tr>';
			}
			$fields .= '</table>';
			// Высылаем на почту
			$data_to_send = array(
				'site_name' => 'luxgen.ru',
				'date_time' => date('H:i:s d-m-Y', time()),
				'fields' => $fields,
				'host' => $_SERVER['HTTP_HOST']
			);
            $data['created'] = date('Y-m-d H:i:s');
            $model->Save('test_drive', $data);

			$model->SendMail($this->page->settings['tdrv_email'], $data_to_send, 'test_drive_request');
			$this->page->success_send = true;
		} else {
			$this->page->errors = $this->form('test_drive')->getErrors();
		}
		$this->page->content = $this->renderView('test_drive','test_drive');
		$this->loadView('main', null);
	}
}