-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2022 at 05:50 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `blog`
--

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `firstname`, `lastname`, `roles`, `sessiontoken`, `image_id`, `is_verified`) VALUES
(1, 'ikim', 'ikim@gmail.com', '', 'injin', 'kim', 'user', 'token', 9, 0);


--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `src`) VALUES
(1, 'images/pasta.jpg'),
(2, 'images/aperitif-1.jpg'),
(3, 'images/aperitif-2.jpg'),
(4, 'images/bruschetta-b.jpg'),
(5, 'images/bruschetta.jpg'),
(6, 'images/burger.jpg'),
(7, 'images/cake.jpg'),
(8, 'images/cookies.jpg'),
(9, 'images/cupcakes.jpg'),
(10, 'images/gnocchis.jpg'),
(11, 'images/pizza.jpg'),
(12, 'images/profil.jpg'),
(13, 'images/rice.jpg'),
(14, 'images/salad.jpg'),
(15, 'images/sushis.jpg');


--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'recettes');


--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `createat`, `text`, `user_id`, `category_id`, `image_id`) VALUES
(1, 'Nulla gravida condimentum justo nec rhoncus', '2022-05-10 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ', 1, 1, 1),
(2, 'Vestibulum ante ipsum primis in faucibus orci luctus', '2022-05-09 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ', 1, 1, 2),
(3, 'Ut eget lectus eleifend nibh aliquam porta in quis risus', '2022-05-08 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ', 1, 1, 3),
(4, 'Donec at rhoncus risus. Sed molestie elit id commodo sagittis', '2022-05-07 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ', 1, 1, 4),
(5, 'Maecenas sit amet massa malesuada', '2022-05-06 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ', 1, 1, 5),
(6, 'sollicitudin mauris eu, aliquam nibh', '2022-05-05 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ', 1, 1, 6),
(7, 'Etiam interdum pretium sapien, eget mollis velit maximus non', '2022-05-04 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ', 1, 1, 7),
(8, 'Etiam interdum pretium sapien, eget mollis velit maximus non', '2022-05-03 00:00:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut consectetur dolor nibh, id congue eros pulvinar sit amet. Duis ac lorem metus. Aenean ut urna consectetur, convallis metus ut, hendrerit urna. ', 1, 1, 8);
