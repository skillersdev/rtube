<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Staff_transfer_history extends MY_Model {

	public $table='staff_transfer_history';

	public function get_staff_transfer_history($staff_id) {
		return $this->db->select('a.id, a.fk_staff_id, a.staff_employee_id, b.staff_zone_name AS zone_id, c.region_name AS region_id, d.department_name AS department_id, a.created_date, DATE_FORMAT(a.created_date, "%d/%m/%Y") AS std_created_date, a.approved_date, DATE_FORMAT(a.approved_date, "%d/%m/%Y") AS std_approved_date, a.status')
			->join('zones_staff_master AS b', '`a`.`zone_id`=`b`.`id`', 'left')
			->join('region_master AS c', '`a`.`region_id`=`c`.`id`', 'left')
			->join('staff_department_master AS d', '`a`.`department_id`=`d`.`id`', 'left')
			->where(array('a.fk_staff_id'=>$staff_id, 'a.status!='=>'2'))
			->order_by('a.id', 'desc')
			->get('staff_transfer_history AS a')
			->result();
	}

	public function get_staff_last_transfer($staff_id) {
		$result=$this->db->select('a.id, a.fk_staff_id, a.staff_employee_id, b.staff_zone_name AS zone_id, c.region_name AS region_id, d.department_name AS department_id, a.created_date, DATE_FORMAT(a.created_date, "%d/%m/%Y") AS std_created_date, a.approved_date, DATE_FORMAT(a.approved_date, "%d/%m/%Y") AS std_approved_date, a.status')
			->join('zones_staff_master AS b', '`a`.`zone_id`=`b`.`id`', 'left')
			->join('region_master AS c', '`a`.`region_id`=`c`.`id`', 'left')
			->join('staff_department_master AS d', '`a`.`department_id`=`d`.`id`', 'left')
			->where(array('a.fk_staff_id'=>$staff_id, 'a.status!='=>'2'))
			->order_by('a.id', 'desc')
			->limit(1)
			->get('staff_transfer_history AS a');

		return ($result->num_rows()>0) ? $result->row() : null;
	}
}
