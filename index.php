<html>
    <head>
        
    </head>
    <body>
        <?php
        if (isset($_POST['kirim'])) {
            echo "Nama : ".$_POST['nama']."<br>Kelas : ".$_POST['kelas']."<br>Prodi :".$_POST['prodi'];
        }
        ?>
        <form method="POST">
            <input name="nama" placeholder="nama"><br>
            <input name="kelas" placeholder="kelas"><br>
            <input name="prodi" placeholder="prodi"><br>
            <button type="submit" name="kirim">kirim</button>
        </form>
    </body>
</html>
