<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title><?= strtoupper($this->db->get("profile")->row()->nama); ?> | OFFICIAL</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="<?= base_url('assets/images/' . $this->db->get("profile")->row()->logo) ?>" rel="icon">
    <link href="<?= base_url('assets/images/' . $this->db->get("profile")->row()->logo) ?>" rel="apple-touch-icon">

    <!-- Vendor CSS Files -->
    <link href="<?= base_url("assets/vendors/aos/aos.css") ?>" rel="stylesheet">
    <link href="<?= base_url("assets/vendors/bootstrap/css/bootstrap.min.css") ?>" rel="stylesheet">
    <link href="<?= base_url("assets/vendors/bootstrap-icons/bootstrap-icons.css") ?>" rel="stylesheet">
    <link href="<?= base_url("assets/vendors/boxicons/css/boxicons.min.css") ?>" rel="stylesheet">
    <link href="<?= base_url("assets/vendors/glightbox/css/glightbox.min.css") ?>" rel="stylesheet">
    <link href="<?= base_url("assets/vendors/swiper/swiper-bundle.min.css") ?>" rel="stylesheet">
    <link href="<?= base_url("assets/vendors/fontawesome/css/all.min.css") ?>" rel="stylesheet">
    <link rel='stylesheet' id='thickbox-css' href='<?= base_url("assets/js/thickbox/thickbox.css") ?>' type='text/css' media='all' />
    <link rel='stylesheet' id='usquare-css-css' href='<?= base_url("assets/vendors/sliders/usquare/css/frontend/usquare_style.css") ?>' type='text/css' media='all' />
    <link rel='stylesheet' id='responsive-css' href='<?= base_url("assets/css/responsive.css") ?>' type='text/css' media='all' />
    <link rel='stylesheet' id='polaroid-slider-css' href='<?= base_url("assets/vendors/sliders/polaroid/css/polaroid.css") ?>' type='text/css' media='all' />
    <link rel='stylesheet' id='ahortcodes-css' href='<?= base_url("assets/css/shortcodes.css") ?>' type='text/css' media='all' />
    <link rel='stylesheet' id='contact-form-css' href='<?= base_url("assets/css/contact_form.cs") ?>s' type='text/css' media='all' />
    <link rel='stylesheet' id='custom-css' href='<?= base_url("assets/css/custom.css") ?>' type='text/css' media='all' />

    <!-- Template Main CSS File -->
    <link href="<?= base_url("assets/css/adminlte.css") ?>" rel="stylesheet">
    <link href="<?= base_url("assets/css/styleb.css") ?>" rel="stylesheet">

    <script type='text/javascript' src='<?= base_url("assets/js/jquery/jquery.js") ?>'></script>
</head>

