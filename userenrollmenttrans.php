 <?php //include'header.php' ;?>
<?php include'connection.php' ;?>
<?php
include('homepage.php')
?>

 <div class="col-lg-12">
                <?php
                	if ($_POST['submit']) {
						$student_id= $_POST['student_id'];
					    $course= $_POST['course'];
						$cgpa= $_POST['CGPA'];
						$reason=$_POST['Reason'];
						$w_session=$_POST['W_session'];
						
						//for the first img
						$name = $_FILES['file']['name'];
     					$target_dir = "imageupload/";
						$target_file = $target_dir . basename($_FILES["file"]["name"]);
						 
						 //for the second img
						$name1 = $_FILES['file1']['name'];
						$target_dir = "imageupload/";
						$target_file1 = $target_dir . basename($_FILES["file1"]["name"]);
     
     					$uploadOk = 1;

    					 // Select file type
     					$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

						 //check whether student id exist first in bio data and wether it's double application
    					$sql = "SELECT STUDENT_ID FROM student WHERE STUDENT_ID = '$student_id' ";
						$results = mysqli_query($db, $sql);

						$sql1 = "SELECT STUDENT_ID FROM applicants WHERE STUDENT_ID = '$student_id' ";
						$results1 = mysqli_query($db, $sql1);
							
							if (mysqli_num_rows($results) == 0) {
								$uploadOk = 0;
								echo "Sorry, Can't find Your REGISTRATION NUMBER! ";
							}
							if (mysqli_num_rows($results1) > 0) {
								$uploadOk = 0;
								echo "Sorry, You have already applied! ";
							}

					// Check file size
					if ($_FILES["file"]["size"] > 500000) {
						echo "Sorry, your file is too large.";
						$uploadOk = 0;
					}
					
					// Check if $uploadOk is set to 0 by an error
					if ($uploadOk == 0) {
						echo "Sorry, your file was not uploaded!!!";
					// if everything is ok, try to upload file
					} else {
					// attempt insert query execution
						$sql  = "INSERT INTO applicants (APPLICATION_ID, STUDENT_ID, COURSE, CGPA, REASON, SESSION1, imagepath, imagepath1)
						VALUES (NULL,'".$student_id."','".$course."','".$cgpa."','".$reason."','".$w_session."','".$target_file."','".$target_file1."')";
				
						if(mysqli_query($db, $sql)){
								echo "successfully!!!";

									} else{
										echo "ERROR: Unsuccessful $sql. " . mysqli_error($db);
											}
					
					if (move_uploaded_file($_FILES["file"]["tmp_name"], $target_file) and move_uploaded_file($_FILES["file1"]["tmp_name"], $target_file1) ) {
						echo "The file ". basename( $_FILES["file"]["name"]). " has been uploaded.";
						echo "\n The file " . basename( $_FILES["file1"]["name"]). " has been uploaded.";
					}
					
					 else {
						echo " ";
								}
								
					
					}
				}
					
						// close connection
							mysqli_close($db);
					
				?>
    	
	</div>