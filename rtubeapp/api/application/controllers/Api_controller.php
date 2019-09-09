<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api_controller extends CI_Controller {

	public function index() {
		$this->output->set_content_type('application/json');
		die(json_encode(array('status'=>"failure", 'error'=>'UN-Authorized access'), JSON_UNESCAPED_SLASHES));
	}

	public function checklogin()
  {
		$this->output->set_content_type('application/json');
		$response=array('status'=>"success");
        
        if($this->input->post('user_name')!="" && $this->input->post('user_password') !="" ){

        	
            $res=$this->db->query("select * from affiliateuser where username='".$this->input->post('user_name')."' AND password='".$this->input->post('user_password')."' and active=1");


            if($res->num_rows()>0){
                $result=$res->result_array();
                $result=$result[0];
                $response['result']=array('id'=>$result['id'],'username'=>$result['username'],'user_type'=>$result['user_type']);
                
            }else{
                $response['status']="failure";
                $response['message']="Sorry!!, Invalid User credentials submitted. Please try again.";        
            }
            
        }else{
            $response['status']="failure";            
            $response['message']="Sorry!!, Invalid Attempt!!.. Permission denied.";
        }
        
        echo json_encode($response,JSON_UNESCAPED_SLASHES);
        die();
        
  }
    public function add_package_master(){
       $this->output->set_content_type('application/json');

        $result=$this->db->insert('package_info', $model);
        if($result){
          $response=array('status'=>"success");
          $response['message']="Package has been Inserted successfully";
        }
        else{
           $response=array('status'=>"error");
          $response['message']="Error while on inserting packge info";
      }
        echo json_encode($response,JSON_UNESCAPED_SLASHES);
        die();
        
    }
    
  public function get_package_list()
  {
     $this->output->set_content_type('application/json');
        $response=array();
        $response['status']="success";
        $result=array();
        $html="";
        global $api_path;        

        $res=$this->db->select("id,package_name,package_price,currency,pay_via_voucher, sign_up_bonus,maximum_transfer,package_details,package_tax,indirect_ref_amount,payout_for_user,minimum_voucher,maximum_generated_voucher,stage_bonus_amount,stage_upgradation_amount,DATE_FORMAT(created_date,'%d/%m/%Y%r')as created_date")->where('is_deleted','0')->get('package_info');


        if($res->num_rows()>0)
        {
          foreach($res->result_array() as $key=>$value)
          {               

            $result[]=array('id'=>$value['id'],'package_name'=>$value['package_name'],'package_price'=>$value['package_price'],'currency'=>$value['currency'],'pay_via_voucher'=>$value['pay_via_voucher'],'sign_up_bonus'=>$value['sign_up_bonus'],'maximum_transfer'=>$value['maximum_transfer'],'package_details'=>$value['package_details'],'package_tax'=>$value['package_tax'],'indirect_ref_amount'=>$value['indirect_ref_amount'],'payout_for_user'=>$value['payout_for_user'],'minimum_voucher'=>$value['minimum_voucher'],'maximum_generated_voucher'=>$value['maximum_generated_voucher'],'stage_bonus_amount'=>$value['stage_bonus_amount'],'stage_upgradation_amount'=>$value['stage_upgradation_amount'],'created_date'=>$value['created_date']);
          }
        }else{
            $response['status']="failure";
            $response['message']="No  records found..";
        }
        $response['result']=$result;
         echo json_encode($response,JSON_UNESCAPED_SLASHES);
         die();
    

  }
  
   public function editpackage($id)
    {
        //var_dump($id); die();
        $this->output->set_content_type('application/json');
        $response=array();
        $response['status']="success";
        $result=array();

            $res=$this->db->query("select * from ".$this->db->dbprefix('package_info')." where id='".$id."'");

            if($res->num_rows()>0){
                $in_array=$res->result_array();
                $result=$in_array[0];
            }else{
                $response['status']="failure";
                $response['message']=" No Package record found!!";
            }
            $response['result']=$result;

        echo json_encode($response,JSON_UNESCAPED_SLASHES);
        die();
    }
  public function updatepackage() {
        $this->output->set_content_type('application/json');
        $response=array('status'=>"success");

        $model = json_decode($this->input->post('model',FALSE));

       // print_r($model);die();

        if (isset($model)) {
        
            $this->db->where('id',$model->id);
            $result=$this->db->update('package_info', $model);
          //  pr($this->db->last_query());die();

            if ($result) {
                $response['message']="Package has been updated successfully";
            }
            else
            {
                 $response['status']="failure";
            $response['message']="Package has not been updated fully";
            }
            

        } else {
            $response['status']="failure";
            $response['message']="Choose Package and continue!!..";
        }

        die(json_encode($response, JSON_UNESCAPED_SLASHES));
    }
    public function deletepackage($id)
    {
      $this->output->set_content_type('application/json');
        $response=array();
        $response['status']="success";
        

        $res_chk=$this->db->query("select id from ".$this->db->dbprefix('package_info')." where id='".$id."' ");
        
        if($res_chk->num_rows()>0){

            $data=array('is_deleted'=>'1');
            $this->db->where('id',$id);
            $this->db->update($this->db->dbprefix('package_info'),$data);

            $response['status']="success";
            $response['message']="package record has been deleted successfully";
            
        }else{
            $response['status']="failure";
            $response['message']="Invalid Attempt!!.. Access denied..";    
        }
         echo json_encode($response,JSON_UNESCAPED_SLASHES);
         die();
    }
}
