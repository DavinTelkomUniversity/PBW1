<?php 
    session_start();
    session_unset();
    session_destroy();
    header("Location: index.php");
    setcookie("login",null, time()+30000);
?>
