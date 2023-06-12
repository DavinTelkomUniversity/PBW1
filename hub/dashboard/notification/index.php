<?php
session_start();
require("../../../cf.php");
require("../lib/header.php");
if (isset($_SESSION['user'])) {
	$sess_username = $_SESSION['user']['username'];
	$check_account = mysqli_query($cf, "SELECT * FROM account WHERE username = '$sess_username'");
	$data_account = mysqli_fetch_assoc($check_account);
	if (mysqli_num_rows($check_account) == 0) {
		header("Location: ".$url."dashboard/auth/logout");
    }
?>
      <div class="main-panel">
        <div class="content-wrapper" id="search-list">
          <div class="row">
            
            <div class="col-md-12 notification">
            </div>
          </div>
        </div>
        
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script type="text/javascript">
            var start = 0;
            var limit = 5;
            var user = "<? echo $data_account['username']; ?>";
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
                       limit: limit,
                       user: user
                   },
                   success: function(response) {
                        if (response == "reachedMax")
                            reachedMax = true;
                        else {
                            start += limit;
                            $(".notification").append(response);
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
                    url: 'https://hub.telutizen.my.id/dashboard/notification/search.php',
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
	include("../lib/footer.php");
} else {
	header("Location: ".$url."dashboard");
}
?>