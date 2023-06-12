<?php
include '../../cf.php';
if (!isset($_GET['code'])) {
	echo 'Error: Please insert code.';
	exit();
}
$check = mysqli_query($cf, "SELECT content,target,code,visit,date,time FROM tags WHERE code = '".$_GET['code']."'");
$data = array();
while($row = mysqli_fetch_assoc($check)) {
	$data[] = $row;
}
echo json_encode($data);