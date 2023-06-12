<?php
session_start();
$page = "question";
require("../../../cf.php");
require("../lib/header.php");
if (isset($_SESSION['user'])) {
	$sess_username = $_SESSION['user']['username'];
	$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$sess_username'");
	$data_account = mysqli_fetch_assoc($check_account);
	if (mysqli_num_rows($check_account) == 0) {
		header("Location: ".$url."dashboard/auth/logout");
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
	    $post_title = $cf->real_escape_string($_POST['title']);
	    $post_question = $cf->real_escape_string($_POST['question']);
	    $post_tags = $cf->real_escape_string(implode(",", $_POST['tags']));
	    $target1 = strtolower(str_replace(" ","-",$post_title));
	    $target2 = strtolower(str_replace(".","",$target1));
	    $target3 = strtolower(str_replace(",","",$target2));
	    $target4 = strtolower(str_replace("&","dan",$target3));
	    $target = strtolower(str_replace("?","",$target4));
	    $code = random_number(3).random_number(3);
		$file = $_FILES['file']['name'];
	    if (!empty($file)) {
	    // start foto
	    $extention	= array('png','jpg','jpeg','pdf','heic','gif');
		$x = explode('.', $file);
		$ekstensi = strtolower(end($x));
		$size = $_FILES['file']['size'];
		$file_tmp = $_FILES['file']['tmp_name'];
		$upload = "davin-wardana-".$code.".".$ekstensi;
		$result = $url."dashboard/assets/images/question/user/".$upload;
		move_uploaded_file($file_tmp, '../assets/images/question/user/'.$upload);
	    // end foto
	    }
	    $send_question = mysqli_query($cf, "INSERT INTO question (username, title, foto, content, tags, code, target, date, time) VALUES ('".$data_account['username']."', '$post_title', '$result', '$post_question', '$post_tags', '$code', '$target', '".date("Y-m-d")."', '".date("H:i:s")."')");
        if ($send_question == TRUE) {
		echo "<script>Swal.fire({icon: 'success',title: 'Berhasil',text: 'Pertanyaan berhasil dikirim.'})</script>";
		header("Location : ".$url."q/".$code."/".$target);
		} else {
		echo "<script>Swal.fire({icon: 'error',title: 'Gagal',text: 'Error sistem.'})</script>";
		}
	}
}
?>
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/vendors/select2/select2.min.css">
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/vendors/select2-bootstrap-theme/select2-bootstrap.min.css">
      <div class="main-panel">
        <div class="content-wrapper" id="search-list">
          <div class="row">
            
            <? if (isset($_SESSION['user'])) { ?>
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Posting Pertanyaan</h4>
                  <p class="card-description">
                    Harap bijak dalam bertanya, tidak mengandung unsur sara, dan sopan berbahasa.
                  </p>
                  <form class="forms-sample" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                      <label for="exampleInputName1">Judul Pertanyaan *</label>
                      <input type="text" name="title" class="form-control" placeholder="Isi dengan Judul Pertanyaan" required>
                    </div>
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
                      <label for="question">Pertanyaan *</label>
                      <textarea class="form-control" name="question" id="question" rows="4" placeholder="Isi dengan Pertanyaan" required></textarea>
                    </div>
                    <div class="form-group">
                    <label for="tags">Tambahkan Tags</label>
                    <select class="js-example-basic-multiple w-100" id="tags" name="tags[]" multiple="multiple">
                      <?
                      $check_tags = mysqli_query($cf, "SELECT * FROM tags ORDER BY RAND()");
				      while ($data_tags = mysqli_fetch_assoc($check_tags)) {
				      ?>
                      <option value="<? echo $data_tags['code']; ?>"><? echo $data_tags['content']; ?></option>
                      <? } ?>
                    </select>
                    </div>
                    <button type="submit" name="kirim" class="btn btn-primary mr-2">Kirim</button>
                  </form>
                </div>
              </div>
            </div>
            <? } ?>
            
            <div class="col-md-12 results">
            </div>
          </div>
        </div>
        
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script type="text/javascript">
            var start = 0;
            var limit = 5;
            var reachedMax = false;

            $(window).scroll(function () {
                if ($(window).scrollTop() == $(document).height() - $(window).height())
                    getData();
            });

            $(document).ready(function () {
               getData();
            });

            function getData() {
                if (reachedMax)
                    return;

                $.ajax({
                   url: 'data.php',
                   method: 'POST',
                    dataType: 'text',
                   data: {
                       getData: 1,
                       start: start,
                       limit: limit
                   },
                   success: function(response) {
                        if (response == "reachedMax")
                            reachedMax = true;
                        else {
                            start += limit;
                            $(".results").append(response);
                        }
                    }
                });
            }
        </script>
        <script>
        $(document).ready(function() {
            $("#search").keyup(function() {
                $.ajax({
                    type: 'POST',
                    url: 'https://hub.telutizen.my.id/dashboard/question/search.php',
                    data: {
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
  <script src="<? echo $url; ?>dashboard/assets/vendors/typeahead.js/typeahead.bundle.min.js"></script>
  <script src="<? echo $url; ?>dashboard/assets/vendors/select2/select2.min.js"></script>
  <script src="<? echo $url; ?>dashboard/assets/js/file-upload.js"></script>
  <script src="<? echo $url; ?>dashboard/assets/js/typeahead.js"></script>
  <script src="<? echo $url; ?>dashboard/assets/js/select2.js"></script>
<?php
	include("../lib/footer.php");
?>