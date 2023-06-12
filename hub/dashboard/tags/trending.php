<?
session_start();
require("../../../cf.php");

	if (isset($_POST['getData'])) {
		$start = $cf->real_escape_string($_POST['start']);
		$limit = $cf->real_escape_string($_POST['limit']);
        $check_tags = mysqli_query($cf, "SELECT * FROM tags ORDER BY visit DESC LIMIT 3");
        if ($check_tags->num_rows > 0) {
			$response = "";
			$no = 1;
			while($data_tags = $check_tags->fetch_array()) {
				$response .= '
                        <tr>
                          <td><p class="mb-0"><span class="font-weight-bold mr-2">#'.$no++.'</span></p></td>
                          <td class="text-muted"><a style="color:#89949E;" href="'.$url.'t/'.$data_tags['code'].'/'.$data_tags['target'].'">'.$data_tags['content'].'</a></td>
                        </tr>
				';
			}

			exit($response);
		} else
			exit('reachedMax');
	}