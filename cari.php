<!DOCTYPE html>
<html>
<head>
	<title>Cari Buku-2062</title>
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
			 <li role="presentation" class="active"><a href="cari.php">Cari Buku</a></li>
			 <li role="presentation"><a href="update.php">Update Buku</a></li>
		</ul>
		<div id="content">
			<form class="form-horizontal" method="post">
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">ID</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="inputEmail3" placeholder="ID_BUKU" name="id">
				    </div>
				</div>
				<div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-success" name="cari">Cari Buku</button>
					</div>
  				</div>
			</form>
			<?php
			include 'connection.php';
			if (isset($_POST['cari'])) {
			    $check = mysqli_query($db, "SELECT * FROM buku WHERE id = '".$_POST['id']."'");
			 ?>
			 <table class="table">
			     <tr>
			         <td>ID</td>
			         <td>Nama</td>
			         <td>Pengarang</td>
			         <td>Terbit</td>
			         <td>Status</td>
			     </tr>
			 <?php
			    if (mysqli_num_rows($check) > 0) {
			        foreach ($check as $data) {
			?>
			    <tr>
			        <td><?php echo $data['id']; ?></td>
			        <td><?php echo $data['nama']; ?></td>
			        <td><?php echo $data['pengarang']; ?></td>
			        <td><?php echo $data['terbit']; ?></td>
			        <td><?php echo $data['status']; ?></td>
			    </tr>
			<?php } } else { echo 'Data tidak tersedia'; } ?>
			</table>
			<?php } ?>
		</div>
	</div>
</body>
</html>