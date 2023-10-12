<!DOCTYPE html>
<html>
<head>
	<title>Lihat Data-2062</title>
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
			 <li role="presentation" class="active"><a href="lihatdata.php">Lihat Data</a></li>
			 <li role="presentation"><a href="cari.php">Cari Buku</a></li>
			 <li role="presentation"><a href="update.php">Update Buku</a></li>
		</ul>
		<div id="content">
			<form class="form-horizontal" method="post">
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">NIM</label>
				    <div class="col-sm-10">
				      <select class="form-control" name="data">
						  <option value="mahasiswa">Data Mahasiswa</option>
						  <option value="buku">Data Buku</option>
						  <option value="pinjam">Data Peminjaman</option>
					  </select>
				    </div>
				</div>
				<div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-success" name="submit">Lihat Data</button>
					</div>
  				</div>
			</form>
			<?php
			include 'connection.php';
			if (isset($_POST['submit'])) {
			    $check = mysqli_query($db, "SELECT * FROM ".$_POST['data']);
			    $no = 1;
			    if ($_POST['data'] == 'mahasiswa') {
			?>
			<table class="table">
			    <tr>
			        <td>No</td>
			        <td>Id</td>
			        <td>NIM</td>
			        <td>Nama</td>
			    </tr>
			    <?php
			    foreach ($check as $data) {
			    ?>
			    <tr>
			        <td><?php echo $no; ?></td>
			        <td><?php echo $data['id']; ?></td>
			        <td><?php echo $data['nim']; ?></td>
			        <td><?php echo $data['nama']; ?></td>
			    </tr>
			    <?php $no++; } ?>
			</table>
			<?php } if ($_POST['data'] == 'buku') {
			?>
			<table class="table">
			    <tr>
			        <td>No</td>
			        <td>Id</td>
			        <td>Nama</td>
			        <td>Pengarang</td>
			        <td>Terbit</td>
			        <td>Status</td>
			    </tr>
			    <?php
			    foreach ($check as $data) {
			    ?>
			    <tr>
			        <td><?php echo $no; ?></td>
			        <td><?php echo $data['id']; ?></td>
			        <td><?php echo $data['nama']; ?></td>
			        <td><?php echo $data['pengarang']; ?></td>
			        <td><?php echo $data['terbit']; ?></td>
			        <td><?php echo $data['status']; ?></td>
			    </tr>
			    <?php $no++; } ?>
			</table>
			<?php } if ($_POST['data'] == 'pinjam') {
			?>
			<table class="table">
			    <tr>
			        <td>No</td>
			        <td>Id</td>
			        <td>NIM</td>
			        <td>Nama Peminjam</td>
			        <td>Buku</td>
			        <td>Dipinjam</td>
			        <td>Dikembalikan</td>
			        <td>Status</td>
			    </tr>
			    <?php
			    foreach ($check as $data) {
			    $data_mahasiswa = mysqli_fetch_assoc(mysqli_query($db, "SELECT * FROM mahasiswa WHERE nim = '".$data['nim']."'"));
			    $data_buku = mysqli_fetch_assoc(mysqli_query($db, "SELECT * FROM buku WHERE id = '".$data['buku']."'"));
			    ?>
			    <tr>
			        <td><?php echo $no; ?></td>
			        <td><?php echo $data['id']; ?></td>
			        <td><?php echo $data['nim']; ?></td>
			        <td><?php echo $data_mahasiswa['nama']; ?></td>
			        <td><?php echo $data_buku['nama']; ?></td>
			        <td><?php echo $data['datetime']; ?></td>
			        <td><?php echo $data['dikembalikan']; ?></td>
			        <td><?php echo $data['status']; ?></td>
			    </tr>
			    <?php $no++; } ?>
			</table>
			<?php } ?>
			
			<?php } ?>
		</div>
	</div>
</body>
</html>