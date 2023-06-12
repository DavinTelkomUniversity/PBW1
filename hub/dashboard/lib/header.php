<!DOCTYPE html>
<html lang="en">
<!--
         _____          __        __  _____   ___    __
        |  __ \     /\  \ \      / / |_   _| |   \   | |
        | |  | |   /  \  \ \    / /    | |   | |\ \  | |
        | |  | |  / /\ \  \ \  / /     | |   | | \ \ | |
        | |__| | / /__\ \  \ \/ /     _| |_  | |  \ \| |
        |_____/ /_/    \_\  \__/     |_____| |_|   \___|
        
    DEVELOPED BY DAVIN WARDANA (DAVIN.ID / DAVINWARDANA.COM)
    
-->
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title><? echo $namaweb; ?></title>
  <meta http-equiv="Cache-control" content="public">
  <!-- plugins:css -->
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/vendors/feather/feather.css">
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/vendors/mdi/css/materialdesignicons.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="<? echo $url; ?>dashboard/assets/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="<? echo $url; ?>dashboard/favicon.ico" />
  <script type="text/javascript" src="<? echo $url; ?>dashboard/assets/js/sweetalert2.all.min.js"></script>
</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="<? echo $url; ?>dashboard"><img src="<? echo $url; ?>dashboard/favicon.ico" class="mr-2" alt="logo"/> <? echo $namaweb; ?></a>
        <a class="navbar-brand brand-logo-mini" href="<? echo $url; ?>dashboard"><img src="<? echo $url; ?>dashboard/favicon.ico" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
        <!--<form action="<? echo $url; ?>dashboard/profile/post">-->
        <ul class="navbar-nav mr-lg-2">
          <li class="nav-item nav-search">
            <div class="input-group">
              <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                <span class="input-group-text">
                  <i class="icon-search"></i>
                </span>
              </div>
              <input type="text" id="search" class="form-control" id="navbar-search-input" placeholder="Cari" aria-label="search" aria-describedby="search">
            </div>
          </li>
        </ul>
        <!--</form>-->
        <ul class="navbar-nav navbar-nav-right">
        <? if (isset($_SESSION['user'])) { ?>
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="icon-bell mx-0"></i>
              <span class="count"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header"><a style="color:#000000;" href="<? echo $url; ?>dashboard/notification">Notifikasi</a></p>
              <br><hr>
              <div style="height:250px;overflow:auto;">
              <div class="notification"></div>
              </div>
            </div>
          </li>
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="<? echo $data_account['profile']; ?>" alt="profile"/>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                <a href="<? echo $url; ?>c/<? echo $data_account['username']; ?>" class="dropdown-item">
                <i class="ti-user text-primary"></i>
                Profil
              </a>
              <a href="<? echo $url; ?>dashboard/settings" class="dropdown-item">
                <i class="ti-settings text-primary"></i>
                Pengaturan
              </a>
              <a href="<? echo $url; ?>dashboard/auth/logout" class="dropdown-item">
                <i class="ti-power-off text-primary"></i>
                Keluar
              </a>
            </div>
          </li>
          <? } ?>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
          
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
        <? if (isset($_SESSION['user'])) { ?>
          <li class="nav-item <? if ($page == "dashboard") { ?>active<? } ?>">
            <a class="nav-link" href="<? echo $url; ?>dashboard">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">Halaman Utama</span>
            </a>
          </li>
          <li class="nav-item <? if ($page == "question" OR $page == "tags") { ?>active<? } ?>">
            <a class="nav-link" data-toggle="collapse" href="#fitur" aria-expanded="false" aria-controls="fitur">
              <i class="icon-layout menu-icon"></i>
              <span class="menu-title">Fitur</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="fitur">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="<? echo $url; ?>dashboard/question">Pertanyaan</a></li>
                <li class="nav-item"> <a class="nav-link" href="<? echo $url; ?>dashboard/tags">Tags</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<? echo $url; ?>dashboard/file/TeluHub.apk">
              <i class="icon-paper menu-icon"></i>
              <span class="menu-title">Aplikasi</span>
            </a>
          </li>
        <? } else { ?>
          <li class="nav-item">
            <a class="nav-link" href="<? echo $url; ?>dashboard/auth/signin">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">Sign In</span>
            </a>
          </li>
        <? } ?>
        </ul>
      </nav>