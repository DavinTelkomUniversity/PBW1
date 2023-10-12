<?php  
	include "config.php";
	
	if (!isset($_POST['catid']) || !isset($_POST['sunda']) || !isset($_POST['label'])) {
		echo '{"status": "Error", "message": "Category ID, Sunda and Label required."}';
		exit();
	}
	
	$catid = $_POST['catid'];
	$sunda = $_POST['sunda'];
	$label = $_POST['label'];
	$sql = "INSERT INTO word VALUES (NULL, '$catid', '$label', '$sunda', 'no_image')";
	if (mysqli_query($conn, $sql)) {
		echo '{"status": "Success", "wordId": ' . mysqli_insert_id($conn) . '}';
	}
	else {
		echo '{"status": "Error", "message": "' . mysqli_error($conn) . '"}';
	}
?>