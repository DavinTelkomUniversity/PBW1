<?
$replace = array (
'Abdurrahman',
'bebek',
'gemuk',
'berenang'
);
$replaced = str_replace ( $search, $replace, $strings );
foreach ($replaced as $key => $value) {
echo $value."<br>";
}