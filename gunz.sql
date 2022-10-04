-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 28, 2021 at 02:57 PM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gunz`
--
CREATE DATABASE IF NOT EXISTS `gunz` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `gunz`;

-- --------------------------------------------------------

--
-- Table structure for table `armes`
--

CREATE TABLE `armes` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
  `image` text NOT NULL,
  `name` text NOT NULL,
  `calibre` float NOT NULL,
  `description` text NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `armes`
--

INSERT INTO `armes` (`id`, `type`, `image`, `name`, `calibre`, `description`, `prix`) VALUES
(1, 'Pistol', 'Images/Guns/beretta92.jpg', 'Beretta 92a', 9, 'the Beretta 92 entered production in 1976. the 92 and numerous later variants are in widespread service around the globe and have been exten- sively copied. the US Army selected the 92FS as its primary pistol in the 1980s, which is designated the M9.', 300),
(2, 'Pistol', 'Images/Guns/m1911.jpg', 'Colt M1911', 9, 'The Colt 0.45 Model 1911 first entered service in 1911 and has been widely copied, with extensive production of a range of variants for military, law enforcement, and civilian markets. The weapon’s most distinguishing feature is the pronounced spur extending rearward above the hand- grip. ', 500),
(3, 'Pistol', 'Images/Guns/tokarev.jpg', 'Tokarev', 7.62, 'The Tokarev was designed in Russia in 1920. Although it is mechanically based on the Colt Model 1911, it differs in appearance. The long slide, with a pronounced rearward overhang, and straight-sided grips are notable features of the weapon.', 450),
(4, 'Rifle', 'Images/Guns/FNFAL.jpg', 'FN FAL\r\n', 7.62, 'The Fabrique Nationale FAL was developed in\r\nthe late 1940s. The slim, elongated profile of\r\nthe weapon is its most distinctive feature, in particular the thinness of the stock where it meets the receiver and the long barrel/flash eliminator forward of the hand guards.', 1500),
(5, 'Rifle', 'Images/Guns/G3.jpg', 'Heckler & Koch G3', 7.62, 'The Heckler & Koch G3 was developed from the Spanish CETME Model B rifle between 1954 and 1959. The (usually green) plastic furniture and ergonomically moulded pistol grip are distinctive features of the weapon. Older (pre-1964) versions have wooden stocks and hand guards. Iranian models feature a synthetic stock and hand guard whose pale brown colour is similar in appearance to wooden furniture.', 1200),
(6, 'Assault Rifle', 'Images/Guns/Galil.jpg', 'Galil', 5.56, 'the design of the israeli Galil is based on that of the Kalashnikov-pattern assault rifle. the weapon retains certain visual similarities to its predecessor—nota- bly in the design of the receiver and fire selector, and its overall configuration. the South African Vektor series includes variants of the Galil manufac- tured under licence. ', 2000),
(7, 'Assault Rifle', 'Images/Guns/AK-47.jpg', 'Kalashnikov AK-47', 7.62, 'The designation AK-47 is often used, generically, to refer to all Kalashnikov-pattern assault rifles. However, the AK-47 is a specific model of Kalashnikov. Later Kalashnikov-pattern weapons retain many design features of the AK-47. Those listed in this Weapons ID Sheet are the closest to the original design.', 1200),
(8, 'Assault Rifle', 'Images/Guns/AKM.jpg', 'Kalashnikov AKM', 7.62, 'The Kalashnikov AKM was developed from the AK-47. The rifle entered service in 1959. It differs from the AK-47 in having a pressed, rather than forged, receiver. This feature is visible in the number of rivets on the sides of the receiver. The weapon is also distinguishable from the AK-47 because it usually features a slanted ‘cutaway’ compensator fitted to the muzzle.', 3000),
(9, 'Machine Gun', 'Images/Guns/PKM.jpg', 'PKM', 7.62, 'The PK general-purpose machine gun was developed in the late 1950s. The weapon is belt-fed (rather than magazine-fed) and it is chambered for the 7.62 x 54R rimmed cartridge. The PK’s most distinctive visual feature is the pierced stock, which features a large oval hole.', 4000),
(10, 'Sniper', 'Images/Guns/BarretM82.jpg', 'Barret M82', 12.7, 'the M82 is a semi-automatic anti-materiel rifle that is chambered for a heavy machine gun cartridge. first intro- duced in 1982, the rifle is in service with a large number\r\nof military forces around the world. it has a range of uses, including long-range damage to sensitive military materiel (such radar systems), explosive ordnance destruction, and extended-range operations against personnel and lightly armoured vehicles. ', 8000),
(11, 'Submachine gun', 'Images/Guns/MP5.jpg', 'Heckler & Koch MP5', 9, 'The H&K MP5 was developed from the G3 rifle and operates in the same way. It is visually similar to the G3 and to the HK33 and HK53 assault rifles, particularly with respect to the trigger group\r\n(in black plastic) and the sights. The most easily recognizable feature distinguishing the MP5 from these larger-calibre H&K weapons is the thin magazine, which is designed to accept 9 x 19 mm pistol ammunition.', 1200),
(12, 'Submachine gun', 'Images/Guns/Uzi.jpg', 'UZI', 9, 'The Uzi and its derivatives—the Mini-Uzi and Micro-Uzi— feature a distinctive squared and ribbed receiver. Prominent visual recognition features of the three models include the smooth, exposed barrel; prominent sight housings at the front and rear of the receiver; and a button-like grip safety device to the rear of the pistol grip that depresses when grasped firmly with the palm of the hand. ', 1500),
(13, 'Sniper', 'Images/Guns/Dragunov.jpg', 'Dragunov SVD', 7.62, 'The Dragunov SVD sniper rifle first entered service in the early 1960s and is widely deployed around the world. Although the weapon bears some mechanical similarities to Kalashnikov-pattern weapons, its design differs in many respects. The weapon’s primary distinguishing features are its skeletal stock and its long, narrow profile.', 4000),
(14, 'Rocket Launcher', 'Images/Guns/RPG7.jpg', 'RPG-7', 40, 'Introduced in 1962, the RPG-7 is one of the most widely distributed light weapons. the weapon bears little resemblance to any other weapon, although it might sometimes be confused with its predecessor, the RPG-2, particularly without optical sights. the weapon is a front-loaded rocket launcher that accommodates an ever-growing variety of ammu- nition, ranging from high-explosive anti-tank to anti-personnel rockets.', 10000),
(15, 'Grenade Launcher', 'Images/Guns/M79.jpg', 'M79', 40, 'the United States first deployed the M79 grenade launcher in early 1961. the weapon is easily recognizable due to its upward-curving wooden stock, smooth barrel, and large folding leaf sight that resembles a ladder. the only differing variant of this weapon is the South african Milkor M79, which has a more modern appearance due to the use of composite (rather than wooden) furniture and a side-folding stock (essentially an inverted stock from an r4/r5 assault rifle).', 9000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` text NOT NULL,
  `mail` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `mail`, `password`) VALUES
(1, 'admin-guns', 'admin-guns@gunz.com', '61646D696E736563757269747967756E7331323334'),
(2, 'Xx_JeremForce_xX', 'lebastonneur@gmail.com', 'viceprezducyberlabaskip123'),
(3, 'SalimTahiaDZ', 'lemeilleurprez@gmail.com', 'FuckJerem12345'),
(4, 'JulienCanard_WC', 'Crackito@gmail.com', 'Senseioldprez99'),
(5, 'EtienneLeTchetchen', 'poliakov@gmail.com', 'Lerangeurpourpre990');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `armes`
--
ALTER TABLE `armes`
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
-- AUTO_INCREMENT for table `armes`
--
ALTER TABLE `armes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
