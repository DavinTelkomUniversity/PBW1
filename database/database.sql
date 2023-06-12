-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 12 Jun 2023 pada 19.35
-- Versi server: 10.5.20-MariaDB-cll-lve
-- Versi PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `davinid_telutizen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `unhash` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `biodata` text NOT NULL,
  `profile` varchar(300) NOT NULL,
  `website` varchar(300) NOT NULL,
  `temporary` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `cookie` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `account`
--

INSERT INTO `account` (`id`, `nama`, `username`, `password`, `unhash`, `phone`, `email`, `biodata`, `profile`, `website`, `temporary`, `date`, `time`, `cookie`) VALUES
(1, 'Davin Wardana', 'davin', '$2y$10$HjkTRnUO9LS0JfCkHt0gfu3XHcXRmibTDPRi9e0s7l1cMu/WRRCLS', 'davin123', '6285156493669', 'davinww060304@gmail.com', 'instagram : davin_wardana\r\ntwitter : davin_wardana\r\n', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-davin.jpeg', 'davinwardana.com', 'nI3s94UxpPDioeYIzOLeL042tRq0An', '2023-03-09', '09:55:49', '6b6f658706166efac3dabb460a5b092eaccd7b0d5b45a7c28bc361175e18a79249947cab1a3ddbd6ca0b8686591cedf99342dcd03889e930dfe8cfbfcd5f5678'),
(2, 'Muhamad hudansah', 'hudansah', '$2y$10$qOrPlKHHivvKw6qqe9YPKewmR9eQRMV6dr5x7DUpDHgJvvInG0e/G', 'evi123hudan', '6285664764735', 'hudansah0@gmail.com', 'file:///C:/Users/user/PBW46-03/4603-praktikum-muhamadhudansah/AsessmentPraktek/contoh.html', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-hudansah.jpg', 'file:///c:/users/user/pbw46-03/4603-praktikum-muhamadhudansah/asessmentpraktek/contoh.html', '', '2023-03-09', '09:55:49', '643742806712ba31b5fc93077c22ada0c5e4932be47e846517ee66af718185b31e89e6ab6b25ea390bc887b1031ca0639e39abca5bdad02ba98b44d9fd4dc86d'),
(3, 'Raif Maulidani', 'raif', '$2y$10$T3iFqjfTdnkIFySu2I5m0OT3oj0h2RS7vr9EXNpm8Mt62TdF9ZQem', 'raif2004', '6281294316964', 'raifmaulidani@gmail.com', '', 'https://hub.telutizen.my.id/favicon.png', '', '', '2023-03-09', '09:55:49', ''),
(4, 'Pendatang', 'pendatang', '$2y$10$TXg0t3Sede40xWLM4R9QdOxm./5G2HiuTV.2kkIqawbOQSHlxcDZO', '1234567', '66666666', 'sszkaa@gmail.com', '', 'https://hub.telutizen.my.id/favicon.png', '', '', '2023-03-09', '09:55:49', ''),
(5, 'Calo tiket coldplay', 'azka', '$2y$10$Cf/6jz5bIXr4ntsilnFBeull4rbir3pEFLKzUIEyAVH2hFYE/ZH3u', '12345672', '6285939271055', 'sszkaa1305@gmail.com', 'Haloo', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-azka.jpg', 'calo.my.id', '', '2023-03-09', '09:55:49', '541a414b115e2324e6719187f254f41a4b8a31644a11e608aa7954385716ae49cc76414b598ef5001216abc7845763872c60df51925c0f7485021d79f555e13b'),
(6, 'dimas', 'dimas', '$2y$10$QwwmiHGYi3XTkgVcKXx7WuhzJ316i5cbAP0rrYDZ5WUbiVJ6hHpda', 'alamk@123', '6282269706975', 'dimasdwikurniawan94@gmail.com', 'introvert', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-dimas.jpeg', '', '', '2023-03-09', '09:55:49', ''),
(7, 'Fadhil Bayhaqi', 'deathstar', '$2y$10$oBA9CC12nqCAzkHn6FQr9u1NMa3/BBWX0q8OWeKTY0GrmeBwIcaUO', 'whitenight', '6282217728277', 'mf.bayhaqi9@gmail.com', '', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-deathstar.jpeg', '', '', '2023-03-09', '09:55:49', '8e99d7e1e6d3024d5d9e80ebb8f4830723ee1e15b7fcf5e1e0f5caa79bac35d42cb1cfc14c933e5b012ee9a8d47df59e24f98213f535da7db05dce42aa38d806'),
(8, 'Fauzan', 'namjong', '$2y$10$CbN7kYV3XJGGHp5vsg3raeEY9nWwcHDk14WLrTiFxMkxNCHhfUsSS', '123456', '6281271076622', 'fauzanramadhana6@gmail.com', '', 'https://hub.telutizen.my.id/favicon.png', '', '', '2023-03-09', '09:55:49', ''),
(9, 'Panji', 'panji', '$2y$10$rk.l1ZoJxgK./92r4O4GY.xwRrwxthQ1/MHSXcl4J9EK13mhqfKGO', 'vokep8787', '6282234494234', 'panjipradipa714@gmail.com', 'P mlekom', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-panji.png', '', '', '2023-03-09', '09:55:49', ''),
(10, 'Ihsan Muhammad Iqbal', 'ihsanmiqbal', '$2y$10$ZXYmTeEWADQ0/9SHBLckFOo/wvCKCT4O4tZVjXEAJToy5BpTn3F.a', 'yaituihsan5a', '6281224830995', 'ihsanmiqbal24@gmail.com', 'aku ganteng', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-ihsanmiqbal.jpg', '', '', '2023-03-09', '12:16:10', ''),
(11, 'Telu Hub', 'hub', '$2y$10$IpUXhjcKX9py.V9p.0R8rueuPxgc.2uy2eIi5Pb2Dw09Z1Sx2iitm', 'hub123', '62851564936692', 'hub@telutizen.my.id', 'Layanan forum untuk seluruh Telutizen', 'https://hub.telutizen.my.id/favicon.png', 'hub.telutizen.my.id', '', '2023-03-09', '17:55:23', ''),
(12, 'Zaidan Azffa', 'zaidanazffa', '$2y$10$DM1S9otNzcRkLAHTj8WJAOln9HYTCGmE3YEXZ1a.FFGBNxbPTvhXi', '19November2004@#', '6282298639769', 'zaidanazffa@gmail.com', '', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-zaidanazffa.jpeg', '', '', '2023-03-09', '23:10:25', ''),
(13, 'Mitra Industri', 'mitraindustri', '$2y$10$DEFTQbVXiWrKrTD3hJyP/u5YbPupleKa31ViCoqtOP489GwUlRRcq', '1tm1tr4101101', '62882016869689', 'developermitraindustri@gmail.com', '', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-mitraindustri.jpg', '', '', '2023-03-10', '11:13:23', ''),
(14, 'Furi Roti', 'furiroti', '$2y$10$aHi3j/GnH1sNC3wI3zEbEuV7eUP9vWQZ/.TcNQfFQG0XugVfGDyZe', 'furiroti123', '62812135393077', 'furiroti2@gmail.com', '', 'https://furiroti.com/assets/imagens/favicon.png', '', '', '2023-03-10', '11:18:28', ''),
(15, 'Vams', 'vams', '$2y$10$rg9uww8Oufb5YfoFeFpk6.czi7XYzOksRROyiiAKnTlsZjur.gIra', 'vams123', '62812135393071', 'vamsclub123@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxYusS_WXycMFryEst5TJHuz1Fh2cDlvpvHug2N7=s96-c', '', '', '2023-03-10', '11:20:07', ''),
(16, 'Arya syah ramadhan', 'ar', '$2y$10$YdxLw2ZNKBqlwS1/a1guQu3wNfRsaFCiIWhUwi4isJTrhNzQh/1I2', 'aaaauuuu1234', '6282112580958', 'aryagcc123@gmail.com', '', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-ar.jpg', '', '', '2023-03-10', '23:48:55', ''),
(17, 'Warkop ADD', 'add', '$2y$10$CIaUH7B4mALAgnD6/kDrW.6Dz92n1/fMRlhG9xPoxhjGBKFFDMZqC', 'add123', '6281898293098', 'warkopadd@gmail.com', '', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-add.png', '', '', '2023-03-11', '01:39:55', ''),
(18, 'Togi Samuel Simarmata', 'samsimarmata', '$2y$10$XwilGhXV3XclkhDzWZDR.uxTRtGsm0On1WRBjBXNC1dgpirKuLWHC', 'togi2802', '6281290488983', 'simarmata2802@gmail.com', '', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-samsimarmata.jpg', '', '', '2023-03-13', '21:01:46', 'a338177132e176d64ad3654a9ed61573990d4544e5d61183120f86b4d2eea92a4516d3e0eb445ecb68cc9acdda08e60df135d1c8efa6ef1144c9f92abd26b27f'),
(19, 'Ariq Athallah', 'ariqathllh', '$2y$10$4EtgIKU1dHmYJQtLTaVKZOyeAOrvlYkrWcdjzpcc9Nd/73pVQGIV6', 'ariq10athllh', '6282299329147', 'ariqathllh12@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxZrJYcAAN4W4mC7QypsqI4jF7k1JtRUeEgEPjZe=s96-c', '', '', '2023-03-15', '12:41:51', ''),
(20, 'Arradji', 'arradji', '$2y$10$E4tLuWlcDEbkyWwaKd42Wuo62Q5pWSukooZ7okskeUzv/X9NNFrD6', 'Aa101101', '6281214262156', 'arradjisyaban@gmail.com', '', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-arradji.jpg', 'tmssistem.my.id', '', '2023-03-28', '14:48:31', ''),
(21, 'Elisa', 'elisa28', '$2y$10$P/rcEHtriVvu5d.Ha1SuZ.aQzzgXxpRdmYJzekokrogN7PfYp6y4K', 'icha2801', '628811763904', 'elisa.aropah28@gmail.com', '', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-elisa28.jpeg', '', '', '2023-03-28', '14:54:13', ''),
(22, 'Davin Document', 'davindocument', '$2y$10$jtOzCBzVowZN6NSm0KyubOha1wTFIMTtPIrO2HkQYZrW2gb6sDAZe', '@davindocument', '', 'davindocument@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxZJ5GMpSR4KdKyvFCRtMMZnMfVCs3OfZUWDQo-F=s96-c', '', '', '2023-03-30', '02:37:40', ''),
(23, 'Muhammad Faris Akbar', 'mfarisa2202', '$2y$10$Skf3jyQk54n4TQIZZSKGI.KivRLPrhJVC4EoBPM3vPjmdofxG8zKC', '@mfarisa2202', '', 'mfarisa2202@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxYcmeMq0vdVvp23G6yS_2C4Gl1hbTkWKNqdMrh6=s96-c', '', '', '2023-03-30', '02:43:18', ''),
(24, 'DAVIN WAHYU WARDANA', 'davinwardana', '$2y$10$vawaQkBwxkDJKo5WRoqyr.3CsLHlWdMCdyOoTaFt3a8feQHkPsJNq', '@davinwardana', '6281806993369', 'davinwardana@student.telkomuniversity.ac.id', '', 'https://lh3.googleusercontent.com/a/AGNmyxYKcrxSiskQG0WrzxNYKYvMBH7E76Jz-98LhYzu=s96-c', '', '', '2023-03-30', '03:11:26', ''),
(25, 'Muhammad Risqi Briliansyah', 'mrisqib2011', '$2y$10$E2eZx55FsKtqLuVZGTvfheNl3hGKoSDXwc8NWbwHSNLArO9zoMIo6', '@mrisqib2011', '', 'mrisqib2011@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxb87NOTXdHY5BH-N9eS-dUWINGdcaMJRXM3kC4a=s96-c', '', '', '2023-03-30', '03:40:05', ''),
(26, 'Davin Wardana', 'contact', '$2y$10$NZV.BdxXeWNM4WoSqTHciedMklouHkRV.2GL25Guseva8MQzYrdSK', '@contact', '6281213539307', 'contact@davinwardana.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxZ-K0eL9Sigr7FgMri0adIWi6kZ85V61aMBAJfe=s96-c', '', '', '2023-03-30', '09:57:55', ''),
(27, 'Fi ', 'fikoaliy', '$2y$10$31MEmDdUIcXHC8HyS6rnFev5kbkScdQ0PyUL.0L676qwvtBkiI7uC', '@fikoaliy', '6282338888291', 'fikoaliy@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxYEEuJB3q4nWXEhcMIvgDL1K-6x1Iu9uDiQAXV99w=s96-c', '', '', '2023-03-30', '15:23:53', ''),
(28, 'Salsabila febrianti', 'salsabila10', '$2y$10$h4GuXV1FF5meJFz2EtovueiNcNenN94PBQ2qlLtM23jucL7lqioIm', 'salsabila10', '6281385790240', 'bila9214@gmail.com', '', 'https://hub.telutizen.my.id/favicon.png', '', '', '2023-03-30', '21:33:04', ''),
(29, 'Davin Platform', 'davinplatform', '$2y$10$W/TzJtGUYbNhqIhgdpWMUeKdiDHDDmf5LlNxKbJ.jMrOi5fEo5GYi', 'davinplatform', '6281818181818', 'davinplatform@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxZKVxC1hmrP9wEJHTL3MoU7OTfqfMmtJKU8aEFm=s96-c', '', '', '2023-03-31', '02:11:14', 'bac99910e263bbb1fd726628937eecc0d7b0b58bc7134a69e1a81d9ec960d94d4c42629311599516b2b23be159f16f5a0f9681fdce2c925b88fc861cbe3abe79'),
(30, 'Akbar Ris', 'akbarris1305', '$2y$10$Hxhj8frlK6BugzTRlsruOue8.cjpoqk7fi0QJXppAPTWDr/nSy/1i', 'akbarris1305', '', 'akbarris1305@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxaec4JKb4I4CoIFV-PnxIrLPX7AJeDazn3tuJKB=s96-c', '', '', '2023-04-03', '18:02:00', ''),
(31, 'Azka F.a', 'azkaf.a1305', '$2y$10$RIDgMgquiE80rUs.trV5wOrMrY35k5rZ2aPfTtQxhgUw/MVVRNpuG', 'azkaf.a1305', '', 'azkaf.a1305@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxZZsitVSG-wvj8WNUAtuO663oALeHltoaAjI4pKF_0=s96-c', '', '', '2023-04-03', '18:02:29', ''),
(32, 'Riefky Ahmad R.', 'riefky.ahmad11', '$2y$10$UhAmJhRnA4hw5PMquyP74uGmfsZ3PmLzkhQMlE.W1KM/h5wXtYiEW', 'riefky.ahmad11', '6281299938989', 'riefky.ahmad11@gmail.com', '', 'https://lh3.googleusercontent.com/a/AGNmyxavpcYNHu_L6kaSJu1Jqq0H3EHcaVfDtXXz7UEl=s96-c', '', '', '2023-05-18', '09:38:25', '46167cd8ac0f259ee7bc9fb1d37e045a8fa29b98aa4d670a9afd67988c2f4e7c46167cd8ac0f259ee7bc9fb1d37e045a8fa29b98aa4d670a9afd67988c2f4e7c'),
(33, 'So What', 'sowhat', '$2y$10$K6xAjrMY27QCEU8umDwjvO9Gx.dKdUPUUZY9i0MjlXV6S1WgxKcaG', 'sowhat', '6812135393074', 'sowhat@gmail.com', '', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-sowhat.png', 'sowhat.my.id', '', '2023-05-21', '20:15:30', ''),
(34, '36_Yosua Reynaldi Manurun', 'reyyosua29', '$2y$10$UwABP/Dzts2FwbJrYFKRre0G2LjjtTY097yjRftybZNKksjW6y/u6', 'reyyosua29', '', 'reyyosua29@gmail.com', '', 'https://lh3.googleusercontent.com/a/AAcHTteyQoEG_JX4mP-hK0d4MsEuZGv4bTOxnJnR64AfCw=s96-c', '', '', '2023-05-25', '00:21:32', ''),
(35, 'Davin Wahyu Wardana New', 'davinwahyuwardana', '$2y$10$zDWMYJVXHaAvsEZWJzmMiuqe1BRZgjfzbNGLhp.GI4sC1xuQe7Peq', 'davin123', '6281234567890', 'davinwahyuwardana@gmail.com', 'Saya luar biasa', 'https://hub.telutizen.my.id/dashboard/assets/images/profile/user/davin-wardana-davinwahyuwardana.png', 'davinwardana.com', '', '2023-06-06', '10:43:31', ''),
(36, 'Telu Hub', 'hubtelu', '$2y$10$fKNAk6cv5YMU5D/sgd1nH.NwcfpnPZxkZTcF7gR3ZmMoZPp2KEXVi', 'hubtelu', '', 'hubtelu@gmail.com', '', 'https://lh3.googleusercontent.com/a/AAcHTtdjxxbjwOZmjklMyseb6nW00d4syT8-maeTYVtx=s96-c', '', '', '2023-06-12', '19:34:13', 'b0a80861e6fdbf545c44de26cd3d07bc86d1ea9b00c6f4d07dfeff377313fd2cb0a80861e6fdbf545c44de26cd3d07bc86d1ea9b00c6f4d07dfeff377313fd2c');

-- --------------------------------------------------------

--
-- Struktur dari tabel `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `code` varchar(300) NOT NULL,
  `code_answer` varchar(300) NOT NULL,
  `code_comment` varchar(300) DEFAULT NULL,
  `foto` varchar(300) NOT NULL,
  `content` text NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `answer`
