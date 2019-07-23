<?php
	include 'database.php';
	$id = $_REQUEST['id'];
	$table = $_REQUEST['table'];
		$query = "DELETE FROM $table WHERE id = '$id'";
	$result = $conn->query($query);
	if($result === TRUE){
		echo "<script type = \"text/javascript\">
					alert(\"notice Successfully removed\");
					window.location = (\"index.php\")
				</script>";
	}else{
		echo "<script type = \"text/javascript\">
					alert(\"couldnt remove\");
					window.location = (\"index.php\")
				</script>";
	}
		
?>
