-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2024 pada 10.05
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webprofile`
--
CREATE DATABASE IF NOT EXISTS `webprofile` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webprofile`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `user` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`user`, `password`, `nama`, `foto`) VALUES
('admin', 'YWRtaW4=', 'Administrator', 'user2-160x160.jpg'),
('user', 'dXNlcg==', 'user', 'avatar5.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `kategori` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id`, `judul`, `keterangan`, `image`, `tanggal`, `kategori`) VALUES
(30, 'Santri  Khatam Al-Quran 30 juz', '<p>Menjadi khatam alquran 30 juz Di Tahfidz alquran syeikh abdurrahman \r\nDi nagari asam kumbang puluik-puluik selatan terdapat sebuat tahfidz alquran \r\nyang bernama tahfidz syeikh abdurrahman. Adhiya Ahmad Zaki adalah salah \r\nsatu santriwan tahfizd syeikh abdurrahman yang telah berhasil khatam hafalan \r\nalquran 30 Juz.<br></p>', 's21.png', '2024-01-15 18:20:09', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `no` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `info` text NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`no`, `judul`, `desc`, `info`, `jenis`) VALUES
(0, 'Kue Coki', 'm12.png', 'Kue coki adalah salah satu jenis makanan kue tradisional yang berasal dari \r\npesisir selatan yang bisa ditemukan di berbagai wilayah termasuk di nagari \r\npuluik-puluik Selatan. Kue coki memiliki rasa yang unik dan tekstur yang \r\nkenyal, serta biasanya disajikan sebagai camilan atau makanan penutup. ', '1'),
(0, 'Palai Bada Pasisia', 'm22.png', 'Ada satu kuliner di Kabupaten Pesisir Selatan khusus nya nagari asam \r\nkumbang pesisir selatan yang diproses pembuatannya serupa dengan Putu \r\nKambang, tapi memiliki rasa yang berbeda yaitu Pali Bada Pasisia. \r\nMakanan ini menjadi menu lauk pauk yang wajib dicoba bila sedang wisata \r\nkuliner di Kabupaten Pesisir Selatan. Palai Bada ini serupa dengan pepes \r\nikan, tapi bahan dasarnya menggunakan ikan teri (bada) yang dicampur \r\ndengan parutan kelapa dan bumbu rempah-rempah. Kemudian dibungkus \r\ndengan daun pisang dan dibakar di atas arang hingga daun berwarna lebih \r\ngelap. Ada palai yang berwarna merah menandakan rasa pedas dan \r\nberwarna kuning sepeti kunyit merupakan rasa yang bisa, gurih.', '1'),
(0, 'Randang Lokan', 'm31.png', 'Ada satu kuliner di Kabupaten Pesisir Selatan khusus nya nagari asam \r\nkumbang pesisir selatan yang Proses pembuatan Rendang Lokan sangat \r\nmudah dari rendang biasa, karena tidak membutuhkan waktu yang lama. \r\nCukup sampai lokan berwarna cokelat keemasan. Bahan utamanya berupa \r\nsantan, serai, daun salam dandan rempah-rem yang biasa digunakan saat \r\nmembuat rendang. ', '1'),
(0, 'Bamus', 'sdm2.png', 'Staf Bamus (Badan Musyawarah) dalam wali Nagari memiliki peran penting \r\ndalam pengelolaan pemerintahan Nagari di desa asam kumbang. Bamus adalah \r\nlembaga yang bertanggung jawab untuk memberikan masukan, saran, dan \r\nmendukung Kepala Nagari (Wali Nagari) dalam pengambilan keputusan dan \r\npengelolaan pemerintahan Nagari.', '2'),
(0, 'PKK', 'sdm3.png', 'Tim Penggerak Pemberdayaan dan Kesejahteraan Keluarga (TP.PKK) adalah \r\nmitra kerja pemerintah dan organisasi kemasyarakatan, yang berfungsi sebagai \r\nfasilisator, perencana, pelaksana, pengendali dan penggerak pada masing- \r\nmasing jenjang untuk terlaksananya program PKK pada nagari puluik-puluik \r\nselatan asam kumbang.', '2'),
(0, 'Lembaga Pemberdayaan Masyarakat Nagari(LPMN)', 'sdm4.png', 'LPMN adalah singkatan dari Lembaga Pemberdayaan Masyarakat Nagari. \r\nOrganisasi ini biasanya berperan dalam konteks pemerintahan desa atau nagari \r\ndi Indonesia, terutama di daerah Sumatera Barat. Nagari adalah unit \r\nadministratif di tingkat pemerintahan desa yang ada di Provinsi Sumatera \r\nBarat. LPMN bertujuan untuk memfasilitasi partisipasi masyarakat dalam \r\npengambilan keputusan dan pengelolaan sumber daya lokal. \r\nPeran utama LPMN dalam nagari adalah sebagai lembaga yang membantu \r\nmengkoordinasikan \r\nkegiatan-kegiatan \r\nyang \r\nberhubungan \r\ndengan \r\npemberdayaan masyarakat. Ini bisa mencakup pengorganisasian pertemuan, \r\npelatihan, kegiatan sosial, dan program-program lainnya yang bertujuan untuk \r\nmeningkatkan kualitas hidup dan kesejahteraan masyarakat di nagari tersebut.', '2'),
(0, 'Puskesmas Asam Kumbang', 'f1.png', 'Pesisir Selatan-Bupati Pesisir Selatan, Hendrajoni meresmikan pemakaian \r\ngedung Rawat Inap Puskesmas Asam Kumbang, Kecamatan IV Nagari Bayang \r\nUtara, Senin (15/2). Hadir dalam kesempatan itu kepala perangkat daerah dan \r\nundangan lainnya. Bupati dalam sambutannya menegaskan, pembangunan \r\ngedung Rawat Inap Puskesmas Asam Kumbang ini telah terlaksana dengan \r\nbaik. Kemudian juga diharapkan fasilitas kesehatan di ruang Rawat Inap \r\ntersebut harus lengkap, sehingga pelayanan kesehatan kepada masyarakat \r\nberjalan dengan baik. Lebih lanjut bupati mengatakan, kedepan pelayanan dan \r\nsosialisasi kesehatan harus dapat menyentuh langsung seluruh masyarakat, \r\nbegitu juga terhadap ibu hamil, bayi dan ibu menyusui yang ada di kampung\r\nkampung.', '3'),
(0, 'Tahfidz Alquran Syeikh Abdurrahman', 'f2.png', 'Tahfidz Al-quran syeikh abdurrahman adalah sebuah lembaga pesantren Al\r\nquran yang bergerak dibidang penghafal Al-quran yang bertempat di desa asam \r\nkumbang, bayang utara, pesisir selatan. Sebelum menjadi rumah tahfidz Al\r\nquran, tahfidz Al-quran syeikh abdurrahman adalah rumah pahlawan \r\nperjuangan yang bernama iljas jacoub, yaitu pahlawan yang berasal dari pesisir \r\nselatan yang khususnya daerah bayang utara. \r\nRumah tahfidz Al-quran syeik abdurrahman ini sendiri berbentuk seperti rumah \r\ngadang adat minang kabau, dulu rumah ini kosong dan tidak terawat tapi \r\nsekarang rumah gadang milik pahlawan iljas jacoub ini sekarang sudah \r\ndirenovasi oleh salah satu dari anggota keluarga iljas jacoub dan sekarang \r\nrumah ini sudah dihibahkan dan dijadikan sebagai tempat untuk penghafal Al\r\nquran sejak agustus 2018 lalu. \r\nKehadiran tempat belajar Al-quran ini mendapat dukungan dan apreasiasi dari \r\nmasyarakat sekitar, terbukti dengan banyaknya keluarga yang mendaftarkan \r\nanak anaknya ke tahfidz syeik abdurrahman. Pertama tama didirikan tahfidz ini \r\nsantri yang belajar di tahfidz ini masih dari masyarakat sekitar tahfidz tersebut, \r\nnamun sekarang tidak saja dari desa asam kumbang, tetapi juga dari desa desa \r\nlainnya di kecamatan bayang utara dan sekitarnya dan sampai sekarang tahfidz \r\nini telah berkembang dan memiliki santri dari berbagai daerah dan kecamatan. ', '3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `objek_wisata`
--

CREATE TABLE `objek_wisata` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `latitude` decimal(10,6) NOT NULL,
  `longitude` decimal(10,6) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `objek_wisata`
--

INSERT INTO `objek_wisata` (`id`, `nama`, `latitude`, `longitude`, `deskripsi`) VALUES
(1, 'aa', '-6.175100', '106.865000', 'aa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `perihal` varchar(255) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `trash` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `email`, `perihal`, `pesan`, `status`, `tanggal`, `trash`) VALUES
(11, 'tes sana', 'tes@mail.com', 'tes@mail.com', 'tes saja ya min', 1, '2022-01-28 00:00:00', 1),
(12, 'Om Toni', 'toni@om.com', 'Tes Pesan', 'Kirim Sekarang', 1, '2022-01-28 00:00:00', 1),
(14, 'Om Toni', 'freelancechanel@gmail.com', 'Presentasi Web Profile', 'Silakan Didownload buat daerah yang belum punya profile online ', 1, '2023-01-30 08:46:18', 1),
(15, 'Khairul', 'khairulhuda242@gmail.com', 'Tes', 'Tes', 1, '2024-01-16 11:50:24', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile`
--

CREATE TABLE `profile` (
  `nama` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `peta` longtext DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `sejarah` longtext DEFAULT NULL,
  `visi` varchar(255) DEFAULT NULL,
  `misi` longtext DEFAULT NULL,
  `lambang` longtext DEFAULT NULL,
  `struktur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profile`
--

INSERT INTO `profile` (`nama`, `kota`, `email`, `telp`, `twitter`, `facebook`, `instagram`, `peta`, `logo`, `sejarah`, `visi`, `misi`, `lambang`, `struktur`) VALUES
('Asam kumbang', 'puluik Puluik Selatan', 'asamkumbangpuluikpuluikselatan@gmail.com', '081234567890', '#', '#', '#', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d510580.44168716914!2d100.12580602831795!3d-1.2228139308122696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4aa9c7deba65d%3A0xbdd71168ac80d534!2sPuluik%20Puluik%2C%20Kec.%20IV%20Nagari%20Bayang%20Utara%2C%20Kabupaten%20Pesisir%20Selatan%2C%20Sumatera%20Barat!5e0!3m2!1sid!2sid!4v1705241087088!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"', 'logops.png', '                                                        <p class=\"MsoNormal\" style=\"text-align:justify\">Nagari Puluik-Puluik Selatan jika\r\nditinjau dari belakang atau ratusan tahun yang lalu merupakan suatu / ibu dari\r\nKOTO VIII suatu kerajaan kecil dengan pemerintah adatnya yang dipimpin oleh\r\nseorang rajo, dibantu oleh penghulu- penghulu Pucuk Adat sebanyak 8 (delapan)\r\norang dengan sebutan \"penghulu Nan VIII, Sembilan dengan Rajo. <o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify;text-indent:36.0pt\">Yang disebut\r\ndengan KOTO VIII adalah:<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">1. Puluik-puluik<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">2. Batuang<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">3. Taratak teleng<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">4. Taratak pisang asam kumbang<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">5. Taratak baru dan calou<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">6. Koto ranah<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">7. Muaro ale<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">8. Pancuang taba<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">Masing-masing koto diperintah\r\noleh seorang penghulu pucuk yang mengatur perekonomian sosial budaya anak\r\nnagari. Setelah tahun 1889 pemerintah kolonial Belanda berangsur-angsur\r\nmenghilangkan kekuasaan raja dan penghulu-penghulu pucuk dan VIII dalam mengatur\r\ndan menjalankan roda pemerintahan. <o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">Tahun 1903 Tuanku Puluik-Puluik\r\nMarjohan Bagindo Sutan Besar ke IX diangkat oleh pemerintahan Belanda/ Gubernur\r\nSWK diPadang sebagai Distrik Hoof (Laras) berkedudukan di Puluik-Puluik\r\n(catatan Besluit: 5-11-1903 No. 826).<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">Dan dengan demikian Koto VIII\r\ndipecah oleh Belanda dijadikan 4 (empat) Nagari dengan pemecahan dan\r\npenggabungan sbb:<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">1. Puluik-puluik, Taratak Teleng,\r\nTaratak Pisang/ Asam Kumbang dan Teratak Baru. Calau, dijadikan satu Nagari\r\nmenjadi Nagari Puluik-Puluik.<o:p></o:p></p><p class=\"MsoNormal\" style=\"text-align:justify\">2. Koto Ranah menjadi Nagari Koto\r\nRanah<o:p></o:p></p><p align=\"center\" style=\"margin: 10px 0px 3px; line-height: 27px; text-align: justify;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\" style=\"text-align:justify\">3. Muaro Aie\r\nmenjadi&nbsp;Muaro&nbsp;Air<o:p></o:p></p>                                                                                                                                ', 'Membangun nagari yang mandiri dan bersatu mensejahterahkan rakyat', '                                                                        <p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif; text-align: justify;\">1.&nbsp;Melaksanakan penyelenggaraan pemerintah yang baik, bersih dan transparan</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif; text-align: justify;\">2.&nbsp;Meningkatkan sistem perekonomian rakyat.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif; text-align: justify;\">3.&nbsp;Meningkatkan pembangunan sarana dan prasarana fasilitas umum.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif; text-align: justify;\">4.&nbsp;Meningkatkan kualitas sumber daya alam dan sumber daya manusia.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif; text-align: justify;\">5.&nbsp; Kelompok tani, kelompok majlis ta’lim dan lain-lainnya agar bisa \r\nberkompetensi. </p>                                                                                                                                                                ', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif;\"><span style=\"margin: 0px; padding: 0px; border: none; outline: none; line-height: inherit; font-weight: bolder;\">BENTUK LAMBANG</span></p><ol style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: inherit; color: rgb(0, 0, 0); font-family: Exo, sans-serif;\"><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; text-align: left; list-style: decimal !important;\">Bentuk Dasar Lambang adalah bulat (lingkaran).</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; text-align: left; list-style: decimal !important;\">Bagian - bagian yang menonjol keluar dari bentuk dasar :<ol style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: none; outline: none; line-height: inherit; list-style-type: lower-alpha;\"><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; text-align: left; list-style: decimal !important;\">separo bagian atas dari gambar bintang;</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; text-align: left; list-style: decimal !important;\">gambar ompak;</li></ol></li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; text-align: left; list-style: decimal !important;\">Ukuran Lambang Daerah adalah garis tengah lingkaran 30, sedangkan ukuran bagian-bagian yang menonjol 40.</li></ol><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif;\"><span style=\"margin: 0px; padding: 0px; border: none; outline: none; line-height: inherit; font-weight: bolder;\">ARTI DAN MAKNA LAMBANG DAERAH</span></p><ol style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: inherit; color: rgb(0, 0, 0); font-family: Exo, sans-serif;\"><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Landasan Idiil Pancasila :<ol style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: none; outline: none; line-height: inherit; list-style-type: lower-alpha;\"><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Ke-Tuhanan Yang Maha Esa dilukiskan dalam gambar bintang emas persegi lima;</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Perikemanusiaan dilukiskan dalam tugu (saka guru) dalam sayap;</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Persatuan dilukiskan dalam gambar bulatan (lingkaran) berwarna merah dikelilingi lingkaran berwarna putih;</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Kerakyatan dilukiskan dalam gambar ompak dengan tatahan bunga teratai;</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Keadilan sosial dilukiskan dalam gambar padi dan kapas;</li></ol></li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Landasan Strukturil Undang - Undang Dasar 1945 dilukiskan dalam gambar bunga kapas berjumlah 17 kuntum, daun kapas berjumlah 8 dan padi sewuli yang berisi 45 butir.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Tat kehidupan gotong royong dilukiskan dalam gambar bulatan yang dalam bahasa Jawa disebut \"golong\" dan tugu berbentuk silinder yang dalam bahasa Jawa disebut \"gilig\", sehingga perpaduan dua gambar itu melambangkan semangat yang \"golong-gilig\".</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Nilai-nilai keagamaan pendidikan dan kebudayaan dilukiskan dalam gambar bintang emas persegi lima, bunga melati yang mencapai bintang dengan daun kelopak 3 helai.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Semangat perjuangan dan kepahlawanan dilukiskan dalam gambar warna merah dan putih dengan gambar tugu tegak lurus, berarti dengan jiwa yang teguh berjuang dengan gagah berani mencapai tujuan yang suci.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Semangat pembangunan dilukiskan dalam gambar tatahan miring pada soko guru, tatahan spesifik, yang berarti menghias, membangun diidentikkan dengan menghias memperlengkapi dengan alat-alat yang tak dimiliki sebelumnya.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Keadaan alam dilukiskan dalam gambar warna-warna hijau tua dan hijau muda dan lukisaN bentuk stileer bunga teratai, untuk menggambarkan kesuburan alam (hijau) dan kesuburan jiwa (bunga teratai).</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Persatuan dan kesatuan Indonesia yang kokoh kuat dilukiskan dalam gambar lingkaran/bulatan dan tugu yang tegak lurus, menggambarkan falsafah hidup yang selalu golong gilig.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Masyarakat yang adil dan makmur berdasarkan Pancasila dan Undang-Undang Dasar 1945, dilukiskan dalam gambar padi sewuli dengan 45 butir padi (pangan) dan kapas yang berbungan 17 kuntum dan berdasar 8 helai, angka-angka mana menggambarkan angka 17 Agustus 1945 yaitu tanggal proklamasi dari Negara Kesatuan Republik Indonesia yang ber-Undang-Undang Dasar 1945.<span style=\"margin: 0px; padding: 0px; border: none; outline: none; line-height: inherit; font-weight: bolder;\"><br style=\"margin: 0px; padding: 0px; border: none; outline: none; line-height: inherit;\"></span></li></ol><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: 1.6em; color: rgb(0, 0, 0); font-family: Exo, sans-serif;\"><span style=\"margin: 0px; padding: 0px; border: none; outline: none; line-height: inherit; font-weight: bolder;\">WARNA-WARNA DAN ARTINYA</span></p><ol style=\"margin-right: 0px; margin-left: 0px; padding: 0px; border: none; outline: none; font-size: 15px; line-height: inherit; color: rgb(0, 0, 0); font-family: Exo, sans-serif;\"><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">kuning emas → yang berarti keluhuran, keagungan dan kemashuran.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">Kuning tua → yang berarti keluhuran, keagungan dan kemashuran.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">hijau tua → yang berarti kesuburan dan harapan.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">hijau muda → yang berarti kesuburan dan harapan.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">merah → yang berarti keberanian.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">putih → yang berarti keasucian.</li><li style=\"margin: 0px 0px 1em 2em; padding: 0px; border: none; outline: none; line-height: inherit; list-style: decimal !important;\">hitam → yang berarti keabadian.</li></ol>                                                    ', 'organisasi.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `slider`
--

INSERT INTO `slider` (`id`, `nama`, `keterangan`, `image`, `thumb`) VALUES
(1, 'Jagung', 'Di nagari puluik-puluik selatan mayoritas penduduk nya berprofesi sebagai \r\npetani salah satu nya berladang jagung. Pohon jagung adalah tanaman yang \r\nbiasanya ditanam sebagai tanaman semusim dan menghasilkan tongkol jagung \r\nyang digunakan sebagai sumber pangan dan pakan ternak. Pohon jagung \r\ntumbuh di berbagai wilayah, termasuk daerah di nagari puluik-puluik selatan. \r\nNamun, penting untuk dicatat bahwa jagung bukanlah pohon, melainkan \r\ntanaman semusim yang lebih tepat disebut sebagai tanaman biji-bijian.', 'jagung.jpg', 'slider11.jpg'),
(2, 'Coklat', 'Pohon coklat adalah tanaman yang menghasilkan biji kakao, bahan mentah \r\nuntuk pembuatan coklat. Tanaman coklat ini umumnya tumbuh di daerah \r\ntropis, termasuk beberapa daerah di nagari puluik-puluik selatan. Pohon coklat \r\nditanam secara komersial di beberapa daerah di nagari puluik-puluik selatan \r\nyang memiliki iklim tropis yang cocok untuk pertumbuhan tanaman kakao. \r\nKakao adalah komoditas pertanian yang penting dan menghasilkan biji kakao \r\nyang digunakan untuk membuat coklat.', 'coklat.jpg', 'slider21.jpg'),
(3, 'Sawah', 'Sawah adalah salah satu bentuk lahan pertanian yang penting di nagari puluik\r\npuluik selatan dan banyak daerah lain di seluruh dunia. Sawah adalah lahan \r\nyang dirancang secara khusus untuk budidaya tanaman padi, yang merupakan \r\nsalah satu tanaman pokok dalam banyak masyarakat di wilayah tersebut. \r\nSawah di nagari puluik-puluik selatan terutama digunakan untuk budidaya \r\ntanaman padi. Padi adalah salah satu sumber makanan pokok dalam banyak \r\nbudaya di daerah tersebut, dan sawah adalah lingkungan yang cocok untuk \r\npertumbuhan tanaman padi. \r\n', 'sawah.jpg', 'slider31.jpg'),
(4, 'Kayu Manis', 'Pohon kayu manis adalah pohon yang menghasilkan kayu manis, bumbu yang \r\ndigunakan dalam berbagai masakan dan minuman, terutama sebagai rempah\r\nrempah yang memberikan cita rasa dan aroma yang khas. Di nagari puluik\r\npuluik selatan yang memiliki iklim tropis dan kondisi tanah yang sesuai, pohon \r\nkayu manis dapat ditemukan dan dibudidayakan. Hasil utama dari pohon kayu \r\nmanis adalah kulit kayu yang kering yang dikenal sebagai kulit kayu manis. \r\nKulit kayu ini memiliki aroma yang harum dan rasanya manis, sehingga \r\ndigunakan sebagai bumbu dalam berbagai hidangan, minuman, dan produk \r\nrempah-rempah.', 'kayu_manis.jpg', 'slider41.jpg'),
(5, 'Karet', 'Pohon karet merupakan komoditas pertanian yang penting di nagari puluik\r\npuluik selatan khusus nya desa asam kumbang, dan pengelolaannya \r\nmembutuhkan perhatian terhadap aspek-aspek keberlanjutan lingkungan dan \r\nsosial untuk menjaga manfaat ekonomi sambil meminimalkan dampak negatif \r\npada lingkungan dan masyarakat setempat. Pohon karet ditanam secara luas di \r\nnagari puluik-puluik selatan, terutama di perkebunan karet. Pohon karet \r\nbiasanya ditanam dalam barisan-barisan dan diambil getah karetnya melalui \r\nproses penyadapan. Budidaya karet adalah salah satu sumber pendapatan \r\nutama bagi petani di daerah Pesisir Selatan. Getah karet yang dihasilkan dari \r\npohon karet dapat dijual kepada pabrik pengolahan karet untuk dijadikan \r\nproduk karet yang beragam, seperti ban mobil, tali karet, selang, dan produk \r\nkaret lainnya.', 'karet.jpg', 'slider51.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor`
--

CREATE TABLE `visitor` (
  `ip` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `online` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `visitor`
--

INSERT INTO `visitor` (`ip`, `date`, `hits`, `online`, `time`) VALUES
('::1', '2022-12-16', 73, '1671199733', '2022-12-16 06:03:37'),
('::1', '2022-12-17', 3, '1671237672', '2022-12-17 01:38:17'),
('::1', '2022-12-23', 31, '1671780828', '2022-12-23 06:29:35'),
('::1', '2022-12-28', 1, '1672268139', '2022-12-28 23:55:39'),
('::1', '2022-12-29', 8, '1672269581', '2022-12-29 00:04:48'),
('::1', '2023-01-06', 2, '1672978763', '2023-01-06 05:10:42'),
('::1', '2023-01-17', 2, '1673996056', '2023-01-17 22:30:29'),
('::1', '2023-01-20', 77, '1674222284', '2023-01-20 01:06:46'),
('::1', '2023-01-21', 33, '1674277123', '2023-01-21 00:15:34'),
('::1', '2023-01-24', 30, '1674601113', '2023-01-24 00:02:19'),
('::1', '2023-01-25', 334, '1674687594', '2023-01-25 00:03:53'),
('::1', '2023-01-26', 889, '1674773990', '2023-01-26 00:00:05'),
('::1', '2023-01-27', 149, '1674858669', '2023-01-27 00:00:08'),
('::1', '2023-01-28', 406, '1674945407', '2023-01-28 00:23:01'),
('::1', '2023-01-29', 26, '1674989860', '2023-01-29 04:00:16'),
('::1', '2023-01-30', 39, '1675036375', '2023-01-30 00:26:55'),
('::1', '2024-01-14', 74, '1705263264', '2024-01-14 15:08:30'),
('::1', '2024-01-15', 168, '1705357710', '2024-01-15 03:30:18'),
('::1', '2024-01-16', 52, '1705425676', '2024-01-16 03:23:04'),
('127.0.0.1', '2024-01-16', 1, '1705423496', '2024-01-16 17:44:56'),
('::1', '2024-01-17', 9, '1705496625', '2024-01-17 13:59:50'),
('::1', '2024-01-22', 15, '1705951904', '2024-01-22 19:58:24'),
('::1', '2024-01-30', 2, '1706634247', '2024-01-30 18:03:37'),
('::1', '2024-02-04', 3, '1707045933', '2024-02-04 12:24:17'),
('::1', '2024-02-05', 2, '1707118456', '2024-02-05 08:33:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`user`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `objek_wisata`
--
ALTER TABLE `objek_wisata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_coordinate` (`latitude`,`longitude`);

--
-- Indeks untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `objek_wisata`
--
ALTER TABLE `objek_wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