--

INSERT INTO `answer` (`id`, `username`, `code`, `code_answer`, `code_comment`, `foto`, `content`, `date`, `time`) VALUES
(1, 'deathstar', '252610', '829409', NULL, '', 'Dapin dong', '2023-03-08', '21:24:19'),
(2, 'hudansah', '252610', '290480', NULL, 'https://hub.telutizen.my.id/dashboard/assets/images/answer/user/davin-wardana-810919.png', 'Yomannn', '2023-03-08', '21:25:23'),
(3, 'davin', '252610', '004838', NULL, '', 'Terima kasih semuanya^^', '2023-03-08', '21:31:29'),
(4, 'dimas', '252610', '328795', NULL, '', 'Tapi kan', '2023-03-08', '21:44:06'),
(5, 'davin', '728246', '839528', NULL, '', 'Cari ae sendiri', '2023-03-08', '21:45:34'),
(6, 'azka', '322315', '839285', NULL, '', 'pak izm alias pak indra', '2023-03-09', '09:49:46'),
(7, 'dimas', '322315', '739572', NULL, '', 'emang eeak', '2023-03-09', '09:50:24'),
(8, 'davin', '322315', '372975', NULL, '', 'eak jelas', '2023-03-09', '09:50:41'),
(9, 'dimas', '147096', '235235', NULL, '', 'emang eaak', '2023-03-09', '09:53:22'),
(10, 'davin', '147096', '653252', NULL, '', 'ih males', '2023-03-09', '09:53:46'),
(11, 'dimas', '972671', '523523', NULL, '', 'cek kalender dek', '2023-03-09', '09:59:07'),
(12, 'azka', '972671', '632522', NULL, '', 'gk ada libur #swasta', '2023-03-09', '09:59:13'),
(13, 'azka', '972671', '646266', NULL, '', 'p', '2023-03-09', '09:59:26'),
(14, 'azka', '972671', '264645', NULL, '', 'p', '2023-03-09', '09:59:30'),
(15, 'azka', '972671', '654646', NULL, '', 'p', '2023-03-09', '09:59:36'),
(16, 'panji', '972671', '666442', NULL, '', 'Nais ingpo kack', '2023-03-09', '10:03:07'),
(17, 'davin', '194006', '262624', NULL, '', 'kepo deh', '2023-03-09', '11:13:48'),
(18, 'davin', '972671', '645644', NULL, '', 'Minimal shopeepay', '2023-03-09', '11:23:39'),
(19, 'davin', '972671', '634643', NULL, '', 'Minimal shopeepay', '2023-03-09', '11:23:51'),
(20, 'davin', '823233', '858686', NULL, '', 'Di dekat gate 4 kak', '2023-03-09', '12:18:13'),
(21, 'hub', '459647', '979070', NULL, '', 'Tes tanpa foto', '2023-03-09', '18:00:27'),
(22, 'hub', '459647', '325235', NULL, '', 'Ajax tanpa foto', '2023-03-09', '18:01:28'),
(23, 'hub', '459647', '534734', NULL, '', 'Ajax tanpa foto 2', '2023-03-09', '18:04:17'),
(24, 'hub', '459647', '242422', NULL, '', 'Ajax tanpa foto 3', '2023-03-09', '18:51:40'),
(25, 'hub', '459647', '534643', NULL, '', 'Ajax tanpa foto 4', '2023-03-09', '18:54:21'),
(26, 'hub', '459647', '423523', NULL, '', 'Ajax tanpa foto 5', '2023-03-09', '18:56:14'),
(27, 'hub', '459647', '235223', NULL, '', 'Ajax dengan foto 1', '2023-03-09', '18:57:22'),
(28, 'hub', '459647', '235232', NULL, '', 'Ajax dengan foto 2', '2023-03-09', '18:59:47'),
(29, 'hub', '459647', '436364', NULL, '', 'Ajax dengan foto 3', '2023-03-09', '19:10:37'),
(30, 'hub', '459647', '463463', NULL, '', 'Ajax dengan foto 4', '2023-03-09', '19:15:39'),
(31, 'hub', '459647', '637343', NULL, '', 'Ajax dengan foto 5', '2023-03-09', '19:19:29'),
(32, 'davin', '459647', '634637', NULL, 'https://hub.telutizen.my.id/dashboard/assets/images/answer/user/davin-wardana-657175.png', 'cek foto', '2023-03-09', '19:21:51'),
(33, 'hub', '459647', '578533', NULL, '', 'Ajax dengan foto 6', '2023-03-09', '19:33:45'),
(34, 'hub', '459647', '534433', NULL, '', 'Ajax dengan foto 7', '2023-03-09', '20:19:57'),
(35, 'davin', '503496', '333633', NULL, '', 'Minimal good luking deck', '2023-03-09', '23:16:31'),
(36, 'azka', '855701', '774744', NULL, '', 'Tanya satpam', '2023-03-10', '09:42:50'),
(37, 'davin', '855701', '343463', NULL, '', 'Kea beli aja', '2023-03-10', '09:44:41'),
(38, 'davin', '832802', '637333', NULL, '', 'Merdeka merdeka', '2023-03-10', '18:21:46'),
(39, 'davin', '832802', '645363', NULL, '', 'Hiduplah', '2023-03-10', '18:22:27'),
(40, 'davin', '832802', '634637', NULL, '', 'cek foto', '2023-03-10', '18:22:49'),
(41, 'davin', '420866', '688124', NULL, '', 'Makannya cari ayang a', '2023-03-10', '23:56:29'),
(42, 'hudansah', '503496', '942279', NULL, '', 'haloooo', '2023-03-11', '13:52:32'),
(43, 'davin', '083271', '822544', NULL, 'https://hub.telutizen.my.id/dashboard/assets/images/answer/user/davin-wardana-822544.png', '', '2023-03-14', '16:45:06'),
(44, 'davin', '425854', '902841', NULL, '', 'Mls', '2023-03-15', '13:00:22'),
(45, 'hudansah', '349387', '288798', NULL, '', '14 Agustus 2013', '2023-03-23', '14:00:34'),
(46, 'hudansah', '823233', '028221', NULL, '', 'gate 4 bal\r\n', '2023-03-23', '14:01:36'),
(47, 'deathstar', '349387', '455621', NULL, '', 'kurang tau saya mas', '2023-03-23', '14:05:20'),
(48, 'arradji', '759963', '429623', NULL, 'https://hub.telutizen.my.id/dashboard/assets/images/answer/user/davin-wardana-429623.jpg', 'mau gak nih  ?', '2023-03-28', '14:58:19'),
(49, 'davin', '851761', '506739', NULL, '', 'Mana kutau', '2023-03-28', '15:02:33'),
(50, 'elisa28', '851761', '492173', NULL, '', 'padahal trendingnya #MySQL ihh gmn seh', '2023-03-28', '15:03:14'),
(51, 'davin', '524487', '524175', NULL, 'https://hub.telutizen.my.id/dashboard/assets/images/answer/user/davin-wardana-524175.gif', 'uninstall aja kak hostingnya', '2023-03-28', '15:04:56'),
(52, 'davin', '851761', '805543', NULL, 'https://hub.telutizen.my.id/dashboard/assets/images/answer/user/davin-wardana-805543.gif', 'Formalitas ae mbak dahal adminnya mah teu ngartiðŸ—¿', '2023-03-28', '15:13:07'),
(53, 'davin', '759963', '018519', NULL, '', 'ini sales mana ditawarinðŸ¥²', '2023-03-28', '15:32:00'),
(54, 'davin', '400030', '378663', NULL, '', 'tes', '2023-03-30', '04:52:39'),
(55, 'davin', '400030', '187235', NULL, '', 'tes lagi', '2023-03-30', '04:54:52'),
(56, 'davin', '972671', '226413', NULL, '', 'hehe', '2023-03-30', '10:50:25'),
(57, 'davin', '252610', '754955', '004838', '', 'tes', '2023-05-05', '14:41:46'),
(58, 'hudansah', '400030', '310171', '187235', '', 'apa aja', '2023-05-05', '15:40:32'),
(59, 'hudansah', '400030', '046279', '187235', '', 'apa aja', '2023-05-05', '15:40:48'),
(60, 'hudansah', '400030', '443880', '187235', '', 'p', '2023-05-05', '15:44:36'),
(61, 'davin', '196115', '939117', NULL, '', 'Biar dapet nilai', '2023-05-05', '22:22:13'),
(62, 'davin', '322315', '592156', '839285', '', 'Apa iyaaa', '2023-05-05', '22:23:11'),
(63, 'davin', '459647', '571669', '634637', '', 'tess', '2023-05-13', '15:46:21'),
(64, 'hub', '400030', '287860', '187235', '', 'cek', '2023-05-14', '22:20:58'),
(65, 'deathstar', '252610', '851011', NULL, '', 'Maaf kurang tau', '2023-05-19', '15:59:27'),
(66, 'davin', '252610', '340845', '851011', '', 'Oke', '2023-05-19', '16:01:17'),
(67, 'davin', '761822', '946422', NULL, '', 'Ngotak dikit kak harganya', '2023-05-21', '20:20:10'),
(68, 'azka', '761822', '603709', '946422', '', 'Ya gimana ya feenya sejuta kak, nego boleh kak wajar aja', '2023-05-21', '20:21:00'),
(69, 'davin', '761822', '536242', '946422', '', 'Cat 5 berapa kak', '2023-05-21', '20:23:24'),
(70, 'azka', '761822', '363410', '946422', '', '6 juta aja kak pertix udah include aqua botol ama tictac', '2023-05-21', '20:24:26'),
(71, 'davin', '761822', '738421', '946422', '', 'Wah dapet semua ya kak, cuman minus otak ae', '2023-05-21', '20:25:02'),
(72, 'azka', '761822', '375977', '946422', '', 'Haha lucu lu tong, aku serius kak sumpah demi alex bjir', '2023-05-21', '20:26:03'),
(73, 'davin', '761822', '496659', '946422', '', 'Mending duitnya buat belanja aplikasi ijo', '2023-05-21', '20:26:51'),
(74, 'reyyosua29', '864869', '928259', NULL, '', 'boleh juga', '2023-05-25', '00:24:46'),
(75, 'davinwahyuwardana', '433839', '950727', NULL, '', 'Ayo kak dibantu jawab!', '2023-06-06', '10:56:03'),
(76, 'deathstar', '433839', '084056', NULL, '', 'W3school sabi ', '2023-06-06', '10:56:19'),
(77, 'deathstar', '433839', '919359', NULL, '', 'W3school sabi ', '2023-06-06', '10:56:26'),
(78, 'davinwahyuwardana', '433839', '112336', '919359', '', 'Makasih kak sarannya^^', '2023-06-06', '10:57:51'),
(79, 'hudansah', '433839', '893903', '919359', '', 'Ohh iya bener kak, aku juga belajar disini kak', '2023-06-06', '10:58:20'),
(80, 'davin', '459647', '884914', NULL, '', 'hai', '2023-06-12', '18:36:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `namaweb` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `logo` varchar(300) NOT NULL,
  `developer` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`id`, `namaweb`, `url`, `logo`, `developer`) VALUES
