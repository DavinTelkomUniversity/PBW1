<?
session_start();
require("../../../cf.php");
require("../lib/header.php");
if (isset($_SESSION['user'])) {
	$sess_username = $_SESSION['user']['username'];
	$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$sess_username'");
	$data_account = mysqli_fetch_assoc($check_account);
	$check_answer = mysqli_query($cf, "SELECT * FROM answer WHERE code_answer = '".$_GET['1']."' AND username = '".$data_account['username']."'");
	$data_answer = mysqli_fetch_assoc($check_answer);
	$check_question = mysqli_query($cf, "SELECT * FROM question WHERE code = '".$data_answer['code']."'");
	$data_question = mysqli_fetch_assoc($check_question);
	if (mysqli_num_rows($check_account) == 0) {
		header("Location: ".$url."dashboard/auth/logout");
    } else if (mysqli_num_rows($check_answer) == 0) {
		header("Location: ".$url."q/".$data_question['code']."/".$data_question['target']);
    }
    
	if (isset($_POST['simpan'])) {
	    $post_answer = $cf->real_escape_string($_POST['answer']);
	    $update_answer = mysqli_query($cf, "UPDATE answer SET content = '$post_answer' WHERE code_answer = '".$_GET['1']."' AND username = '".$data_account['username']."'");
	    if ($update_answer == TRUE) {
		echo "<script>Swal.fire({icon: 'success',title: 'Berhasil',text: 'Jawaban berhasil disimpan.'})</script>";
		header("Location : ".$url."q/".$data_question['code']."/".$data_question['target']."#".$_GET['1']);
		} else {
		echo "<script>Swal.fire({icon: 'error',title: 'Gagal',text: 'Error sistem.'})</script>";
		}
	}
?>
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="row">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Edit Jawaban</h4>
                  <p class="card-description">
                    Silahkan memperbarui jawaban anda
                  </p>
                  <? if (!empty($data_answer['foto'])) { ?>
                  <div>
                  <img src="<? echo $data_answer['foto']; ?>" style="width: 80%; height: 20%;" loading="lazy">
                  </div>
                  <br>
                  <? } ?>
                  <form class="forms-sample" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                      <label for="answer">Jawaban</label>
                      <textarea class="form-control" name="answer" id="answer" rows="4" placeholder="Isi Biodata"><? echo $data_answer['content']; ?></textarea>
                    </div>
                    <button type="submit" name="simpan" class="btn btn-primary mr-2">Simpan</button>
                    <a href="<? echo $url."q/".$data_question['code']."/".$data_question['target']."#".$_GET['1']; ?>" type="button" class="btn btn-light">Batal</a>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
<?
	include("../lib/footer.php");
} else {
	header("Location: ".$url."dashboard");
}
?>