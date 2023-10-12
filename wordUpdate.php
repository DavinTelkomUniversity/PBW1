<?php  
	include "config.php";
	
	if (!isset($_POST['id'])|| !isset($_POST['sunda']) || !isset($_POST['label'])) {
		echo '{"status": "Error", "message": "Word ID, Sunda and Label required."}';
		exit();
	}
	
	$id = $_POST['id'];
	$sunda = $_POST['sunda'];
	$label = $_POST['label'];
	$sql = "UPDATE word SET label='$label', sunda='$sunda' WHERE id='$id'";
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