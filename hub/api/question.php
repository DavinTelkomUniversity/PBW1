<?php
include '../../cf.php';
if (!isset($_GET['code'])) {
	echo 'Error: Please insert code.';
	exit();
}
$check = mysqli_query($cf, "SELECT username,title,foto,content,tags,code,target,date,time FROM question WHERE code = '".$_GET['code']."'");
$data = array();
while($row = mysqli_fetch_assoc($check)) {
	$data[] = $row;
}
echo json_encode($data);