-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 29, 2013 at 09:31 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `revolution`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE IF NOT EXISTS `areas` (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `area_x` int(11) NOT NULL,
  `area_y` int(11) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=63 ;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`area_id`, `area_name`, `area_x`, `area_y`) VALUES
(20, 'Peru', 265, 300),
(21, 'Ecuador', 250, 280),
(22, 'Colombia', 265, 265),
(23, 'Cuba', 265, 215),
(24, 'Mexico', 175, 195),
(25, 'United States', 195, 145),
(26, 'Canada', 215, 65),
(27, 'Alaska', 125, 45),
(28, 'Greenland', 430, 15),
(29, 'United Kingdom', 510, 85),
(30, 'Iceland', 480, 45),
(31, 'France', 530, 110),
(32, 'Spain', 510, 130),
(33, 'Portugal', 490, 130),
(34, 'Spain', 510, 130),
(35, 'Portugal', 490, 130),
(36, 'Morocco', 490, 165),
(37, 'Algeria', 530, 180),
(38, 'Mauritania', 485, 210),
(39, 'Mali', 510, 215),
(40, 'Niger', 550, 220),
(41, 'Libya', 580, 180),
(42, 'Tunisia', 550, 155),
(43, 'Egypt', 615, 185),
(44, 'Sudan', 615, 230),
(45, 'Chad', 580, 225),
(46, 'Nigeria', 545, 250),
(47, 'Cameroon', 560, 260),
(48, 'Saudi Arabia', 660, 200),
(49, 'Israel', 630, 165),
(50, 'Jordan', 645, 170),
(51, 'Syria', 645, 150),
(52, 'Turkey', 635, 140),
(53, 'Greece', 595, 145),
(54, 'Iraq', 665, 160),
(55, 'Iran', 690, 160),
(56, 'Turkmenistan', 710, 140),
(57, 'Uzbekistan', 715, 120),
(58, 'Kazakhstan', 715, 100),
(59, 'Russia', 715, 50),
(60, 'Afghanistan', 730, 160),
(61, 'Pakistan', 750, 180),
(62, 'India', 780, 200);

-- --------------------------------------------------------

--
-- Table structure for table `commons`
--

CREATE TABLE IF NOT EXISTS `commons` (
  `common_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_id_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `common_content` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`common_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_iso` varchar(255) COLLATE utf8_bin NOT NULL,
  `country_name` varchar(80) COLLATE utf8_bin NOT NULL,
  `country_nicename` varchar(80) COLLATE utf8_bin NOT NULL,
  `country_iso3` char(3) COLLATE utf8_bin NOT NULL,
  `country_numcode` smallint(6) NOT NULL,
  `country_phonecode` int(5) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=240 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_iso`, `country_name`, `country_nicename`, `country_iso3`, `country_numcode`, `country_phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', '', 0, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', '', 0, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', '', 0, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', '', 0, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', '', 0, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', '', 0, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', '', 0, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', '', 0, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', '', 0, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', '', 0, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', '', 0, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', '', 0, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', '', 0, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_title` text COLLATE utf8_bin NOT NULL,
  `event_author` varchar(255) COLLATE utf8_bin NOT NULL,
  `event_date_published` datetime NOT NULL,
  `event_link` text COLLATE utf8_bin NOT NULL,
  `event_content` text COLLATE utf8_bin NOT NULL,
  `area_id` int(11) NOT NULL,
  `event_type_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_title`, `event_author`, `event_date_published`, `event_link`, `event_content`, `area_id`, `event_type_id`) VALUES
