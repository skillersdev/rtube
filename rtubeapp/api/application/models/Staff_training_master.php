<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Staff_training_master extends MY_Model {

	public $table='staff_training_master';

	public function get_staff_training_list($staff_id) {
		return $this->db->select('a.id, a.training_name, a.training_date, DATE_FORMAT(a.training_date, "%d/%m/%Y") AS std_training_date, a.training_description, a.training_duration, a.created_date, DATE_FORMAT(a.created_date, "%d/%m/%Y") AS std_created_date, a.created_by, b.staff_name, b.staff_employee_id, c.staff_category_name')
			->join('staff_master AS b', '`a`.`fk_staff_id`=`b`.`id`', 'left')
			->join('staff_category_master AS c', '`b`.`staff_category_id`=`c`.`id`', 'left')
			->where('a.fk_staff_id', $staff_id)
			->get('staff_training_master AS a')
			->result();
	}

	public function get_training_list() {
		return $this->db->select('a.id, a.training_name, a.training_date, DATE_FORMAT(a.training_date, "%d/%m/%Y") AS std_training_date, a.training_description, a.training_duration, a.created_date, DATE_FORMAT(a.created_date, "%d/%m/%Y") AS std_created_date, a.created_by, b.staff_name, b.staff_employee_id, c.staff_category_name')
			->join('staff_master AS b', '`a`.`fk_staff_id`=`b`.`id`', 'left')
			->join('staff_category_master AS c', '`b`.`staff_category_id`=`c`.`id`', 'left')
			->get('staff_training_master AS a')
			->result();
	}
}
