<?php include 'connection.php';
include 'topnav.php'; ?>
           <div class="col-lg-12">

            <div>
            <h2 class="text-center">STUDENTS PROFILES</h2>
            </div>    

          <br> </br>
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>STUDENT ID</th> 
                                        <th>NAME</th>
                                       <th>EMAIL</th>
                                        <th>ADDRESS</th>
                                        <th>PHONE NUMBER</th>
                                        <th>LGA</th>
                                        <th>STATE</th>
                                        <th>NATIONALITY</th>
                                        <th>GENDER</th>
                                    </tr>
                                </thead>
                                <tbody>

             <?php  
    
                 $query = 'SELECT * FROM student';
                    $result = mysqli_query($db, $query) or die (mysqli_error($db));
                
                
                        while ($row = mysqli_fetch_assoc($result)) {
                                            
                            echo '<tr>';
                            echo '<td>'. $row['STUDENT_ID'].'</td>';
                            echo '<td>'. $row['FIRST_NAME']. " ". $row['LAST_NAME'].'</td>';
                            echo '<td>'. $row['EMAIL'].'</td>';
                            echo '<td>'. $row['ADDRESS1'].'</td>';
                            echo '<td>'. $row['PHONE_NUMBER'].'</td>';
                            echo '<td>'. $row['LGA'].'</td>';
                            echo '<td>'. $row['STATE1'].'</td>';
                            echo '<td>'. $row['NATIONALITY'].'</td>';
                            echo '<td>'. $row['GENDER'].'</td>';
                            echo '<td>';
                       
                            echo '</tr> ';
                }

            ?> 
                                    
                                </tbody>
                            </table>
                        </div>
<?php include 'footer.php'; ?>