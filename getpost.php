<?php  
	include "connection.php";
	
	$getPostQuery = mysqli_query($conn, "SELECT * FROM post ORDER BY id DESC");

	foreach ($getPostQuery as $key) {
		$postContent = $key['post'];
		$postId = $key['id'];
		
		echo "
			<div class='box' id='content-container'>
		<div class='row'>			
		</div>
		<div class='row'>
			<div class='col-md-1'></div>
			<div class='col-md-11' style='padding-left:5px;'>
				<p class='text-muted' id='post-text'>$postContent</p>
			</div>
		</div>
		<div class='row' style='margin-top: 10px;'>
			<div class='col-md-1'></div>
			<div class='col-md-1' style='padding-left:5px;'>";

		echo "
			</div>
			<div class='col-md-10' style='padding-left:40px;'>
				<button style='width:80px;' class='btn btn-danger btn-sm' 
				onclick='hapusPost(this.value)' value='$postId'>Delete</button>
			</div>
		</div>
	</div>
		";
	}
?>

