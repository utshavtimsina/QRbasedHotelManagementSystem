<?php
	include 'database.php';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Admin Home</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
</head>
<body>
<div id="header">
	<div class="shell">
		
		<?php
			include 'menu.php';
		?>
		</div>
	</div>
</div>

<div id="container">
	<div class="shell">
		
		<div class="small-nav">
			<a href="index.php">Dashboard</a>
			<span>&gt;</span>
			Add New Announcement
		</div>
		
		<br />
		
		<div id="main">
			<div class="cl">&nbsp;</div>
			
			<div id="content">
				
				<div class="box">
					<div class="box-head">
						<h2>Add New notice</h2>
					</div>
					
					<form action="" method="post" enctype="multipart/form-data">
						
						<div class="form">
								<p>
									<span class="req">max 50 symbols</span>
									<label>Item Name <span>(Required Field)</span></label>
									<input type="text" class="field size1" name="title" required />
								</p>	
								<p>
									<span class="req">max 5000 symbols</span>
									<label>Item Description <span>(Required Field)</span></label>
									<input type="text" class="field size1" name="notice" required />
								</p>
								<p>
									<span class="req"></span>
									<label>Price <span>(Required Field)</span></label>
									<input type="text" class="field size1" name="price" required />
								</p>	
								<p>Please select the Category:</p>
								  <?php
								  include 'database.php';
									$select = "SELECT * FROM categories ";
									$result = $conn->query($select);
									while($row = $result->fetch_assoc()){
								  ?>
								  <input  type="radio" name="radio" value="<?php echo $row['id'] ?>"> <?php echo $row['category_name'] ?><br>
								   <?php
									}?>
									<br>
								<p>
									<span class="req">Current Images</span>
									<label>Item Image <span>(Required Field)</span></label>
									<input type="file" class="field size1" name="image" required />
								</p>	
								
							
						</div>
						
						<div class="buttons">
							<input type="submit" class="button" value="submit" name="send" />
						</div>
						
					</form>
					<?php
					if(isset($_POST['send'])){
								
								$target_path = "image/";
								$target_path = $target_path . basename ($_FILES['image']['name']);
								if(move_uploaded_file($_FILES['image']['tmp_name'], $target_path)){
								
								$image = basename($_FILES['image']['name']);
								$title = $_POST['title'];
								$descript = $_POST['notice'];
								$price = $_POST['price'];
								$category = $_POST['radio'];
								
								
								$item_name=$title.":".$descript;
								
									
								///*
								$qr = "INSERT INTO menu (item_name,price,category,image) 
													VALUES ('$item_name',$price,'$category','$image')";
								$res = $conn->query($qr);
								if($res === TRUE){
									echo "<script type = \"text/javascript\">
											alert(\"details Added\");
											window.location = (\"index.php\")
											</script>";
									}
								//	*/
								}
								else 'Failed';
							}
						?>
				</div>

			</div>
			
		
			<div class="cl">&nbsp;</div>			
		</div>
	</div>
</div>


	
</body>
</html>