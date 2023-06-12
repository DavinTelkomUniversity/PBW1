        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2023.  <? echo $namaweb; ?> by <a href="https://www.instagram.com/qwertym_developer" target="_blank">Qwertym</a></span>
          </div>
        </footer> 
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>   
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  
  <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.navbar-bottom {
  overflow: hidden;
  background-color: #FFFFFF;
  position: fixed;
  bottom: 0;
  width: 100%;
}

.navbar-bottom a:hover {
  background: #F2F2F2;
  color: black;
}

.navbar-bottom a.active {
  background-color: #E3E5E3;
  color: white;
}

.main {
  padding: 16px;
  margin-bottom: 30px;
}
.navbar-bottom .navbar-bottom .navbar-center {
        background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='30' height='30' viewBox='0 0 30 30'%3e%3cpath stroke='white' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
    }
    a.navbar-bottom,
    .navbar-bottom a {
        color: black !important;
    }
    
@media screen and (min-width:650px) {
        .navbar-bottom {
        display:none;
    }
}
</style>
  
<div class="navbar-bottom navbar">
    
    <div class="nav-item">
        <a href="<? echo $url; ?>dashboard" class="nav-link"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-house" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M2 13.5V7h1v6.5a.5.5 0 0 0 .5.5h9a.5.5 0 0 0 .5-.5V7h1v6.5a1.5 1.5 0 0 1-1.5 1.5h-9A1.5 1.5 0 0 1 2 13.5zm11-11V6l-2-2V2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5z"/>
  <path fill-rule="evenodd" d="M7.293 1.5a1 1 0 0 1 1.414 0l6.647 6.646a.5.5 0 0 1-.708.708L8 2.207 1.354 8.854a.5.5 0 1 1-.708-.708L7.293 1.5z"/>
</svg></a>
      </div>
      <div class="nav-item">
        <a href="<? echo $url; ?>dashboard/tags" class="nav-link"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
  <path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
</svg></a>
      </div>
      <div class="nav-item">
        <a href="<? echo $url; ?>dashboard/question" class="nav-link"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-plus-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path fill-rule="evenodd" d="M14 1H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
  <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
</svg></a>
      </div>
      <div class="nav-item">
        <a href="<? echo $url; ?>c/<? echo $data_account['username']; ?>" class="nav-link"><svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
  <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"/>
  <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
  <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
</svg></a>
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
                    getNotification();
            });

            $(document).ready(function () {
               getNotification();
            });

            function getNotification() {
                if (reachedMax)
                    return;

                $.ajax({
                   url: 'https://hub.telutizen.my.id/dashboard/notification/bar.php',
                   method: 'POST',
                    dataType: 'text',
                   data: {
                       getNotification: 1,
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
  <script type='text/javascript'>
  $('img').bind('contextmenu', function(e){
      return false;
  });
  </script>
  <!-- plugins:js -->
  <script src="<? echo $url; ?>dashboard/assets/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="<? echo $url; ?>dashboard/assets/js/off-canvas.js"></script>
  <script src="<? echo $url; ?>dashboard/assets/js/template.js"></script>
  <script src="<? echo $url; ?>dashboard/assets/js/settings.js"></script>
  <!-- endinject -->
</body>

</html>