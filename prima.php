<?
    function prima($nomor) {
        if ($nomor ==1) {
            return false;
        }
        if ($nomor ==2) {
            return true;
        }
        $x = sqrt($nomor);
        $x = floor($x);

        for ($i=2; $i <= $x; ++$i) {
            if ($nomor % $i == 0) {
                break;
            }         
        }

        if ($x == $i-1) {
            return true;
        } else{
            return false;
        }
    }

    function cekPrima($n,$m) {
        $jumlah = 0;
        for ($i = $n; $i <= $m; $i++) { 
            if (prima($i)) {
                echo $i. ',';
                $jumlah++;
            }
        }
        echo "<br>jumlah bilangan prima " .$jumlah. "<br>"; 
    }
cekPrima(0, 100);    