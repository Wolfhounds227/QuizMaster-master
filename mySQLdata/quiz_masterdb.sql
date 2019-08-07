-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2019 at 11:52 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `preferences`
--

CREATE TABLE `preferences` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(30) NOT NULL,
  `comments` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preferences`
--

INSERT INTO `preferences` (`id`, `name`, `value`, `comments`) VALUES
(1, 'NO_OF_TOPICS_PER_ROW', '4', ''),
(2, 'NO_OF_QUESTIONS_TO_SHOW', '3', '');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `topic` int(11) NOT NULL,
  `question` varchar(70) NOT NULL,
  `choice_1` varchar(70) NOT NULL,
  `choice_2` varchar(70) NOT NULL,
  `choice_3` varchar(70) NOT NULL,
  `choice_4` varchar(70) NOT NULL,
  `answer` varchar(70) NOT NULL,
  `image_name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `topic`, `question`, `choice_1`, `choice_2`, `choice_3`, `choice_4`, `answer`, `image_name`) VALUES
(1, 1, 'What is this dress?', 'Saree', 'Lahenga Choli', 'Kurta Pajama', 'Salwar Kameez', 'B', 'lehenga_choli.jpg'),
(2, 1, 'Which Indian state is this outfit from?', 'Goa', 'Bihar', 'Jharkhand', 'Meghalaya', 'D', 'meghalaya.jpg'),
(3, 1, 'What dress is this?', 'Jeans', 'Kurta Pajama', 'Dhoti', 'Tuesday', 'B', 'kurta_pajama.jpg'),
(4, 8, 'What is this instrument?', 'Sitar', 'google', 'Veena', 'Santoor', 'B', 'Question_1_Instruments.jpeg'),
(5, 1, 'What dress is this?', 'Kurta Pajama', 'Suit', 'Saree', 'Phiran', 'C', 'saree.jpg'),
(6, 1, 'What dress is this?', 'Suit', 'Saree', 'Dhoti', 'Kurta Pajama', 'C', 'suit.jpg'),
(7, 2, 'Which of the following pairs are correctly matched?', 'Kuchipudi – Madhya Pradesh', 'Kathakali – Kerala', 'Bharatnatyam – Andhra Pradesh', 'Kathak – Tamil Nadu', 'B', 'kathakali.jpeg'),
(8, 2, 'Which among the following is not like others?', 'Kathakali', 'Odissi', 'Bhangra', 'Bharatanatyam', 'C', 'bhangra.jpeg'),
(9, 2, 'Which among the following is a folk dance of India?', 'Manipuri', 'Bihu', 'Kathakali', 'Bharatanatyam', 'B', 'bihu.jpeg'),
(10, 2, 'Which of the following originates in Assam?', 'Bharatnatyam', 'Kuchipudi', 'Sattriya', 'Kathak', 'C', 'sattriya.jpeg'),
(11, 3, 'Which Indian festival is called the Festival of Lights?', 'Holi', 'Diwali', 'Karva Chauth', 'Janmashtami', 'B', 'diwali.jpg'),
(12, 3, 'What is Janmashtami all about?', 'Celebrating the birthday of Krishna', 'The Festival of Color', 'Celebrating Siblings', 'To celebrate the victory of Goddess Durga over the demon king Mahishas', 'A', 'janmashtami.jpg'),
(13, 3, 'When is Durga Puja celebrated?', 'May-June', 'July-August', 'September-October', 'November-December', 'C', 'durgapuja.jpg'),
(14, 3, 'What are typical celebrations during Holi?', 'Lighting Candles', 'Tying string around your siblings wrist', 'Throwing colorful powder', 'Fasting for 9 days', 'C', 'holi.jpg'),
(15, 4, 'What is the most popular Indian food?', 'Butter Chicken', 'Dosa', 'Palak Paneer', 'Samosa', 'A', 'samosaa.jpg'),
(16, 4, 'Appam stew is from which Indian state?', 'Goa', 'Rajasthan', 'Maharashtra', 'Kerala', 'D', 'appamstew.jpg'),
(17, 4, 'Which of these is not a type of chaat?', 'Puri Bhaji', 'Sev Batata Puri', 'Pani Puri', 'Bhel Puri', 'A', 'panipuri.jpg'),
(18, 4, 'What Indian sweet is a bright yellow spiral', 'Gulab Jamun', 'Ras Malai', 'Jalebi', 'Besan Barfi', 'C', 'jalebi.jpeg'),
(19, 6, 'Who is this person?', 'Jawaharlal Nehru', 'Sardar Patel', 'Mahatma Gandh', 'Lal Bahadur Shastr', 'A', 'Nehru.jpg'),
(20, 6, 'Who was the most recent Indian to win a Nobel Prize?', 'Amartya Sen', 'Mother Teresa', 'Kailash Satyarti', 'C.V. Raman', 'C', 'question.jpg'),
(21, 6, 'Who was is father of the Indian Space Program?', 'A.P.J. Abdul Kalam', 'Vikram Sarabai', 'Satish Dawan', 'K.Sivan', 'B', 'question.jpg'),
(22, 6, 'Which Indian is cretided for first using the number Zero in mathematic', 'BrahmaGupta', 'Aryabhata', 'K. Ramasubramaniam', 'Ramanujam', 'A', 'question.jpg'),
(23, 7, 'What movie, based on a true story, called?', 'Agent Vinod', 'Raazi', 'Madras Cafe', 'Skyfall', 'B', 'raazi.jpg'),
(24, 7, 'What language was Baahubali originally made in?', 'Hindi', 'Tamil', 'Telegu', 'Gujarati', 'C', 'baahubali.jpg'),
(25, 7, 'Who is the actress in this movie, Padmavat?', 'Priyanka Chopra', 'Deepika Kakkar', 'Anushka Sharma', 'Deepika Padukone', 'D', 'padmaavat.jpg'),
(26, 7, 'Who is this famous actress that recently passed away in February 2018?', 'Helen', 'Lata Mangeshkar', 'Sridevi', 'Jhanvi Kapoor', 'C', 'sridevi.jpg'),
(27, 8, 'What is the most played instrument in India?', 'Sarangi', 'Flute', 'Sitar', 'Tabla', 'C', 'Question_2_Instruments.jpeg'),
(28, 8, 'What instrument is Ustad Zakir Hussian known for playing?', 'Dolak', 'Damaru', 'Santoor', 'Tabla', 'D', 'Question_3_Instruments.jpeg'),
(29, 8, 'The indian instrument, the shehnai, has how many octaves?', '2', '3', '4', '5', 'A', 'Question_4_Instruments.jpeg'),
(30, 9, 'What is this art form on fabric called?', 'Painting', 'Embroidery', 'Block Print', 'Screen printing', 'B', 'Embroidery.jpg'),
(31, 9, 'This method of embroidery used in India is called Zardozi. What kind o', 'Metal', 'Wool', 'Silk', 'Cotton', 'A', 'Zardozi.jpeg'),
(32, 9, 'This mirror work is traditional to which State in India?', 'Gujarat', 'Mizoram', 'Kerala', 'Tamil Nadu', 'A', 'Mirrorwork.jpg'),
(33, 9, 'It takes upto 3 months to embroider these type of \'running\' stitches o', 'Cross stitch', 'Block printing', 'Crewel', 'Kantha', 'D', 'Kantha.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `image_name` varchar(45) NOT NULL,
  `topic` varchar(20) NOT NULL,
  `sequence` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `image_name`, `topic`, `sequence`) VALUES
(1, 'dresses_and_costumes.png', 'Dresses', 5),
(2, 'dances.jpg', 'Dances', 3),
(3, 'festivals.png', 'festivals', 1),
(4, 'foods.png', 'foods', 6),
(5, 'geography.png', 'geography', 8),
(6, 'leaders_and_scientists.png', 'scientists', 2),
(7, 'movies.png', 'Movies', 4),
(8, 'musical_instruments.png', 'Musical Instruments', 7),
(9, 'embroidery.png', 'embroidery', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `role` varchar(20) NOT NULL,
  `modified_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `hash`, `active`, `role`, `modified_time`, `created_time`) VALUES
(2, 'billy', 'joel', 'musicboi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 'admin', '2019-07-29 20:04:17', '2019-07-29 20:04:17'),
(3, 'Siva', 'Jasthi', 'siva.jasthi@metrostate.edu', '0c488332a8223a81f1ddbdd885aef29e', 0, 'admin', '2019-08-07 18:14:44', '2019-08-07 18:08:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `preferences`
--
ALTER TABLE `preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
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
-- AUTO_INCREMENT for table `preferences`
--
ALTER TABLE `preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
