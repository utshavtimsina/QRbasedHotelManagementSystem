<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<title>Admin Home</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	
</head>
<body>
<!-- Header -->
<div id="header">
	<div class="shell">
		
		<?php
			include 'menu.php';
		?>
		</div>
		<!-- End Main Nav -->
	</div>
</div>

<div id="container">
	<div class="shell">
		
		<div class="small-nav">
			<a href="index.php">Dashboard</a>
			<span>&gt;</span>
			Content Management
		</div>
		
		<br />
		
		<div id="main">
			<div class="cl">&nbsp;</div>
			
			<div id="content">
				
				<div class="box">
					<!-- Box Head -->
					<div class="box-head">
						<h2 class="left">Menu</h2>
						
					</div>
					
					<div class="table">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th width="13"></th>
								<th>Title</th>
								<th>Price</th>
								<th></th>
								<th width="110" class="ac">Content Control</th>
							</tr>
							<?php
								include 'database.php';
								$select = "SELECT * FROM menu ";
								$result = $conn->query($select);
								while($row = $result->fetch_assoc()){
							?>
							<tr>
								<td><input type="checkbox" class="checkbox" /></td>
								<td><h3><a href="#"><?php echo $row['item_name'] ?></a></h3></td>
								<td><?php echo $row['price'] ?></td>
								<td></td>
								<td><button onclick="sure(<?php echo $row['id'];?>)" class="ico del">Delete</button><button onclick="edit(<?php echo $row['id'];?>)" class="ico edit">Edit</button></td>
							</tr>
							<?php
								}
							?>
						</table>
						
						
					</div>
					<h2><input type="submit" onclick="window.print()" value="Print Here" /></h2>
					
				</div>
				<!-- End Box -->

			</div>
			<!-- End Content -->
			
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
						<a href="add_notice.php" class="add-button"><span>Add new item in Menu</span></a>
						<div class="cl">&nbsp;</div>
						
						
						
						
					</div>
				</div>
				<!-- End Box -->
			</div>
			<!-- End Sidebar -->
			
			<div class="cl">&nbsp;</div>			
		</div>
		<!-- Main -->
	</div>
</div>
<!-- End Container -->


	<script >
		function sure(id){
			//alert(id);
			
			//alert(confirm("Are you sure you want to delete this car?"));
			if(confirm("Are you sure you want to delete this?")){
				window.location.href ="delete.php?id="+id+"&table=menu";
			}
		}
		function edit(id){
			//alert(id);
			
			//alert(confirm("Are you sure you want to delete this car?"));
			
				window.location.href ="edit.php?id="+id;
			//}
		}
		
		
	</script>
</body>
</html>