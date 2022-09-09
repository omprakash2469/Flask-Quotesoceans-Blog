-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2022 at 03:32 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quotedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'quotes', '04cbf1a4757432ed76fba1e044b614e1'),
(2, 'omprakash', '2abec193dc65149b023f9f21fa09567f'),
(3, 'sahil', '7eaeec35f5b01aa27b2c67f87f294c3e'),
(4, 'paras', '7651d63a90426410eb7f1e1511b83fa5');

-- --------------------------------------------------------

--
-- Table structure for table `attitude`
--

CREATE TABLE `attitude` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attitude`
--

INSERT INTO `attitude` (`quoteid`, `quotetext`, `quoteImg`, `authorid`, `quotedate`) VALUES
(1, 'If the thing you wish to do is right, and you believe in it, go ahead and do it!', '', 73, '2021-10-29 07:15:57'),
(2, 'Develop a positive self-image. Your image, your reactions to life, and your decisions are completely within your control.', '', 74, '2021-10-29 07:27:36'),
(3, 'Success is something you attract by the person you become.', '', 76, '2021-11-07 07:01:09'),
(4, 'I\'d like mornings better if they started later.', '', 78, '2021-11-07 07:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `name`) VALUES
(70, 'Abraham Maslow'),
(60, 'Albert Einstein'),
(3, 'Alexander Graham Bell'),
(67, 'Anthony Robbins'),
(47, 'Aristotle'),
(59, 'Aryabhata'),
(11, 'B.R.Ambedkar'),
(29, 'Bal Gangadhar Tilak'),
(53, 'Benjamin Franklin'),
(12, 'Bhagat Singh'),
(4, 'Bill Gates'),
(58, 'Chanakya'),
(56, 'Charles Babbage'),
(42, 'Charles Darwin'),
(82, 'Cherie Carter Scott'),
(85, 'Daniel Evdokimoff'),
(51, 'Dashrath Manjhi'),
(77, 'Demetrius Martin'),
(7, 'Dr. A.P.J Abdul Kalam'),
(23, 'Dr. Rajendra Prasad'),
(72, 'Eben Pagan'),
(6, 'Elon Musk'),
(80, 'Florence Scovel Shinn'),
(43, 'Galileo Galilei'),
(71, 'George Lorimer'),
(61, 'Hal Elrod'),
(55, 'Henry Ford'),
(38, 'Hrithik Roshan'),
(19, 'Indira Gandhi'),
(41, 'Isaac Newton'),
(35, 'Jack Ma'),
(57, 'James Watt'),
(14, 'Jawaharlal Nehru'),
(26, 'Jayaprakash Narayan'),
(32, 'Jeff Bezos'),
(76, 'Jim Rohn'),
(63, 'Joel Olsteen'),
(20, 'Kapil Dev'),
(39, 'Kapil Sharma'),
(54, 'Karl Benz'),
(22, 'Lal Bahadur Shastri'),
(28, 'Lala Lajpat Rai'),
(34, 'Larry Page'),
(25, 'Lata Mangeshkar'),
(48, 'Leonardo da Vinci'),
(2, 'Mahatma Gandhi'),
(50, 'Marie Curie'),
(84, 'Mark Twain'),
(33, 'Mark Zuckerberg'),
(81, 'Marshal Goldsmith'),
(74, 'Mary Kay'),
(68, 'Matthew Kelly'),
(52, 'Michael Faraday'),
(30, 'Milkha Singh'),
(15, 'Mother Teresa'),
(79, 'Muhammad Ali'),
(36, 'Mukesh Ambani'),
(73, 'Napoleon Hill'),
(46, 'Nikola Tesla'),
(24, 'P. T. Usha'),
(49, 'Pablo Picasso'),
(16, 'Rabindranath Tagore'),
(21, 'Raja Ram Mohan Roy'),
(83, 'Robert Collier'),
(1, 'Robert T. Kiyosaki'),
(69, 'Robin Sharma'),
(13, 'Sachin Tendulkar'),
(62, 'Saint Augustine'),
(8, 'Sandeep Maheshwari'),
(31, 'Sarojini Naidu'),
(64, 'Seth Godin'),
(37, 'Shah Rukh Khan'),
(9, 'Sonu Sharma'),
(44, 'Stephen Hawking'),
(5, 'Steve Jobs'),
(17, 'Subhash Chandra Bose'),
(40, 'Sunil Grover'),
(10, 'Swami Vivekananda'),
(45, 'Thomas Alva Edison'),
(78, 'Unknown'),
(66, 'Warren Buffett'),
(65, 'William S. Burroughs');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`quoteid`, `quotetext`, `quoteImg`, `authorid`, `quotedate`) VALUES
(1, 'The story of the human race is the story of men and women selling themselves short.', '', 70, '2021-10-25 15:10:30'),
(2, 'Our levels of success will rarely exceed our level of personal development because success is something we attract by who we become.', '', 61, '2021-10-25 15:32:10'),
(3, 'If the thing you wish to do is right, and you believe in it, go ahead and do it!', '', 73, '2021-10-29 07:15:57'),
(4, 'Every failure brings with it the seed of an equivalent success.', '', 73, '2021-10-29 07:17:17'),
(5, 'PRACTICAL DREAMERS do not quit!', '', 73, '2021-10-29 07:18:31'),
(6, 'Always picture yourself successful. Visualize the person you desire to become. Set aside time each day to be alone and undisturbed. Get comfortable and relax. Close your eyes and concentrate on your desires and goals. See yourself in this new environment, capable and self-confident.', '', 74, '2021-10-29 07:23:27'),
(7, 'Every success, be it large or small, is proof that you are capable of achieving more success. Celebrate each success. You can recall it when begin to lose faith in yourself.', '', 74, '2021-10-29 07:24:51'),
(8, 'Have a clear direction of where you want to go. Be aware when you begin to deviate from goals and take immediate corrective action.', '', 74, '2021-10-29 07:26:22'),
(9, 'When a person with money meets a person with experience, the one with experience ends up with the money and the one with money leaves with experience!', '', 66, '2021-11-05 06:18:13'),
(10, 'Success is something you attract by the person you become.', '', 76, '2021-11-07 07:01:09'),
(11, 'You will be a failure until you impress the subconscious with the conviction you are a success. This is done by making an affirmation, which clicks.', '', 80, '2021-11-07 07:28:09'),
(12, 'Ordinary people believe only in the possible. Extraordinary people visualize not what is possible or probable, but rather what is impossible. And by visualizing the impossible, they begin to see it as possible.', '', 82, '2021-11-07 07:36:52'),
(13, 'A person who won\'t read has no advantage over one who can\'t read.', '', 84, '2021-11-07 07:42:30'),
(14, 'Reading is to the mind what exercise is to the body and prayer is to the soul. We become the books we read.', '', 68, '2021-11-07 07:43:48'),
(15, 'If you are a Taxi Driver you must have a car! If you are a soldier you need a weapon! To be married you need a partner!  If you are a hairdresser you need a pair of scissors and If you ARE A BUSINESS YOU NEED A WEBSITE! ', '', 85, '2021-11-14 16:34:40'),
(16, '“If your business is not on the Internet, then your business will be out of business.” ', '', 4, '2021-11-14 16:36:31'),
(17, 'Someone is sitting in the shade of a tree today because planted a tree a long time ago.', '163747769974tZmuj3DrzgoF3.jpg', 66, '2021-11-21 06:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `catImage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `catImage`) VALUES
(1, 'life', '1637344297BpAbclOoIw8x5Nt.webp'),
(2, 'love', '1637344305fReb5ACI7jcpPN0.webp'),
(3, 'attitude', '1637344315691gy53DjV0FZ5Q.webp'),
(4, 'business', '16373443256UesJDW83X04h7y.webp'),
(5, 'programming', '1637344334z6QJDliCmEOT19h.webp'),
(6, 'sports', '1637344341v13O5j06epIf4Sd.webp'),
(7, 'motivation', '1637344348flLdVpmaCZos2O8.webp'),
(8, 'relationship', '1637344357dxmOLJ40SqjF6r4.webp'),
(9, 'philosophy', 'philosophy-category-image.webp'),
(10, 'spirituality', 'spirituality-category-image.webp'),
(11, 'friendship', '1637344377CkcVqB7NPS3ZhA1.webp'),
(12, 'travel', '1637344389yXB3Df6VS3zlKsi.webp'),
(13, 'family', '16373444013b30vX8U4F45zkx.webp'),
(14, 'wedding', '163734442423MXYRnJfaQjg4k.webp'),
(15, 'psychology', '1637344434I40jVx83Ng5ltO3.webp'),
(16, 'universe', '1637344442naRU6140cABguVx.webp');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `user_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `friendship`
--

CREATE TABLE `friendship` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friendship`
--

