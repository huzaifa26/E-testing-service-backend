-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2022 at 08:39 PM
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
-- Database: `e_testing_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) UNSIGNED NOT NULL,
  `assignmentTitle` varchar(255) NOT NULL,
  `courseId` int(11) UNSIGNED NOT NULL,
  `fileUrl` varchar(255) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `fileType` varchar(255) NOT NULL,
  `startTime` varchar(255) NOT NULL,
  `endTime` varchar(255) NOT NULL,
  `totalMarks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `assignmentTitle`, `courseId`, `fileUrl`, `fileName`, `fileType`, `startTime`, `endTime`, `totalMarks`) VALUES
(13, 'Keras', 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fmediamodifier-JskqEILt-ds-unsplash.jpg?alt=media&token=bcf04adf-6251-4a66-860a-843595371915', 'Content', 'zip', '2022-10-08T04:33', '2022-10-27T04:33', 30),
(14, 'Naive Bayes', 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=1e1cfd05-f5cd-4b2b-8bb3-fbe9d3f08ed7', 'Content', 'zip', '2022-12-12T04:34', '2022-12-12T14:42', 40),
(15, 'Gradient Decent', 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=030466b0-1b0e-4439-825e-6c1bd95986ce', 'Content', 'zip', '2022-10-25T04:34', '2022-12-31T04:34', 22),
(16, 'KNN', 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=6ac80a48-69d5-4e5a-9f16-63a1e6f54565', 'Content', 'zip', '2022-10-13T04:34', '2022-10-05T04:37', 4),
(17, 'Clustering', 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=78aae406-713c-47c4-803f-2d0817fbafcf', 'Content', 'zip', '2022-09-05T04:34', '2022-10-28T04:34', 22),
(24, 'CNN', 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fecommerce-web-designs-2016-7.jpg?alt=media&token=d29419f4-1743-487b-bcca-71cc10f76a41', 'ecommerce-web-designs-2016-7', 'jpg', '2022-10-06T13:22', '2022-12-30T13:22', 50),
(27, 'JOINS', 16, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=3b06fa2a-03f4-4a87-9ac2-fad68765cdfc', 'Content', 'zip', '2022-10-06T08:17', '2022-10-27T08:17', 20),
(29, 'abc', 18, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=e2cec089-316f-4380-bc33-37a3048d1443', 'Content', 'zip', '2022-10-05T08:31', '2022-10-05T08:33', 20);

-- --------------------------------------------------------

--
-- Table structure for table `attemptedquizquestions`
--

CREATE TABLE `attemptedquizquestions` (
  `id` int(11) UNSIGNED NOT NULL,
  `userId` int(11) UNSIGNED DEFAULT NULL,
  `quizId` int(11) UNSIGNED DEFAULT NULL,
  `quizQuestionId` int(11) UNSIGNED DEFAULT NULL,
  `selectedOption` varchar(255) DEFAULT NULL,
  `obtainedMarks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attemptedquizquestions`
--

INSERT INTO `attemptedquizquestions` (`id`, `userId`, `quizId`, `quizQuestionId`, `selectedOption`, `obtainedMarks`) VALUES
(1, 2, 442, 1107, 'Input layer ', 1),
(2, 2, 442, 1108, 'Neural network is the branch of AI.Hi.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coursecontent`
--

CREATE TABLE `coursecontent` (
  `id` int(11) UNSIGNED NOT NULL,
  `courseId` int(11) UNSIGNED NOT NULL,
  `fileUrl` varchar(255) NOT NULL,
  `fileName` varchar(255) NOT NULL,
  `fileType` varchar(255) NOT NULL,
  `createdTime` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursecontent`
--

INSERT INTO `coursecontent` (`id`, `courseId`, `fileUrl`, `fileName`, `fileType`, `createdTime`, `title`) VALUES
(29, 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=d5daf828-e8b0-422a-b926-2d7a5c1ae518', 'Content', 'zip', '2022-10-05 04:30:40', 'Neural Network'),
(30, 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=55cdc615-e092-42bc-8710-0d0dee27ac6b', 'Content', 'zip', '2022-10-05 04:31:44', 'KNN'),
(31, 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=039ba62a-16e7-4f2c-a39e-9b1fc11f7003', 'Content', 'zip', '2022-10-05 04:31:54', 'K-Nearest'),
(32, 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=7005115a-b3cf-436d-a777-80e7acaa2b4c', 'Content', 'zip', '2022-10-05 04:32:12', 'S-V-M'),
(33, 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=a8df2455-d2a3-4dbd-be28-707f7602b519', 'Content', 'zip', '2022-10-05 04:32:31', 'Tenserflow'),
(34, 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=2c74610f-f91f-4f34-849d-b62a3c2edfb4', 'Content', 'zip', '2022-10-05 04:32:59', 'CNN'),
(35, 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=4b1f4b2a-0e89-4096-8973-ff8716b771e3', 'Content', 'zip', '2022-10-05 04:33:18', 'Naive Bayes'),
(36, 2, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=9ab65db9-2baf-4d4a-a0e8-f0056b34c23a', 'Content', 'zip', '2022-10-05 05:34:31', 'Synaptic Dynamics'),
(37, 16, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=9fc6cc26-6337-4d12-841e-af83084532dd', 'Content', 'zip', '2022-10-05 08:11:25', 'SECLECT'),
(38, 16, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=49216cd6-8716-46e7-8b17-0239c1f53fc6', 'Content', 'zip', '2022-10-05 08:11:41', 'UPDATE'),
(39, 16, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=52c9c808-a483-42ad-8b64-60713de44af0', 'Content', 'zip', '2022-10-05 08:11:56', 'INNER JOINS'),
(40, 16, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=13c51c31-0f9a-4200-80db-f47f1bbba1df', 'Content', 'zip', '2022-10-05 08:12:08', 'DELETE'),
(41, 16, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=54aa203a-f43c-482a-b9b3-86c2759a224a', 'Content', 'zip', '2022-10-05 08:12:24', 'TRUNCATE'),
(42, 16, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=0f3e0a56-0cdd-42d1-9d62-a3d4c9a62a22', 'Content', 'zip', '2022-10-05 08:12:48', 'LEFT JOIN'),
(43, 16, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=99103b42-ecec-4e46-8f20-ffb66d0457be', 'Content', 'zip', '2022-10-05 08:13:10', 'OUTER JOIN'),
(44, 18, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=4af29f6d-d0a8-4b91-b5a7-33556afd4bc8', 'Content', 'zip', '2022-10-05 08:21:09', 'ع-ر-ب'),
(45, 18, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=9f30bf10-c8ba-45f8-bab0-aebe02c0a00d', 'Content', 'zip', '2022-10-05 08:21:37', 'ﺍﻟﹿﻌﹷﺮﹶﺑﻴﹽﺔ'),
(46, 18, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=87540364-1e61-4e44-ae83-c8307c6ac42e', 'Content', 'zip', '2022-10-05 08:21:52', 'Airab'),
(47, 18, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=d8213eaa-e327-4fee-910b-c272b0d5951b', 'Content', 'zip', '2022-10-05 08:22:06', 'Words'),
(49, 18, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=2d46d3ce-06bc-40b4-a6e7-81fa50927d79', 'Content', 'zip', '2022-10-05 08:26:07', ' خط'),
(50, 18, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=b877933a-39b2-4180-9143-4636b496351e', 'Content', 'zip', '2022-10-05 08:27:27', 'صباح الخير'),
(51, 18, 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2FContent.zip?alt=media&token=cc36ecbc-2a64-43b7-b0df-c64fa1286a5c', 'Content', 'zip', '2022-10-05 08:27:46', 'ﺷﻜﺮﺍﹰ');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) UNSIGNED NOT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `courseDescription` varchar(255) NOT NULL,
  `createTime` datetime NOT NULL,
  `courseKey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `userId`, `courseName`, `imageUrl`, `courseDescription`, `createTime`, `courseKey`) VALUES
(2, 1, 'Artificial Intelligence', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fcapsule_616x353_japanese.jpg?alt=media&token=36d7758c-bd08-4a36-8f70-6c540ce38461', 'Artificial intelligence (AI) is intelligence demonstrated by machines, as opposed to the natural intelligence displayed by animals and humans.', '2022-06-27 14:07:55', 'hzlchq'),
(3, 1, 'Machine Learning', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fdownload%20(2).jpg?alt=media&token=1093b0eb-f2b9-41dd-8d77-465cab6c0b1a', 'Machine learning (ML) is a type of artificial intelligence (AI) that allows software applications to become more accurate at predicting outcomes without being explicitly programmed to do so. Machine learning algorithms use historical data as input to pred', '2022-06-30 13:24:26', 'myk2n0'),
(16, 2, 'Database', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fdownload%20(4).jpg?alt=media&token=9d0b0720-8543-4864-9a29-cff69ff3c2c7', 'In computing, a database is an organized collection of data stored and accessed electronically. Small databases can be stored on a file system, while large databases are hosted on computer clusters or cloud storage. The design of databases spans formal te', '2022-10-05 06:05:34', 'rq5m4s'),
(18, 2, 'Arabic', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2F360_F_349345585_3ktt9aoNxb4NF7FEJOXUTQHUHzVFr41l.jpg?alt=media&token=7bb8e563-7560-40aa-80d8-2bb436d52e3e', 'Arabic (اَلْعَرَبِيَّةُ, al-ʿarabiyyah [al ʕaraˈbijːa] (listen); عَرَبِيّ, ʿarabīy [ˈʕarabiː] (listen) or [ʕaraˈbij]) is a Semitic language spoken primarily across the Arab world.[5] Having emerged in the 1st century, it is named after the Arab people; th', '2022-10-05 06:09:58', 'q9nfo6'),
(20, 1, 'History', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fistockphoto-1092170968-612x612.jpg?alt=media&token=557e81db-bdcb-4c63-a04f-41fca67dbdf1', 'Mathematics (from Ancient Greek μάθημα; máthēma: \'knowledge, study, learning\') is an area of knowledge that includes such topics as numbers (arithmetic and number theory),[1] formulas and related structures (algebra),[2] shapes and the spaces in which the', '2022-10-05 06:36:41', '3swa73'),
(22, 3, 'ReactJS', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fdownload%20(3).jpg?alt=media&token=3e26a796-ac4f-4bcf-81d4-7ddea2d78342', 'React · Declarative. React makes it painless to create interactive UIs. · Component-Based. Build encapsulated components that manage their own state, then compose ..', '2022-10-05 06:51:21', 'yk27oe'),
(24, 2, 'testCourse2', 'https://d3njjcbhbojbot.cloudfront.net/api/utilities/v1/imageproxy/https://coursera-course-photos.s3.amazonaws.com/cb/3c4030d65011e682d8b14e2f0915fa/shutterstock_226881610.jpg?auto=format%2Ccompress&dpr=1', 'This is a test course', '2022-10-05 22:23:15', '32yrek');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `id` int(11) UNSIGNED NOT NULL,
  `courseId` int(11) UNSIGNED NOT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `joinedTime` datetime NOT NULL,
  `blocked` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`id`, `courseId`, `userId`, `joinedTime`, `blocked`) VALUES
(153, 18, 1, '2022-10-05 06:25:18', 0),
(154, 20, 3, '2022-10-05 06:25:18', 0),
(155, 3, 3, '2022-10-05 06:25:18', 0),
(156, 2, 3, '2022-10-05 06:25:18', 0),
(157, 2, 10, '2022-10-05 07:00:42', 0),
(158, 3, 10, '2022-10-05 07:00:42', 0),
(159, 20, 10, '2022-10-05 07:00:42', 0),
(160, 20, 9, '2022-10-05 07:00:42', 0),
(161, 3, 9, '2022-10-05 07:00:42', 0),
(162, 2, 9, '2022-10-05 07:00:42', 0),
(163, 2, 8, '2022-10-05 07:00:42', 0),
(164, 3, 8, '2022-10-05 07:00:42', 0),
(165, 20, 8, '2022-10-05 07:00:42', 0),
(166, 20, 7, '2022-10-05 07:00:42', 0),
(167, 3, 7, '2022-10-05 07:00:42', 0),
(168, 2, 7, '2022-10-05 07:00:42', 0),
(169, 2, 6, '2022-10-05 07:00:42', 0),
(170, 3, 6, '2022-10-05 07:00:42', 0),
(171, 20, 6, '2022-10-05 07:00:42', 0),
(173, 16, 1, '2022-10-05 22:13:26', 0),
(174, 24, 1, '2022-10-05 22:21:11', 0),
(177, 2, 2, '2022-10-26 21:29:00', 0),
(178, 20, 2, '2022-12-11 22:06:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mobiledetect`
--

CREATE TABLE `mobiledetect` (
  `id` int(11) UNSIGNED NOT NULL,
  `quizId` int(11) UNSIGNED DEFAULT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `detectTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `courseId` int(11) UNSIGNED DEFAULT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `notificationText` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `open` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `courseId`, `userId`, `notificationText`, `type`, `open`) VALUES
(125, 2, 3, 'Dec 11 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(126, 2, 6, 'Dec 11 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(127, 2, 7, 'Dec 11 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(128, 2, 8, 'Dec 11 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(129, 2, 9, 'Dec 11 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(130, 2, 10, 'Dec 11 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(132, 2, 3, 'DEC 12 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(133, 2, 6, 'DEC 12 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(134, 2, 7, 'DEC 12 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(135, 2, 8, 'DEC 12 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(136, 2, 9, 'DEC 12 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(137, 2, 10, 'DEC 12 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(139, 2, 3, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(140, 2, 6, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(141, 2, 7, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(142, 2, 8, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(143, 2, 9, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(144, 2, 10, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(146, 2, 3, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(147, 2, 6, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(148, 2, 7, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(149, 2, 8, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(150, 2, 9, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(151, 2, 10, 'DEC 14 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(153, 2, 3, 'CHECKKK quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(154, 2, 6, 'CHECKKK quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(155, 2, 7, 'CHECKKK quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(156, 2, 8, 'CHECKKK quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(157, 2, 9, 'CHECKKK quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(158, 2, 10, 'CHECKKK quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(160, 2, 3, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(161, 2, 6, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(162, 2, 7, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(163, 2, 8, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(164, 2, 9, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(165, 2, 10, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(237, 2, 3, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(238, 2, 6, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(239, 2, 7, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(240, 2, 8, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(241, 2, 9, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(242, 2, 10, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(244, 2, 3, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(245, 2, 6, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(246, 2, 7, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(247, 2, 8, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(248, 2, 9, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(249, 2, 10, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(349, 2, 3, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(350, 2, 6, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(351, 2, 7, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(352, 2, 8, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(353, 2, 9, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(354, 2, 10, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(356, 2, 3, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(357, 2, 6, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(358, 2, 7, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(359, 2, 8, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(360, 2, 9, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(361, 2, 10, 'Check 77777 quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(362, 16, 1, 'Your access was restricted in Database class.', 'blocked', 1),
(363, 16, 1, 'Your access was unrestricted in Database class.', 'unblocked', 1),
(393, 2, 3, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(394, 2, 6, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(395, 2, 7, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(396, 2, 8, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(397, 2, 9, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(398, 2, 10, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(436, 2, 3, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(437, 2, 6, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(438, 2, 7, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(439, 2, 8, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(440, 2, 9, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(441, 2, 10, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(442, 2, 2, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(443, 2, 3, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(444, 2, 6, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(445, 2, 7, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(446, 2, 8, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(447, 2, 9, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(448, 2, 10, 'jh quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(449, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(450, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(451, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(452, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(453, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(454, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(455, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(456, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(457, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(458, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(459, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(460, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(461, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(462, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(463, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(464, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(465, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(466, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(467, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(468, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(469, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(470, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(471, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(472, 2, 2, 'Your access was restricted in Artificial Intelligence class.', 'blocked', 1),
(473, 2, 2, 'Your access was unrestricted in Artificial Intelligence class.', 'unblocked', 1),
(474, 2, 2, 'kjds quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(475, 2, 3, 'kjds quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(476, 2, 6, 'kjds quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(477, 2, 7, 'kjds quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(478, 2, 8, 'kjds quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(479, 2, 9, 'kjds quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1),
(480, 2, 10, 'kjds quiz will start in 5 minutes Artificial Intelligence class', 'quizTime', 1);

-- --------------------------------------------------------

--
-- Table structure for table `poolcategory`
--

CREATE TABLE `poolcategory` (
  `id` int(11) UNSIGNED NOT NULL,
  `courseId` int(11) UNSIGNED NOT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poolcategory`
--

INSERT INTO `poolcategory` (`id`, `courseId`, `userId`, `categoryName`) VALUES
(4, 3, 1, 'Car'),
(9, 3, 1, 'Wheels'),
(37, 2, 1, 'CNN'),
(38, 2, 1, 'Neural Network'),
(39, 2, 1, 'KNN'),
(40, 2, 1, 'Naive Bayes'),
(41, 16, 2, 'SELECT'),
(42, 16, 2, 'JOINS'),
(43, 2, 1, 'testCategory2');

-- --------------------------------------------------------

--
-- Table structure for table `poolquestionoptions`
--

CREATE TABLE `poolquestionoptions` (
  `id` int(11) UNSIGNED NOT NULL,
  `poolquestionId` int(11) UNSIGNED NOT NULL,
  `options` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poolquestionoptions`
--

INSERT INTO `poolquestionoptions` (`id`, `poolquestionId`, `options`) VALUES
(216, 124, 'Input layer '),
(217, 124, 'Output layer '),
(218, 124, 'Hidden layer'),
(219, 125, ' by providing additional units'),
(220, 125, 'by using probabilistic update'),
(221, 125, 'can be either probabilistic update or using additional units'),
(222, 126, 'True'),
(223, 126, 'False'),
(228, 128, 'True'),
(229, 128, 'False'),
(230, 129, 'True'),
(231, 129, 'False'),
(232, 130, 'accretive behaviour'),
(233, 130, ' interpolative behaviour'),
(234, 130, 'both accretive and interpolative behaviour'),
(235, 132, 'connect database'),
(236, 132, 'update database'),
(237, 132, 'merge database'),
(242, 123, 'Input layer '),
(243, 123, 'Output layer'),
(244, 123, 'Hidden layer'),
(245, 123, 'None of these ');

-- --------------------------------------------------------

--
-- Table structure for table `poolquestions`
--

CREATE TABLE `poolquestions` (
  `id` int(11) UNSIGNED NOT NULL,
  `courseId` int(11) UNSIGNED NOT NULL,
  `poolCategoryId` int(11) UNSIGNED NOT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `questionImage` varchar(255) DEFAULT NULL,
  `correctOption` varchar(255) DEFAULT NULL,
  `questionType` varchar(255) NOT NULL,
  `isMathjax` tinyint(1) NOT NULL,
  `points` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poolquestions`
--

INSERT INTO `poolquestions` (`id`, `courseId`, `poolCategoryId`, `userId`, `courseName`, `question`, `questionImage`, `correctOption`, `questionType`, `isMathjax`, `points`, `time`) VALUES
(109, 3, 4, 1, 'Machine Learning', 'okokokokokok', NULL, NULL, 'Subjective', 0, 1, 30),
(123, 2, 37, 1, 'Artificial Intelligence', '____________in which we give input to our model..', NULL, 'Input layer ', 'Mcq', 0, 1, 30),
(124, 2, 37, 1, 'Artificial Intelligence', 'The input from Input layer is then feed into the______. ', NULL, 'Input layer ', 'Mcq', 0, 1, 30),
(125, 2, 37, 1, 'Artificial Intelligence', 'How can false minima be reduced in case of error in recall in feedback neural networks? ', NULL, 'by using probabilistic update', 'Mcq', 0, 1, 30),
(126, 2, 37, 1, 'Artificial Intelligence', ' Is there any error in linear autoassociative networks? ', NULL, 'False', 'TRUE/FALSE', 0, 1, 30),
(128, 2, 37, 1, 'Artificial Intelligence', 'Linear neurons can be useful for application such as interpolation, is it true? ', NULL, 'True', 'TRUE/FALSE', 0, 1, 30),
(129, 2, 37, 1, 'Artificial Intelligence', ' What is the objective of a pattern storage task in a network? ', NULL, 'True', 'TRUE/FALSE', 0, 1, 30),
(130, 2, 37, 1, 'Artificial Intelligence', 'What property should a feedback network have, to make it useful for storing information? ', NULL, 'accretive behaviour', 'Mcq', 0, 1, 30),
(132, 16, 41, 2, 'Database', 'What is joins ?', NULL, 'merge database', 'Mcq', 0, 1, 30),
(140, 2, 38, 1, 'Artificial Intelligence', 'What is neural network ?', NULL, 'A neural network is a method in artificial intelligence that teaches computers to process data in a way that is inspired by the human brain. It is a type of machine learning process, called deep learning, that uses interconnected nodes or neurons in a lay', 'Subjective', 0, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) UNSIGNED NOT NULL,
  `quizTitle` varchar(255) NOT NULL,
  `courseId` int(11) UNSIGNED NOT NULL,
  `startTime` varchar(255) NOT NULL,
  `endTime` varchar(255) NOT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `questionShuffle` tinyint(1) NOT NULL DEFAULT 0,
  `answerShuffle` tinyint(1) NOT NULL DEFAULT 0,
  `seeAnswer` tinyint(1) NOT NULL DEFAULT 0,
  `copyQuestion` tinyint(1) NOT NULL DEFAULT 0,
  `detectMobile` tinyint(1) NOT NULL DEFAULT 0,
  `totalPoints` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `quizTitle`, `courseId`, `startTime`, `endTime`, `userId`, `questionShuffle`, `answerShuffle`, `seeAnswer`, `copyQuestion`, `detectMobile`, `totalPoints`) VALUES
(338, 'Words/Meaning', 18, '2022-11-01T13:05', '2022-10-06T08:28', 2, 0, 0, 0, 0, 0, 1),
(414, 'Stack3', 16, '2022-12-15T04:42', '2022-12-16T04:42', 2, 0, 0, 0, 0, 0, 1),
(422, 'sdk', 16, '2022-12-08T04:45', '2022-12-30T04:45', 2, 0, 0, 0, 0, 0, 4),
(432, 'kds', 2, '2022-12-23T11:04', '2022-12-16T11:04', 1, 0, 0, 0, 0, 0, 1),
(441, 'NEW 1', 2, '2022-12-26T19:36', '2022-12-31T19:34', 1, 0, 0, 0, 0, 0, 2),
(442, 'NEW 2', 2, '2022-12-26T19:36', '2022-12-30T19:34', 1, 0, 0, 0, 0, 0, 2),
(443, 'NEW 3', 2, '2022-12-26T19:38', '2022-12-29T19:35', 1, 0, 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quizquestionoptions`
--

CREATE TABLE `quizquestionoptions` (
  `id` int(11) UNSIGNED NOT NULL,
  `quizquestionId` int(11) UNSIGNED NOT NULL,
  `options` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizquestionoptions`
--

INSERT INTO `quizquestionoptions` (`id`, `quizquestionId`, `options`) VALUES
(1307, 895, 'what'),
(1308, 895, 'why'),
(1614, 1086, 'Input layer '),
(1615, 1086, 'Output layer '),
(1616, 1086, 'Hidden layer'),
(1652, 1106, 'Input layer '),
(1653, 1106, 'Output layer'),
(1654, 1106, 'Hidden layer'),
(1655, 1106, 'None of these '),
(1656, 1107, 'Input layer '),
(1657, 1107, 'Output layer'),
(1658, 1107, 'Hidden layer'),
(1659, 1107, 'None of these '),
(1660, 1109, 'Input layer '),
(1661, 1109, 'Output layer '),
(1662, 1109, 'Hidden layer'),
(1663, 1110, 'Input layer '),
(1664, 1110, 'Output layer'),
(1665, 1110, 'Hidden layer'),
(1666, 1110, 'None of these '),
(1667, 1112, 'True'),
(1668, 1112, 'False'),
(1669, 1113, 'True'),
(1670, 1113, 'False');

-- --------------------------------------------------------

--
-- Table structure for table `quizquestions`
--

CREATE TABLE `quizquestions` (
  `id` int(11) UNSIGNED NOT NULL,
  `quizId` int(11) UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `questionImage` varchar(255) DEFAULT NULL,
  `correctOption` varchar(255) DEFAULT NULL,
  `questionType` varchar(255) NOT NULL,
  `isMathjax` tinyint(1) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizquestions`
--

INSERT INTO `quizquestions` (`id`, `quizId`, `question`, `questionImage`, `correctOption`, `questionType`, `isMathjax`, `points`, `time`) VALUES
(895, 338, 'hazaa', NULL, 'what', 'Mcq', 0, 1, 30),
(1056, 414, 'asjkd', NULL, 'sdjk', 'Subjective', 0, 5, 30),
(1064, 422, 'asjk', NULL, 'kdsl', 'Subjective', NULL, 5, 30),
(1086, 432, 'The input from Input layer is then feed into the______. ', NULL, 'Input layer ', 'Mcq', NULL, 1, 30),
(1105, 441, 'What is neural network ?', NULL, 'A neural network is a method in artificial intelligence that teaches computers to process data in a way that is inspired by the human brain. It is a type of machine learning process, called deep learning, that uses interconnected nodes or neurons in a lay', 'Subjective', NULL, 1, 30),
(1106, 441, '____________in which we give input to our model..', NULL, 'Input layer ', 'Mcq', NULL, 1, 30),
(1107, 442, '____________in which we give input to our model..', NULL, 'Input layer ', 'Mcq', NULL, 1, 30),
(1108, 442, 'What is neural network ?', NULL, 'A neural network is a method in artificial intelligence that teaches computers to process data in a way that is inspired by the human brain. It is a type of machine learning process, called deep learning, that uses interconnected nodes or neurons in a lay', 'Subjective', NULL, 1, 30),
(1109, 443, 'The input from Input layer is then feed into the______. ', NULL, 'Input layer ', 'Mcq', NULL, 1, 30),
(1110, 443, '____________in which we give input to our model..', NULL, 'Input layer ', 'Mcq', NULL, 1, 30),
(1111, 443, 'What is neural network ?', NULL, 'A neural network is a method in artificial intelligence that teaches computers to process data in a way that is inspired by the human brain. It is a type of machine learning process, called deep learning, that uses interconnected nodes or neurons in a lay', 'Subjective', NULL, 1, 30),
(1112, 443, ' Is there any error in linear autoassociative networks? ', NULL, 'False', 'TRUE/FALSE', NULL, 1, 30),
(1113, 443, ' What is the objective of a pattern storage task in a network? ', NULL, 'True', 'TRUE/FALSE', NULL, 1, 30);

-- --------------------------------------------------------

--
-- Table structure for table `quizresult`
--

CREATE TABLE `quizresult` (
  `id` int(11) UNSIGNED NOT NULL,
  `quizId` int(11) UNSIGNED DEFAULT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `totalMarks` int(11) UNSIGNED DEFAULT NULL,
  `obtainedMarks` int(11) UNSIGNED DEFAULT NULL,
  `attemptedQuestions` int(11) UNSIGNED DEFAULT NULL,
  `totalQuestions` int(11) UNSIGNED DEFAULT NULL,
  `cancelled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizresult`
--

INSERT INTO `quizresult` (`id`, `quizId`, `userId`, `totalMarks`, `obtainedMarks`, `attemptedQuestions`, `totalQuestions`, `cancelled`) VALUES
(1, 442, 2, 2, 2, 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `submittedassignments`
--

CREATE TABLE `submittedassignments` (
  `id` int(11) UNSIGNED NOT NULL,
  `assignmentId` int(11) UNSIGNED NOT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `submittedTime` varchar(255) NOT NULL,
  `fileUrl` varchar(255) NOT NULL,
  `obtainedMarks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submittedassignments`
--

INSERT INTO `submittedassignments` (`id`, `assignmentId`, `userId`, `submittedTime`, `fileUrl`, `obtainedMarks`) VALUES
(5, 15, 2, '2022-10-02 18:35:02', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fmediamodifier-JskqEILt-ds-unsplash.jpg?alt=media&token=16d54bc6-915f-4699-bded-0fef4e823c55', 20),
(7, 13, 2, '2022-10-04 10:04:07', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2F6cddf6a616fbc38d0b4c0cf7bfea2c34.webp?alt=media&token=562723d9-210c-4357-bc13-88d40cb352ea', 20),
(8, 24, 2, '2022-10-04 13:24:06', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Foriginal-12b84ee6ffdd1c6bc33d4c4bac7f625c.webp?alt=media&token=86c2f598-7031-481d-ac68-a9b2a057c9f0', 30),
(9, 14, 2, '2022-10-04 15:07:49', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Foriginal-12b84ee6ffdd1c6bc33d4c4bac7f625c.webp?alt=media&token=f3b4f857-4853-4b9c-96f5-e3128d15ab64', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tabfocus`
--

CREATE TABLE `tabfocus` (
  `id` int(11) UNSIGNED NOT NULL,
  `quizId` int(11) UNSIGNED DEFAULT NULL,
  `userId` int(11) UNSIGNED NOT NULL,
  `lostFocusTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `phoneNumber` int(50) DEFAULT NULL,
  `userAddress` varchar(255) DEFAULT NULL,
  `userImg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullName`, `email`, `pass`, `verified`, `phoneNumber`, `userAddress`, `userImg`) VALUES
(1, 'Hamza Mushtaq', 'hamzamushtaq840@gmail.com', '$2b$10$J1PhxP3rDlBUIPGr.0kK5OJuEz.eMj.tvhW1fPDxOq7yutrt.Z6xy', 1, 2147483647, 'Kotli Azad Kashmir', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fimages%20(4).jpg?alt=media&token=6149eea8-dd46-4ab5-8a14-445e4c782714'),
(2, 'Imad Ahmed', 'imad@gmail.com', '$2b$10$tKyDb3HTf6Sc1.WAw3drIeZj54PzaOzQKVK6DD3RVvWG21PJ0YAmG', 1, 2147483647, 'Islamabad, Pakistan', 'https://firebasestorage.googleapis.com/v0/b/fyp-bb1b4.appspot.com/o/courseImages%2Fimages%20(2).jpg?alt=media&token=ede7b735-cae0-4245-b075-f393d025174e'),
(3, 'Huzaifa Abid', 'huzaifa@gmail.com', '$2b$10$Eb3u6TnKGTmrlWSfUTaTsOSrEEfWcfxxCHhHgqm0wiLtlaLrg.Cnm', 1, NULL, NULL, NULL),
(6, 'Kamran Ahmed', 'kamran@gmail.com', '$2b$10$xybxZsK6f/eiI8nx8wzMDeB3sFk4Upq1cRuSwEvnE1bq6W./d3m.S', 0, NULL, NULL, NULL),
(7, 'Ali Akbar', 'ali@gmail.com', '$2b$10$f0ECIkGrBmzRP7Bowg0D7OatIrf0PADn6khJrnr17o96HIiB0n.He', 0, NULL, NULL, NULL),
(8, 'Vishal', 'vishal145@richkk.club', '$2b$10$99om/WXMBkj7QLhbu.1uLelNyuGTzYbuWZrwxod9S9t35EFzsFSXW', 0, NULL, NULL, NULL),
(9, 'Ammad Amin', 'ammad@gmail.com', '$2b$10$OP8z.uru2V/cTvMXmJXR1.jOHnkhQZHarck2DoM/ett1a/fuw7J2O', 0, NULL, NULL, NULL),
(10, 'Akmal Masood', 'hnspakistan3@gmail.com', '$2b$10$B8ippvQorojF/ATL4NOwueE.D2S/3UB8wdpvy9.anfKisjszjnn4i', 0, NULL, NULL, NULL),
(11, 'Hamza Mushtaq', 'hnspakistan9@gmail.com', '$2b$10$SJck1RGLpuiaqiymWSUiPeR8Zm8MIKCoj0uK5HDFPrfEoybMW39jq', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assignment_ibfk_1` (`courseId`);

--
-- Indexes for table `attemptedquizquestions`
--
ALTER TABLE `attemptedquizquestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizquestionId` (`quizQuestionId`),
  ADD KEY `attemptedquizquestions_ibfk_1` (`quizId`),
  ADD KEY `attemptedquizquestions_ibfk_3` (`userId`);

--
-- Indexes for table `coursecontent`
--
ALTER TABLE `coursecontent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursecontent_ibfk_1` (`courseId`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_ibfk_1` (`userId`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `duplicateCourse` (`courseId`,`userId`),
  ADD KEY `enrolled_ibfk_2` (`userId`);

--
-- Indexes for table `mobiledetect`
--
ALTER TABLE `mobiledetect`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizId` (`quizId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseId` (`courseId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `poolcategory`
--
ALTER TABLE `poolcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poolcategory_ibfk_1` (`courseId`),
  ADD KEY `poolcategory_ibfk_2` (`userId`);

--
-- Indexes for table `poolquestionoptions`
--
ALTER TABLE `poolquestionoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questionoptions_ibfk_1` (`poolquestionId`);

--
-- Indexes for table `poolquestions`
--
ALTER TABLE `poolquestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poolquestions_ibfk_1` (`courseId`),
  ADD KEY `poolquestions_ibfk_2` (`userId`),
  ADD KEY `poolquestions_ibfk_3` (`poolCategoryId`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_ibfk_1` (`courseId`),
  ADD KEY `quiz_ibfk_2` (`userId`);

--
-- Indexes for table `quizquestionoptions`
--
ALTER TABLE `quizquestionoptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizquestionoptions_ibfk_1` (`quizquestionId`);

--
-- Indexes for table `quizquestions`
--
ALTER TABLE `quizquestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quizquestions_ibfk_1` (`quizId`);

--
-- Indexes for table `quizresult`
--
ALTER TABLE `quizresult`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_quizresult` (`userId`,`quizId`),
  ADD UNIQUE KEY `quizId` (`quizId`,`userId`);

--
-- Indexes for table `submittedassignments`
--
ALTER TABLE `submittedassignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `submittedassignments_ibfk_1` (`assignmentId`),
  ADD KEY `submittedassignments_ibfk_2` (`userId`);

--
-- Indexes for table `tabfocus`
--
ALTER TABLE `tabfocus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tabfocus_ibfk_1` (`quizId`),
  ADD KEY `tabfocus_ibfk_2` (`userId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `attemptedquizquestions`
--
ALTER TABLE `attemptedquizquestions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coursecontent`
--
ALTER TABLE `coursecontent`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `enrolled`
--
ALTER TABLE `enrolled`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `mobiledetect`
--
ALTER TABLE `mobiledetect`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;

--
-- AUTO_INCREMENT for table `poolcategory`
--
ALTER TABLE `poolcategory`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `poolquestionoptions`
--
ALTER TABLE `poolquestionoptions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `poolquestions`
--
ALTER TABLE `poolquestions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `quizquestionoptions`
--
ALTER TABLE `quizquestionoptions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1671;

--
-- AUTO_INCREMENT for table `quizquestions`
--
ALTER TABLE `quizquestions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1114;

--
-- AUTO_INCREMENT for table `quizresult`
--
ALTER TABLE `quizresult`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `submittedassignments`
--
ALTER TABLE `submittedassignments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tabfocus`
--
ALTER TABLE `tabfocus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attemptedquizquestions`
--
ALTER TABLE `attemptedquizquestions`
  ADD CONSTRAINT `attemptedquizquestions_ibfk_1` FOREIGN KEY (`quizId`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attemptedquizquestions_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coursecontent`
--
ALTER TABLE `coursecontent`
  ADD CONSTRAINT `coursecontent_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD CONSTRAINT `enrolled_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrolled_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mobiledetect`
--
ALTER TABLE `mobiledetect`
  ADD CONSTRAINT `mobiledetect_ibfk_1` FOREIGN KEY (`quizId`) REFERENCES `quiz` (`id`),
  ADD CONSTRAINT `mobiledetect_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `notification_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`);

--
-- Constraints for table `poolcategory`
--
ALTER TABLE `poolcategory`
  ADD CONSTRAINT `poolcategory_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poolcategory_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poolquestionoptions`
--
ALTER TABLE `poolquestionoptions`
  ADD CONSTRAINT `poolquestionoptions_ibfk_1` FOREIGN KEY (`poolquestionId`) REFERENCES `poolquestions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `poolquestions`
--
ALTER TABLE `poolquestions`
  ADD CONSTRAINT `poolquestions_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poolquestions_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poolquestions_ibfk_3` FOREIGN KEY (`poolCategoryId`) REFERENCES `poolcategory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`courseId`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizquestionoptions`
--
ALTER TABLE `quizquestionoptions`
  ADD CONSTRAINT `quizquestionoptions_ibfk_1` FOREIGN KEY (`quizquestionId`) REFERENCES `quizquestions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizquestions`
--
ALTER TABLE `quizquestions`
  ADD CONSTRAINT `quizquestions_ibfk_1` FOREIGN KEY (`quizId`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quizresult`
--
ALTER TABLE `quizresult`
  ADD CONSTRAINT `quizresult_ibfk_1` FOREIGN KEY (`quizId`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quizresult_ibfk_3` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `submittedassignments`
--
ALTER TABLE `submittedassignments`
  ADD CONSTRAINT `submittedassignments_ibfk_1` FOREIGN KEY (`assignmentId`) REFERENCES `assignment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `submittedassignments_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tabfocus`
--
ALTER TABLE `tabfocus`
  ADD CONSTRAINT `tabfocus_ibfk_1` FOREIGN KEY (`quizId`) REFERENCES `quiz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tabfocus_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
