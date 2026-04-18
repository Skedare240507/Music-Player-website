-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2025 at 02:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'On Repeat', 2, 4, 'assets/images/artwork/onrepeat.jpg'),
(2, 'Radio', 5, 10, 'assets/images/artwork/b4.jfif'),
(3, 'Rock Music', 3, 1, 'assets/images/artwork/rock.jpg'),
(4, 'Animal Movie Special', 2, 9, 'assets/images/artwork/b9.jpg'),
(5, 'Editor\'s Pick', 1, 3, 'assets/images/artwork/b8.jfif'),
(6, 'Top Hits', 3, 6, 'assets/images/artwork/b1.jfif'),
(7, 'Recommended for Today', 4, 7, 'assets/images/artwork/sweet.jpg'),
(10, 'Fav Arjit Sing', 4, 4, 'assets/images/artwork/arjit.jpg'),
(11, 'Best of shreya', 1, 4, 'assets/images/artwork/shreya.jpg'),
(12, 'Shubh', 6, 12, 'assets/images/artwork/Shubh.jpeg'),
(13, 'Diljit Dosanjh\'s HITS', 7, 12, 'assets\\images\\artwork\\sk.jpg'),
(14, 'Trending Telgu', 8, 14, 'assets\\images\\artwork\\Trending Telgu.jpeg'),
(15, 'HOT HITS MARATHI', 26, 15, 'assets\\images\\artwork\\HOT HITS MARATHI.jpeg'),
(16, 'Trending Punjabi', 2, 12, 'assets\\images\\artwork\\Karan Aujla.jpg'),
(17, 'Triple OG', 44, 4, 'assets\\images\\artwork\\og.jpg'),
(18, 'Bollywood Top Hits', 45, 16, 'assets\\images\\artwork\\top hits.jpeg'),
(19, 'Love Mashup', 53, 17, 'assets\\images\\artwork\\lovemashup.jpg'),
(20, '90s HITS', 65, 18, 'assets\\images\\artwork\\alka.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Shreya Ghoshal'),
(2, 'Sahil Kedare'),
(3, 'Anurag'),
(4, 'Arjit SIngh'),
(5, 'Vikas'),
(6, 'Shubh'),
(7, 'Diljit Dosanjh'),
(8, 'sai abhyankkar'),
(9, 'Anirudha Ravichandar'),
(10, 'Shilpa Rao'),
(11, 'Devi Sri Prasad'),
(12, 'Sahithi Changanti'),
(13, 'Vishal Mishra'),
(14, 'Indravathi Chauhan'),
(15, 'Anurag Kulkarni'),
(16, 'Sunidhi Chauhan'),
(17, 'Devdutta Manisha Baji'),
(18, 'NS Production'),
(19, 'Swapnil Bandodkar'),
(20, 'Prashant Nakti'),
(21, 'Karan Shelke'),
(22, 'Radha Kudhe'),
(23, 'Chandrakant Mane'),
(24, 'Vaishali Samant'),
(25, 'Sanju Rathod'),
(26, 'SK Production'),
(27, 'Sanju Rathod'),
(28, 'Prashant Nakti'),
(29, 'SK Production'),
(30, 'Prabh Singh'),
(31, 'Sidhu MooseWala'),
(32, 'Parmish Varma'),
(33, 'Karan  Aujla'),
(34, 'Chani Natan'),
(35, 'Krish Rao'),
(36, 'MC STAN'),
(37, 'YO YO Honey Singh'),
(38, 'Harddy Sandhu'),
(39, 'Sharn'),
(40, 'Riar Saab'),
(41, 'Dhanda Nyoliwala'),
(42, 'Juss'),
(43, 'Adaab Kharoud'),
(44, 'DIVINE'),
(45, 'AK Production'),
(46, 'Sachin Jigar'),
(47, 'Badshah'),
(48, 'Anuarg saiki'),
(49, 'Karan sehmbi'),
(50, 'Pritam'),
(51, 'Jubin nautiyal'),
(52, 'Jasleen Royal'),
(53, 'Pritam SIngh'),
(54, 'KK'),
(55, 'Javed Mohsin'),
(56, 'Rahat fatheh ali khan'),
(57, 'Akhil Sachdeva'),
(58, 'Guru Randhawa'),
(59, 'Tanishk Baghicha'),
(60, 'Ram Sampath'),
(61, 'Ankit Tiwari'),
(62, 'MixSingh'),
(63, 'Harnoor'),
(64, 'Alka Yagnik'),
(65, 'Udit narayan'),
(66, 'Kumar Sanu'),
(67, 'Anuradha Paudwal');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(12, 'Punjabi'),
(13, 'silent'),
(14, 'Telgu'),
(15, 'marathi'),
(16, 'lofi'),
(17, 'love'),
(18, '90s Hits');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(1, 'Diljit Dosanjh', 'Diljit Dosanjh', '2025-03-09 11:16:04'),
(3, 'Shubh', 'Shubh', '2025-03-06 17:17:16'),
(5, 'sahil song', 'sahil01', '2025-02-26 00:00:00'),
(6, 'anurag', 'sahil01', '2025-02-26 00:00:00'),
(8, 'sahil', 'payal', '2025-03-07 00:00:00'),
(9, 'sahil', 'dnd', '2025-03-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(1, 8, 2, 0),
(2, 1, 2, 1),
(3, 4, 4, 0),
(4, 19, 5, 0),
(5, 16, 5, 1),
(6, 16, 5, 2),
(7, 15, 5, 3),
(8, 30, 6, 0),
(9, 28, 6, 1),
(10, 1, 7, 0),
(11, 6, 7, 1),
(12, 11, 7, 2),
(13, 31, 8, 0),
(14, 110, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Aankhon Se Batana', 1, 1, 8, '2:37', 'assets/music/Aankhon Se Batana.mp3', 1, 23),
(2, 'Gul', 1, 1, 1, '2:35', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Gul.mp3', 2, 13),
(3, 'Yeh Raaten Yeh Mausam', 1, 5, 2, '2:33', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Yeh Raaten Yeh Mausam.mp3', 3, 14),
(4, 'Akhiyaan Gulaab', 1, 5, 3, '2:02', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Akhiyaan Gulaab (From _Teri Baaton Mein Aisa Uljha Jiya_).mp3', 4, 18),
(5, 'Apna Bana Le', 1, 5, 4, '1:29', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Apna Bana Le.mp3', 5, 18),
(6, 'Aziyat', 2, 1, 1, '4:04', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Aziyat.mp3', 1, 37),
(7, 'Blue Eyes', 2, 1, 2, '3:07', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Blue Eyes.mp3', 2, 18),
(8, 'Gulabi Sadi', 2, 1, 3, '3:08', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Gulabi Sadi.mp3', 2, 36),
(9, 'Halka Halka', 2, 1, 4, '8:03', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Halka Halka (From _Fanney Khan_).mp3', 3, 33),
(10, 'Heeriye', 2, 1, 5, '2:58', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Heeriye (feat. Arijit Singh).mp3', 3, 21),
(11, 'Ik Lamha', 2, 1, 6, '2:59', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Ik Lamha.mp3', 4, 25),
(12, 'Kho Gaye', 2, 1, 7, '2:03', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Kho Gaye.mp3', 5, 27),
(13, 'Maan Meri Jaan', 3, 6, 8, '4:21', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Maan Meri Jaan.mp3', 5, 5),
(14, 'Nashe Si Chadh Gayi', 3, 6, 9, '1:45', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Nashe Si Chadh Gayi.mp3', 4, 9),
(15, 'One Love', 3, 6, 10, '1:44', 'assets/music/[SPOTIFY-DOWNLOADER.COM] One Love.mp3', 3, 13),
(16, 'Paint The Town Red', 3, 6, 1, '2:49', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Paint The Town Red.mp3', 2, 14),
(17, 'Pehle Bhi Main', 3, 4, 2, '3:50', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Pehle Bhi Main.mp3', 1, 7),
(18, 'Sadqay', 4, 7, 1, '2:43', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Sadqay.mp3', 5, 3),
(19, 'Satranga (From _ANIMAL_)', 4, 4, 2, '3:32', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Satranga (From _ANIMAL_).mp3', 4, 10),
(20, 'Saware (From _Phantom_)', 4, 7, 3, '4:58', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Saware (From _Phantom_).mp3', 3, 12),
(21, 'Soulmate', 4, 7, 2, '2:42', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Soulmate.mp3', 2, 15),
(22, 'Sun Saathiya', 4, 7, 5, '3:36', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Sun Saathiya.mp3', 1, 15),
(23, 'Talwinder -Wishes(Remake)', 5, 2, 1, '2:28', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Talwinder -Wishes(Remake).mp3', 1, 14),
(24, 'Tere Bin', 5, 2, 2, '4:44', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Tere Bin.mp3', 2, 5),
(25, 'Tere Pyaar Mein', 5, 2, 3, '3:26', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Tere Pyaar Mein.mp3', 3, 8),
(26, 'Teri Jhuki Nazar - Film Version', 5, 2, 4, '2:20', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Teri Jhuki Nazar - Film Version.mp3', 4, 40),
(27, 'Tu hai kahan', 5, 2, 5, '5:07', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Tu hai kahan.mp3', 5, 18),
(28, 'Tum Kya Mile (From _Rocky Aur Rani Kii Prem Kahaani_)', 3, 3, 7, '2:03', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Tum Kya Mile (From _Rocky Aur Rani Kii Prem Kahaani_).mp3', 4, 16),
(29, 'Ve Haaniyaan', 3, 3, 8, '4:16', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Ve Haaniyaan.mp3 ', 3, 8),
(30, 'What Jhumka _ (From _Rocky Aur Rani Kii Prem Kahaani_)', 3, 3, 9, '2:26', 'assets/music/[SPOTIFY-DOWNLOADER.COM] What Jhumka _ (From _Rocky Aur Rani Kii Prem Kahaani_).mp3 ', 2, 20),
(31, 'cheques', 6, 12, 12, '3:03', 'assets/music/Cheques.mp3', 3, 6),
(32, 'Bandana', 6, 12, 12, '2:34', 'assets\\music\\Bandana - Shubh (DJJOhAL.Com).mp3', 3, 14),
(33, 'Elevated', 6, 12, 12, '3:20', 'assets\\music\\Elevated - Shubh (DJJOhAL.Com).mp3', 3, 9),
(35, 'Fell For You', 6, 12, 12, '2:33', 'assets\\music\\Fell For You - Shubh.mp3', 3, 7),
(36, 'King Shit', 6, 12, 12, '3:46', 'assets\\music\\King Shit - Shubh.mp3', 3, 9),
(37, 'MVP', 6, 12, 12, '3:16', 'assets\\music\\MVP - Shubh (DJJOhAL.Com).mp3', 3, 8),
(38, 'No Love', 6, 12, 12, '2:50', 'assets\\music\\No Love - Shubh (DJJOhAL.Com).mp3', 4, 10),
(39, 'One Love', 6, 12, 12, '2:39', 'assets\\music\\One Love - Shubh (DJJOhAL.Com).mp3', 3, 13),
(40, 'You And ME', 6, 12, 12, '2:52', 'assets\\music\\You And Me - Shubh.mp3', 2, 21),
(41, 'Born to Shine', 7, 13, 12, '3:33', 'assets\\music\\Born to Shine - GOAT 128 Kbps.mp3', 10, 5),
(42, 'Hass Hass', 7, 13, 12, '2:33', 'assets\\music\\Hass Hass - Diljit Dosanjh 128 Kbps.mp3', 10, 4),
(43, 'G_O_A_T', 7, 13, 12, '3:43', 'assets\\music\\G_O_A_T_1.mp3', 10, 4),
(44, 'LalKara', 7, 13, 12, '2:40', 'assets\\music\\Lalkara Ghost 128 Kbps.mp3', 10, 7),
(45, 'Tension', 7, 13, 12, '2:48', 'assets\\music\\Tension - Diljit Dosanjh.mp3', 10, 7),
(46, 'LOVER', 7, 13, 12, '3:10', 'assets\\music\\Lover.mp3', 10, 20),
(47, 'Goliyan 2', 7, 13, 12, '3:13', 'assets\\music\\Goliyan 2.mp3', 10, 9),
(48, 'Naina', 7, 13, 12, '3:00', 'assets\\music\\128-Naina - Crew 128 Kbps.mp3', 10, 7),
(49, 'Lemonade', 7, 13, 12, '2:46', 'assets\\music\\Lemonade.mp3', 10, 9),
(50, 'Kinni Kinni', 7, 13, 12, '3:33', 'assets\\music\\Kinni Kinni - DjPunjab.Com.Se.mp3', 10, 8),
(51, 'Bad Habits', 7, 13, 12, '1:35', 'assets/music\\Bad_Habits.mp3', 10, 9),
(52, 'Dil Ke Pass', 4, 10, 13, '4:31', ' assets\\music\\Dil Ke Paas.mp3', 5, 2),
(53, 'Muskurane', 4, 10, 13, '5:34', 'assets\\music\\Muskurane Romantic Citylights 128 Kbps.mp3', 5, 5),
(54, 'O Maahi', 4, 10, 13, '3:53', ' assets\\music\\O Maahi Dunki 128 Kbps.mp3', 5, 3),
(55, 'Kesariya', 4, 10, 13, '4:28', 'assets\\music\\Kesariya Brahmastra 128 Kbps.mp3', 5, 2),
(56, 'Enna Sona', 4, 10, 13, '3:33', 'assets\\music\\Enna Sona Ok Jaanu 128 Kbps.mp3', 5, 2),
(57, 'Channa Meraya', 4, 10, 13, '4:49', 'assets\\music\\Channa Mereya - Ae Dil Hai Mushkil 128 Kbps.mp3', 5, 3),
(58, 'Agar Tum Sath Ho', 4, 10, 13, '5:41', 'assets\\music\\Agar Tum Saath Ho Tamasha 128 Kbps.mp3\"', 9, 3),
(59, 'Kabhi Jo Badal Barse', 4, 10, 13, '4:13', 'assets\\music\\Kabhi Jo Baadal Barse.mp3', 8, 1),
(60, 'Sajni', 4, 10, 13, '2:50', 'assets\\music\\Sajni Laapataa Ladies 128 Kbps.mp3', 5, 2),
(61, 'O Bedardeya', 4, 10, 13, '5:13', 'assets\\music\\O Bedardeya Tu Jhoothi Main Makkaar 128 Kbps.mp3', 4, 3),
(62, 'Aasa Konda', 8, 14, 14, '3:35', 'assets\\music\\Aasa Kooda Sai Abhyankkar 128 Kbps.mp3', 1, 5),
(63, 'Arabic Kuthu', 9, 14, 14, '4:39', 'assets\\music\\Arabic Kuthu Beast 128 Kbps.mp3', 1, 2),
(64, 'Chuttamalle', 10, 14, 14, '3:42', ' assets\\music\\Chuttamalle (PenduJatt.Com.Se).mp3', 2, 5),
(65, 'Kissik Kissik - PUSHPA 2 The Rule', 11, 14, 14, '4:08', ' assets\\music\\Kissik Pushpa 2 The Rule 128 Kbps.mp3', 2, 8),
(66, 'Kurchi-Madathapetti ( Guntur Karam )', 12, 14, 14, '3:43', 'assets\\music\\Kurchi-Madathapetti-Mp3.mp3', 2, 7),
(67, 'Naacho Naacho - RRR', 13, 14, 14, '3:34', 'assets\\music\\Naacho Naacho Rrr 2021 128 Kbps.mp3', 2, 14),
(68, 'Oo Antava', 14, 14, 14, '3:47', 'assets\\music\\Oo-Antava-Papa.mp3', 2, 9),
(69, 'Pushpa Pushapa', 11, 14, 14, '4:16', 'assets\\music\\Pushpa Pushpa - Pushpa 2 The Rule 128 Kbps.mp3', 2, 10),
(70, 'Ramloo Ramulaa', 15, 14, 14, '4:33', 'assets\\music\\Ramuloo Ramulaa(KoshalWorld.Com).mp3', 3, 1),
(71, 'Saami Saami', 16, 14, 14, '3:47', 'assets\\music\\Saami Saami - Pushpa - The Rise 128 Kbps.mp3', 2, 12),
(72, 'SOOSEKI - Pushpa 2 The Rule', 1, 14, 14, '4:26', 'assets\\music\\SOOSEKI-The-Couple-Song.mp3', 2, 12),
(73, 'Aai Tuza Dongar', 2, 15, 15, '2:33', 'assets\\music\\Aai Tuza Dongar.mp3', 5, 8),
(74, 'Aale Marathe Aale Marathe', 17, 15, 15, '4:42', 'assets\\music\\Aale Marathe Aale Marathe.mp3', 2, 11),
(75, 'Aika Dajiba', 24, 15, 15, '4:44', 'assets\\music\\Aika Dajiba.mp3', 4, 5),
(76, 'Bai G Pichli Mazi Bangdi Song Kanha Pichali Tuzi Thatta Tuzi Maskari ', 18, 15, 15, '4:35', 'assets\\music\\Bai G Pichli Mazi Bangdi Song Kanha Pichali Tuzi Thatta Tuzi Maskari Marathi Gavlan.mp3', 1, 7),
(77, 'Galavar Khali', 19, 15, 15, '5:45', 'assets\\music\\Galavar Khali.mp3', 7, 6),
(78, 'Kaali Bindi', 25, 15, 15, '4:42', 'assets\\music\\Kaali Bindi.mp3', 7, 7),
(79, 'Majhi Baay Go', 20, 15, 15, '4:28', 'assets\\music\\Majhi Baay Go.mp3', 1, 10),
(80, 'Nakhrewali', 20, 15, 15, '4:44', 'assets\\music\\Nakhrewali.mp3', 1, 5),
(81, 'Nauvari', 25, 15, 15, '4:42', 'assets\\music\\Nauvari.mp3', 3, 3),
(82, 'Nawari Distes G', 21, 15, 15, '2:51', 'assets\\music\\Nawari Distes G.mp3', 7, 8),
(83, 'Patlancha Bailgada', 22, 15, 15, '3:59', 'assets\\music\\Patlancha Bailgada.mp3', 7, 9),
(84, 'Shivba Raja Chhatrapati Zala Ra', 23, 15, 15, '4:14', 'assets\\music\\Shivba Raja Chhatrapati Zala Ra.mp3', 7, 5),
(85, 'Manwa Laage', 1, 11, 4, '4:32', 'assets\\music\\Manwa Laage.mp3', 6, 3),
(86, 'Jeene Laga Hoon', 1, 11, 4, '3:57', 'assets\\music\\Jeene Laga Hoon.mp3', 6, 1),
(87, 'Pal', 1, 11, 4, '4:07', ' assets\\music\\Pal.mp3', 3, 7),
(88, 'Param Sundari', 1, 11, 4, '3:20', 'assets\\music\\Param Sundari.mp3', 3, 2),
(89, 'Saathiyaa', 1, 11, 4, '5:10', 'assets\\music\\Saathiyaa.mp3', 8, 5),
(90, 'Saibo', 1, 11, 4, '3:15', 'assets\\music\\Saibo.mp3', 8, 6),
(91, 'Teri Meri', 1, 11, 4, '5:25', 'assets\\music\\Teri Meri.mp3', 8, 3),
(92, 'Teri Ore', 1, 11, 4, '5:39', 'assets\\music\\Teri Ore.mp3', 7, 4),
(93, '9:45', 30, 16, 12, '1:57', 'assets\\music\\9_45.mp3', 8, 4),
(95, '295', 31, 16, 12, '4:30', 'assets\\music\\295.mp3', 5, 3),
(96, 'Aam Jahe Munde', 32, 16, 12, '3:27', 'assets\\music\\Aam Jahe Munde.mp3', 5, 5),
(97, 'Admirin\' You', 33, 16, 12, '3:34', 'assets\\music\\Admirin\' You (feat. Preston Pablo).mp3', 8, 2),
(98, 'Baller', 6, 16, 12, '2:28', 'assets\\music\\Baller.mp3', 8, 6),
(99, 'Bandana', 6, 16, 12, '2:34', 'assets\\music\\Bandana.mp3', 7, 6),
(100, 'Born to Shine', 7, 16, 12, '3:33', 'assets\\music\\Born to Shine.mp3', 7, 4),
(101, 'Daku', 34, 16, 12, '2:11', 'assets\\music\\Daku.mp3', 2, 7),
(102, 'Desi Hood', 35, 16, 12, '2:28', 'assets\\music\\Desi Hood.mp3', 8, 5),
(103, 'Ek Din Pyaar ', 36, 16, 12, '3:06', 'assets\\music\\Ek Din Pyaar - Tadipaar.mp3', 6, 5),
(104, 'GOAT', 31, 16, 12, '3:34', 'assets\\music\\GOAT.mp3', 4, 4),
(105, 'Elevated', 6, 16, 12, '3:20', 'assets\\music\\Elevated.mp3', 7, 4),
(106, 'Hass Hass', 7, 16, 12, '2:33', 'assets\\music\\Hass Hass.mp3', 8, 6),
(107, 'Hide it', 37, 16, 12, '3:04', 'assets\\music\\Hide It.mp3', 10, 2),
(108, 'Jatt Mehkma', 37, 16, 12, '3:15', 'assets\\music\\Jatt Mehkma.mp3', 7, 7),
(109, 'King Shit', 6, 16, 12, '3:47', 'assets\\music\\King Shit.mp3', 8, 7),
(110, 'Triple OG', 44, 17, 4, '3:03', 'assets\\music\\Triple OG.mp3', 1, 8),
(111, 'Kya Baat Ay', 38, 16, 12, '2:59', 'assets\\music\\Kya Baat Ay.mp3', 6, 7),
(112, 'Lalkara', 7, 16, 12, '2:40', 'assets\\music\\Lalkara.mp3', 8, 9),
(113, 'Love Dose', 37, 16, 12, '3:44', 'assets\\music\\Love Dose.mp3', 6, 5),
(114, 'Mi Amor', 39, 16, 12, '3:23', 'assets\\music\\Mi Amor.mp3', 5, 5),
(115, 'Millionaire', 37, 16, 12, '3:19', 'assets\\music\\Millionaire.mp3', 7, 2),
(116, 'Noormahal', 34, 16, 12, '2:40', 'assets\\music\\Noormahal.mp3', 4, 5),
(117, 'Obsessed', 40, 16, 12, '3:10', 'assets\\music\\Obsessed.mp3', 4, 5),
(118, 'One Love', 6, 16, 12, '2:39', 'assets\\music\\One Love.mp3', 5, 7),
(119, 'Russian Bandana', 41, 16, 12, '3:17', 'assets\\music\\Russian Bandana.mp3', 6, 7),
(120, 'Safar', 42, 16, 12, '3:17', 'assets\\music\\Safar.mp3', 7, 8),
(121, 'Temporary Pyar', 43, 16, 12, '3:55', 'assets\\music\\Temporary Pyar - 8D Audio.mp3', 6, 9),
(122, 'Aaj Ki Raat', 46, 18, 16, '3:48', 'assets\\music\\SpotiDownloader.com - Aaj Ki Raat (From _Stree 2_) - Sachin-Jigar.mp3', 3, 4),
(123, 'Garmi (From _Street Dancer 3D_)', 47, 18, 16, '3:02', 'assets\\music\\SpotiDownloader.com - Garmi (From _Street Dancer 3D_) (feat. Varun Dhawan) - Badshah.mp3', 5, 9),
(124, 'Ishq Hai', 47, 18, 16, '5:12', 'assets\\music\\SpotiDownloader.com - Ishq Hai - Anurag Saikia.mp3', 4, 9),
(125, 'Photo', 49, 18, 16, '2:57', 'assets\\music\\SpotiDownloader.com - Photo (From _Luka Chuppi_) - Karan Sehmbi.mp3', 3, 9),
(126, 'Tum Kya Mile', 50, 18, 16, '4:37', 'assets\\music\\SpotiDownloader.com - Tum Kya Mile (From _Rocky Aur Rani Kii Prem Kahaani_) - Pritam.mp3', 2, 2),
(127, 'Akh Lad Jaave', 47, 18, 16, '3:00', 'assets\\music\\SpotiDownloader.com - Akh Lad Jaave (From _Loveyatri_) - Badshah.mp3', 6, 4),
(128, 'Raataan Lambiyan', 51, 18, 16, '3:50', 'assets\\music\\SpotiDownloader.com - Raataan Lambiyan - Lofi Flip - VIBIE.mp', 8, 5),
(129, 'Ranjha', 52, 18, 16, '3:21', 'assets\\music\\SpotiDownloader.com - Ranjha - Lofi Flip - VIBIE.mp3', 4, 7),
(130, 'Labon Ko', 54, 19, 17, '5:41', 'assets\\music\\SpotiDownloader.com - Labon Ko (From _Bhool Bhulaiyaa_) - KK.mp3', 2, 7),
(131, 'Pal', 55, 19, 17, '4:07', 'assets\\music\\SpotiDownloader.com - Pal - Javed-Mohsin.mp3', 3, 4),
(132, 'Sanu Ek Pal Chain', 56, 19, 17, '3:30', 'assets\\music\\SpotiDownloader.com - Sanu Ek Pal Chain - Rahat Fateh Ali Khan.mp3', 6, 6),
(133, 'Tera Ban Jaunga', 57, 19, 17, '3:56', 'assets\\music\\SpotiDownloader.com - Tera Ban Jaunga - Akhil Sachdeva.mp3', 1, 9),
(134, 'Ishq Tera', 58, 19, 17, '3:32', 'assets\\music\\Ishq Tera.mp3', 3, 7),
(135, 'O Maahi ', 50, 19, 17, '3:53', 'assets\\music\\O Maahi (From _Dunki_).mp3', 5, 8),
(136, 'Raataan Lambiyan', 59, 19, 17, '3:50', 'assets\\music\\Raataan Lambiyan (From _Shershaah_).mp3', 7, 3),
(137, 'Ranjha', 52, 19, 17, '3:48', 'assets\\music\\Ranjha (From _Shershaah_).mp3', 2, 1),
(138, 'Sahiba', 52, 19, 17, '3:37', 'assets\\music\\Sahiba.mp3', 2, 3),
(139, 'Sajni', 60, 19, 17, '2:50', 'assets\\music\\Sajni (From _Laapataa Ladies_).mp3', 2, 5),
(140, 'Sanam Teri Kasam', 61, 19, 17, '5:14', 'assets\\music\\Sanam Teri Kasam.mp3', 6, 6),
(141, 'Satranga ', 4, 19, 17, '4:31', 'assets\\music\\Satranga (From _ANIMAL_).mp3', 5, 6),
(142, 'Suniyan Suniyan', 42, 19, 17, '3:17', 'assets\\music\\Suniyan Suniyan.mp3', 5, 7),
(143, 'Waalian', 63, 19, 17, '3:38', 'assets\\music\\Waalian.mp3', 5, 8),
(145, 'Too Shayar Hai Main Teri Shayari', 64, 20, 18, '6:29', 'assets\\music\\Too Shayar Hai Main Teri Shayari.mp3', 7, 5),
(146, 'Chand Se Parda', 66, 20, 18, '6:21', 'assets\\music\\Chand Se Parda.mp3', 7, 4),
(147, 'Chura Ke Dil Mera', 66, 20, 18, '7:48', 'assets\\music\\Chura Ke Dil Mera.mp3', 7, 2),
(148, 'Dekha Hai Pehli', 64, 20, 18, '6:13', 'assets\\music\\Dekha Hai Pehli Baar.mp3', 7, 4),
(149, 'Dheere Dheere Se Meri Zindagi Mein Aana', 67, 20, 18, '5:27', 'assets\\music\\Dheere Dheere Se Meri Zindagi Mein Aana.mp3', 7, 5),
(150, 'Ek Sanam Chahiye Aashiqui Ke Liye', 66, 20, 18, '6:10', 'assets\\music\\Ek Sanam Chahiye Aashiqui Ke Liye.mp3', 7, 7),
(151, 'Jaadu Teri Nazar', 65, 20, 18, '4:39', 'assets\\music\\Jaadu Teri Nazar.mp3', 7, 7),
(152, 'Raah Mein Unse Mulaqat', 66, 20, 18, '8:39', 'assets\\music\\Raah Mein Unse Mulaqat.mp3', 7, 9),
(153, 'Bahut Pyar Karte Hai', 67, 20, 18, '5:12', 'assets\\music\\Bahut Pyar Karte Hai - Female Version.mp3', 7, 11),
(154, 'Ae Mere Humsafar', 64, 20, 18, '5:52', 'assets\\music\\Ae Mere Humsafar.mp3', 7, 10),
(155, 'Tip Tip Barsa Paani', 64, 20, 18, '6:03', 'assets\\music\\Tip Tip Barsa Paani.mp3', 7, 7),
(156, 'Bholi Si Surat', 65, 20, 18, '4:15', 'assets\\music\\Bholi Si Surat.mp3', 7, 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(225) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`, `is_verified`) VALUES
(44, 'sahil', 'Sahil', 'Kedare', 'Kedaresahil70@gmail.com', '$2y$10$o6pT.D1Jtuwlac1PIhfYV.2rTs0y6LU3km56ohwMdtzuvGero4JlO', '0000-00-00 00:00:00', '', 1),
(45, 'vaibhav', 'Vaibhav', 'Jangle', 'janglevaibhav062@gmail.com', '$2y$10$Yn8cucdc8hjA02CHW0yZ0u9Iu9qEUVDlQbYiQye31HtxS5EWVQTUW', '0000-00-00 00:00:00', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
