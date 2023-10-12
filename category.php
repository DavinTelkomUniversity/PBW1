<?php
	include 'config.php';
	$check = mysqli_query($koneksi, "SELECT id, label FROM category");
	$data = array();
	while ($row = mysqli_fetch_assoc($check)) {
		$data[] = $row;
	}
	echo json_encode($data);
?>