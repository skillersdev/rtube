<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Model extends CI_Model {
	
	public function save($data=array()) {
		if (isset($this->timestamps) && $this->timestamps==TRUE) {
			$data=array_merge($data, array('created_date'=>date('Y-m-d H:i:s')));
		}
		
		$this->db->insert($this->table, $data);
		
		return $this->db->insert_id();
	}

	public function update($where=array(), $data=array()) {
		if (isset($this->timestamps) && $this->timestamps==TRUE) {
			$data=array_merge($data, array('updated_date'=>date('Y-m-d H:i:s')));
		}
		
		// Get model primary key
		$primary_key=isset($this->primary_key) ? $this->primary_key : 'id';
		is_array($where) OR $where = array($primary_key=>intval($where));
		return $this->db->where($where)->update($this->table, $data);
	}

	public function delete($where=array()) {
		// Get model primary key
		$primary_key=isset($this->primary_key) ? $this->primary_key : 'id';

		is_array($where) OR $where = array($primary_key=>intval($where));
		if (isset($this->soft_delete) && $this->soft_delete==TRUE) {
			return $this->db->where($where)->update($this->table, array('deleted_date'=>date('Y-m-d H:i:s')));
		}
		else {
			return $this->db->where($where)->delete($this->table);
		}
	}

	public function bulk_delete($key, $list) {
		if (isset($this->soft_delete) && $this->soft_delete==TRUE) {
			return $this->db->where_in($key, $list)->update($this->table, array('deleted_date'=>date('Y-m-d H:i:s')));
		}
		else {
			return $this->db->where_in($key, $list)->delete($this->table);
		}
	}

	public function get_record($options=array()) {
		$select = isset($options['select']) ? $options['select'] : '*';
		$where = isset($options['conditions']) ? $options['conditions'] : array();
		
		$this->db->select($select)->where($where);
		if (isset($this->soft_delete) && $this->soft_delete==TRUE) {
			$this->db->where('deleted_date', NULL);
		}

		$result=$this->db->limit(1)->get($this->table);
		return ($result->num_rows()>0) ? $result->row() : NULL;
	}

	public function get_bulk_record($options=array()) {
		$select=isset($options['select']) ? $options['select'] : '*';
		$key=isset($options['key']) ? $options['key'] : 'id';
		$list=isset($options['list']) ? $options['list'] : array();
		$where=isset($options['conditions']) ? $options['conditions'] : array();
		$limit=isset($options['limit']) ? $options['limit'] : NULL;
		$offset=isset($options['offset']) ? $options['offset'] : NULL;
		$order_by=isset($options['order']) ? $options['order'] : NULL;

		$this->db->select($select)->where($where)->where_in($key, $list);
		if (isset($this->soft_delete) && $this->soft_delete==TRUE) {
			$this->db->where('deleted_date', NULL);
		}

		return $this->db->limit($limit, $offset)->order_by($order_by)->get($this->table)->result();
	}

	public function get_record_list($options=array()) {
		$select = isset($options['select']) ? $options['select'] : '*';
		$where = isset($options['conditions']) ? $options['conditions'] : array();
		$limit = isset($options['limit']) ? $options['limit'] : NULL;
		$offset = isset($options['offset']) ? $options['offset'] : NULL;
		$order_by = isset($options['order']) ? $options['order'] : NULL;
		
		$this->db->select($select)->where($where);
		if (isset($this->soft_delete) && $this->soft_delete==TRUE) {
			$this->db->where('deleted_date', NULL);
		}

		return $this->db->limit($limit, $offset)->order_by($order_by)->get($this->table)->result();
	}

	public function get_count($where=array()) { 
		return $this->db->where($where)->count_all_results($this->table);
	}
}
