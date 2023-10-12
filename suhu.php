<html>
    <head>
        <title>Konversi Suhu</title>
    </head>
    <body>
<?php
    $celcius = 30;
    $fahrenhit = 1200;
    $reamur =150;
    
    // Rumus
    $reamurtofahrenhit = (2.25*$reamur)+32;
    $reamurtocelcius = 1.25*$reamur;
    $celciustofahrenhit = $celcius*1.8+32;
    $celciustoreamur = 0.8*$reamur;
    $fahrenhittocelcius = ($fahrenhit-32)/1.8;
    $fahrenhittoreamur = 0.44*($fahrenhit-32);
    echo "Suhu $celcius C<br>";
    echo "Dalam Reamur $celciustoreamur R<br>";
    echo "Dalam Fahrenhit $celciustofahrenhit F<hr>";
    echo "Suhu $fahrenhit F<br>";
    echo "Dalam Reamur $fahrenhittoreamur R<br>";
    echo "Dalam Celcius $fahrenhittocelcius C<hr>";
    echo "Suhu $reamur R<br>";
    echo "Dalam Celcius $reamurtocelcius C<br>";
    echo "Dalam Fahrenhit $celciustofahrenhit F";
    
?>
    </body>
</html>