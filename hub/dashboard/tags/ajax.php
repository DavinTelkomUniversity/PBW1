<?
require("../../../cf.php");

    function random_number($length) {
	$str = "";
	$characters = array_merge(range('0','9'));
	$max = count($characters) - 1;
	for ($i = 0; $i < $length; $i++) {
		$rand = mt_rand(0, $max);
		$str .= $characters[$rand];
	}
	    return $str;
    }
    
	    $post_username = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['username'],ENT_QUOTES)))));
	    $post_tags = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['tags'],ENT_QUOTES)))));
	    $target = strtolower(str_replace(" ","-",$post_tags));
		$check_tags = mysqli_query($cf, "SELECT * FROM tags WHERE target = '$target'");
	    $code = random_number(3).random_number(3);
	    if (mysqli_num_rows($check_tags) > 0) {
		echo "<script>Swal.fire({icon: 'error',title: 'Gagal',text: 'Tags $post_tags sudah ada, ayo gunakan!'})</script>";
	    } else {
	    $create_tags = mysqli_query($cf, "INSERT INTO tags (content, target, code, username, date, time) VALUES ('$post_tags', '$target', '$code',  '".$post_username."', '".date("Y-m-d")."', '".date("H:i:s")."')");
	    if ($create_tags === TRUE) {
        echo "<script>Swal.fire({icon: 'success',title: 'Berhasil',text: 'Tags berhasil dibuat.'})</script>";
	    } else {
	    echo "<script>Swal.fire({icon: 'error',title: 'Gagal',text: 'Error sistem.'})</script>";
	    }
	    }