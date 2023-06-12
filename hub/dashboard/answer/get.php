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
$check_question = mysqli_query($cf, "SELECT * FROM account, question WHERE account.username = question.username AND question.code = '".$_GET['1']."' AND question.target = '".$_GET['2']."'");
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
	    $post_answer = $cf->real_escape_string($_POST['answer']);
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
	    $send_answer = mysqli_query($cf, "INSERT INTO answer (username, code, code_answer, foto, content, date, time) VALUES ('".$data_account['username']."', '".$data_question['code']."', '$code', '$result', '$post_answer', '".date("Y-m-d")."', '".date("H:i:s")."')");
        if ($send_answer == TRUE) {
		echo "<script>Swal.fire({icon: 'success',title: 'Berhasil',text: 'Jawaban berhasil dikirim.'})</script>";
		if ($data_question['username'] != $data_account['username']) {
		$data = [
            'api_key' => $data_whatsapp['apikey'],
            'sender'  => $data_whatsapp['sender'],
            'number'  => $data_question['phone'],
            'message' => '_'.$data_account['nama'].'_ menjawab pertanyaan kamu nih, yuk di cek!
            
_'.$data_question['title'].'_

_'.$url.'q/'.$_GET['1'].'/'.$_GET['2'].'#'.$code.'_'
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
        header("Location : ".$url."q/".$_GET['1']."/".$_GET['2']."");
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
                        <a href="<? echo $url; ?>c/<? echo $data_question['username']; ?>"><img src="<? echo $data_question['profile']; ?>" alt="user" style="border: 2px solid #CF7387;" loading="lazy"></a>
                        <a href="<? echo $url; ?>c/<? echo $data_question['username']; ?>"><p class="text-info mb-1"><? echo $data_question['nama']; ?></p></a>
                      </div>
                    </li>
                        <div>
                          <h3><? echo $data_question['title']; ?></h3>
                          <? if (!empty($data_question['foto'])) { ?>
                          <br><br>
                          <img src="<? echo $data_question['foto']; ?>" style="width: 80%; height: 20%;" loading="lazy">
                          <? } ?>
                          <br><br><br>
                          <p class="mb-0"><? echo nl2br(str_replace(‘‘, ‘‘, htmlspecialchars($data_question['content']))); ?></p>
                          <br><br>
                          <? if (!empty($data_question['tags'])) { ?>
                          <div class="btn-group" role="group" aria-label="Tags">
                          <? $tags = explode(",", $data_question['tags']); foreach($tags as $tag) {  
                          $check_tags = mysqli_query($cf, "SELECT * FROM tags WHERE code = '$tag'");
                          $data_tags = mysqli_fetch_assoc($check_tags);
                          echo "<a href='".$url."t/".$data_tags['code']."/".$data_tags['target']."' type='button' class='btn btn-outline-secondary btn-sm'>".$data_tags['content']."</a>";
                          }?>
                          </div>
                          <br><br>
                          <? } ?>
                          <? if ($data_question['username'] == $data_account['username']) { ?>
                          <a href="<? echo $url; ?>eq/<? echo $data_question['code']; ?>/<? echo $data_question['target']; ?>"><small style="color:#6A6A6D;">Edit Pertanyaan</small></a><br><br>
                          <? } ?>
                          <small><? echo $data_question['date']; ?> pukul <? echo $data_question['time']; ?></small>
                          <small style="color: red;">(<? $all_answer = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM answer WHERE code = '".$data_question['code']."'")); echo $all_answer; ?> jawaban) <a href="#" data-toggle="modal"data-target=".link-copy"><i class="mdi mdi-share-variant"></i></a></small>
                        </div>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          
                        <div class="row">
                            <div class="col-lg-12" style="margin-top:20px;">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title">Jawaban Telutizen</h4><hr>
                                        <div class="chat-conversation">
                                            <div data-simplebar style="height: 400px; overflow: auto;">
                                                <ul class="conversation-list">
                                                    <div class="col-md-12 answer-list" id="search-list">
                                                    </div>
                                                </ul>
                                            </div>
                                            <hr>
                                            <? if (isset($_SESSION['user'])) { ?>
                                            <p class="card-description">
                                            Harap bijak dalam menjawab, tidak mengandung unsur sara, dan sopan berbahasa.
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
                                                  <label for="answer">Jawaban *</label>
                                                  <textarea class="form-control" name="answer" id="answer" rows="4" placeholder="Isi dengan Jawaban" required></textarea>
                                                </div>
                                                <a href="<? echo $url; ?>dashboard/question" class="btn btn-primary mr-2">Kembali</a>
                                                <button type="submit" name="kirim" class="btn btn-primary mr-2">Kirim</button>
                                            </form>
                                            <? } else { ?>
                                                <a href="<? echo $url; ?>dashboard/auth/signin" type="button" class="btn btn-primary mr-2">Login untuk berdiskusi</a>
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
            var code = "<?php echo $_GET['1'] ?>";
            var target = "<?php echo $_GET['2'] ?>";
            var sess = "<?php echo $data_account['username'] ?>";
            var reachedAnswer = false;

            $(window).scroll(function () {
                if ($(window).scrollTop() == $(document).height() - $(window).height())
                    getAnswer();
            });

            $(document).ready(function () {
               getAnswer();
            });

            function getAnswer() {
                if (reachedAnswer)
                    return;

                $.ajax({
                   url: 'https://hub.telutizen.my.id/dashboard/answer/data.php',
                   method: 'POST',
                    dataType: 'text',
                   data: {
                       getAnswer: 1,
                       start: start,
                       limit: limit,
                       code: code,
                       target: target,
                       sess: sess
                   },
                   success: function(response) {
                        if (response == "reachedAnswer")
                            reachedAnswer = true;
                        else {
                            start += limit;
                            $(".answer-list").append(response);
                        }
                    }
                });
            }
        </script>
        <script>
        $(document).ready(function() {
            $("#search").keyup(function() {
            var code = "<?php echo $_GET['1'] ?>";
            var target = "<?php echo $_GET['2'] ?>";
            var sess = "<?php echo $data_account['username'] ?>";
                $.ajax({
                    type: 'POST',
                    url: 'https://hub.telutizen.my.id/dashboard/answer/search.php',
                    data: {
                        code: code,
                        target: target,
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