<?php

class Test_driveModel extends CMS_Model {

	/**
	 * Инициализация полей
	 * @param array $fields
	 * @param null $misc
	 *
	 * @return array
	 */
	public function initValues($fields, $misc = null) {
		if(is_array($fields)){
			if (in_array('start_time', $fields)){
				$data = $this->getTimeValues();
				$values = array();
				if ($data) {
					foreach ($data as $key => $val) {
						$values[$val['id']] = $val['title'];
					}
					$this->values['start_time'] = $values;
				}
				unset($fields[array_search('start_time', $fields)]);
			}
			if (in_array('end_time', $fields)){
				$data = $this->getTimeValues();
				$values = array();
				if ($data) {
					foreach ($data as $key => $val) {
						$values[$val['id']] = $val['title'];
					}
					$this->values['end_time'] = $values;
				}
				unset($fields[array_search('end_time', $fields)]);
			}
		}

		return parent::initValues($fields, $misc);
	}

	/**
	 * Возвращает список времени за каждые пол часа 0:00, 0:30, 1:00
	 */
	private function getTimeValues() {
		$values = array();
        $max_time = 22;
		for ($i = 9; $i < $max_time; $i++) {
			$time = sprintf('%02d:%02d', $i, 0);
			$values[] = array('id' => $time, 'title' => $time);
            if(($max_time-$i)!=1){
                $time = sprintf('%02d:%02d', $i, 30);
                $values[] = array('id' => $time, 'title' => $time);
            }
		}
		return $values;
	}

	/** Validates age field for min and max values
	 *
	 * @param $field
	 * @param $value
	 * @return bool
	 */
	public function validatorAgeCheck($field, $value) {
		if ($field == 'age' && ($value < 18 || $value > 100))
			return false;
		return true;
	}

	/** Compare time start and time end
	 *
	 * @return bool
	 */
	public function validatorCompareTimes() {
		if (isset($_POST['start_time']) && isset($_POST['end_time']))
			return ($_POST['start_time'] < $_POST['end_time']);
		else
			return true;
	}


}
