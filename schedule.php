<?php include 'connection.php';
include 'topnav.php'; ?>
           <div class="col-lg-12">

            <div>
            <h2 class="text-center">APPLICATION LISTS</h2>
            </div>    

          <br> </br>
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>APPLICANT ID</th> 
                                        <th>STUDENT ID</th>
                                    <!--    <th>NAME</th> -->
                                        <th>COURSE</th>
                                        <th>CGPA</th>
                                        <th>REASON FOR READMISSION</th>
                                        <th>SESSION WITHDRAWAL</th>
                                        <th>SSCE RESULT</th>
                                    </tr>
                                </thead>
                                <tbody>

             <?php  
    //          $query= 'SELECT applicants.APPLICATION_ID, applicants.STUDENT_ID, applicants.COURSE, applicants.CGPA, applicants.REASON, applicants.SESSION1, applicants.imagepath, applicants.imagepath, student.FIRST_NAME, student.LAST_NAME
      //              FROM applicants
        //            RIGHT JOIN student ON applicants.LAST_NAME = student.LAST_NAME';
             
                 $query = 'SELECT * FROM applicants';
                    $result = mysqli_query($db, $query) or die (mysqli_error($db));
                
                
                        while ($row = mysqli_fetch_assoc($result)) {
                                            
                            echo '<tr>';
                            echo '<td>'. $row['APPLICATION_ID'].'</td>';
                            echo '<td>'. $row['STUDENT_ID'].'</td>';
                        #    echo '<td>'. $row['LAST_NAME'].'</td>';
                            echo '<td>'. $row['COURSE'].'</td>';
                            echo '<td>'. $row['CGPA'].'</td>';
                            echo '<td>'. $row['REASON'].'</td>';
                            echo '<td>'. $row['SESSION1'].'</td>';
                            echo '<td>'. "<a href=$row[imagepath] target=_blank>" . "First" . "<br>" . "</a>" ."<a href=$row[imagepath1] target=_blank>" . "Second" ."</a>".'</td>';
                            echo '<td>';
                            echo ' <a  type="button" class="btn btn-xs btn-warning fa fa-check" href="schedule_edit.php?action=edit & id='.$row['APPLICATION_ID'] . '"> </a> ';
                            echo ' <a  type="button" class="btn btn-xs btn-danger fa fa-trash" href="schedule_del.php?type=schedule&delete & id=' . $row['APPLICATION_ID'] . '"> </a> </td>';
                            echo '</tr> ';
                }

            ?> 
                                    
                                </tbody>
                            </table>
                        </div>
<?php include 'footer.php'; ?>