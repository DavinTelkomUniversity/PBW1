<?
session_start();
require("../../../cf.php");
include "../assets/vendors/PHPMailer/classes/class.phpmailer.php";
if (isset($_SESSION['user'])) {
    	header("Location: ".$url."dashboard");
}
?>
<!DOCTYPE html>
<html lang="en">
<!--
         _____          __        __  _____   ___    __
        |  __ \     /\  \ \      / / |_   _| |   \   | |
        | |  | |   /  \  \ \    / /    | |   | |\ \  | |
        | |  | |  / /\ \  \ \  / /     | |   | | \ \ | |
        | |__| | / /__\ \  \ \/ /     _| |_  | |  \ \| |
        |_____/ /_/    \_\  \__/     |_____| |_|   \___|
        
    DEVELOPED BY DAVIN WARDANA (DAVIN.ID / DAVINWARDANA.COM)
    
-->
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title><? echo $namaweb; ?> - Forgot</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/vendors/feather/feather.css">
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="<? echo $url; ?>dashboard/favicon.png" />
  <script type="text/javascript" src="<? echo $url; ?>dashboard/assets/js/sweetalert2.all.min.js"></script>
</head>

<body>
<?php
function random($length) {
	$str = "";
	$characters = array_merge(range('A','Z'), range('a','z'), range('0','9'));
	$max = count($characters) - 1;
	for ($i = 0; $i < $length; $i++) {
		$rand = mt_rand(0, $max);
		$str .= $characters[$rand];
	}
	return $str;
}
    if (isset($_POST['reset'])) {
	    $post_password = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['password'],ENT_QUOTES)))));
	    $hash_password = password_hash($post_password, PASSWORD_DEFAULT, array('cost' => 10));
		$check_account = mysqli_query($cf, "SELECT * FROM account WHERE temporary = '".$_GET['1']."'");
	    $data_account = mysqli_fetch_assoc($check_account);
        if (mysqli_num_rows($check_account) == 0) {
            echo "<script>Swal.fire({icon: 'error',title: 'Gagal',text: 'Link sudah kadaluwarsa, silahkan request link reset password baru.'})</script>";
        } else {
            $mail = new PHPMailer;
            $mail->IsSMTP();
            $mail->SMTPSecure = 'ssl';
            $mail->Host = "srv158.niagahoster.com";
            $mail->Port = 465;
            $mail->SMTPAuth = true;
            $mail->Username = "hub@telutizen.my.id";
            $mail->Password = "@teluhub";
            $mail->SetFrom("hub@telutizen.my.id",$namaweb);
            $mail->Subject = "Password Baru ".$namaweb." Anda";
            $mail->AddAddress($data_account['email'],$data_account['nama']);
            $mail->MsgHTML("<b>Reset Password ".$namaweb."</b><br><br>
            <hr></hr>
            <br>Halo <b> ".$data_account['nama']."</b>, anda baru saja mengubah password anda : <br><br>
            Username: ".$data_account['username']."<br>
            Email : ".$data_account['email']."<br>
            Phone : ".$data_account['phone']."<br>
            Password Baru : ".$post_password."<br><br>
            Anda mengubah password melalui link lupa password. Jika ini bukan anda, silahkan segera amankan akun anda.<br><br>
            <hr></hr>
            Regard, ".$developer.".");
            if($mail->Send()) echo "";
            else echo "Failed to sending message";
$data = [
            'api_key' => $data_whatsapp['apikey'],
            'sender'  => $data_whatsapp['sender'],
            'number'  => ''.$data_account['phone'].'',
            'message' => 'Halo *'.$data_account['nama'].'*, anda baru saja mengubah password anda :
            
Username : '.$data_account['username'].'
Email : '.$data_account['email'].'
Phone : '.$data_account['phone'].'
Password Baru : '.$post_password.'',
            'footer' => 'Anda mengubah password melalui link lupa password. Jika ini bukan anda, silahkan segera amankan akun anda.',
            'template1' => 'url|Login|'.$url.'dashboard',
            'template2' => 'url|Visit|'.$url.''
        ];       
        $curl = curl_init();             
        curl_setopt_array($curl, array(
          CURLOPT_URL => $data_whatsapp['url'],
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
        $update = mysqli_query($cf, "UPDATE account SET temporary = '', password = '$hash_password', unhash = '$post_password' WHERE temporary = '".$_GET['1']."'");
            if ($update) {
    	        echo "<script>Swal.fire({icon: 'success',title: 'Berhasil',text: 'Password akun anda telah diganti, silahkan kembali login.'})</script>";
            } else {
    			echo "<script>Swal.fire({icon: 'error',title: 'Gagal',text: 'Error sistem.'})</script>";
                }
    	    }
        }
?>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo" style="text-align: center;">
                <img src="../favicon.png" alt="logo" loading="lazy">
              </div>
              <h4>Reset Password</h4>
              <h6 class="font-weight-light">Input your new password.</h6>
              <form class="pt-3" method="POST">
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" name="password" placeholder="New Password" required>
                </div>
                <div class="mt-3">
                  <button type="submit" name="reset" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" >Reset</button>
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Already have an account? <a href="<? echo $url; ?>dashboard/auth/signin" class="text-primary">Sign In</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="<? echo $url; ?>dashboard/assets/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="<? echo $url; ?>dashboard/assets/js/off-canvas.js"></script>
  <script src="<? echo $url; ?>dashboard/assets/js/hoverable-collapse.js"></script>
  <script src="<? echo $url; ?>dashboard/assets/js/template.js"></script>
  <script src="<? echo $url; ?>dashboard/assets/js/settings.js"></script>
  <script src="<? echo $url; ?>dashboard/assets/js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
