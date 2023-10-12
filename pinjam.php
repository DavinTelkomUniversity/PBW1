<!DOCTYPE html>
<html>
<head>
	<title>Pinjam Buku-2062</title>
	<link rel="stylesheet" type="text/css" href="css/sidebar.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<?php include("config.php");?>
</head>
<body>
	<div id="container">
		<ul class="nav nav-pills nav-stacked sidebar">
			 <li role="presentation"><a href="index.php">Tambah Mahasiswa</a></li>
			 <li role="presentation"><a href="buku.php">Tambah Buku</a></li>
			 <li role="presentation" class="active"><a href="pinjam.php">Peminjaman Buku</a></li>
			 <li role="presentation"><a href="hapusmhs.php">Hapus Mahasiswa</a></li>
			 <li role="presentation"><a href="hapusbuku.php">Hapus Buku</a></li>
			 <li role="presentation"><a href="lihatdata.php">Lihat Data</a></li>
			 <li role="presentation"><a href="cari.php">Cari Buku</a></li>
			 <li role="presentation"><a href="update.php">Update Buku</a></li>
		</ul>
		<div id="content">
			<form class="form-horizontal" method="post">
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">NIM</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="NIM" name="nim">
				    </div>
				</div>
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">ID Buku</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="ID Buku" name="buku">
				    </div>
				</div>
				<div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-success" name="pinjam">Pinjam</button>
					</div>
  				</div>
			</form>
			<form class="form-horizontal" method="post">
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">NIM</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="NIM" name="nim">
				    </div>
				</div>
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">ID Buku</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="ID Buku" name="buku">
				    </div>
				</div>
				<div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-success" name="dikembalikan">Kembalikan</button>
					</div>
  				</div>
			</form>
			<?php
			    include 'connection.php';
			    date_default_timezone_set('Asia/Jakarta');
				if (isset($_POST['pinjam'])) {
				    $check_buku = mysqli_query($db, "SELECT * FROM buku WHERE id = '".$_POST['buku']."' AND status = 'Tersedia'");
				    $check_mahasiswa = mysqli_query($db, "SELECT * FROM mahasiswa WHERE nim = '".$_POST['nim']."'");
				    if (mysqli_num_rows($check_mahasiswa) == 0) {
				        echo '<script>alert("NIM mahasiswa tidak ada.")</script>';
				    } else if (mysqli_num_rows($check_buku) == 0) {
				        echo '<script>alert("Buku tidak tersedia atau sedang dipinjam.")</script>';
				    } else {
				        mysqli_query($db,"INSERT INTO pinjam (nim,buku,datetime) VALUES ('".$_POST['nim']."','".$_POST['buku']."','".date("Y-m-d H:i:s")."')");
				        mysqli_query($db,"UPDATE buku SET status = 'Dipinjam' WHERE id = '".$_POST['buku']."'");
				        echo '<script>alert("Buku berhasil dipinjam")</script>';
				    }
				}	
				if (isset($_POST['dikembalikan'])) {
				    $check_pinjaman = mysqli_query($db, "SELECT * FROM pinjam WHERE nim = '".$_POST['nim']."' AND buku = '".$_POST['buku']."' AND status = 'Dipinjam'");
				    $check_mahasiswa = mysqli_query($db, "SELECT * FROM mahasiswa WHERE nim = '".$_POST['nim']."'");
				    if (mysqli_num_rows($check_mahasiswa) == 0) {
				        echo '<script>alert("NIM mahasiswa tidak ada.")</script>';
				    } else if (mysqli_num_rows($check_pinjaman) == 0) {
				        echo '<script>alert("Tidak ada peminjaman dengan NIM dan ID buku tersebut.")</script>';
				    } else {
				        $data_pinjaman = mysqli_fetch_assoc($check_pinjaman);
				        mysqli_query($db,"UPDATE pinjam SET status = 'Dikembalikan', dikembalikan = '".date("Y-m-d H:i:s")."' WHERE id = '".$data_pinjaman['id']."'");
				        mysqli_query($db,"UPDATE buku SET status = 'Tersedia' WHERE id = '".$_POST['buku']."'");
				        echo '<script>alert("Buku berhasil dikembalikan.")</script>';
				    }
				}	
			?>
		</div>
	</div>
</body>
</html>