(1, 'The struggle to save Egypt''s revolution', 'BBC', '2013-07-29 12:00:00', 'http://www.bbc.co.uk/news/world-23242777', 'There was a time in Egypt when many hailed "one hand", one square, one people rising up to make their own history.\r\n\r\nThat one-ness is no more.\r\n\r\nIn Egypt today, a people pulls apart, two public spaces in Cairo are seething, and many hands are now said to be at work.\r\n\r\nIn the iconic Tahrir Square, where protesters played a key role in ousting President Hosni Mubarak in February 2011, "one hand" now includes the army which ousted the elected President Mohammed Morsi last week.\r\n\r\nIn this famous gathering space, green laser lights and fireworks are now on sale to celebrate what banners emphatically proclaim was "not a coup" but the biggest demonstration in Egypt''s history to put democracy back on track.', 43, 1),
(2, 'Another one about Egypt', '', '2013-07-25 00:00:00', 'http://www.bbc.co.uk/news/world-23242777', 'Some content here', 43, 1),
(3, 'Uprising in Saudi Arabia', '', '2013-07-26 12:00:00', 'http://www.bbc.co.uk/news/world-23242777', 'Uprising in Saudi Arabia', 48, 2),
(4, 'Anti government protest in the United States', 'Random', '2013-07-30 00:00:00', '', 'Sed ante mi, cursus ac ipsum id, mollis fermentum erat. Fusce eget enim dapibus ligula dignissim rutrum. Fusce feugiat ligula ac justo ultrices aliquam. Nulla facilisi. Duis ultricies eros tempor enim vehicula dignissim. Quisque eget urna id elit tristique gravida. Phasellus justo justo, adipiscing sit amet tortor vitae, consequat iaculis lectus. Morbi sed augue elementum, euismod leo eu, gravida nisl. Nam quis mi in nisi fermentum laoreet. Aliquam eu ante volutpat, vestibulum ipsum id, dictum erat. Donec facilisis fringilla velit, vitae varius risus pharetra vitae. Sed mollis mi ac risus varius, id volutpat felis tristique. Etiam sit amet nulla vel neque convallis dapibus.\r\n\r\nInteger quis elit quis turpis placerat aliquam. Nunc eget elit sed ligula luctus molestie sit amet quis leo. Etiam egestas odio a nisl malesuada, a tristique justo faucibus. Integer feugiat lorem at tincidunt dictum. Maecenas euismod enim vitae neque vestibulum, eu tincidunt mauris lacinia. Sed pellentesque semper eros, vitae venenatis metus placerat a. Etiam porttitor nec urna ut sagittis. Pellentesque porta consectetur tempus. Proin eu orci in elit tincidunt consectetur eget quis sem. Morbi congue justo a nisi pretium, id aliquet erat luctus. Proin semper risus nec urna luctus feugiat ac quis magna. Proin consectetur vulputate elit, at vehicula lacus blandit ut. Phasellus sagittis sapien ac orci blandit, eu dapibus lacus sollicitudin. Phasellus pretium, magna quis blandit dapibus, nisl purus ornare ipsum, at scelerisque augue sem et purus. Nullam feugiat eleifend felis. Sed non turpis risus.', 25, 3),
(5, 'Problems in Kazakhstan, not niiice', '', '2013-07-27 00:00:00', '#', 'Maecenas tempus molestie nunc non sollicitudin. Duis iaculis metus lectus, ultricies egestas sem vulputate eget. Suspendisse sodales sodales aliquam. Nullam interdum scelerisque dui ut consectetur. Duis imperdiet quis nunc ut ultricies. Praesent ut tellus et nisi mattis tempor. Aenean ultrices libero quis posuere condimentum. Vestibulum quis mauris nulla.\r\n\r\nSed pulvinar tortor at magna sollicitudin malesuada. Vestibulum risus eros, venenatis eu volutpat id, scelerisque et sapien. Sed non facilisis velit. Pellentesque sagittis enim molestie diam molestie, a hendrerit libero mollis. Curabitur ullamcorper lorem ut arcu aliquet ultricies. Duis sollicitudin dignissim scelerisque. Fusce eget dignissim leo. Fusce tempor faucibus mollis. Etiam vel vestibulum elit. Curabitur dictum gravida purus, a suscipit purus vestibulum nec. Cras rutrum, magna vitae luctus venenatis, nunc tellus tristique nisl, non laoreet tellus mi congue massa. Phasellus ac velit nisl. Praesent gravida vitae massa eu pellentesque.', 58, 1),
(6, 'Wow... Egypt, really?', '', '2013-07-30 00:00:00', '', 'And again... ', 43, 1),
(7, 'Egyptian protesters dig in heels', '', '2013-07-29 16:17:21', 'http://rss.cnn.com/~r/rss/edition_world/~3/xcIVikuIiVg/index.html', 'Egypt''s interim president has allowed for the prime minister to assume presidential powers in the case of a state of emergency -- stoking fears of a violent crackdown on supporters of the recently ousted president.<img src="http://feeds.feedburner.com/~r/rss/edition_world/~4/xcIVikuIiVg" height="1" width="1"/>\n', 43, 3);

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

