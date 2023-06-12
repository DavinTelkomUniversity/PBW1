<?
session_start();
require("../../../cf.php");
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
  <title><? echo $namaweb; ?> - Sign In</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../assets/vendors/feather/feather.css">
  <link rel="stylesheet" href="../assets/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="../assets/vendors/css/vendor.bundle.base.css">
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
include '../assets/composer/google-api-client-php-7.4/config.php';
    if(!isset($last_page)) $last_page = $_SERVER['HTTP_REFERER'];
    if( isset($_COOKIE['first']) AND isset($_COOKIE['second']) ){
        $cookie = $_COOKIE['first'].$_COOKIE['second'];
        $check_account = mysqli_query($cf, "SELECT * FROM account WHERE cookie = '$cookie'");
        $data_account = mysqli_fetch_assoc($check_account);
        $_SESSION['user'] = $data_account;
		mysqli_query($cf, "INSERT INTO signin (username, ip, device, type, date, time) VALUES ('".$data_account['username']."', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'Cookie', '".date("Y-m-d")."', '".date("H:i:s")."')");
    }
    if (isset($_SESSION['user'])) {
        if (substr($last_page, 0, 28) == $url) {
    	    header("Location: ".$last_page);
        } else {
    	    header("Location: ".$url."dashboard");
        }
    } else {

    if (isset($_POST['signin'])) {
		$post_username = $cf->real_escape_string(strtolower(trim(stripslashes(strip_tags(htmlspecialchars($_POST['username'],ENT_QUOTES))))));
		$post_password = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['password'],ENT_QUOTES)))));
		$post_last = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['last'],ENT_QUOTES)))));
		$post_username = str_replace(" ","_",$post_username);
		if (substr($post_username, 0, 1) == "@") {
            $post_username = str_replace("@","",$post_username);
		}
		
        $check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$post_username' OR email = '$post_username' OR phone = '$post_username'");
        $data_account = mysqli_fetch_assoc($check_account);
        $post_username = $data_account['username'];
		$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$post_username'");
		$data_account = mysqli_fetch_assoc($check_account);
    		if (empty($post_password)) {
    			echo "<script>Swal.fire({icon: 'error',title: 'Error',text: 'Please fill all input.'})</script>";
    		} else if (mysqli_num_rows($check_account) == 0) {
				echo "<script>Swal.fire({icon: 'error',title: 'Error',text: 'Username not found/invalid.'})</script>";
			} else if (!password_verify($post_password, $data_account['password'])) {
				echo "<script>Swal.fire({icon: 'error',title: 'Error',text: 'Wrong username or password.'})</script>";
			} else {
					mysqli_query($cf, "INSERT INTO signin (username, ip, device, type, date, time) VALUES ('$post_username', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'Manual', '".date("Y-m-d")."', '".date("H:i:s")."')");
                    $_SESSION['user'] = $data_account;
                    if (($_POST['remember'])) {
					    $until = 60*60*24*30*12;
					    $first = hash('sha256', $post_username);
					    $second = hash('sha256', $post_password);
					    setcookie('first', $first, time()+$until);
					    setcookie('second', $second, time()+$until);
					    mysqli_query($cf, "UPDATE account SET cookie = '$first$second' WHERE username = '$post_username'");
					}
					if (!empty($post_last)) {
					    header("Location: ".$post_last);
					} else {
					    header("Location: ".$url."dashboard");
					}
				}
			}
			
	if (isset($_GET['code'])) {
        $token = $google_client->fetchAccessTokenWithAuthCode($_GET["code"]);
        if (!isset($token['error'])) {
            $google_client->setAccessToken($token['access_token']);
            $google_service = new Google_Service_Oauth2($google_client);
            $data = $google_service->userinfo->get();
            // DATA LOGIN GOOGLE
            $email_google = $data['email'];
            $email_gender = $data['gender'];
            $email_picture = $data['picture'];
            $email_verified = $data['verifiedEmail'];
            $email_first = $data['given_name'];
            $email_last = $data['family_name'];
            $email_name = "$email_first $email_last";
            $post_remember = "year";
            // CEK AKUN
            $check_account  = mysqli_query($cf, "SELECT * FROM account WHERE email = '$email_google'");
    		$data_account  = mysqli_fetch_assoc($check_account );
            $post_username = $data_account['username'];
            $post_password = "@".$post_username;
                if ($data_account) {
                        if ($data_account['profile'] == $logo) {
                            mysqli_query($cf, "UPDATE account SET profile = '$email_picture' WHERE email = '$email_google'");
                        }
					    mysqli_query($cf, "INSERT INTO signin (username, ip, device, type, date, time) VALUES ('$post_username', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'Google', '".date("Y-m-d")."', '".date("H:i:s")."')");
					    $_SESSION['user'] = $data_account;
					    $until = 60*60*24*30*12;
					    $first = hash('sha256', $post_username);
					    $second = hash('sha256', $post_password);
					    setcookie('first', $first, time()+$until);
					    setcookie('second', $second, time()+$until);
					    mysqli_query($cf, "UPDATE account SET cookie = '$first$second' WHERE username = '$post_username'");
					    header("Location: ".$url."dashboard");
                } else {
        		    $post_username = str_replace("@",".",$email_google);
        		    $email = explode('@', $email_google);
                    $post_username = $email[0];
                    $check_register = mysqli_query($cf, "SELECT * FROM account WHERE username = '$post_username'");
                    if (mysqli_num_rows($check_register) > 0) {
                        $post_username = strtolower($email_first);
        		        $post_username = str_replace(" ","",$post_username);
                    }
                    $check_register = mysqli_query($cf, "SELECT * FROM account WHERE username = '$post_username'");
                    if (mysqli_num_rows($check_register) > 0) {
                        $post_username = strtolower($email_last);
        		        $post_username = str_replace(" ","",$post_username);
                    }
                    $check_register = mysqli_query($cf, "SELECT * FROM account WHERE username = '$post_username'");
                    if (mysqli_num_rows($check_register) > 0) {
                        $post_username = strtolower($email_name);
        		        $post_username = str_replace(" ","",$post_username);
                    }
                    $check_register = mysqli_query($cf, "SELECT * FROM account WHERE username = '$post_username'");
                    if (mysqli_num_rows($check_register) > 0) {
                        $post_username = strtolower($email_last.$email_first);
        		        $post_username = str_replace(" ","",$post_username);
                    }
                    $check_register = mysqli_query($cf, "SELECT * FROM account WHERE username = '$post_username'");
                    if (mysqli_num_rows($check_register) > 0) {
                        $post_username = strtolower($email_first).random_number(3);
        		        $post_username = str_replace(" ","",$post_username);
                    }
                    $check_register = mysqli_query($cf, "SELECT * FROM account WHERE username = '$post_username'");
                    if (mysqli_num_rows($check_register) > 0) {
                        $post_username = strtolower($email_first).random_number(1).random_number(2);
        		        $post_username = str_replace(" ","",$post_username);
                    }
                        $post_password = $post_username;
	                    $hash_password = password_hash($post_password, PASSWORD_DEFAULT, array('cost' => 10));
				        mysqli_query($cf, "INSERT INTO account (username, ip, device, type, date, time) VALUES ('$post_username', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'Google', '".date("Y-m-d")."', '".date("H:i:s")."')");
					    mysqli_query($cf, "INSERT INTO account (nama, username, password, unhash, email, profile, date, time) VALUES ('$email_name', '$post_username', '$hash_password', '$post_password', '$email_google', '$email_picture', '".date("Y-m-d")."', '".date("H:i:s")."')");
                        mysqli_query($cf, "INSERT INTO signin (username, ip, device, type, date, time) VALUES ('$post_username', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'Google', '".date("Y-m-d")."', '".date("H:i:s")."')");
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
                }
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
              <h4>Hello! let's get started</h4>
              <h6 class="font-weight-light">Sign in to continue.</h6>
              <form class="pt-3" method="POST">
                <div class="form-group">
                  <label for="username">Username <font style="color:red;">*</font></label>
                  <input type="text" name="username" class="form-control form-control-lg" id="username" placeholder="Username" value="<? echo $post_username; ?>" required>
                </div>
                <div class="form-group">
                  <label for="password">Password <font style="color:red;">*</font> <a onclick="myFunction()"><i class="mdi mdi-eye"></i></a></label>
                  <input type="password" name="password" class="form-control form-control-lg" id="password" placeholder="Password" required>
                </div>
                  <input type="hidden" name="last" value="<? echo $last_page; ?>">
                <div class="mt-3">
                  <button type="submit" name="signin" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">Sign In</button>
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input name="remember" type="checkbox" class="form-check-input">
                      Keep me signed in
                    </label>
                  </div>
                  <a href="forgot" class="auth-link text-black">Forgot password?</a>
                </div>
                <div class="mb-2">
                  <a href="<? echo $google_client->createAuthUrl(); ?>" type="button" class="btn btn-block btn-facebook auth-form-btn">
                    Login with Google
                  </a>
                </div>
                <div class="mb-2">
                  <a href="<? echo $url; ?>?mode=tamu" type="button" class="btn btn-block btn-outline-secondary auth-form-btn">
                    Berkunjung sebagai Tamu
                  </a>
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Don't have an account? <a href="<? echo $url; ?>dashboard/auth/signup" class="text-primary">Sign Up</a>
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
  <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="../assets/js/off-canvas.js"></script>
  <script src="../assets/js/hoverable-collapse.js"></script>
  <script src="../assets/js/template.js"></script>
  <script src="../assets/js/settings.js"></script>
  <script src="../assets/js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
