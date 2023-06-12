<?
session_start();
require("../../../cf.php");
require("../lib/header.php");
if (isset($_SESSION['user'])) {
	$sess_username = $_SESSION['user']['username'];
	$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$sess_username'");
	$data_account = mysqli_fetch_assoc($check_account);
	if (mysqli_num_rows($check_account) == 0) {
		header("Location: ".$url."dashboard/auth/logout");
    }
}
$check_comment = mysqli_query($cf, "SELECT * FROM account, answer WHERE account.username = answer.username AND answer.code_answer = '".$_GET['1']."'");
$data_comment = mysqli_fetch_assoc($check_comment);
$check_question = mysqli_query($cf, "SELECT * FROM question WHERE code = '".$data_comment['code']."'");
$data_question = mysqli_fetch_assoc($check_question);
if (mysqli_num_rows($check_question) == 0) {
	header("Location: ".$url."dashboard/question");
}

    function random_number($length) {
	$str = "";
	$characters = array_merge(range('0','9'));
	$max = count($characters) - 1;
	for ($i = 0; $i < $length; $i++) {
		$rand = mt_rand(0, $max);
		$str .= $characters[$rand];
	}
	    return $str;
    }

    if (isset($_POST['kirim'])) {
	    $post_answer = $cf->real_escape_string($_POST['comment']);
		$file = $_FILES['file']['name'];
	    $code = random_number(3).random_number(3);
	    if (!empty($file)) {
	    // start foto
	    $extention	= array('png','jpg','jpeg','pdf','heic', 'gif');
		$x = explode('.', $file);
		$ekstensi = strtolower(end($x));
		$size = $_FILES['file']['size'];
		$file_tmp = $_FILES['file']['tmp_name'];
		$upload = "davin-wardana-".$code.".".$ekstensi;
		$result = $url."dashboard/assets/images/answer/user/".$upload;
		move_uploaded_file($file_tmp, '../assets/images/answer/user/'.$upload);
	    // end foto
	    }
	    $send_answer = mysqli_query($cf, "INSERT INTO answer (username, code, code_answer, code_comment, foto, content, date, time) VALUES ('".$data_account['username']."', '".$data_question['code']."', '$code', '".$data_comment['code_answer']."', '$result', '$post_answer', '".date("Y-m-d")."', '".date("H:i:s")."')");
        if ($send_answer == TRUE) {
		echo "<script>Swal.fire({icon: 'success',title: 'Berhasil',text: 'Jawaban berhasil dikirim.'})</script>";
		if ($data_comment['username'] != $data_account['username']) {
		$data = [
            'api_key' => $data_whatsapp['apikey'],
            'sender'  => $data_whatsapp['sender'],
            'number'  => $data_comment['phone'],
            'message' => '_'.$data_account['nama'].'_ berkomentar ke jawaban kamu nih, yuk di cek!
            
_'.$data_comment['content'].'_

_'.$url.'cm/'.$_GET['1'].'#'.$code.'_'
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
		}
        header("Location : ".$url."cm/".$_GET['1']);
		} else {
		echo "<script>Swal.fire({icon: 'error',title: 'Gagal',text: 'Error sistem.'})</script>";
		}
	}
$share = $url."q/".$_GET['1']."/".$_GET['2'];
?>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            
            <div class="col-md-12 stretch-card grid-margin">
              <div class="card">
                <div class="card-body">
                  <ul class="icon-data-list">
                    <li>
                      <div class="d-flex">
                        <a href="<? echo $url; ?>c/<? echo $data_comment['username']; ?>"><img src="<? echo $data_comment['profile']; ?>" alt="user" style="border: 2px solid #CF7387;" loading="lazy"></a>
                        <a href="<? echo $url; ?>c/<? echo $data_comment['username']; ?>"><p class="text-info mb-1"><? echo $data_comment['nama']; ?></p></a>
                      </div>
                    </li>
                    <form method="POST">
                        <div>
                          <? if (!empty($data_comment['foto'])) { ?>
                          <br><br>
                          <img src="<? echo $data_comment['foto']; ?>" style="width: 80%; height: 20%;" loading="lazy">
                          <? } ?>
                          <br><br><br>
                          <p class="mb-0"><? echo nl2br(str_replace(‘‘, ‘‘, htmlspecialchars($data_comment['content']))); ?></p>
                          <br><br>
                          <? if ($data_comment['username'] == $data_account['username']) { ?>
                          <a href="<? echo $url; ?>ec/<? echo $data_comment['code_answer']; ?>"><small style="color:#6A6A6D;">Edit Jawaban</small></a><br><br>
                          <? } ?>
                          <small><? echo $data_comment['date']; ?> pukul <? echo $data_comment['time'];
                          if (isset($_SESSION['user'])) {
                          $total_rating = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM rating WHERE code_answer = '".$data_comment['code_answer']."' AND action = 'Like'"));
                          $code = random_number(3).random_number(3);
                          $check_rating = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM rating WHERE username = '".$data_account['username']."' AND code_answer = '".$data_comment['code_answer']."' AND action = 'Like'"));
                          if ($check_rating == 0) {
                            if (isset($_POST['like'])) {
                                mysqli_query($cf, "INSERT INTO rating (username, code, code_answer, action, date, time) VALUES ('".$data_account['username']."', '$code', '".$data_comment['code_answer']."', 'Like', '".date("Y-m-d")."', '".date("H:i:s")."')");
                                if ($data_comment['username'] != $data_account['username']) {
                                notification($data_comment['phone'], "_".$data_account['nama']."_ memberikan rating ke jawaban kamu nih!
                                
_".$data_comment['content']."_

_".$url."cm/".$_GET['1']."_");
}
                                header("Location: ".$url."cm/".$_GET['1']);
                            }
                          ?>
                          <button type="submit" name="like" class="btn mdi mdi mdi-heart-outline"></button>
                          <? } else {
                            if (isset($_POST['unlike'])) {
                                mysqli_query($cf, "UPDATE rating SET action = 'Unlike' WHERE code_answer = '".$data_comment['code_answer']."' AND username = '".$data_account['username']."'");
                                header("Location: ".$url."cm/".$_GET['1']);
                            }
                          ?>
                          <button type="submit" name="unlike" class="btn mdi mdi mdi-heart"></button>
                          <? } } else { ?>
                          <a href="<? echo $url; ?>dashboard/auth/signin" name="like" class="btn mdi mdi mdi-heart-outline"></a>
                          <? } if ($total_rating > 0) { echo $total_rating; } ?>
                          </small>
                        </div>
                    </form>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          
                        <div class="row">
                            <div class="col-lg-12" style="margin-top:20px;">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Komen Jawaban Telutizen</h4><hr>
                                        <div class="chat-conversation">
                                            <div data-simplebar style="height: 400px; overflow: auto;">
                                                <ul class="conversation-list">
                                                    <div class="col-md-12 comment-list" id="search-list">
                                                    </div>
                                                </ul>
                                            </div>
                                            <hr>
                                            <? if (isset($_SESSION['user'])) { ?>
                                            <p class="card-description">
                                            Harap bijak dalam berkomentar, tidak mengandung unsur sara, dan sopan berbahasa.
                                            </p>
                                              <form class="forms-sample" method="POST" enctype="multipart/form-data">
                                                <div class="form-group">
                                                  <label for="file">Foto</label>
                                                  <!--<input type="file" name="file" class="file-upload-default">-->
                                                  <div class="input-group col-xs-12">
                                                    <input type="file" name="file" id="file" class="form-control file-upload-info" placeholder="Upload Foto">
                                                    <span class="input-group-append">
                                                      <button id="file" class="file-upload-browse btn btn-primary" type="button">Unggah</button>
                                                    </span>
                                                  </div>
                                                </div>
                                                <div class="form-group">
                                                  <label for="comment">Komentar *</label>
                                                  <textarea class="form-control" name="comment" id="comment" rows="4" placeholder="Isi dengan Komentar" required></textarea>
                                                </div>
                                                <a href="<? echo $url."q/".$data_question['code']."/".$data_question['target']; ?>" class="btn btn-primary mr-2">Kembali</a>
                                                <button type="submit" name="kirim" class="btn btn-primary mr-2">Kirim</button>
                                            </form>
                                            <? } else { ?>
                                                <a href="<? echo $url; ?>dashboard/auth/signin" type="button" class="btn btn-primary mr-2">Login untuk berkomentar</a>
                                            <? } ?>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script type="text/javascript">
            var start = 0;
            var limit = 5;
            var code = "<?php echo $_GET['1'] ?>"
            var sess = "<?php echo $data_account['username'] ?>";
            var reachedComment = false;

            $(window).scroll(function () {
                if ($(window).scrollTop() == $(document).height() - $(window).height())
                    getComment();
            });

            $(document).ready(function () {
               getComment();
            });

            function getComment() {
                if (reachedComment)
                    return;

                $.ajax({
                   url: 'https://hub.telutizen.my.id/dashboard/comment/data.php',
                   method: 'POST',
                    dataType: 'text',
                   data: {
                       getComment: 1,
                       start: start,
                       limit: limit,
                       code: code,
                       sess: sess
                   },
                   success: function(response) {
                        if (response == "reachedComment")
                            reachedComment = true;
                        else {
                            start += limit;
                            $(".comment-list").append(response);
                        }
                    }
                });
            }
        </script>
        <script>
        $(document).ready(function() {
            $("#search").keyup(function() {
            var code = "<?php echo $_GET['1'] ?>";
            var sess = "<?php echo $data_account['username'] ?>";
                $.ajax({
                    type: 'POST',
                    url: 'https://hub.telutizen.my.id/dashboard/comment/search.php',
                    data: {
                        code: code,
                        sess: sess,
                        search: $(this).val()
                    },
                    cache: false,
                    success: function(data) {
                        $("#search-list").html(data);
                    }
                });
            });
        });
        </script>
        
<script type="text/javascript">
	    function copy_to_clipboard(element) {
	        var copyText = document.getElementById(element);
	        copyText.select();
	        document.execCommand("copy");
	        Swal.fire({
              position: 'center',
              icon: 'success',
              title: 'Link Copied',
              showConfirmButton: false,
              timer: 1500
            })
	    }
</script>
<?
include("../lib/share.php");
include("../lib/footer.php");
?>