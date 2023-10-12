<?php
	//lengkapi kode php
	include 'config.php';
	//Fetch categories from database
	$check = mysqli_query($koneksi, "SELECT id, label, color FROM category");
	//Initialize array variable
	$data = array();
	//Fetch into associative array
	while ($row = mysqli_fetch_assoc($check)) {
		$data[] = $row;
	}
	//Print array in JSON format
	echo json_encode($data);
?>