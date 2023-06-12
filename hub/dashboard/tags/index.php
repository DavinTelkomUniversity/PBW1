<?
session_start();
$page = "tags";
require("../../../cf.php");
require("../lib/header.php");
if (isset($_SESSION['user'])) {
	$sess_username = $_SESSION['user']['username'];
	$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$sess_username'");
	$data_account = mysqli_fetch_assoc($check_account);
	if (mysqli_num_rows($check_account) == 0) {
		header("Location: ".$url."dashboard/auth/logout");
    }
}
?>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script type="text/javascript">
             $(document).ready(function() { 
                 $("#formMhs").submit(function(e) {
                     e.preventDefault();
                     $.ajax({
                         url: 'ajax.php',
                         type: 'post',
                         data: $(this).serialize(), 
                         success: function(data) {               
                         document.getElementById("formMhs").reset();
                      $('#result').html(data);              
                      }
                     });
                 });
             })
        </script>
        
      <div class="main-panel">
        <div class="content-wrapper" id="search-list">
          <div class="row">
            
            <? if (isset($_SESSION['user'])) { ?>
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Buat Tags Baru</h4>
                  <p class="card-description">
                    Buat tags untuk menandai pertanyaanmu agar mudah mencari topiknya.
                  </p>
                  <form class="forms-sample" method="POST" id="formMhs">
                    <div class="form-group">
                      <div id="result"></div>
                      <label for="tags">Nama Tags *</label>
                      <input type="text" id="tags" name="tags" class="form-control" placeholder="Isi dengan nama Tags" required>
                      <input type="text" id="username" name="username" value="<?php echo $sess_username; ?>" hidden>
                    </div>
                    <button type="submit" name="submit" class="btn btn-primary mr-2">Buat</button>
                  </form>
                </div>
              </div>
            </div>
            <? } ?>
            
            <div class="col-md-12 results">
            </div>
          </div>
        </div>
        
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script type="text/javascript">
            var start = 0;
            var limit = 5;
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
                   url: 'data.php',
                   method: 'POST',
                    dataType: 'text',
                   data: {
                       getData: 1,
                       start: start,
                       limit: limit
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
        $(document).ready(function() {
            $("#search").keyup(function() {
                $.ajax({
                    type: 'POST',
                    url: 'https://hub.telutizen.my.id/dashboard/tags/search.php',
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
<?
	include("../lib/footer.php");
?>