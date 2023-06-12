<?
session_start();
require("../../../cf.php");
if(!isset($last_page)) $last_page = $_SERVER['HTTP_REFERER'];
$cookie = $_COOKIE['first'].$_COOKIE['second'];
mysqli_query($cf, "UPDATE account SET cookie = '' WHERE cookie = '$cookie'");
session_unset();
session_destroy();
$until = 60*60*24*30*12;
setcookie('first', null, time()-$until);
setcookie('second', null, time()-$until);

if (substr($last_page, 0, 28) == $url) {
    header("Location: ".$last_page);
} else {
    header("Location: ".$url."dashboard");
}