-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2025 at 01:22 AM
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
(17, 'Triple OG', 44, 4, 'assets\\images\\artwork\\og.jpg');

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
(44, 'DIVINE');

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
(15, 'marathi');

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
(8, 'sahil', 'payal', '2025-03-07 00:00:00');

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
(13, 31, 8, 0);

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
(1, 'Aankhon Se Batana', 1, 1, 8, '2:37', 'assets/music/Aankhon Se Batana.mp3', 1, 22),
(2, 'Gul', 1, 1, 1, '2:35', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Gul.mp3', 2, 13),
(3, 'Yeh Raaten Yeh Mausam', 1, 5, 2, '2:33', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Yeh Raaten Yeh Mausam.mp3', 3, 14),
(4, 'Akhiyaan Gulaab', 1, 5, 3, '2:02', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Akhiyaan Gulaab (From _Teri Baaton Mein Aisa Uljha Jiya_).mp3', 4, 17),
(5, 'Apna Bana Le', 1, 5, 4, '1:29', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Apna Bana Le.mp3', 5, 16),
(6, 'Aziyat', 2, 1, 1, '4:04', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Aziyat.mp3', 1, 37),
(7, 'Blue Eyes', 2, 1, 2, '3:07', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Blue Eyes.mp3', 2, 18),
(8, 'Gulabi Sadi', 2, 1, 3, '3:08', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Gulabi Sadi.mp3', 2, 35),
(9, 'Halka Halka', 2, 1, 4, '8:03', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Halka Halka (From _Fanney Khan_).mp3', 3, 32),
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
(23, 'Talwinder -Wishes(Remake)', 5, 2, 1, '2:28', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Talwinder -Wishes(Remake).mp3', 1, 13),
(24, 'Tere Bin', 5, 2, 2, '4:44', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Tere Bin.mp3', 2, 4),
(25, 'Tere Pyaar Mein', 5, 2, 3, '3:26', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Tere Pyaar Mein.mp3', 3, 8),
(26, 'Teri Jhuki Nazar - Film Version', 5, 2, 4, '2:20', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Teri Jhuki Nazar - Film Version.mp3', 4, 39),
(27, 'Tu hai kahan', 5, 2, 5, '5:07', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Tu hai kahan.mp3', 5, 17),
(28, 'Tum Kya Mile (From _Rocky Aur Rani Kii Prem Kahaani_)', 3, 3, 7, '2:03', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Tum Kya Mile (From _Rocky Aur Rani Kii Prem Kahaani_).mp3', 4, 15),
(29, 'Ve Haaniyaan', 3, 3, 8, '4:16', 'assets/music/[SPOTIFY-DOWNLOADER.COM] Ve Haaniyaan.mp3 ', 3, 8),
(30, 'What Jhumka _ (From _Rocky Aur Rani Kii Prem Kahaani_)', 3, 3, 9, '2:26', 'assets/music/[SPOTIFY-DOWNLOADER.COM] What Jhumka _ (From _Rocky Aur Rani Kii Prem Kahaani_).mp3 ', 2, 20),
(31, 'cheques', 6, 12, 12, '3:03', 'assets/music/Cheques.mp3', 3, 3),
(32, 'Bandana', 6, 12, 12, '2:34', 'assets\\music\\Bandana - Shubh (DJJOhAL.Com).mp3', 3, 10),
(33, 'Elevated', 6, 12, 12, '3:20', 'assets\\music\\Elevated - Shubh (DJJOhAL.Com).mp3', 3, 6),
(35, 'Fell For You', 6, 12, 12, '2:33', 'assets\\music\\Fell For You - Shubh.mp3', 3, 6),
(36, 'King Shit', 6, 12, 12, '3:46', 'assets\\music\\King Shit - Shubh.mp3', 3, 7),
(37, 'MVP', 6, 12, 12, '3:16', 'assets\\music\\MVP - Shubh (DJJOhAL.Com).mp3', 3, 7),
(38, 'No Love', 6, 12, 12, '2:50', 'assets\\music\\No Love - Shubh (DJJOhAL.Com).mp3', 4, 8),
(39, 'One Love', 6, 12, 12, '2:39', 'assets\\music\\One Love - Shubh (DJJOhAL.Com).mp3', 3, 10),
(40, 'You And ME', 6, 12, 12, '2:52', 'assets\\music\\You And Me - Shubh.mp3', 2, 17),
(41, 'Born to Shine', 7, 13, 12, '3:33', ' assets\\music\\Born to Shine - GOAT 128 Kbps.mp3', 10, 4),
(42, 'Hass Hass', 7, 13, 12, '2:33', 'assets\\music\\Hass Hass - Diljit Dosanjh 128 Kbps.mp3', 10, 3),
(43, 'G_O_A_T', 7, 13, 12, '3:43', ' assets\\music\\G_O_A_T_1.mp3', 10, 1),
(44, 'LalKara', 7, 13, 12, '2:40', ' assets\\music\\Lalkara Ghost 128 Kbps.mp3\"', 10, 3),
(45, 'Tension', 7, 13, 12, '2:48', ' assets\\music\\Tension - Diljit Dosanjh.mp3', 10, 2),
(46, 'LOVER', 7, 13, 12, '3:10', 'assets\\music\\Lover.mp3\"', 10, 7),
(47, 'Goliyan 2', 7, 13, 12, '3:13', ' assets\\music\\Goliyan 2.mp3', 10, 4),
(48, 'Naina', 7, 13, 12, '3:00', 'assets\\music\\128-Naina - Crew 128 Kbps.mp3', 10, 6),
(49, 'Lemonade', 7, 13, 12, '2:46', 'assets\\music\\Lemonade.mp3', 10, 8),
(50, 'Kinni Kinni', 7, 13, 12, '3:33', 'assets\\music\\Kinni Kinni - DjPunjab.Com.Se.mp3', 10, 6),
(51, 'Bad Habits', 7, 13, 12, '1:35', 'assets/music\\Bad_Habits.mp3', 10, 9),
(52, 'Dil Ke Pass', 4, 10, 13, '4:31', ' assets\\music\\Dil Ke Paas.mp3', 5, 2),
(53, 'Muskurane', 4, 10, 13, '5:34', 'assets\\music\\Muskurane Romantic Citylights 128 Kbps.mp3', 5, 5),
(54, 'O Maahi', 4, 10, 13, '3:53', ' assets\\music\\O Maahi Dunki 128 Kbps.mp3', 5, 3),
(55, 'Kesariya', 4, 10, 13, '4:28', 'assets\\music\\Kesariya Brahmastra 128 Kbps.mp3', 5, 1),
(56, 'Enna Sona', 4, 10, 13, '3:33', 'assets\\music\\Enna Sona Ok Jaanu 128 Kbps.mp3', 5, 2),
(57, 'Channa Meraya', 4, 10, 13, '4:49', 'assets\\music\\Channa Mereya - Ae Dil Hai Mushkil 128 Kbps.mp3', 5, 3),
(58, 'Agar Tum Sath Ho', 4, 10, 13, '5:41', 'assets\\music\\Agar Tum Saath Ho Tamasha 128 Kbps.mp3\"', 9, 3),
(59, 'Kabhi Jo Badal Barse', 4, 10, 13, '4:13', 'assets\\music\\Kabhi Jo Baadal Barse.mp3', 8, 1),
(60, 'Sajni', 4, 10, 13, '2:50', 'assets\\music\\Sajni Laapataa Ladies 128 Kbps.mp3', 5, 2),
(61, 'O Bedardeya', 4, 10, 13, '5:13', 'assets\\music\\O Bedardeya Tu Jhoothi Main Makkaar 128 Kbps.mp3', 4, 2),
(62, 'Aasa Konda', 8, 14, 14, '3:35', 'assets\\music\\Aasa Kooda Sai Abhyankkar 128 Kbps.mp3', 1, 5),
(63, 'Arabic Kuthu', 9, 14, 14, '4:39', 'assets\\music\\Arabic Kuthu Beast 128 Kbps.mp3', 1, 2),
(64, 'Chuttamalle', 10, 14, 14, '3:42', ' assets\\music\\Chuttamalle (PenduJatt.Com.Se).mp3', 2, 5),
(65, 'Kissik Kissik - PUSHPA 2 The Rule', 11, 14, 14, '4:08', ' assets\\music\\Kissik Pushpa 2 The Rule 128 Kbps.mp3', 2, 7),
(66, 'Kurchi-Madathapetti ( Guntur Karam )', 12, 14, 14, '3:43', 'assets\\music\\Kurchi-Madathapetti-Mp3.mp3', 2, 6),
(67, 'Naacho Naacho - RRR', 13, 14, 14, '3:34', 'assets\\music\\Naacho Naacho Rrr 2021 128 Kbps.mp3', 2, 12),
(68, 'Oo Antava', 14, 14, 14, '3:47', 'assets\\music\\Oo-Antava-Papa.mp3', 2, 8),
(69, 'Pushpa Pushapa', 11, 14, 14, '4:16', 'assets\\music\\Pushpa Pushpa - Pushpa 2 The Rule 128 Kbps.mp3', 2, 10),
(70, 'Ramloo Ramulaa', 15, 14, 14, '4:33', 'assets\\music\\Ramuloo Ramulaa(KoshalWorld.Com).mp3', 3, 1),
(71, 'Saami Saami', 16, 14, 14, '3:47', 'assets\\music\\Saami Saami - Pushpa - The Rise 128 Kbps.mp3', 2, 10),
(72, 'SOOSEKI - Pushpa 2 The Rule', 1, 14, 14, '4:26', 'assets\\music\\SOOSEKI-The-Couple-Song.mp3', 2, 12),
(73, 'Aai Tuza Dongar', 2, 15, 15, '2:33', 'assets\\music\\Aai Tuza Dongar.mp3', 5, 6),
(74, 'Aale Marathe Aale Marathe', 17, 15, 15, '4:42', 'assets\\music\\Aale Marathe Aale Marathe.mp3', 2, 8),
(75, 'Aika Dajiba', 24, 15, 15, '4:44', 'assets\\music\\Aika Dajiba.mp3', 4, 4),
(76, 'Bai G Pichli Mazi Bangdi Song Kanha Pichali Tuzi Thatta Tuzi Maskari ', 18, 15, 15, '4:35', 'assets\\music\\Bai G Pichli Mazi Bangdi Song Kanha Pichali Tuzi Thatta Tuzi Maskari Marathi Gavlan.mp3', 1, 6),
(77, 'Galavar Khali', 19, 15, 15, '5:45', 'assets\\music\\Galavar Khali.mp3', 7, 6),
(78, 'Kaali Bindi', 25, 15, 15, '4:42', 'assets\\music\\Kaali Bindi.mp3', 7, 5),
(79, 'Majhi Baay Go', 20, 15, 15, '4:28', 'assets\\music\\Majhi Baay Go.mp3', 1, 8),
(80, 'Nakhrewali', 20, 15, 15, '4:44', 'assets\\music\\Nakhrewali.mp3', 1, 4),
(81, 'Nauvari', 25, 15, 15, '4:42', 'assets\\music\\Nauvari.mp3', 3, 3),
(82, 'Nawari Distes G', 21, 15, 15, '2:51', 'assets\\music\\Nawari Distes G.mp3', 7, 7),
(83, 'Patlancha Bailgada', 22, 15, 15, '3:59', 'assets\\music\\Patlancha Bailgada.mp3', 7, 6),
(84, 'Shivba Raja Chhatrapati Zala Ra', 23, 15, 15, '4:14', 'assets\\music\\Shivba Raja Chhatrapati Zala Ra.mp3', 7, 3),
(85, 'Manwa Laage', 1, 11, 4, '4:32', 'assets\\music\\Manwa Laage.mp3', 6, 2),
(86, 'Jeene Laga Hoon', 1, 11, 4, '3:57', 'assets\\music\\Jeene Laga Hoon.mp3', 6, 1),
(87, 'Pal', 1, 11, 4, '4:07', ' assets\\music\\Pal.mp3', 3, 4),
(88, 'Param Sundari', 1, 11, 4, '3:20', 'assets\\music\\Param Sundari.mp3', 3, 1),
(89, 'Saathiyaa', 1, 11, 4, '5:10', 'assets\\music\\Saathiyaa.mp3', 8, 4),
(90, 'Saibo', 1, 11, 4, '3:15', 'assets\\music\\Saibo.mp3', 8, 4),
(91, 'Teri Meri', 1, 11, 4, '5:25', 'assets\\music\\Teri Meri.mp3', 8, 1),
(92, 'Teri Ore', 1, 11, 4, '5:39', 'assets\\music\\Teri Ore.mp3', 7, 3),
(93, '9:45', 30, 16, 12, '1:57', 'assets\\music\\9_45.mp3', 8, 4),
(95, '295', 31, 16, 12, '4:30', 'assets\\music\\295.mp3', 5, 2),
(96, 'Aam Jahe Munde', 32, 16, 12, '3:27', 'assets\\music\\Aam Jahe Munde.mp3', 5, 5),
(97, 'Admirin\' You', 33, 16, 12, '3:34', 'assets\\music\\Admirin\' You (feat. Preston Pablo).mp3', 8, 1),
(98, 'Baller', 6, 16, 12, '2:28', 'assets\\music\\Baller.mp3\"', 8, 2),
(99, 'Bandana', 6, 16, 12, '2:34', 'assets\\music\\Bandana.mp3', 7, 3),
(100, 'Born to Shine', 7, 16, 12, '3:33', 'assets\\music\\Born to Shine.mp3', 7, 4),
(101, 'Daku', 34, 16, 12, '2:11', 'assets\\music\\Daku.mp3', 2, 4),
(102, 'Desi Hood', 35, 16, 12, '2:28', 'assets\\music\\Desi Hood.mp3', 8, 5),
(103, 'Ek Din Pyaar ', 36, 16, 12, '3:06', 'assets\\music\\Ek Din Pyaar - Tadipaar.mp3', 6, 5),
(104, 'GOAT', 31, 16, 12, '3:34', 'assets\\music\\GOAT.mp3', 4, 2),
(105, 'Elevated', 6, 16, 12, '3:20', 'assets\\music\\Elevated.mp3', 7, 3),
(106, 'Hass Hass', 7, 16, 12, '2:33', 'assets\\music\\Hass Hass.mp3', 8, 6),
(107, 'Hide it', 37, 16, 12, '3:04', 'assets\\music\\Hide It.mp3', 10, 2),
(108, 'Jatt Mehkma', 37, 16, 12, '3:15', 'assets\\music\\Jatt Mehkma.mp3', 7, 7),
(109, 'King Shit', 6, 16, 12, '3:47', 'assets\\music\\King Shit.mp3', 8, 6),
(110, 'Triple OG', 44, 17, 4, '3:03', 'assets\\music\\Triple OG.mp3', 1, 1),
(111, 'Kya Baat Ay', 38, 16, 12, '2:59', 'assets\\music\\Kya Baat Ay.mp3', 6, 6),
(112, 'Lalkara', 7, 16, 12, '2:40', 'assets\\music\\Lalkara.mp3', 8, 9),
(113, 'Love Dose', 37, 16, 12, '3:44', 'assets\\music\\Love Dose.mp3', 6, 3),
(114, 'Mi Amor', 39, 16, 12, '3:23', 'assets\\music\\Mi Amor.mp3', 5, 3),
(115, 'Millionaire', 37, 16, 12, '3:19', 'assets\\music\\Millionaire.mp3', 7, 2),
(116, 'Noormahal', 34, 16, 12, '2:40', 'assets\\music\\Noormahal.mp3', 4, 4);

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
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`, `is_verified`) VALUES
(5, 'sahil01', 'Sahil', 'Kedare', 'Kedaresahil70@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2025-02-26 00:00:00', 'assets/images/profile-pics/head_emerald.png', 0),
(6, 'param', 'Tcfft', 'Hvgvg', 'Sahilkedare05@gmail.com', '$2y$10$DrGcOdjWIdNuG8l2bTYLAekgA', '0000-00-00 00:00:00', '', 0),
(7, 'sanju', 'Sanju', 'Samson', 'Kedaresahil70@gmail.com', '$2y$10$Py4iACYDyDe8VTaFLlTceuc6.', '0000-00-00 00:00:00', '', 0),
(8, 'param', 'Dkd', 'Fnsd', 'Kedaresahil70@gmail.com', '$2y$10$.Y2aVWKhF5jmKRpUMeFs8OSmf', '0000-00-00 00:00:00', '', 0),
(9, 'abc', 'Pallavi', 'Kedare', 'Kedaresahil70@gmail.com', '$2y$10$wzKHGF.luC8B1v71Az6h5.TW5', '0000-00-00 00:00:00', '', 0),
(10, 'payal', 'Payal', 'Kedare', 'Kedaresahil70@gmail.com', '$2y$10$4qBUIbb8TBTN5bxFhhwPbujuY', '0000-00-00 00:00:00', '', 0),
(11, 'sk', 'Sk', 'Sk', 'Kedaresahil70@gmail.com', '$2y$10$8Je9uJZC9iTqBZy492Y2jOETi', '0000-00-00 00:00:00', '', 0),
(12, 'djgas', 'Dhkkd', 'Dwdj', 'Kedaresahil70@gmail.com', '$2y$10$o.UVld/WGl2QFSJnNbR42.8HM', '0000-00-00 00:00:00', '', 0),
(13, 'param', 'Dbda', 'Dbs', 'Kedaresahil70@gmail.com', '$2y$10$VQK7HB.0whBo9RUM.BJFwu4kq', '0000-00-00 00:00:00', '', 0),
(14, 'ironman', 'Iron', 'Man', 'Kedaresahil70@gmail.com', '$2y$10$K.Kj7k3v5iy8rCmVpXAMze3Oy', '0000-00-00 00:00:00', '', 0),
(15, 'ddm', 'Dsmd', 'Dm', 'Kedaresahil70@gmail.com', '$2y$10$5Z3PPpuyPtAWsDUfzezIs.rUO', '0000-00-00 00:00:00', '', 0),
(16, 'hh', 'Dns', 'Dnaja', 'Kedaresahil70@gmail.com', '$2y$10$lRHMS/KdWWP4tGlfCWwgIeLmd', '0000-00-00 00:00:00', '', 0),
(17, 'dbjabd', 'Fjdfs', 'Fejfs', 'Kedaresahil70@gmail.com', '$2y$10$Chxqrxd6/cblI2oK0V.09uhJg', '0000-00-00 00:00:00', '', 0),
(18, 'ewbejn', 'Ebrw', 'Webrj', 'Kedaresahil70@gmail.com', '$2y$10$kc3tbrlwwX8ocy74YBNIPOP0U', '0000-00-00 00:00:00', '', 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
