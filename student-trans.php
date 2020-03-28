
<?php 
include('connection.php');
?>
<?php
include('homepage.php')
?>
 
          <?php
					if ($_POST['submit']) {
						$fname= $_POST['First_name'];
					    $lname= $_POST['Last_Name'];
						$em= $_POST['EMAIL'];
						$addr=$_POST['Address'];
						$p_num=$_POST['phone_num'];
						$lga=$_POST['LGA'];
						$state=$_POST['State'];
						$nationality=$_POST['Nationality'];
						$gender= $_POST['gender'];
						
					   
						// attempt insert query execution
						$sql  = "INSERT INTO student(STUDENT_ID, FIRST_NAME, LAST_NAME, EMAIL, ADDRESS1, PHONE_NUMBER, LGA, STATE1, NATIONALITY, GENDER)
						VALUES (NULL,'".$fname."','".$lname."','".$em."','".$addr."','".$p_num."','".$lga."','".$state."','".$nationality."','".$gender."')";
				
							 if(mysqli_query($db, $sql)){
								  echo "successfully!!!";
	
									 } else{
										 echo "ERROR: Unsuccessful $sql. " . mysqli_error($db);
												}
					
					}
					
						// close connection
							mysqli_close($db);
					
							  
		?>
 