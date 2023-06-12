<?php
require("../cf.php");
$page = "teams";
require("lib/include/header.php");
?>
<!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container">
            <h1 class="display-3 mb-4 animated slideInDown">Teams</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Teams</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Team Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <p class="d-inline-block border rounded text-primary fw-semi-bold py-1 px-3">Our Team</p>
                <h1 class="display-5 mb-5">Exclusive Team</h1>
            </div>
            <div class="row g-4">
                <?
                $check_teams = mysqli_query($cf, "SELECT * FROM account,teams WHERE teams.username = account.username ORDER BY teams.id ASC");
        		while($data_teams = $check_teams->fetch_array()) {
        		?>
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item">
                        <img class="img-fluid rounded" src="<? echo $data_teams['foto']; ?>" alt="">
                        <div class="team-text">
                            <h4 class="mb-0"><? echo $data_teams['nama']; ?></h4>
                            <div class="team-social d-flex">
                                <a class="btn btn-square rounded-circle mx-1" target="_BLANK" href="<? echo $data_teams['facebook']; ?>"><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square rounded-circle mx-1" target="_BLANK" href="<? echo $data_teams['twitter']; ?>"><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square rounded-circle mx-1" target="_BLANK" href="<? echo $data_teams['instagram']; ?>"><i class="fab fa-instagram"></i></a>
                                <a class="btn btn-square rounded-circle mx-1" target="_BLANK" href="<? echo $data_teams['linkedin']; ?>"><i class="fab fa-linkedin"></i></a>
                                <a class="btn btn-square rounded-circle mx-1" target="_BLANK" href="<? echo $data_teams['youtube']; ?>"><i class="fab fa-youtube"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <? } ?>
            </div>
        </div>
    </div>
    <!-- Team End -->
<?php
require("lib/include/footer.php");
?>