<?php 
include 'connect.php';
if (isset($_SESSION['user'])) {
    $data_users = mysqli_fetch_assoc(mysqli_query($db, "SELECT * FROM users WHERE username = '".$_SESSION['user']['username']."'"));
    if ($data_users['level'] == 'administrator') {
        header("Location: administrator.php");
    } else if ($data_users['level'] == 'operator') {
        header("Location: operator.php");
    }
} else if (isset($_COOKIE['login'])) {
    $data_users = mysqli_fetch_assoc(mysqli_query($db, "SELECT * FROM users WHERE username = '".$_COOKIE['login']."'"));
    $_SESSION['user'] = $data_users;
    if ($data_users['level'] == 'administrator') {
        header("Location: administrator.php");
    } else if ($data_users['level'] == 'operator') {
        header("Location: operator.php");
    }
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
	<div class="container mt-3" >
		<h1>LOGIN</h1>
		
		<?php 
        if (isset($_POST['login'])) {
            ceklogin($_POST);
        }
		?>

		<form action="" method="POST">
			<input type="text" name="username" placeholder
			="Username" autocomplete="off" required="true" autofocus="on">
			<input type="password" name="password" placeholder
			="Password" required="true">
			<button type="submit" name="login">Login</button> <br>
			<input type="checkbox" name="rememberme" value="rememberme">Remember Me<br>
			<a href="register.php">Register here. </a>
		</form>
	
	</div>
</body>
</html>