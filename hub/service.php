<?php
require("../cf.php");
$page = "service";
require("lib/include/header.php");
?>
<!-- Page Header Start -->
    <div class="container-fluid page-header mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div class="container">
            <h1 class="display-3 mb-4 animated slideInDown">Services</h1>
            <nav aria-label="breadcrumb animated slideInDown">
                <ol class="breadcrumb mb-0">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item"><a href="#">Pages</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Services</li>
                </ol>
            </nav>
        </div>
    </div>
    <!-- Page Header End -->


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
    
    
<?php
require("lib/include/footer.php");
?>