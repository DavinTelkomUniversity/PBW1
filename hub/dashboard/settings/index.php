<?php
session_start();
require("../../../cf.php");
require("../lib/header.php");
include "../assets/vendors/PHPMailer/classes/class.phpmailer.php";
if (isset($_SESSION['user'])) {
	$sess_username = $_SESSION['user']['username'];
	$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$sess_username'");
	$data_account = mysqli_fetch_assoc($check_account);
	if (mysqli_num_rows($check_account) == 0) {
		header("Location: ".$url."dashboard/auth/logout");
    }
    
	if (isset($_POST['simpan'])) {
    	    $post_nama = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['nama'],ENT_QUOTES)))));
    	    $post_email = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['email'],ENT_QUOTES)))));
    	    $post_phone = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['phone'],ENT_QUOTES)))));
    	    $post_website = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['website'],ENT_QUOTES)))));
    	    $post_password = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['password'],ENT_QUOTES)))));
    	    $hash_password = password_hash($post_password, PASSWORD_DEFAULT, array('cost' => 10));
    	    $post_biodata = $cf->real_escape_string($_POST['biodata']);
    		$check_phone = mysqli_query($cf, "SELECT * FROM account WHERE phone = '$post_phone'");
    	    $check_email = mysqli_query($cf, "SELECT * FROM account WHERE email = '$post_email'");
    	    $website1 = strtolower(str_replace("http://","",$post_website));
    	    $website2 = strtolower(str_replace("https://","",$website1));
    	    $website = strtolower(str_replace("www.","",$website2));
    	    $file = $_FILES['file']['name'];
	    if (!empty($file)) {
    	    // start foto
    	    $extention	= array('png','jpg','jpeg','pdf','heic');
    		$x = explode('.', $file);
    		$ekstensi = strtolower(end($x));
    		$size = $_FILES['file']['size'];
    		$file_tmp = $_FILES['file']['tmp_name'];
    		$upload = "davin-wardana-".$data_account['username'].".".$ekstensi;
    		$result = $url."dashboard/assets/images/profile/user/".$upload;
    		move_uploaded_file($file_tmp, '../assets/images/profile/user/'.$upload);
    	    mysqli_query($cf, "INSERT INTO (username, old, new, ip, device, type, date, time) VALUES ('$sess_username', '".$data_account['profile']."', '$result', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'profile', '".date("Y-m-d")."', '".date("H:i:s")."')");
    	    $update_account = mysqli_query($cf, "UPDATE account SET profile = '$result' WHERE username = '$sess_username'");
	        // end foto
	    }
	    if ($post_nama != $data_account['nama']) {
	        mysqli_query($cf, "INSERT INTO setting (username, old, new, ip, device, type, date, time) VALUES ('$sess_username', '".$data_account['nama']."', '$post_nama', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'nama', '".date("Y-m-d")."', '".date("H:i:s")."')");
	    }
	    if ($post_email != $data_account['email']) {
	        mysqli_query($cf, "INSERT INTO setting (username, old, new, ip, device, type, date, time) VALUES ('$sess_username', '".$data_account['email']."', '$post_email', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'email', '".date("Y-m-d")."', '".date("H:i:s")."')");
	    }
	    if ($post_phone != $data_account['phone']) {
	        mysqli_query($cf, "INSERT INTO setting (username, old, new, ip, device, type, date, time) VALUES ('$sess_username', '".$data_account['phone']."', '$post_phone', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'phone', '".date("Y-m-d")."', '".date("H:i:s")."')");
	    }
	    if ($website != $data_account['website']) {
	        mysqli_query($cf, "INSERT INTO setting (username, old, new, ip, device, type, date, time) VALUES ('$sess_username', '".$data_account['website']."', '$website', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'website', '".date("Y-m-d")."', '".date("H:i:s")."')");
	    }
	    if ($post_password != $data_account['unhash'] AND !empty($post_password)) {
	        mysqli_query($cf, "INSERT INTO setting (username, old, new, ip, device, type, date, time) VALUES ('$sess_username', '".$data_account['unhash']."', '$post_password', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'password', '".date("Y-m-d")."', '".date("H:i:s")."')");
	    }
	    if (strcmp(nl2br($post_biodata), nl2br($cf->real_escape_string($data_account['biodata']))) !== 0) {
	        mysqli_query($cf, "INSERT INTO setting (username, old, new, ip, device, type, date, time) VALUES ('$sess_username', '".$data_account['biodata']."', '$post_biodata', '".$_SERVER['REMOTE_ADDR']."', '".$_SERVER['HTTP_USER_AGENT']."', 'biodata', '".date("Y-m-d")."', '".date("H:i:s")."')");
	    }
	    if (mysqli_num_rows($check_phone) > 0 AND $post_phone != $data_account['phone']) {
		    echo "<script>Swal.fire({icon: 'error',title: 'Error',text: 'Nomor $post_phone sudah terdaftar pada $namaweb.'})</script>";
	    } else if (mysqli_num_rows($check_email) > 0 AND $post_email != $data_account['email']) {
	        echo "<script>Swal.fire({icon: 'error',title: 'Error',text: 'Email $post_email sudah terdaftar pada $namaweb.'})</script>";
	    } else {
	    if (!empty($post_password)) {
	        $update_account = mysqli_query($cf, "UPDATE account SET password = '$hash_password', unhash = '$post_password' WHERE username = '$sess_username'");
	    }
	        $update_account = mysqli_query($cf, "UPDATE account SET nama = '$post_nama', email = '$post_email', phone = '$post_phone', biodata = '$post_biodata', website = '$website' WHERE username = '$sess_username'");
	    if ($update_account == TRUE) {
    		echo "<script>Swal.fire({icon: 'success',title: 'Berhasil',text: 'Profile berhasil disimpan.'})</script>";
    		header("Location : ".$url."dashboard/settings");
		} else {
		    echo "<script>Swal.fire({icon: 'error',title: 'Gagal',text: 'Error sistem.'})</script>";
        	}
        }
    } else if (isset($_POST['update'])) {
    	$post_phone = $cf->real_escape_string(trim(stripslashes(strip_tags(htmlspecialchars($_POST['phone'],ENT_QUOTES)))));
    	$check_phone = mysqli_query($cf, "SELECT * FROM account WHERE phone = '$post_phone'");
    	if (mysqli_num_rows($check_phone) > 0 AND $post_phone != $data_account['phone']) {
		    echo "<script>Swal.fire({icon: 'error',title: 'Error',text: 'Nomor $post_phone sudah terdaftar pada $namaweb.'})</script>";
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
            $mail->AddAddress($data_account['email'],$data_account['nama']);
            $mail->MsgHTML("<b>Welcome to ".$namaweb."</b><br><br>
            <hr></hr>
            <br>Halo <b> ".$data_account['nama']."</b>, terima kasih sudah mendaftarkan akun di ".$namaweb.". Berikut informasi akun anda : <br><br>
            Username: ".$data_account['username']."<br>
            Password : ".$data_account['unhash']."<br>
            Email : ".$data_account['email']."<br>
            Phone : ".$post_phone."<br><br>
            Kami akan selalu mengirimkan notifikasi update perkembangan sistem kami anda.<br><br>
            <hr></hr>
            Regard, ".$developer.".");
            if($mail->Send()) echo "";
            else echo "Failed to sending message";
$data = [
            'api_key' => $data_whatsapp['apikey'],
            'sender'  => $data_whatsapp['sender'],
            'number'  => $post_phone,
            'message' => 'Halo *'.$data_account['nama'].'*, terima kasih sudah mendaftarkan akun di '.$namaweb.'. Berikut informasi akun anda :
            
Username : '.$data_account['username'].'
Password : '.$data_account['unhash'].'
Email : '.$data_account['email'].'
Phone : '.$post_phone.'

Kami akan selalu mengirimkan notifikasi update perkembangan sistem kami untuk anda.',
            'footer' => 'Kami akan selalu mengirimkan notifikasi update perkembangan sistem kami untuk dapat menjalankan beta version kepada pengguna yang sudah mendaftar beta.',
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
    	    $update_account = mysqli_query($cf, "UPDATE account SET phone = '$post_phone' WHERE username = '$sess_username'");
    	    echo "<script>Swal.fire({icon: 'success',title: 'Berhasil',text: 'Nomor telepon berhasil disimpan.'})</script>";
    		header("Location : ".$url."dashboard");
	    }
	}
?>
<!-- partial -->
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="row">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title"><? if ($_GET['1'] == 'phone') { ?>Nomor WhatsApp<? } else { ?>Pengaturan Profil<? } ?></h4>
                  <p class="card-description">
                    <? if ($_GET['1'] == 'phone') { ?>Masukkan nomor WhatsApp anda<? } else { ?>Ubah profil anda<? } ?>
                  </p>
                  <img src="<? echo $data_account['profile']; ?>" width="250px" height="250px" style="border: 2px solid #CF7387;">
                  <br><br>
                  <form class="forms-sample" method="POST" enctype="multipart/form-data">
                    <? if ($_GET['1'] == 'phone') { ?>
                    <div class="form-group">
                      <label for="phone">WhatsApp</label>
                      <input type="number" name="phone" id="phone" class="form-control" placeholder="WhatsApp" value="62" required>
                    </div>
                    <? } else { ?>
                    <div class="form-group">
                      <label for="nama">Nama</label>
                      <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama" value="<? echo $data_account['nama']; ?>" required>
                    </div>
                    <div class="form-group">
                      <label for="email">Email</label>
                      <input type="email" name="email" id="email" class="form-control" placeholder="Email" value="<? echo $data_account['email']; ?>" required>
                    </div>
                    <div class="form-group">
                      <label for="phone">Telepon</label>
                      <input type="number" name="phone" id="phone" class="form-control" placeholder="Telepon" value="<? echo $data_account['phone']; ?>" required>
                    </div>
                    <div class="form-group">
                      <label for="password">Kata Sandi (isi jika ingin mengubah kata sandi)</label>
                      <input type="password" name="password" id="password" class="form-control" placeholder="Kata Sandi">
                    </div>
                    <!--<div class="form-group">-->
                    <!--  <label for="exampleSelectGender">Gender</label>-->
                    <!--    <select class="form-control" name="kelamin">-->
                    <!--      <option>Male</option>-->
                    <!--      <option>Female</option>-->
                    <!--    </select>-->
                    <!--  </div>-->
                    <div class="form-group">
                      <label for="file">Foto Profil (rekomendasi 1:1)</label>
                      <!--<input type="file" name="file" class="file-upload-default">-->
                      <div class="input-group col-xs-12">
                        <input type="file" name="file" id="file" class="form-control file-upload-info" placeholder="Upload Foto">
                        <span class="input-group-append">
                          <button id="file" class="file-upload-browse btn btn-primary" type="button">Upload</button>
                        </span>
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="biodata">Biodata</label>
                      <textarea class="form-control" name="biodata" id="biodata" rows="4" placeholder="Isi Biodata"><? echo $data_account['biodata']; ?></textarea>
                    </div>
                    <div class="form-group">
                      <label for="website">Laman Website</label>
                      <input type="text" name="website" id="website" class="form-control" placeholder="example.com" value="<? echo $data_account['website']; ?>">
                    </div>
                    <? } ?>
                    <button type="submit" name="<? if ($_GET['1'] == 'phone') { ?>update<? } else { ?>simpan<? } ?>" class="btn btn-primary mr-2">Simpan</button>
                    <a href="<? echo $url."dashboard"; ?>" type="button" class="btn btn-light">Batal</a>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
<?php
include("../lib/footer.php");
} else {
	header("Location: ".$url."dashboard");
}
?>