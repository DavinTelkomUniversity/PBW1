<!DOCTYPE html>
<html>
<head>
	<title>Update Mahasiswa-2062</title>
	<link rel="stylesheet" type="text/css" href="css/sidebar.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<?php include("config.php");?>
</head>
<body>
	<div id="container">
		<ul class="nav nav-pills nav-stacked sidebar">
			 <li role="presentation"><a href="index.php">Tambah Mahasiswa</a></li>
			 <li role="presentation"><a href="buku.php">Tambah Buku</a></li>
			 <li role="presentation"><a href="pinjam.php">Peminjaman Buku</a></li>
			 <li role="presentation"><a href="hapusmhs.php">Hapus Mahasiswa</a></li>
			 <li role="presentation"><a href="hapusbuku.php">Hapus Buku</a></li>
			 <li role="presentation"><a href="lihatdata.php">Lihat Data</a></li>
			 <li role="presentation"><a href="cari.php">Cari Buku</a></li>
			 <li role="presentation" class="active"><a href="update.php">Update Buku</a></li>
		</ul>
		<div id="content">
			<?php
			    include 'connection.php';
				if (isset($_POST['cari'])) {
				    $check_buku = mysqli_query($db, "SELECT * FROM buku WHERE id = '".$_POST['id']."'");
    				if (mysqli_num_rows($check_buku) == 0) {
    				    echo '<script>alert("Buku tidak tersedia.")</script>';
    				}
				}
				if (isset($_POST['update'])) {
				    $update = mysqli_query($db, "UPDATE buku SET nama = '".$_POST['nama']."', pengarang = '".$_POST['pengarang']."', terbit = '".$_POST['terbit']."' WHERE id = '".$_POST['id']."'");
				    if ($update == TRUE) {
				        echo '<script>alert("Update buku berhasil.")</script>';
				    } else {
				        echo '<script>alert("Error sistem.")</script>';
				    }
				}
			?>
			<form class="form-horizontal" method="post">
				<?php
				if (mysqli_num_rows($check_buku) > 0) {
				    $data_buku = mysqli_fetch_assoc($check_buku);
				?>
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="ID Buku" name="id" value="<?php echo $data_buku['id']; ?>" readonly>
				    </div>
				</div>
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Nama Buku</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="Nama Buku" name="nama" value="<?php echo $data_buku['nama']; ?>" required>
				    </div>
				</div>
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Pengarang</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="Pengarang" name="pengarang" value="<?php echo $data_buku['pengarang']; ?>" required>
				    </div>
				</div>
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">Terbit</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="Tahun Terbit" name="terbit" value="<?php echo $data_buku['terbit']; ?>" required>
				    </div>
				</div>
				<div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-success" name="update">Update Buku</button>
					</div>
  				</div>
  				</form>
  				<?php } else { ?>
			<form class="form-horizontal" method="post">
			    <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="ID Buku" name="id">
				    </div>
				</div>
				<div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-success" name="cari">Cari Buku</button>
					</div>
  				</div>
  				<?php } ?>
			</form>
		</div>
	</div>
</body>
</html>