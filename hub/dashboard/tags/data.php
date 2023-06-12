<?
session_start();
require("../../../cf.php");

	if (isset($_POST['getData'])) {
		$start = $cf->real_escape_string($_POST['start']);
		$limit = $cf->real_escape_string($_POST['limit']);
        $check_tags = mysqli_query($cf, "SELECT * FROM tags ORDER BY RAND() LIMIT $start, $limit");
		if ($check_tags->num_rows > 0) {
			$response = "";

			while($data_tags = $check_tags->fetch_array()) {
		    $all_question = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM question WHERE tags LIKE '%".$data_tags['code']."%'"));
				$response .= '
				    <div class="stretch-card grid-margin">
                      <div class="card">
                        <a href="'.$url.'t/'.$data_tags['code'].'/'.$data_tags['target'].'">
                        <div class="card-body">
                          <ul class="icon-data-list">
                            <li>
                              <div class="d-flex">
                                <div>
                                  <h3 style="color: black;">'.$data_tags['content'].'</h3>
                                  <small style="color: black;">Ditambahkan pada '.$data_tags['date'].' pukul '.$data_tags['time'].'</small>
                                  <small style="color: red;">('.$all_question.' pertanyaan tersedia)</small>
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