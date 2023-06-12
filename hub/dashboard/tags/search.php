<?
session_start();
require("../../../cf.php");
    if (isset($_POST['search'])) {
        $check_tags = mysqli_query($cf, "SELECT * FROM tags WHERE content LIKE '%".$_POST['search']."%' ORDER BY RAND()");
		while($data_tags = $check_tags->fetch_array()) {
		$all_question = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM question WHERE tags LIKE '%".$data_tags['code']."%'"));
?>
                    <div class="stretch-card grid-margin">
                      <div class="card">
                        <a href="<? echo $url; ?>t/<? echo $data_tags['code']; ?>/<? echo $data_tags['target']; ?>">
                        <div class="card-body">
                          <ul class="icon-data-list">
                            <li>
                              <div class="d-flex">
                                <div>
                                  <h3 style="color: black;"><? echo $data_tags['content']; ?></h3>
                                  <small style="color: black;">Ditambahkan pada <? echo $data_tags['date']; ?> pukul <? echo $data_tags['time']; ?></small>
                                  <small style="color: red;">(<? echo $all_question; ?> pertanyaan tersedia)</small>
                                </div>
                              </div>
                            </li>
                          </ul>
                        </div>
                        </a>
                      </div>
                    </div>
<? }} ?>