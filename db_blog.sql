-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2018 at 12:36 PM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(9, 'Cooker'),
(10, 'Bathroom clener'),
(11, 'Room clenner'),
(12, 'cloth clener'),
(13, 'Client'),
(14, 'House hold Worker');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lasttname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lasttname`, `email`, `body`, `status`, `date`) VALUES
(5, 'Shoumen', 'Mondal', 'shoumen@gmail.com', 'I need meeting room', 1, '2017-12-11 18:33:31'),
(6, 'Shoumen', 'Mondal', 'shakil@gmail.com', 'dsafga', 1, '2017-12-11 18:37:55'),
(7, 'aaaaaa', 'dddd', 'Invalid email address !', 'i need a cooker', 1, '2018-03-28 18:46:24'),
(8, 'sefr', 'gfdh', 'Invalid email address !', 'sghxyhrs', 1, '2018-03-28 18:46:42'),
(9, 'sefr', 'gfdh', 'Invalid email address !', 'sghxyhrs', 1, '2018-03-28 18:48:12'),
(10, 'sefr', 'gfdh', 'Invalid email address !', 'sghxyhrs', 1, '2018-03-28 18:48:19'),
(11, 'fcfc', 'fghc', 'vcfc@vcghgmail.com', 'fxdrdy5', 1, '2018-03-29 09:01:13'),
(12, 'jfgcgfh', 'gftuf', 'rafika@gmail.com', 'gbuygvuy', 1, '2018-04-04 17:32:56'),
(13, 'dhgsyhg', 'hazrfdeyh', 'shakil@gmail.com', 'shretur', 1, '2018-04-04 17:35:34'),
(14, 'dhgsyhg', 'hazrfdeyh', 'shakil@gmail.com', 'shretur', 1, '2018-04-04 17:35:41'),
(15, 'ayaeary', 'aeyhty', 'shoumen@gmail.com', 'gsytgr', 1, '2018-04-04 17:35:52'),
(16, 'mk', 'hazrfdeyh', '56@gmail.com', 'wsysyy', 1, '2018-04-04 17:36:27'),
(17, 'mk', 'hazrfdeyh', '56@gmail.com', 'deryhyd', 1, '2018-04-04 17:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Copyright Mrinal with live project.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p>about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.about us page.</p>'),
(2, 'Privacy', '<p><em>he BJP Parliamentary Party(BJPP) unanimously welcomes the historic announcement made by the Prime Minister, on November 8, 2016, withdrawing the Legal Tender value of currency notes of <span class=\"rupee\">Rs.</span>500 and <span class=\"rupee\">Rs.</span>1,000, and compliments the Prime Minister, the Government and the Reserve Bank of India for the same</em><em>he BJP Parliamentary Party(BJPP) unanimously welcomes the historic announcement made by the Prime Minister, on November 8, 2016, withdrawing the Legal Tender value of currency notes of <span class=\"rupee\">Rs.</span>500 and <span class=\"rupee\">Rs.</span>1,000, and compliments the Prime Minister, the Government and the Reserve Bank of India for the same</em><em>he BJP Parliamentary Party(BJPP) unanimously welcomes the historic announcement made by the Prime Minister, on November 8, 2016, withdrawing the Legal Tender value of currency notes of <span class=\"rupee\">Rs.</span>500 and <span class=\"rupee\">Rs.</span>1,000, and compliments the Prime Minister, the Government and the Reserve Bank of India for the same</em></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(29, 9, 'Cooker', '<p>I am parttime cooker .Iam free from 1 pm to 5pm.you can contact with me</p>', 'upload/bfa07d72a6.jpg', 'Ananna', 'Cooker', '2018-03-28 18:40:15', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(2, 'second silder title will go there', 'upload/slidera1e403439d.jpg'),
(3, 'third slider title will go there', 'upload/slider6f1f31da78.jpg'),
(4, 'four slider title will go there', 'upload/sliderbb6782d368.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com/mrinal.mollik', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(11) NOT NULL,
  `lastname` varchar(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `role` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `firstname`, `lastname`, `email`, `phone`, `gender`, `password`, `role`) VALUES
(1, 'shoumen', 'mondal', 'shoumen853@', '01953840480', 'male', '12345', '2'),
(2, 'rafika', 'sultana', 'rafika@gmai', '01824323659', 'female', '123', '1'),
(3, 'deb', 'mallik', 'deb@gmai', '01758256525', 'Male', 'deb123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Find Worker & Client project', 'our site slogan', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
