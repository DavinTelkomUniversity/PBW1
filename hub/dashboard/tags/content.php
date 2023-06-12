<?
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
}
mysqli_query($cf, "UPDATE tags SET visit = visit+1 WHERE code = '".$_GET['1']."' AND target = '".$_GET['2']."'");
?>
      <div class="main-panel">
        <div class="content-wrapper" id="search-list">
          <div class="row">
            
            <div class="col-md-12 results">
            </div>
          </div>
        </div>
        
        <script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
        <script type="text/javascript">
            var start = 0;
            var limit = 5;
            var code = "<? echo $_GET['1']; ?>";
            var target = "<? echo $_GET['2']; ?>";
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
                   url: 'https://hub.telutizen.my.id/dashboard/tags/content-data.php',
                   method: 'POST',
                    dataType: 'text',
                   data: {
                       getData: 1,
                       start: start,
                       limit: limit,
                       code: code,
                       target: target
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
            var code = "<? echo $_GET['1']; ?>";
                $.ajax({
                    type: 'POST',
                    url: 'https://hub.telutizen.my.id/dashboard/tags/content-search.php',
                    data: {
                        code: code,
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