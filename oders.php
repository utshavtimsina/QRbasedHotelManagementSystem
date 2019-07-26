<html>
<head>
    <title>Notify Me</title>
    <style>
        ul {
            display:block;
            background:#555;
            list-style:none;
            margin:0;
            padding:12px 10px;
            height:50px;
        }
        ul li {
            float:left;
            font:13px helvetica;
            font-weight:bold;
            margin:3px 0;
        }
        ul li a {
            color:#FFF;
            text-decoration:none;
            padding:6px 15px;
            cursor:pointer;
        }
        ul li a:hover {
            background:#425B90;
            text-decoration:none;
            cursor:pointer;
        }
        
        #noti_Container {
            position:relative;
        }
       
        /* A CIRCLE LIKE BUTTON IN THE TOP MENU. */
        #noti_Button {
            width:22px;
            height:22px;
            line-height:22px;
            border-radius:50%;
            -moz-border-radius:50%; 
            -webkit-border-radius:50%;
            background:#FFF;
            margin:-3px 10px 0 10px;
            cursor:pointer;
        }
        
        /* THE POPULAR RED NOTIFICATIONS COUNTER. */
        #noti_Counter {
            display:block;
            position:absolute;
            background:#E1141E;
            color:#FFF;
            font-size:12px;
            font-weight:normal;
            padding:1px 3px;
            margin:-8px 0 0 25px;
            border-radius:2px;
            -moz-border-radius:2px; 
            -webkit-border-radius:2px;
            z-index:1;
        }
        
        /* THE NOTIFICAIONS WINDOW. THIS REMAINS HIDDEN WHEN THE PAGE LOADS. */
        #notifications {
            display:none;
            width:430px;
            position:absolute;
            top:30px;
            left:0;
            background:#FFF;
            border:solid 1px rgba(100, 100, 100, .20);
            -webkit-box-shadow:0 3px 8px rgba(0, 0, 0, .20);
            z-index: 0;
        }
        /* AN ARROW LIKE STRUCTURE JUST OVER THE NOTIFICATIONS WINDOW */
        #notifications:before {         
            content: '';
            display:block;
            width:0;
            height:0;
            color:transparent;
            border:10px solid #CCC;
            border-color:transparent transparent #FFF;
            margin-top:-20px;
            margin-left:10px;
        }
        
        h3 {
            display:block;
            color:#333; 
            background:#FFF;
            font-weight:bold;
            font-size:13px;    
            padding:8px;
            margin:0;
            border-bottom:solid 1px rgba(100, 100, 100, .30);
        }
        
        .seeAll {
            background:#F6F7F8;
            padding:8px;
            font-size:12px;
            font-weight:bold;
            border-top:solid 1px rgba(100, 100, 100, .30);
            text-align:center;
        }
        .seeAll a {
            color:#3b5998;
        }
        .seeAll a:hover {
            background:#F6F7F8;
            color:#3b5998;
            text-decoration:underline;
        }
    </style>
	<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body style="margin:0;padding:0;">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<audio id="myAudio">
  
  <source src="rvrb2.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio>
    <div >
        <ul>
            <!--li><a href="#">Hossme</a></li>
            <li><a href="#">Find Friends</a></li-->
            <li id="noti_Container">
                <div id="noti_Counter"></div>   <!--SHOW NOTIFICATIONS COUNT.-->
                
                <!--A CIRCLE LIKE BUTTON TO DISPLAY NOTIFICATION DROPDOWN.-->
                <div id="noti_Button"></div>    

                <!--THE NOTIFICAIONS DROPDOWN BOX.-->
                <!--div id="notifications">
                    <!--h3>Notifications</h3-->
                    <!--div style="height:300px;"></div>
                    <div class="seeAll"><a href="#">See All</a></div-->
                <!--/div-->
				
            </li>
            <li><a href="#">Orders</a></li>
        </ul>
		<br>
		<br>
    </div>
	
	
    <div style="font-size:10%;font-style:italic;color:#CCC;text-align:left;margin:10px 100px;">
				
				
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<th width="13"></th>
								<th width="13">Orders</th>
								
								<th width="12">Quantity</th>
								<th width="130">Table no</th>
								
							</tr>
							<?php
							query();
								function query(){
								include 'database.php';
								$select = "SELECT * FROM purchase ORDER BY id desc ";
								$result = $conn->query($select);
								while($row = $result->fetch_assoc()){
									
										$item_no=$row['item_no'] ;
									$querys="SELECT * FROM menu where id=$item_no" ;
									$results = $conn->query($querys);
									$num = $results->num_rows;
									
									if($num>0){
									while($rows = $results->fetch_assoc()){
										
										list($title,$descript) = explode(":", $rows['item_name']);
									
									
									
							?>
							<tr>
								<td class=id style="display:none;"><?php echo $item_no?></td>
								<?php if($row['status']=='0'){
								?>	
								<td><input type="checkbox" class="checkbox" checked /></td>
								<?php } ?> 
								
								<?php if($row['status']=='1'){
								?>	
								<td><input type="checkbox" class="checkbox"  /></td>
								<?php } ?> 
								
								
								<td><h3><a href="#"><?php echo $title;?></a></h3></td>
								<td><?php echo $row['quantity'];?></td>
								<td><?php echo $row['table_no'];?></td>
								
								
							</tr>
							<?php
									}
									
									}
								
							?>
							<?php
								}
							}
							?>
						</table>
				
	</div>
