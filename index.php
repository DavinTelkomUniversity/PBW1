<!DOCTYPE html>
<html>
<head>
	<title>D3IFCOOL - Timeline</title>

	<!-- Load external css -->
	<link rel="stylesheet" type="text/css" href="assets/bootstrap.css" />
	<style type="text/css">

		body {
			background-color: #F0F0F0;
		}

		img.glyph-icon {
			width:16px;
			height:16px;
		}

		.box {
			width: 600px;
			height: 150px;
			background-color: white;
			box-shadow: 0px 0px 2px #95a5a6;
			margin-left: auto;
			margin-right: auto;
			margin-top: 30px;
			padding: 15px;
		}

		a:hover {
			text-decoration: none;
		}
	</style>
</head>

<body onload="ambilPost()">

<div class="container" id="container">
	<div class="box">
		<form>
			<textarea id="content" name="content" class="form-control"
			placeholder="Write Something..." maxlength="140"></textarea>
			<br>
			<button onclick="buatPost(this.value);" type="button" style="float:right;"
			class="btn btn-info btn-sm">POST</button>
		</form> 
</div>

<div id="post-content"></div>

</div>
<script>
// instantiate XMLHttpRequest Object
var req = new XMLHttpRequest();

// Buat Fungsi Post 
function buatPost() {

	var url = "submitpost.php";
    var content = document.getElementById("content").value;
    var data = "content="+content;

    req.open("POST", url, true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    req.onreadystatechange = function() {
        if(req.readyState == 4 && req.status == 200) {
            ambilPost()
            document.getElementById("content").value = "";
        }
    }
    req.send(data);
}


//Buat fungsi get post 
function ambilPost() {

    var url = "getpost.php";

    req.open("GET", url, true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    req.onreadystatechange = function() {
        if(req.readyState == 4 && req.status == 200) {
            document.getElementById("post-content").innerHTML = req.responseText;
        }
    }
    req.send(null);
}


//fungsi delete post 
function hapusPost(id) {
    var url = "deletePost.php?id="+id;

    req.open("GET", url, true);
    req.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    req.onreadystatechange = function() {
        if(req.readyState == 4 && req.status == 200) {
            ambilPost();
        }
    }
    req.send(null);
}


</script>
<!-- load external javascript -->
<script type="text/javascript" src="assets/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="assets/bootstrap.js"></script>
</body>
</html>