<body>
    <section id="topbar" class="d-flex align-items-center">
        <div class="container d-flex justify-content-center justify-content-md-between">
            <div class="contact-info d-flex align-items-center">
                <?= $this->db->get("profile")->row()->visi; ?>
            </div>
            <div class="social-links d-none d-md-flex align-items-center">
                <a href="<?= base_url("auth") ?>"><i class="bi bi-lock"></i></a>
            </div>
        </div>
    </section>
    <header id="header" class="d-flex align-items-center">
        <div class="container d-flex align-items-center justify-content-between">

            <h1 class="logo"><a href="<?= base_url() ?>"><?= strtoupper($this->db->get("profile")->row()->nama) ?></a></h1>
            <!-- Uncomment below if you prefer to use an image logo -->
            <!-- <a href="index.html" class="logo"><img src="assets/images/mycomp.png" alt=""></a> -->

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto" href="<?= base_url(); ?>">BERANDA</a></li>
                    <li class="dropdown"><a href="#"><span>PROFIL</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="<?= base_url("sejarah") ?>">SEJARAH</a></li>
                            <li><a href="<?= base_url("visi") ?>">VISI DAN MISI</a></li>
                            <!-- <li><a href="<?= base_url("lambang") ?>">LAMBANG DAERAH</a></li> -->
                            <li><a href="<?= base_url("struktur") ?>">STRUKTUR ORGANISASI</a></li>
                            <!-- <li><a href="<?= base_url("opd") ?>">OPD</a></li> -->
                        </ul>
                    </li>
                    <li class="dropdown"><a href="#"><span>PUBLIKASI</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="<?= base_url("berita"); ?>">BERITA</a></li>
                            <li><a href="<?= base_url("pengumuman"); ?>">PENGUMUMAN</a></li>
                            <li><a href="<?= base_url("agenda"); ?>">AGENDA</a></li>
                            <li><a href="<?= base_url("gallery"); ?>">GALERI</a></li>
                        </ul>
                    </li>
                    <li><a class="nav-link scrollto" href="<?= base_url() ?>#contact">KONTAK</a></li>
                    <li><a class="nav-link scrollto" href="<?= base_url("wisata") ?>">OBJEK WISATA</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav>
        </div>
    </header>
    <main id="main">
        <section id="sejarah" class="sejarah">
            <div class="container" data-aos="fade-up">
                <div class="row">
                    <div class="col-lg-9 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                        <!-- <h2>BERITA <span class="title-highlight">TERBARU</span></h2> -->
                        <div class="container-fluid">
                            <div class="card card-widget widget-user">
                                <!-- Add the bg color to the header using any of the bg-* classes -->
                                <?php
                                foreach ($profiles as $profile) :
                                ?>
                                    <div class="widget-user-header">
                                        <h3 class="widget-user-username text-right"><?= strtoupper($profile['nama']); ?></h3>
                                        <h5 class="widget-user-desc text-right">Pengumuman</h5>
                                    </div>
                                    <div class="widget-user-image">
                                        <img class="img-circle" src="<?= base_url('assets/images/' . $this->db->get("profile")->row()->logo) ?>" alt="User Avatar">
                                    </div>
                                    <div class="card-footer">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="description-blocks">
                                                    <?php
                                                    foreach ($links as $link) :
                                                    ?>
                                                        <h5 class="description-header"><?= $link['judul']; ?></h5>
                                                        <span class="description-text" style="text-transform:capitalize">
                                                            <small><i>diposting pada <?= date("d M Y, H:m", strtotime($link['tanggal'])) ?></i></small>
                                                        </span>
                                                        <br>
                                                        <br>
                                                        <span class="description-text" style="text-transform:capitalize">
                                                            <?= $link['keterangan']; ?>
                                                        </span>
                                                        <br>
                                                        <br>
                                                        <?php
                                                        $lampiran = $this->db->query("select length(image) as panjang from pengumuman where id='" . $link['id'] . "'")->row()->panjang;
                                                        if ($lampiran > 0) {
                                                        ?>
                                                            <a class="link-danger" href="<?= base_url("assets/images/pengumuman/" . $link['image']) ?>" target="_blank">UNDUH DISINI</a>

                                                    <?php }
                                                    endforeach; ?>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="200">
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col">
                                    <h4>Pengumuman <span class="title-highlight">Terbaru</span></h4>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <?php
                                    $announce = $this->db->query("select * from pengumuman order by tanggal desc limit 0,5")->result_array();
                                    foreach ($announce as $announce) :
                                    ?>
                                        <li class="list-group-item">
                                            <a class="link-dark" href="<?= base_url("pengumuman/detail/" . base64_encode($announce["id"])) ?>">
                                                <span class="fw-bold text-danger">
                                                    <?= date("d", strtotime($announce['tanggal'])); ?>
                                                    <?= $this->myModel->getBulan(date("F", strtotime($announce['tanggal']))); ?>
                                                    <?= date("Y", strtotime($announce['tanggal'])); ?>
                                                </span><br>
                                                <div class="text-truncate">
                                                    <?= $announce['judul']; ?>
                                                </div>
                                            </a>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <h4>Berita <span class="title-highlight">Terbaru</span></h4>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <?php
                                    foreach ($linkberita as $linkb) :
                                    ?>
                                        <li class="list-group-item">
                                            <a class="text-dark" href="<?= base_url("berita/detail/" . base64_encode($linkb['id'])) ?>">
                                                <?= $linkb['judul'] ?>
                                            </a>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            </div>
                            <div class="row mt-4">
                                <div class="col">
                                    <h4>Agenda <span class="title-highlight">Terbaru</span></h4>
                                </div>
                                <ul class="list-group list-group-flush">
                                    <?php
                                    $announce = $this->db->query("select * from agenda order by tanggal desc limit 0,5")->result_array();
                                    foreach ($announce as $announce) :
                                    ?>
                                        <li class="list-group-item">
                                            <a class="link-dark" href="<?= base_url("agenda/detail/" . base64_encode($announce["id"])) ?>">
                                                <span class="fw-bold text-danger">
                                                    <?= date("d", strtotime($announce['tanggal'])); ?>
                                                    <?= $this->myModel->getBulan(date("F", strtotime($announce['tanggal']))); ?>
                                                    <?= date("Y", strtotime($announce['tanggal'])); ?>
                                                </span><br>
                                                <div class="text-truncate">
                                                    <?= $announce['judul']; ?>
                                                </div>
                                            </a>
                                        </li>
                                    <?php endforeach; ?>
                                </ul>
                            </div>
                            <div class="row mt-2">
                                <div class="col">
                                    <h4>Arsip <span class="title-highlight">Berita</span></h4>
                                </div>
                                <small>
                                    <div class="accordion accordion-flush" id="accordionFlushExample">
                                        <?php
                                        $tahun = $this->db->query("select distinct(year(tanggal)) as tahun from berita ORDER BY tanggal desc")->result_array();
                                        $baris = 0;
                                        foreach ($tahun as $tahun) :
                                            $baris++;
                                        ?>
                                            <div class="accordion-item">
                                                <p class="accordion-header" id="flush-headingOne">
                                                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne<?= $baris ?>" aria-expanded="false" aria-controls="flush-collapseOne">
                                                        <span class="text-sm">
                                                            <?= $tahun['tahun']; ?>
                                                        </span>
                                                    </button>
                                                </p>
                                                <div id="flush-collapseOne<?= $baris ?>" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                                    <div class="accordion-body">
                                                        <?php
                                                        $bulan = $this->db->query("select distinct(month(tanggal)) as bulan from berita where year(tanggal)='" . $tahun['tahun'] . "' order by tanggal desc")->result_array();
                                                        foreach ($bulan as $bulan) :
                                                        ?>
                                                            <div class="accordion accordion-flush" id="accordionFlushExamples">
                                                                <div class="accordion-item">
                                                                    <h2 class="accordion-header" id="flush-headingOne">
                                                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne<?= $tahun['tahun'] ?>_<?= $bulan['bulan'] ?>" aria-expanded="false" aria-controls="flush-collapseOne<?= $tahun['tahun'] ?>_<?= $bulan['bulan'] ?>">
                                                                            <span class="text-sm">
                                                                                <?= $this->myModel->getBulan($bulan['bulan']); ?>
                                                                            </span>
                                                                        </button>
                                                                    </h2>
                                                                    <div id="flush-collapseOne<?= $tahun['tahun'] ?>_<?= $bulan['bulan'] ?>" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExamples">
                                                                        <div class="accordion-body">
                                                                            <ul class="list-group list-group-flush">
                                                                                <?php
                                                                                $content = $this->db->query("select * from berita where month(tanggal)='" . $bulan['bulan'] . "' and year(tanggal)='" . $tahun['tahun'] . "' order by tanggal desc")->result_array();
                                                                                foreach ($content as $content) :
                                                                                ?>
                                                                                    <li class="list-group-item">
                                                                                        <a class="text-dark" href="<?= base_url("berita/detail/" . base64_encode($content['id'])) ?>">
                                                                                            <?= $content['judul'] ?>
                                                                                        </a>
                                                                                    </li>
                                                                                <?php endforeach; ?>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        <?php endforeach; ?>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endforeach; ?>
                                    </div>
                                </small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer id="footer">
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 footer-contact">
                        <h3><?= ucwords($this->db->get("profile")->row()->nama); ?></h3>
                        <p>
                            <?= ucwords($this->db->get("profile")->row()->kota); ?><br><br>
                            <strong>Phone:</strong> <?= $this->db->get("profile")->row()->telp; ?><br>
                            <strong>Email:</strong> <?= $this->db->get("profile")->row()->email; ?><br>
                        </p>
                    </div>
                    <div class="col-lg-4 col-md-6 footer-link">
                        <h4>Statistik Website</h4>
                        <small>
                            Pengunjung Hari ini : <?= $pengunjunghariini ?> Orang<br>
                            Total Pengunjung&nbsp;&nbsp;&nbsp;&nbsp;: <?= $totalpengunjung ?> Orang<br>
                            Pengunjung Online : <?= $pengunjungonline ?> Orang<br>
                        </small>
                    </div>
                    <div class="col-lg-4 col-md-6 footer-links">
                        <h4>Kunjungi Juga Media Sosial Kami</h4>
                        <p>Silakan pilih media sosial yang anda ini ikuti</p>
                        <div class="social-links mt-3">
                            <a href="<?= $this->db->get("profile")->row()->twitter ?>" target="_blank" class="twitter"><i class="bx bxl-twitter"></i></a>
                            <a href="<?= $this->db->get("profile")->row()->facebook ?>" class="facebook" target="_blank"><i class="bx bxl-facebook"></i></a>
                            <a href="<?= $this->db->get("profile")->row()->instagram ?>" class="instagram" target="_blank"><i class="bx bxl-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container py-4">
            <div class="copyright">
                &copy; Copyright <strong><span><?= ucwords($this->db->get("profile")->row()->nama); ?></span></strong>. All Rights Reserved
            </div>
            <div class="credits">

            </div>
        </div>
    </footer>

    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <script src="<?= base_url("assets/vendors/purecounter/purecounter_vanilla.js") ?>"></script>
    <script src="<?= base_url("assets/vendors/aos/aos.js") ?>"></script>
    <script src="<?= base_url("assets/vendors/bootstrap/js/bootstrap.bundle.min.js") ?>"></script>
    <script src="<?= base_url("assets/vendors/glightbox/js/glightbox.min.js") ?>"></script>
    <script src="<?= base_url("assets/vendors/isotope-layout/isotope.pkgd.min.js") ?>"></script>
    <script src="<?= base_url("assets/vendors/swiper/swiper-bundle.min.js") ?>"></script>
    <script src="<?= base_url("assets/vendors/waypoints/noframework.waypoints.js") ?>"></script>
    <script src="<?= base_url("assets/vendors/php-email-form/validate.js") ?>"></script>
    <script type='text/javascript' src='<?= base_url("assets/js/comment-reply.min.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/underscore.min.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jquery/jquery.masonry.min.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/vendors/sliders/polaroid/js/jquery.polaroid.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jquery.colorbox-min.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jquery.easing.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jquery.carouFredSel-6.1.0-packed.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jQuery.BlackAndWhite.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jquery.touchSwipe.min.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/vendors/sliders/polaroid/js/jquery.transform-0.8.0.min.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/vendors/sliders/polaroid/js/jquery.preloader.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/responsive.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/mobilemenu.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jquery.superfish.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jquery.placeholder.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/contact.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jquery.tipsy.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jquery.cycle.min.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/shortcodes.js") ?>'></script>
    <script type='text/javascript' src='<?= base_url("assets/js/jquery.custom.js") ?>'></script>

    <!-- Template Main JS File -->
    <script src="<?= base_url("assets/js/main.js") ?>"></script>
</body>

</html>