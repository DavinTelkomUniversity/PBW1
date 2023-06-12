<?php
session_start();
require("../../../cf.php");
$check_user = mysqli_query($cf, "SELECT * FROM account WHERE username = '".$_GET['1']."'");
$data_user = mysqli_fetch_assoc($check_user);
if (mysqli_num_rows($check_user) == 0) {
	header("Location: ".$url."dashboard");
}
$share = $url."c/".$_GET['1'];
require("../lib/header.php");
?>
        <meta property="og:image" content="<?php echo $data_user['profile']; ?>">
        <link itemprop="thumbnailUrl" href="<?php echo $data_user['profile']; ?>">
        <span itemprop="thumbnail" itemscope itemtype="http://schema.org/ImageObject">
        <link itemprop="url" href="<?php echo $data_user['profile']; ?>"></span>
        
      <div class="main-panel">        
        <div class="content-wrapper">
          <div class="row">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <? if ($data_user['username'] == $data_account['username']) { ?>
                  <div class="text-right">
                      <a href="<?php echo $url; ?>dashboard/settings"><i class="mdi mdi-settings"></i></a>
                  </div>
                  <? } ?>
                  <a href="#" data-toggle="modal"data-target=".check-profile">
                  <img src="<? echo $data_user['profile']; ?>" class="rounded-circle" width="150px" height="150px" style="border: 2px solid #CF7387;" loading="lazy">
                  </a><br><br>
                  <h4><b><? echo $data_user['nama']; ?> <a href="#" data-toggle="modal"data-target=".link-copy"><i class="mdi mdi-share-variant"></i></a></b></h4>
                  <small><i><? echo $data_user['username']; ?></i></small>
                  <p class="card-description">
                    <? echo nl2br(str_replace(‘‘, ‘‘, htmlspecialchars($data_user['biodata']))); ?>
                  </p>
                  <p><a href="https://<? echo $data_user['website']; ?>" target="_BLANK">
                  <? $website = explode('/', $data_user['website']); 
                  if (!empty($website[0])) {
                      echo $website[0];
                  } else {
                    echo $data_user['website'];
                  }?>
                  </a></p>
                  <hr>
                  <p class="card-description">
                    <ul>
                        <li>Bertanya : <? $all_question = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM question WHERE username = '".$_GET['1']."'")); echo $all_question; ?></li>
                        <li>Menjawab : <? $all_answer = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM answer WHERE username = '".$_GET['1']."'")); echo $all_answer; ?></li>
                        <li>Apresiasi : 0</li>
                    </ul>
                  </p>
                  <hr>
                  <div class="table-responsive col-12">
                    <table class="table">
                      <thead style="text-align: center;">
                        <tr>
                          <th>
                            <a href="https://wa.me/<? echo $data_user['phone']; ?>" target="_blank">WhatsApp</a>
                          </th>
                          <th>
                            <a href="mailto:<? echo $data_user['email']; ?>" target="_blank">Email</a>
                          </th>
                        </tr>
                        </thead>
                    </table>
                    </div>
                </div>
              </div>
            </div>
            
            <div class="col-md-12 results" id="search-list">
            </div>
          </div>
        </div>
        
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script type="text/javascript">
            var start = 0;
            var limit = 5;
            var username = "<? echo $_GET['1']; ?>";
            var reachedMax = false;

            $(window).scroll(function () {
                if ($(window).scrollTop() == $(document).height() - $(window).height())
                    getData();
            });

            $(document).ready(function () {
               getData();
            });

            function getData() {
                if (reachedMax)
                    return;

                $.ajax({
                   url: 'https://hub.telutizen.my.id/dashboard/profile/data.php',
                   method: 'POST',
                    dataType: 'text',
                   data: {
                       getData: 1,
                       start: start,
                       limit: limit,
                       username: username
                   },
                   success: function(response) {
                        if (response == "reachedMax")
                            reachedMax = true;
                        else {
                            start += limit;
                            $(".results").append(response);
                        }
                    }
                });
            }
        </script>
        <script>
        var user = "<? echo $_GET['1']; ?>";
        $(document).ready(function() {
            $("#search").keyup(function() {
            var user = "<? echo $_GET['1']; ?>";
                $.ajax({
                    type: 'POST',
                    url: 'https://hub.telutizen.my.id/dashboard/profile/search.php',
                    data: {
                        user: user,
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
<script type="text/javascript">
	    function copy_to_clipboard(element) {
	        var copyText = document.getElementById(element);
	        copyText.select();
	        document.execCommand("copy");
	        Swal.fire({
              position: 'center',
              icon: 'success',
              title: 'Link Copied',
              showConfirmButton: false,
              timer: 1500
            })
	    }
</script>
<?php
include("../lib/profile.php");
include("../lib/share.php");
require("../lib/footer.php");
?>