(1, 'Telu Hub', 'https://hub.telutizen.my.id/', 'https://hub.telutizen.my.id/favicon.png', 'Qwertym');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `whatsapp` varchar(300) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `content` varchar(300) NOT NULL,
  `ip` varchar(300) NOT NULL,
  `device` varchar(300) NOT NULL,
  `dates` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `nama` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `whatsapp` varchar(300) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `content` varchar(300) NOT NULL,
  `ip` varchar(300) NOT NULL,
  `device` varchar(300) NOT NULL,
  `dates` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `foto` varchar(300) NOT NULL,
  `content` text NOT NULL,
  `tags` varchar(300) NOT NULL,
  `code` varchar(300) NOT NULL,
  `target` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `question`
--

INSERT INTO `question` (`id`, `username`, `title`, `foto`, `content`, `tags`, `code`, `target`, `date`, `time`) VALUES
(1, 'davin', 'Siapakah rektor Telkom University', 'https://hub.telutizen.my.id/dashboard/assets/images/question/user/davin-wardana-252610.png', 'Jadi siapa rektor dari Universitas ternama ini?', '374246', '252610', 'siapakah-rektor-telkom-university', '2023-03-08', '20:38:07'),
(2, 'namjong', 'Kepo', '', 'Apa nama kucing FIK', '374246', '728246', 'kepo', '2023-03-08', '21:32:15'),
(3, 'dimas', 'siapakah dosen ima ', '', 'siapakah dosen ima 46-03?', '374246,742879', '322315', 'siapakah-dosen-ima-', '2023-03-09', '09:47:52'),
(4, 'azka', 'Tester', '', 'Kenalan Dong', '265353', '839124', 'tester', '2023-03-09', '09:51:38'),
(5, 'azka', 'Tester lagi', '', 'Kenalan Dong Teh', '265353', '147096', 'tester', '2023-03-09', '09:51:50'),
(6, 'panji', 'Panji bertanya, Telutizen menjawab', '', 'Kapan libur hari raya dilaksanakan?', '374246', '972671', 'panji-bertanya-telutizen-menjawab', '2023-03-09', '09:58:18'),
(7, 'hudansah', 'kodingan', '', 'bagaimana membuat nested loop?', '312754,397094', '194006', 'kodingan', '2023-03-09', '10:31:15'),
(8, 'ihsanmiqbal', 'Lokasi Telkomedika', '', 'Ada yang tahu lokasi telkomedika?', '374246,533059', '823233', 'lokasi-telkomedika', '2023-03-09', '12:17:50'),
(9, 'davin', 'Ini pertanyaan keduaku', '', 'Kapan Indonesia merdeka?', '372989,011922', '459647', 'ini-pertanyaan-keduaku', '2023-03-09', '17:41:59'),
(10, 'hub', 'Cara query insert db', '', 'Menggunakan bahasa PHP dan MySQL', '684889,783909', '851949', 'cara-query-insert-db', '2023-03-09', '21:16:41'),
(11, 'hub', 'Lagu Indonesia Raya', '', 'Ada berapa bait?', '372989,011922', '832802', 'lagu-indonesia-raya', '2023-03-09', '21:19:11'),
(12, 'hub', 'Presiden Pertama Indonesia', '', 'Siapakah presiden pertama Negara Republik Indonesia?', '372989,011922', '892679', 'presiden-pertama-indonesia', '2023-03-09', '21:22:01'),
(13, 'hub', 'Presiden Indonesia tahun 2020', '', 'Siapakah presiden Negara Republik Indonesia tahun 2020?', '372989,011922', '529005', 'presiden-pertama-indonesia', '2023-03-09', '21:22:52'),
(14, 'zaidanazffa', 'Kapan saya punya pacar', '', 'Kapan saya punya pacar', '265353', '503496', 'kapan-saya-punya-pacar', '2023-03-09', '23:13:34'),
(15, 'zaidanazffa', 'Kenapa saya gak punya pacar', '', 'Kenapa saya gak punya pacar', '265353', '759963', 'kenapa-saya-gak-punya-pacar', '2023-03-09', '23:14:12'),
(16, 'hudansah', 'Di Mana Warung Podomoro', '', 'Ada yang tau nggk podomoro dimana?', '259556', '855701', 'di-mana-warung-podomoro', '2023-03-10', '09:38:26'),
(17, 'ar', 'Pngn semangat ngoding', '', 'Pngn semangat ngoding gimana caranya? Biar jdi front end :(', '312754,934290,943559,783909,684889', '420866', 'pngn-semangat-ngoding', '2023-03-10', '23:50:45'),
(18, 'add', 'Join Warkop ADD', 'https://hub.telutizen.my.id/dashboard/assets/images/question/user/davin-wardana-061438.png', 'Jalan mangga dua buka tiap hari!', '259556', '061438', 'join-warkop-add', '2023-03-11', '01:40:48'),
(19, 'hudansah', 'Orang Ganteng', '', 'Siapa orang ganteng di Rpla', '603176,968704', '151728', 'orang-ganteng', '2023-03-11', '13:53:49'),
(20, 'dimas', 'Emang ea', '', 'Lu sebenarnya siapa?', '', '083271', 'emang-ea', '2023-03-14', '16:42:17'),
(21, 'hudansah', 'Tult', '', 'Ada berapa lantai di tult?', '', '506224', 'tult', '2023-03-14', '18:14:27'),
(22, 'deathstar', 'Kapan ultah hudan', '', 'Kapannn', '', '404493', 'kapan-ultah-hudan', '2023-03-15', '11:50:28'),
(23, 'ariqathllh', 'Info', '', 'Info balap mlm ini spek standrt porting kirian\r\n', '442788', '425854', 'info', '2023-03-15', '12:58:26'),
(24, 'davin', 'Kenalan yok', '', 'namaku davin', '265353', '604539', 'kenalan-yok', '2023-03-18', '11:19:14'),
(25, 'davin', 'Kapan Telkom University berdiri?', '', 'Jelaskan tanggal, bulan & tahun dengan tepat.', '374246', '349387', 'kapan-telkom-university-berdiri', '2023-03-23', '13:58:06'),
(26, 'arradji', 'ubah theme ', '', 'cara ubah light theme hosting ke dark theme, udah sakit ni mata', '203033', '524487', 'ubah-theme-', '2023-03-28', '14:55:24'),
(27, 'elisa28', 'Data ODBC & My SQL', '', 'Cara menyambungkan Data ODBC dengan MySQL?? sampai sekarang masih gabisa nih, udh ngerjain project kerjaan selama 1 bulan ', '783909', '851761', 'data-odbc-my-sql', '2023-03-28', '14:57:27'),
(28, 'davin', 'Siapa nama tokoh kartun berikut?', 'https://hub.telutizen.my.id/dashboard/assets/images/question/user/davin-wardana-888522.jpg', 'Ada yang tau?', '471193', '888522', 'siapa-nama-tokoh-kartun-berikut', '2023-03-29', '21:32:19'),
(29, 'mfarisa2202', 'Halo semua', '', 'Apa kabar!', '265353', '771024', 'halo-semua', '2023-03-30', '02:43:38'),
(30, 'davinwardana', 'Penemu telepon', '', 'Siapakah penemu telepon?', '426118,011922', '400030', 'penemu-telepon', '2023-03-30', '04:08:49'),
(31, 'salsabila10', 'Tugas akhir', '', 'Tujuan membuat ini?', '', '196115', 'tugas-akhir', '2023-03-30', '21:37:16'),
(32, 'davin', 'Tentang Materi PT', 'https://hub.telutizen.my.id/dashboard/assets/images/question/user/davin-wardana-678598.png', 'Gimana cara membuat website dengan benar', '684889,397094', '678598', 'tentang-materi-pt', '2023-05-19', '16:03:47'),
(33, 'azka', 'WTS Tiket coldplay ', 'https://hub.telutizen.my.id/dashboard/assets/images/question/user/davin-wardana-761822.jpg', 'WTS tiket coldplay Read all ticket.\r\n\r\nCat 1, 2 tix\r\nCat 2, 5 tix\r\nCat 3, Sold out\r\nCat 4, 10 tix\r\nCat 6, 15 tix\r\nCat 7, 1 tix\r\nCat 8, 2 tix\r\n\r\nKhusus festival dm ig ke sszkaa_\r\n\r\nAll payment bisa mau cod juga bisa. Pake tanda surat kuasa dan tanda tangan materai. Untuk harga silahkan dm aja ke ig. Jangan kaget kalau overpriced karena saya memakai jastip juga.\r\n', '397094,756370,968704,928364,684889,637313,203033,023182', '761822', 'wts-tiket-coldplay-', '2023-05-21', '20:18:42'),
(34, 'hudansah', 'Bahasa inggris', '', 'Di mana nih tempat bagus untuk belajar bahasa inggris?', '384081,538972', '772211', 'bahasa-inggris', '2023-05-21', '21:09:20'),
(35, 'hudansah', 'Mahasiswa', '', 'Gimana sih rasanya jadi maba kemaren', '742879,885082,987199,088499', '964559', 'mahasiswa', '2023-05-21', '21:10:22'),
(36, 'hudansah', 'Asrama ', '', 'Asrama itu wajib gak sih bagi maba?', '127902,987199,866205,824641', '553465', 'asrama-', '2023-05-21', '21:11:43'),
(37, 'hudansah', 'Matematika', '', 'Susah gak sih matematika informatika di teknik itu?', '883578,744665,777773,121264,302210', '916954', 'matematika', '2023-05-21', '21:13:10'),
(38, 'hudansah', 'Lowongan pekerjaan', '', 'ada nggak sih yang pernah kerja di bumn?', '459349', '378327', 'lowongan-pekerjaan', '2023-05-21', '21:14:15'),
(39, 'hudansah', 'Klub', '', 'Bagaimana sih cara menganalisis suatu klub', '108782', '661876', 'klub', '2023-05-21', '21:15:56'),
(40, 'hudansah', 'Crud', '', 'gimana sih cara menggunakan crud', '943559,206767', '221877', 'crud', '2023-05-21', '21:16:46'),
(41, 'hudansah', 'Data', '', 'gimana sih cara mengelola suatu data', '729594', '949314', 'data', '2023-05-21', '21:17:17'),
(42, 'hudansah', 'Wisuda', '', 'suasana wisuda di tel-u gimana sih?', '806356', '849395', 'wisuda', '2023-05-21', '21:18:02'),
(43, 'hudansah', 'Website', '', 'Gimana sih cara jadi frond end developer', '369718', '101095', 'website', '2023-05-21', '21:18:39'),
(44, 'hudansah', 'Project', '', 'Ada enggak yaa cara nyelesaiin project dengan cepat', '300658', '343853', 'project', '2023-05-21', '21:19:41'),
(45, 'hudansah', 'Seni', '', 'Di telkom ada enggak ya fakultas seni', '789087', '169296', 'seni', '2023-05-21', '21:20:24'),
(46, 'hudansah', 'Merenung', '', 'Ada enggak sih tempat yang tenang di tel-u?', '181470', '506716', 'merenung', '2023-05-21', '21:22:40'),
(47, 'hudansah', 'Rantau', '', 'Ada enggak sih cara biar hemat di bandung?', '218615,626878', '804411', 'rantau', '2023-05-21', '21:23:25'),
(48, 'hudansah', 'Koding', '', 'gimana sih cara nya kita awal awal ngoding tu?', '050091,448093', '861310', 'koding', '2023-05-21', '21:24:16'),
(49, 'hudansah', 'Android', '', 'Bahasa apa sih yang di gunakan untuk bisa membuat aplikasi?', '850827,753032,212193', '356273', 'android', '2023-05-21', '21:26:10'),
(50, 'hudansah', 'Fakultas', '', 'Ada berapa sih fakultas di tel-u?', '789087,603176,610753,121264', '266799', 'fakultas', '2023-05-21', '21:27:15'),
(51, 'hudansah', 'Beasiswa', '', 'Apakah di tel-u ada banyak beasiswa', '584298', '092497', 'beasiswa', '2023-05-21', '21:27:56'),
(52, 'hudansah', 'Laptop', '', 'Dimana ya tempat service laptop yang bagus?', '309176,650954', '502149', 'laptop', '2023-05-21', '21:28:59'),
(53, 'hudansah', 'Jurusan', '', 'Apakah jurusan teknik industri itu bagus?', '395584', '805993', 'jurusan', '2023-05-21', '21:29:49'),
(54, 'hudansah', 'Kosan', '', 'Cara memasak dengan simple', '829091', '908029', 'kosan', '2023-05-21', '21:30:56'),
(55, 'hudansah', 'Kemendikbud', '', 'Apakah ada beasiswa kemendikbud', '584298,197682', '769200', 'kemendikbud', '2023-05-21', '21:32:04'),
(56, 'hudansah', 'Dropshipper', '', 'Ada yang tau enggak arti dari dropshipper itu apa?\r\n', '769012', '808121', 'dropshipper', '2023-05-21', '21:33:00'),
(57, 'hudansah', 'Website', '', 'Apakah bahasa pemrograman javascript itu berfungsi di suatu website?', '502424', '295932', 'website', '2023-05-21', '21:34:26'),
(58, 'reyyosua29', 'Tes', '', 'Tes', '', '864869', 'tes', '2023-05-25', '00:23:20'),
(59, 'reyyosua29', 'p', '', 'p', '', '096901', 'p', '2023-05-25', '00:23:44'),
(60, 'davinwahyuwardana', 'Belajar Membuat Website', 'https://hub.telutizen.my.id/dashboard/assets/images/question/user/davin-wardana-433839.png', 'Website yang rekomendasi dong untuk belajar dengan mudah', '934290,956796', '433839', 'belajar-membuat-website', '2023-06-06', '10:55:01'),
(61, 'davin', 'halo semua', '', 'haloooo', '', '494723', 'halo-semua', '2023-06-12', '19:20:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `code` varchar(300) NOT NULL,
  `code_answer` varchar(300) NOT NULL,
  `action` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`id`, `username`, `code`, `code_answer`, `action`, `date`, `time`) VALUES
