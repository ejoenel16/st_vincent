-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2024 at 11:59 PM
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
-- Database: `u738270511_svitdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quiz`
--

CREATE TABLE `tbl_quiz` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `time_open` date NOT NULL,
  `time_close` date NOT NULL,
  `time_limit` int(11) NOT NULL,
  `attempts_allowed` int(11) NOT NULL,
  `is_archived` int(11) NOT NULL,
  `is_hidden` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_quiz`
--

INSERT INTO `tbl_quiz` (`id`, `name`, `description`, `time_open`, `time_close`, `time_limit`, `attempts_allowed`, `is_archived`, `is_hidden`) VALUES
(1, 'Quiz 1', '<p><br></p>', '2024-07-26', '2024-07-27', 15, 5, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quiz_items`
--

CREATE TABLE `tbl_quiz_items` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `mark` int(11) NOT NULL,
  `correct_answer` text DEFAULT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_quiz_items`
--

INSERT INTO `tbl_quiz_items` (`id`, `question`, `mark`, `correct_answer`, `quiz_id`) VALUES
(1, '<p>Pagod ka na ba?</p>', 10, '1', 1),
(2, '<p>Ok po</p>', 10, '4', 1),
(3, '<p>what is x</p>', 10, '5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quiz_options`
--

CREATE TABLE `tbl_quiz_options` (
  `id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `quiz_question_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_quiz_options`
--

INSERT INTO `tbl_quiz_options` (`id`, `option_value`, `quiz_question_id`) VALUES
(1, 'YES', 1),
(2, 'YES', 1),
(3, 'oks lng', 2),
(4, 'ok', 2),
(5, 'no value', 3),
(6, 'nothing', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sections`
--

CREATE TABLE `tbl_sections` (
  `id` int(11) NOT NULL,
  `adviser` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `grade_level` int(11) NOT NULL,
  `strand` varchar(200) NOT NULL,
  `semester` int(11) NOT NULL,
  `is_archived` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sections`
--

INSERT INTO `tbl_sections` (`id`, `adviser`, `name`, `grade_level`, `strand`, `semester`, `is_archived`) VALUES
(1, '1', 'Dean', 12, '1', 1, 0),
(2, '2', 'AltF4', 7, '', 0, 1),
(3, '2', 'AltF4', 7, '', 0, 1),
(4, '2', 'AltF4', 7, '', 0, 1),
(5, '1', 'AltF4', 7, '', 0, 1),
(6, '2', 'AltF4', 7, '3', 1, 0),
(7, '2', 'AlfF6', 8, '4', 1, 0),
(8, '2', 'AlfF7', 9, '5', 1, 0),
(9, '2', 'AlfF8', 10, '6', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_section_schedule`
--

CREATE TABLE `tbl_section_schedule` (
  `id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `teacher` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  `time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_section_schedule`
--

INSERT INTO `tbl_section_schedule` (`id`, `section_id`, `subject`, `teacher`, `day`, `time`) VALUES
(1, 1, '1', '1', 'M', '16:00 - 6:02'),
(2, 6, '3', '2', 'TH', '12:00 - 15:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_section_students`
--

CREATE TABLE `tbl_section_students` (
  `id` int(11) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_section_students`
--

INSERT INTO `tbl_section_students` (`id`, `lrn`, `section_id`) VALUES
(1, '1234567890', 1),
(2, '1209876543', 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staffs`
--

CREATE TABLE `tbl_staffs` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `add_st` varchar(50) NOT NULL,
  `add_city` varchar(50) NOT NULL,
  `add_state` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `e_contact` varchar(50) NOT NULL,
  `e_relationship` varchar(50) NOT NULL,
  `photo_dir` text NOT NULL,
  `date_joined` date DEFAULT current_timestamp(),
  `is_archived` int(11) NOT NULL DEFAULT 0,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_strands`
--

CREATE TABLE `tbl_strands` (
  `id` int(11) NOT NULL,
  `grade_level` int(11) NOT NULL,
  `strand` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_strands`
--

INSERT INTO `tbl_strands` (`id`, `grade_level`, `strand`) VALUES
(1, 12, 'Information, Communication and Techonology (ICT) II'),
(2, 11, 'Information, Communication and Techonology (ICT) I'),
(3, 7, 'Grade 7'),
(4, 8, 'Grade 8'),
(5, 9, 'Grade 9'),
(6, 10, 'Grade 10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_applications`
--

CREATE TABLE `tbl_student_applications` (
  `id` int(11) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `school_year` varchar(50) NOT NULL,
  `strand_code` varchar(50) NOT NULL,
  `grade_level` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `is_archived` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student_applications`
--

INSERT INTO `tbl_student_applications` (`id`, `lrn`, `school_year`, `strand_code`, `grade_level`, `semester`, `status`, `is_archived`) VALUES
(1, '1234567890', '1', '1', '12', '1st', 'admitted', 0),
(4, '1209876543', '1', '3', '7', '1st', 'admitted', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_attachments`
--

CREATE TABLE `tbl_student_attachments` (
  `id` int(11) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `document_name` varchar(50) NOT NULL,
  `document_dir` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student_attachments`
--

INSERT INTO `tbl_student_attachments` (`id`, `lrn`, `document_name`, `document_dir`, `status`) VALUES
(1, '1234567890', 'SF9', 'src/public/students_sf9/u_16611234567890', 'for_approval'),
(2, '1234567890', 'SF10', 'src/public/students_sf10/u_16611234567890', 'for_approval'),
(3, '1234567890', 'NSO', 'src/public/students_nso/u_16611234567890', 'for_approval'),
(4, '1234567890', 'Certificate of Good Moral Character', 'src/public/students_gmc/u_16611234567890', 'for_approval'),
(5, '1234567890', '2x2 photo', 'src/public/students_photo/u_16611234567890', 'for_approval'),
(16, '1209876543', 'SF9', 'src/public/students_sf9/u_65741209876543', 'for_approval'),
(17, '1209876543', 'SF10', 'src/public/students_sf10/u_65741209876543', 'for_approval'),
(18, '1209876543', 'NSO', 'src/public/students_nso/u_65741209876543', 'for_approval'),
(19, '1209876543', 'Certificate of Good Moral Character', 'src/public/students_gmc/u_65741209876543', 'for_approval'),
(20, '1209876543', '2x2 photo', 'src/public/students_photo/u_65741209876543', 'for_approval');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_cards`
--

CREATE TABLE `tbl_student_cards` (
  `id` int(11) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `grade_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student_cards`
--

INSERT INTO `tbl_student_cards` (`id`, `lrn`, `grade_level`) VALUES
(1, '1234567890', 12),
(2, '1209876543', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_enrollments`
--

CREATE TABLE `tbl_student_enrollments` (
  `id` int(11) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `enrollment_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `date_enrolled` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student_enrollments`
--

INSERT INTO `tbl_student_enrollments` (`id`, `lrn`, `enrollment_id`, `status`, `date_enrolled`) VALUES
(1, '1234567890', 1, 'enrolled', '2024-07-26'),
(2, '1209876543', 1, 'enrolled', '2024-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_grades`
--

CREATE TABLE `tbl_student_grades` (
  `id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL,
  `term` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student_grades`
--

INSERT INTO `tbl_student_grades` (`id`, `card_id`, `subject_id`, `grade`, `term`) VALUES
(1, 1, 1, '85', 1),
(2, 1, 1, '85', 2),
(3, 1, 1, '85', 3),
(4, 1, 1, '85', 4),
(5, 1, 1, '85', 5),
(6, 2, 3, '90', 1),
(7, 2, 3, '90', 2),
(8, 2, 3, '90', 3),
(9, 2, 3, '90', 4),
(10, 2, 3, '90', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_information`
--

CREATE TABLE `tbl_student_information` (
  `id` int(11) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `add_st` varchar(50) NOT NULL,
  `add_city` varchar(50) NOT NULL,
  `add_state` varchar(50) NOT NULL,
  `add_zipcode` varchar(50) NOT NULL,
  `guardian_name` varchar(50) NOT NULL,
  `guardian_no` varchar(50) NOT NULL,
  `is_archived` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student_information`
--

INSERT INTO `tbl_student_information` (`id`, `lrn`, `birthdate`, `lastname`, `firstname`, `middlename`, `age`, `gender`, `email`, `mobile_no`, `add_st`, `add_city`, `add_state`, `add_zipcode`, `guardian_name`, `guardian_no`, `is_archived`) VALUES
(1, '1234567890', '2000-05-26', 'Cena', 'John', 'Rude', 24, 'male', 'johncena@gmail.com', '09987654321', 'Kangkong Street', 'Quezon City', 'Metro Manila', '1200', 'Rude Cena', '09987654321', 0),
(4, '1209876543', '2007-05-26', 'Monkey', 'Luffy', 'D', 17, 'male', 'monkeyluffy@gmail.com', '0912345678', 'East Blue', 'Grand Line City', 'Pirates World', '0000', 'Monkey Dragon', '0912345678', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_quiz`
--

CREATE TABLE `tbl_student_quiz` (
  `id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `lrn` varchar(50) NOT NULL,
  `attempts` int(11) NOT NULL,
  `attempt_started` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_updated` timestamp NULL DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `marks` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student_quiz`
--

INSERT INTO `tbl_student_quiz` (`id`, `quiz_id`, `lrn`, `attempts`, `attempt_started`, `date_updated`, `status`, `marks`) VALUES
(2, 1, '1234567890', 1, '2024-07-25 20:31:02', '2024-07-25 20:31:14', 'completed', 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_quiz_answer_sheet`
--

CREATE TABLE `tbl_student_quiz_answer_sheet` (
  `id` int(11) NOT NULL,
  `lrn` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subjects`
--

CREATE TABLE `tbl_subjects` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `strand` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subjects`
--

INSERT INTO `tbl_subjects` (`id`, `subject`, `strand`, `semester`) VALUES
(1, 'IT Capstone 2', 1, 1),
(2, 'IT Capstone 1', 2, 1),
(3, 'Filipino', 3, 1),
(7, 'Filipino 8', 4, 1),
(8, 'Filipino 9', 5, 1),
(9, 'Filipino 10', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject_topics`
--

CREATE TABLE `tbl_subject_topics` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` longtext NOT NULL,
  `subject_id` int(11) NOT NULL,
  `is_archived` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subject_topics`
--

INSERT INTO `tbl_subject_topics` (`id`, `name`, `description`, `subject_id`, `is_archived`) VALUES
(1, 'Computer Programming 20', '<p>Logic</p>', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subject_topic_items`
--

CREATE TABLE `tbl_subject_topic_items` (
  `id` int(11) NOT NULL,
  `item_category` varchar(200) NOT NULL,
  `item_parent_tbl_id` int(11) NOT NULL,
  `subject_topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subject_topic_items`
--

INSERT INTO `tbl_subject_topic_items` (`id`, `item_category`, `item_parent_tbl_id`, `subject_topic_id`) VALUES
(1, 'quiz', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sys_administrators`
--

CREATE TABLE `tbl_sys_administrators` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sys_administrators`
--

INSERT INTO `tbl_sys_administrators` (`id`, `firstname`, `lastname`) VALUES
(999999, 'Joenel', 'Evangelista');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sys_enrollment`
--

CREATE TABLE `tbl_sys_enrollment` (
  `id` int(11) NOT NULL,
  `school_year` varchar(20) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `date_started` date NOT NULL DEFAULT current_timestamp(),
  `date_ended` date DEFAULT NULL,
  `started_by` int(11) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sys_enrollment`
--

INSERT INTO `tbl_sys_enrollment` (`id`, `school_year`, `semester`, `date_started`, `date_ended`, `started_by`, `status`) VALUES
(1, '1', '1st', '2024-07-26', NULL, 999999, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sys_sy`
--

CREATE TABLE `tbl_sys_sy` (
  `id` int(11) NOT NULL,
  `school_year_start` varchar(50) NOT NULL,
  `school_year_end` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'inactive',
  `is_archived` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sys_sy`
--

INSERT INTO `tbl_sys_sy` (`id`, `school_year_start`, `school_year_end`, `status`, `is_archived`) VALUES
(1, '2024', '2025', 'active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teachers`
--

CREATE TABLE `tbl_teachers` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile_no` varchar(50) NOT NULL,
  `add_st` varchar(50) NOT NULL,
  `add_city` varchar(50) NOT NULL,
  `add_state` varchar(50) NOT NULL,
  `zip_code` varchar(50) NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `e_contact` varchar(50) NOT NULL,
  `e_relationship` varchar(50) NOT NULL,
  `photo_dir` text NOT NULL,
  `date_joined` date DEFAULT current_timestamp(),
  `is_archived` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_teachers`
--

INSERT INTO `tbl_teachers` (`id`, `firstname`, `lastname`, `middlename`, `birthdate`, `age`, `gender`, `email`, `mobile_no`, `add_st`, `add_city`, `add_state`, `zip_code`, `e_name`, `e_contact`, `e_relationship`, `photo_dir`, `date_joined`, `is_archived`) VALUES
(1, 'Maria Romana', 'Daguio', '', '1990-05-26', 34, 'male', 'DaguioMaria@gmail.com', '0987654321', 'Regalado Avenue', 'Quezon City', 'Metro Manila', '1428', 'Mother', '09987654321', 'Parent', '', '2024-07-26', 0),
(2, 'Jerome', 'Shurafa', 'Arboleta', '1995-05-26', 29, 'male', 'JeromeShurafa@gmail.com', '09111111111', 'Napoleone Street', 'Quezon City', 'Metro Manila', '1000', 'Father Shurafa', '09987654321', 'Parent', '', '2024-07-26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher_subjects`
--

CREATE TABLE `tbl_teacher_subjects` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_teacher_subjects`
--

INSERT INTO `tbl_teacher_subjects` (`id`, `teacher_id`, `subject_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topic_files`
--

CREATE TABLE `tbl_topic_files` (
  `id` int(11) NOT NULL,
  `file_dir` text NOT NULL,
  `description` text NOT NULL,
  `is_archived` int(11) NOT NULL,
  `filename` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topic_pages`
--

CREATE TABLE `tbl_topic_pages` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `page_content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topic_page_videos`
--

CREATE TABLE `tbl_topic_page_videos` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `vid_dir` text NOT NULL,
  `subject_topic_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access_level` int(11) NOT NULL DEFAULT 1,
  `is_archive` int(11) NOT NULL DEFAULT 0,
  `profile_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `access_level`, `is_archive`, `profile_id`) VALUES
(1, 'admin', '1', 3, 0, '999999'),
(2, 'DaguioMaria@gmail.com', '1', 4, 0, '1'),
(3, 'johncena@gmail.com', '1', 2, 0, '1234567890'),
(4, 'monkeyluffy@gmail.com', '1', 2, 0, '1209876543'),
(5, 'JeromeShurafa@gmail.com', '1', 4, 0, '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_quiz`
--
ALTER TABLE `tbl_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_quiz_items`
--
ALTER TABLE `tbl_quiz_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_quiz_options`
--
ALTER TABLE `tbl_quiz_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sections`
--
ALTER TABLE `tbl_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_section_schedule`
--
ALTER TABLE `tbl_section_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_section_students`
--
ALTER TABLE `tbl_section_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_strands`
--
ALTER TABLE `tbl_strands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_applications`
--
ALTER TABLE `tbl_student_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_attachments`
--
ALTER TABLE `tbl_student_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_cards`
--
ALTER TABLE `tbl_student_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_enrollments`
--
ALTER TABLE `tbl_student_enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_grades`
--
ALTER TABLE `tbl_student_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_information`
--
ALTER TABLE `tbl_student_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_quiz`
--
ALTER TABLE `tbl_student_quiz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_student_quiz_answer_sheet`
--
ALTER TABLE `tbl_student_quiz_answer_sheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subject_topics`
--
ALTER TABLE `tbl_subject_topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subject_topic_items`
--
ALTER TABLE `tbl_subject_topic_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sys_administrators`
--
ALTER TABLE `tbl_sys_administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sys_enrollment`
--
ALTER TABLE `tbl_sys_enrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sys_sy`
--
ALTER TABLE `tbl_sys_sy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teachers`
--
ALTER TABLE `tbl_teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teacher_subjects`
--
ALTER TABLE `tbl_teacher_subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_topic_files`
--
ALTER TABLE `tbl_topic_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_topic_pages`
--
ALTER TABLE `tbl_topic_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_topic_page_videos`
--
ALTER TABLE `tbl_topic_page_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_id` (`profile_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_quiz`
--
ALTER TABLE `tbl_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_quiz_items`
--
ALTER TABLE `tbl_quiz_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_quiz_options`
--
ALTER TABLE `tbl_quiz_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sections`
--
ALTER TABLE `tbl_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_section_schedule`
--
ALTER TABLE `tbl_section_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_section_students`
--
ALTER TABLE `tbl_section_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_staffs`
--
ALTER TABLE `tbl_staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_strands`
--
ALTER TABLE `tbl_strands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_student_applications`
--
ALTER TABLE `tbl_student_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_student_attachments`
--
ALTER TABLE `tbl_student_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_student_cards`
--
ALTER TABLE `tbl_student_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_student_enrollments`
--
ALTER TABLE `tbl_student_enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_student_grades`
--
ALTER TABLE `tbl_student_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_student_information`
--
ALTER TABLE `tbl_student_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_student_quiz`
--
ALTER TABLE `tbl_student_quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_student_quiz_answer_sheet`
--
ALTER TABLE `tbl_student_quiz_answer_sheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_subjects`
--
ALTER TABLE `tbl_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_subject_topics`
--
ALTER TABLE `tbl_subject_topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_subject_topic_items`
--
ALTER TABLE `tbl_subject_topic_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sys_administrators`
--
ALTER TABLE `tbl_sys_administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000;

--
-- AUTO_INCREMENT for table `tbl_sys_enrollment`
--
ALTER TABLE `tbl_sys_enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sys_sy`
--
ALTER TABLE `tbl_sys_sy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_teachers`
--
ALTER TABLE `tbl_teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_teacher_subjects`
--
ALTER TABLE `tbl_teacher_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_topic_files`
--
ALTER TABLE `tbl_topic_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_topic_pages`
--
ALTER TABLE `tbl_topic_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_topic_page_videos`
--
ALTER TABLE `tbl_topic_page_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
