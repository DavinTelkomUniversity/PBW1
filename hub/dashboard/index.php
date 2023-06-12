<?php
session_start();
$page = "dashboard";
require("../../cf.php");
if (isset($_SESSION['user'])) {
    if (empty($data_account['phone'])) {
	    header('Location: '.$url.'r/phone');
    }
    $ua = $_SERVER['HTTP_USER_AGENT'];
    if(preg_match('#Mozilla/4.05 [fr] (Win98; I)#',$ua) || preg_match('/Java1.1.4/si',$ua) || preg_match('/MS FrontPage Express/si',$ua) || preg_match('/HTTrack/si',$ua) || preg_match('/IDentity/si',$ua) || preg_match('/HyperBrowser/si',$ua) || preg_match('/Lynx/si',$ua)) 
    {
    header('Location:http://shafou.com');
    die();
    }
} else {
	header("Location: ".$url."dashboard/auth/signin");
}
require("lib/header.php");
?>
      <div class="main-panel">
        <div class="content-wrapper" id="search-list">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                  <h3 class="font-weight-bold">Hi, <? echo $data_account['nama']; ?>!</h3>
                  <h6 class="font-weight-normal mb-0">Selamat datang di <span class="text-primary"><? echo $namaweb; ?></span></h6>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card tale-bg">
                <div class="card-people mt-auto">
                  <img src="assets/images/dashboard/gku.svg" alt="telkom" loading="lazy">
                  <div class="weather-info">
                    <div class="d-flex">
                      <!--<div>-->
                      <!--  <h2 class="mb-0 font-weight-normal"><i class="icon-sun mr-2"></i>-->
                        <?
                        function random_number($length) {
                    	$str = "";
                    	$characters = array_merge(range('0','9'));
                    	$max = count($characters) - 1;
                    	for ($i = 0; $i < $length; $i++) {
                    		$rand = mt_rand(0, $max);
                    		$str .= $characters[$rand];
                    	}
                    	    return $str;
                        } 
                        // echo random_number(2); 
                        ?>
                      <!--  <sup>C</sup></h2>-->
                      <!--</div>-->
                      <div class="ml-2">
                        <h4 class="location font-weight-normal">Telkom University</h4>
                        <h6 class="font-weight-normal">Bojongsoang, Bandung</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col-md-3 stretch-card grid-margin">
              <div class="card">
                <div class="card-body">
                  <p class="card-title mb-0">Tranding</p>
                  <div class="table-responsive">
                    <table class="table table-borderless">
                      <thead>
                        <tr>
                          <th class="border-bottom pb-2">No</th>
                          <th class="border-bottom pb-2">Tags</th>
                        </tr>
                      </thead>
                      <tbody class="results">
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col-md-3 grid-margin transparent">
                <div class="card card-light-danger">
                 <a href="<? echo $url; ?>dashboard/question">
                  <div class="card-body">
                    <p class="mb-4" style="color: #ffffff">Semua Pertanyaan</p>
                    <p class="fs-30 mb-2" style="color: #ffffff"><? $all_question = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM question")); echo $all_question; ?></p>
                    <p style="color: #ffffff"><? echo date("Y-m-d"); ?></p>
                  </div>
                 </a>
                </div>
                <br>
                <div class="card card-light-danger">
                 <a href="<? echo $url; ?>dashboard/tags">
                  <div class="card-body">
                    <p class="mb-4" style="color: #ffffff">Semua Tags</p>
                    <p class="fs-30 mb-2" style="color: #ffffff"><? $all_tags = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM tags")); echo $all_tags; ?></p>
                    <p style="color: #ffffff"><? echo date("Y-m-d"); ?></p>
                  </div>
                 </a>
                </div>
            </div>
          </div>
        </div>
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script type="text/javascript">
            var reachedMax = false;
            $(document).ready(function () {
               getData();
            });

            function getData() {
                if (reachedMax)
                    return;

                $.ajax({
                   url: 'tags/trending.php',
                   method: 'POST',
                    dataType: 'text',
                   data: {
                       getData: 1
                   },
                   success: function(response) {
                        if (response == "reachedMax")
                            reachedMax = true;
                        else {
                            $(".results").append(response);
                        }
                    }
                });
            }
        </script>
        <script>
        $(document).ready(function() {
            $("#search").keyup(function() {
                $.ajax({
                    type: 'POST',
                    url: 'https://hub.telutizen.my.id/dashboard/search.php',
                    data: {
                        search: $(this).val()
                    },
                    cache: false,
                    success: function(data) {
                        $("#search-list").html(data);
                    }
                });
            });
        });
        </script>
<?php
require("lib/footer.php");
?>
