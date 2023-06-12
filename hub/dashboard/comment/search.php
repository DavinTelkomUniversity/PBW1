<?
session_start();
require("../../../cf.php");

	if (isset($_POST['search'])) {
		$code = $cf->real_escape_string($_POST['code']);
		$target = $cf->real_escape_string($_POST['target']);
		$sess = $cf->real_escape_string($_POST['sess']);
        $check_question = mysqli_query($cf, "SELECT * FROM account, question WHERE account.username = question.username AND question.code = '$code' AND question.target = '$target'");
        $data_question = mysqli_fetch_assoc($check_question);
        $check_answer = mysqli_query($cf, "SELECT * FROM account, answer WHERE account.username = answer.username AND answer.code = ".$data_question['code']." AND answer.content LIKE '%".$_POST['search']."%' ORDER BY answer.id DESC");
		if ($check_answer->num_rows > 0) {
			$response = "";
			while($data_answer = $check_answer->fetch_array()) {
?>
				                                    <div class="stretch-card grid-margin" id="<? echo $data_answer['code_answer']; ?>">
                                                      <div class="card">
                                                        <div class="card-body" style="background-color:#F5F7FE;">
                                                          <ul class="icon-data-list">
                                                            <li>
                                                              <div class="d-flex">
                                                                <a href="<? echo $url; ?>c/<? echo $data_answer['username']; ?>"><img src="<? echo $data_answer['profile']; ?>" alt="user" style="border: 2px solid #CF7387;" loading="lazy"></a>
                                                                <a href="<? echo $url; ?>c/<? echo $data_answer['username']; ?>"><p class="text-info mb-1"><? echo $data_answer['nama']; ?></p></a>&nbsp;
                                                                <? if ($data_answer['username'] == $data_question['username']) { ?>
                                                                <p style='color: red;'>(pemilik)</p>
                                                                <? } else if ($data_answer['username'] == $sess) { ?>
                                                                <p>(anda menjawab)</p>
                                                                <? } else { ?>
                                                                <p>(menjawab)</p>
                                                                <? } ?>
                                                              </div>
                                                            </li>
                                                                <div>
                                                                  <? if (!empty($data_answer['foto'])) { ?>
                                                                  <br><br><img src="<? echo $data_answer['foto']; ?>" style="width: 80%; height: 20%;" loading="lazy">
                                                                  <? } ?>
                                                                  <br>
                                                                  <p class="mb-0"><? echo nl2br(str_replace(‘‘, ‘‘, htmlspecialchars($data_answer['content']))); ?></p>
                                                                  <br><br>
                                                                  <? if ($data_answer['username'] == $sess) { ?>
                                                                  <a href='".$url."ea/".$data_answer['code_answer']."'><small style='color:#6A6A6D;'>Edit Jawaban</small></a><br><br>
                                                                  <? } ?>
                                                                  <small><? echo $data_answer['date']; ?> pukul <? echo $data_answer['time']; ?></small>
                                                                </div>
                                                              </ul>
                                                            <div class="text-right"><i class="mdi mdi mdi-heart-outline"></i></div>
                                                            </div>
                                                          </div>
                                                        </div>
<? } } } ?>