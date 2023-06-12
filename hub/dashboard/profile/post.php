<?php
require("../../../cf.php");
$check_user = mysqli_query($cf, "SELECT * FROM account WHERE username = '".$_GET['1']."'");
$data_user = mysqli_fetch_assoc($check_user);
if (mysqli_num_rows($check_user) != 0) {
	header ("Location: ".$url."c/".$_GET['1']);
} else {
	header ("Location: ".$url."dashboard");
}