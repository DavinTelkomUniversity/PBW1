<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<?php 
include 'connect.php';
if (isset($_POST['submit'])) {
    register($_POST);
}
?>


<body>

	<div class="container mt-3">
		<h1>Register</h1>
		<form action="" method="POST">
			<input type="text" name="username" placeholder="Username" autocomplete="off" required="true" autofocus="on"><br>
			<input type="password" name="password" placeholder="Password" required="true"><br>
			<input type="password" name="cpassword" placeholder="Confirm Password" required="true"><br>
			<select name="level">
			    <option value="administrator">Administrator</option>
			    <option value="operator">Operator</option>
			</select><br>
			<button type="submit" name="submit">Register</button> <br>
			<a href="index.php">Login here.</a>
		</form>
	</div>

</body>
</html>