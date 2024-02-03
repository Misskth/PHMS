-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 03, 2024 at 12:59 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `checked`
--

CREATE TABLE `checked` (
  `id` int NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `room_id` int NOT NULL,
  `name` text NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `date_in` datetime NOT NULL,
  `date_out` datetime NOT NULL,
  `booked_cid` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = pending, 1=checked in , 2 = checked out',
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `checked`
--

INSERT INTO `checked` (`id`, `ref_no`, `room_id`, `name`, `contact_no`, `date_in`, `date_out`, `booked_cid`, `status`, `date_updated`) VALUES
(4, '0000\n', 1, 'John Smith', '+14526-5455-44', '2020-09-19 11:48:09', '2020-09-22 11:48:09', 0, 2, '2020-09-19 13:11:34'),
(5, '9564082520\n', 1, 'John Smith', '+14526-5455-44', '2020-09-19 11:48:33', '2020-09-22 11:48:33', 0, 2, '2020-09-19 13:12:19'),
(6, '2765813481\n', 1, 'asdasd asdas as', '8747808787', '2020-09-19 13:16:00', '2020-09-24 13:16:00', 0, 2, '2020-09-19 13:43:21'),
(7, '4392831400\n', 3, 'Sample', '5205525544', '2020-09-19 13:00:00', '2020-09-23 13:00:00', 0, 2, '2020-09-19 16:00:55'),
(10, '6479004224\n', 1, 'John Smith', '+14526-5455-44', '2020-09-23 10:31:00', '2020-09-29 10:31:00', 3, 1, '2020-09-19 16:39:59');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int NOT NULL,
  `room` varchar(30) NOT NULL,
  `category_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = Available , 1= Unvailables'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room`, `category_id`, `status`) VALUES
(1, 'Room-101', 3, 1),
(3, 'Room-102', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE `room_categories` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `price` float NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `room_categories`
--

INSERT INTO `room_categories` (`id`, `name`, `price`, `cover_img`) VALUES
(2, 'Premium Room', 1500, '1706333460_140127103345-peninsula-shanghai-deluxe-mock-up.jpg'),
(3, 'Single Room', 120, '1600480680_2.jpg'),
(4, 'Family Room', 350, '1600480680_room-1.jpg'),
(6, 'Twin Bed Room', 200, '1706333460_Hotel-7-Dublin-family-room-with-2-double-beds.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int NOT NULL,
  `hotel_name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `hotel_name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Permata Hotel', 'PermataHotel@gmail.com', '+60174264348', '1706090460_wall.jpg', '&lt;p class=&quot;MsoNormal&quot; style=&quot;text-align: center; &quot;&gt;&lt;span style=&quot;text-align: center; &quot;&gt;&lt;b style=&quot;text-align: center; font-size: 14px;&quot;&gt;&lt;span style=&quot;font-size:24px;text-align: center; &quot;&gt;About Us&lt;/span&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Welcome to Permata Hotel, aleading innovator in hotel management solutions dedicated to transforming theway hospitality businesses operate. At Permata Hotel, we understand thedynamic challenges faced by the hospitality industry, and we are passionateabout delivering cutting-edge technology to streamline operations and enhanceguest experiences.&amp;nbsp; &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Our Mission &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Our mission is to empower hoteliers withstate-of-the-art management tools that optimize efficiency, elevate servicestandards, and drive sustained growth. We believe in leveraging technology tosimplify complex processes, allowing our clients to focus on what they do best&ndash; providing exceptional hospitality.&amp;nbsp; &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;What Sets Us Apart &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Expertise and Innovation With years ofindustry expertise, our team consists of seasoned professionals who blenddomain knowledge with a forward-thinking approach. We continuously strive tostay ahead of industry trends, integrating the latest technologicaladvancements into our solutions.&amp;nbsp; &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Tailored Solutions&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Recognizing that each hotel is unique, weprovide customizable solutions tailored to meet the specific needs of ourclients. Whether you run a boutique hotel or manage a large chain, ourversatile hotel management system adapts to your requirements. &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;&amp;nbsp;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Customer-Centric Approach&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Our commitment to client satisfaction isunwavering. We prioritize understanding the challenges faced by our clients andwork collaboratively to develop solutions that address their pain points. Yoursuccess is our success.&amp;nbsp; &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Key Features&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Efficient Reservation System: Seamlesslymanage bookings, check-ins, and check-outs with our intuitive reservationsystem.&amp;nbsp; &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Integrated Point of Sale (POS): Streamlineyour operations with a fully integrated POS system for restaurants, bars, andother amenities.&amp;nbsp; &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Comprehensive Reporting: Gain valuableinsights into your hotel&amp;#x2019;s performance with detailed analytics and reportingtools.&amp;nbsp; &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Guest Relationship Management: Foster guestloyalty with personalized experiences, targeted promotions, and efficientcommunication.&amp;nbsp; &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;&lt;o:p&gt;&amp;nbsp;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Join Us on the Journey &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Join&amp;nbsp;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;, serif; font-size: 16px;&quot;&gt;Permata Hotel&lt;/span&gt;&amp;nbsp;on the journey toredefine hospitality management. Whether you&amp;#x2019;re a small boutique hotel or alarge resort, our solutions are designed to scale with your businessaspirations.&amp;nbsp; For inquiries, demos, or todiscuss how we can elevate your hotel&amp;#x2019;s operational efficiency, contactus.&amp;nbsp; &lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;/p&gt;&lt;p class=&quot;MsoNormal&quot;&gt;&lt;span style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif;mso-fareast-font-family:&amp;quot;Times New Roman&amp;quot;;mso-ansi-language:EN-MY;mso-fareast-language:EN-MY&quot;&gt;Thank you for considering&amp;nbsp;&lt;span style=&quot;font-family: &amp;quot;Times New Roman&amp;quot;, serif; font-size: 16px;&quot;&gt;Permata Hotel&lt;/span&gt;&amp;nbsp;as your trusted partner in hotel management.&lt;/span&gt;&lt;span lang=&quot;EN-US&quot; style=&quot;font-size:12.0pt;line-height:107%;font-family:&amp;quot;Times New Roman&amp;quot;,serif&quot;&gt;&lt;o:p&gt;&lt;/o:p&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=admin , 2 = staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', 'admin123', 1),
(6, 'Mohd Aminuddin bin Mat Lazat', 'aminuddin', '123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checked`
--
ALTER TABLE `checked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_categories`
--
ALTER TABLE `room_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
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
-- AUTO_INCREMENT for table `checked`
--
ALTER TABLE `checked`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room_categories`
--
ALTER TABLE `room_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