INSERT INTO `friendship` (`quoteid`, `quotetext`, `quoteImg`, `authorid`, `quotedate`) VALUES
(4, 'It is a strange thing to have one of the spiritual people in your young life turn out to be, symbolically and in reality, a gold miner.', '', 5, '2021-10-25 14:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `life`
--

CREATE TABLE `life` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `life`
--

INSERT INTO `life` (`quoteid`, `quotetext`, `quoteImg`, `authorid`, `quotedate`) VALUES
(56, 'I seem to have been only like a boy playing on the seashore, and diverting myself in now and then finding a smoother pebble or a prettier shell than ordinary, whilst the great ocean of truth lay all undiscovered before me.', '', 41, '2021-10-24 14:45:28'),
(57, 'Two things are infinite: the universe and human stupidity; and I’m not sure about the universe.', '', 60, '2021-10-24 14:51:32'),
(58, 'Science without religion is lame, religion without science is blind.', '', 60, '2021-10-24 14:59:33'),
(59, 'A man who dares to waste one hour of time has not discovered the value of life.', '', 42, '2021-10-24 15:03:29'),
(60, 'Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less.', '', 50, '2021-10-24 15:11:58'),
(61, 'It is a strange thing to have one of the spiritual people in your young life turn out to be, symbolically and in reality, a gold miner.', '', 5, '2021-10-25 14:40:50'),
(62, 'There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.', '', 60, '2021-10-25 14:49:05'),
(63, 'Life begins each morning.', '', 63, '2021-10-25 14:55:34'),
(64, '“Life’s too short” is repeated often enough to be a cliché, but this time it’s true. You don’t have enough time to be both unhappy and mediocre. It’s not just pointless; it’s painful.', '', 64, '2021-10-25 14:57:36'),
(65, 'To make profound changes in your life, you need either inspiration or desperation.', '', 67, '2021-10-25 15:03:51'),
(66, 'One of the saddest things in life is to get to the end and look back in regret, knowing that you could have been, done and had so much more.', '', 69, '2021-10-25 15:09:06'),
(67, 'You’ve got to get up every morning with determination if you’re going to go to bed with satisfaction.', '', 71, '2021-10-25 15:34:39'),
(68, 'Your first ritual that you do during the day is the highest leveraged ritual, by far, because it has the effect of setting your mind and setting the context, for the rest of your day.', '', 72, '2021-10-25 15:36:04'),
(69, 'Every success, be it large or small, is proof that you are capable of achieving more success. Celebrate each success. You can recall it when begin to lose faith in yourself.', '', 74, '2021-10-29 07:24:51'),
(70, 'Have a clear direction of where you want to go. Be aware when you begin to deviate from goals and take immediate corrective action.', '', 74, '2021-10-29 07:26:22'),
(71, 'Develop a positive self-image. Your image, your reactions to life, and your decisions are completely within your control.', '', 74, '2021-10-29 07:27:36'),
(72, 'When a person with money meets a person with experience, the one with experience ends up with the money and the one with money leaves with experience!', '', 66, '2021-11-05 06:18:13'),
(73, 'An extraordinary life is all about daily, continuous improvements in the areas that matter most.', '', 69, '2021-11-07 07:03:19'),
(74, 'Your life is made up of the PHYSICAL, INTELLECTUAL, EMOTIONAL, and SPIRITUAL PARTS that make up every human being.', '', 61, '2021-11-07 07:19:40'),
(75, 'In the attitude of silence the soul finds the path in a clearer light, and what is elusive and deceptive resolves itself into crystal clearness.', '', 2, '2021-11-07 07:22:05'),
(76, 'You can learn more in an hour of silence than you can in a year from books.', '', 68, '2021-11-07 07:23:35'),
(77, 'See things as you would have them be instead of as they are.', '', 83, '2021-11-07 07:38:22'),
(78, 'If you don\'t make time for exercise, you\'ll probably have to make time for illness.', '', 69, '2021-11-07 07:40:17'),
(79, 'Reading is to the mind what exercise is to the body and prayer is to the soul. We become the books we read.', '', 68, '2021-11-07 07:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `love`
--

CREATE TABLE `love` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `love`
--

INSERT INTO `love` (`quoteid`, `quotetext`, `quoteImg`, `authorid`, `quotedate`) VALUES
(5, 'On the one hand, we all want to be happy. On the other hand, we all know the things that make us happy. But we don’t do those things. Why? Simple. We are too busy. Too busy doing what? Too busy trying to be happy.”', '', 68, '2021-10-25 15:06:53'),
(6, 'Your life is made up of the PHYSICAL, INTELLECTUAL, EMOTIONAL, and SPIRITUAL PARTS that make up every human being.', '', 61, '2021-11-07 07:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `motivation`
--

CREATE TABLE `motivation` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motivation`
--

INSERT INTO `motivation` (`quoteid`, `quotetext`, `quoteImg`, `authorid`, `quotedate`) VALUES
(8, 'I had no idea what I wanted to do with my life and no idea how college was going to help me figure it out. And here I was spending all of the money my parents had saved their entire life. So I decided to drop out and trust that it would all work out okay.', '', 5, '2021-10-25 14:44:37'),
(9, 'There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.', '', 60, '2021-10-25 14:49:05'),
(10, 'Life begins each morning.', '', 63, '2021-10-25 14:55:34'),
(11, '“Life’s too short” is repeated often enough to be a cliché, but this time it’s true. You don’t have enough time to be both unhappy and mediocre. It’s not just pointless; it’s painful.', '', 64, '2021-10-25 14:57:36'),
(12, 'Our levels of success will rarely exceed our level of personal development because success is something we attract by who we become.', '', 61, '2021-10-25 15:32:10'),
(13, 'You’ve got to get up every morning with determination if you’re going to go to bed with satisfaction.', '', 71, '2021-10-25 15:34:39'),
(14, 'Your first ritual that you do during the day is the highest leveraged ritual, by far, because it has the effect of setting your mind and setting the context, for the rest of your day.', '', 72, '2021-10-25 15:36:04'),
(15, 'If the thing you wish to do is right, and you believe in it, go ahead and do it!', '', 73, '2021-10-29 07:15:57'),
(16, 'Every failure brings with it the seed of an equivalent success.', '', 73, '2021-10-29 07:17:17'),
(17, 'PRACTICAL DREAMERS do not quit!', '', 73, '2021-10-29 07:18:31'),
(18, 'Always picture yourself successful. Visualize the person you desire to become. Set aside time each day to be alone and undisturbed. Get comfortable and relax. Close your eyes and concentrate on your desires and goals. See yourself in this new environment, capable and self-confident.', '', 74, '2021-10-29 07:23:27'),
(19, 'Every success, be it large or small, is proof that you are capable of achieving more success. Celebrate each success. You can recall it when begin to lose faith in yourself.', '', 74, '2021-10-29 07:24:51'),
(20, 'Success is something you attract by the person you become.', '', 76, '2021-11-07 07:01:09'),
(21, 'If you really think about it, hitting the snooze button in the morning doesn\'t even make sense. It\'s like saying, \'I hate getting up in the morning - so I do it over... and over... and over again.\'', '', 77, '2021-11-07 07:11:36'),
(22, 'It\'s the repetition of affirmations that leads to belief. Once that belief becomes a deep conviction, things began to happen.', '', 79, '2021-11-07 07:26:17'),
(23, 'You will be a failure until you impress the subconscious with the conviction you are a success. This is done by making an affirmation, which clicks.', '', 80, '2021-11-07 07:28:09'),
(24, 'The #1 skill of influencers is the sincere effort to make a person feel that he or she is the most important person in the world.', '', 81, '2021-11-07 07:33:39'),
(25, 'Ordinary people believe only in the possible. Extraordinary people visualize not what is possible or probable, but rather what is impossible. And by visualizing the impossible, they begin to see it as possible.', '', 82, '2021-11-07 07:36:52'),
(26, 'If you don\'t make time for exercise, you\'ll probably have to make time for illness.', '', 69, '2021-11-07 07:40:17'),
(27, 'Reading is to the mind what exercise is to the body and prayer is to the soul. We become the books we read.', '', 68, '2021-11-07 07:43:48'),
(28, '“If your business is not on the Internet, then your business will be out of business.” ', '', 4, '2021-11-14 16:36:31'),
(29, 'Someone is sitting in the shade of a tree today because planted a tree a long time ago.', '163747769974tZmuj3DrzgoF3.jpg', 66, '2021-11-21 06:54:59');

-- --------------------------------------------------------

--
-- Table structure for table `programming`
--

CREATE TABLE `programming` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `programming`
--

INSERT INTO `programming` (`quoteid`, `quotetext`, `quoteImg`, `authorid`, `quotedate`) VALUES
(1, 'A person who won\'t read has no advantage over one who can\'t read.', '', 84, '2021-11-07 07:42:30'),
(2, 'If you are a Taxi Driver you must have a car! If you are a soldier you need a weapon! To be married you need a partner!  If you are a hairdresser you need a pair of scissors and If you ARE A BUSINESS YOU NEED A WEBSITE! ', '', 85, '2021-11-14 16:34:40'),
(3, '“If your business is not on the Internet, then your business will be out of business.” ', '', 4, '2021-11-14 16:36:31');

-- --------------------------------------------------------

--
-- Table structure for table `psychology`
--

CREATE TABLE `psychology` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `psychology`
--

INSERT INTO `psychology` (`quoteid`, `quotetext`, `quoteImg`, `authorid`, `quotedate`) VALUES
(1, 'A man who dares to waste one hour of time has not discovered the value of life.', '', 42, '2021-10-24 15:03:29'),
(2, 'Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less.', '', 50, '2021-10-24 15:11:58'),
(3, 'Miracles do not happen in contradiction with nature but in contradiction with what we know about nature.', '', 62, '2021-10-25 14:53:47'),
(4, 'Desperation is the raw material of drastic change. Only those who can leave behind everything they have ever believed in can hope to escape.', '', 65, '2021-10-25 15:01:23'),
(5, 'To make profound changes in your life, you need either inspiration or desperation.', '', 67, '2021-10-25 15:03:51'),
(6, 'On the one hand, we all want to be happy. On the other hand, we all know the things that make us happy. But we don’t do those things. Why? Simple. We are too busy. Too busy doing what? Too busy trying to be happy.”', '', 68, '2021-10-25 15:06:53'),
(7, 'One of the saddest things in life is to get to the end and look back in regret, knowing that you could have been, done and had so much more.', '', 69, '2021-10-25 15:09:06'),
(8, 'PRACTICAL DREAMERS do not quit!', '', 73, '2021-10-29 07:18:31'),
(9, 'Develop a positive self-image. Your image, your reactions to life, and your decisions are completely within your control.', '', 74, '2021-10-29 07:27:36'),
(11, 'Your life is made up of the PHYSICAL, INTELLECTUAL, EMOTIONAL, and SPIRITUAL PARTS that make up every human being.', '', 61, '2021-11-07 07:19:40'),
(12, 'In the attitude of silence the soul finds the path in a clearer light, and what is elusive and deceptive resolves itself into crystal clearness.', '', 2, '2021-11-07 07:22:05'),
(13, 'You can learn more in an hour of silence than you can in a year from books.', '', 68, '2021-11-07 07:23:35'),
(14, 'It\'s the repetition of affirmations that leads to belief. Once that belief becomes a deep conviction, things began to happen.', '', 79, '2021-11-07 07:26:17'),
(15, 'The #1 skill of influencers is the sincere effort to make a person feel that he or she is the most important person in the world.', '', 81, '2021-11-07 07:33:39'),
(16, 'Ordinary people believe only in the possible. Extraordinary people visualize not what is possible or probable, but rather what is impossible. And by visualizing the impossible, they begin to see it as possible.', '', 82, '2021-11-07 07:36:52'),
(17, 'See things as you would have them be instead of as they are.', '', 83, '2021-11-07 07:38:22'),
(18, 'Reading is to the mind what exercise is to the body and prayer is to the soul. We become the books we read.', '', 68, '2021-11-07 07:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `relationship`
--

CREATE TABLE `relationship` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`quoteid`, `quotetext`, `quoteImg`, `authorid`, `quotedate`) VALUES
(8, 'If you don\'t make time for exercise, you\'ll probably have to make time for illness.', '', 69, '2021-11-07 07:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `universe`
--

CREATE TABLE `universe` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `universe`
--

INSERT INTO `universe` (`quoteid`, `quotetext`, `quoteImg`, `authorid`, `quotedate`) VALUES
(2, 'Two things are infinite: the universe and human stupidity; and I’m not sure about the universe.', '', 60, '2021-10-24 14:51:32'),
(3, 'There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.', '', 60, '2021-10-25 14:49:05'),
(4, 'Miracles do not happen in contradiction with nature but in contradiction with what we know about nature.', '', 62, '2021-10-25 14:53:47'),
(5, 'The story of the human race is the story of men and women selling themselves short.', '', 70, '2021-10-25 15:10:30'),
(6, 'I\'d like mornings better if they started later.', '', 78, '2021-11-07 07:14:33'),
(7, 'Your life is made up of the PHYSICAL, INTELLECTUAL, EMOTIONAL, and SPIRITUAL PARTS that make up every human being.', '', 61, '2021-11-07 07:19:40'),
(8, 'In the attitude of silence the soul finds the path in a clearer light, and what is elusive and deceptive resolves itself into crystal clearness.', '', 2, '2021-11-07 07:22:05'),
(9, 'You can learn more in an hour of silence than you can in a year from books.', '', 68, '2021-11-07 07:23:35'),
(10, 'Ordinary people believe only in the possible. Extraordinary people visualize not what is possible or probable, but rather what is impossible. And by visualizing the impossible, they begin to see it as possible.', '', 82, '2021-11-07 07:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `wedding`
--

CREATE TABLE `wedding` (
  `quoteid` int(11) NOT NULL,
  `quotetext` text NOT NULL,
  `quoteImg` varchar(255) NOT NULL,
  `authorid` int(11) NOT NULL,
  `quotedate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attitude`
--
ALTER TABLE `attitude`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `attitude` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);
ALTER TABLE `author` ADD FULLTEXT KEY `name_2` (`name`);
ALTER TABLE `author` ADD FULLTEXT KEY `name_3` (`name`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `business` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `family` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `friendship`
--
ALTER TABLE `friendship`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `friendship` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `life`
--
ALTER TABLE `life`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `life` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `love`
--
ALTER TABLE `love`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `love` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `motivation`
--
ALTER TABLE `motivation`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `motivation` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `programming`
--
ALTER TABLE `programming`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `programming` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `psychology`
--
ALTER TABLE `psychology`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `psychology` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `relationship`
--
ALTER TABLE `relationship`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `relationship` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `sports` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `travel` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `universe`
--
ALTER TABLE `universe`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `universe` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- Indexes for table `wedding`
--
ALTER TABLE `wedding`
  ADD PRIMARY KEY (`quoteid`),
  ADD KEY `authorid` (`authorid`);
ALTER TABLE `wedding` ADD FULLTEXT KEY `quotetext` (`quotetext`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attitude`
--
ALTER TABLE `attitude`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `friendship`
--
ALTER TABLE `friendship`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `life`
--
ALTER TABLE `life`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `love`
--
ALTER TABLE `love`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `motivation`
--
ALTER TABLE `motivation`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `programming`
--
ALTER TABLE `programming`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `psychology`
--
ALTER TABLE `psychology`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `relationship`
--
ALTER TABLE `relationship`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `universe`
--
ALTER TABLE `universe`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wedding`
--
ALTER TABLE `wedding`
  MODIFY `quoteid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attitude`
--
ALTER TABLE `attitude`
  ADD CONSTRAINT `attitude_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `business_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `family`
--
ALTER TABLE `family`
  ADD CONSTRAINT `family_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `friendship`
--
ALTER TABLE `friendship`
  ADD CONSTRAINT `friendship_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `life`
--
ALTER TABLE `life`
  ADD CONSTRAINT `life_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `love`
--
ALTER TABLE `love`
  ADD CONSTRAINT `love_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `motivation`
--
ALTER TABLE `motivation`
  ADD CONSTRAINT `motivation_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `programming`
--
ALTER TABLE `programming`
  ADD CONSTRAINT `programming_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `psychology`
--
ALTER TABLE `psychology`
  ADD CONSTRAINT `psychology_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `relationship`
--
ALTER TABLE `relationship`
  ADD CONSTRAINT `relationship_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `sports`
--
ALTER TABLE `sports`
  ADD CONSTRAINT `sports_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travel_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `universe`
--
ALTER TABLE `universe`
  ADD CONSTRAINT `universe_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

--
-- Constraints for table `wedding`
--
ALTER TABLE `wedding`
  ADD CONSTRAINT `wedding_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
