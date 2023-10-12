<html>
    <head>
        <title>Dua Pangkat</title>
    </head>
    <body>
<?php
    echo $bilangan = 8;
    while ($bilangan % 2 == 0) {
        $bilangan = $bilangan / 2;
    }
    
    if ($bilangan == 1) {
        echo " adalah hasil dari perpangkatan 2.";
    } else {
        echo " bukan hasil dari perpangkatan 2.";
    }
    
    echo "<hr>";
    
    echo $bilangan = 6;
    while ($bilangan % 2 == 0) {
        $bilangan = $bilangan / 2;
    }
    
    if ($bilangan == 1) {
        echo " adalah hasil dari perpangkatan 2.";
    } else {
        echo " bukan hasil dari perpangkatan 2.";
    }
?>
    </body>
</html>