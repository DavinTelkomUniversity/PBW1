<?php
if (file_exists("./database/post.json")) {

$fileData = file_get_contents('./database/post.json');
$getData = json_decode($fileData, true);
$newata = array(

"title" => "Penghargaan Mahasiswa Terbaik",

"nama" => "Hariandi Maulid");

array_push($getData, $newbata);

$FileData = fopen("./database/post.json", "w") or die("404");
fwrite($FileData, json_encode($getData, JSON_PRETTY_PRINT));

fclose($filebata);

echo "Data Berhasil ditambahkan";
} else {
$fileData = fopen("./database/post.json", "w") or die("484");
$newData = array(
"title" => "Penghargaan Prodi Terbaik",
"nama" => "D3 RPLA"
);
fwrite($fileData, json_encode(array($newData)));
fclose($FileData);
echo "Database berhasil dibuat dan data berhasil diinput";
}

?>
