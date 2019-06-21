-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2019 at 06:36 AM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `XIqlNMyym7`
--
CREATE DATABASE IF NOT EXISTS `XIqlNMyym7` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `XIqlNMyym7`;

-- --------------------------------------------------------

--
-- Table structure for table `ActivationCode`
--

CREATE TABLE `ActivationCode` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ActivateCode` int(30) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ActivationCode`
--

INSERT INTO `ActivationCode` (`username`, `status`, `ActivateCode`) VALUES
('james23', 'Activated', 1),
('namit123', 'Activated', 2),
('strangeD', 'Activated', 3),
('suhanee12', 'Activated', 4),
('tom12', 'Activated', 5),
('test123', 'Deactivated', 7),
('bobby', 'Deactivated', 8),
('dhatri', 'Deactivated', 9),
('black_truce', 'Deactivated', 10),
('ais', 'Deactivated', 11),
('lsadajskldjhi', 'Deactivated', 12),
('MRJ', 'Deactivated', 13);

-- --------------------------------------------------------

--
-- Table structure for table `Login_Logout`
--

CREATE TABLE `Login_Logout` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Login_Logout`
--

INSERT INTO `Login_Logout` (`username`) VALUES
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('james23'),
('namit123'),
('james23'),
('james23'),
('james23'),
('namit123'),
('james23'),
('namit123'),
('namit123'),
('james23'),
('bobby'),
('dhatri'),
('james23'),
('namit123'),
('james23'),
('james23'),
('namit123'),
('black_truce'),
('namit123'),
('james23'),
('james23'),
('namit123'),
('james23'),
('ais'),
('james23'),
('james23'),
('james23'),
('james23'),
('namit123'),
('james23'),
('namit123'),
('namit123'),
('namit123'),
('namit123'),
('james23'),
('namit123'),
('namit123'),
('james23'),
('namit123'),
('james23'),
('MRJ'),
('MRJ'),
('MRJ'),
('MRJ'),
('james23');

-- --------------------------------------------------------

--
-- Table structure for table `outputs`
--

CREATE TABLE `outputs` (
  `Question_Code` int(10) UNSIGNED NOT NULL,
  `Output1` varchar(1000) NOT NULL,
  `Output2` varchar(1000) NOT NULL,
  `Output3` varchar(1000) NOT NULL,
  `Output4` varchar(1000) NOT NULL,
  `Output5` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outputs`
--

INSERT INTO `outputs` (`Question_Code`, `Output1`, `Output2`, `Output3`, `Output4`, `Output5`) VALUES
(1, '30', '1190', '156', '15241507392', '4556'),
(2, 'Yes\r\nNo', 'Yes', 'Yes\r\nYes', 'Yes\r\nNo\r\nNo\r\nNo\r\nNo', 'Yes'),
(3, '31', '65', '137171', '0', '120'),
(4, '4', '5', '5', '0', '5'),
(5, '5000000015', '10', '72', '1', '198');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `Question_Name` varchar(20) NOT NULL,
  `Question_Code` int(5) UNSIGNED NOT NULL,
  `Question` text NOT NULL,
  `Question_score` int(5) UNSIGNED NOT NULL,
  `Question_Creator` varchar(25) NOT NULL,
  `Question_Difficulty` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`Question_Name`, `Question_Code`, `Question`, `Question_score`, `Question_Creator`, `Question_Difficulty`) VALUES
