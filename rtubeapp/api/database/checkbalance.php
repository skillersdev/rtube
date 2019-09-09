<?php
include_once ("db.php");
$array =  $_POST['model'];

$tes1=json_decode($array);

$array1 = json_decode(json_encode($tes1), True);
$website_name = $array1[0]['website'];

// print_r($array1);die;

if($array1[0]['username'])
{
	 $status = "OK"; //initial status
	 $msg="";
	$username=$array1[0]['username']; //fetching details through post method pay via voucher account details
	$password = $array1[0]['password'];
	 //$pay_amt= $_POST['pay_amt']; /* This line commented by karthikeyan */
	$userid=$array1[0]['userid']; //PACKAGE user id
    $packid=$array1[0]['pack_id']; //pACKAGE id
    $pack_vs_users_id=$array1[0]['pack_id_user']; //pACKAGE id

	
	// Retrieve username and password from database according to user's input, preventing sql injection
	/* End condition for checking amount was removed by karthikeyan in below query */
	$query ="SELECT COUNT(*) AS ucount FROM affiliateuser WHERE (username = '".$array1[0]['username']."') AND (password = '".$array1[0]['password']."') AND (active = 1)";
    //echo $query;die();
	if ($stmt = mysqli_query($con, $query)) {
		
		/* execute query */
	  
	    $num=$stmt->fetch_array(MYSQLI_ASSOC);
	
	    /* close statement */
	   
	}
    //print_r($num);die;
	//mysqli_close($con);
	// Check username and password match
if (($num['ucount']) == 1) {
		
		// $queryuser="SELECT id,pcktaken FROM  affiliateuser where username = '$userid'";// get package details 
		// $resultuser = mysqli_query($con,$queryuser);
		
		// while($rowuser = mysqli_fetch_array($resultuser))
		// {
		// 	 $uaid="$rowuser[id]";
		//  	 $pcktake="$rowuser[pcktaken]";
		// }
        $uaid=$userid;
        $pcktake=$packid;

		$query="SELECT * FROM  packages where id = $pcktake"; 
		 
		$result = mysqli_query($con,$query);
		
		while($row = mysqli_fetch_array($result))
		{
			$pckid="$row[id]";
			$pname="$row[name]";
			$pprice="$row[price]";
			$pcur="$row[currency]";
			$ptax="$row[tax]";
			$gatewayid="$row[gateway]";
            $validity="$row[validity]";
			$pay_via_voucher="$row[pay_via_voucher]";// This line was added by karthikeyan
			$total=$pprice+$ptax;
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
       // echo $tot_amt."---".$minimum_voucher.'---'.$pay_via_voucher.'++'.$maximum_register;die;
		if ($tot_amt >= $minimum_voucher && $pay_via_voucher <= $maximum_register)
		{
			$query=mysqli_query($con,"insert into paypalpayments(orderid,transacid,price,currency,date,cod,pckid,gateway) values('$uaid','R.V','$pay_via_voucher','$pcur',NOW(),1,'$pckid','R.B')");
			/* Code by karthikeyan ends */
			$up_query=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt."' where username='".$username."'");
			/* Code by karthikeyan starts */
			
			/* Code by karthikeyan ends */
			
			
			//code by sridhar for activate automatically through voucher
			$tomake= $userid;
			$package=$pcktaken;
           
            $current_date=date("Y-m-d");
            $renew_date = date('Y-m-d', strtotime($current_date.''.$validity.' day'));
            //$result222=mysqli_query($con,"UPDATE affiliateuser SET active=1 WHERE username='$tomake'");
            $result=mysqli_query($con,"UPDATE user_vs_packages SET package_status=0,website='".$website_name."',activated_date='".$current_date."',renew_date='".$renew_date."' WHERE id='".$pack_vs_users_id."'");//activate package_vs_user
            
            //code added by sridhar

            $ref_query11=mysqli_query($con,"SELECT  * FROM affiliateuser WHERE id='$tomake'");
            $ref_list11=$ref_query11->fetch_array(MYSQLI_ASSOC);
            $ref=$ref_list11['referedby'];
            $userid=$tomake;
           // print_r($ref_list11);die;
            //signup bonus
            $tot_marketer_earning=$ref_list11['tamount'];
            $sbonus_query="SELECT sbonus FROM packages where id = $package"; //fetching no of days validity from package table from databse
            $sbonus_result=mysqli_query($con,$sbonus_query);
            $sbonus_list = mysqli_fetch_row($sbonus_result);
            $sbonus=$sbonus_list[0];
            $tot_amt9s=$tot_marketer_earning+$sbonus;
            $query=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt9s."'where username='".$tomake."'");
            //signup bonus	
    
    //echo $_SESSION['adminidusername']; exit;
    
                $c1=mysqli_query($con,"SELECT  COUNT(*) as STAGETOTUSER FROM affiliate_bonus_history WHERE (user_id = '$userid')");
                $c1_list=$c1->fetch_array(MYSQLI_ASSOC);
                $c1_count=$c1_list['STAGETOTUSER'];
    
                if($c1_count==0)
                {
                
                	if(!($package==""))
                	{
                    	$sqlquery11="SELECT validity FROM packages where id = $package"; //fetching no of days validity from package table from databse
                    	$rec211=mysqli_query($con,$sqlquery11);
                    	$row211 = mysqli_fetch_row($rec211);
                    	$noofdays=$row211[0]; //assigning website address
                    	$cur=date("Y-m-d");
                    	$expiry=date('Y-m-d', strtotime($cur. '+ '.$noofdays.'days'));
                    	$sbonus=0;
                	}
                
                	$sqlquery11="SELECT * FROM packages where id = $package"; //fetching amt from package table from database
                	$rec211=mysqli_query($con,$sqlquery11);
                	//$row211 = mysqli_fetch_row($rec211);
                    $row211 =$rec211->fetch_array(MYSQLI_ASSOC);
                	
                	$luser_id=$userid; //registered username 
                
                
                	//getting stage count
                	$s1=mysqli_query($con,"SELECT  COUNT(*) as STAGE1TOTUSER FROM affiliateuser as a,affiliate_bonus_history as b
                	 WHERE (b.stage1_ref = '$ref' || b.stage2_ref = '$ref' || b.stage3_ref = '$ref' || b.stage4_ref = '$ref' || b.stage5_ref = '$ref' || b.stage6_ref = '$ref' || b.stage7_ref = '$ref' || b.stage8_ref = '$ref' || b.stage9_ref = '$ref' || b.stage10_ref = '$ref' || b.stage11_ref = '$ref' || b.stage12_ref = '$ref' || b.stage13_ref = '$ref' || b.stage14_ref = '$ref' || b.stage15_ref = '$ref' || b.stage16_ref = '$ref' || b.stage17_ref = '$ref' || b.stage18_ref = '$ref' || b.stage19_ref = '$ref' || b.stage20_ref = '$ref' || b.stage21_ref = '$ref' || b.stage22_ref = '$ref' || b.stage23_ref = '$ref' || b.stage24_ref = '$ref' || b.stage25_ref = '$ref' || b.stage26_ref = '$ref' || b.stage27_ref = '$ref' || b.stage28_ref = '$ref' || b.stage29_ref = '$ref' || b.stage30_ref = '$ref' ) AND (a.username = b.user_id )");
                	$stage1_list=$s1->fetch_array(MYSQLI_ASSOC);
                	$stage1_count=$stage1_list['STAGE1TOTUSER'];
                	//getting stage count ends
                	$ref_count= $stage1_count;
                	$downline=2;
                	$marketer_count=1;
                	$ref_under_user=array();
                	for ($i=1; $i <=30 ; $i++) { 
                		$marketer_count *=$downline;
                		if($ref_count <=$marketer_count){
                			$ref_stage=$i;
                			$stage_amt=$row211['level'.$i];
                			
                			break;
                		}
                	}
                	
                	
                	$all_user_query=mysqli_query($con,"SELECT  * FROM affiliate_bonus_history WHERE (stage1_ref = '$ref' OR stage2_ref = '$ref' OR stage3_ref = '$ref' OR 
                	stage4_ref = '$ref' OR stage5_ref = '$ref' OR stage6_ref = '$ref' OR stage7_ref = '$ref' OR stage8_ref = '$ref' OR stage9_ref = '$ref' OR
                	stage10_ref = '$ref' OR	stage11_ref = '$ref' OR stage12_ref = '$ref' OR stage13_ref = '$ref' OR stage14_ref = '$ref' OR stage15_ref = '$ref' OR stage16_ref = '$ref' OR stage17_ref = '$ref' OR stage18_ref = '$ref' OR stage19_ref = '$ref' OR
                	stage20_ref = '$ref' OR
                	
                	stage21_ref = '$ref' OR stage22_ref = '$ref' OR stage23_ref = '$ref' OR 
                	stage24_ref = '$ref' OR stage25_ref = '$ref' OR stage26_ref = '$ref' OR stage27_ref = '$ref' OR stage28_ref = '$ref' OR stage29_ref = '$ref' OR
                	stage30_ref = '$ref' 
                	
                	) ORDER BY bid asc");
                	while ($all_list = mysqli_fetch_array($all_user_query, MYSQL_ASSOC)) {
                		$ref_under_user[]= $all_list['user_id'];
                	}
                    $ref_under_count=count($ref_under_user);    	
                
                	if($ref_under_count<2)
                	{
                		
                		//echo "cheking in 2";
                		$cur=date("Y-m-d");
                		$query2=mysqli_query($con,"insert into affiliate_bonus_history (`bid`,`user_id`,`referedby`,`stage1_ref`,`ref_stage`,`amt`,`created`) values 
                		('','$luser_id','$ref','$ref','$ref_stage','$stage_amt','$cur')"); //changes made here
                		
                		$query4=mysqli_query($con,"SELECT  tamount As TotalAmt FROM affiliateuser WHERE username = '$ref'");
                		$row4=$query4->fetch_array(MYSQLI_ASSOC);
                		$tot_amt=($row4['TotalAmt']+$stage_amt); 
                		
                		
                		$query=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt."',level='".$ref_stage."' where username='".$ref."'");
                		
                		
                		//bonus code starts here
                		
                				
                		$q1=mysqli_query($con,"SELECT  * FROM affiliate_bonus_history WHERE (user_id = '$luser_id')");
                		$all_list1 = mysqli_fetch_array($q1, MYSQL_ASSOC);
                		$ref_bonus_user= $all_list1['stage1_ref'];
                		$i=2;
                		//echo "<br/>";
                		$query5=mysqli_query($con,"SELECT  * FROM affiliateuser WHERE username = '$ref_bonus_user'");
                		$row5=$query5->fetch_array(MYSQLI_ASSOC);
                		$curr_stage=$row5['level']; 
                		$curr_pack=$row5['pcktaken'];//current package for stage1 ref
                		$sqlquery_package="SELECT * FROM packages where id = $curr_pack"; //fetching amt from package table from database
                		$package_details=mysqli_query($con,$sqlquery_package);
                		$package_info = $package_details->fetch_array(MYSQLI_ASSOC);
                		$indirect_ref_amt=$package_info['indirect_ref_amt'];    				
                				
                		while($ref_bonus_user !="")
                        {
                
                			$q2=mysqli_query($con,"SELECT  * FROM affiliate_bonus_history WHERE (user_id = '$ref_bonus_user')");
                			$all_list2 = mysqli_fetch_array($q2, MYSQL_ASSOC);
                			$ref_bonus_user2= $all_list2['stage1_ref'];
                			
                			if($ref_bonus_user2 !=""){
                				
                				
                				$qq2=mysqli_query($con,"SELECT  tamount As TotalAmt FROM affiliateuser WHERE username = '$ref_bonus_user2'");
                				$qrow2=$qq2->fetch_array(MYSQLI_ASSOC);
                				
                				
                				  $tot_amt2=($qrow2['TotalAmt']+$indirect_ref_amt);
                				
                				/* code by karthikeyan starts (20-02-2017) added pcktaken to below query */
                				$downline_sql1=mysqli_query($con,"SELECT pcktaken,COUNT(referedby) As TotalDownline FROM affiliateuser WHERE referedby = '$ref_bonus_user2'");
                				$downline_row1=$downline_sql1->fetch_array(MYSQLI_ASSOC);
                				$tot_downline1=$downline_row1['TotalDownline'];
                				/* code by karthikeyan starts (20-02-2017) */
                				$bonus_user_pack=$downline_row1['pcktaken'];
                				/* code by karthikeyan ends (20-02-2017) */
                
                				/* code by karthikeyan starts (20-02-2017) package_id added in condition */
                				$earning_sql1=mysqli_query($con,"SELECT downline_count, earning_amt FROM earning_settings WHERE package_id = '$bonus_user_pack' AND active='1'");
                				

								
								while ($earning_row1 = mysqli_fetch_array($earning_sql1, MYSQL_ASSOC)) {
                
                					if (($tot_downline1 >= $earning_row1['downline_count']) && ($tot_amt2 <= $earning_row1['earning_amt'])){
                						//echo "next-".$ref_bonus_user2.":-".$tot_amt2;
                						//echo "<br/>";
                						//check and and apply here
                						$qupdate2=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt2."' where username='".$ref_bonus_user2."'");	
                						//$downline_matched =true;
                						break;
                						//till here
                						
                					}
                				}
                				//if(!isset($downline_matched)){ $qupdate2=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt2."' where username='".$ref_bonus_user2."'");}
                				/* karthikeyan code for bonus restriction ends */
                				
                				
                				
                				//stage update
                				$st_update2=mysqli_query($con,"update affiliate_bonus_history set stage".$i."_ref='".$ref_bonus_user2."'where user_id='".$luser_id."'");		
                				
                				 $ref_bonus_user=$all_list2['stage1_ref'];
                				
                				$i++;
                			}
                			else
                			{
                				$ref_bonus_user="";
                			}
                    
                		}
                	}
                	elseif($ref_under_count>=2)
                    {
                						
                		
                	        
                		for($i=0;$i<$ref_under_count;$i++){
                			//echo $ref_under_user[$i] . "<br/>";
                			$query7=mysqli_query($con,"SELECT  * FROM affiliate_bonus_history WHERE stage1_ref = '$ref_under_user[$i]'");
                			$row7=$query7->fetch_array(MYSQLI_ASSOC);
                			
                			
                			$ref_query=mysqli_query($con,"SELECT  COUNT(*) as TOTALFOUND FROM affiliate_bonus_history WHERE stage1_ref = '$ref_under_user[$i]'");
                			$ref_list=$ref_query->fetch_array(MYSQLI_ASSOC);
                			
                			$stage_ref[]=array($ref_under_user[$i],$ref_list['TOTALFOUND']);
                		}
                		
                	        
                		$stage1_count=count($stage_ref);
                		$s1=array();
                		for($j=0;$j<$stage1_count;$j++){
                			//print_r($stage_ref[$j]); //list
                			//print_r($stage_ref[$j][0]);//name alone		
                			//print_r($stage_ref[$j][1]);//counts
                			if($luser_id != $stage_ref[$j][0])
                			{
                				if($stage_ref[$j][1]<2){
                					$s1[]=$stage_ref[$j][0];
                				}	
                			}
                				
                		}
                
                		$stage1_ref=$s1[0];
                		$cur=date("Y-m-d");
                
                		$query2=mysqli_query($con,"insert into affiliate_bonus_history (`bid`,`user_id`,`referedby`,`stage1_ref`,`ref_stage`,`amt`,`created`) values 
                		('','$luser_id','$ref','$stage1_ref','$ref_stage','$stage_amt','$cur')");
                		
                		$query4=mysqli_query($con,"SELECT  tamount As TotalAmt FROM affiliateuser WHERE username = '$stage1_ref'");
                		$row4=$query4->fetch_array(MYSQLI_ASSOC);
                		$tot_amt=($row4['TotalAmt']+$stage_amt);
                		
                		$query=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt."',level='".$ref_stage."' where username='".$stage1_ref."'");
                			
                		
                		//upgradation process code starts 
                		$query5=mysqli_query($con,"SELECT  * FROM affiliateuser WHERE username = '$stage1_ref'");
                		$row5=$query5->fetch_array(MYSQLI_ASSOC);
                		$curr_stage=$row5['level']; 
                		$current_tot=$row5['tamount'];
                		$curr_ref=$row5['referedby'];
                
                		$query6=mysqli_query($con,"SELECT  COUNT(*) FROM affliate_stage_bonus WHERE user_id = '$stage1_ref' AND upgrade_stage='$curr_stage'");
                		$row6 = mysqli_fetch_row($query6);
                		$numrows = $row6[0];
                
                		$query7=mysqli_query($con,"SELECT  * FROM affiliateuser WHERE username = '$curr_ref'");
                		$row7=$query7->fetch_array(MYSQLI_ASSOC);
                		$upgradation_ref=$row7['referedby'];
                
                
                		$query8=mysqli_query($con,"SELECT  count(*) as upgraded_status FROM affliate_stage_bonus 
                		WHERE user_id = '$stage1_ref' AND upgrade_stage='$curr_stage' ");
                		$row8=$query8->fetch_array(MYSQLI_ASSOC);
                		$upgrade_his=$row8['upgraded_status'];
                
                
                		//code to fetch the dynamic upgradation cost
                		$curr_pack=$row5['pcktaken'];//current package for stage1 ref
                		
                		$sqlquery_package="SELECT * FROM packages where id = $curr_pack"; //fetching amt from package table from database
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
                		
                			for($i=1;$i<=30;$i++){
                
                				$pup="p".$i."up";
                				// echo $current_tot;
                				// echo $$pup;
                				
                				if($current_tot>=$$pup && $current_tot!=0 && $curr_stage ==$i){
                
                					$query8=mysqli_query($con,"SELECT  count(*) as upgraded_status FROM affliate_stage_bonus 
                					WHERE user_id = '$stage1_ref' AND upgrade_stage='$curr_stage' ");
                					$row8=$query8->fetch_array(MYSQLI_ASSOC);
                					$upgrade_his=$row8['upgraded_status'];
                					
                					if($upgrade_his==0){
                						$tot=$$pup;	
                						$query2=mysqli_query($con,"insert into affliate_stage_bonus values ('','$stage1_ref','$curr_ref','$curr_stage','$tot','adminadmin','$cur')");	
                						
                						$query9=mysqli_query($con,"SELECT  SUM(tamount) As TotalAmt FROM affiliateuser WHERE username = '$stage1_ref'");
                						$row9=$query9->fetch_array(MYSQLI_ASSOC);
                						$tot_amt9=($row9['TotalAmt']-$tot);
                						$query=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt9."'where username='".$stage1_ref."'");
                						
                						$current_tot=$tot_amt9;
                					}	
                				}
                			}	
                		
                	
                		//bonus code starts here
                		$q1=mysqli_query($con,"SELECT  * FROM affiliate_bonus_history WHERE (user_id = '$luser_id')");
                		$all_list1 = mysqli_fetch_array($q1, MYSQL_ASSOC);
                		$ref_bonus_user= $all_list1['stage1_ref'];
                		$i=2;
                		while($ref_bonus_user !="")
                        {
                
                			$q2=mysqli_query($con,"SELECT  * FROM affiliate_bonus_history WHERE (user_id = '$ref_bonus_user')");
                			$all_list2 = mysqli_fetch_array($q2, MYSQL_ASSOC);
                			$ref_bonus_user2= $all_list2['stage1_ref'];
                			if($ref_bonus_user2 !=""){
                				$qq2=mysqli_query($con,"SELECT  tamount As TotalAmt FROM affiliateuser WHERE username = '$ref_bonus_user2'");
                				$qrow2=$qq2->fetch_array(MYSQLI_ASSOC);
                				$tot_amt2=($qrow2['TotalAmt']+$indirect_ref_amt);
                				
                				/* code by karthikeyan starts (20-02-2017) added pcktaken to below query */
                				$downline_sql=mysqli_query($con,"SELECT pcktaken,COUNT(referedby) As TotalDownline FROM affiliateuser WHERE referedby = '$ref_bonus_user2'");
                				$downline_row=$downline_sql->fetch_array(MYSQLI_ASSOC);
                				$tot_downline=$downline_row['TotalDownline'];
                				/* code by karthikeyan starts (20-02-2017) */
                				$bonus_user_pack=$downline_row['pcktaken'];
                				/* code by karthikeyan ends (20-02-2017) */
                
                				/* code by karthikeyan starts (20-02-2017) package_id added in condition */
                				$earning_sql=mysqli_query($con,"SELECT downline_count, earning_amt FROM earning_settings WHERE package_id = '$bonus_user_pack' AND active='1'");
                				while ($earning_row = mysqli_fetch_array($earning_sql, MYSQL_ASSOC)) {
                
                					if (($tot_downline >= $earning_row['downline_count']) && ($tot_amt2 <= $earning_row['earning_amt'])){
                						//check and and apply here
                						$qupdate2=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt2."'where username='".$ref_bonus_user2."'");	
                						break;
                						//till here
                					}
                				}
                				/* karthikeyan code for bonus restriction ends */
                				
                				
                				
                				//stage update
                				$st_update2=mysqli_query($con,"update affiliate_bonus_history set stage".$i."_ref='".$ref_bonus_user2."'where user_id='".$luser_id."'");		
                				$ref_bonus_user=$all_list2['stage1_ref'];
                				$i++;
                			}
                			else
                			{
                				$ref_bonus_user="";
                			}
                
                
                		}
                		
                	}

            	
            		if($ref_under_count<2)
            	    {

                		//upgradation process code starts 
                		$query5=mysqli_query($con,"SELECT  * FROM affiliateuser WHERE username = '$ref'");
                		$row5=$query5->fetch_array(MYSQLI_ASSOC);
                		$curr_stage=$row5['level']; 
                		$current_tot=$row5['tamount'];
                		$curr_ref=$row5['referedby'];

                		$query6=mysqli_query($con,"SELECT  COUNT(*) FROM affliate_stage_bonus WHERE user_id = '$ref' AND upgrade_stage='$curr_stage'");
                		$row6 = mysqli_fetch_row($query6);
                		$numrows = $row6[0];

                		$query7=mysqli_query($con,"SELECT  * FROM affiliateuser WHERE username = '$curr_ref'");
                		$row7=$query7->fetch_array(MYSQLI_ASSOC);
                		$upgradation_ref=$row7['referedby'];


                		$query8=mysqli_query($con,"SELECT  count(*) as upgraded_status FROM affliate_stage_bonus WHERE user_id = '$ref' AND upgrade_stage='$curr_stage' ");
                		$row8=$query8->fetch_array(MYSQLI_ASSOC);
                		$upgrade_his=$row8['upgraded_status'];
                		
                		

                		if($numrows==0){
                			
                			
                			//code to fetch the dynamic upgradation cost
                			$curr_pack=$row5['pcktaken'];//current package for stage1 ref
                			$sqlquery_package="SELECT * FROM packages where id = $curr_pack"; //fetching amt from package table from database
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

                			
                			
                			for($i=1;$i<=30;$i++){

                				$pup="p".$i."up";

                				if($curr_stage==$i){


                					$query8=mysqli_query($con,"SELECT  count(*) as upgraded_status FROM affliate_stage_bonus 
                					WHERE user_id = '$ref' AND upgrade_stage='$curr_stage' ");
                					$row8=$query8->fetch_array(MYSQLI_ASSOC);
                					$upgrade_his=$row8['upgraded_status'];
                					
                					if($upgrade_his==0){
                						

                						if($current_tot>=$$pup){
                							
                							if($upgrade_his==0){
                								$tot=$$pup;		
                								$query2=mysqli_query($con,"insert into affliate_stage_bonus values ('','$ref','$curr_ref','$curr_stage','$tot','adminadmin','$cur')");	
                								
                								$query9=mysqli_query($con,"SELECT  SUM(tamount) As TotalAmt FROM affiliateuser WHERE username = '$ref'");
                								$row9=$query9->fetch_array(MYSQLI_ASSOC);
                								$tot_amt9=($row9['TotalAmt']-$tot);
                								$query=mysqli_query($con,"update affiliateuser set tamount='".$tot_amt9."'where username='".$ref."'");
                								$current_tot=$tot_amt9;
                							}	
                						}
                					}
                				}	
                			}
                			
                		}
            		//upgradation process code ends 
            		
            		}	
                }	
	
			
			$sqlquery="SELECT wlink FROM settings where sno=0"; //fetching website from databse
			$rec2=mysqli_query($con,$sqlquery);
			$row2 = mysqli_fetch_row($rec2);
			$wlink=$row2[0]; //assigning website address
			
			$sqlquery222="SELECT email FROM settings where sno=0"; //fetching website from databse
			$rec3=mysqli_query($con,$sqlquery222);
			$row222 = mysqli_fetch_row($rec3);
			$email=$row222[0]; //assigning website address
			
			$sqlquery111="SELECT etext FROM emailtext where code='NEWMEMBER'"; //fetching website from databse
			$rec2111=mysqli_query($con,$sqlquery111);
			$row2111 = mysqli_fetch_row($rec2111);
			$emailtext=$row2111[0]; //assigning email text for email
					// More headers
			$headers = "MIME-Version: 1.0" . "\r\n";
			$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
			$headers .= 'From: <no-reply@'.$wlink.'>' . "\r\n";
			$to=$email;
			$subject="New COD Order SignUp | Bingo ";
			// $message=$emailtext;
			// mail($to,$subject,$message,$headers);
						
			$response['status']="success";
            echo json_encode($response,JSON_UNESCAPED_SLASHES);
            die();
		/* Code by karthikeyan starts */
		}
		else
		{
			$response['status']="fail";
            echo json_encode($response,JSON_UNESCAPED_SLASHES);
            die();
		}
		/* Code by karthikeyan ends */
	}
	else
	{
		$response['status']="user_error";
            echo json_encode($response,JSON_UNESCAPED_SLASHES);
            die();
	
	}
	
	
}else{
    $response['status']="error";
            echo json_encode($response,JSON_UNESCAPED_SLASHES);
            die();
}

?>