<!DOCTYPE html>
<html>
<head>
	<title>Input Buku-2062</title>
	<link rel="stylesheet" type="text/css" href="css/sidebar.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<?php include("config.php");?>
</head>
<body>
	<div id="container">
		<ul class="nav nav-pills nav-stacked sidebar">
			 <li role="presentation"><a href="index.php">Tambah Mahasiswa</a></li>
			 <li role="presentation" class="active"><a href="buku.php">Tambah Buku</a></li>
			 <li role="presentation"><a href="pinjam.php">Peminjaman Buku</a></li>
			 <li role="presentation"><a href="hapusmhs.php">Hapus Mahasiswa</a></li>
			 <li role="presentation"><a href="hapusbuku.php">Hapus Buku</a></li>
			 <li role="presentation"><a href="lihatdata.php">Lihat Data</a></li>
			 <li role="presentation"><a href="cari.php">Cari Buku</a></li>
			 <li role="presentation"><a href="update.php">Update Buku</a></li>
		</ul>
		<div id="content">
			<form class="form-horizontal" method="post">
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Nama Buku</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="Nama Buku" name="nama">
				    </div>
				</div>
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Pengarang</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="Nama Buku" name="pengarang">
				    </div>
				</div>
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Tahun Terbit</label>
				    <div class="col-sm-10">
				      <input type="number" class="form-control" id="inputEmail3" placeholder="Tahun Terbit" name="terbit">
				    </div>
				</div>
				<div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-success" name="tambah">Tambah</button>
					</div>
  				</div>
			</form>
			<?php
			    include 'connection.php';
				if (isset($_POST['tambah'])) {
				    $insert = mysqli_query($db, "INSERT INTO buku (nama, pengarang, terbit) VALUES ('".$_POST['nama']."', '".$_POST['pengarang']."', '".$_POST['terbit']."')");
				    if ($insert == TRUE) {
				        echo '<script>alert("Data berhasil ditambahkan.")</script>';
				    } else {
				        echo '<script>alert("Error sistem.")</script>';
				    }
				}	
			?>
		</div>
	</div>
</body>
</html>