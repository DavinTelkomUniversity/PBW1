<?php  
	include "config.php";
	
	if (!isset($_POST['id'])) {
		echo '{"status": "Error", "message": "Word ID required."}';
		exit();
	}
	
	$id = $_POST['id'];
	$sql = "DELETE FROM word WHERE id='$id'";
	if (mysqli_query($conn, $sql)) {
		if (mysqli_affected_rows($conn) > 0) {
			echo '{"status": "Success"}';
		}
		else {
			echo '{"status": "Error", "message": "No word with corresponding ID."}';
		}
	}
	else {
		echo '{"status": "Error", "message": "' . mysqli_error($conn) . '"}';
	}
?>