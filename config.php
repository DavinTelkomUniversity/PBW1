<?php
	$server="localhost";
	$username="davinid_pbw";
	$pass="davinid_pbw";
	$dbname="davinid_pbw";
	$db = mysqli_connect($server,$username,$pass,$dbname);
    if (mysqli_connect_error()) {
    	die("Database error!");
    }
?>