('Game of Games', 1, 'We have 2 players attempting to play a \"hard\" game\r\n\r\nThis game involves a dice roll and a random selection of card\r\n\r\nPlayer 1 always plays first followed by the Player 2\'s turn and so on\r\nDuring each of the ith turn a dice is needed to be rolled by the player and \r\npicks up a card at random and keeps it with him without showing it to anyone\r\n\r\nNote that the card is not kept back into the deck thus the card can not repeat up unless all the cards have been pickup once and both players keep all the cards back in he deck\r\nThe players keep on playing their turns until player 2 has picked up N cards in total\r\n\r\n\r\nAfter that Player 2 gets bored and wants to sleep\r\n\r\nPlayer 1 is annoyed and he changed the rules of the game now, \r\nthe new rules are, if the sum of all ith turns played by Player 2 is a perfect square, \r\nPlayer 1 wins else player 2 wins\r\nThe players are quite good at determining if the number is a perfect square of not and asks you to just add up all the turns played by Player 2\r\n\r\nInput Format\r\n\r\nSingle integer N\r\n\r\nConstraints\r\n\r\n0 < N < 109\r\n\r\nOutput Format\r\n\r\nSingle integer, sum of all turn turn numbers played by player 2\r\n\r\nSample Input 0\r\n1\r\nSample Output 0\r\n2\r\nSample Input 1\r\n2\r\nSample Output 1\r\n6\r\nExplanation 1\r\nPlayer 2 plays the 2nd turn and 4th turn 2 + 4 = 6\r\n', 15, 'Namit Shah', 'Medium'),
('Meetpoint', 2, 'There are two people that start from two different positions, let’s say x1 and x2\r\nBoth can jump v1 and v2 meters ahead respectively\r\nWe have to find if both will ever meet given that the number of jumps taken by both has to be same\r\n\r\nPrint ‘Yes’ if they will meet, print ‘No’ they will not\r\n\r\nUse fast IO for to meet the person quicker\r\n\r\nInput Format\r\n\r\nFirst line contains the number of test cases T\r\n\r\nThe first line of each test case contains space separated x1 and v1\r\n\r\nThe second line of each test case contains space separated x2 and v2\r\n\r\nConstraints\r\n\r\n0 < T < 105\r\n0 < x1, x2 < 105\r\n0 < v1, v2 < 105\r\n\r\nOutput Format\r\n\r\nFor each test case output \"Yes\" or \"No\" if they will meet or not\r\n\r\nSample Input 0\r\n\r\n2\r\n6 6\r\n4 8\r\n10 10\r\n25 8\r\n\r\nSample Output 0\r\n\r\nYes\r\nNo\r\n', 20, 'Harvish Jariwala', 'Hard'),
('Simple Array Sum', 3, 'Given an array of integers, find the sum of its elements\r\n\r\nFor example, if the array\r\nar = [1,2,3],1 + 2 + 3 = 6, so return 6\r\n\r\nFunction Description\r\n\r\nComplete the simpleArraySum function in the editor below. It must return the sum of the array elements as an integer\r\n\r\nsimpleArraySum has the following parameter(s):\r\n\r\n    ar: an array of integers\r\n\r\nInput Format\r\n\r\nThe first line contains an integer, n , denoting the size of the array\r\n\r\nThe second line contains n space-separated integers representing the array\'s elements\r\n\r\nConstraints\r\n\r\n0 < n,ar[i] <= 1000\r\n\r\nOutput Format\r\n\r\nPrint the sum of the array\'s elements as a single integer\r\n\r\nSample Input\r\n\r\n6\r\n1 2 3 4 10 11\r\n\r\nSample Output\r\n\r\n31\r\n\r\nExplanation\r\n\r\nWe print the sum of the array\'s elements: 1+2+3+4+10+11 = 31\r\n', 10, 'Martand Javia', 'Easy'),
('Max Mod', 4, 'Chef and John have become friends recently\r\nChef wants to test his intelligence by giving him a puzzle to solve\r\n\r\nThe puzzle contains an integer sequence A1,A2,…,AN. The answer to the puzzle is the maximum of A(i) % A(j), taken over all valid i, j\r\n\r\nHelp him solve this puzzle\r\n\r\nInput\r\n\r\n    The first line of each test case contains a single integer N\r\n\r\nThe second line contains N\r\nspace-separated integers A1,A2,…,AN\r\n    \r\nOutput\r\n\r\nFor each test case, print a single line containing one integer — the answer to the puzzle\r\n\r\nConstraints\r\n2 <= N <= 10^5\r\n1 <= A(i) <= 10^9  for each valid i\r\n2 <= N <= 10^5\r\n\r\nExample Input 1\r\n5  \r\n1 2 3 4 5  \r\n\r\nExample Output 1\r\n4  \r\n\r\nExample Input 2\r\n6  \r\n5 5 5 2 3 8\r\n\r\nExample Output 2\r\n5', 20, 'Raj Shah', 'Hard'),
('Big Sum', 5, 'Calculate and print the sum of the elements in an array, keeping in mind that some of those integers may be quite large\r\n\r\nFunction Description\r\n\r\nComplete the aVeryBigSum function in the editor below\r\nIt must return the sum of all array elements.\r\n\r\naVeryBigSum has the following parameter(s):\r\n\r\n    ar: an array of integers\r\n\r\nInput Format\r\n\r\nThe first line of the input consists of an integer n\r\nThe next line contains n space-separated integers contained in the array\r\n\r\nOutput Format\r\n\r\nPrint the integer sum of the elements in the array\r\n\r\nConstraints\r\n1 <= n <= 10\r\n0 <= ar[i] <= 10^10\r\n\r\nSample Input\r\n\r\n5\r\n1000000001 1000000002 1000000003 1000000004 1000000005\r\n\r\nOutput\r\n\r\n5000000015', 15, 'Vatsal Chanana ', 'Medium');

