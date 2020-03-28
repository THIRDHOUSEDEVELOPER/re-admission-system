<?php
include('connection.php');
include('topnav.php'); 
$g_id=$_GET['id']
?>

<body>
<?php
if (!isset($_GET['do']) || $_GET['do']) {
$query = "SELECT * FROM applicants WHERE APPLICATION_ID = $g_id ";
$result = mysqli_query($db, $query) or die(mysqli_error($db));					
?>
<script type="text/javascript">
alert("Approved Successfully!");
window.location = "schedule.php";
</script>				
				
<?php
//break;
}
?>

</body>