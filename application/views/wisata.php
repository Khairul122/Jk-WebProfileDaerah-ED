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
    <link href="assets/vendors/aos/aos.css" rel="stylesheet">
    <link href="assets/vendors/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendors/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendors/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendors/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="assets/vendors/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link href="assets/vendors/fontawesome/css/all.min.css" rel="stylesheet">
    <link rel='stylesheet' id='thickbox-css' href='assets/js/thickbox/thickbox.css' type='text/css' media='all' />
    <link rel='stylesheet' id='usquare-css-css' href='assets/vendors/sliders/usquare/css/frontend/usquare_style.css' type='text/css' media='all' />
    <link rel='stylesheet' id='responsive-css' href='assets/css/responsive.css' type='text/css' media='all' />
    <link rel='stylesheet' id='polaroid-slider-css' href='assets/vendors/sliders/polaroid/css/polaroid.css' type='text/css' media='all' />
    <link rel='stylesheet' id='ahortcodes-css' href='assets/css/shortcodes.css' type='text/css' media='all' />
    <link rel='stylesheet' id='contact-form-css' href='assets/css/contact_form.css' type='text/css' media='all' />
    <link rel='stylesheet' id='custom-css' href='assets/css/custom.css' type='text/css' media='all' />

    <!-- Template Main CSS File -->
    <link href="assets/css/adminlte.css" rel="stylesheet">
    <link href="assets/css/styleb.css" rel="stylesheet">
    <script type='text/javascript' src='assets/js/jquery/jquery.js'></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <style>
        #map {
            height: 400px;
        }
    </style>
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
        <section id="wisata">
            <div id="map"></div>

            <!-- Script untuk Leaflet.js dan konfigurasi peta -->
            <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
            <script>
                document.addEventListener('DOMContentLoaded', function() {
                    // Inisialisasi peta Leaflet dengan koordinat terakhir atau Monas jika tidak ada data
                    var map = L.map('map').setView([-1.1751, 100.6650], 12); // Koordinat pertama atau lokasi default

                    // Tambahkan layer OpenStreetMap sebagai latar belakang peta
                    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
                    }).addTo(map);

                    // Tambahkan marker untuk Jembatan Akar
                    L.marker([-1.181808, 100.600919]).addTo(map)
                        .bindPopup('<b>Jembatan Akar</b><br>Jembatan akar adalah jembatan yang terbentuk dari jalinan dua akar pohon yang tumbuh berseberangan dan membentang di atas aliran Batang Bayang di kecamatan Bayang Utara, kabupaten Pesisir Selatan, Sumatera Barat. Dalam bahasa Minang, jembatan yang letaknya sekitar 88 km sebelah selatan kota Padang ini oleh masyarakat dinamakan titian aka. Jembatan ini memiliki panjang 25 meter dan lebar 1,5 meter dengan ketinggian dari permukaan sungai sekitar 10 meter. Pengerjaannya dimulai sejak 1890 di bawah pimpinan seorang tokoh masyarakat bernama Pakiah Sokan yang berasal dari Lubuk Silau. Proses merajut akar menjadi jembatan membutuhkan waktu lebih kurang 26 tahun dan jembatan dapat digunakan pada 1916. Kondisinya semakin lama semakin kuat karena semakin besarnya akar pohon beringin yang membentuknya.');

                    // Tambahkan marker untuk Rumah Nagari Pohon Atas
                    L.marker([-1.148872, 100.671643]).addTo(map)
                        .bindPopup('<b>Rumah Nagari Pohon Atas</b><br>Salah satu destinasi wisata yang terkenal di Nagari Pancuang Taba kecamatan puluik-puluik selatan ini ialah Rumah Pohon yang mendapat julukan Rumah Pohon Negeri di Atas Awan. Julukan tersebut diberikan karena lokasi rumah pohon yang berada di atas perbukitan atau dataran tinggi yang tertutup oleh awan setiap pagi atau sore. Sepanjang perjalanan menuju rumah pohon tersebut, kita akan disuguhkan dengan pemandangan alam yang sangat indah. Mulai dari sawah yang terbentang luas nan hijau, aliran sungai yang jernih, hingga beberapa permukiman warga.');

                    // Tambahkan marker untuk Air Terjun Bayang Sani
                    L.marker([-1.223776, 100.567594]).addTo(map)
                        .bindPopup('<b>Air Terjun Bayang Sani</b><br>Kabupaten Pesisir Selatan terkenal dengan sebutan Negeri Sejuta Pesona. Benar saja, sepanjang mata memandang menuju lokasi wisata Air Terjun Bayang Sani dipenuhi dengan view alam yang sangat indah. Banyak yang belum tahu, bahwa Air Terjun Bayang Sani memiliki air terjun sebanyak 7 tingkatan dengan lokasi yang berbeda. Namun air terjun yang bisa dikunjungi hanya sampai tingkatan ke tiga saja, karena belum tersedia akses jalan menuju tingkat ke empat sampai ke tingkat ke tujuh.');

                    // Simpan koordinat terakhir ke local storage saat peta digeser
                    map.on('moveend', function() {
                        var currentLocation = map.getCenter();
                        localStorage.setItem('lastLocation', JSON.stringify([currentLocation.lat, currentLocation.lng]));
                    });
                });
            </script>

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

    <script src="assets/vendors/purecounter/purecounter_vanilla.js"></script>
    <script src="assets/vendors/aos/aos.js"></script>
    <script src="assets/vendors/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendors/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendors/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendors/swiper/swiper-bundle.min.js"></script>
    <script src="assets/vendors/waypoints/noframework.waypoints.js"></script>
    <script src="assets/vendors/php-email-form/validate.js"></script>
    <script type='text/javascript' src='assets/js/comment-reply.min.js'></script>
    <script type='text/javascript' src='assets/js/underscore.min.js'></script>
    <script type='text/javascript' src='assets/js/jquery/jquery.masonry.min.js'></script>
    <script type='text/javascript' src='assets/vendors/sliders/polaroid/js/jquery.polaroid.js'></script>
    <script type='text/javascript' src='assets/js/jquery.colorbox-min.js'></script>
    <script type='text/javascript' src='assets/js/jquery.easing.js'></script>
    <script type='text/javascript' src='assets/js/jquery.carouFredSel-6.1.0-packed.js'></script>
    <script type='text/javascript' src='assets/js/jQuery.BlackAndWhite.js'></script>
    <script type='text/javascript' src='assets/js/jquery.touchSwipe.min.js'></script>
    <script type='text/javascript' src='assets/vendors/sliders/polaroid/js/jquery.transform-0.8.0.min.js'></script>
    <script type='text/javascript' src='assets/vendors/sliders/polaroid/js/jquery.preloader.js'></script>
    <script type='text/javascript' src='assets/js/responsive.js'></script>
    <script type='text/javascript' src='assets/js/mobilemenu.js'></script>
    <script type='text/javascript' src='assets/js/jquery.superfish.js'></script>
    <script type='text/javascript' src='assets/js/jquery.placeholder.js'></script>
    <script type='text/javascript' src='assets/js/contact.js'></script>
    <script type='text/javascript' src='assets/js/jquery.tipsy.js'></script>
    <script type='text/javascript' src='assets/js/jquery.cycle.min.js'></script>
    <script type='text/javascript' src='assets/js/shortcodes.js'></script>
    <script type='text/javascript' src='assets/js/jquery.custom.js'></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
</body>

</html>