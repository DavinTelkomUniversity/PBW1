<?
session_start();
require("../../../cf.php");
require("../lib/header.php");
if (isset($_SESSION['user'])) {
	$sess_username = $_SESSION['user']['username'];
	$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$sess_username'");
	$data_account = mysqli_fetch_assoc($check_account);
	$check_question = mysqli_query($cf, "SELECT * FROM question WHERE code = '".$_GET['1']."' AND target = '".$_GET['2']."' AND username = '".$data_account['username']."'");
	$data_question = mysqli_fetch_assoc($check_question);
	if (mysqli_num_rows($check_account) == 0) {
		header("Location: ".$url."dashboard/auth/logout");
    } else if (mysqli_num_rows($check_question) == 0) {
		header("Location: ".$url."q/".$_GET['1']."/".$_GET['2']);
    }
	if (isset($_POST['simpan'])) {
	    $post_title = $cf->real_escape_string($_POST['title']);
	    $post_question = $cf->real_escape_string($_POST['question']);
	    $update_question = mysqli_query($cf, "UPDATE question SET title = '$post_title', content = '$post_question' WHERE code = '".$_GET['1']."' AND target = '".$_GET['2']."' AND username = '".$data_account['username']."'");
	    if ($update_question == TRUE) {
		echo "<script>Swal.fire({icon: 'success',title: 'Berhasil',text: 'Pertanyaan berhasil disimpan.'})</script>";
		header("Location : ".$url."q/".$_GET['1']."/".$_GET['2']);
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
                  <h4 class="card-title">Edit Pertanyaan</h4>
                  <p class="card-description">
                    Silahkan memperbarui pertanyaan anda
                  </p>
                  <? if (!empty($data_question['foto'])) { ?>
                  <div>
                  <img src="<? echo $data_question['foto']; ?>" style="width: 80%; height: 20%;" loading="lazy">
                  </div>
                  <br>
                  <? } ?>
                  <form class="forms-sample" method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                      <label for="title">Judul Pertanyaan *</label>
                      <input type="text" name="title" id="title" class="form-control" placeholder="Isi dengan Judul Pertanyaan" value="<? echo $data_question['title']; ?>">
                    </div>
                    <div class="form-group">
                      <label for="question">Pertanyaan</label>
                      <textarea class="form-control" name="question" id="question" rows="4" placeholder="Isi Biodata"><? echo $data_question['content']; ?></textarea>
                    </div>
                    <? if (!empty($data_question['tags'])) { ?>
                    <div class="form-group">
                    <label>Tags</label><br>
                    <div class="btn-group" role="group" aria-label="Tags">
                    <? $tags = explode(",", $data_question['tags']); foreach($tags as $tag) {  
                    $check_tags = mysqli_query($cf, "SELECT * FROM tags WHERE code = '$tag'");
                    $data_tags = mysqli_fetch_assoc($check_tags);
                    echo "<a href='".$url."t/".$data_tags['code']."/".$data_tags['target']."' type='button' class='btn btn-outline-secondary btn-sm'>".$data_tags['content']."</a>";
                    }?>
                    </div></div>
                    <? } ?>
                    <button type="submit" name="simpan" class="btn btn-primary mr-2">Simpan</button>
                    <a href="<? echo $url."q/".$_GET['1']."/".$_GET['2']; ?>" type="button" class="btn btn-light">Batal</a>
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