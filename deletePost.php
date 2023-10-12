<?php  
	include "connection.php";
	$id = $_GET['id'];
	$delete = mysqli_query($conn, "DELETE FROM post WHERE id='$id'");
?>