(1, 'davin', '297322', '634637', 'Like', '2023-05-13', '16:25:51'),
(2, 'hub', '264777', '187235', 'Unlike', '2023-05-14', '22:19:21'),
(3, 'hub', '511078', '187235', 'Unlike', '2023-05-14', '22:20:42'),
(4, 'hub', '090497', '187235', 'Like', '2023-05-14', '22:21:08'),
(5, 'davin', '764165', '839285', 'Like', '2023-05-15', '10:50:49'),
(6, 'davin', '593119', '372975', 'Unlike', '2023-05-15', '10:51:19'),
(7, 'davin', '726371', '372975', 'Unlike', '2023-05-15', '10:51:32'),
(8, 'deathstar', '293238', '829409', 'Like', '2023-05-19', '15:59:51'),
(9, 'davin', '593764', '946422', 'Like', '2023-05-21', '20:25:11'),
(10, 'davinwahyuwardana', '593847', '919359', 'Like', '2023-06-06', '10:57:34'),
(11, 'hudansah', '790940', '919359', 'Like', '2023-06-06', '10:58:51'),
(12, 'davin', '118780', '919359', 'Like', '2023-06-12', '18:38:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `old` text NOT NULL,
  `new` text NOT NULL,
  `ip` varchar(300) NOT NULL,
  `device` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `signin`
--

CREATE TABLE `signin` (
  `id` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `ip` varchar(300) NOT NULL,
  `device` varchar(300) NOT NULL,
  `type` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `signin`
--

INSERT INTO `signin` (`id`, `username`, `ip`, `device`, `type`, `date`, `time`) VALUES
(1, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Manual', '2023-03-08', '22:12:34'),
(2, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-08', '00:00:22'),
(3, 'davin', '103.233.100.232', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 272.0.0.14.74 (iPhone12,3; iOS 16_3_1; id_ID; id-ID; scale=3.00; 1125x2436; 450101762)', 'Google', '2023-03-08', '00:00:22'),
(4, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:00'),
(5, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:00'),
(6, 'davin', '103.233.100.230', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:09'),
(7, 'deathstar', '103.233.100.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:09'),
(8, 'dimas', '103.233.100.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Manual', '2023-03-09', '09:46:31'),
(9, 'azka', '103.233.100.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Manual', '2023-03-09', '09:49:12'),
(10, 'panji', '103.233.100.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Manual', '2023-03-09', '09:56:20'),
(11, 'hudansah', '103.233.100.232', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Manual', '2023-03-09', '10:06:31'),
(12, 'davin', '103.233.100.230', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:11'),
(13, 'davin', '114.79.49.249', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-09', '00:00:11'),
(14, 'ihsanmiqbal', '114.122.105.228', 'Mozilla/5.0 (Linux; Android 12; SM-M236B) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-09', '12:16:47'),
(15, 'davin', '114.79.49.249', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-09', '12:17:45'),
(16, 'deathstar', '114.122.68.70', 'Mozilla/5.0 (Linux; Android 13; V2151 Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/110.0.5481.153 Mobile Safari/537.36 Instagram 272.0.0.16.73 Android (33/13; 440dpi; 1080x2250; vivo; V2151; V2151; qcom; in_ID; 450448608)', 'Google', '2023-03-09', '00:00:12'),
(17, 'deathstar', '103.233.100.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:13'),
(18, 'davin', '114.79.49.249', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-09', '00:00:13'),
(19, 'davin', '103.233.100.230', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:13'),
(20, 'davin', '103.233.100.229', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:15'),
(21, 'davin', '103.233.100.229', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-09', '00:00:16'),
(22, 'hub', '103.233.100.229', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:17'),
(23, 'davin', '103.233.100.229', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:21'),
(24, 'davin', '103.233.100.229', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-09', '00:00:21'),
(25, 'hub', '103.233.100.229', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:21'),
(26, 'hub', '103.233.100.229', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:21'),
(27, 'davin', '103.233.100.229', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-09', '00:00:22'),
(28, 'davin', '103.233.100.229', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-09', '00:00:22'),
(29, 'zaidanazffa', '149.113.221.72', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', 'Google', '2023-03-09', '00:00:23'),
(30, 'davin', '103.233.100.229', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-09', '00:00:23'),
(31, 'davin', '103.233.100.229', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-10', '00:22:48'),
(32, 'davin', '114.79.54.124', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-10', '00:00:07'),
(33, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-10', '00:00:08'),
(34, 'davin', '103.233.100.232', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-10', '00:00:08'),
(35, 'davin', '103.233.100.232', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-10', '00:00:08'),
(36, 'davin', '103.233.100.232', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-10', '00:00:08'),
(37, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-10', '00:00:08'),
(38, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-10', '00:00:08'),
(39, 'davin', '103.233.100.232', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-10', '00:00:08'),
(40, 'deathstar', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 13; V2151 Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/110.0.5481.153 Mobile Safari/537.36 Instagram 272.0.0.16.73 Android (33/13; 440dpi; 1080x2250; vivo; V2151; V2151; qcom; in_ID; 450448608)', 'Google', '2023-03-10', '00:00:08'),
(41, 'davin', '114.79.55.156', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-10', '09:35:11'),
(42, 'hudansah', '114.79.54.124', 'Mozilla/5.0 (Linux; Android 10; Infinix X655C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-10', '09:36:01'),
(43, 'azka', '114.79.54.124', 'Mozilla/5.0 (Linux; Android 13; SM-A336E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-10', '09:41:54'),
(44, 'davin', '103.233.100.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-10', '00:00:11'),
(45, 'davin', '103.233.100.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-10', '00:00:12'),
(46, 'davin', '114.79.49.197', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-10', '00:00:13'),
(47, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-10', '00:00:16'),
(48, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-10', '00:00:16'),
(49, 'deathstar', '103.233.100.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-10', '00:00:16'),
(50, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-10', '00:00:19'),
(51, 'davin', '103.233.100.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', 'Google', '2023-03-10', '00:00:23'),
(52, 'davin', '103.233.100.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-10', '00:00:23'),
(53, 'davin', '103.233.100.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:00'),
(54, 'davin', '103.233.100.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:00'),
(55, 'davin', '103.233.100.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:01'),
(56, 'hub', '103.233.100.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-11', '00:00:01'),
(57, 'davin', '103.233.100.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 273.0.0.16.70 (iPhone12,3; iOS 16_3_1; id_ID; id-ID; scale=3.00; 1125x2436; 452417278)', 'Google', '2023-03-11', '00:00:02'),
(58, 'davin', '103.233.100.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:02'),
(59, 'davin', '103.233.100.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:02'),
(60, 'hub', '114.79.49.197', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:07'),
(61, 'davin', '114.79.49.197', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:07'),
(62, 'davin', '114.79.55.77', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:08'),
(63, 'davin', '114.79.49.197', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:08'),
(64, 'davin', '36.79.198.166', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:09'),
(65, 'davin', '103.233.100.230', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36', 'Google', '2023-03-11', '00:00:10'),
(66, 'hudansah', '36.79.198.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-11', '00:00:13'),
(67, 'hudansah', '36.79.198.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Manual', '2023-03-11', '13:49:38'),
(68, 'davin', '36.79.198.166', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Mobile Safari/537.36', 'Google', '2023-03-11', '00:00:13'),
(69, 'dimas', '36.79.198.166', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Manual', '2023-03-11', '18:13:16'),
(70, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-11', '00:00:18'),
(71, 'zaidanazffa', '139.194.123.67', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', 'Google', '2023-03-11', '00:00:23'),
(72, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-12', '00:00:00'),
(73, 'azka', '36.65.246.199', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-12', '20:04:20'),
(74, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-12', '00:00:23'),
(75, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-03-13', '00:00:09'),
(76, 'panji', '103.233.100.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.69', 'Manual', '2023-03-13', '19:38:31'),
(77, 'panji', '103.233.100.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.69', 'Manual', '2023-03-13', '22:32:10'),
(78, 'davin', '180.244.139.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-14', '00:00:00'),
(79, 'panji', '103.233.100.229', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.69', 'Manual', '2023-03-14', '07:41:54'),
(80, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-14', '00:00:10'),
(81, 'davin', '180.244.139.112', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-14', '00:00:15'),
(82, 'davin', '180.244.139.112', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Google', '2023-03-14', '00:00:15'),
(83, 'davin', '180.244.139.112', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-14', '16:05:59'),
(84, 'dimas', '180.244.139.112', 'Mozilla/5.0 (Linux; U; Android 11; in-id; CPH2209 Build/RP1A.200720.011) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.88 Mobile Safari/537.36 HeyTapBrowser/45.9.3.1.1', 'Manual', '2023-03-14', '16:41:30'),
(85, 'hudansah', '103.233.100.236', 'Mozilla/5.0 (Linux; Android 10; Infinix X655C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-14', '18:09:10'),
(86, 'deathstar', '202.80.213.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-14', '00:00:23'),
(87, 'davin', '180.244.139.112', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'Google', '2023-03-14', '00:00:23'),
(88, 'deathstar', '103.233.100.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-15', '00:00:11'),
(89, 'hudansah', '103.233.100.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-15', '12:19:26'),
(90, 'deathstar', '103.233.100.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-15', '00:00:12'),
(91, 'hub', '103.233.100.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-15', '00:00:12'),
(92, 'hub', '103.233.100.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-15', '00:00:12'),
(93, 'ariqathllh', '114.122.107.213', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/110.0.5481.114 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-15', '12:56:44'),
(94, 'davin', '114.79.54.116', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.72 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-15', '12:59:05'),
(95, 'davin', '36.69.194.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-15', '00:00:23'),
(96, 'davin', '36.69.194.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-16', '00:00:00'),
(97, 'davin', '36.69.194.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.72 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-16', '00:36:34'),
(98, 'davin', '36.69.194.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-16', '00:00:00'),
(99, 'davin', '36.69.194.149', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-16', '00:00:00'),
(100, 'davin', '36.69.194.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.3 Mobile/15E148 Safari/604.1', 'Google', '2023-03-16', '00:00:00'),
(101, 'davin', '36.69.194.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.72 Mobile/15E148 Safari/604.1', 'Google', '2023-03-16', '00:00:01'),
(102, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-16', '00:00:15'),
(103, 'panji', '103.233.100.231', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36 Edg/111.0.1661.41', 'Manual', '2023-03-16', '22:13:43'),
(104, 'hub', '202.80.213.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-18', '00:00:09'),
(105, 'hub', '202.80.213.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-18', '00:00:09'),
(106, 'davin', '103.233.100.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 274.0.0.16.90 (iPhone12,3; iOS 16_3_1; id_ID; id-ID; scale=3.00; 1125x2436; 455531335)', 'Google', '2023-03-18', '00:00:11'),
(107, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-18', '00:00:11'),
(108, 'davin', '125.160.158.226', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-20', '00:00:11'),
(109, 'davin', '103.233.100.231', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.72 Mobile/15E148 Safari/604.1', 'Google', '2023-03-22', '00:00:00'),
(110, 'davin', '103.233.100.231', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-22', '00:00:00'),
(111, 'dimas', '125.160.158.226', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-22', '12:43:50'),
(112, 'hub', '202.80.213.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-23', '00:00:12'),
(113, 'hudansah', '103.233.100.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-23', '13:28:07'),
(114, 'hub', '103.180.122.35', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-23', '00:00:13'),
(115, 'davin', '103.180.122.35', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-23', '00:00:13'),
(116, 'deathstar', '202.80.213.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-23', '00:00:14'),
(117, 'hub', '103.180.122.35', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-23', '00:00:16'),
(118, 'hudansah', '103.233.100.228', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-24', '16:26:33'),
(119, 'davin', '103.180.122.35', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.72 Mobile/15E148 Safari/604.1', 'Google', '2023-03-25', '00:00:06'),
(120, 'hub', '140.213.2.170', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-03-25', '00:00:12'),
(121, 'davin', '140.213.2.170', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-03-25', '00:00:12'),
(122, 'davin', '103.233.100.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-28', '00:00:12'),
(123, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-28', '00:00:13'),
(124, 'hub', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-28', '00:00:14'),
(125, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-28', '00:00:16'),
(126, 'samsimarmata', '2404:8000:1024:dac:b2:76de:38be:2245', 'Mozilla/5.0 (Linux; Android 10; vivo 1935) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.50 Mobile Safari/537.36', 'Manual', '2023-03-28', '19:56:11'),
(127, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-28', '00:00:20'),
(128, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-28', '00:00:23'),
(129, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-29', '00:00:01'),
(130, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-29', '00:00:21'),
(131, 'davin', '103.233.100.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-29', '00:00:22'),
(132, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-29', '00:00:22'),
(133, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-29', '00:00:23'),
(134, 'davin', '103.233.100.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-30', '00:00:00'),
(135, 'davin', '103.233.100.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-30', '00:00:00'),
(136, 'davindocument', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-30', '02:37:40'),
(137, 'davindocument', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-30', '02:37:46'),
(138, 'vams', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-30', '02:42:33'),
(139, 'mfarisa2202', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-30', '02:43:18'),
(140, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:02'),
(141, 'davinwardana', '103.233.100.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-30', '03:11:26'),
(142, 'mrisqib2011', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-30', '03:40:05'),
(143, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:03'),
(144, 'davinwardana', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-30', '03:58:07'),
(145, 'davinwardana', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:04'),
(146, 'davin', '103.233.100.228', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-30', '00:00:04'),
(147, 'davin', '103.233.100.228', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:04'),
(148, 'davin', '103.233.100.228', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-30', '04:58:54'),
(149, 'davin', '140.213.45.168', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-03-30', '00:00:08'),
(150, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:09'),
(151, 'contact', '103.233.100.227', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-30', '09:57:55'),
(152, 'davin', '103.233.100.227', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-30', '10:22:07'),
(153, 'davin', '103.233.100.229', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:10'),
(154, 'hudansah', '103.233.100.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-30', '11:04:18'),
(155, 'davin', '140.213.45.160', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-30', '11:05:32'),
(156, 'deathstar', '114.122.73.157', 'Mozilla/5.0 (Linux; Android 13; V2151) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-03-30', '00:00:11'),
(157, 'ariqathllh', '103.233.100.235', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.72 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-30', '12:20:22'),
(158, 'davin', '140.213.45.180', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:12'),
(159, 'davin', '140.213.45.180', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-30', '12:24:17'),
(160, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:13'),
(161, 'davin', '103.233.100.235', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-03-30', '00:00:13'),
(162, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:13'),
(163, 'davin', '103.233.100.235', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-30', '13:57:20'),
(164, 'davinwardana', '140.213.45.186', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-03-30', '00:00:14'),
(165, 'davin', '140.213.39.192', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-30', '14:51:45'),
(166, 'davin', '114.5.248.43', 'Mozilla/5.0 (Linux; Android 13; RMX3393) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-30', '15:21:39'),
(167, 'contact', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-30', '15:22:47'),
(168, 'fikoaliy', '114.5.248.43', 'Mozilla/5.0 (Linux; Android 13; RMX3393) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-30', '15:23:53'),
(169, 'fikoaliy', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:15'),
(170, 'davinwardana', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:15'),
(171, 'contact', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:15'),
(172, 'davinwardana', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:18'),
(173, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-30', '18:11:02'),
(174, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-30', '19:38:25'),
(175, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Manual', '2023-03-30', '21:23:34'),
(176, 'salsabila10', '182.2.142.129', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_0_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.0 Mobile/15E148 Safari/604.1', 'Google', '2023-03-30', '00:00:21'),
(177, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-30', '00:00:23'),
(178, 'davinwardana', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:23'),
(179, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-30', '00:00:23'),
(180, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-30', '00:00:23'),
(181, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(182, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(183, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(184, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(185, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(186, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(187, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:00'),
(188, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:00'),
(189, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:00'),
(190, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:00'),
(191, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:00'),
(192, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(193, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(194, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(195, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(196, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(197, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(198, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(199, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(200, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(201, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(202, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(203, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(204, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(205, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(206, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(207, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(208, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(209, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(210, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(211, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(212, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(213, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(214, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(215, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(216, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(217, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(218, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(219, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(220, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(221, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(222, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(223, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(224, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(225, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(226, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(227, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(228, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(229, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(230, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(231, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(232, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(233, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(234, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(235, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(236, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(237, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(238, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(239, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(240, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(241, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(242, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(243, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(244, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(245, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(246, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(247, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(248, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00');
INSERT INTO `signin` (`id`, `username`, `ip`, `device`, `type`, `date`, `time`) VALUES
(249, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(250, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(251, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(252, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(253, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(254, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(255, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(256, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(257, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(258, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(259, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(260, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(261, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(262, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(263, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(264, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(265, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(266, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(267, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(268, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(269, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(270, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(271, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(272, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(273, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(274, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(275, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(276, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(277, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(278, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(279, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(280, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(281, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(282, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(283, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(284, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(285, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(286, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(287, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(288, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(289, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(290, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(291, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(292, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(293, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(294, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(295, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(296, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(297, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(298, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(299, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(300, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(301, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(302, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(303, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(304, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(305, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(306, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(307, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(308, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(309, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(310, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(311, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(312, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(313, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(314, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(315, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(316, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(317, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(318, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(319, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(320, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(321, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(322, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(323, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(324, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(325, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(326, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(327, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(328, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(329, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(330, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(331, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(332, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(333, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(334, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:00'),
(335, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:00'),
(336, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:01'),
(337, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(338, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:01'),
(339, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(340, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-31', '01:10:33'),
(341, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:01'),
(342, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:01'),
(343, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(344, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:01'),
(345, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(346, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(347, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(348, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(349, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(350, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(351, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(352, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(353, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(354, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(355, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(356, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(357, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(358, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(359, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(360, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(361, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(362, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(363, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(364, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(365, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(366, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(367, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(368, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(369, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(370, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(371, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(372, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(373, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(374, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(375, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(376, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(377, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(378, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:01'),
(379, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:01'),
(380, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:01'),
(381, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(382, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(383, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(384, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(385, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(386, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(387, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(388, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(389, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(390, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(391, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(392, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(393, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(394, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(395, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(396, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(397, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(398, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(399, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(400, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(401, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(402, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(403, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(404, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(405, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(406, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(407, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(408, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(409, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(410, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(411, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(412, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(413, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(414, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(415, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(416, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(417, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(418, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(419, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(420, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(421, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(422, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(423, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(424, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(425, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(426, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(427, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(428, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(429, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(430, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(431, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:01'),
(432, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(433, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(434, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(435, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(436, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(437, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(438, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(439, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(440, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(441, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(442, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(443, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(444, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(445, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(446, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(447, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(448, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(449, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(450, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(451, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(452, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(453, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(454, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(455, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(456, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:01'),
(457, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:01'),
(458, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(459, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(460, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(461, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(462, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(463, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(464, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(465, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:01'),
(466, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(467, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(468, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(469, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-31', '01:43:29'),
(470, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(471, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 275.1.0.17.100 (iPhone12,3; iOS 16_4; id_ID; id-ID; scale=3.00; 1125x2436; 458156275) NW/3', 'Google', '2023-03-31', '00:00:01'),
(472, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 Instagram 275.1.0.17.100 (iPhone12,3; iOS 16_4; id_ID; id-ID; scale=3.00; 1125x2436; 458156275) NW/3', 'Cookie', '2023-03-31', '00:00:01'),
(473, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(474, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(475, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(476, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(477, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-31', '01:49:45'),
(478, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(479, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:01'),
(480, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-31', '01:56:15'),
(481, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:02'),
(482, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:02'),
(483, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:02'),
(484, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:02'),
(485, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:02'),
(486, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:02'),
(487, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:02'),
(488, 'davinwardana', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:02'),
(489, 'davinplatform', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-31', '02:11:14'),
(490, 'davinplatform', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:02'),
(491, 'davinplatform', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-03-31', '02:13:07'),
(492, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:02'),
(493, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:02');
INSERT INTO `signin` (`id`, `username`, `ip`, `device`, `type`, `date`, `time`) VALUES
(494, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Manual', '2023-03-31', '02:14:40'),
(495, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:02'),
(496, 'davinwardana', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:02'),
(497, 'davinwardana', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:02'),
(498, 'davinwardana', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:02'),
(499, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:02'),
(500, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:02'),
(501, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:02'),
(502, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:02'),
(503, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:02'),
(504, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:02'),
(505, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:09'),
(506, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:10'),
(507, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:10'),
(508, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:10'),
(509, 'davinwardana', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:10'),
(510, 'davinwardana', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:10'),
(511, 'davinwardana', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:10'),
(512, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:11'),
(513, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:11'),
(514, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Google', '2023-03-31', '00:00:11'),
(515, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:11'),
(516, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:11'),
(517, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:11'),
(518, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:11'),
(519, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:11'),
(520, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:18'),
(521, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-03-31', '00:00:19'),
(522, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:20'),
(523, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-03-31', '00:00:21'),
(524, 'davin', '103.233.100.233', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-03-31', '00:00:23'),
(525, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:01'),
(526, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-04-01', '00:00:02'),
(527, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(528, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(529, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(530, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(531, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(532, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(533, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(534, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(535, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(536, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(537, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(538, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(539, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(540, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(541, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(542, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(543, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(544, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(545, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(546, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(547, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(548, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(549, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(550, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(551, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(552, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(553, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(554, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(555, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(556, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(557, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(558, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(559, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(560, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(561, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(562, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(563, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(564, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(565, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(566, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:02'),
(567, 'davin', '140.213.37.107', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-01', '00:00:13'),
(568, 'davin', '103.233.100.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-02', '00:00:14'),
(569, 'davin', '103.233.100.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-02', '00:00:18'),
(570, 'davin', '103.233.100.234', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-04-02', '00:00:20'),
(571, 'hudansah', '103.233.100.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-04-02', '22:20:08'),
(572, 'davin', '103.233.100.234', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Manual', '2023-04-03', '00:00:01'),
(573, 'davin', '103.233.100.234', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-04-03', '00:00:01'),
(574, 'hudansah', '103.233.100.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-03', '00:00:08'),
(575, 'davin', '103.233.100.227', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-04-03', '00:00:10'),
(576, 'davin', '103.233.100.227', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-04-03', '00:00:10'),
(577, 'davin', '140.213.39.133', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-03', '00:00:14'),
(578, 'akbarris1305', '140.213.16.76', 'Mozilla/5.0 (Linux; Android 13; SM-A336E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-04-03', '18:02:00'),
(579, 'azkaf.a1305', '140.213.16.76', 'Mozilla/5.0 (Linux; Android 13; SM-A336E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-04-03', '18:02:29'),
(580, 'azkaf.a1305', '140.213.16.76', 'Mozilla/5.0 (Linux; Android 13; SM-A336E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-04-03', '00:00:18'),
(581, 'azka', '140.213.16.76', 'Mozilla/5.0 (Linux; Android 13; SM-A336E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Google', '2023-04-03', '18:03:20'),
(582, 'azkaf.a1305', '180.244.128.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-04-03', '19:17:45'),
(583, 'azka', '180.244.128.216', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Google', '2023-04-03', '19:18:38'),
(584, 'deathstar', '103.213.129.209', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Manual', '2023-04-03', '00:00:21'),
(585, 'davin', '140.213.41.69', 'Mozilla/5.0 (Linux; Android 10; CPH1945) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-04-04', '00:00:19'),
(586, 'davin', '103.233.100.230', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-05', '00:00:06'),
(587, 'azka', '36.72.197.217', 'Mozilla/5.0 (Linux; Android 13; SM-A336E) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-04-07', '00:00:22'),
(588, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-08', '00:00:21'),
(589, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-09', '00:00:00'),
(590, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-09', '00:00:02'),
(591, 'davinplatform', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-09', '00:00:19'),
(592, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-09', '00:00:21'),
(593, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-09', '00:00:22'),
(594, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-10', '00:00:00'),
(595, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-10', '00:00:20'),
(596, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-10', '00:00:23'),
(597, 'davin', '103.233.100.227', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/111.0.5563.101 Mobile/15E148 Safari/604.1', 'Cookie', '2023-04-11', '00:00:01'),
(598, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'Cookie', '2023-04-12', '00:00:18'),
(599, 'davin', '103.233.100.231', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Manual', '2023-04-13', '00:00:20'),
(600, 'davin', '103.233.100.231', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cookie', '2023-04-13', '00:00:20'),
(601, 'deathstar', '114.122.102.25', 'Mozilla/5.0 (Linux; Android 13; V2151) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Manual', '2023-04-16', '00:00:14'),
(602, 'davin', '103.180.122.35', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/112.0.5615.46 Mobile/15E148 Safari/604.1', 'Cookie', '2023-04-20', '00:00:16'),
(603, 'azka', '2001:448a:20a0:d562:c819:36a3:c3f7:1256', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cookie', '2023-04-27', '00:00:18'),
(604, 'davin', '114.79.3.223', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cookie', '2023-04-30', '00:00:20'),
(605, 'davin', '103.180.122.35', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cookie', '2023-04-30', '00:00:22'),
(606, 'davin', '103.233.100.227', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/112.0.5615.167 Mobile/15E148 Safari/604.1', 'Cookie', '2023-05-03', '00:00:21'),
(607, 'davin', '114.79.55.227', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/112.0.5615.167 Mobile/15E148 Safari/604.1', 'Cookie', '2023-05-04', '00:00:10'),
(608, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(609, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Manual', '2023-05-04', '00:00:11'),
(610, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(611, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(612, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(613, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(614, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(615, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(616, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(617, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(618, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(619, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(620, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(621, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(622, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(623, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(624, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(625, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(626, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(627, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(628, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(629, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(630, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(631, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(632, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(633, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(634, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(635, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(636, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(637, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(638, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(639, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(640, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(641, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(642, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(643, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(644, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(645, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(646, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(647, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(648, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(649, 'davin', '103.233.100.232', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:11'),
(650, 'davin', '103.233.100.234', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-04', '00:00:15'),
(651, 'davin', '103.233.100.228', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-05', '00:00:08'),
(652, 'davin', '103.233.100.228', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-05', '00:00:09'),
(653, 'davin', '103.233.100.231', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-05', '00:00:11'),
(654, 'davin', '103.233.100.231', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cookie', '2023-05-05', '00:00:12'),
(655, 'davin', '103.233.100.232', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cookie', '2023-05-05', '00:00:14'),
(656, 'hudansah', '103.233.100.234', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36', 'Cookie', '2023-05-05', '00:00:15'),
(657, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-05', '00:00:15'),
(658, 'davin', '103.233.100.233', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Manual', '2023-05-05', '00:00:15'),
(659, 'hudansah', '103.233.100.230', 'Mozilla/5.0 (Linux; Android 10; Infinix X655C) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Google', '2023-05-05', '15:54:36'),
(660, 'hudansah', '103.233.100.230', 'Mozilla/5.0 (Linux; Android 10; Infinix X655C Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.47 Mobile Safari/537.36', 'Manual', '2023-05-05', '00:00:16'),
(661, 'davin', '103.233.100.231', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Manual', '2023-05-05', '00:00:22'),
(662, 'davin', '103.233.100.231', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-05-05', '00:00:22'),
(663, 'davin', '103.233.100.231', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-05', '00:00:22'),
(664, 'davin', '103.233.100.231', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/112.0.5615.167 Mobile/15E148 Safari/604.1', 'Cookie', '2023-05-06', '00:00:10'),
(665, 'davin', '103.233.100.231', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/112.0.5615.167 Mobile/15E148 Safari/604.1', 'Cookie', '2023-05-06', '00:00:13'),
(666, 'davin', '103.233.100.231', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/112.0.5615.135 Mobile Safari/537.36', 'Cookie', '2023-05-06', '00:00:22'),
(667, 'davin', '103.233.100.231', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cookie', '2023-05-06', '00:00:23'),
(668, 'davin', '103.233.100.231', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/113.0.5672.69 Mobile/15E148 Safari/604.1', 'Cookie', '2023-05-07', '00:00:02'),
(669, 'davin', '114.79.54.149', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/113.0.5672.69 Mobile/15E148 Safari/604.1', 'Cookie', '2023-05-07', '00:00:17'),
(670, 'davin', '36.79.195.88', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) CriOS/113.0.5672.69 Mobile/15E148 Safari/604.1', 'Cookie', '2023-05-07', '00:00:19'),
(671, 'davin', '103.233.100.229', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cookie', '2023-05-12', '00:00:15'),
(672, 'deathstar', '114.122.108.180', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Manual', '2023-05-12', '00:00:16'),
(673, 'hub', '114.122.117.72', 'Mozilla/5.0 (Linux; Android 13; V2151) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Manual', '2023-05-12', '00:00:16'),
(674, 'davin', '103.233.100.227', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cookie', '2023-05-13', '00:00:15'),
(675, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cookie', '2023-05-14', '00:00:22'),
(676, 'hub', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Manual', '2023-05-14', '00:00:22'),
(677, 'davin', '103.233.100.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cookie', '2023-05-15', '00:00:10'),
(678, 'riefky.ahmad11', '103.233.100.235', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Google', '2023-05-18', '09:38:25'),
(679, 'davin', '103.233.100.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cookie', '2023-05-19', '00:00:15'),
(680, 'davin', '103.233.100.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Manual', '2023-05-19', '00:00:15'),
(681, 'davin', '103.233.100.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Google', '2023-05-19', '15:52:00'),
(682, 'davin', '103.233.100.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Google', '2023-05-19', '15:52:06'),
(683, 'deathstar', '114.122.107.45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Google', '2023-05-19', '15:56:31'),
(684, 'hudansah', '103.233.100.231', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-05-19', '00:00:16'),
(685, 'davin', '103.233.100.234', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Manual', '2023-05-19', '00:00:16'),
(686, 'samsimarmata', '103.233.100.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Google', '2023-05-19', '16:02:49'),
(687, 'azka', '114.122.106.119', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-05-21', '00:00:20'),
(688, 'deathstar', '202.80.214.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cookie', '2023-05-21', '00:00:20'),
(689, 'davin', '103.233.100.230', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/113.0.5672.77 Mobile Safari/537.36', 'Cookie', '2023-05-21', '00:00:20'),
(690, 'davin', '103.233.100.230', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/113.0.5672.77 Mobile Safari/537.36', 'Cookie', '2023-05-21', '00:00:20'),
(691, 'davin', '103.233.100.230', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/113.0.5672.77 Mobile Safari/537.36', 'Manual', '2023-05-21', '00:00:20'),
(692, 'davin', '103.233.100.230', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/113.0.5672.77 Mobile Safari/537.36', 'Manual', '2023-05-21', '00:00:20'),
(693, 'hudansah', '103.233.100.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Cookie', '2023-05-21', '00:00:20'),
(694, 'hudansah', '103.233.100.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Google', '2023-05-21', '20:57:56'),
(695, 'davin', '103.233.100.231', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/113.0.5672.77 Mobile Safari/537.36', 'Cookie', '2023-05-24', '00:00:00'),
(696, 'reyyosua29', '103.233.100.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Google', '2023-05-25', '00:21:32'),
(697, 'davin', '103.233.100.233', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', 'Manual', '2023-05-26', '00:00:14'),
(698, 'davin', '103.174.122.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Cookie', '2023-06-06', '00:00:09'),
(699, 'davin', '103.174.122.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Google', '2023-06-06', '09:18:40'),
(700, 'hudansah', '103.174.122.42', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Mobile Safari/537.36', 'Cookie', '2023-06-06', '00:00:10'),
(701, 'deathstar', '103.174.122.42', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Mobile Safari/537.36', 'Manual', '2023-06-06', '00:00:10'),
(702, 'davin', '103.174.122.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Manual', '2023-06-06', '00:00:17'),
(703, 'deathstar', '103.233.100.233', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Cookie', '2023-06-08', '00:00:11'),
(704, 'davin', '103.174.122.42', 'Mozilla/5.0 (Linux; Android 10; CPH1945 Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/113.0.5672.162 Mobile Safari/537.36', 'Cookie', '2023-06-08', '00:00:16'),
(705, 'hudansah', '103.233.100.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Cookie', '2023-06-10', '00:00:19'),
(706, 'davin', '103.174.122.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Cookie', '2023-06-12', '00:00:18'),
(707, 'davin', '103.174.122.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Cookie', '2023-06-12', '00:00:18'),
(708, 'hubtelu', '103.174.122.42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'Google', '2023-06-12', '19:34:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `content` varchar(300) NOT NULL,
  `target` varchar(300) NOT NULL,
  `code` varchar(300) NOT NULL,
  `visit` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `content`, `target`, `code`, `visit`, `username`, `date`, `time`) VALUES
(1, 'MySQL', 'mysql', '783909', 61, 'davin', '2023-03-09', '19:52:22'),
(2, 'PHP', 'php', '684889', 10, 'davin', '2023-03-09', '20:27:14'),
(3, 'Kemerdekaan Indonesia', 'kemerdekaan-indonesia', '372989', 13, 'davin', '2023-03-09', '20:31:02'),
(4, 'Sejarah Indonesia', 'sejarah-indonesia', '011922', 9, 'hub', '2023-03-09', '21:18:51'),
(5, 'Telkom University', 'telkom-university', '374246', 24, 'hub', '2023-03-09', '21:52:50'),
(6, 'Matematika', 'matematika', '744665', 1, 'hub', '2023-03-09', '21:52:58'),
(7, 'Kalkulus', 'kalkulus', '212193', 1, 'hub', '2023-03-09', '21:53:00'),
(8, 'Bahasa Inggris', 'bahasa-inggris', '384081', 0, 'hub', '2023-03-09', '21:54:17'),
(9, 'Belajar CRUD', 'belajar-crud', '943559', 33, 'hub', '2023-03-09', '21:54:26'),
(10, 'CRUD Menggunakan PHP', 'crud-menggunakan-php', '206767', 1, 'hub', '2023-03-09', '21:54:32'),
(11, 'Gedung Telkom University', 'gedung-telkom-university', '533059', 7, 'hub', '2023-03-09', '21:55:00'),
(12, 'PKKMB Telkom University', 'pkkmb-telkom-university', '742879', 6, 'hub', '2023-03-09', '21:55:11'),
(13, 'Rekayasa Perangkat Lunak Aplikasi', 'rekayasa-perangkat-lunak-aplikasi', '968704', 5, 'davin', '2023-03-09', '23:03:32'),
(14, 'Kenalan', 'kenalan', '265353', 11, 'davin', '2023-03-09', '23:04:03'),
(15, 'Coding', 'coding', '312754', 29, 'davin', '2023-03-09', '23:05:03'),
(16, 'Programmer', 'programmer', '397094', 5, 'davin', '2023-03-09', '23:05:07'),
(17, 'Trading', 'trading', '928364', 0, 'davin', '2023-03-09', '23:27:03'),
(18, 'Fakultas Teknik', 'fakultas-teknik', '121264', 0, 'davin', '2023-03-09', '23:27:29'),
(19, 'Artificial Intelligence', 'artificial-intelligence', '538972', 0, 'davin', '2023-03-09', '23:29:19'),
(20, 'Jejak Digital', 'jejak-digital', '637313', 0, 'davin', '2023-03-09', '23:29:25'),
(21, 'Kemdikbud', 'kemdikbud', '197682', 0, 'davin', '2023-03-09', '23:29:29'),
(22, 'Beasiswa', 'beasiswa', '584298', 1, 'davin', '2023-03-09', '23:47:21'),
(23, 'BUMN', 'bumn', '459349', 0, 'davin', '2023-03-09', '23:47:25'),
(24, 'Web Development', 'web-development', '934290', 8, 'davin', '2023-03-10', '00:11:44'),
(25, 'Front End Developer', 'front-end-developer', '369718', 0, 'davin', '2023-03-10', '00:11:52'),
(26, 'Back End Developer', 'back-end-developer', '203033', 7, 'davin', '2023-03-10', '00:12:01'),
(27, 'Matematika Informatika', 'matematika-informatika', '777773', 1, 'davin', '2023-03-10', '08:18:33'),
(28, 'Matematika Dasar', 'matematika-dasar', '302210', 1, 'davin', '2023-03-10', '08:18:50'),
(29, 'Algoritma Pemrograman', 'algoritma-pemrograman', '448093', 0, 'davin', '2023-03-10', '08:19:14'),
(30, 'Tempat Makan Terdekat', 'tempat-makan-terdekat', '259556', 22, 'hudansah', '2023-03-10', '09:37:18'),
(31, 'Service Laptop', 'service-laptop', '309176', 0, 'davin', '2023-03-10', '12:18:29'),
(32, 'Asrama Telkom University', 'asrama-telkom-university', '127902', 0, 'davin', '2023-03-10', '13:26:03'),
(33, 'Fakultas Ilmu Terapan', 'fakultas-ilmu-terapan', '603176', 2, 'davin', '2023-03-11', '09:08:42'),
(34, 'Java', 'java', '050091', 0, 'davin', '2023-03-11', '09:09:39'),
(35, 'Kotlin', 'kotlin', '850827', 0, 'davin', '2023-03-11', '09:09:43'),
(36, 'Javascript', 'javascript', '502424', 2, 'davin', '2023-03-11', '09:09:49'),
(37, 'Wisuda 2023', 'wisuda-2023', '806356', 0, 'davin', '2023-03-11', '20:04:07'),
(38, 'Photografer', 'photografer', '650954', 0, 'davin', '2023-03-11', '20:04:29'),
(39, 'Proyek Tingkat', 'proyek-tingkat', '300658', 2, 'davin', '2023-03-11', '20:04:42'),
(40, 'Jual Laptop', 'jual-laptop', '756370', 0, 'davin', '2023-03-14', '15:27:20'),
(41, 'Gedung Tult', 'gedung-tult', '023182', 0, 'hudansah', '2023-03-14', '18:15:03'),
(42, 'Asrama Putra', 'asrama-putra', '824641', 0, 'hudansah', '2023-03-14', '18:15:19'),
(43, 'Asrama Putri', 'asrama-putri', '866205', 0, 'hudansah', '2023-03-14', '18:15:27'),
(44, 'Fakultas rekayasa industri', 'fakultas-rekayasa-industri', '789087', 0, 'hudansah', '2023-03-14', '18:15:47'),
(45, 'Danau galau', 'danau-galau', '181470', 0, 'hudansah', '2023-03-14', '18:15:53'),
(46, 'Fakultas elektro', 'fakultas-elektro', '610753', 1, 'hudansah', '2023-03-14', '18:16:19'),
(47, 'P balap', 'p-balap', '442788', 4, 'ariqathllh', '2023-03-15', '12:57:52'),
(48, 'Dropshipper', 'dropshipper', '769012', 2, 'davin', '2023-03-29', '21:26:14'),
(49, 'Kartun', 'kartun', '471193', 1, 'davin', '2023-03-29', '21:31:42'),
(50, 'Resep Makanan', 'resep-makanan', '829091', 0, 'davin', '2023-03-30', '01:25:44'),
(51, 'Tips Hemat', 'tips-hemat', '218615', 0, 'davin', '2023-03-30', '01:25:50'),
(52, 'Anak Kos', 'anak-kos', '626878', 3, 'davin', '2023-03-30', '01:25:57'),
(53, 'Ajax', 'ajax', '108782', 1, 'davin', '2023-03-30', '02:24:11'),
(54, 'Jquery', 'jquery', '753032', 0, 'davin', '2023-03-30', '02:24:21'),
(55, 'Sejarah', 'sejarah', '426118', 3, 'davinwardana', '2023-03-30', '04:08:27'),
(56, 'Sistem Basis Data', 'sistem-basis-data', '729594', 0, 'davin', '2023-03-30', '13:49:35'),
(57, 'Maba', 'maba', '987199', 0, 'davin', '2023-03-30', '21:35:29'),
(58, 'PKKMB', 'pkkmb', '885082', 0, 'davin', '2023-03-30', '21:35:40'),
(59, 'PKKMB 2023', 'pkkmb-2023', '088499', 1, 'davin', '2023-03-30', '21:35:47'),
(60, 'Teknik Industri', 'teknik-industri', '395584', 0, 'davin', '2023-03-31', '21:43:33'),
(61, 'Informatika', 'informatika', '883578', 2, 'davin', '2023-03-31', '21:43:38'),
(62, 'Website', 'website', '956796', 12, 'davinwahyuwardana', '2023-06-06', '10:49:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `foto` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `sebagai` text NOT NULL,
  `twitter` varchar(300) NOT NULL,
  `instagram` varchar(300) NOT NULL,
  `linkedin` varchar(300) NOT NULL,
  `youtube` varchar(300) NOT NULL,
  `facebook` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `teams`
--

INSERT INTO `teams` (`id`, `foto`, `username`, `sebagai`, `twitter`, `instagram`, `linkedin`, `youtube`, `facebook`) VALUES
(1, 'img/davin.jpg', 'davin', 'UI/X Designer\r\nFront End Developer\r\nBack End Developer\r\nDatabase Compiler', 'https://davinwardana.com/s/twitter', 'https://davinwardana.com/s/instagram', 'https://davinwardana.com/s/linkedin', 'https://davinwardana.com/s/youtube', 'https://davinwardana.com/s/facebook'),
(2, 'img/hudan.jpg', 'hudansah', 'UI/X Designer', '', 'https://instagram.com/', 'https://www.linkedin.com/in/', 'https://youtube.com/@', ''),
(3, 'img/fadhil.jpg', 'deathstar', 'UI/X Designer', '', 'https://instagram.com/', 'https://www.linkedin.com/in/', 'https://youtube.com/@', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `whatsapp`
--

CREATE TABLE `whatsapp` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `apikey` varchar(200) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `notification` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `whatsapp`
--

INSERT INTO `whatsapp` (`id`, `name`, `url`, `apikey`, `sender`, `notification`) VALUES
(1, 'Davin', 'https://whatsapp.webhook.my.id/send-message', '7ClCJhQjMeqTsMmhvrAOKFeAXopGNt', '62851564936692', '6285156493669');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indeks untuk tabel `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_answer_account` (`username`),
  ADD KEY `idx_code` (`code`),
  ADD KEY `idx_code_answer` (`code_answer`),
  ADD KEY `fk_answer_answer` (`code_comment`);

--
-- Indeks untuk tabel `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_question_account` (`username`),
  ADD KEY `idx_code` (`code`);

--
-- Indeks untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rating_answer` (`code_answer`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_setting_account` (`username`);

--
-- Indeks untuk tabel `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_signin_account` (`username`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tags_account` (`username`),
  ADD KEY `idx_code` (`code`);

--
-- Indeks untuk tabel `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_teams_account` (`username`);

--
-- Indeks untuk tabel `whatsapp`
--
ALTER TABLE `whatsapp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT untuk tabel `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `signin`
--
ALTER TABLE `signin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=709;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `whatsapp`
--
ALTER TABLE `whatsapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `fk_answer_account` FOREIGN KEY (`username`) REFERENCES `account` (`username`),
  ADD CONSTRAINT `fk_answer_answer` FOREIGN KEY (`code_comment`) REFERENCES `answer` (`code_answer`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_answer_question` FOREIGN KEY (`code`) REFERENCES `question` (`code`);

--
-- Ketidakleluasaan untuk tabel `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `fk_question_account` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Ketidakleluasaan untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_rating_answer` FOREIGN KEY (`code_answer`) REFERENCES `answer` (`code_answer`);

--
-- Ketidakleluasaan untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD CONSTRAINT `fk_setting_account` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Ketidakleluasaan untuk tabel `signin`
--
ALTER TABLE `signin`
  ADD CONSTRAINT `fk_signin_account` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Ketidakleluasaan untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `fk_tags_account` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Ketidakleluasaan untuk tabel `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `fk_teams_account` FOREIGN KEY (`username`) REFERENCES `account` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