-- --------------------------------------------------------

--
-- Table structure for table `request_acess`
--

CREATE TABLE `request_acess` (
  `Question_Name` varchar(20) NOT NULL,
  `Question` text NOT NULL,
  `Question_Creator` varchar(15) NOT NULL,
  `Creator_Solution` text NOT NULL,
  `Testcase1` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Testcase2` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Testcase3` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Testcase4` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Testcase5` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Output1` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Output2` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Output3` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Output4` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Output5` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `solution_language` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_acess`
--

INSERT INTO `request_acess` (`Question_Name`, `Question`, `Question_Creator`, `Creator_Solution`, `Testcase1`, `Testcase2`, `Testcase3`, `Testcase4`, `Testcase5`, `Output1`, `Output2`, `Output3`, `Output4`, `Output5`, `solution_language`) VALUES
('', '', 'bobby', '', '', '', '', '', '', '', '', '', '', '', 'Java'),
('Witty Sum', 'Find the sum of n positive natural numbers\r\n\r\nn = 6\r\nThen 1 + 2 + 3 + 4 + 5 + 6 = 21\r\n\r\nConstraints\r\n\r\n1 <= n <= 1000000000\r\n\r\nSample Input 0\r\n3\r\n\r\nSample Output 0\r\n6\r\n ', 'godThrones12', '#include<bits/stdc++.h>\r\n#include<iostream>\r\n\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n    long long int t;\r\n    cin >> t;\r\n    cout << (t*(t+1))/2;\r\n    return 0;\r\n}', '10', '1000', '1000000', '100000000', '1000000000', '55', '50005000', '500000500000', '5000000050000000', '500000000500000000', 'C++14');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `score` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`username`, `score`) VALUES
('ais', 0),
('black_truce', 0),
('bobby', 15),
('dhatri', 0),
('james23', 45),
('lsadajskldjhi', 0),
('MRJ', 0),
('namit123', 35),
('strangeD', 15),
('tom12', 30);

-- --------------------------------------------------------

--
-- Table structure for table `solution`
--

