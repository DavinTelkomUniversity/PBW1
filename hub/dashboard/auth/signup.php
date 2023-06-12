<?
session_start();
require("../../../cf.php");
include "../assets/vendors/PHPMailer/classes/class.phpmailer.php";
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
  <title><? echo $namaweb; ?> - Sign Up</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../vendors/feather/feather.css">
  <link rel="stylesheet" href="../vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../assets/css/vertical-layout-light/style.css">
  <link rel="stylesheet" href="../assets/vendors/mdi/css/materialdesignicons.min.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../favicon.png" />
  <script type="text/javascript" src="../assets/js/sweetalert2.all.min.js"></script>
</head>

<body>
<?
if( isset($_COOKIE['first']) AND isset($_COOKIE['second']) ){
        $cookie = $_COOKIE['first'].$_COOKIE['second'];
        $check_account = mysqli_query($cf, "SELECT * FROM account WHERE cookie = '$cookie'");
        $data_account = mysqli_fetch_assoc($check_account);
        $_SESSION['user'] = $data_account;
		mysqli_query($cf, "INSERT INTO signin (username, ip, device, type, date, time) VALUES ('".$data_account['username']."', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'Cookie', '".date("Y-m-d")."', '".date("H:i:s")."')");
}
if (isset($_SESSION['user'])) {
    	header("Location: ".$url."dashboard");
}
    if (isset($_POST['signup'])) {
	    $post_nama = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['nama'],ENT_QUOTES)))));;
	    $post_username = $cf->real_escape_string(strtolower(trim(stripslashes(strip_tags(htmlspecialchars($_POST['username'],ENT_QUOTES))))));;
        $post_username = str_replace(" ","_",$post_username);
        $post_username = str_replace("@","",$post_username);
	    $post_password = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['password'],ENT_QUOTES)))));;
	    $post_email = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['email'],ENT_QUOTES)))));;
	    $post_phone = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['phone'],ENT_QUOTES)))));;
	    $hash_password = password_hash($post_password, PASSWORD_DEFAULT, array('cost' => 10));
		$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$post_username' OR email = '$post_email' OR phone = '$post_phone'");
        if (mysqli_num_rows($check_account) > 0) {
            echo "<script>Swal.fire({icon: 'error',title: 'Gagal',text: 'Anda telah mendaftarkan akun anda.'})</script>";
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
            $mail->Subject = "Pendaftaran Beta ".$namaweb."";
            $mail->AddAddress($post_email,$post_nama);
            $mail->MsgHTML("<b>Welcome to ".$namaweb."</b><br><br>
            <hr></hr>
            <br>Halo <b> ".$post_nama."</b>, terima kasih sudah mendaftarkan akun di ".$namaweb.". Berikut informasi akun anda : <br><br>
            Username: ".$post_username."<br>
            Password : ".$post_password."<br>
            Email : ".$post_email."<br>
            Phone : ".$post_phone."<br><br>
            Kami akan selalu mengirimkan notifikasi update perkembangan sistem kami untuk anda.<br><br>
            <hr></hr>
            Regard, ".$developer.".");
            if($mail->Send()) echo "";
            else echo "Failed to sending message";
$data = [
            'api_key' => $data_whatsapp['apikey'],
            'sender'  => $data_whatsapp['sender'],
            'number'  => $post_phone,
            'message' => 'Halo *'.$post_nama.'*, terima kasih sudah mendaftarkan akun di '.$namaweb.'. Berikut informasi akun anda :
            
Username : '.$post_username.'
Password : '.$post_password.'
Email : '.$post_email.'
Phone : '.$post_phone.'

Kami akan selalu mengirimkan notifikasi update perkembangan sistem kami untuk anda.',
            'footer' => 'Kami akan selalu mengirimkan notifikasi update perkembangan sistem kami untuk anda.',
            'template1' => 'url|Login|'.$url.'',
            'template2' => 'url|Kunjungi|'.$url.''
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
            mysqli_query($cf, "INSERT INTO account (nama, username, password, unhash, email, phone, profile, date, time) VALUES ('$post_nama', '$post_username', '$hash_password', '$post_password', '$post_email', '$post_phone', '$logo', '".date("Y-m-d")."', '".date("H:i:s")."')");
            if ($response) {
    	        echo "<script>Swal.fire({icon: 'success',title: 'Berhasil',text: 'Kamu berhasil mendaftarkan akun beta.'})</script><META HTTP-EQUIV=Refresh CONTENT=\"3; URL=/dashboard\">";
        		$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$post_username'");
        		$data_account = mysqli_fetch_assoc($check_account);
    	        $_SESSION['user'] = $data_account;
				$until = 60*60*24*30*12;
				$first = hash('sha256', $post_username);
				$second = hash('sha256', $post_password);
				setcookie('first', $first, time()+$until);
				setcookie('second', $second, time()+$until);
				mysqli_query($cf, "UPDATE account SET cookie = '$first$second' WHERE username = '$post_username'");
				header("Location: ".$url."dashboard");
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
              <h4>New here?</h4>
              <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>
              <form class="pt-3" method="POST">
                <div class="form-group">
                  <label for="nama">Nama</label>
                  <input type="text" class="form-control form-control-lg" name="nama" id="nama" placeholder="Nama" required>
                </div>
                <div class="form-group">
                  <label for="username">Username <font style="color:red;">*</font></label>
                  <input type="text" class="form-control form-control-lg" name="username" id="username" placeholder="Username" required>
                </div>
                <div class="form-group">
                  <label for="password">Password <font style="color:red;">*</font> <a onclick="myFunction()"><i class="mdi mdi-eye"></i></a></label>
                  <input type="password" class="form-control form-control-lg" name="password" id="password" placeholder="Password" required>
                </div>
                <div class="form-group">
                  <label for="email">Email <font style="color:red;">*</font></label>
                  <input type="email" class="form-control form-control-lg" name="email" id="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                  <label for="phone">WhatsApp <font style="color:red;">*</font></label>
                  <input type="text" onkeypress="return cekNumber(event)" class="form-control form-control-lg" name="phone" id="phone" placeholder="WhatsApp" value="62" minlength="10" maxlength="14" required>
                </div>
                <div class="mb-4">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input" required>
                      I agree to all Terms & Conditions
                    </label>
                  </div>
                </div>
                <div class="mt-3">
                  <button type="submit" name="signup" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" >Sign Up</button>
                </div>
                <br>
                <div class="mb-2">
                  <a href="<? echo $url; ?>?mode=tamu" type="button" class="btn btn-block btn-outline-secondary auth-form-btn">
                    Berkunjung sebagai Tamu
                  </a>
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
  <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
  <script>
  function cekNumber(evt) {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
        return true;
    }
  </script>
  </script>
  <script>
     $("#username").on({
     keydown: function(e) {
       if (e.which === 32)
         return false;
      },
      keyup: function(){
       this.value = this.value.toLowerCase();
      },
      change: function() {
        this.value = this.value.replace(/\s/g, "");
      }
    });
  </script>
  <script>
  function myFunction() {
      var x = document.getElementById("password");
      if (x.type === "password") {
          x.type = "text";
      } else {
          x.type = "password";
      }
  }
  </script>
  <!-- plugins:js -->
  <script src="../vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="../assets/js/off-canvas.js"></script>
  <script src="../assets/js/hoverable-collapse.js"></script>
  <script src="../assets/js/template.js"></script>
  <script src="../assets/js/settings.js"></script>
  <script src="../assets/js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
