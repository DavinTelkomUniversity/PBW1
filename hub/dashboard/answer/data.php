<?
session_start();
require("../../../cf.php");

	if (isset($_POST['getAnswer'])) {
		$start = $cf->real_escape_string($_POST['start']);
		$limit = $cf->real_escape_string($_POST['limit']);
		$code = $cf->real_escape_string($_POST['code']);
		$target = $cf->real_escape_string($_POST['target']);
		$sess = $cf->real_escape_string($_POST['sess']);
        $check_question = mysqli_query($cf, "SELECT * FROM account, question WHERE account.username = question.username AND question.code = '$code' AND question.target = '$target'");
        $data_question = mysqli_fetch_assoc($check_question);
        $check_answer = mysqli_query($cf, "SELECT * FROM account, answer WHERE account.username = answer.username AND answer.code = ".$data_question['code']." AND answer.code_comment IS NULL ORDER BY answer.id DESC LIMIT $start, $limit");
		if ($check_answer->num_rows > 0) {
			$response = "";
			while($data_answer = $check_answer->fetch_array()) {
            $check_comment = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM answer WHERE code_comment = ".$data_answer['code_answer'].""));
            if ($check_comment > 0) {
                $comment = "<br><br><small>$check_comment komentar pada jawaban ini.</small>";
            } else {
                $comment = "";
            }
		    $total_rating = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM rating WHERE code_answer = '".$data_answer['code_answer']."' AND action = 'Like'"));
            if ($total_rating > 0) {
                $rating = $total_rating;
            } else {
                $rating = "";
            }
            if ($data_answer['username'] == $data_question['username']) {
                $keterangan = "<p style='color: red;'>(pemilik)</p>";
            } else if ($data_answer['username'] == $sess) {
                $keterangan = "<p>(anda menjawab)</p>";
            } else {
                $keterangan = "<p>(menjawab)</p>";
            }
            if ($data_answer['username'] == $sess) {
                $edit = "<a href='".$url."ea/".$data_answer['code_answer']."'><small style='color:#6A6A6D;'>Edit Jawaban</small></a><br><br>";
            } else {
                $edit = "";
            }
            if (!empty($data_answer['foto'])) {
                $foto = '<br><br><img src="'.$data_answer['foto'].'" style="width: 80%; height: 20%;" loading="lazy">';
            } else {
                $foto = '';
            }
				$response .= '
				                                    <div class="stretch-card grid-margin" id="'.$data_answer['code_answer'].'">
                                                      <div class="card">
                                                        <div class="card-body" style="background-color:#F5F7FE;">
                                                          <ul class="icon-data-list">
                                                            <li>
                                                              <div class="d-flex">
                                                                <a href="'.$url.'c/'.$data_answer['username'].'"><img src="'.$data_answer['profile'].'" alt="user" style="border: 2px solid #CF7387;" loading="lazy"></a>
                                                                <a href="'.$url.'c/'.$data_answer['username'].'"><p class="text-info mb-1">'.$data_answer['nama'].'</p></a>&nbsp;
                                                                '.$keterangan.'
                                                              </div>
                                                            </li>
                                                                <div>
                                                                  '.$foto.'
                                                                  <br>
                                                                  <p class="mb-0">'.nl2br(str_replace(‘‘, ‘‘, htmlspecialchars($data_answer['content']))).'</p>
                                                                  <br><br>
                                                                  '.$edit.'
                                                                  <small>'.$data_answer['date'].' pukul '.$data_answer['time'].'</small>
                                                                  '.$comment.'
                                                                </div>
                                                              </ul>
                                                              <a href="'.$url.'cm/'.$data_answer['code_answer'].'">
                                                             <div class="text-right"><i class="mdi mdi mdi-heart-outline"></i>'.$rating.'</div>
                                                             </a>
                                                            </div>
                                                          </div>
                                                        </div>
				';
			}

			exit($response);
		} else
			exit('reachedAnswer');
	}