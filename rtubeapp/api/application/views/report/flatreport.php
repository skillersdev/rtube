<!DOCTYPE html>
<html>
<head>
	<title>pdf</title>
</head>
<body>


<table border="1">
	
<thead>
<?php 
	$thdata=array();
	$thlist="";



	

	if($resultth){

		foreach ($resultth as $key3 => $th_value) {
			?>
			<th><?php echo $th_value; ?></th>

	<?php		
		}
	}


	?>
 </thead>

 <tbody>
 	<?php


	

 	 foreach ($result as $key => $value) {

		$tdata=count($value[0]);	
		echo "<tr>";

		
		foreach ($resultth as $head => $thvalue) {

			foreach ($value as $data => $tdvalue) {

				 // echo "<pre>";
				 // print_r($thvalue);
				 // print_r($tdvalue);

				//  die();



				 if(array_key_exists($thvalue,$tdvalue)){
					echo "<td>".$tdvalue[$thvalue]."</td>"; 
				 }
				 else
				 {
				 	echo "<td>no</td>";
				 }
				 

				
			}

			 }

		echo "</tr>";
	?>
	 	
	<?php } ?>

 </tbody>	

</table>

</body>
</html>