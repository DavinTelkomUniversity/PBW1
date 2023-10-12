<html>
    <head>
        <title>Predikat Nilai</title>
    </head>
    <body>
<?php
    echo "Nilai : ".$nilai = 80;
    echo "<br>";
    if (($nilai >= 80) && ($nilai <= 100)) {
        echo "Predikat : ".$nilainya = "A";
    } else if (($nilai >= 70) && ($nilai <= 70)) {
        echo "Predikat : ".$nilainya = "B";
    } else if (($nilai >= 60) && ($nilai <= 69)) {
        echo "Predikat : ".$nilainya = "C";
    } else if (($nilai >= 50) && ($nilai <= 59)) {
        echo "Predikat : ".$nilainya = "D";
    } else {
        echo "Predikat : ".$nilainya = "E";
    }
    echo "<hr>";
    echo "Nilai : ".$nilai = 20;
    echo "<br>";
    if (($nilai >= 80) && ($nilai <= 100)) {
        echo "Predikat : ".$nilainya = "A";
    } else if (($nilai >= 70) && ($nilai <= 70)) {
        echo "Predikat : ".$nilainya = "B";
    } else if (($nilai >= 60) && ($nilai <= 69)) {
        echo "Predikat : ".$nilainya = "C";
    } else if (($nilai >= 50) && ($nilai <= 59)) {
        echo "Predikat : ".$nilainya = "D";
    } else {
        echo "Predikat : ".$nilainya = "E";
    }
?>
    </body>
</html>