</body>


<script>
    $(document).ready(function () {
	var load =1;
	 setInterval(function(){ 

			 $.ajax({
				url: "newOrders.php",
				 
			  }).success(function(res) {
				  //alert(res);
				 var obj = JSON.parse(res);
				  
				$('#noti_Counter').html(obj.test1);
				if(obj.test1>0){
			
				var x = document.getElementById("myAudio");
				 x.play(); 
				 if(load==1){
				load=0;	 
				// window.location.reload();
				 
				 }
				 
				}
			  })

	 }, 1000);
        // ANIMATEDLY DISPLAY THE NOTIFICATION COUNTER.
        $('#noti_Counter')
            .css({ opacity: 0 })
            .text('0')      // ADD DYNAMIC VALUE (YOU CAN EXTRACT DATA FROM DATABASE OR XML).
            .css({ top: '-10px' })
            .animate({ top: '-2px', opacity: 1 }, 500);
		
        $('#noti_Button').click(function () {

            // TOGGLE (SHOW OR HIDE) NOTIFICATION WINDOW.
            $('#notifications').fadeToggle('fast', 'linear', function () {
                if ($('#notifications').is(':hidden')) {
                    $('#noti_Button').css('background-color', '#2E467C');
                }
                // CHANGE BACKGROUND COLOR OF THE BUTTON.
                else $('#noti_Button').css('background-color', '#FFF');
            });

           // $('#noti_Counter').fadeOut('slow');     // HIDE THE COUNTER.// this is my link 

            return false;
        });
		
		$('.checkbox').click(function () {
			 var ind=$(".checkbox").index(this);
			 var id= $(".id").eq(ind).text();
			 //alert(id);
			window.location.replace("update.php?id="+id);
			//var x = document.getElementById("myAudio");
				// x.pause(); 
			
			
		});
		//setInterval(request(),1000);
	//	setTimeout('alert('Surprise!')', 5000);
		//request();

        // HIDE NOTIFICATIONS WHEN CLICKED ANYWHERE ON THE PAGE.
        /*$(document).click(function () {
            $('#notifications').hide();

            // CHECK IF NOTIFICATION COUNTER IS HIDDEN.
            if ($('#noti_Counter').is(':hidden')) {
                // CHANGE BACKGROUND COLOR OF THE BUTTON.
                $('#noti_Button').css('background-color', '#2E467C');
            }
        });

        $('#notifications').click(function () {
            return false;       // DO NOTHING WHEN CONTAINER IS CLICKED.
        });*/
    });
</script>
</html>