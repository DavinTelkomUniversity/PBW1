<?
session_start();
require("../../../cf.php");

	if (isset($_POST['getComment'])) {
		$start = $cf->real_escape_string($_POST['start']);
		$limit = $cf->real_escape_string($_POST['limit']);
		$code = $cf->real_escape_string($_POST['code']);
		$sess = $cf->real_escape_string($_POST['sess']);
        $check_answer = mysqli_query($cf, "SELECT * FROM answer WHERE code_answer = '$code'");
        $data_answer = mysqli_fetch_assoc($check_answer);
        $check_comment = mysqli_query($cf, "SELECT * FROM account, answer WHERE account.username = answer.username AND answer.code_comment = ".$data_answer['code_answer']." ORDER BY answer.id DESC LIMIT $start, $limit");
		if ($check_comment->num_rows > 0) {
			$response = "";
			while($data_comment = $check_comment->fetch_array()) {
            if ($data_answer['username'] == $data_comment['username']) {
                $keterangan = "<p style='color: red;'>(penjawab)</p>";
            } else if ($data_comment['username'] == $sess) {
                $keterangan = "<p>(anda berkomentar)</p>";
            } else {
                $keterangan = "<p>(berkomentar)</p>";
            }
            if ($data_comment['username'] == $sess) {
                $edit = "<a href='".$url."ec/".$data_comment['code_answer']."'><small style='color:#6A6A6D;'>Edit Komentar</small></a><br><br>";
            } else {
                $edit = "";
            }
            if (!empty($data_comment['foto'])) {
                $foto = '<br><br><img src="'.$data_comment['foto'].'" style="width: 80%; height: 20%;" loading="lazy">';
            } else {
                $foto = '';
            }
				$response .= '
				                                    <div class="stretch-card grid-margin" id="'.$data_comment['code_answer'].'">
                                                      <div class="card">
                                                        <div class="card-body" style="background-color:#F5F7FE;">
                                                          <ul class="icon-data-list">
                                                            <li>
                                                              <div class="d-flex">
                                                                <a href="'.$url.'c/'.$data_comment['username'].'"><img src="'.$data_comment['profile'].'" alt="user" style="border: 2px solid #CF7387;" loading="lazy"></a>
                                                                <a href="'.$url.'c/'.$data_comment['username'].'"><p class="text-info mb-1">'.$data_comment['nama'].'</p></a>&nbsp;
                                                                '.$keterangan.'
                                                              </div>
                                                            </li>
                                                                <div>
                                                                  '.$foto.'
                                                                  <br>
                                                                  <p class="mb-0">'.nl2br(str_replace(‘‘, ‘‘, htmlspecialchars($data_comment['content']))).'</p>
                                                                  <br><br>
                                                                  '.$edit.'
                                                                  <small>'.$data_comment['date'].' pukul '.$data_comment['time'].'</small>
                                                                </div>
                                                              </ul>
                                                            </div>
                                                          </div>
                                                        </div>
				';
			}

			exit($response);
		} else
			exit('reachedComment');
	}