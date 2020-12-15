-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2017 at 12:19 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `category` (`id`, `name`, `description`) VALUES
(1, 'Algorithms', 'An algorithm is a self-contained sequence of actions to be performed. Algorithms can perform calculation, data processing and automated reasoning tasks.An algorithm is an effective method that can be expressed within a finite amount of space and time and in a well-defined formal language for calculating a function.<br>There are various algorithm design paradigm like Brute-Force approach, Divide and conquer approach, Linear programming, Dynamic programming, The greedy method and so on...'),
(2, 'Architecture', 'In computer engineering, computer architecture is a set of rules and methods that describe the functionality, organization, and implementation of computer systems. Some definitions of architecture define it as describing the capabilities and programming model of a computer but not a particular implementation. In other definitions computer architecture involves instruction set architecture design, microarchitecture design, logic design, and implementation.<br>The purpose of computer architecture is to design a computer that maximizes performance while keeping power consumption in check, costs low relative to the amount of expected performance, and is also very reliable. For this, many aspects are to be considered which includes Instruction Set Design, Functional Organization, Logic Design, and Implementation.'),
(3, 'Theory Of Computation', 'In theoretical computer science and mathematics, the theory of computation is the branch that deals with how efficiently problems can be solved on a model of computation, using an algorithm. The field is divided into three major branches: automata theory and language, computability theory, and computational complexity theory, which are linked by the question: "What are the fundamental capabilities and limitations of computers?".<br>In order to perform a rigorous study of computation, computer scientists work with a mathematical abstraction of computers called a model of computation. There are several models in use, but the most commonly examined is the Turing machine.'),
(4, 'Database Management', 'A Database Management System (DBMS) is a computer program (or more typically, a suite of them) designed to manage a database, a large set of structured data, and run operations on the data requested by numerous users. Typical examples of DBMS use include accounting, human resources and customer support systems.<br>Originally found only in large companies with the computer hardware needed to support large data sets, DBMSs have more recently emerged as a fairly standard part of any company back office.'),
(5, 'Probability &amp; Queuing', 'Probability is the measure of the likelihood that an event will occur. Probability is quantified as a number between 0 and 1 (where 0 indicates impossibility and 1 indicates certainty). The higher the probability of an event, the more certain that the event will occur.<br>Queueing theory is the mathematical study of waiting lines, or queues. In queueing theory, a model is constructed so that queue lengths and waiting time can be predicted. Queueing theory is generally considered a branch of operations research because the results are often used when making business decisions about the resources needed to provide a service.'),
(6, 'Software Engineering', 'Software engineering (SWE) is the application of engineering to the development of software in a systematic method. Typically, Software engineering is Research, design, develop, and test operating systems-level software, compilers, and network distribution software for medical, industrial, military, communications, aerospace, business, scientific, and general computing applications, and is an an engineering discipline that is concerned with all aspects of software production.<br>Software engineering is a direct sub-field of engineering and has an overlap with computer science and management science. It is also considered a part of overall systems engineering.'),
(7, 'Other', 'Any Other Category...');