CREATE TABLE IF NOT EXISTS `event_types` (
  `event_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_type_name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=4 ;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`event_type_id`, `event_type_name`) VALUES
(1, 'Revolution'),
(2, 'Uprising'),
(3, 'Protest');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `entry_id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `entry_lead` text COLLATE utf8_bin NOT NULL,
  `entry_content` text COLLATE utf8_bin NOT NULL,
  `entry_year_start` int(11) NOT NULL,
  `entry_year_end` int(11) NOT NULL,
  `entry_url` text COLLATE utf8_bin NOT NULL,
  `entry_date_published` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entry_date_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`entry_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`entry_id`, `entry_title`, `entry_lead`, `entry_content`, `entry_year_start`, `entry_year_end`, `entry_url`, `entry_date_published`, `entry_date_updated`) VALUES
(1, 'The rebellion of Robert Emmet in Dublin, Ireland against British rule', '', '', 1803, 1803, '', '2013-07-29 21:29:04', '0000-00-00 00:00:00'),
(2, 'Castle Hill convict rebellion', '', '', 1804, 1804, '', '2013-07-29 21:29:08', '0000-00-00 00:00:00'),
(3, 'The Serbian Revolution against Ottoman rule erupts', '', '', 1804, 1813, '', '2013-07-28 10:08:07', '0000-00-00 00:00:00'),
(4, 'Tican''s Rebellion in Serbia against Austrian rule.', '', '', 1807, 1807, '', '2013-07-28 10:08:07', '0000-00-00 00:00:00'),
(5, 'The Serbian Revolution against Ottoman rule erupts', '', '', 1804, 1817, '', '2013-07-28 10:08:07', '0000-00-00 00:00:00'),
(6, 'Rum Rebellion', '', '', 1808, 1808, '', '2013-07-28 10:08:07', '0000-00-00 00:00:00'),
(7, 'A liberal revolution in Paraguay.', '', '', 1904, 1904, '', '2013-07-28 10:09:13', '0000-00-00 00:00:00'),
(8, 'The Boxer Rebellion against foreign influence in areas such as trade, politics, religion and technology that occurred in China during the final years of the Qing Dynasty, which was defeated by the Eight-Nation Alliance.', '', '', 1899, 1901, '', '2013-07-28 10:09:13', '0000-00-00 00:00:00'),
(9, 'The 2001 Macedonia conflict.', '', '', 2001, 2001, '', '2013-07-28 10:09:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `region_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`region_id`),
  UNIQUE KEY `region_name` (`region_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rss`
--

CREATE TABLE IF NOT EXISTS `rss` (
  `rss_id` int(11) NOT NULL AUTO_INCREMENT,
  `rss_title` varchar(255) NOT NULL,
  `rss_link` text NOT NULL,
  `rss_description` text NOT NULL,
  `rss_category` varchar(255) NOT NULL,
  `rss_date_published` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rss_guide` varchar(255) NOT NULL,
  PRIMARY KEY (`rss_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
