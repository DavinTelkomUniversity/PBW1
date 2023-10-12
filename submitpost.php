<?php  
	include "connection.php";
	$post = $_POST['content'];

	$insert = mysqli_query($conn, "INSERT INTO post VALUES('','$post')");
?>