CREATE TABLE `quacat` (
  `id` int(11) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `quacat` (`id`, `category`) VALUES
(1, 'Algorithms'),
(2, 'Algorithms'),
(3, 'Algorithms'),
(4, 'Architecture'),
(5, 'Architecture'),
(6, 'Database Management'),
(7, 'Database Management'),
(8, 'Database Management'),
(9, 'Database Management'),
(10, 'Database Management'),
(11, 'Database Management'),
(12, 'Database Management'),
(33, 'Database Management'),
(29, 'Other'),
(30, 'Other'),
(39, 'Other'),
(13, 'Probability &amp; Queuing'),
(14, 'Probability &amp; Queuing'),
(15, 'Software Engineering'),
(16, 'Software Engineering'),
(17, 'Software Engineering'),
(18, 'Software Engineering'),
(19, 'Software Engineering'),
(20, 'Software Engineering'),
(21, 'Software Engineering'),
(22, 'Software Engineering'),
(23, 'Software Engineering'),
(24, 'Software Engineering'),
(25, 'Software Engineering'),
(26, 'Software Engineering'),
(27, 'Software Engineering'),
(32, 'Software Engineering'),
(28, 'Theory Of Computation');


CREATE TABLE `quans` (
  `id` int(11) UNSIGNED NOT NULL,
  `question` mediumtext NOT NULL,
  `answer` longtext,
  `askedby` varchar(255) NOT NULL,
  `answeredby` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `quans` (`id`, `question`, `answer`, `askedby`, `answeredby`) VALUES
(1, 'What are the best books to learn algorithms and data structures?', 'This is an accessible resource on data structures, with sample implementations and great explanations:\n                                <br><u>Books</u>\n                                <ul id="anslist">\n                                <li>The Art of Computer Programming by Donald E. Knuth</li>\n                                <li>Introduction to Algorithms CLRS</li>\n                                <li>Fundamentals of Computer Algorithms by Ellis Horowitz, Sartaj Sahni</li>\n                                </ul>\n                                <u>Online Video Lectures</u>\n                                <ul id="anslist">\n                                    <li>Introduction to Computer Science and Programming | MIT OpenCourseWare</li>\n                                </ul>', 'ayusht2396', 'admin'),
(2, 'How to calculate time complexity of loops ?', '1) O(1): Time complexity of a function (or set of statements) is considered as O(1) if it doesn’t contain loop, recursion and call to any other non-constant time function.\r\n\r\n   // set of non-recursive and non-loop statements\r\nFor example swap() function has O(1) time complexity.\r\nA loop or recursion that runs a constant number of times is also considered as O(1). For example the following loop is O(1).\r\n\r\n   // Here c is a constant   \r\n   for (int i = 1; i <= c; i++) {  \r\n        // some O(1) expressions\r\n   }\r\n2) O(n): Time Complexity of a loop is considered as O(n) if the loop variables is incremented / decremented by a constant amount. For example following functions have O(n) time complexity.\r\n\r\n   // Here c is a positive integer constant   \r\n   for (int i = 1; i <= n; i += c) {  \r\n        // some O(1) expressions\r\n   }\r\n\r\n   for (int i = n; i > 0; i -= c) {\r\n        // some O(1) expressions\r\n   }\r\n3) O(nc): Time complexity of nested loops is equal to the number of times the innermost statement is executed. For example the following sample loops have O(n2) time complexity\r\n\r\n  \r\n   for (int i = 1; i <=n; i += c) {\r\n       for (int j = 1; j <=n; j += c) {\r\n          // some O(1) expressions\r\n       }\r\n   }\r\n\r\n   for (int i = n; i > 0; i += c) {\r\n       for (int j = i+1; j <=n; j += c) {\r\n          // some O(1) expressions\r\n   }\r\nFor example Selection sort and Insertion Sort have O(n2) time complexity.\r\n4) O(Logn) Time Complexity of a loop is considered as O(Logn) if the loop variables is divided / multiplied by a constant amount.\r\n\r\n   for (int i = 1; i <=n; i *= c) {\r\n       // some O(1) expressions\r\n   }\r\n   for (int i = n; i > 0; i /= c) {\r\n       // some O(1) expressions\r\n   }\r\nFor example Binary Search(refer iterative implementation) has O(Logn) time complexity.\r\n5) O(LogLogn) Time Complexity of a loop is considered as O(LogLogn) if the loop variables is reduced / increased exponentially by a constant amount.\r\n\r\n   // Here c is a constant greater than 1   \r\n   for (int i = 2; i <=n; i = pow(i, c)) { \r\n       // some O(1) expressions\r\n   }\r\n   //Here fun is sqrt or cuberoot or any other constant root\r\n   for (int i = n; i > 0; i = fun(i)) { \r\n       // some O(1) expressions\r\n   }\r\nSee this for more explanation.\r\nHow to combine time complexities of consecutive loops?\r\nWhen there are consecutive loops, we calculate time complexity as sum of time complexities of individual loops.\r\n\r\n   for (int i = 1; i <=m; i += c) {  \r\n        // some O(1) expressions\r\n   }\r\n   for (int i = 1; i <=n; i += c) {\r\n        // some O(1) expressions\r\n   }\r\n   Time complexity of above code is O(m) + O(n) which is O(m+n)\r\n   If m == n, the time complexity becomes O(2n) which is O(n).<br>Ohh', 'pjain', 'admin'),

(32, 'What is ShivamRathore?', 'It is a Object in My Library ;p', 'Shivam010', 'admin'),
(33, 'How is this page working?', 'This page is working on HTML, CSS, JavaScript, PHP, and on MySQL Database.', 'ayusht2396', 'Shivam010'),
(39, 'Nothing to ask.', NULL, 'Shivam010', NULL);

-
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
 `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `join_date`) VALUES
(17, 'admin', '$2y$10$P8b3vf6Z9U81CyDhoe4XhOglpC6BNPmpwoY46oxCyuXB4P0JDLDEG', 'Shivam Rathore', 'shivam.rathore010@gmail.com', '2017-04-11 18:59:57'),
(9, 'ayusht2396', '$2y$10$sN9WIHwcj5urboVA.fHZouLQM7/neAf1QOHJaYi4Mqysps3kdYgBq', 'Ayush Tripathi', 'ayusht2396@gmail.com', '2017-03-30 16:34:59'),
(13, 'pjain', '$2y$10$iMvJcCrkuDaeaquwzjZZjehRFCdGrojkchTCLnJtihG6GNtviohjq', 'Prakhar Jain', 'pjain@gmail.com', '2017-03-30 17:09:07'),
(8, 'Shivam010', '$2y$10$QWwY6YAqgf2Vx1IOIzflHeMcmwKf7h/W1a.FfRYrLxpcLkRg13Ypm', 'Shivam Rathore', 'shivam.rathore010@gmail.com', '2017-03-30 13:26:51'),
(11, 'shub011', '$2y$10$eu7S5jsNaBHoI2twfrpPxOxcnUuvL0h7oGHzWH9sPPL96eNvR2QMC', 'Shubham Bairagi', 'sbv351997@gmail.com', '2017-03-30 16:43:21'),
(14, 'Ujwal_1997', '$2y$10$c4TeDn9ZuFeGOLkUfrbx6u5GtKhN5EKtVrAgBztCiLaeX33.pDt76', 'Ujwal Shah', 'ujwalsaurav@gmail.com', '2017-04-02 11:31:17'),
(16, 'user', '$2y$10$eEIXvBr8rUoxUbEBzag3N.fqKfrzTYfhC3p6.2g78ql2ujhOLy1Pa', 'Username', 'user@gmail.com', '2017-04-07 06:05:51'),
(15, 'xyz', '$2y$10$YOZ/L6mGVPJ6ng0vVoGXxO5h7rI8XizNl/2z.kaRGx/4338aaUaDe', 'XYZ', 'xyz@gmail.com', '2017-04-06 13:30:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`,`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `quacat`
--
ALTER TABLE `quacat`
  ADD PRIMARY KEY (`category`,`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `quans`
--
ALTER TABLE `quans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `askedby` (`askedby`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `quans`
--
ALTER TABLE `quans`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `quacat`
--
ALTER TABLE `quacat`
  ADD CONSTRAINT `quacat_ibfk_1` FOREIGN KEY (`id`) REFERENCES `quans` (`id`),
  ADD CONSTRAINT `quacat_ibfk_3` FOREIGN KEY (`category`) REFERENCES `category` (`name`);

--
-- Constraints for table `quans`
--
ALTER TABLE `quans`
  ADD CONSTRAINT `quans_ibfk_1` FOREIGN KEY (`askedby`) REFERENCES `users` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
