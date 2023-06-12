<?php
session_start();
require("../../../cf.php");

	if (isset($_POST['getData'])) {
		$start = $cf->real_escape_string($_POST['start']);
		$limit = $cf->real_escape_string($_POST['limit']);
		$user = $cf->real_escape_string($_POST['user']);
        $check_question = mysqli_query($cf, "SELECT * FROM question WHERE username = '$user'");
		while ($data_question = $check_question->fetch_array()) {
        $check_answer = mysqli_query($cf, "SELECT * FROM account, answer WHERE account.username = answer.username AND answer.code = '".$data_question['code']."' AND answer.username != '$user' ORDER BY answer.id DESC");
	
		while ($data_answer = $check_answer->fetch_array()) {
				$response .= '
				    <div class="stretch-card grid-margin">
                      <div class="card">
                        <a href="'.$url.'q/'.$data_question['code'].'/'.$data_question['target'].'#'.$data_answer['code_answer'].'">
                        <div class="card-body">
                          <ul class="icon-data-list">
                            <li>
                              <div class="d-flex">
                                <img src="'.$data_answer['profile'].'" alt="user" style="border: 2px solid #CF7387;" loading="lazy">
                                <div>
                                  <p class="text-info mb-1">'.$data_answer['nama'].'</p>
                                  <p class="mb-0" style="color: black;">'.$data_answer['content'].'</p>
                                  <small style="color: black;">'.$data_answer['date'].' pukul '.$data_answer['time'].'</small>
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
        } exit($response);
		} else
		exit('reachedMax');
?>