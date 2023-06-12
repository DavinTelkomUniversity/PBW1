<?php
session_start();
require("../../../cf.php");
    if (isset($_POST['search'])) {
        $check_question = mysqli_query($cf, "SELECT * FROM question WHERE username = '$sess_username'");
		while ($data_question = $check_question->fetch_array()) {
        $check_answer = mysqli_query($cf, "SELECT * FROM account, answer WHERE account.username = answer.username AND answer.username != '$sess_username' AND answer.code = '".$data_question['code']."' AND answer.content LIKE '%".$_POST['search']."%' ORDER BY answer.id DESC");
	
		while ($data_answer = $check_answer->fetch_array()) {
?>
				    <div class="stretch-card grid-margin">
                      <div class="card">
                        <a href="<? echo $url; ?>q/<? echo $data_question['code']; ?>/<? echo $data_question['target']; ?>">
                        <div class="card-body">
                          <ul class="icon-data-list">
                            <li>
                              <div class="d-flex">
                                <img src="<? echo $data_answer['profile']; ?>" alt="user" style="border: 2px solid #CF7387;" loading="lazy">
                                <div>
                                  <p class="text-info mb-1"><? echo $data_answer['nama']; ?></p>
                                  <p class="mb-0" style="color: black;"><? echo $data_answer['content']; ?></p>
                                  <small style="color: black;"><? echo $data_answer['date']; ?> pukul <? echo $data_answer['time']; ?></small>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                        </a>
                      </div>
                    </div>
<? } } } ?>