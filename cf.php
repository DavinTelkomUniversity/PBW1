<?php
error_reporting(0); 
date_default_timezone_set('Asia/Jakarta');
$day = date('D');
$date = date("Y-m-d");
$time = date("H:i:s");
$timer = date("H:i:s");
$dater = date("d-m-Y");
$datetime = date("Y-m-d H:i:s");
$msg_type = "nothing";
$self = $_SERVER['PHP_SELF'];
$self = str_replace(".php","",$self);
$self = str_replace(".html","",$self);
$self = str_replace("index","",$self);
$device = $_SERVER['HTTP_USER_AGENT'];
$request = $_SERVER['REQUEST_TIME'];
$uri = $_SERVER['SCRIPT_URI'];
$location = "Indonesian";

// database
$db_server = "localhost";
$db_user = "davinid_telutizen";
$db_password = "davinid_telutizen";
$db_name = "davinid_telutizen";

define('DB_SERVER', $db_server);
define('DB_USERNAME', $db_user);
define('DB_PASSWORD', $db_password);
define('DB_DATABASE', $db_name);
$cf = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
 
if (mysqli_connect_error()) {
	die("Database error!");
}

// csrf token
$token = base64_encode( openssl_random_pseudo_bytes(32));

// ip address
$ip = $_SERVER['REMOTE_ADDR'];

// sql website
$check_website = mysqli_query($cf, "SELECT * FROM config WHERE id = '1'");
$data_website = mysqli_fetch_assoc($check_website);

// sql whatsapp
$check_whatsapp = mysqli_query($cf, "SELECT * FROM whatsapp WHERE id = '1'");
$data_whatsapp = mysqli_fetch_assoc($check_whatsapp);

// website
$url = $data_website['url'];
$logo = $data_website['logo'];
$namaweb = $data_website['namaweb'];
$developer = $data_website['developer'];
$domain = str_replace('/','',str_replace('https://','',$data_website['url']));

// sess username
$sess_username = $_SESSION['user']['username'];
    
// check username
$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$sess_username'");
$data_account = mysqli_fetch_assoc($check_account);

define('API_KEY',$data_whatsapp['apikey']);
define('API_URL',$data_whatsapp['url']);
define('API_SENDER',$data_whatsapp['sender']);
function notification($phone,$message) {
        $data = [
            'api_key' => API_KEY,
            'sender'  => API_SENDER,
            'number'  => $phone,
            'message' => $message
        ];       
        $curl = curl_init();             
        curl_setopt_array($curl, array(
          CURLOPT_URL => API_URL,
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'POST',
          CURLOPT_POSTFIELDS => json_encode($data),
          CURLOPT_HTTPHEADER => array(
            'Content-Type: application/json'
          ),
        ));
        $response = curl_exec($curl);
        curl_close($curl);
}