CREATE TABLE `solution` (
  `Question_Code` int(10) UNSIGNED NOT NULL,
  `CPP` text NOT NULL,
  `JAVA` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solution`
--

INSERT INTO `solution` (`Question_Code`, `CPP`, `JAVA`) VALUES
(5, '#include<bits/stdc++.h>\r\n#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n  \r\n   long long int i,n,k,sum=0;\r\n   cin >> n;\r\n   for(i=0;i<n;i++)\r\n   {\r\n     cin >> k;\r\n     sum+=k;\r\n   }\r\n   cout << k;\r\n   return 0;\r\n}', 'import java.util.Scanner;\r\n\r\npublic class bigSum{\r\n  public static void main(String args[])\r\n  {\r\n     Scanner in = new Scanner(System.in);\r\n     long i,n,k,sum=0;\r\n     n = in.nextLong();\r\n     for(i=0;i<n;i++)\r\n     {\r\n        k = in.nextLong();\r\n        sum+=k;\r\n     }\r\n     System.out.print(sum);\r\n  }\r\n\r\n\r\n}'),
(3, '#include<bits/stdc++.h>\r\n#include<iostream>\r\nusing namespace std;\r\nint main(){\r\n \r\n  int i,n,k,sum=0;\r\n  cin >> n;\r\n  for(i=0;i<n;i++)\r\n  {\r\n    cin >> k;\r\n    sum+=k;\r\n  }\r\n  cout << k;\r\n  return 0;\r\n}', 'import java.util.Scanner;\r\n\r\npublic class bigSum{\r\n public static void main(String args[])\r\n {\r\n    Scanner in = new Scanner(System.in);\r\n    int i,n,k,sum=0;\r\n    n = in.nextInt();\r\n    for(i=0;i<n;i++)\r\n    {\r\n       k = in.nextInt();\r\n       sum+=k;\r\n    }\r\n    System.out.print(sum);\r\n }\r\n\r\n\r\n}'),
(4, '#define ll long long\r\n#define pb push_back\r\n#include<bits/sdc++.h>\r\n#include<vector>\r\n#include<map>\r\n#include<iostream>\r\nusing namespace std;\r\nint main()\r\n{\r\n  ll t;\r\n  cin >> t;\r\n  vector<ll> v;\r\n  map<ll,ll> m;\r\n  for(int i=0;i<t;i++)\r\n  {\r\n    ll x;\r\n    cin >> x;\r\n    m[x]++;\r\n  }\r\n  map<ll,ll>::iterator itr;\r\n  for(itr=m.begin();itr!=m.end();itr++)\r\n  {\r\n    if((itr->first) > 0)\r\n    {\r\n      v.pb(itr->first);\r\n    }\r\n  }\r\n  if(v.size()==1)\r\n  {\r\n    cout << 0;\r\n  }\r\n  else{\r\n   sort(v.begin(),v.end());\r\n   cout << v[v.size()-2];\r\n  }\r\n  return 0\r\n}', ''),
(1, '#include<bits/stdc++.h>\r\n#include<iostream>\r\nusing namespace std;\r\n\r\nint main()\r\n{\r\n  long long int i;\r\n  cin >> i;\r\n  cout << i*(i+1);\r\n  return 0;\r\n}\r\n', 'import java.util.Scanner;\r\n\r\npublic class GameOfGames{\r\n\r\n   public static void main(String args[]){\r\n\r\n     Scanner in  = new Scanner(System.in);\r\n     int i = in.nextInt();\r\n     System.out.print(i*(i+1));\r\n   }\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `username` varchar(20) NOT NULL,
  `Question_Code` int(10) UNSIGNED NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Memory` int(7) UNSIGNED NOT NULL,
  `CPU_Time` int(5) UNSIGNED NOT NULL,
  `Language` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`username`, `Question_Code`, `Status`, `Memory`, `CPU_Time`, `Language`) VALUES
('james23', 1, 'Accepted', 13, 0, 'C++14'),
('james23', 2, 'Wrong Answer', 14, 0, 'C++14'),
('strangeD', 3, 'Accepted', 19, 0, 'C++14'),
('james23', 2, 'Accepted', 12, 0, 'C++14'),
('james23', 3, 'Accepted', 10, 0, 'C++14'),
('james23', 1, 'Accepted', 15, 0, 'Java'),
('james23', 3, 'Accepted', 15, 0, 'C++14'),
('namit123', 4, 'Accepted', 15, 0, 'C++14'),
('namit123', 1, 'Accepted', 15, 0, 'C++14'),
('bobby', 4, 'Wrong Answer', 14, 0, 'C++14'),
('bobby', 1, 'Accepted', 15, 0, 'C++14'),
('namit123', 1, 'Accepted', 15, 0, 'C++14'),
('namit123', 1, 'Wrong Answer', 15, 0, 'C++14'),
('namit123', 1, 'Wrong Answer', 30, 0, 'C++14'),
('namit123', 1, 'Wrong Answer', 45, 0, 'C++14'),
('namit123', 1, 'Accepted', 15, 0, 'C++14'),
('namit123', 1, 'Accepted', 15, 0, 'C++14');

-- --------------------------------------------------------

--
-- Table structure for table `testcase`
--

