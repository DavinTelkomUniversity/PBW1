<?php
require("../cf.php");
$page = "about";
require("lib/include/header.php");
?>

    <!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container">
            <h1 class="display-3 mb-4 animated slideInDown">About</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">About</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->
    
    <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-4 align-items-end mb-4">
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                    <img class="img-fluid rounded" src="img/favicon.png">
                </div>
                <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                    <p class="d-inline-block border rounded text-primary fw-semi-bold py-1 px-3">Tentang Kami</p>
                    <h1 class="display-5 mb-4">Apa itu <? echo $namaweb; ?>?</h1>
                    <p class="mb-4">Platform untuk tanya jawab antara pengguna atau mahasiswa.
                    </p>
                    <div class="border rounded p-4">
                        <nav>
                            <div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
                                <button class="nav-link fw-semi-bold active" id="nav-story-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-story" type="button" role="tab" aria-controls="nav-story"
                                    aria-selected="true">Bertanya</button>
                                <button class="nav-link fw-semi-bold" id="nav-mission-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-mission" type="button" role="tab" aria-controls="nav-mission"
                                    aria-selected="false">Menjawab</button>
                                <button class="nav-link fw-semi-bold" id="nav-vision-tab" data-bs-toggle="tab"
                                    data-bs-target="#nav-vision" type="button" role="tab" aria-controls="nav-vision"
                                    aria-selected="false">Validasi Jawaban</button>
                            </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-story" role="tabpanel"
                                aria-labelledby="nav-story-tab">
                                <p>Seluruh Telutizen dapat memberikan pertanyaan sesuai yang mereka ingin tanyakan.</p>
                                <p class="mb-0">Gunakan tags yang telah dibuat sesama pengguna, silahkan gunakan sesuai topik.</p>
                            </div>
                            <div class="tab-pane fade" id="nav-mission" role="tabpanel"
                                aria-labelledby="nav-mission-tab">
                                <p>Seluruh Telutizen dapat menjawab pertanyaan manapun.</p>
                                <p class="mb-0">Forum bersifat terbuka jadi seluruh warga Telutizen dapat menjawab.</p>
                            </div> 
                            <div class="tab-pane fade" id="nav-vision" role="tabpanel" aria-labelledby="nav-vision-tab">
                                <p>Nilai jawaban pengguna lainnya untuk memvalidasi jawaban mereka dengan cara sukai jawaban.</p>
                                <p class="mb-0">Kita bisa menilai jawaban yang terpercaya dengan sukai yang paling banyak.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--<div class="border rounded p-4 wow fadeInUp" data-wow-delay="0.1s">-->
            <!--    <div class="row g-4">-->
            <!--        <div class="col-lg-4 wow fadeIn" data-wow-delay="0.1s">-->
            <!--            <div class="h-100">-->
            <!--                <div class="d-flex">-->
            <!--                    <div class="flex-shrink-0 btn-lg-square rounded-circle bg-primary">-->
            <!--                        <i class="fa fa-times text-white"></i>-->
            <!--                    </div>-->
            <!--                    <div class="ps-3">-->
            <!--                        <h4>No Hidden Cost</h4>-->
            <!--                        <span>Clita erat ipsum lorem sit sed stet duo justo</span>-->
            <!--                    </div>-->
            <!--                    <div class="border-end d-none d-lg-block"></div>-->
            <!--                </div>-->
            <!--                <div class="border-bottom mt-4 d-block d-lg-none"></div>-->
            <!--            </div>-->
            <!--        </div>-->
            <!--        <div class="col-lg-4 wow fadeIn" data-wow-delay="0.3s">-->
            <!--            <div class="h-100">-->
            <!--                <div class="d-flex">-->
            <!--                    <div class="flex-shrink-0 btn-lg-square rounded-circle bg-primary">-->
            <!--                        <i class="fa fa-users text-white"></i>-->
            <!--                    </div>-->
            <!--                    <div class="ps-3">-->
            <!--                        <h4>Dedicated Team</h4>-->
            <!--                        <span>Clita erat ipsum lorem sit sed stet duo justo</span>-->
            <!--                    </div>-->
            <!--                    <div class="border-end d-none d-lg-block"></div>-->
            <!--                </div>-->
            <!--                <div class="border-bottom mt-4 d-block d-lg-none"></div>-->
            <!--            </div>-->
            <!--        </div>-->
            <!--        <div class="col-lg-4 wow fadeIn" data-wow-delay="0.5s">-->
            <!--            <div class="h-100">-->
            <!--                <div class="d-flex">-->
            <!--                    <div class="flex-shrink-0 btn-lg-square rounded-circle bg-primary">-->
            <!--                        <i class="fa fa-phone text-white"></i>-->
            <!--                    </div>-->
            <!--                    <div class="ps-3">-->
            <!--                        <h4>24/7 Available</h4>-->
            <!--                        <span>Clita erat ipsum lorem sit sed stet duo justo</span>-->
            <!--                    </div>-->
            <!--                </div>-->
            <!--            </div>-->
            <!--        </div>-->
            <!--    </div>-->
            <!--</div>-->
        </div>
    </div>
    <!-- About End -->


    <!-- Facts Start -->
    <div class="container-fluid facts my-5 py-5">
        <div class="container py-5">
            <div class="row g-5">
                <div class="col-sm-6 col-lg-4 text-center wow fadeIn" data-wow-delay="0.1s">
                    <i class="fa fa-users fa-3x text-white mb-3"></i>
                    <h1 class="display-4 text-white" data-toggle="counter-up">
                    <? $all_account = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM account")); echo $all_account; ?></h1>
                    <span class="fs-5 text-white">Semua Pengguna</span>
                    <hr class="bg-white w-25 mx-auto mb-0">
                </div>
                <div class="col-sm-6 col-lg-4 text-center wow fadeIn" data-wow-delay="0.3s">
                    <i class="fa fa-check fa-3x text-white mb-3"></i>
                    <h1 class="display-4 text-white" data-toggle="counter-up">
                    <? $all_question = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM question")); echo $all_question; ?></h1>
                    <span class="fs-5 text-white">Semua Pertanyaan</span>
                    <hr class="bg-white w-25 mx-auto mb-0">
                </div>
                <div class="col-sm-6 col-lg-4 text-center wow fadeIn" data-wow-delay="0.5s">
                    <i class="fa fa-users-cog fa-3x text-white mb-3"></i>
                    <h1 class="display-4 text-white" data-toggle="counter-up">
                    <? $all_tags = mysqli_num_rows(mysqli_query($cf, "SELECT * FROM tags")); echo $all_tags; ?></h1>
                    <span class="fs-5 text-white">Semua Tags</span>
                    <hr class="bg-white w-25 mx-auto mb-0">
                </div>
            </div>
        </div>
    </div>
    <!-- Facts End -->


    <!-- Features Start -->
    <!--<div class="container-xxl feature py-5">-->
    <!--    <div class="container">-->
    <!--        <div class="row g-5 align-items-center">-->
    <!--            <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">-->
    <!--                <p class="d-inline-block border rounded text-primary fw-semi-bold py-1 px-3">Why Choosing Us!</p>-->
    <!--                <h1 class="display-5 mb-4">Few Reasons Why People Choosing Us!</h1>-->
    <!--                <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et-->
    <!--                    eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet-->
    <!--                </p>-->
    <!--                <a class="btn btn-primary py-3 px-5" href="">Explore More</a>-->
    <!--            </div>-->
    <!--            <div class="col-lg-6">-->
    <!--                <div class="row g-4 align-items-center">-->
    <!--                    <div class="col-md-6">-->
    <!--                        <div class="row g-4">-->
    <!--                            <div class="col-12 wow fadeIn" data-wow-delay="0.3s">-->
    <!--                                <div class="feature-box border rounded p-4">-->
    <!--                                    <i class="fa fa-check fa-3x text-primary mb-3"></i>-->
    <!--                                    <h4 class="mb-3">Fast Executions</h4>-->
    <!--                                    <p class="mb-3">Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo-->
    <!--                                        justo erat amet</p>-->
    <!--                                    <a class="fw-semi-bold" href="">Read More <i-->
    <!--                                            class="fa fa-arrow-right ms-1"></i></a>-->
    <!--                                </div>-->
    <!--                            </div>-->
    <!--                            <div class="col-12 wow fadeIn" data-wow-delay="0.5s">-->
    <!--                                <div class="feature-box border rounded p-4">-->
    <!--                                    <i class="fa fa-check fa-3x text-primary mb-3"></i>-->
    <!--                                    <h4 class="mb-3">Guide & Support</h4>-->
    <!--                                    <p class="mb-3">Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo-->
    <!--                                        justo erat amet</p>-->
    <!--                                    <a class="fw-semi-bold" href="">Read More <i-->
    <!--                                            class="fa fa-arrow-right ms-1"></i></a>-->
    <!--                                </div>-->
    <!--                            </div>-->
    <!--                        </div>-->
    <!--                    </div>-->
    <!--                    <div class="col-md-6 wow fadeIn" data-wow-delay="0.7s">-->
    <!--                        <div class="feature-box border rounded p-4">-->
    <!--                            <i class="fa fa-check fa-3x text-primary mb-3"></i>-->
    <!--                            <h4 class="mb-3">Financial Secure</h4>-->
    <!--                            <p class="mb-3">Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo-->
    <!--                                erat amet</p>-->
    <!--                            <a class="fw-semi-bold" href="">Read More <i class="fa fa-arrow-right ms-1"></i></a>-->
    <!--                        </div>-->
    <!--                    </div>-->
    <!--                </div>-->
    <!--            </div>-->
    <!--        </div>-->
    <!--    </div>-->
    <!--</div>-->
    <!-- Features End -->


    <!-- Service Start -->
    <div class="container-xxl service py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <p class="d-inline-block border rounded text-primary fw-semi-bold py-1 px-3">Tujuan</p>
                <h1 class="display-5 mb-5">Untuk apa dan untuk siapa <? echo $namaweb; ?> dibuat?</h1>
            </div>
            <div class="row g-4 wow fadeInUp" data-wow-delay="0.3s">
                <div class="col-lg-4">
                    <div class="nav nav-pills d-flex justify-content-between w-100 h-100 me-4">
                        <button class="nav-link w-100 d-flex align-items-center text-start border p-4 mb-4 active"
                            data-bs-toggle="pill" data-bs-target="#tab-pane-1" type="button">
                            <h5 class="m-0"><i class="fa fa-bars text-primary me-3"></i>Mempermudah Dalam Bertanya</h5>
                        </button>
                        <button class="nav-link w-100 d-flex align-items-center text-start border p-4 mb-4"
                            data-bs-toggle="pill" data-bs-target="#tab-pane-2" type="button">
                            <h5 class="m-0"><i class="fa fa-bars text-primary me-3"></i>Interaksi Antar Prodi</h5>
                        </button>
                        <button class="nav-link w-100 d-flex align-items-center text-start border p-4 mb-4"
                            data-bs-toggle="pill" data-bs-target="#tab-pane-3" type="button">
                            <h5 class="m-0"><i class="fa fa-bars text-primary me-3"></i>Mendapat Jawaban Terpercaya</h5>
                        </button>
                        <button class="nav-link w-100 d-flex align-items-center text-start border p-4 mb-0"
                            data-bs-toggle="pill" data-bs-target="#tab-pane-4" type="button">
                            <h5 class="m-0"><i class="fa fa-bars text-primary me-3"></i>Mahasiswa Telkom University</h5>
                        </button>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="tab-content w-100">
                        <div class="tab-pane fade show active" id="tab-pane-1">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <img class="position-absolute rounded w-100 h-100" src="favicon.png"
                                            style="object-fit: cover;" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="mb-4">Mempermudah Dalam Bertanya</h3>
                                    <p class="mb-4">Seluruh pengguna yaitu mahasiswa Telkom University dapat memberikan pertanyaan tanpa batasan apapun, dibekali attitude dalam bertanya.</p>
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <a href="" class="btn btn-primary py-3 px-5 mt-3">Read More</a>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-pane-2">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <img class="position-absolute rounded w-100 h-100" src="favicon.png"
                                            style="object-fit: cover;" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="mb-4">Interaksi Antar Prodi</h3>
                                    <p class="mb-4">Pengetahuan tidak dibatasi oleh prodi bukan? Apa non teknik sudah tentu tidak bisa pemograman? Disini kita dilatih untuk saling berbagi pengetahuan sesama mahasiswa tanpa batasan prodi, dimana pasti talent diluar prodi mereka pasti sangat luas.</p>
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <a href="" class="btn btn-primary py-3 px-5 mt-3">Read More</a>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-pane-3">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <img class="position-absolute rounded w-100 h-100" src="favicon.png"
                                            style="object-fit: cover;" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="mb-4">Mendapat Jawaban Terpercaya</h3>
                                    <p class="mb-4">Kita bisa melihat jawaban jawaban para Telutizen yang lebih luas cangkupannya dibanding sesama prodi, dan kita bisa melihat seberapa ia mendapat suka dalam jawabannya, karna kita bisa menyukai jawaban sesama pengguna, jadi kita bisa melihat jawaban yang paling banyak suka itu paling terpercaya.</p>
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <a href="" class="btn btn-primary py-3 px-5 mt-3">Read More</a>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="tab-pane-4">
                            <div class="row g-4">
                                <div class="col-md-6" style="min-height: 350px;">
                                    <div class="position-relative h-100">
                                        <img class="position-absolute rounded w-100 h-100" src="favicon.png"
                                            style="object-fit: cover;" alt="">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h3 class="mb-4">Mahasiswa Telkom University</h3>
                                    <p class="mb-4">Pengguna ini dibatasi hanya untuk mahasiswa Telkom University, dimana kita dapat menggunakan akun Google berekstensi telkomuniversity.ac.id untuk engakses kedalamnya.</p>
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <!--<p><i class="fa fa-check text-primary me-3"></i>-</p>-->
                                    <a href="" class="btn btn-primary py-3 px-5 mt-3">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->


    <!-- Projects Start -->
    <!--<div class="container-xxl py-5">-->
    <!--    <div class="container">-->
    <!--        <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">-->
    <!--            <p class="d-inline-block border rounded text-primary fw-semi-bold py-1 px-3">Our Projects</p>-->
    <!--            <h1 class="display-5 mb-5">We Have Completed Latest Projects</h1>-->
    <!--        </div>-->
    <!--        <div class="owl-carousel project-carousel wow fadeInUp" data-wow-delay="0.3s">-->
    <!--            <div class="project-item pe-5 pb-5">-->
    <!--                <div class="project-img mb-3">-->
    <!--                    <img class="img-fluid rounded" src="img/service-1.jpg" alt="">-->
    <!--                    <a href=""><i class="fa fa-link fa-3x text-primary"></i></a>-->
    <!--                </div>-->
    <!--                <div class="project-title">-->
    <!--                    <h4 class="mb-0">Financial Planning</h4>-->
    <!--                </div>-->
    <!--            </div>-->
    <!--            <div class="project-item pe-5 pb-5">-->
    <!--                <div class="project-img mb-3">-->
    <!--                    <img class="img-fluid rounded" src="img/service-2.jpg" alt="">-->
    <!--                    <a href=""><i class="fa fa-link fa-3x text-primary"></i></a>-->
    <!--                </div>-->
    <!--                <div class="project-title">-->
    <!--                    <h4 class="mb-0">Cash Investment</h4>-->
    <!--                </div>-->
    <!--            </div>-->
    <!--            <div class="project-item pe-5 pb-5">-->
    <!--                <div class="project-img mb-3">-->
    <!--                    <img class="img-fluid rounded" src="img/service-3.jpg" alt="">-->
    <!--                    <a href=""><i class="fa fa-link fa-3x text-primary"></i></a>-->
    <!--                </div>-->
    <!--                <div class="project-title">-->
    <!--                    <h4 class="mb-0">Financial Consultancy</h4>-->
    <!--                </div>-->
    <!--            </div>-->
    <!--            <div class="project-item pe-5 pb-5">-->
    <!--                <div class="project-img mb-3">-->
    <!--                    <img class="img-fluid rounded" src="img/service-4.jpg" alt="">-->
    <!--                    <a href=""><i class="fa fa-link fa-3x text-primary"></i></a>-->
    <!--                </div>-->
    <!--                <div class="project-title">-->
    <!--                    <h4 class="mb-0">Business Loans</h4>-->
    <!--                </div>-->
    <!--            </div>-->
    <!--        </div>-->
    <!--    </div>-->
    <!--</div>-->
    <!-- Projects End -->


    <!-- Question Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center mx-auto wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                <p class="d-inline-block border rounded text-primary fw-semi-bold py-1 px-3">Pertanyaan</p>
                <h1 class="display-5 mb-5">Mari lihat mereka!</h1>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.3s">
                <?
                $check_question = mysqli_query($cf, "SELECT * FROM account, question WHERE account.username = question.username ORDER BY RAND() LIMIT 5");
        		while($data_question = $check_question->fetch_array()) {
        		?>
                <div class="testimonial-item">
                    <a href="<? echo $url; ?>q/<? echo $data_question['code']; ?>/<? echo $data_question['target']; ?>">
                    <div class="testimonial-text border rounded p-4 pt-5 mb-5" style="color: black;">
                        <div class="btn-square bg-white border rounded-circle">
                            <i class="fa fa-quote-right fa-2x text-primary"></i>
                        </div>
                        <? echo $data_question['content']; ?>
                    </div>
                    </a>
                    <img class="rounded-circle mb-3" src="<? echo $data_question['profile']; ?>" alt="">
                    <h4><? echo $data_question['nama']; ?></h4>
                    <span><? echo $data_question['username']; ?></span>
                </div>
                <? } ?>
            </div>
        </div>
    </div>
    <!-- Question End -->
<?php
require("lib/include/footer.php");
?>