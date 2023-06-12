<?php
include '../../cf.php';
if (!isset($_GET['username'])) {
	echo 'Error: Please insert username.';
	exit();
}
$check = mysqli_query($cf, "SELECT nama,username,phone,email,biodata,profile,website,date,time FROM account WHERE username = '".$_GET['username']."'");
$data = array();
while($row = mysqli_fetch_assoc($check)) {
	$data[] = $row;
}
echo json_encode($data);