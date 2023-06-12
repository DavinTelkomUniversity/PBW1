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
    <meta charset="utf-8">
    <title><? echo $namaweb; ?></title>
    <meta http-equiv="Cache-control" content="public">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
  <link rel="shortcut icon" href="favicon.ico" />

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;500&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner"
        class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" role="status" style="width: 3rem; height: 3rem;"></div>
    </div>
    <!-- Spinner End -->


    <!-- Navbar Start -->
    <div class="container-fluid fixed-top px-0 wow fadeIn" data-wow-delay="0.1s">
        <div class="top-bar row gx-0 align-items-center d-none d-lg-flex">
            <div class="col-lg-6 px-5 text-start">
                <small><i class="fa fa-map-marker-alt text-primary me-2"></i>Telkom University</small>
                <small class="ms-4"><i class="fa fa-clock text-primary me-2"></i>00.00 am - 23.59 pm</small>
            </div>
            <div class="col-lg-6 px-5 text-end">
                <small><i class="fa fa-envelope text-primary me-2"></i>hub@telutizen.my.id</small>
                <small class="ms-4"><i class="fa fa-phone-alt text-primary me-2"></i>+62 851-5649-36692</small>
            </div>
        </div>

        <nav class="navbar navbar-expand-lg navbar-light py-lg-0 px-lg-5 wow fadeIn" data-wow-delay="0.1s">
            <a href="<? echo $url; ?><? if (isset($_SESSION['user'])) { ?>?mode=tamu<? } ?>" class="navbar-brand ms-4 ms-lg-0">
                <h1 class="display-5 text-primary m-0"><? echo $namaweb; ?></h1>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse"
                data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="<? echo $url; ?><? if (!isset($_SESSION['user'])) { ?>?mode=tamu<? } ?>" class="nav-item nav-link <? if ($page == "home") { ?>active<? } ?>">Home</a>
                    <a href="<? echo $url; ?>about" class="nav-item nav-link <? if ($page == "about") { ?>active<? } ?>">About</a>
                    <a href="<? echo $url; ?>service" class="nav-item nav-link <? if ($page == "service") { ?>active<? } ?>">Services</a>
                    <!--<div class="nav-item dropdown">-->
                    <!--    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>-->
                    <!--    <div class="dropdown-menu border-light m-0">-->
                    <!--        <a href="<? echo $url; ?>project" class="dropdown-item">Projects</a>-->
                    <!--        <a href="<? echo $url; ?>feature" class="dropdown-item">Features</a>-->
                    <!--        <a href="<? echo $url; ?>team" class="dropdown-item">Team Member</a>-->
                    <!--        <a href="<? echo $url; ?>testimonial" class="dropdown-item">Testimonial</a>-->
                    <!--        <a href="<? echo $url; ?>404" class="dropdown-item">404 Page</a>-->
                    <!--    </div>-->
                    <!--</div>-->
                    <a href="<? echo $url; ?>contact" class="nav-item nav-link <? if ($page == "contact") { ?>active<? } ?>">Contact</a>
                    <a href="<? echo $url; ?>teams" class="nav-item nav-link <? if ($page == "teams") { ?>active<? } ?>">Teams</a>
                </div>
                <div class="d-none d-lg-flex ms-2">
                    <a class="btn btn-light btn-sm-square rounded-circle ms-3" href="https://instagram.com/qwertym_developer" target="_BLANK">
                        <small class="fab fa-instagram text-primary"></small>
                    </a>
                    <a class="btn btn-light btn-sm-square rounded-circle ms-3" href="" target="_BLANK">
                        <small class="fab fa-twitter text-primary"></small>
                    </a>
                    <a class="btn btn-light btn-sm-square rounded-circle ms-3" href="" target="_BLANK">
                        <small class="fab fa-linkedin-in text-primary"></small>
                    </a>
                </div>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->