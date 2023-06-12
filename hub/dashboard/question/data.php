<?php
session_start();
require("../../../cf.php");

	if (isset($_POST['getData'])) {
		$start = $cf->real_escape_string($_POST['start']);
		$limit = $cf->real_escape_string($_POST['limit']);
        $check_question = mysqli_query($cf, "SELECT * FROM account, question WHERE account.username = question.username ORDER BY RAND() LIMIT $start, $limit");
		if ($check_question->num_rows > 0) {
			$response = "";

			while($data_question = $check_question->fetch_array()) {
		    $all_answer = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM answer WHERE code = '".$data_question['code']."'"));
				$response .= '
				    <div class="stretch-card grid-margin">
                      <div class="card">
                        <a href="'.$url.'q/'.$data_question['code'].'/'.$data_question['target'].'">
                        <div class="card-body">
                          <ul class="icon-data-list">
                            <li>
                              <div class="d-flex">
                                <img src="'.$data_question['profile'].'" alt="user" style="border: 2px solid #CF7387;" loading="lazy">
                                <div>
                                  <p class="text-info mb-1">'.$data_question['nama'].'</p>
                                  <p class="mb-0" style="color: black;">'.$data_question['title'].'</p>
                                  <small style="color: black;">'.$data_question['date'].' pukul '.$data_question['time'].'</small>
                                  <small style="color: red;">('.$all_answer.' jawaban)</small>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                        </a>
                      </div>
                    </div>
				';
			}

			exit($response);
		} else
			exit('reachedMax');
	}
?>