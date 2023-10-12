<?php
	include 'config.php';
	if (!isset($_GET['catid'])) {
		echo 'Error: Please insert catid.';
		exit();
	}
	$check = mysqli_query($koneksi, "SELECT id,label,sunda FROM word WHERE cat_id = '".$_GET['catid']."'");
	$data = array();
	while($row = mysqli_fetch_assoc($check)) {
		$data[] = $row;
	}
	echo json_encode($data);
?>