<?php
	include 'database.php';
	$id = $_REQUEST['id'];
		$query = "Update  purchase set status=0 WHERE  item_no= '$id'";
	$result = $conn->query($query);
	if($result === TRUE){
		echo "<script type = \"text/javascript\">
					
					window.location = (\"oders.php\")
				</script>";
	}else{
		echo "<script type = \"text/javascript\">
					
					window.location = (\"oders.php\")
				</script>";
	}
		
?>