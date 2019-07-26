<?php
	include 'database.php';
	
	///*
	$sql="Select count(id)AS s from purchase WHERE status=1 ";
	$test = array();
	$results = $conn->query($sql);
		$num = $results->num_rows;
			if($num>0){	
			while($rows = $results->fetch_assoc()){
				
			$test['test1'] = $rows['s'];
			
			}
			}else{
			
			$test['test1'] = '0';
			}
			//*/

		echo json_encode($test);



?>