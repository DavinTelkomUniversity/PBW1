	
<?php 
include 'connect.php';
if (!isset($_SESSION['user'])) {
    header("Location: index.php");
} else {
    $data_users = mysqli_fetch_assoc(mysqli_query($db, "SELECT * FROM users WHERE username = '".$_SESSION['user']['username']."'"));
    if ($data_users['level'] == 'operator') {
        header("Location: operator.php");
    }
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>admin</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

	<div class="container mt-4">
		<h1>Halaman Administrator</h1>
	
	<?php 
		echo "selamat datang ". "<b>".$_SESSION["user"]['username']."</b>";
	?>
		
	<br>
	<a class="btn btn-primary mt-4" href="logout.php" role="button" 
	onclick="return confirm('yakin akan logout ?')">Logout</a>
	</div>
</body>
</html>