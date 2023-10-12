<?php 
session_start();
$db = mysqli_connect("localhost","davinid_pbw2","davinid_pbw2","davinid_pbw2");

function register($infologin){
	global $db;
	
	$username = htmlspecialchars(stripcslashes($infologin["username"])) ;
	$password = mysqli_real_escape_string($db,$infologin["password"]);
	$cpassword = mysqli_real_escape_string($db,$infologin["cpassword"]); 
	$level = mysqli_real_escape_string($db,$infologin["level"]); 
	$check_users = mysqli_query($db, "SELECT * FROM users WHERE username = '$username'");
	if (mysqli_num_rows($check_users) > 0) {
	    echo '<script>alert("Username '.$username.' sudah terdaftar.")</script>';
	} else if ($password != $cpassword) {
	    echo '<script>alert("Konfirmasi password tidak sesuai.")</script>';
	} else {
	    $hash = password_hash($password, PASSWORD_DEFAULT, array('cost' => 10));
	    $insert = mysqli_query($db, "INSERT INTO users (username, password, level) VALUES ('$username', '$hash', '$level')");
	    if ($insert == TRUE) {
	        echo '<script>alert("Berhasil mendaftarkan akun.");</script>';
	    } else {
	        echo '<script>alert("Error sistem.")</script>';
	    }
	}
}

		function ceklogin($datalogin){
			global $db;
			$username = $datalogin["username"];
			$password = $datalogin["password"];
	        $check_users = mysqli_query($db, "SELECT * FROM users WHERE username = '$username'");
	        $data_users = mysqli_fetch_assoc($check_users);
	        if (mysqli_num_rows($check_users) == 0) {
        	    echo '<script>alert("Username '.$username.' tidak terdaftar.")</script>';
        	} else if (!password_verify($password, $data_users['password'])) {
        	    echo '<script>alert("Password salah.")</script>';
        	} else {
        	    if (isset($_POST['rememberme'])) {
        	        setcookie("login",$password, time()+30000);
        	    }
        	    $_SESSION['user'] = $data_users;
        	    if ($data_users['level'] == 'administrator') {
        	        echo '<script>alert("Berhasil login.");document.location.href="administrator.php";</script>';
        	    } else if ($data_users['level'] == 'operator') {
        	        echo '<script>alert("Berhasil login.");document.location.href="operator.php";</script>';
        	    }
        	}
		}

 ?>

