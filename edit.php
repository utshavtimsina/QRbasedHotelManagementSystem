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
						 <?php
								  include 'database.php';
								  $id = $_GET['id'];
									
									$select = "SELECT * FROM menu where id=$id";
									$result = $conn->query($select);
									$num = $result->num_rows;
									if($num>0){
									while($row = $result->fetch_assoc()){
										list($title,$descript) = explode(":", $row['item_name']);
										$image=$row['image'];
										
										?>
										
									<div class="form">
								<p>
									<span class="req">max 50 symbols</span>
									<label>Item Name <span>(Required Field)</span></label>
									<input type="text" class="field size1" name="title" value="<?php echo $title; ?>" required />
								</p>	
								<p>
									<span class="req">max 5000 symbols</span>
									<label>Item Description <span>(Required Field)</span></label>
									<input type="text" class="field size1" name="notice" value="<?php echo $descript; ?>"  />
								</p>
								<p>
									<span class="req"></span>
									<label>Price <span>(Required Field)</span></label>
									<input type="text" class="field size1" name="price" value="<?php echo $row['price']; ?>" required />
								</p>	
								<p>Please select the Category:</p>
								  <?php
								  include 'database.php';
									$select = "SELECT * FROM categories ";
									$results = $conn->query($select);
									while($rows = $results->fetch_assoc()){
										if($rows['id']==$row['category']){
											?>
											
											 <input  type="radio" name="radio" value="<?php echo $rows['id'] ?>" checked> <?php echo $rows['category_name'] ?><br>
											<?php
											
											
										}else {
											
								  ?>
								  
								  <input  type="radio" name="radio" value="<?php echo $rows['id'] ?>"> <?php echo $rows['category_name'] ?><br>
								   <?php
									}
									}?>
									<br>
								<p>
									<span class="req">Current Images</span>
									<label>Item Image <span>(Required Field)</span></label>
									<input type="file" class="field size1" name="image"  />
								</p>	
								
							
						</div>
						
						<div class="buttons">
							<input type="submit" class="button" value="submit" name="send" />
						</div>
										
										<?php
										}
									}else echo "null";
								  ?>
						
						
					</form>
					
					
				</div>

			</div>
			<!-- Sidebar -->
			<div id="sidebar">
				
				<!-- Box -->
				<div class="box">
					
					<!-- Box Head -->
					<div class="box-head">
						<h2>Management</h2>
					</div>
					<!-- End Box Head-->
					
					<div class="box-content">
						<img src="image/<?php echo $image ?>" height=100 alt="<?php echo $image ?>">
						<a><?php echo $image ?></a>
						<div class="cl">&nbsp;</div>
						
						
						
						
					</div>
				</div>
				<!-- End Box -->
			</div>
			<!-- End Sidebar -->
		
			<div class="cl">&nbsp;</div>			
		</div>
	</div>
</div>

<?php
					if(isset($_POST['send'])){
								
								if(isset($_FILES['image'])){
									
								$target_path = "G:/STSWorkplace/QrBasedRest/image/";
								$target_path = $target_path . basename ($_FILES['image']['name']);
								 
								if(move_uploaded_file($_FILES['image']['tmp_name'], $target_path)){
								
								$image = basename($_FILES['image']['name']);
								$title = $_POST['title'];
								$descript = $_POST['notice'];
								$price = $_POST['price'];
								$category = $_POST['radio'];
								
								
								$item_name=$title.":".$descript;
								
									
								///*
								$qr = "UPDATE menu SET item_name='$item_name',price=$price,category='$category',image='$image' WHERE id=$id";
								$res = $conn->query($qr);
								if($res === TRUE){
									echo "<script type = \"text/javascript\">
											alert(\"details Added\");
											window.location = (\"index.php\")
											</script>";
									}
								//	*/
								/*}
								else echo "<script type = \"text/javascript\">
											alert(\"failed\");
											window.location = (\"indexxx.php\")
											</script>";;*/
								}
						else{
								$title = $_POST['title'];
								$descript = $_POST['notice'];
								$price = $_POST['price'];
								$category = $_POST['radio'];
								
								
								$item_name=$title.":".$descript;
								
									
								///*
								$qr = "UPDATE menu SET item_name='$item_name',price=$price,category='$category' WHERE id=$id";
								$res = $conn->query($qr);
								if($res === TRUE){
									echo "<script type = \"text/javascript\">
											alert(\"details Added\");
											window.location = (\"index.php\")
											</script>";
									}
									else{
									 echo "<script type = \"text/javascript\">
											alert(\"failed to update\");
											window.location = (\"indexxx.php\")
											</script>";;
								
									}
								
						}
					}
					}
						?>
	
</body>
</html>