<?php
$fileData = file_get_contents('./database/post.json');
$getData = json_decode($fileData, true);
foreach ($getData as $viewData) {
echo $viewData['title']."</br>";
echo $viewData['nama']."</br></br>";
}
?>
