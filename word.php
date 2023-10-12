<?php
	include 'config.php';
	
	//Parameter check
	if (!isset($_GET['catid'])) {
		echo 'Error: Please insert catid.';
		exit();
	}
	//Fetch categories from database
	$check = mysqli_query($koneksi, "SELECT id,label,sunda, image FROM word WHERE cat_id = '".$_GET['catid']."'");
	
	//Initialize array variable
	$data = array();

	//Fetch into associative array
	while($row = mysqli_fetch_assoc($check)) {
		$data[] = $row;
	}

	//Print array in JSON format
	echo json_encode($data);
?>