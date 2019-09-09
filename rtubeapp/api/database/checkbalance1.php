<?php
include_once ("db.php");
$array =  $_POST['model'];

$tes1=json_decode($array);

$array1 = json_decode(json_encode($tes1), True);
//$_POST = $_POST['model'][];
if($array1[0]['username'])
{
	 $status = "OK"; //initial status
	 $msg="";
	$username=$array1[0]['username']; //fetching details through post method
	$password = $array1[0]['password'];
	 //$pay_amt= $_POST['pay_amt']; /* This line commented by karthikeyan */
	 $userid=$array1[0]['userid'];
	 $renewpckid=$array1[0]['pack_id'];
	 $uaid=$array1[0]['pack_id_user'];
	 $pcktake=$array1[0]['pack_id'];

	
	// Retrieve username and password from database according to user's input, preventing sql injection
	/* End condition for checking amount was removed by karthikeyan in below query */
	$query ="SELECT COUNT(*) AS ucount FROM affiliateuser WHERE (username = '" .$array1[0]['username']. "') AND (password = '" .$array1[0]['password']. "') AND (active = 0)";
	//echo $query;die;
	if ($stmt = mysqli_query($con, $query)) {
		
		/* execute query */
	  
	    $num=$stmt->fetch_array(MYSQLI_ASSOC);
	
	    /* close statement */
	   
	}
	//echo $num['ucount'];die;
	//mysqli_close($con);
	// Check username and password match
if (($num['ucount']) == 1) {
		
		// $queryuser="SELECT id,pcktaken FROM  affiliateuser where username = '$userid'"; 
		// $resultuser = mysqli_query($con,$queryuser);
		
		// while($rowuser = mysqli_fetch_array($resultuser))
		// {
		// 	 $uaid="$rowuser[id]";
		//  	 $pcktake="$rowuser[pcktaken]";
		// }
		$query="SELECT * FROM  packages where id = $renewpckid"; 
		 
		$result = mysqli_query($con,$query);
		

		while($row = mysqli_fetch_array($result))
		{
			$pckid="$row[id]";
			$pname="$row[name]";
			$pprice="$row[price]";
			$pcur="$row[currency]";
			$ptax="$row[tax]";
			$gatewayid="$row[gateway]";
			$pay_via_voucher="$row[pay_via_voucher]";// This line was added by karthikeyan
			$total=$pprice+$ptax;
			$exp_date="$row[validity]";
		}
		
		$query4=mysqli_query($con,"SELECT  pcktaken,tamount As TotalAmt FROM affiliateuser WHERE username = '$username'");
		$row4=$query4->fetch_array(MYSQLI_ASSOC);
		$tot_amt=$row4['TotalAmt']-$pay_via_voucher;
		/* Code by karthikeyan starts */
		$pcktaken = $row4['pcktaken'];
		$querypackage="SELECT minimum_voucher,maximum_register FROM  packages where id = $pcktaken";
		$resulpackage = mysqli_query($con,$querypackage);
		while($rowpackage = mysqli_fetch_array($resulpackage))
		{
			 $minimum_voucher="$rowpackage[minimum_voucher]";
		 	 $maximum_register="$rowpackage[maximum_register]";
		}
		if ($tot_amt >= $minimum_voucher && $pay_via_voucher <= $maximum_register)
		{
			$query=mysqli_query($con,"insert into paypalpayments(orderid,transacid,price,currency,date,cod,pckid,gateway) values('$uaid','R.V','$pay_via_voucher','$pcur',NOW(),1,'$renewpckid','R.B')");
			
				/* Code by karthikeyan ends */
				$up_query=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt."' where username='".$username."'");
				/* Code by karthikeyan starts */
			
				/**need change here*/
				$cur=date("Y-m-d");
	                        $expiry=date('Y-m-d', strtotime($cur. '+ '.$exp_date.'days'));
	                        $user_vd_pck_id=$array1[0]['pack_id_user'];
				$result=mysqli_query($con,"UPDATE user_vs_packages SET renew_date='$expiry',package_status=0 WHERE id='$user_vd_pck_id'");
			
			
			
			$query5=mysqli_query($con,"SELECT  * FROM affiliateuser WHERE username = '$userid'");
				$row5=$query5->fetch_array(MYSQLI_ASSOC);

				// print_r($userid);die;
				$curr_stage=$row5['level']; 
				$current_tot=$row5['tamount'];
				$curr_ref=$row5['referedby'];

				$curr_pack=$array1[0]['pack_id'];//current package for stage1 ref
				
				$sqlquery_package="SELECT * FROM packages where id = $curr_pack"; //fetching amt from package table from database\
				//echo $curr_pack;die;
				$package_details=mysqli_query($con,$sqlquery_package);
				$package_info = $package_details->fetch_array(MYSQLI_ASSOC);

						
				$p1up=$package_info['stage1_up'];
				$p2up=$package_info['stage2_up'];
				$p3up=$package_info['stage3_up'];
				$p4up=$package_info['stage4_up'];
				$p5up=$package_info['stage5_up'];
				$p6up=$package_info['stage6_up'];
				$p7up=$package_info['stage7_up'];
				$p8up=$package_info['stage8_up'];
				$p9up=$package_info['stage9_up'];
				$p10up=$package_info['stage10_up'];

				$p11up=$package_info['stage11_up'];
				$p12up=$package_info['stage12_up'];
				$p13up=$package_info['stage13_up'];
				$p14up=$package_info['stage14_up'];
				$p15up=$package_info['stage15_up'];
				$p16up=$package_info['stage16_up'];
				$p17up=$package_info['stage17_up'];
				$p18up=$package_info['stage18_up'];
				$p19up=$package_info['stage19_up'];
				$p20up=$package_info['stage20_up'];


				$p21up=$package_info['stage21_up'];
				$p22up=$package_info['stage22_up'];
				$p23up=$package_info['stage23_up'];
				$p24up=$package_info['stage24_up'];
				$p25up=$package_info['stage25_up'];
				$p26up=$package_info['stage26_up'];
				$p27up=$package_info['stage27_up'];
				$p28up=$package_info['stage28_up'];
				$p29up=$package_info['stage29_up'];
				$p30up=$package_info['stage30_up'];

		 		$indirect_ref_amt=$package_info['indirect_ref_amt'];
		 	

				//bonus code starts here
				$q1=mysqli_query($con,"SELECT  * FROM affiliate_bonus_history WHERE (user_id = '$userid')");
				$all_list1 = mysqli_fetch_array($q1, MYSQL_ASSOC);
				$ref_bonus_user= $all_list1['stage1_ref'];
				$i=2;
				while($ref_bonus_user !=""){

					$q2=mysqli_query($con,"SELECT  * FROM affiliate_bonus_history WHERE (user_id = '$ref_bonus_user')");
					$all_list2 = mysqli_fetch_array($q2, MYSQL_ASSOC);
					$ref_bonus_user2= $all_list2['stage1_ref'];
					if($ref_bonus_user2 !=""){
						$qq2=mysqli_query($con,"SELECT  tamount As TotalAmt FROM affiliateuser WHERE username = '$ref_bonus_user2'");
						$qrow2=$qq2->fetch_array(MYSQLI_ASSOC);
						$tot_amt2=($qrow2['TotalAmt']+$indirect_ref_amt);
						$qupdate2=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt2."'where username='".$ref_bonus_user2."'");	
						
						//stage update
						//$st_update2=mysqli_query($con,"update affiliate_bonus_history set stage".$i."_ref='".$ref_bonus_user2."'where user_id='".$luser_id."'");		
						$ref_bonus_user=$all_list2['stage1_ref'];
						$i++;
					}
					else
					{
						$ref_bonus_user="";
					}


				}	
			$response['status']="success";
            echo json_encode($response,JSON_UNESCAPED_SLASHES);
            die();
		/* Code by karthikeyan starts */
		}
		else
		{
			$response['status']="Failed";
            echo json_encode($response,JSON_UNESCAPED_SLASHES);
            die();
		}
		/* Code by karthikeyan ends */
	}
	else
	{
		$response['status']="Error";
            echo json_encode($response,JSON_UNESCAPED_SLASHES);
            die();
	
	}
	
	
}else{echo $status= "failed";}

?>