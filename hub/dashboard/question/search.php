<?
session_start();
require("../../../cf.php");
    if (isset($_POST['search'])) {
        $check_question = mysqli_query($cf, "SELECT * FROM account, question WHERE account.username = question.username AND question.title LIKE '%".$_POST['search']."%' ORDER BY RAND()");
		while($data_question = $check_question->fetch_array()) {
		$all_answer = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM answer WHERE code = '".$data_question['code']."'"));
?>
                    <div class="stretch-card grid-margin">
                      <div class="card">
                        <a href="<? echo $url; ?>q/<? echo $data_question['code']; ?>/<? echo $data_question['target']; ?>">
                        <div class="card-body">
                          <ul class="icon-data-list">
                            <li>
                              <div class="d-flex">
                                <img src="<? echo $data_question['profile']; ?>" alt="user" style="border: 2px solid #CF7387;" loading="lazy">
                                <div>
                                  <p class="text-info mb-1"><? echo $data_question['nama']; ?></p>
                                  <p class="mb-0" style="color: black;"><? echo $data_question['title']; ?></p>
                                  <small style="color: black;"><? echo $data_question['date']; ?> pukul <? echo $data_question['time']; ?></small>
                                  <small style="color: red;">(<? echo $all_answer; ?> jawaban)</small>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                        </a>
                      </div>
                    </div>
<? }} ?>