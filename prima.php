<html>
    <head>
        <title>Bilangan Prima</title>
    </head>
    <body>
<?php
    $bilangan = 4;
    $counter = 0;
    for($j = 1; $j <= $bilangan; $j++) {
        if ($bilangan % $j == 0) {
            $counter++;
        }
    }
    
    if ($counter == 2) {
        echo "$bilangan adalah bilangan prima";
    } else {
        echo "$bilangan bukan bilangan prima";
    }
    
    echo "<hr>";
    
    $bilangan = 5;
    $counter = 0;
    for($j = 1; $j <= $bilangan; $j++) {
        if ($bilangan % $j == 0) {
            $counter++;
        }
    }
    
    if ($counter == 2) {
        echo "$bilangan adalah bilangan prima";
    } else {
        echo "$bilangan bukan bilangan prima";
    }
?>
    </body>
</html>