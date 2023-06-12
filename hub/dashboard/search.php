<?
session_start();
require("../../cf.php");
    if (isset($_POST['search'])) {
        $check_users = mysqli_query($cf, "SELECT * FROM account WHERE username LIKE '%".$_POST['search']."%' OR nama LIKE '%".$_POST['search']."%' ORDER BY RAND()");
		while($data_users = $check_users->fetch_array()) {
		$all_question = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM question WHERE username = '".$data_users['username']."'"));
		$all_answer = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM answer WHERE username = '".$data_users['username']."'"));
?>
                    <div class="stretch-card grid-margin">
                      <div class="card">
                        <a href="<? echo $url; ?>c/<? echo $data_users['username']; ?>">
                        <div class="card-body">
                          <ul class="icon-data-list">
                            <li>
                              <div class="d-flex">
                                <img src="<? echo $data_users['profile']; ?>" alt="user" style="border: 2px solid #CF7387;" loading="lazy">
                                <div>
                                  <p class="text-info mb-1"><? echo $data_users['nama']; ?></p>
                                  <small><i style="color:#000000;"><? echo $data_users['username']; ?></i></small>
                                  <p class="mb-0" style="color: black;">Bertanya : <? echo $all_question; ?></p>
                                  <p class="mb-0" style="color: black;">Menjawab : <? echo $all_answer; ?></p>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                        </a>
                      </div>
                    </div>
<? }} ?>