CREATE TABLE `testcase` (
  `Question_Code` int(10) UNSIGNED NOT NULL,
  `Testcase1` varchar(1000) NOT NULL,
  `Testcase2` varchar(1000) NOT NULL,
  `Testcase3` varchar(1000) NOT NULL,
  `Testcase4` varchar(1000) NOT NULL,
  `Testcase5` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testcase`
--

INSERT INTO `testcase` (`Question_Code`, `Testcase1`, `Testcase2`, `Testcase3`, `Testcase4`, `Testcase5`) VALUES
(1, '5', '34', '12', '123456', '67'),
(2, '2\r\n6 6\r\n4 8\r\n10 10\r\n25 8', '1\r\n6 6\r\n6 6', '2\r\n1 1\r\n1 1\r\n34 4\r\n34 6', '5\r\n5 15\r\n10 10\r\n58 98\r\n111 212\r\n141 155\r\n15 55\r\n211 12\r\n21 121\r\n11 112\r\n22 22', '1\r\n256 512\r\n512 256'),
(3, '6\r\n1 2 3 4 10 11', '12\r\n2 5 6 7 1 2 3 4 5 9 10 11', '6\r\n1234 12345 123456 123 12 1', '5\r\n0 0 0 0 0', '15\r\n1 2 3 4 5 6 7 8 9 10 11 12 13 14 15'),
(5, '5\r\n1000000001 1000000002 1000000003 1000000004 1000000005', '4\r\n1 2 3 4', '6 \r\n12 12 12 12 12 12 ', '1\r\n1', '2\r\n99 99'),
(4, '5\r\n1 2 3 4 5', '5\r\n5 5 5 3 8', '6\r\n5 5 5 3 8 8', '3\r\n3 3 3', '9\r\n5 5 5 5 5 6 6 6 6');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Date_of_Birth` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `wholename` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `email`, `Date_of_Birth`, `wholename`) VALUES
('ais', 'shah', 'ai', '09102000', 'aisha'),
('black_truce', 'xyz', 'xyz', '26/04/19', 'akash'),
('bobby', '12', '/2gmail.com', '081219999', 'yashil'),
('dhatri', '1234', 'dhatri.k@ahduni.edu.in', '14:08:2001', 'dhatri'),
('james23', 'jamesTam', 'tamjames@gmail.com', '2000-06-23', 'James'),
('lsadajskldjhi', 'PLMOKNIJB', 'ASHJDYHASUH@HGJHGASD.SDFS', '23232023', 'rahu'),
('MRJ', '12345', 'martand.j@ahduni.edu.in', '03052001', 'Martand'),
('namit123', 'namit456', 'namit123@gmail.com', '2000-09-18', 'Namit'),
('strangeD', 'kamarTajDS', 'stephenstrange@avengers.org', '1965-10-28', 'Stephen'),
('tom12', 'Hollo1234T', 'tomholland5@avengers.org', '1985-03-12', 'Tom');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ActivationCode`
--
ALTER TABLE `ActivationCode`
  ADD PRIMARY KEY (`ActivateCode`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `outputs`
--
ALTER TABLE `outputs`
  ADD PRIMARY KEY (`Question_Code`),
  ADD KEY `Question_Code` (`Question_Code`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`Question_Code`),
  ADD UNIQUE KEY `Question_Code` (`Question_Code`);

--
-- Indexes for table `request_acess`
--
ALTER TABLE `request_acess`
  ADD PRIMARY KEY (`Question_Name`),
  ADD KEY `Question_Creator` (`Question_Creator`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `solution`
--
ALTER TABLE `solution`
  ADD KEY `Question_Code` (`Question_Code`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD KEY `Question_Code` (`Question_Code`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `testcase`
--
ALTER TABLE `testcase`
  ADD KEY `Question_Code` (`Question_Code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ActivationCode`
--
ALTER TABLE `ActivationCode`
  MODIFY `ActivateCode` int(30) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `outputs`
--
ALTER TABLE `outputs`
  ADD CONSTRAINT `outputs_ibfk_1` FOREIGN KEY (`Question_Code`) REFERENCES `questions` (`Question_Code`);

--
-- Constraints for table `solution`
--
ALTER TABLE `solution`
  ADD CONSTRAINT `solution_ibfk_1` FOREIGN KEY (`Question_Code`) REFERENCES `questions` (`Question_Code`);

--
-- Constraints for table `submissions`
--
ALTER TABLE `submissions`
  ADD CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`Question_Code`) REFERENCES `questions` (`Question_Code`),
  ADD CONSTRAINT `submissions_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

--
-- Constraints for table `testcase`
--
ALTER TABLE `testcase`
  ADD CONSTRAINT `testcase_ibfk_1` FOREIGN KEY (`Question_Code`) REFERENCES `questions` (`Question_Code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
