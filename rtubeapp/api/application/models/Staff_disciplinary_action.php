<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Staff_disciplinary_action extends MY_Model {

	public $table='staff_disciplinary_action';

	public function get_staff_disciplinary_list($staff_id) {
		return $this->db->select('a.id, a.corrective_action, a.description, a.comments, a.created_date, DATE_FORMAT(a.created_date, "%d/%m/%Y") AS std_created_date, a.created_by, b.staff_name, b.staff_employee_id, c.staff_category_name')
			->join('staff_master AS b', '`a`.`fk_staff_id`=`b`.`id`', 'left')
			->join('staff_category_master AS c', '`b`.`staff_category_id`=`c`.`id`', 'left')
			->where('a.fk_staff_id', $staff_id)
			->get('staff_disciplinary_action AS a')
			->result();
	}

	public function get_disciplinary_list() {
		return $this->db->select('a.id, a.corrective_action, a.description, a.comments, a.created_date, DATE_FORMAT(a.created_date, "%d/%m/%Y") AS std_created_date, a.created_by, b.staff_name, b.staff_employee_id, c.staff_category_name')
			->join('staff_master AS b', '`a`.`fk_staff_id`=`b`.`id`', 'left')
			->join('staff_category_master AS c', '`b`.`staff_category_id`=`c`.`id`', 'left')
			->get('staff_disciplinary_action AS a')
			->result();
	}
}
