-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 19, 2020 at 10:18 PM
-- Server version: 10.3.25-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gehlotclasses_ims`
--

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`id`, `code`, `name`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'AF', 'Africa', NULL, NULL, 1),
(2, 'AN', 'Antarctica', NULL, NULL, 1),
(3, 'AS', 'Asia', NULL, NULL, 1),
(4, 'EU', 'Europe', NULL, NULL, 1),
(5, 'NA', 'North America', NULL, NULL, 1),
(6, 'OC', 'Oceania', NULL, NULL, 1),
(7, 'SA', 'South America', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `continets`
--

CREATE TABLE `continets` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capital` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `native`, `phone`, `continent`, `capital`, `currency`, `languages`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'AD', 'Andorra', 'Andorra', '376', 'EU', 'Andorra la Vella', 'EUR', 'ca', NULL, NULL, 1),
(2, 'AE', 'United Arab Emirates', 'دولة الإمارات العربية المتحدة', '971', 'AS', 'Abu Dhabi', 'AED', 'ar', NULL, NULL, 1),
(3, 'AF', 'Afghanistan', 'افغانستان', '93', 'AS', 'Kabul', 'AFN', 'ps,uz,tk', NULL, NULL, 1),
(4, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', '1268', 'NA', 'Saint John\'s', 'XCD', 'en', NULL, NULL, 1),
(5, 'AI', 'Anguilla', 'Anguilla', '1264', 'NA', 'The Valley', 'XCD', 'en', NULL, NULL, 1),
(6, 'AL', 'Albania', 'Shqipëria', '355', 'EU', 'Tirana', 'ALL', 'sq', NULL, NULL, 1),
(7, 'AM', 'Armenia', 'Հայաստան', '374', 'AS', 'Yerevan', 'AMD', 'hy,ru', NULL, NULL, 1),
(8, 'AO', 'Angola', 'Angola', '244', 'AF', 'Luanda', 'AOA', 'pt', NULL, NULL, 1),
(9, 'AQ', 'Antarctica', 'Antarctica', '672', 'AN', '', '', '', NULL, NULL, 1),
(10, 'AR', 'Argentina', 'Argentina', '54', 'SA', 'Buenos Aires', 'ARS', 'es,gn', NULL, NULL, 1),
(11, 'AS', 'American Samoa', 'American Samoa', '1684', 'OC', 'Pago Pago', 'USD', 'en,sm', NULL, NULL, 1),
(12, 'AT', 'Austria', 'Österreich', '43', 'EU', 'Vienna', 'EUR', 'de', NULL, NULL, 1),
(13, 'AU', 'Australia', 'Australia', '61', 'OC', 'Canberra', 'AUD', 'en', NULL, NULL, 1),
(14, 'AW', 'Aruba', 'Aruba', '297', 'NA', 'Oranjestad', 'AWG', 'nl,pa', NULL, NULL, 1),
(15, 'AX', 'Åland', 'Åland', '358', 'EU', 'Mariehamn', 'EUR', 'sv', NULL, NULL, 1),
(16, 'AZ', 'Azerbaijan', 'Azərbaycan', '994', 'AS', 'Baku', 'AZN', 'az', NULL, NULL, 1),
(17, 'BA', 'Bosnia and Herzegovina', 'Bosna i Hercegovina', '387', 'EU', 'Sarajevo', 'BAM', 'bs,hr,sr', NULL, NULL, 1),
(18, 'BB', 'Barbados', 'Barbados', '1246', 'NA', 'Bridgetown', 'BBD', 'en', NULL, NULL, 1),
(19, 'BD', 'Bangladesh', 'Bangladesh', '880', 'AS', 'Dhaka', 'BDT', 'bn', NULL, NULL, 1),
(20, 'BE', 'Belgium', 'België', '32', 'EU', 'Brussels', 'EUR', 'nl,fr,de', NULL, NULL, 1),
(21, 'BF', 'Burkina Faso', 'Burkina Faso', '226', 'AF', 'Ouagadougou', 'XOF', 'fr,ff', NULL, NULL, 1),
(22, 'BG', 'Bulgaria', 'България', '359', 'EU', 'Sofia', 'BGN', 'bg', NULL, NULL, 1),
(23, 'BH', 'Bahrain', '‏البحرين', '973', 'AS', 'Manama', 'BHD', 'ar', NULL, NULL, 1),
(24, 'BI', 'Burundi', 'Burundi', '257', 'AF', 'Bujumbura', 'BIF', 'fr,rn', NULL, NULL, 1),
(25, 'BJ', 'Benin', 'Bénin', '229', 'AF', 'Porto-Novo', 'XOF', 'fr', NULL, NULL, 1),
(26, 'BL', 'Saint Barthélemy', 'Saint-Barthélemy', '590', 'NA', 'Gustavia', 'EUR', 'fr', NULL, NULL, 1),
(27, 'BM', 'Bermuda', 'Bermuda', '1441', 'NA', 'Hamilton', 'BMD', 'en', NULL, NULL, 1),
(28, 'BN', 'Brunei', 'Negara Brunei Darussalam', '673', 'AS', 'Bandar Seri Begawan', 'BND', 'ms', NULL, NULL, 1),
(29, 'BO', 'Bolivia', 'Bolivia', '591', 'SA', 'Sucre', 'BOB,BOV', 'es,ay,qu', NULL, NULL, 1),
(30, 'BQ', 'Bonaire', 'Bonaire', '5997', 'NA', 'Kralendijk', 'USD', 'nl', NULL, NULL, 1),
(31, 'BR', 'Brazil', 'Brasil', '55', 'SA', 'Brasília', 'BRL', 'pt', NULL, NULL, 1),
(32, 'BS', 'Bahamas', 'Bahamas', '1242', 'NA', 'Nassau', 'BSD', 'en', NULL, NULL, 1),
(33, 'BT', 'Bhutan', 'ʼbrug-yul', '975', 'AS', 'Thimphu', 'BTN,INR', 'dz', NULL, NULL, 1),
(34, 'BV', 'Bouvet Island', 'Bouvetøya', '47', 'AN', '', 'NOK', 'no,nb,nn', NULL, NULL, 1),
(35, 'BW', 'Botswana', 'Botswana', '267', 'AF', 'Gaborone', 'BWP', 'en,tn', NULL, NULL, 1),
(36, 'BY', 'Belarus', 'Белару́сь', '375', 'EU', 'Minsk', 'BYR', 'be,ru', NULL, NULL, 1),
(37, 'BZ', 'Belize', 'Belize', '501', 'NA', 'Belmopan', 'BZD', 'en,es', NULL, NULL, 1),
(38, 'CA', 'Canada', 'Canada', '1', 'NA', 'Ottawa', 'CAD', 'en,fr', NULL, NULL, 1),
(39, 'CC', 'Cocos [Keeling] Islands', 'Cocos (Keeling) Islands', '61', 'AS', 'West Island', 'AUD', 'en', NULL, NULL, 1),
(40, 'CD', 'Democratic Republic of the Congo', 'République démocratique du Congo', '243', 'AF', 'Kinshasa', 'CDF', 'fr,ln,kg,sw,lu', NULL, NULL, 1),
(41, 'CF', 'Central African Republic', 'Ködörösêse tî Bêafrîka', '236', 'AF', 'Bangui', 'XAF', 'fr,sg', NULL, NULL, 1),
(42, 'CG', 'Republic of the Congo', 'République du Congo', '242', 'AF', 'Brazzaville', 'XAF', 'fr,ln', NULL, NULL, 1),
(43, 'CH', 'Switzerland', 'Schweiz', '41', 'EU', 'Bern', 'CHE,CHF,CHW', 'de,fr,it', NULL, NULL, 1),
(44, 'CI', 'Ivory Coast', 'Côte d\'Ivoire', '225', 'AF', 'Yamoussoukro', 'XOF', 'fr', NULL, NULL, 1),
(45, 'CK', 'Cook Islands', 'Cook Islands', '682', 'OC', 'Avarua', 'NZD', 'en', NULL, NULL, 1),
(46, 'CL', 'Chile', 'Chile', '56', 'SA', 'Santiago', 'CLF,CLP', 'es', NULL, NULL, 1),
(47, 'CM', 'Cameroon', 'Cameroon', '237', 'AF', 'Yaoundé', 'XAF', 'en,fr', NULL, NULL, 1),
(48, 'CN', 'China', '中国', '86', 'AS', 'Beijing', 'CNY', 'zh', NULL, NULL, 1),
(49, 'CO', 'Colombia', 'Colombia', '57', 'SA', 'Bogotá', 'COP', 'es', NULL, NULL, 1),
(50, 'CR', 'Costa Rica', 'Costa Rica', '506', 'NA', 'San José', 'CRC', 'es', NULL, NULL, 1),
(51, 'CU', 'Cuba', 'Cuba', '53', 'NA', 'Havana', 'CUC,CUP', 'es', NULL, NULL, 1),
(52, 'CV', 'Cape Verde', 'Cabo Verde', '238', 'AF', 'Praia', 'CVE', 'pt', NULL, NULL, 1),
(53, 'CW', 'Curacao', 'Curaçao', '5999', 'NA', 'Willemstad', 'ANG', 'nl,pa,en', NULL, NULL, 1),
(54, 'CX', 'Christmas Island', 'Christmas Island', '61', 'AS', 'Flying Fish Cove', 'AUD', 'en', NULL, NULL, 1),
(55, 'CY', 'Cyprus', 'Κύπρος', '357', 'EU', 'Nicosia', 'EUR', 'el,tr,hy', NULL, NULL, 1),
(56, 'CZ', 'Czech Republic', 'Česká republika', '420', 'EU', 'Prague', 'CZK', 'cs,sk', NULL, NULL, 1),
(57, 'DE', 'Germany', 'Deutschland', '49', 'EU', 'Berlin', 'EUR', 'de', NULL, NULL, 1),
(58, 'DJ', 'Djibouti', 'Djibouti', '253', 'AF', 'Djibouti', 'DJF', 'fr,ar', NULL, NULL, 1),
(59, 'DK', 'Denmark', 'Danmark', '45', 'EU', 'Copenhagen', 'DKK', 'da', NULL, NULL, 1),
(60, 'DM', 'Dominica', 'Dominica', '1767', 'NA', 'Roseau', 'XCD', 'en', NULL, NULL, 1),
(61, 'DO', 'Dominican Republic', 'República Dominicana', '1809,1829,1849', 'NA', 'Santo Domingo', 'DOP', 'es', NULL, NULL, 1),
(62, 'DZ', 'Algeria', 'الجزائر', '213', 'AF', 'Algiers', 'DZD', 'ar', NULL, NULL, 1),
(63, 'EC', 'Ecuador', 'Ecuador', '593', 'SA', 'Quito', 'USD', 'es', NULL, NULL, 1),
(64, 'EE', 'Estonia', 'Eesti', '372', 'EU', 'Tallinn', 'EUR', 'et', NULL, NULL, 1),
(65, 'EG', 'Egypt', 'مصر‎', '20', 'AF', 'Cairo', 'EGP', 'ar', NULL, NULL, 1),
(66, 'EH', 'Western Sahara', 'الصحراء الغربية', '212', 'AF', 'El Aaiún', 'MAD,DZD,MRU', 'es', NULL, NULL, 1),
(67, 'ER', 'Eritrea', 'ኤርትራ', '291', 'AF', 'Asmara', 'ERN', 'ti,ar,en', NULL, NULL, 1),
(68, 'ES', 'Spain', 'España', '34', 'EU', 'Madrid', 'EUR', 'es,eu,ca,gl,oc', NULL, NULL, 1),
(69, 'ET', 'Ethiopia', 'ኢትዮጵያ', '251', 'AF', 'Addis Ababa', 'ETB', 'am', NULL, NULL, 1),
(70, 'FI', 'Finland', 'Suomi', '358', 'EU', 'Helsinki', 'EUR', 'fi,sv', NULL, NULL, 1),
(71, 'FJ', 'Fiji', 'Fiji', '679', 'OC', 'Suva', 'FJD', 'en,fj,hi,ur', NULL, NULL, 1),
(72, 'FK', 'Falkland Islands', 'Falkland Islands', '500', 'SA', 'Stanley', 'FKP', 'en', NULL, NULL, 1),
(73, 'FM', 'Micronesia', 'Micronesia', '691', 'OC', 'Palikir', 'USD', 'en', NULL, NULL, 1),
(74, 'FO', 'Faroe Islands', 'Føroyar', '298', 'EU', 'Tórshavn', 'DKK', 'fo', NULL, NULL, 1),
(75, 'FR', 'France', 'France', '33', 'EU', 'Paris', 'EUR', 'fr', NULL, NULL, 1),
(76, 'GA', 'Gabon', 'Gabon', '241', 'AF', 'Libreville', 'XAF', 'fr', NULL, NULL, 1),
(77, 'GB', 'United Kingdom', 'United Kingdom', '44', 'EU', 'London', 'GBP', 'en', NULL, NULL, 1),
(78, 'GD', 'Grenada', 'Grenada', '1473', 'NA', 'St. George\'s', 'XCD', 'en', NULL, NULL, 1),
(79, 'GE', 'Georgia', 'საქართველო', '995', 'AS', 'Tbilisi', 'GEL', 'ka', NULL, NULL, 1),
(80, 'GF', 'French Guiana', 'Guyane française', '594', 'SA', 'Cayenne', 'EUR', 'fr', NULL, NULL, 1),
(81, 'GG', 'Guernsey', 'Guernsey', '44', 'EU', 'St. Peter Port', 'GBP', 'en,fr', NULL, NULL, 1),
(82, 'GH', 'Ghana', 'Ghana', '233', 'AF', 'Accra', 'GHS', 'en', NULL, NULL, 1),
(83, 'GI', 'Gibraltar', 'Gibraltar', '350', 'EU', 'Gibraltar', 'GIP', 'en', NULL, NULL, 1),
(84, 'GL', 'Greenland', 'Kalaallit Nunaat', '299', 'NA', 'Nuuk', 'DKK', 'kl', NULL, NULL, 1),
(85, 'GM', 'Gambia', 'Gambia', '220', 'AF', 'Banjul', 'GMD', 'en', NULL, NULL, 1),
(86, 'GN', 'Guinea', 'Guinée', '224', 'AF', 'Conakry', 'GNF', 'fr,ff', NULL, NULL, 1),
(87, 'GP', 'Guadeloupe', 'Guadeloupe', '590', 'NA', 'Basse-Terre', 'EUR', 'fr', NULL, NULL, 1),
(88, 'GQ', 'Equatorial Guinea', 'Guinea Ecuatorial', '240', 'AF', 'Malabo', 'XAF', 'es,fr', NULL, NULL, 1),
(89, 'GR', 'Greece', 'Ελλάδα', '30', 'EU', 'Athens', 'EUR', 'el', NULL, NULL, 1),
(90, 'GS', 'South Georgia and the South Sandwich Islands', 'South Georgia', '500', 'AN', 'King Edward Point', 'GBP', 'en', NULL, NULL, 1),
(91, 'GT', 'Guatemala', 'Guatemala', '502', 'NA', 'Guatemala City', 'GTQ', 'es', NULL, NULL, 1),
(92, 'GU', 'Guam', 'Guam', '1671', 'OC', 'Hagåtña', 'USD', 'en,ch,es', NULL, NULL, 1),
(93, 'GW', 'Guinea-Bissau', 'Guiné-Bissau', '245', 'AF', 'Bissau', 'XOF', 'pt', NULL, NULL, 1),
(94, 'GY', 'Guyana', 'Guyana', '592', 'SA', 'Georgetown', 'GYD', 'en', NULL, NULL, 1),
(95, 'HK', 'Hong Kong', '香港', '852', 'AS', 'City of Victoria', 'HKD', 'zh,en', NULL, NULL, 1),
(96, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', '61', 'AN', '', 'AUD', 'en', NULL, NULL, 1),
(97, 'HN', 'Honduras', 'Honduras', '504', 'NA', 'Tegucigalpa', 'HNL', 'es', NULL, NULL, 1),
(98, 'HR', 'Croatia', 'Hrvatska', '385', 'EU', 'Zagreb', 'HRK', 'hr', NULL, NULL, 1),
(99, 'HT', 'Haiti', 'Haïti', '509', 'NA', 'Port-au-Prince', 'HTG,USD', 'fr,ht', NULL, NULL, 1),
(100, 'HU', 'Hungary', 'Magyarország', '36', 'EU', 'Budapest', 'HUF', 'hu', NULL, NULL, 1),
(101, 'ID', 'Indonesia', 'Indonesia', '62', 'AS', 'Jakarta', 'IDR', 'id', NULL, NULL, 1),
(102, 'IE', 'Ireland', 'Éire', '353', 'EU', 'Dublin', 'EUR', 'ga,en', NULL, NULL, 1),
(103, 'IL', 'Israel', 'יִשְׂרָאֵל', '972', 'AS', 'Jerusalem', 'ILS', 'he,ar', NULL, NULL, 1),
(104, 'IM', 'Isle of Man', 'Isle of Man', '44', 'EU', 'Douglas', 'GBP', 'en,gv', NULL, NULL, 1),
(105, 'IN', 'India', 'भारत', '91', 'AS', 'New Delhi', 'INR', 'hi,en', NULL, NULL, 1),
(106, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', '246', 'AS', 'Diego Garcia', 'USD', 'en', NULL, NULL, 1),
(107, 'IQ', 'Iraq', 'العراق', '964', 'AS', 'Baghdad', 'IQD', 'ar,ku', NULL, NULL, 1),
(108, 'IR', 'Iran', 'ایران', '98', 'AS', 'Tehran', 'IRR', 'fa', NULL, NULL, 1),
(109, 'IS', 'Iceland', 'Ísland', '354', 'EU', 'Reykjavik', 'ISK', 'is', NULL, NULL, 1),
(110, 'IT', 'Italy', 'Italia', '39', 'EU', 'Rome', 'EUR', 'it', NULL, NULL, 1),
(111, 'JE', 'Jersey', 'Jersey', '44', 'EU', 'Saint Helier', 'GBP', 'en,fr', NULL, NULL, 1),
(112, 'JM', 'Jamaica', 'Jamaica', '1876', 'NA', 'Kingston', 'JMD', 'en', NULL, NULL, 1),
(113, 'JO', 'Jordan', 'الأردن', '962', 'AS', 'Amman', 'JOD', 'ar', NULL, NULL, 1),
(114, 'JP', 'Japan', '日本', '81', 'AS', 'Tokyo', 'JPY', 'ja', NULL, NULL, 1),
(115, 'KE', 'Kenya', 'Kenya', '254', 'AF', 'Nairobi', 'KES', 'en,sw', NULL, NULL, 1),
(116, 'KG', 'Kyrgyzstan', 'Кыргызстан', '996', 'AS', 'Bishkek', 'KGS', 'ky,ru', NULL, NULL, 1),
(117, 'KH', 'Cambodia', 'Kâmpŭchéa', '855', 'AS', 'Phnom Penh', 'KHR', 'km', NULL, NULL, 1),
(118, 'KI', 'Kiribati', 'Kiribati', '686', 'OC', 'South Tarawa', 'AUD', 'en', NULL, NULL, 1),
(119, 'KM', 'Comoros', 'Komori', '269', 'AF', 'Moroni', 'KMF', 'ar,fr', NULL, NULL, 1),
(120, 'KN', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', '1869', 'NA', 'Basseterre', 'XCD', 'en', NULL, NULL, 1),
(121, 'KP', 'North Korea', '북한', '850', 'AS', 'Pyongyang', 'KPW', 'ko', NULL, NULL, 1),
(122, 'KR', 'South Korea', '대한민국', '82', 'AS', 'Seoul', 'KRW', 'ko', NULL, NULL, 1),
(123, 'KW', 'Kuwait', 'الكويت', '965', 'AS', 'Kuwait City', 'KWD', 'ar', NULL, NULL, 1),
(124, 'KY', 'Cayman Islands', 'Cayman Islands', '1345', 'NA', 'George Town', 'KYD', 'en', NULL, NULL, 1),
(125, 'KZ', 'Kazakhstan', 'Қазақстан', '76,77', 'AS', 'Astana', 'KZT', 'kk,ru', NULL, NULL, 1),
(126, 'LA', 'Laos', 'ສປປລາວ', '856', 'AS', 'Vientiane', 'LAK', 'lo', NULL, NULL, 1),
(127, 'LB', 'Lebanon', 'لبنان', '961', 'AS', 'Beirut', 'LBP', 'ar,fr', NULL, NULL, 1),
(128, 'LC', 'Saint Lucia', 'Saint Lucia', '1758', 'NA', 'Castries', 'XCD', 'en', NULL, NULL, 1),
(129, 'LI', 'Liechtenstein', 'Liechtenstein', '423', 'EU', 'Vaduz', 'CHF', 'de', NULL, NULL, 1),
(130, 'LK', 'Sri Lanka', 'śrī laṃkāva', '94', 'AS', 'Colombo', 'LKR', 'si,ta', NULL, NULL, 1),
(131, 'LR', 'Liberia', 'Liberia', '231', 'AF', 'Monrovia', 'LRD', 'en', NULL, NULL, 1),
(132, 'LS', 'Lesotho', 'Lesotho', '266', 'AF', 'Maseru', 'LSL,ZAR', 'en,st', NULL, NULL, 1),
(133, 'LT', 'Lithuania', 'Lietuva', '370', 'EU', 'Vilnius', 'EUR', 'lt', NULL, NULL, 1),
(134, 'LU', 'Luxembourg', 'Luxembourg', '352', 'EU', 'Luxembourg', 'EUR', 'fr,de,lb', NULL, NULL, 1),
(135, 'LV', 'Latvia', 'Latvija', '371', 'EU', 'Riga', 'EUR', 'lv', NULL, NULL, 1),
(136, 'LY', 'Libya', '‏ليبيا', '218', 'AF', 'Tripoli', 'LYD', 'ar', NULL, NULL, 1),
(137, 'MA', 'Morocco', 'المغرب', '212', 'AF', 'Rabat', 'MAD', 'ar', NULL, NULL, 1),
(138, 'MC', 'Monaco', 'Monaco', '377', 'EU', 'Monaco', 'EUR', 'fr', NULL, NULL, 1),
(139, 'MD', 'Moldova', 'Moldova', '373', 'EU', 'Chișinău', 'MDL', 'ro', NULL, NULL, 1),
(140, 'ME', 'Montenegro', 'Црна Гора', '382', 'EU', 'Podgorica', 'EUR', 'sr,bs,sq,hr', NULL, NULL, 1),
(141, 'MF', 'Saint Martin', 'Saint-Martin', '590', 'NA', 'Marigot', 'EUR', 'en,fr,nl', NULL, NULL, 1),
(142, 'MG', 'Madagascar', 'Madagasikara', '261', 'AF', 'Antananarivo', 'MGA', 'fr,mg', NULL, NULL, 1),
(143, 'MH', 'Marshall Islands', 'M̧ajeļ', '692', 'OC', 'Majuro', 'USD', 'en,mh', NULL, NULL, 1),
(144, 'MK', 'Macedonia', 'Македонија', '389', 'EU', 'Skopje', 'MKD', 'mk', NULL, NULL, 1),
(145, 'ML', 'Mali', 'Mali', '223', 'AF', 'Bamako', 'XOF', 'fr', NULL, NULL, 1),
(146, 'MM', 'Myanmar [Burma]', 'မြန်မာ', '95', 'AS', 'Naypyidaw', 'MMK', 'my', NULL, NULL, 1),
(147, 'MN', 'Mongolia', 'Монгол улс', '976', 'AS', 'Ulan Bator', 'MNT', 'mn', NULL, NULL, 1),
(148, 'MO', 'Macao', '澳門', '853', 'AS', '', 'MOP', 'zh,pt', NULL, NULL, 1),
(149, 'MP', 'Northern Mariana Islands', 'Northern Mariana Islands', '1670', 'OC', 'Saipan', 'USD', 'en,ch', NULL, NULL, 1),
(150, 'MQ', 'Martinique', 'Martinique', '596', 'NA', 'Fort-de-France', 'EUR', 'fr', NULL, NULL, 1),
(151, 'MR', 'Mauritania', 'موريتانيا', '222', 'AF', 'Nouakchott', 'MRU', 'ar', NULL, NULL, 1),
(152, 'MS', 'Montserrat', 'Montserrat', '1664', 'NA', 'Plymouth', 'XCD', 'en', NULL, NULL, 1),
(153, 'MT', 'Malta', 'Malta', '356', 'EU', 'Valletta', 'EUR', 'mt,en', NULL, NULL, 1),
(154, 'MU', 'Mauritius', 'Maurice', '230', 'AF', 'Port Louis', 'MUR', 'en', NULL, NULL, 1),
(155, 'MV', 'Maldives', 'Maldives', '960', 'AS', 'Malé', 'MVR', 'dv', NULL, NULL, 1),
(156, 'MW', 'Malawi', 'Malawi', '265', 'AF', 'Lilongwe', 'MWK', 'en,ny', NULL, NULL, 1),
(157, 'MX', 'Mexico', 'México', '52', 'NA', 'Mexico City', 'MXN', 'es', NULL, NULL, 1),
(158, 'MY', 'Malaysia', 'Malaysia', '60', 'AS', 'Kuala Lumpur', 'MYR', 'ms', NULL, NULL, 1),
(159, 'MZ', 'Mozambique', 'Moçambique', '258', 'AF', 'Maputo', 'MZN', 'pt', NULL, NULL, 1),
(160, 'NA', 'Namibia', 'Namibia', '264', 'AF', 'Windhoek', 'NAD,ZAR', 'en,af', NULL, NULL, 1),
(161, 'NC', 'New Caledonia', 'Nouvelle-Calédonie', '687', 'OC', 'Nouméa', 'XPF', 'fr', NULL, NULL, 1),
(162, 'NE', 'Niger', 'Niger', '227', 'AF', 'Niamey', 'XOF', 'fr', NULL, NULL, 1),
(163, 'NF', 'Norfolk Island', 'Norfolk Island', '672', 'OC', 'Kingston', 'AUD', 'en', NULL, NULL, 1),
(164, 'NG', 'Nigeria', 'Nigeria', '234', 'AF', 'Abuja', 'NGN', 'en', NULL, NULL, 1),
(165, 'NI', 'Nicaragua', 'Nicaragua', '505', 'NA', 'Managua', 'NIO', 'es', NULL, NULL, 1),
(166, 'NL', 'Netherlands', 'Nederland', '31', 'EU', 'Amsterdam', 'EUR', 'nl', NULL, NULL, 1),
(167, 'NO', 'Norway', 'Norge', '47', 'EU', 'Oslo', 'NOK', 'no,nb,nn', NULL, NULL, 1),
(168, 'NP', 'Nepal', 'नपल', '977', 'AS', 'Kathmandu', 'NPR', 'ne', NULL, NULL, 1),
(169, 'NR', 'Nauru', 'Nauru', '674', 'OC', 'Yaren', 'AUD', 'en,na', NULL, NULL, 1),
(170, 'NU', 'Niue', 'Niuē', '683', 'OC', 'Alofi', 'NZD', 'en', NULL, NULL, 1),
(171, 'NZ', 'New Zealand', 'New Zealand', '64', 'OC', 'Wellington', 'NZD', 'en,mi', NULL, NULL, 1),
(172, 'OM', 'Oman', 'عمان', '968', 'AS', 'Muscat', 'OMR', 'ar', NULL, NULL, 1),
(173, 'PA', 'Panama', 'Panamá', '507', 'NA', 'Panama City', 'PAB,USD', 'es', NULL, NULL, 1),
(174, 'PE', 'Peru', 'Perú', '51', 'SA', 'Lima', 'PEN', 'es', NULL, NULL, 1),
(175, 'PF', 'French Polynesia', 'Polynésie française', '689', 'OC', 'Papeetē', 'XPF', 'fr', NULL, NULL, 1),
(176, 'PG', 'Papua New Guinea', 'Papua Niugini', '675', 'OC', 'Port Moresby', 'PGK', 'en', NULL, NULL, 1),
(177, 'PH', 'Philippines', 'Pilipinas', '63', 'AS', 'Manila', 'PHP', 'en', NULL, NULL, 1),
(178, 'PK', 'Pakistan', 'Pakistan', '92', 'AS', 'Islamabad', 'PKR', 'en,ur', NULL, NULL, 1),
(179, 'PL', 'Poland', 'Polska', '48', 'EU', 'Warsaw', 'PLN', 'pl', NULL, NULL, 1),
(180, 'PM', 'Saint Pierre and Miquelon', 'Saint-Pierre-et-Miquelon', '508', 'NA', 'Saint-Pierre', 'EUR', 'fr', NULL, NULL, 1),
(181, 'PN', 'Pitcairn Islands', 'Pitcairn Islands', '64', 'OC', 'Adamstown', 'NZD', 'en', NULL, NULL, 1),
(182, 'PR', 'Puerto Rico', 'Puerto Rico', '1787,1939', 'NA', 'San Juan', 'USD', 'es,en', NULL, NULL, 1),
(183, 'PS', 'Palestine', 'فلسطين', '970', 'AS', 'Ramallah', 'ILS', 'ar', NULL, NULL, 1),
(184, 'PT', 'Portugal', 'Portugal', '351', 'EU', 'Lisbon', 'EUR', 'pt', NULL, NULL, 1),
(185, 'PW', 'Palau', 'Palau', '680', 'OC', 'Ngerulmud', 'USD', 'en', NULL, NULL, 1),
(186, 'PY', 'Paraguay', 'Paraguay', '595', 'SA', 'Asunción', 'PYG', 'es,gn', NULL, NULL, 1),
(187, 'QA', 'Qatar', 'قطر', '974', 'AS', 'Doha', 'QAR', 'ar', NULL, NULL, 1),
(188, 'RE', 'Réunion', 'La Réunion', '262', 'AF', 'Saint-Denis', 'EUR', 'fr', NULL, NULL, 1),
(189, 'RO', 'Romania', 'România', '40', 'EU', 'Bucharest', 'RON', 'ro', NULL, NULL, 1),
(190, 'RS', 'Serbia', 'Србија', '381', 'EU', 'Belgrade', 'RSD', 'sr', NULL, NULL, 1),
(191, 'RU', 'Russia', 'Россия', '7', 'EU', 'Moscow', 'RUB', 'ru', NULL, NULL, 1),
(192, 'RW', 'Rwanda', 'Rwanda', '250', 'AF', 'Kigali', 'RWF', 'rw,en,fr', NULL, NULL, 1),
(193, 'SA', 'Saudi Arabia', 'العربية السعودية', '966', 'AS', 'Riyadh', 'SAR', 'ar', NULL, NULL, 1),
(194, 'SB', 'Solomon Islands', 'Solomon Islands', '677', 'OC', 'Honiara', 'SBD', 'en', NULL, NULL, 1),
(195, 'SC', 'Seychelles', 'Seychelles', '248', 'AF', 'Victoria', 'SCR', 'fr,en', NULL, NULL, 1),
(196, 'SD', 'Sudan', 'السودان', '249', 'AF', 'Khartoum', 'SDG', 'ar,en', NULL, NULL, 1),
(197, 'SE', 'Sweden', 'Sverige', '46', 'EU', 'Stockholm', 'SEK', 'sv', NULL, NULL, 1),
(198, 'SG', 'Singapore', 'Singapore', '65', 'AS', 'Singapore', 'SGD', 'en,ms,ta,zh', NULL, NULL, 1),
(199, 'SH', 'Saint Helena', 'Saint Helena', '290', 'AF', 'Jamestown', 'SHP', 'en', NULL, NULL, 1),
(200, 'SI', 'Slovenia', 'Slovenija', '386', 'EU', 'Ljubljana', 'EUR', 'sl', NULL, NULL, 1),
(201, 'SJ', 'Svalbard and Jan Mayen', 'Svalbard og Jan Mayen', '4779', 'EU', 'Longyearbyen', 'NOK', 'no', NULL, NULL, 1),
(202, 'SK', 'Slovakia', 'Slovensko', '421', 'EU', 'Bratislava', 'EUR', 'sk', NULL, NULL, 1),
(203, 'SL', 'Sierra Leone', 'Sierra Leone', '232', 'AF', 'Freetown', 'SLL', 'en', NULL, NULL, 1),
(204, 'SM', 'San Marino', 'San Marino', '378', 'EU', 'City of San Marino', 'EUR', 'it', NULL, NULL, 1),
(205, 'SN', 'Senegal', 'Sénégal', '221', 'AF', 'Dakar', 'XOF', 'fr', NULL, NULL, 1),
(206, 'SO', 'Somalia', 'Soomaaliya', '252', 'AF', 'Mogadishu', 'SOS', 'so,ar', NULL, NULL, 1),
(207, 'SR', 'Suriname', 'Suriname', '597', 'SA', 'Paramaribo', 'SRD', 'nl', NULL, NULL, 1),
(208, 'SS', 'South Sudan', 'South Sudan', '211', 'AF', 'Juba', 'SSP', 'en', NULL, NULL, 1),
(209, 'ST', 'São Tomé and Príncipe', 'São Tomé e Príncipe', '239', 'AF', 'São Tomé', 'STN', 'pt', NULL, NULL, 1),
(210, 'SV', 'El Salvador', 'El Salvador', '503', 'NA', 'San Salvador', 'SVC,USD', 'es', NULL, NULL, 1),
(211, 'SX', 'Sint Maarten', 'Sint Maarten', '1721', 'NA', 'Philipsburg', 'ANG', 'nl,en', NULL, NULL, 1),
(212, 'SY', 'Syria', 'سوريا', '963', 'AS', 'Damascus', 'SYP', 'ar', NULL, NULL, 1),
(213, 'SZ', 'Swaziland', 'Swaziland', '268', 'AF', 'Lobamba', 'SZL', 'en,ss', NULL, NULL, 1),
(214, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', '1649', 'NA', 'Cockburn Town', 'USD', 'en', NULL, NULL, 1),
(215, 'TD', 'Chad', 'Tchad', '235', 'AF', 'N\'Djamena', 'XAF', 'fr,ar', NULL, NULL, 1),
(216, 'TF', 'French Southern Territories', 'Territoire des Terres australes et antarctiques fr', '262', 'AN', 'Port-aux-Français', 'EUR', 'fr', NULL, NULL, 1),
(217, 'TG', 'Togo', 'Togo', '228', 'AF', 'Lomé', 'XOF', 'fr', NULL, NULL, 1),
(218, 'TH', 'Thailand', 'ประเทศไทย', '66', 'AS', 'Bangkok', 'THB', 'th', NULL, NULL, 1),
(219, 'TJ', 'Tajikistan', 'Тоҷикистон', '992', 'AS', 'Dushanbe', 'TJS', 'tg,ru', NULL, NULL, 1),
(220, 'TK', 'Tokelau', 'Tokelau', '690', 'OC', 'Fakaofo', 'NZD', 'en', NULL, NULL, 1),
(221, 'TL', 'East Timor', 'Timor-Leste', '670', 'OC', 'Dili', 'USD', 'pt', NULL, NULL, 1),
(222, 'TM', 'Turkmenistan', 'Türkmenistan', '993', 'AS', 'Ashgabat', 'TMT', 'tk,ru', NULL, NULL, 1),
(223, 'TN', 'Tunisia', 'تونس', '216', 'AF', 'Tunis', 'TND', 'ar', NULL, NULL, 1),
(224, 'TO', 'Tonga', 'Tonga', '676', 'OC', 'Nuku\'alofa', 'TOP', 'en,to', NULL, NULL, 1),
(225, 'TR', 'Turkey', 'Türkiye', '90', 'AS', 'Ankara', 'TRY', 'tr', NULL, NULL, 1),
(226, 'TT', 'Trinidad and Tobago', 'Trinidad and Tobago', '1868', 'NA', 'Port of Spain', 'TTD', 'en', NULL, NULL, 1),
(227, 'TV', 'Tuvalu', 'Tuvalu', '688', 'OC', 'Funafuti', 'AUD', 'en', NULL, NULL, 1),
(228, 'TW', 'Taiwan', '臺灣', '886', 'AS', 'Taipei', 'TWD', 'zh', NULL, NULL, 1),
(229, 'TZ', 'Tanzania', 'Tanzania', '255', 'AF', 'Dodoma', 'TZS', 'sw,en', NULL, NULL, 1),
(230, 'UA', 'Ukraine', 'Україна', '380', 'EU', 'Kyiv', 'UAH', 'uk', NULL, NULL, 1),
(231, 'UG', 'Uganda', 'Uganda', '256', 'AF', 'Kampala', 'UGX', 'en,sw', NULL, NULL, 1),
(232, 'UM', 'U.S. Minor Outlying Islands', 'United States Minor Outlying Islands', '1', 'OC', '', 'USD', 'en', NULL, NULL, 1),
(233, 'US', 'United States', 'United States', '1', 'NA', 'Washington D.C.', 'USD,USN,USS', 'en', NULL, NULL, 1),
(234, 'UY', 'Uruguay', 'Uruguay', '598', 'SA', 'Montevideo', 'UYI,UYU', 'es', NULL, NULL, 1),
(235, 'UZ', 'Uzbekistan', 'O‘zbekiston', '998', 'AS', 'Tashkent', 'UZS', 'uz,ru', NULL, NULL, 1),
(236, 'VA', 'Vatican City', 'Vaticano', '39066,379', 'EU', 'Vatican City', 'EUR', 'it,la', NULL, NULL, 1),
(237, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', '1784', 'NA', 'Kingstown', 'XCD', 'en', NULL, NULL, 1),
(238, 'VE', 'Venezuela', 'Venezuela', '58', 'SA', 'Caracas', 'VES', 'es', NULL, NULL, 1),
(239, 'VG', 'British Virgin Islands', 'British Virgin Islands', '1284', 'NA', 'Road Town', 'USD', 'en', NULL, NULL, 1),
(240, 'VI', 'U.S. Virgin Islands', 'United States Virgin Islands', '1340', 'NA', 'Charlotte Amalie', 'USD', 'en', NULL, NULL, 1),
(241, 'VN', 'Vietnam', 'Việt Nam', '84', 'AS', 'Hanoi', 'VND', 'vi', NULL, NULL, 1),
(242, 'VU', 'Vanuatu', 'Vanuatu', '678', 'OC', 'Port Vila', 'VUV', 'bi,en,fr', NULL, NULL, 1),
(243, 'WF', 'Wallis and Futuna', 'Wallis et Futuna', '681', 'OC', 'Mata-Utu', 'XPF', 'fr', NULL, NULL, 1),
(244, 'WS', 'Samoa', 'Samoa', '685', 'OC', 'Apia', 'WST', 'sm,en', NULL, NULL, 1),
(245, 'XK', 'Kosovo', 'Republika e Kosovës', '377,381,383,386', 'EU', 'Pristina', 'EUR', 'sq,sr', NULL, NULL, 1),
(246, 'YE', 'Yemen', 'اليَمَن', '967', 'AS', 'Sana\'a', 'YER', 'ar', NULL, NULL, 1),
(247, 'YT', 'Mayotte', 'Mayotte', '262', 'AF', 'Mamoudzou', 'EUR', 'fr', NULL, NULL, 1),
(248, 'ZA', 'South Africa', 'South Africa', '27', 'AF', 'Pretoria', 'ZAR', 'af,en,nr,st,ss,tn,ts,ve,xh,zu', NULL, NULL, 1),
(249, 'ZM', 'Zambia', 'Zambia', '260', 'AF', 'Lusaka', 'ZMK', 'en', NULL, NULL, 1),
(250, 'ZW', 'Zimbabwe', 'Zimbabwe', '263', 'AF', 'Harare', 'USD,ZAR,BWP,GBP,AUD,CNY,INR,JP', 'en,sn,nd', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `custom_result_settings`
--

CREATE TABLE `custom_result_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_term_id1` int(11) NOT NULL,
  `percentage1` double(8,2) NOT NULL,
  `exam_term_id2` int(11) NOT NULL,
  `percentage2` double(8,2) NOT NULL,
  `exam_term_id3` int(11) NOT NULL,
  `percentage3` double(8,2) NOT NULL,
  `academic_year` int(11) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infix_module_infos`
--

CREATE TABLE `infix_module_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1,
  `type` int(11) DEFAULT NULL COMMENT '1 for module, 2 for module link, 3 for module links crud',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infix_module_infos`
--

INSERT INTO `infix_module_infos` (`id`, `module_id`, `parent_id`, `name`, `route`, `active_status`, `created_by`, `updated_by`, `school_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Dashboard Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(2, 1, 1, '➡ Number of Student', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(3, 1, 1, '➡ Number of Teacher', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(4, 1, 1, '➡ Number of Parents', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(5, 1, 1, '➡ Number of Staff', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(6, 1, 1, '➡ Current Month Income and Expense Chart', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(7, 1, 1, '➡ Current Year Income and Expense Chart', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(8, 1, 1, '➡ Notice Board', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(9, 1, 1, '➡ Calendar Section', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(10, 1, 1, '➡ To Do list', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(11, 2, 0, 'Admin Section Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(12, 2, 11, 'Admission Query menu', 'admission-query', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(13, 2, 12, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(14, 2, 12, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(15, 2, 12, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(16, 2, 11, 'Visitor Book Menu', 'visitor', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(17, 2, 16, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(18, 2, 16, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(19, 2, 16, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(20, 2, 16, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(21, 2, 11, 'Complaint Menu', 'complaint', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(22, 2, 21, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(23, 2, 21, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(24, 2, 21, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(25, 2, 21, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(26, 2, 21, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(27, 2, 11, 'Postal Receive Menu', 'postal-receive', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(28, 2, 27, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(29, 2, 27, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(30, 2, 27, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(31, 2, 27, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(32, 2, 11, 'Postal Dispatch Menu', 'postal-dispatch', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(33, 2, 32, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(34, 2, 32, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(35, 2, 32, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(36, 2, 11, 'Phone Call Log Menu', 'phone-call', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(37, 2, 36, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(38, 2, 36, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(39, 2, 36, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(40, 2, 36, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(41, 2, 11, 'Admin Setup Menu', 'setup-admin', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(42, 2, 41, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(43, 2, 41, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(44, 2, 41, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(45, 2, 11, 'Student ID Menu', 'student-id-card', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(46, 2, 45, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(47, 2, 45, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(48, 2, 45, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(49, 2, 11, 'Student Certificate Menu', 'student-certificate', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(50, 2, 49, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(51, 2, 49, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(52, 2, 49, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(53, 2, 11, 'Generate Certificate Menu', 'generate-certificate', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(54, 2, 53, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(55, 2, 53, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(56, 2, 53, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(57, 2, 11, 'Generate ID Card Menu', 'generate-id-card', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(58, 2, 57, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(59, 2, 57, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(60, 2, 57, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(61, 3, 0, 'Student Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(62, 3, 61, 'Student Admission Menu', 'student-admission', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(63, 3, 62, 'Import Student', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(64, 3, 61, 'Student List Menu', 'student-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(65, 3, 64, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(66, 3, 64, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(67, 3, 64, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(68, 3, 61, 'Student Attendance Menu', 'student-attendance', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(69, 3, 68, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(70, 3, 61, 'Student Attendance Report Menu', 'student-attendance-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(71, 3, 61, 'Student Category Menu', 'student-category', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(72, 3, 71, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(73, 3, 71, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(74, 3, 71, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(75, 3, 71, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(76, 3, 61, 'Student Group Menu', 'student-group', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(77, 3, 76, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(79, 3, 76, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(80, 3, 76, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(81, 3, 61, 'Student Promote Menu', 'student-promote', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(82, 3, 81, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(83, 3, 61, 'Disabled Students Menu', 'disabled-student', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(84, 3, 83, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(85, 3, 83, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(86, 3, 83, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(87, 4, 0, 'Study Material Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(88, 4, 87, 'Upload Content Menu', 'upload-content', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(89, 4, 88, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(90, 4, 88, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(91, 4, 88, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(92, 4, 87, 'Assignment Menu', 'assignment-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(93, 4, 92, 'Add', '', 0, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(94, 4, 92, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(95, 4, 92, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(96, 4, 87, 'Study Material Menu', 'study-metarial-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(97, 4, 96, 'Add', '', 0, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(98, 4, 96, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(99, 4, 96, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(100, 4, 87, 'Syllabus Menu', 'syllabus-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(101, 4, 100, 'Add', '', 0, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(102, 4, 100, 'Edit', '', 0, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(103, 4, 100, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(104, 4, 100, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(105, 4, 87, 'Other Downloads Menu', 'other-download-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(106, 4, 105, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(107, 4, 105, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(108, 5, 0, 'Fees Collection Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(109, 5, 108, 'Collect Fees Menu', 'collect-fees', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(110, 5, 109, ' Collect Fees', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(111, 5, 109, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(112, 5, 109, 'Print', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(113, 5, 108, 'Search Fees Payment Menu', 'search-fees-payment', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(114, 5, 113, 'Add', '', 0, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(115, 5, 113, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(116, 5, 108, 'Search Fees Due Menu', 'search-fees-due', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(117, 5, 116, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(118, 5, 108, 'Fees Master Menu', 'fees-master', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(119, 5, 118, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(120, 5, 118, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(121, 5, 118, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(122, 5, 118, 'Assign', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(123, 5, 108, 'Fees Group Menu', 'fees-group', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(124, 5, 123, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(125, 5, 123, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(126, 5, 123, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(127, 5, 108, 'Fees Type Menu', 'fees-type', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(128, 5, 127, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(129, 5, 127, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(130, 5, 127, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(131, 5, 108, 'Fees Discount Menu', 'fees-discount', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(132, 5, 131, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(133, 5, 131, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(134, 5, 131, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(135, 5, 131, 'Assign', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(136, 5, 108, 'Fees Carry Forward Menu', 'fees-forward', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(137, 6, 0, 'Accounts Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(138, 6, 137, 'Profit Menu', 'profit', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(139, 6, 137, 'Income Menu', 'add-income', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(140, 6, 139, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(141, 6, 139, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(142, 6, 139, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(143, 6, 137, 'Expense Menu', 'add-expense', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(144, 6, 143, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(145, 6, 143, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(146, 6, 143, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(147, 6, 137, 'Search Menu', 'search-account', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(148, 6, 137, 'Chart of Account Menu', 'chart-of-account', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(149, 6, 148, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(150, 6, 148, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(151, 6, 148, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(152, 6, 137, 'Payment method Menu', 'payment-method', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(153, 6, 152, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(154, 6, 152, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(155, 6, 152, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(156, 6, 137, 'Bank Account Menu', 'bank-account', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(157, 6, 156, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(158, 6, 156, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(159, 6, 156, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(160, 7, 0, 'Human Resource Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(161, 7, 160, 'Staff Directory Menu', 'staff-directory', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(162, 7, 161, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(163, 7, 161, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(164, 7, 161, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(165, 7, 160, 'Staff Attendance Menu', 'staff-attendance', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(166, 7, 165, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(167, 7, 165, 'Edit', '', 0, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(168, 7, 165, 'Delete', '', 0, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(169, 7, 160, 'Staff Attendance Report Menu', 'staff-attendance-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(170, 7, 160, 'Payroll Menu', 'payroll', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(171, 7, 170, 'Edit', '', 0, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(172, 7, 170, 'Delete', '', 0, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(173, 7, 170, 'Search', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(174, 7, 170, 'Generate Payroll', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(175, 7, 170, 'Create', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(176, 7, 170, 'Proceed To Pay', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(177, 7, 170, 'View Payslip', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(178, 7, 160, 'Payroll Report Menu', 'payroll-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(179, 7, 178, 'Report Search', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(180, 7, 160, 'Designations Menu', 'designation', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(181, 7, 180, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(182, 7, 180, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(183, 7, 180, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(184, 7, 160, 'Departments Menu', 'department', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(185, 7, 184, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(186, 7, 184, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(187, 7, 184, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(188, 8, 0, 'Leave Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(189, 8, 188, 'Approve Leave Menu', 'approve-leave', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(190, 8, 189, 'Add', '', 0, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(191, 8, 189, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(192, 8, 189, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(193, 8, 188, 'Apply Leave Menu', 'apply-leave', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(194, 8, 193, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(195, 8, 193, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(196, 8, 188, 'Pending Leave Menu', 'pending-leave', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(197, 8, 196, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(198, 8, 196, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(199, 8, 188, 'Leave Define Menu', 'leave-define', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(200, 8, 199, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(201, 8, 199, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(202, 8, 199, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(203, 8, 188, 'Leave Type Menu', 'leave-type', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(204, 8, 203, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(205, 8, 203, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(206, 8, 203, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(207, 9, 0, 'Examination Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(208, 9, 207, 'Add Exam Type Menu', 'exam-type', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(209, 9, 208, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(210, 9, 208, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(211, 9, 208, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(214, 9, 207, 'Exam Setup Menu', 'exam', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(215, 9, 214, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(216, 9, 214, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(217, 9, 207, 'Exam Schedule Menu', 'exam-schedule', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(218, 9, 217, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(219, 9, 217, 'Create', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(220, 9, 207, 'Exam Attendance Menu', 'exam-attendance', 0, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(221, 9, 220, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(222, 9, 220, 'Marks Register Menu', 'marks-register', 0, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(223, 9, 220, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(224, 9, 220, 'Create', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(225, 9, 207, 'Marks Grade Menu', 'marks-grade', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(226, 9, 225, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(227, 9, 225, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(228, 9, 225, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(229, 9, 207, 'Send Marks By SMS Menu', 'send-marks-by-sms', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(230, 9, 207, 'Question Group Menu', 'question-group', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(231, 9, 230, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(232, 9, 230, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(233, 9, 230, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(234, 9, 207, 'Question Bank Menu', 'question-bank', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(235, 9, 234, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(236, 9, 234, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(237, 9, 234, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(238, 9, 207, 'Online Exam Menu', 'online-exam', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(239, 9, 238, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(240, 9, 238, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(241, 9, 238, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(242, 9, 238, 'Manage Question', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(243, 9, 238, 'Marks Register', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(244, 9, 238, 'Result', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(245, 10, 0, 'Academics Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(246, 10, 245, 'Class Routine Menu', 'class-routine-new', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(247, 10, 246, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(248, 10, 246, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(249, 10, 246, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(250, 10, 245, 'Assign Subject Menu', 'assign-subject', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(251, 10, 250, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(252, 10, 250, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(253, 10, 245, 'Assign Class Teacher Menu', 'assign-class-teacher', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(254, 10, 253, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(255, 10, 253, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(256, 10, 253, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(257, 10, 245, 'Subjects Menu', 'subject', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(258, 10, 257, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(259, 10, 257, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(260, 10, 257, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(261, 10, 245, 'Class Menu', 'class', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(262, 10, 261, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(263, 10, 261, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(264, 10, 261, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(265, 10, 245, 'Section Menu', 'section', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(266, 10, 265, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(267, 10, 265, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(268, 10, 265, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(269, 10, 245, 'Class Room Menu', 'class-room', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(270, 10, 269, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(271, 10, 269, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(272, 10, 269, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(273, 10, 245, 'CL/EX Time Setup Menu', 'class-time', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(274, 10, 273, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(275, 10, 273, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(276, 10, 273, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(277, 11, 0, 'Homework Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(278, 11, 277, 'Add Homework Menu', 'add-homeworks', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(279, 11, 278, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(280, 11, 277, 'Homework List Menu', 'homework-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(281, 11, 280, 'Evaluation', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(282, 11, 280, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(283, 11, 280, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(284, 11, 277, 'Homework Evaluation Report Menu', 'evaluation-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(285, 11, 284, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(286, 12, 0, 'Communicate Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(287, 12, 286, 'Notice Board Menu', 'notice-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(288, 12, 287, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(289, 12, 287, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(290, 12, 287, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(291, 12, 286, 'Send Email / SMS  Menu', 'send-email-sms-view', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(292, 12, 291, 'Send', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(293, 12, 286, 'Email / SMS Log Menu', 'email-sms-log', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(294, 12, 286, 'Event Menu', 'event', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(295, 12, 294, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(296, 12, 294, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(297, 12, 294, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(298, 13, 0, 'Library Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(299, 13, 298, 'Add Book Menu', 'add-book', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(300, 13, 299, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(301, 13, 298, 'Book List  Menu', 'book-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(302, 13, 301, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(303, 13, 301, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(304, 13, 298, 'Book Category Menu', 'book-category-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(305, 13, 304, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(306, 13, 304, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(307, 13, 304, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(308, 13, 298, 'Add Member Menu', 'library-member', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(309, 13, 308, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(310, 13, 308, 'Cancel', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(311, 13, 298, 'Issue/Return Book Menu', 'member-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(312, 13, 311, 'Issue', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(313, 13, 311, 'Return', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(314, 13, 298, 'All Issued Book', 'all-issed-book', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(315, 14, 0, 'Inventory Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(316, 14, 315, 'Item Category Menu', 'item-category', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(317, 14, 316, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(318, 14, 316, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(319, 14, 316, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(320, 14, 315, 'Item List Menu', 'item-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(321, 14, 320, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(322, 14, 320, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(323, 14, 320, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(324, 14, 315, 'Item Store Menu', 'item-store', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(325, 14, 324, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(326, 14, 324, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(327, 14, 324, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(328, 14, 315, 'Supplier Menu', 'suppliers', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(329, 14, 328, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(330, 14, 328, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(331, 14, 328, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(332, 14, 315, 'Item Receive Menu', 'item-receive', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(333, 14, 332, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(334, 14, 315, 'Item Receive List Menu', 'item-receive-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(335, 14, 334, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(336, 14, 334, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(337, 14, 334, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(338, 14, 334, 'Cancel', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(339, 14, 315, 'Item Sell Menu', 'item-sell-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(340, 14, 339, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(341, 14, 339, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(342, 14, 339, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(343, 14, 339, 'Add Payment', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(344, 14, 339, 'View Payment', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(345, 14, 315, 'Item Issue Menu', 'item-issue', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(346, 14, 345, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(347, 14, 345, 'Return', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(348, 15, 0, 'Transport Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(349, 15, 348, 'Routes Menu', 'transport-route', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(350, 15, 349, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(351, 15, 349, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(352, 15, 349, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(353, 15, 348, 'Vehicle Menu', 'vehicle', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(354, 15, 353, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(355, 15, 353, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(356, 15, 353, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(357, 15, 348, 'Assign Vehicle Menu', 'assign-vehicle', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(358, 15, 357, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(359, 15, 357, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(360, 15, 357, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(361, 15, 348, 'Student Transport Report Menu', 'student-transport-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(362, 16, 0, 'Dormitory Menu', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(363, 16, 362, 'Dormitory Rooms Menu', 'room-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(364, 16, 363, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(365, 16, 363, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(366, 16, 363, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(367, 16, 362, 'Dormitory Menu', 'dormitory-list', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(368, 16, 367, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(369, 16, 367, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(370, 16, 367, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(371, 16, 362, 'Room Type Menu', 'room-type', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(372, 16, 371, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(373, 16, 371, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(374, 16, 371, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(375, 16, 362, 'Student Dormitory Report Menu', 'student-dormitory-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(376, 17, 0, 'Reports Menu', 'student-report', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(377, 17, 376, 'Guardian Report Menu', 'guardian-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(378, 17, 376, 'Student History Menu', 'student-history', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(379, 17, 376, 'Student Login Report', 'student-login-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(380, 17, 379, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(381, 17, 376, 'Fees Statement Menu', 'fees-statement', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(382, 17, 376, 'Balance Fees Report Menu', 'balance-fees-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(383, 17, 376, 'Transaction Report Menu', 'transaction-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(384, 17, 376, 'Class Report Menu', 'class-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(385, 17, 376, 'Class Routine Menu', 'class-routine-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(386, 17, 376, 'Exam Routine Menu', 'exam-routine-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(387, 17, 376, 'Teacher Class Routine Menu', 'teacher-class-routine-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(388, 17, 376, 'Merit List Report Menu', 'merit-list-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(389, 17, 376, 'Online Exam Report Menu', 'online-exam-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(390, 17, 376, 'Mark Sheet Report Menu', 'mark-sheet-report-student', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(391, 17, 376, 'Tabulation Sheet Report Menu', 'tabulation-sheet-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(392, 17, 376, 'Progress Card Report Menu', 'progress-card-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(393, 17, 376, 'Student Fine Report Menu', 'student-fine-report', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(394, 17, 376, 'User Log Menu', 'user-log', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(395, 8, 394, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(396, 8, 394, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(397, 9, 394, 'Exam Setup Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(398, 18, 0, 'Systemm settings module', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(399, 18, 398, 'Manage Add-ons', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(400, 18, 399, 'Verify', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(401, 18, 398, 'Manage Currency', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(402, 18, 401, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(403, 18, 401, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(404, 18, 401, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(405, 18, 398, 'General Settings', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(406, 18, 405, 'Logo Change', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(407, 18, 405, 'Fevicon Change', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(408, 18, 405, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(409, 18, 405, 'Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(410, 18, 398, 'Email Setting', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(411, 18, 410, 'Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(412, 18, 398, 'Payment Method Settings', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(413, 18, 412, 'Gateway Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(414, 18, 412, 'PayPal Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(415, 18, 412, 'Stripe Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(416, 18, 412, 'Paystack Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(417, 18, 398, 'Role', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(418, 18, 417, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(419, 18, 417, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(420, 18, 417, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(421, 18, 398, 'Login Permission', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(422, 18, 421, 'On', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(423, 18, 421, 'Off', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(424, 18, 398, 'Optional Subject Setup', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(425, 18, 424, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(426, 18, 424, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(427, 18, 424, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(428, 18, 398, 'Base Setup', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(429, 18, 428, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(430, 18, 428, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(431, 18, 428, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(432, 18, 398, 'Academic Year', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(433, 18, 432, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(434, 18, 432, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(435, 18, 432, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(436, 18, 398, 'Custom Result Setting', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(437, 18, 436, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(438, 18, 436, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(439, 18, 436, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(440, 18, 398, 'Holiday', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(441, 18, 440, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(442, 18, 440, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(443, 18, 440, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(444, 18, 398, 'Sms Settings', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(445, 18, 444, ' Select SMS Service', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(446, 18, 444, ' Twilio Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(447, 18, 444, ' MSG91 Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(448, 18, 398, 'Weekend', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(449, 18, 448, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(450, 18, 448, 'Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(451, 18, 398, 'Language Settings', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(452, 18, 451, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(453, 18, 451, 'Make Default', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(454, 18, 451, 'Setup', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(455, 18, 451, 'Remove', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(456, 18, 398, 'Backup', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(457, 18, 456, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(458, 18, 456, 'Download', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(459, 18, 456, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(460, 18, 456, 'Image', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(461, 18, 456, 'Full Project', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(462, 18, 456, 'Database', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(463, 18, 398, 'Button Manage', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(464, 18, 463, 'Custom URL Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(465, 18, 463, 'Website On', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(466, 18, 463, 'Website Off', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(467, 18, 463, 'Dashboard On', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(468, 18, 463, 'Dashboard Off', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(469, 18, 463, 'Report On', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(470, 18, 463, 'Report Off', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(471, 18, 463, 'Language On', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(472, 18, 463, 'Language Off', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(473, 18, 463, 'Style On', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(474, 18, 463, 'Style Off', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(475, 18, 463, 'LTL To RTL On', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(476, 18, 463, 'LTL To RTL Off', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(477, 18, 398, 'About', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(478, 18, 477, 'Update', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(479, 18, 477, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(480, 18, 398, 'Email Template', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(481, 18, 480, 'Save', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(482, 18, 398, 'API Permission', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(483, 18, 482, 'On', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(484, 18, 482, 'Off', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(485, 19, 0, 'Style Module', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(486, 19, 485, 'Background Settings', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(487, 19, 486, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(488, 19, 486, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(489, 19, 486, 'Make Default', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(490, 19, 485, 'Color Themes', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(491, 19, 490, 'Make Default', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(492, 20, 0, 'Front settings Module', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(493, 20, 492, 'Home Page', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(494, 20, 493, 'Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(495, 20, 492, 'News List', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(496, 20, 495, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(497, 20, 495, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(498, 20, 495, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(499, 20, 495, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(500, 20, 492, 'News Category', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(501, 20, 500, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(502, 20, 500, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(503, 20, 500, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(504, 20, 492, 'Testimonial', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(505, 20, 504, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(506, 20, 504, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(507, 20, 504, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(508, 20, 504, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(509, 20, 492, 'Course List', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(510, 20, 509, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(511, 20, 509, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(512, 20, 509, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(513, 20, 509, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(514, 20, 492, 'Contact Page', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(515, 20, 514, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(516, 20, 514, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(517, 20, 492, 'Contact Messages', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(518, 20, 517, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(519, 20, 517, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(520, 20, 492, 'About Page', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(521, 20, 520, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(522, 20, 520, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(523, 20, 492, 'News Heading', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(524, 20, 523, 'Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(525, 20, 492, 'Course Heading', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(526, 20, 525, 'Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(527, 20, 492, 'Custom Links', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(528, 20, 527, 'Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(529, 20, 492, 'Social Media', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(530, 20, 529, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22');
INSERT INTO `infix_module_infos` (`id`, `module_id`, `parent_id`, `name`, `route`, `active_status`, `created_by`, `updated_by`, `school_id`, `type`, `created_at`, `updated_at`) VALUES
(531, 20, 529, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(532, 20, 529, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(533, 3, 61, 'Subject Wise Attendance', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(534, 3, 533, 'Save', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(535, 3, 61, 'Subject Wise Attendance Report', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(536, 3, 535, 'Print', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(537, 10, 245, 'Optional Subject', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(538, 17, 376, 'Student Report', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(539, 17, 376, 'Previous Result', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(540, 17, 376, 'Previous Record', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(541, 18, 417, 'Assign Permission', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(542, 21, 0, 'Registration', '', 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(543, 21, 542, 'Student List', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(544, 21, 543, 'View', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(545, 21, 543, 'Approve', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(546, 21, 543, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(547, 21, 542, 'Settings', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(548, 21, 547, 'Update', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(549, 18, 398, 'Language', '', 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(550, 18, 549, 'Add', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(551, 18, 549, 'Edit', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(552, 18, 549, 'Delete', '', 1, 1, 1, 1, 3, '2019-07-24 20:21:21', '2019-07-24 22:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `infix_module_student_parent_infos`
--

CREATE TABLE `infix_module_student_parent_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1,
  `type` int(11) DEFAULT NULL COMMENT '1 for module, 2 for module link, 3 for module options',
  `user_type` int(11) DEFAULT NULL COMMENT '1 for student, 2 for parent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infix_module_student_parent_infos`
--

INSERT INTO `infix_module_student_parent_infos` (`id`, `module_id`, `parent_id`, `name`, `route`, `active_status`, `created_by`, `updated_by`, `school_id`, `type`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Dashboard Menu', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(2, 1, 1, 'Subject', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(3, 1, 1, 'Notice', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(4, 1, 1, 'Exam', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(5, 1, 1, 'Online Exam', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(6, 1, 1, 'Teachers', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(7, 1, 1, 'Issued books', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(8, 1, 1, 'Pending homeworks', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(9, 1, 1, 'attendance in current month', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(10, 1, 1, 'Calendar', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(11, 2, 0, 'My Profile', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(12, 2, 11, 'Profile', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(13, 2, 11, 'Fees', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(14, 2, 11, 'Exam', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(15, 2, 11, 'Document', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(16, 2, 15, 'Upload', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(17, 2, 15, 'download', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(18, 2, 15, 'delete', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(19, 2, 11, 'Timeline', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(20, 3, 0, 'Fees', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(21, 3, 20, 'Pay Fees', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(22, 4, 0, 'Class Routine', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(23, 5, 0, 'Homework List', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(24, 5, 23, 'View', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(25, 5, 23, 'Add Content', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(26, 6, 0, 'Download Center', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(27, 6, 26, 'Assignment', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(28, 6, 27, 'Download', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(29, 6, 26, 'Study Material', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(30, 6, 29, 'Download', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(31, 6, 26, 'Syllabus', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(32, 6, 31, 'Download', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(33, 6, 26, 'Other Downloads', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(34, 6, 33, 'Download', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(35, 7, 0, 'Attendance', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(36, 8, 0, 'Examination', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(37, 8, 36, 'Result', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(38, 8, 36, 'Exam Schedule', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(39, 9, 0, 'Leave', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(40, 9, 39, 'Apply Leave', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(41, 9, 40, 'Save', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(42, 9, 40, 'Edit', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(44, 9, 39, 'Pending Leave', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(45, 10, 0, 'Online Exam', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(46, 10, 45, 'Active Exams', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(47, 10, 45, 'View Results', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(48, 11, 0, 'Notice Board', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(49, 12, 0, 'Subject', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(50, 13, 0, 'Teachers List', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(51, 14, 0, 'Library', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(52, 14, 51, 'Book List', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(53, 14, 51, 'Book Issued', '', 1, 1, 1, 1, 2, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(54, 15, 0, 'Transport', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(55, 16, 0, 'Dormitory', '', 1, 1, 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(56, 1, 0, 'Dashboard Menu', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(57, 1, 56, 'Subject', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(58, 1, 56, 'Notice', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(59, 1, 56, 'Exam', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(60, 1, 56, 'Online Exam', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(61, 1, 56, 'Teachers', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(62, 1, 56, 'Issued books', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(63, 1, 56, 'Pending homeworks', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(64, 1, 56, 'attendance in current month', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(65, 1, 56, 'Calendar', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(66, 2, 0, 'My Children', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(67, 2, 66, 'Profile', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(68, 2, 66, 'Fees', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(69, 2, 66, 'Exam', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(70, 2, 66, 'Timeline', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(71, 3, 0, 'Fees', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(72, 4, 0, 'Class Routine', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(73, 5, 0, 'HomeWork ', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(74, 5, 73, 'View', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(75, 6, 0, 'Attendance ', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(76, 7, 0, 'Exam ', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(77, 7, 76, 'Exam Result', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(78, 7, 76, 'Exam Schedule', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(79, 7, 76, 'Online Exam', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(80, 8, 0, 'Leave', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(81, 8, 80, 'Apply Leave', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(82, 8, 81, 'Save', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(83, 8, 81, 'Edit', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(84, 8, 80, 'Pending Leave', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(85, 9, 0, 'Notice Board', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(86, 10, 0, 'Subject', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(87, 11, 0, 'Teachers List', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(88, 12, 0, 'Library', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(89, 12, 88, 'Book List', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(90, 12, 88, 'Book Issued', '', 1, 1, 1, 1, 2, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(91, 13, 0, 'Transport', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(92, 14, 0, 'Dormitory', '', 1, 1, 1, 1, 1, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(93, 9, 40, 'View', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(94, 9, 40, 'Delete', '', 1, 1, 1, 1, 3, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(95, 8, 81, 'View', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(96, 8, 81, 'Delete', '', 1, 1, 1, 1, 3, 2, '2019-07-24 20:21:21', '2019-07-24 22:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `infix_permission_assigns`
--

CREATE TABLE `infix_permission_assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL COMMENT ' module id, module link id, module link options id',
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infix_permission_assigns`
--

INSERT INTO `infix_permission_assigns` (`id`, `active_status`, `created_at`, `updated_at`, `module_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 1, 5, 1, 1, 1),
(2, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 2, 5, 1, 1, 1),
(3, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 3, 5, 1, 1, 1),
(4, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 4, 5, 1, 1, 1),
(5, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 5, 5, 1, 1, 1),
(6, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 6, 5, 1, 1, 1),
(7, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 7, 5, 1, 1, 1),
(8, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 8, 5, 1, 1, 1),
(9, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 9, 5, 1, 1, 1),
(10, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 10, 5, 1, 1, 1),
(11, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 11, 5, 1, 1, 1),
(12, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 12, 5, 1, 1, 1),
(13, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 13, 5, 1, 1, 1),
(14, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 14, 5, 1, 1, 1),
(15, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 15, 5, 1, 1, 1),
(16, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 16, 5, 1, 1, 1),
(17, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 17, 5, 1, 1, 1),
(18, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 18, 5, 1, 1, 1),
(19, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 19, 5, 1, 1, 1),
(20, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 20, 5, 1, 1, 1),
(21, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 21, 5, 1, 1, 1),
(22, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 22, 5, 1, 1, 1),
(23, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 23, 5, 1, 1, 1),
(24, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 24, 5, 1, 1, 1),
(25, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 25, 5, 1, 1, 1),
(26, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 26, 5, 1, 1, 1),
(27, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 27, 5, 1, 1, 1),
(28, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 28, 5, 1, 1, 1),
(29, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 29, 5, 1, 1, 1),
(30, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 30, 5, 1, 1, 1),
(31, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 31, 5, 1, 1, 1),
(32, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 32, 5, 1, 1, 1),
(33, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 33, 5, 1, 1, 1),
(34, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 34, 5, 1, 1, 1),
(35, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 35, 5, 1, 1, 1),
(36, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 36, 5, 1, 1, 1),
(37, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 37, 5, 1, 1, 1),
(38, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 38, 5, 1, 1, 1),
(39, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 39, 5, 1, 1, 1),
(40, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 40, 5, 1, 1, 1),
(41, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 41, 5, 1, 1, 1),
(42, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 42, 5, 1, 1, 1),
(43, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 43, 5, 1, 1, 1),
(44, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 44, 5, 1, 1, 1),
(45, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 45, 5, 1, 1, 1),
(46, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 46, 5, 1, 1, 1),
(47, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 47, 5, 1, 1, 1),
(48, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 48, 5, 1, 1, 1),
(49, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 49, 5, 1, 1, 1),
(50, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 50, 5, 1, 1, 1),
(51, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 51, 5, 1, 1, 1),
(52, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 52, 5, 1, 1, 1),
(53, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 53, 5, 1, 1, 1),
(54, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 54, 5, 1, 1, 1),
(55, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 55, 5, 1, 1, 1),
(56, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 56, 5, 1, 1, 1),
(57, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 57, 5, 1, 1, 1),
(58, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 58, 5, 1, 1, 1),
(59, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 59, 5, 1, 1, 1),
(60, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 60, 5, 1, 1, 1),
(61, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 61, 5, 1, 1, 1),
(62, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 62, 5, 1, 1, 1),
(63, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 63, 5, 1, 1, 1),
(64, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 64, 5, 1, 1, 1),
(65, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 65, 5, 1, 1, 1),
(66, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 66, 5, 1, 1, 1),
(67, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 67, 5, 1, 1, 1),
(68, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 68, 5, 1, 1, 1),
(69, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 69, 5, 1, 1, 1),
(70, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 70, 5, 1, 1, 1),
(71, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 71, 5, 1, 1, 1),
(72, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 72, 5, 1, 1, 1),
(73, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 73, 5, 1, 1, 1),
(74, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 74, 5, 1, 1, 1),
(75, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 75, 5, 1, 1, 1),
(76, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 76, 5, 1, 1, 1),
(77, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 77, 5, 1, 1, 1),
(78, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 79, 5, 1, 1, 1),
(79, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 80, 5, 1, 1, 1),
(80, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 81, 5, 1, 1, 1),
(81, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 82, 5, 1, 1, 1),
(82, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 83, 5, 1, 1, 1),
(83, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 84, 5, 1, 1, 1),
(84, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 85, 5, 1, 1, 1),
(85, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 86, 5, 1, 1, 1),
(86, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 533, 5, 1, 1, 1),
(87, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 534, 5, 1, 1, 1),
(88, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 535, 5, 1, 1, 1),
(89, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 536, 5, 1, 1, 1),
(90, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 87, 5, 1, 1, 1),
(91, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 88, 5, 1, 1, 1),
(92, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 89, 5, 1, 1, 1),
(93, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 90, 5, 1, 1, 1),
(94, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 91, 5, 1, 1, 1),
(95, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 92, 5, 1, 1, 1),
(96, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 93, 5, 1, 1, 1),
(97, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 94, 5, 1, 1, 1),
(98, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 95, 5, 1, 1, 1),
(99, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 96, 5, 1, 1, 1),
(100, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 97, 5, 1, 1, 1),
(101, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 98, 5, 1, 1, 1),
(102, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 99, 5, 1, 1, 1),
(103, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 100, 5, 1, 1, 1),
(104, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 101, 5, 1, 1, 1),
(105, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 102, 5, 1, 1, 1),
(106, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 103, 5, 1, 1, 1),
(107, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 104, 5, 1, 1, 1),
(108, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 105, 5, 1, 1, 1),
(109, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 106, 5, 1, 1, 1),
(110, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 107, 5, 1, 1, 1),
(111, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 108, 5, 1, 1, 1),
(112, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 109, 5, 1, 1, 1),
(113, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 110, 5, 1, 1, 1),
(114, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 111, 5, 1, 1, 1),
(115, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 112, 5, 1, 1, 1),
(116, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 113, 5, 1, 1, 1),
(117, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 114, 5, 1, 1, 1),
(118, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 115, 5, 1, 1, 1),
(119, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 116, 5, 1, 1, 1),
(120, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 117, 5, 1, 1, 1),
(121, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 118, 5, 1, 1, 1),
(122, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 119, 5, 1, 1, 1),
(123, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 120, 5, 1, 1, 1),
(124, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 121, 5, 1, 1, 1),
(125, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 122, 5, 1, 1, 1),
(126, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 123, 5, 1, 1, 1),
(127, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 124, 5, 1, 1, 1),
(128, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 125, 5, 1, 1, 1),
(129, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 126, 5, 1, 1, 1),
(130, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 127, 5, 1, 1, 1),
(131, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 128, 5, 1, 1, 1),
(132, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 129, 5, 1, 1, 1),
(133, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 130, 5, 1, 1, 1),
(134, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 131, 5, 1, 1, 1),
(135, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 132, 5, 1, 1, 1),
(136, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 133, 5, 1, 1, 1),
(137, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 134, 5, 1, 1, 1),
(138, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 135, 5, 1, 1, 1),
(139, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 136, 5, 1, 1, 1),
(140, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 160, 5, 1, 1, 1),
(141, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 161, 5, 1, 1, 1),
(142, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 162, 5, 1, 1, 1),
(143, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 163, 5, 1, 1, 1),
(144, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 164, 5, 1, 1, 1),
(145, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 165, 5, 1, 1, 1),
(146, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 166, 5, 1, 1, 1),
(147, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 167, 5, 1, 1, 1),
(148, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 168, 5, 1, 1, 1),
(149, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 169, 5, 1, 1, 1),
(150, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 170, 5, 1, 1, 1),
(151, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 171, 5, 1, 1, 1),
(152, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 172, 5, 1, 1, 1),
(153, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 173, 5, 1, 1, 1),
(154, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 174, 5, 1, 1, 1),
(155, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 175, 5, 1, 1, 1),
(156, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 176, 5, 1, 1, 1),
(157, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 177, 5, 1, 1, 1),
(158, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 178, 5, 1, 1, 1),
(159, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 179, 5, 1, 1, 1),
(160, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 180, 5, 1, 1, 1),
(161, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 181, 5, 1, 1, 1),
(162, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 182, 5, 1, 1, 1),
(163, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 183, 5, 1, 1, 1),
(164, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 184, 5, 1, 1, 1),
(165, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 185, 5, 1, 1, 1),
(166, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 186, 5, 1, 1, 1),
(167, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 187, 5, 1, 1, 1),
(168, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 188, 5, 1, 1, 1),
(169, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 189, 5, 1, 1, 1),
(170, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 190, 5, 1, 1, 1),
(171, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 191, 5, 1, 1, 1),
(172, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 192, 5, 1, 1, 1),
(173, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 193, 5, 1, 1, 1),
(174, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 194, 5, 1, 1, 1),
(175, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 195, 5, 1, 1, 1),
(176, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 196, 5, 1, 1, 1),
(177, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 197, 5, 1, 1, 1),
(178, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 198, 5, 1, 1, 1),
(179, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 199, 5, 1, 1, 1),
(180, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 200, 5, 1, 1, 1),
(181, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 201, 5, 1, 1, 1),
(182, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 202, 5, 1, 1, 1),
(183, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 203, 5, 1, 1, 1),
(184, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 204, 5, 1, 1, 1),
(185, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 205, 5, 1, 1, 1),
(186, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 206, 5, 1, 1, 1),
(187, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 207, 5, 1, 1, 1),
(188, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 208, 5, 1, 1, 1),
(189, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 209, 5, 1, 1, 1),
(190, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 210, 5, 1, 1, 1),
(191, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 211, 5, 1, 1, 1),
(192, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 214, 5, 1, 1, 1),
(193, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 215, 5, 1, 1, 1),
(194, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 216, 5, 1, 1, 1),
(195, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 217, 5, 1, 1, 1),
(196, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 218, 5, 1, 1, 1),
(197, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 219, 5, 1, 1, 1),
(198, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 225, 5, 1, 1, 1),
(199, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 226, 5, 1, 1, 1),
(200, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 227, 5, 1, 1, 1),
(201, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 228, 5, 1, 1, 1),
(202, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 229, 5, 1, 1, 1),
(203, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 230, 5, 1, 1, 1),
(204, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 231, 5, 1, 1, 1),
(205, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 232, 5, 1, 1, 1),
(206, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 233, 5, 1, 1, 1),
(207, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 234, 5, 1, 1, 1),
(208, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 235, 5, 1, 1, 1),
(209, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 236, 5, 1, 1, 1),
(210, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 237, 5, 1, 1, 1),
(211, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 238, 5, 1, 1, 1),
(212, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 239, 5, 1, 1, 1),
(213, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 240, 5, 1, 1, 1),
(214, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 241, 5, 1, 1, 1),
(215, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 242, 5, 1, 1, 1),
(216, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 243, 5, 1, 1, 1),
(217, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 244, 5, 1, 1, 1),
(218, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 245, 5, 1, 1, 1),
(219, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 246, 5, 1, 1, 1),
(220, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 247, 5, 1, 1, 1),
(221, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 248, 5, 1, 1, 1),
(222, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 249, 5, 1, 1, 1),
(223, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 250, 5, 1, 1, 1),
(224, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 251, 5, 1, 1, 1),
(225, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 252, 5, 1, 1, 1),
(226, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 253, 5, 1, 1, 1),
(227, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 254, 5, 1, 1, 1),
(228, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 255, 5, 1, 1, 1),
(229, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 256, 5, 1, 1, 1),
(230, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 257, 5, 1, 1, 1),
(231, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 258, 5, 1, 1, 1),
(232, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 259, 5, 1, 1, 1),
(233, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 260, 5, 1, 1, 1),
(234, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 261, 5, 1, 1, 1),
(235, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 262, 5, 1, 1, 1),
(236, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 263, 5, 1, 1, 1),
(237, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 264, 5, 1, 1, 1),
(238, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 265, 5, 1, 1, 1),
(239, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 266, 5, 1, 1, 1),
(240, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 267, 5, 1, 1, 1),
(241, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 268, 5, 1, 1, 1),
(242, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 269, 5, 1, 1, 1),
(243, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 270, 5, 1, 1, 1),
(244, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 271, 5, 1, 1, 1),
(245, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 272, 5, 1, 1, 1),
(246, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 273, 5, 1, 1, 1),
(247, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 274, 5, 1, 1, 1),
(248, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 275, 5, 1, 1, 1),
(249, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 276, 5, 1, 1, 1),
(250, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 537, 5, 1, 1, 1),
(251, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 286, 5, 1, 1, 1),
(252, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 287, 5, 1, 1, 1),
(253, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 288, 5, 1, 1, 1),
(254, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 289, 5, 1, 1, 1),
(255, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 290, 5, 1, 1, 1),
(256, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 291, 5, 1, 1, 1),
(257, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 292, 5, 1, 1, 1),
(258, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 293, 5, 1, 1, 1),
(259, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 294, 5, 1, 1, 1),
(260, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 295, 5, 1, 1, 1),
(261, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 296, 5, 1, 1, 1),
(262, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 297, 5, 1, 1, 1),
(263, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 298, 5, 1, 1, 1),
(264, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 299, 5, 1, 1, 1),
(265, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 300, 5, 1, 1, 1),
(266, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 301, 5, 1, 1, 1),
(267, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 302, 5, 1, 1, 1),
(268, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 303, 5, 1, 1, 1),
(269, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 304, 5, 1, 1, 1),
(270, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 305, 5, 1, 1, 1),
(271, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 306, 5, 1, 1, 1),
(272, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 307, 5, 1, 1, 1),
(273, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 308, 5, 1, 1, 1),
(274, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 309, 5, 1, 1, 1),
(275, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 310, 5, 1, 1, 1),
(276, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 311, 5, 1, 1, 1),
(277, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 312, 5, 1, 1, 1),
(278, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 313, 5, 1, 1, 1),
(279, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 314, 5, 1, 1, 1),
(280, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 315, 5, 1, 1, 1),
(281, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 316, 5, 1, 1, 1),
(282, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 317, 5, 1, 1, 1),
(283, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 318, 5, 1, 1, 1),
(284, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 319, 5, 1, 1, 1),
(285, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 320, 5, 1, 1, 1),
(286, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 321, 5, 1, 1, 1),
(287, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 322, 5, 1, 1, 1),
(288, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 323, 5, 1, 1, 1),
(289, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 324, 5, 1, 1, 1),
(290, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 325, 5, 1, 1, 1),
(291, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 326, 5, 1, 1, 1),
(292, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 327, 5, 1, 1, 1),
(293, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 328, 5, 1, 1, 1),
(294, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 329, 5, 1, 1, 1),
(295, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 330, 5, 1, 1, 1),
(296, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 331, 5, 1, 1, 1),
(297, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 332, 5, 1, 1, 1),
(298, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 333, 5, 1, 1, 1),
(299, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 334, 5, 1, 1, 1),
(300, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 335, 5, 1, 1, 1),
(301, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 336, 5, 1, 1, 1),
(302, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 337, 5, 1, 1, 1),
(303, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 338, 5, 1, 1, 1),
(304, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 339, 5, 1, 1, 1),
(305, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 340, 5, 1, 1, 1),
(306, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 341, 5, 1, 1, 1),
(307, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 342, 5, 1, 1, 1),
(308, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 343, 5, 1, 1, 1),
(309, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 344, 5, 1, 1, 1),
(310, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 345, 5, 1, 1, 1),
(311, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 346, 5, 1, 1, 1),
(312, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 347, 5, 1, 1, 1),
(313, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 348, 5, 1, 1, 1),
(314, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 349, 5, 1, 1, 1),
(315, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 350, 5, 1, 1, 1),
(316, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 351, 5, 1, 1, 1),
(317, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 352, 5, 1, 1, 1),
(318, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 353, 5, 1, 1, 1),
(319, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 354, 5, 1, 1, 1),
(320, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 355, 5, 1, 1, 1),
(321, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 356, 5, 1, 1, 1),
(322, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 357, 5, 1, 1, 1),
(323, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 358, 5, 1, 1, 1),
(324, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 359, 5, 1, 1, 1),
(325, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 360, 5, 1, 1, 1),
(326, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 361, 5, 1, 1, 1),
(327, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 362, 5, 1, 1, 1),
(328, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 363, 5, 1, 1, 1),
(329, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 364, 5, 1, 1, 1),
(330, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 365, 5, 1, 1, 1),
(331, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 366, 5, 1, 1, 1),
(332, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 367, 5, 1, 1, 1),
(333, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 368, 5, 1, 1, 1),
(334, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 369, 5, 1, 1, 1),
(335, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 370, 5, 1, 1, 1),
(336, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 371, 5, 1, 1, 1),
(337, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 372, 5, 1, 1, 1),
(338, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 373, 5, 1, 1, 1),
(339, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 374, 5, 1, 1, 1),
(340, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 375, 5, 1, 1, 1),
(341, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 376, 5, 1, 1, 1),
(342, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 377, 5, 1, 1, 1),
(343, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 378, 5, 1, 1, 1),
(344, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 379, 5, 1, 1, 1),
(345, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 380, 5, 1, 1, 1),
(346, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 381, 5, 1, 1, 1),
(347, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 382, 5, 1, 1, 1),
(348, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 383, 5, 1, 1, 1),
(349, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 384, 5, 1, 1, 1),
(350, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 385, 5, 1, 1, 1),
(351, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 386, 5, 1, 1, 1),
(352, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 387, 5, 1, 1, 1),
(353, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 388, 5, 1, 1, 1),
(354, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 389, 5, 1, 1, 1),
(355, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 390, 5, 1, 1, 1),
(356, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 391, 5, 1, 1, 1),
(357, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 392, 5, 1, 1, 1),
(358, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 393, 5, 1, 1, 1),
(359, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 394, 5, 1, 1, 1),
(360, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 395, 5, 1, 1, 1),
(361, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 396, 5, 1, 1, 1),
(362, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 397, 5, 1, 1, 1),
(363, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 538, 5, 1, 1, 1),
(364, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 539, 5, 1, 1, 1),
(365, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 540, 5, 1, 1, 1),
(366, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 485, 5, 1, 1, 1),
(367, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 486, 5, 1, 1, 1),
(368, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 487, 5, 1, 1, 1),
(369, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 488, 5, 1, 1, 1),
(370, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 489, 5, 1, 1, 1),
(371, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 490, 5, 1, 1, 1),
(372, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 491, 5, 1, 1, 1),
(373, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 1, 4, 1, 1, 1),
(374, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 2, 4, 1, 1, 1),
(375, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 3, 4, 1, 1, 1),
(376, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 4, 4, 1, 1, 1),
(377, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 5, 4, 1, 1, 1),
(378, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 6, 4, 1, 1, 1),
(379, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 7, 4, 1, 1, 1),
(380, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 8, 4, 1, 1, 1),
(381, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 9, 4, 1, 1, 1),
(382, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 10, 4, 1, 1, 1),
(383, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 61, 4, 1, 1, 1),
(384, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 62, 4, 1, 1, 1),
(385, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 63, 4, 1, 1, 1),
(386, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 64, 4, 1, 1, 1),
(387, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 65, 4, 1, 1, 1),
(388, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 66, 4, 1, 1, 1),
(389, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 67, 4, 1, 1, 1),
(390, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 68, 4, 1, 1, 1),
(391, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 69, 4, 1, 1, 1),
(392, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 70, 4, 1, 1, 1),
(393, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 71, 4, 1, 1, 1),
(394, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 72, 4, 1, 1, 1),
(395, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 73, 4, 1, 1, 1),
(396, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 74, 4, 1, 1, 1),
(397, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 75, 4, 1, 1, 1),
(398, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 76, 4, 1, 1, 1),
(399, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 77, 4, 1, 1, 1),
(400, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 79, 4, 1, 1, 1),
(401, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 80, 4, 1, 1, 1),
(402, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 81, 4, 1, 1, 1),
(403, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 82, 4, 1, 1, 1),
(404, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 83, 4, 1, 1, 1),
(405, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 84, 4, 1, 1, 1),
(406, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 85, 4, 1, 1, 1),
(407, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 86, 4, 1, 1, 1),
(408, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 533, 4, 1, 1, 1),
(409, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 534, 4, 1, 1, 1),
(410, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 535, 4, 1, 1, 1),
(411, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 536, 4, 1, 1, 1),
(412, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 87, 4, 1, 1, 1),
(413, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 88, 4, 1, 1, 1),
(414, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 89, 4, 1, 1, 1),
(415, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 90, 4, 1, 1, 1),
(416, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 91, 4, 1, 1, 1),
(417, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 92, 4, 1, 1, 1),
(418, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 93, 4, 1, 1, 1),
(419, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 94, 4, 1, 1, 1),
(420, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 95, 4, 1, 1, 1),
(421, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 96, 4, 1, 1, 1),
(422, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 97, 4, 1, 1, 1),
(423, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 98, 4, 1, 1, 1),
(424, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 99, 4, 1, 1, 1),
(425, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 100, 4, 1, 1, 1),
(426, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 101, 4, 1, 1, 1),
(427, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 102, 4, 1, 1, 1),
(428, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 103, 4, 1, 1, 1),
(429, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 104, 4, 1, 1, 1),
(430, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 105, 4, 1, 1, 1),
(431, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 106, 4, 1, 1, 1),
(432, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 107, 4, 1, 1, 1),
(433, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 160, 4, 1, 1, 1),
(434, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 161, 4, 1, 1, 1),
(435, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 162, 4, 1, 1, 1),
(436, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 163, 4, 1, 1, 1),
(437, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 164, 4, 1, 1, 1),
(438, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 165, 4, 1, 1, 1),
(439, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 166, 4, 1, 1, 1),
(440, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 167, 4, 1, 1, 1),
(441, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 168, 4, 1, 1, 1),
(442, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 169, 4, 1, 1, 1),
(443, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 170, 4, 1, 1, 1),
(444, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 171, 4, 1, 1, 1),
(445, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 172, 4, 1, 1, 1),
(446, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 173, 4, 1, 1, 1),
(447, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 174, 4, 1, 1, 1),
(448, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 175, 4, 1, 1, 1),
(449, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 176, 4, 1, 1, 1),
(450, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 177, 4, 1, 1, 1),
(451, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 178, 4, 1, 1, 1),
(452, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 179, 4, 1, 1, 1),
(453, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 180, 4, 1, 1, 1),
(454, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 181, 4, 1, 1, 1),
(455, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 182, 4, 1, 1, 1),
(456, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 183, 4, 1, 1, 1),
(457, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 184, 4, 1, 1, 1),
(458, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 185, 4, 1, 1, 1),
(459, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 186, 4, 1, 1, 1),
(460, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 187, 4, 1, 1, 1),
(461, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 188, 4, 1, 1, 1),
(462, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 189, 4, 1, 1, 1),
(463, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 190, 4, 1, 1, 1),
(464, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 191, 4, 1, 1, 1),
(465, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 192, 4, 1, 1, 1),
(466, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 193, 4, 1, 1, 1),
(467, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 194, 4, 1, 1, 1),
(468, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 195, 4, 1, 1, 1),
(469, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 196, 4, 1, 1, 1),
(470, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 197, 4, 1, 1, 1),
(471, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 198, 4, 1, 1, 1),
(472, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 199, 4, 1, 1, 1),
(473, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 200, 4, 1, 1, 1),
(474, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 201, 4, 1, 1, 1),
(475, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 202, 4, 1, 1, 1),
(476, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 203, 4, 1, 1, 1),
(477, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 204, 4, 1, 1, 1),
(478, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 205, 4, 1, 1, 1),
(479, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 206, 4, 1, 1, 1),
(480, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 207, 4, 1, 1, 1),
(481, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 208, 4, 1, 1, 1),
(482, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 209, 4, 1, 1, 1),
(483, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 210, 4, 1, 1, 1),
(484, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 211, 4, 1, 1, 1),
(485, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 214, 4, 1, 1, 1),
(486, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 215, 4, 1, 1, 1),
(487, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 216, 4, 1, 1, 1),
(488, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 217, 4, 1, 1, 1),
(489, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 218, 4, 1, 1, 1),
(490, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 219, 4, 1, 1, 1),
(491, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 225, 4, 1, 1, 1),
(492, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 226, 4, 1, 1, 1),
(493, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 227, 4, 1, 1, 1),
(494, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 228, 4, 1, 1, 1),
(495, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 229, 4, 1, 1, 1),
(496, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 230, 4, 1, 1, 1),
(497, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 231, 4, 1, 1, 1),
(498, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 232, 4, 1, 1, 1),
(499, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 233, 4, 1, 1, 1),
(500, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 234, 4, 1, 1, 1),
(501, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 235, 4, 1, 1, 1),
(502, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 236, 4, 1, 1, 1),
(503, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 237, 4, 1, 1, 1),
(504, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 238, 4, 1, 1, 1),
(505, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 239, 4, 1, 1, 1),
(506, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 240, 4, 1, 1, 1),
(507, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 241, 4, 1, 1, 1),
(508, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 242, 4, 1, 1, 1),
(509, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 243, 4, 1, 1, 1),
(510, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 244, 4, 1, 1, 1),
(511, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 245, 4, 1, 1, 1),
(512, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 246, 4, 1, 1, 1),
(513, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 247, 4, 1, 1, 1),
(514, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 248, 4, 1, 1, 1),
(515, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 249, 4, 1, 1, 1),
(516, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 250, 4, 1, 1, 1),
(517, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 251, 4, 1, 1, 1),
(518, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 252, 4, 1, 1, 1),
(519, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 253, 4, 1, 1, 1),
(520, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 254, 4, 1, 1, 1),
(521, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 255, 4, 1, 1, 1),
(522, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 256, 4, 1, 1, 1),
(523, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 257, 4, 1, 1, 1),
(524, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 258, 4, 1, 1, 1),
(525, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 259, 4, 1, 1, 1),
(526, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 260, 4, 1, 1, 1),
(527, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 261, 4, 1, 1, 1),
(528, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 262, 4, 1, 1, 1),
(529, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 263, 4, 1, 1, 1),
(530, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 264, 4, 1, 1, 1),
(531, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 265, 4, 1, 1, 1),
(532, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 266, 4, 1, 1, 1),
(533, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 267, 4, 1, 1, 1),
(534, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 268, 4, 1, 1, 1),
(535, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 269, 4, 1, 1, 1),
(536, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 270, 4, 1, 1, 1),
(537, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 271, 4, 1, 1, 1),
(538, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 272, 4, 1, 1, 1),
(539, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 273, 4, 1, 1, 1),
(540, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 274, 4, 1, 1, 1),
(541, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 275, 4, 1, 1, 1),
(542, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 276, 4, 1, 1, 1),
(543, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 537, 4, 1, 1, 1),
(544, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 286, 4, 1, 1, 1),
(545, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 287, 4, 1, 1, 1),
(546, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 288, 4, 1, 1, 1),
(547, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 289, 4, 1, 1, 1),
(548, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 290, 4, 1, 1, 1),
(549, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 291, 4, 1, 1, 1),
(550, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 292, 4, 1, 1, 1),
(551, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 293, 4, 1, 1, 1),
(552, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 294, 4, 1, 1, 1),
(553, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 295, 4, 1, 1, 1),
(554, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 296, 4, 1, 1, 1),
(555, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 297, 4, 1, 1, 1),
(556, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 298, 4, 1, 1, 1),
(557, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 299, 4, 1, 1, 1),
(558, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 300, 4, 1, 1, 1),
(559, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 301, 4, 1, 1, 1),
(560, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 302, 4, 1, 1, 1),
(561, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 303, 4, 1, 1, 1),
(562, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 304, 4, 1, 1, 1),
(563, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 305, 4, 1, 1, 1),
(564, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 306, 4, 1, 1, 1),
(565, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 307, 4, 1, 1, 1),
(566, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 308, 4, 1, 1, 1),
(567, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 309, 4, 1, 1, 1),
(568, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 310, 4, 1, 1, 1),
(569, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 311, 4, 1, 1, 1),
(570, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 312, 4, 1, 1, 1),
(571, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 313, 4, 1, 1, 1),
(572, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 314, 4, 1, 1, 1),
(573, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 348, 4, 1, 1, 1),
(574, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 349, 4, 1, 1, 1),
(575, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 350, 4, 1, 1, 1),
(576, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 351, 4, 1, 1, 1),
(577, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 352, 4, 1, 1, 1),
(578, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 353, 4, 1, 1, 1),
(579, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 354, 4, 1, 1, 1),
(580, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 355, 4, 1, 1, 1),
(581, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 356, 4, 1, 1, 1),
(582, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 357, 4, 1, 1, 1),
(583, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 358, 4, 1, 1, 1),
(584, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 359, 4, 1, 1, 1),
(585, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 360, 4, 1, 1, 1),
(586, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 361, 4, 1, 1, 1),
(587, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 362, 4, 1, 1, 1),
(588, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 363, 4, 1, 1, 1),
(589, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 364, 4, 1, 1, 1),
(590, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 365, 4, 1, 1, 1),
(591, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 366, 4, 1, 1, 1),
(592, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 367, 4, 1, 1, 1),
(593, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 368, 4, 1, 1, 1),
(594, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 369, 4, 1, 1, 1),
(595, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 370, 4, 1, 1, 1),
(596, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 371, 4, 1, 1, 1),
(597, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 372, 4, 1, 1, 1),
(598, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 373, 4, 1, 1, 1),
(599, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 374, 4, 1, 1, 1),
(600, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 375, 4, 1, 1, 1),
(601, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 277, 4, 1, 1, 1),
(602, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 278, 4, 1, 1, 1),
(603, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 279, 4, 1, 1, 1),
(604, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 280, 4, 1, 1, 1),
(605, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 281, 4, 1, 1, 1),
(606, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 282, 4, 1, 1, 1),
(607, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 283, 4, 1, 1, 1),
(608, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 284, 4, 1, 1, 1),
(609, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 285, 4, 1, 1, 1),
(610, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 1, 7, 1, 1, 1),
(611, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 2, 7, 1, 1, 1),
(612, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 3, 7, 1, 1, 1),
(613, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 4, 7, 1, 1, 1),
(614, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 5, 7, 1, 1, 1),
(615, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 6, 7, 1, 1, 1),
(616, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 7, 7, 1, 1, 1),
(617, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 8, 7, 1, 1, 1),
(618, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 9, 7, 1, 1, 1),
(619, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 10, 7, 1, 1, 1),
(620, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 11, 7, 1, 1, 1),
(621, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 12, 7, 1, 1, 1),
(622, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 13, 7, 1, 1, 1),
(623, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 14, 7, 1, 1, 1),
(624, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 15, 7, 1, 1, 1),
(625, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 16, 7, 1, 1, 1),
(626, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 17, 7, 1, 1, 1),
(627, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 18, 7, 1, 1, 1),
(628, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 19, 7, 1, 1, 1),
(629, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 20, 7, 1, 1, 1),
(630, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 21, 7, 1, 1, 1),
(631, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 22, 7, 1, 1, 1),
(632, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 23, 7, 1, 1, 1),
(633, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 24, 7, 1, 1, 1),
(634, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 25, 7, 1, 1, 1),
(635, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 26, 7, 1, 1, 1),
(636, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 27, 7, 1, 1, 1),
(637, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 28, 7, 1, 1, 1),
(638, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 29, 7, 1, 1, 1),
(639, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 30, 7, 1, 1, 1),
(640, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 31, 7, 1, 1, 1),
(641, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 32, 7, 1, 1, 1),
(642, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 33, 7, 1, 1, 1),
(643, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 34, 7, 1, 1, 1),
(644, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 35, 7, 1, 1, 1),
(645, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 36, 7, 1, 1, 1),
(646, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 37, 7, 1, 1, 1),
(647, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 38, 7, 1, 1, 1),
(648, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 39, 7, 1, 1, 1),
(649, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 40, 7, 1, 1, 1),
(650, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 41, 7, 1, 1, 1),
(651, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 42, 7, 1, 1, 1),
(652, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 43, 7, 1, 1, 1),
(653, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 44, 7, 1, 1, 1),
(654, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 45, 7, 1, 1, 1),
(655, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 46, 7, 1, 1, 1),
(656, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 47, 7, 1, 1, 1),
(657, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 48, 7, 1, 1, 1),
(658, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 49, 7, 1, 1, 1),
(659, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 50, 7, 1, 1, 1),
(660, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 51, 7, 1, 1, 1),
(661, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 52, 7, 1, 1, 1),
(662, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 53, 7, 1, 1, 1),
(663, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 54, 7, 1, 1, 1),
(664, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 55, 7, 1, 1, 1),
(665, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 56, 7, 1, 1, 1),
(666, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 57, 7, 1, 1, 1),
(667, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 58, 7, 1, 1, 1),
(668, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 59, 7, 1, 1, 1),
(669, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 60, 7, 1, 1, 1),
(670, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 61, 7, 1, 1, 1),
(671, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 64, 7, 1, 1, 1),
(672, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 65, 7, 1, 1, 1),
(673, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 66, 7, 1, 1, 1),
(674, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 67, 7, 1, 1, 1),
(675, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 83, 7, 1, 1, 1),
(676, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 84, 7, 1, 1, 1),
(677, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 85, 7, 1, 1, 1),
(678, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 86, 7, 1, 1, 1),
(679, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 160, 7, 1, 1, 1),
(680, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 161, 7, 1, 1, 1),
(681, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 162, 7, 1, 1, 1),
(682, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 163, 7, 1, 1, 1),
(683, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 164, 7, 1, 1, 1),
(684, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 188, 7, 1, 1, 1),
(685, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 193, 7, 1, 1, 1),
(686, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 194, 7, 1, 1, 1),
(687, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 195, 7, 1, 1, 1),
(688, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 376, 7, 1, 1, 1),
(689, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 377, 7, 1, 1, 1),
(690, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 378, 7, 1, 1, 1),
(691, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 379, 7, 1, 1, 1),
(692, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 380, 7, 1, 1, 1),
(693, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 1, 8, 1, 1, 1),
(694, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 2, 8, 1, 1, 1),
(695, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 3, 8, 1, 1, 1),
(696, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 4, 8, 1, 1, 1),
(697, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 5, 8, 1, 1, 1),
(698, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 6, 8, 1, 1, 1),
(699, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 7, 8, 1, 1, 1),
(700, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 8, 8, 1, 1, 1),
(701, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 9, 8, 1, 1, 1),
(702, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 10, 8, 1, 1, 1),
(703, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 61, 8, 1, 1, 1),
(704, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 64, 8, 1, 1, 1),
(705, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 65, 8, 1, 1, 1),
(706, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 66, 8, 1, 1, 1),
(707, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 67, 8, 1, 1, 1);
INSERT INTO `infix_permission_assigns` (`id`, `active_status`, `created_at`, `updated_at`, `module_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(708, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 83, 8, 1, 1, 1),
(709, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 84, 8, 1, 1, 1),
(710, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 85, 8, 1, 1, 1),
(711, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 86, 8, 1, 1, 1),
(712, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 160, 8, 1, 1, 1),
(713, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 161, 8, 1, 1, 1),
(714, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 162, 8, 1, 1, 1),
(715, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 163, 8, 1, 1, 1),
(716, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 164, 8, 1, 1, 1),
(717, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 188, 8, 1, 1, 1),
(718, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 193, 8, 1, 1, 1),
(719, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 194, 8, 1, 1, 1),
(720, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 195, 8, 1, 1, 1),
(721, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 298, 8, 1, 1, 1),
(722, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 299, 8, 1, 1, 1),
(723, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 300, 8, 1, 1, 1),
(724, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 301, 8, 1, 1, 1),
(725, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 302, 8, 1, 1, 1),
(726, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 303, 8, 1, 1, 1),
(727, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 304, 8, 1, 1, 1),
(728, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 305, 8, 1, 1, 1),
(729, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 306, 8, 1, 1, 1),
(730, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 307, 8, 1, 1, 1),
(731, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 308, 8, 1, 1, 1),
(732, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 309, 8, 1, 1, 1),
(733, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 310, 8, 1, 1, 1),
(734, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 311, 8, 1, 1, 1),
(735, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 312, 8, 1, 1, 1),
(736, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 313, 8, 1, 1, 1),
(737, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 314, 8, 1, 1, 1),
(738, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 376, 8, 1, 1, 1),
(739, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 377, 8, 1, 1, 1),
(740, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 378, 8, 1, 1, 1),
(741, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 379, 8, 1, 1, 1),
(742, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 380, 8, 1, 1, 1),
(743, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 1, 9, 1, 1, 1),
(744, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 2, 9, 1, 1, 1),
(745, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 3, 9, 1, 1, 1),
(746, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 4, 9, 1, 1, 1),
(747, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 5, 9, 1, 1, 1),
(748, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 6, 9, 1, 1, 1),
(749, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 7, 9, 1, 1, 1),
(750, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 8, 9, 1, 1, 1),
(751, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 9, 9, 1, 1, 1),
(752, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 10, 9, 1, 1, 1),
(753, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 188, 9, 1, 1, 1),
(754, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 193, 9, 1, 1, 1),
(755, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 194, 9, 1, 1, 1),
(756, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 19, 9, 1, 1, 1),
(757, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 1, 6, 1, 1, 1),
(758, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 2, 6, 1, 1, 1),
(759, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 3, 6, 1, 1, 1),
(760, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 4, 6, 1, 1, 1),
(761, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 5, 6, 1, 1, 1),
(762, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 6, 6, 1, 1, 1),
(763, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 7, 6, 1, 1, 1),
(764, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 8, 6, 1, 1, 1),
(765, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 9, 6, 1, 1, 1),
(766, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 10, 6, 1, 1, 1),
(767, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 11, 6, 1, 1, 1),
(768, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 12, 6, 1, 1, 1),
(769, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 13, 6, 1, 1, 1),
(770, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 14, 6, 1, 1, 1),
(771, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 15, 6, 1, 1, 1),
(772, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 16, 6, 1, 1, 1),
(773, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 17, 6, 1, 1, 1),
(774, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 18, 6, 1, 1, 1),
(775, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 19, 6, 1, 1, 1),
(776, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 20, 6, 1, 1, 1),
(777, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 21, 6, 1, 1, 1),
(778, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 22, 6, 1, 1, 1),
(779, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 23, 6, 1, 1, 1),
(780, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 24, 6, 1, 1, 1),
(781, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 25, 6, 1, 1, 1),
(782, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 26, 6, 1, 1, 1),
(783, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 27, 6, 1, 1, 1),
(784, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 28, 6, 1, 1, 1),
(785, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 29, 6, 1, 1, 1),
(786, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 30, 6, 1, 1, 1),
(787, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 31, 6, 1, 1, 1),
(788, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 32, 6, 1, 1, 1),
(789, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 33, 6, 1, 1, 1),
(790, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 34, 6, 1, 1, 1),
(791, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 35, 6, 1, 1, 1),
(792, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 36, 6, 1, 1, 1),
(793, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 37, 6, 1, 1, 1),
(794, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 38, 6, 1, 1, 1),
(795, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 39, 6, 1, 1, 1),
(796, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 40, 6, 1, 1, 1),
(797, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 41, 6, 1, 1, 1),
(798, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 42, 6, 1, 1, 1),
(799, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 43, 6, 1, 1, 1),
(800, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 44, 6, 1, 1, 1),
(801, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 45, 6, 1, 1, 1),
(802, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 46, 6, 1, 1, 1),
(803, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 47, 6, 1, 1, 1),
(804, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 48, 6, 1, 1, 1),
(805, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 49, 6, 1, 1, 1),
(806, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 50, 6, 1, 1, 1),
(807, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 51, 6, 1, 1, 1),
(808, 1, '2020-05-17 05:35:26', '2020-05-17 05:35:26', 52, 6, 1, 1, 1),
(809, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 53, 6, 1, 1, 1),
(810, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 54, 6, 1, 1, 1),
(811, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 55, 6, 1, 1, 1),
(812, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 56, 6, 1, 1, 1),
(813, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 57, 6, 1, 1, 1),
(814, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 58, 6, 1, 1, 1),
(815, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 59, 6, 1, 1, 1),
(816, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 60, 6, 1, 1, 1),
(817, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 61, 6, 1, 1, 1),
(818, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 64, 6, 1, 1, 1),
(819, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 65, 6, 1, 1, 1),
(820, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 66, 6, 1, 1, 1),
(821, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 67, 6, 1, 1, 1),
(822, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 68, 6, 1, 1, 1),
(823, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 69, 6, 1, 1, 1),
(824, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 70, 6, 1, 1, 1),
(825, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 83, 6, 1, 1, 1),
(826, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 84, 6, 1, 1, 1),
(827, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 85, 6, 1, 1, 1),
(828, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 86, 6, 1, 1, 1),
(829, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 108, 6, 1, 1, 1),
(830, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 109, 6, 1, 1, 1),
(831, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 110, 6, 1, 1, 1),
(832, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 111, 6, 1, 1, 1),
(833, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 112, 6, 1, 1, 1),
(834, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 113, 6, 1, 1, 1),
(835, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 114, 6, 1, 1, 1),
(836, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 115, 6, 1, 1, 1),
(837, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 116, 6, 1, 1, 1),
(838, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 117, 6, 1, 1, 1),
(839, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 118, 6, 1, 1, 1),
(840, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 119, 6, 1, 1, 1),
(841, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 120, 6, 1, 1, 1),
(842, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 121, 6, 1, 1, 1),
(843, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 122, 6, 1, 1, 1),
(844, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 123, 6, 1, 1, 1),
(845, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 124, 6, 1, 1, 1),
(846, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 125, 6, 1, 1, 1),
(847, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 126, 6, 1, 1, 1),
(848, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 127, 6, 1, 1, 1),
(849, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 128, 6, 1, 1, 1),
(850, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 129, 6, 1, 1, 1),
(851, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 130, 6, 1, 1, 1),
(852, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 131, 6, 1, 1, 1),
(853, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 132, 6, 1, 1, 1),
(854, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 133, 6, 1, 1, 1),
(855, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 134, 6, 1, 1, 1),
(856, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 135, 6, 1, 1, 1),
(857, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 136, 6, 1, 1, 1),
(858, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 160, 6, 1, 1, 1),
(859, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 161, 6, 1, 1, 1),
(860, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 162, 6, 1, 1, 1),
(861, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 163, 6, 1, 1, 1),
(862, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 164, 6, 1, 1, 1),
(863, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 165, 6, 1, 1, 1),
(864, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 166, 6, 1, 1, 1),
(865, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 167, 6, 1, 1, 1),
(866, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 168, 6, 1, 1, 1),
(867, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 169, 6, 1, 1, 1),
(868, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 170, 6, 1, 1, 1),
(869, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 171, 6, 1, 1, 1),
(870, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 172, 6, 1, 1, 1),
(871, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 173, 6, 1, 1, 1),
(872, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 174, 6, 1, 1, 1),
(873, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 175, 6, 1, 1, 1),
(874, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 176, 6, 1, 1, 1),
(875, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 177, 6, 1, 1, 1),
(876, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 178, 6, 1, 1, 1),
(877, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 179, 6, 1, 1, 1),
(878, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 188, 6, 1, 1, 1),
(879, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 193, 6, 1, 1, 1),
(880, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 194, 6, 1, 1, 1),
(881, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 195, 6, 1, 1, 1),
(882, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 376, 6, 1, 1, 1),
(883, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 377, 6, 1, 1, 1),
(884, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 378, 6, 1, 1, 1),
(885, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 379, 6, 1, 1, 1),
(886, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 380, 6, 1, 1, 1),
(887, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 381, 6, 1, 1, 1),
(888, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 382, 6, 1, 1, 1),
(889, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 383, 6, 1, 1, 1),
(890, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 1, 2, 1, 1, 1),
(891, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 2, 2, 1, 1, 1),
(892, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 3, 2, 1, 1, 1),
(893, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 4, 2, 1, 1, 1),
(894, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 5, 2, 1, 1, 1),
(895, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 6, 2, 1, 1, 1),
(896, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 7, 2, 1, 1, 1),
(897, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 8, 2, 1, 1, 1),
(898, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 9, 2, 1, 1, 1),
(899, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 10, 2, 1, 1, 1),
(900, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 11, 2, 1, 1, 1),
(901, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 12, 2, 1, 1, 1),
(902, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 13, 2, 1, 1, 1),
(903, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 14, 2, 1, 1, 1),
(904, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 15, 2, 1, 1, 1),
(905, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 16, 2, 1, 1, 1),
(906, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 17, 2, 1, 1, 1),
(907, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 18, 2, 1, 1, 1),
(908, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 19, 2, 1, 1, 1),
(909, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 20, 2, 1, 1, 1),
(910, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 21, 2, 1, 1, 1),
(911, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 22, 2, 1, 1, 1),
(912, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 23, 2, 1, 1, 1),
(913, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 24, 2, 1, 1, 1),
(914, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 25, 2, 1, 1, 1),
(915, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 26, 2, 1, 1, 1),
(916, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 27, 2, 1, 1, 1),
(917, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 28, 2, 1, 1, 1),
(918, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 29, 2, 1, 1, 1),
(919, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 30, 2, 1, 1, 1),
(920, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 31, 2, 1, 1, 1),
(921, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 32, 2, 1, 1, 1),
(922, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 33, 2, 1, 1, 1),
(923, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 34, 2, 1, 1, 1),
(924, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 35, 2, 1, 1, 1),
(925, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 36, 2, 1, 1, 1),
(926, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 37, 2, 1, 1, 1),
(927, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 38, 2, 1, 1, 1),
(928, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 39, 2, 1, 1, 1),
(929, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 40, 2, 1, 1, 1),
(930, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 41, 2, 1, 1, 1),
(931, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 42, 2, 1, 1, 1),
(932, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 43, 2, 1, 1, 1),
(933, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 44, 2, 1, 1, 1),
(934, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 45, 2, 1, 1, 1),
(935, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 46, 2, 1, 1, 1),
(936, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 47, 2, 1, 1, 1),
(937, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 48, 2, 1, 1, 1),
(938, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 49, 2, 1, 1, 1),
(939, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 50, 2, 1, 1, 1),
(940, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 51, 2, 1, 1, 1),
(941, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 52, 2, 1, 1, 1),
(942, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 53, 2, 1, 1, 1),
(943, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 54, 2, 1, 1, 1),
(944, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 55, 2, 1, 1, 1),
(945, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 56, 3, 1, 1, 1),
(946, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 57, 3, 1, 1, 1),
(947, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 58, 3, 1, 1, 1),
(948, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 59, 3, 1, 1, 1),
(949, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 60, 3, 1, 1, 1),
(950, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 61, 3, 1, 1, 1),
(951, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 62, 3, 1, 1, 1),
(952, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 63, 3, 1, 1, 1),
(953, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 64, 3, 1, 1, 1),
(954, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 65, 3, 1, 1, 1),
(955, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 66, 3, 1, 1, 1),
(956, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 67, 3, 1, 1, 1),
(957, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 68, 3, 1, 1, 1),
(958, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 69, 3, 1, 1, 1),
(959, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 70, 3, 1, 1, 1),
(960, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 71, 3, 1, 1, 1),
(961, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 72, 3, 1, 1, 1),
(962, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 73, 3, 1, 1, 1),
(963, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 74, 3, 1, 1, 1),
(964, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 75, 3, 1, 1, 1),
(965, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 76, 3, 1, 1, 1),
(966, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 77, 3, 1, 1, 1),
(967, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 78, 3, 1, 1, 1),
(968, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 79, 3, 1, 1, 1),
(969, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 80, 3, 1, 1, 1),
(970, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 81, 3, 1, 1, 1),
(971, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 82, 3, 1, 1, 1),
(972, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 83, 3, 1, 1, 1),
(973, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 84, 3, 1, 1, 1),
(974, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 85, 3, 1, 1, 1),
(975, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 86, 3, 1, 1, 1),
(976, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 87, 3, 1, 1, 1),
(977, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 88, 3, 1, 1, 1),
(978, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 89, 3, 1, 1, 1),
(979, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 90, 3, 1, 1, 1),
(980, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 91, 3, 1, 1, 1),
(981, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 92, 3, 1, 1, 1),
(982, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 93, 3, 1, 1, 1),
(983, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 94, 3, 1, 1, 1),
(984, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 95, 3, 1, 1, 1),
(985, 1, '2020-05-17 05:35:27', '2020-05-17 05:35:27', 96, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `infix_roles`
--

CREATE TABLE `infix_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'System',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `infix_roles`
--

INSERT INTO `infix_roles` (`id`, `name`, `type`, `active_status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Super admin', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(2, 'Student', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(3, 'Parents', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(4, 'Teacher', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(5, 'Admin', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(6, 'Accountant', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(7, 'Receptionist', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(8, 'Librarian', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(9, 'Driver', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `native`, `rtl`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'af', 'Afrikaans', 'Afrikaans', 0, NULL, NULL, 1),
(2, 'am', 'Amharic', 'አማርኛ', 0, NULL, NULL, 1),
(3, 'ar', 'Arabic', 'العربية', 1, NULL, NULL, 1),
(4, 'ay', 'Aymara', 'Aymar', 0, NULL, NULL, 1),
(5, 'az', 'Azerbaijani', 'Azərbaycanca / آذربايجان', 0, NULL, NULL, 1),
(6, 'be', 'Belarusian', 'Беларуская', 0, NULL, NULL, 1),
(7, 'bg', 'Bulgarian', 'Български', 0, NULL, NULL, 1),
(8, 'bi', 'Bislama', 'Bislama', 0, NULL, NULL, 1),
(9, 'bn', 'Bengali', 'বাংলা', 0, NULL, NULL, 1),
(10, 'bs', 'Bosnian', 'Bosanski', 0, NULL, NULL, 1),
(11, 'ca', 'Catalan', 'Català', 0, NULL, NULL, 1),
(12, 'ch', 'Chamorro', 'Chamoru', 0, NULL, NULL, 1),
(13, 'cs', 'Czech', 'Česky', 0, NULL, NULL, 1),
(14, 'da', 'Danish', 'Dansk', 0, NULL, NULL, 1),
(15, 'de', 'German', 'Deutsch', 0, NULL, NULL, 1),
(16, 'dv', 'Divehi', 'ދިވެހިބަސް', 1, NULL, NULL, 1),
(17, 'dz', 'Dzongkha', 'ཇོང་ཁ', 0, NULL, NULL, 1),
(18, 'el', 'Greek', 'Ελληνικά', 0, NULL, NULL, 1),
(19, 'en', 'English', 'English', 0, NULL, NULL, 1),
(20, 'es', 'Spanish', 'Español', 0, NULL, NULL, 1),
(21, 'et', 'Estonian', 'Eesti', 0, NULL, NULL, 1),
(22, 'eu', 'Basque', 'Euskara', 0, NULL, NULL, 1),
(23, 'fa', 'Persian', 'فارسی', 1, NULL, NULL, 1),
(24, 'ff', 'Peul', 'Fulfulde', 0, NULL, NULL, 1),
(25, 'fi', 'Finnish', 'Suomi', 0, NULL, NULL, 1),
(26, 'fj', 'Fijian', 'Na Vosa Vakaviti', 0, NULL, NULL, 1),
(27, 'fo', 'Faroese', 'Føroyskt', 0, NULL, NULL, 1),
(28, 'fr', 'French', 'Français', 0, NULL, NULL, 1),
(29, 'ga', 'Irish', 'Gaeilge', 0, NULL, NULL, 1),
(30, 'gl', 'Galician', 'Galego', 0, NULL, NULL, 1),
(31, 'gn', 'Guarani', 'Avañe\'ẽ', 0, NULL, NULL, 1),
(32, 'gv', 'Manx', 'Gaelg', 0, NULL, NULL, 1),
(33, 'he', 'Hebrew', 'עברית', 1, NULL, NULL, 1),
(34, 'hi', 'Hindi', 'हिन्दी', 0, NULL, NULL, 1),
(35, 'hr', 'Croatian', 'Hrvatski', 0, NULL, NULL, 1),
(36, 'ht', 'Haitian', 'Krèyol ayisyen', 0, NULL, NULL, 1),
(37, 'hu', 'Hungarian', 'Magyar', 0, NULL, NULL, 1),
(38, 'hy', 'Armenian', 'Հայերեն', 0, NULL, NULL, 1),
(39, 'indo', 'Indonesian', 'Bahasa Indonesia', 0, NULL, NULL, 1),
(40, 'is', 'Icelandic', 'Íslenska', 0, NULL, NULL, 1),
(41, 'it', 'Italian', 'Italiano', 0, NULL, NULL, 1),
(42, 'ja', 'Japanese', '日本語', 0, NULL, NULL, 1),
(43, 'ka', 'Georgian', 'ქართული', 0, NULL, NULL, 1),
(44, 'kg', 'Kongo', 'KiKongo', 0, NULL, NULL, 1),
(45, 'kk', 'Kazakh', 'Қазақша', 0, NULL, NULL, 1),
(46, 'kl', 'Greenlandic', 'Kalaallisut', 0, NULL, NULL, 1),
(47, 'km', 'Cambodian', 'ភាសាខ្មែរ', 0, NULL, NULL, 1),
(48, 'ko', 'Korean', '한국어', 0, NULL, NULL, 1),
(49, 'ku', 'Kurdish', 'Kurdî / كوردی', 1, NULL, NULL, 1),
(50, 'ky', 'Kirghiz', 'Kırgızca / Кыргызча', 0, NULL, NULL, 1),
(51, 'la', 'Latin', 'Latina', 0, NULL, NULL, 1),
(52, 'lb', 'Luxembourgish', 'Lëtzebuergesch', 0, NULL, NULL, 1),
(53, 'ln', 'Lingala', 'Lingála', 0, NULL, NULL, 1),
(54, 'lo', 'Laotian', 'ລາວ / Pha xa lao', 0, NULL, NULL, 1),
(55, 'lt', 'Lithuanian', 'Lietuvių', 0, NULL, NULL, 1),
(56, 'lu', '', '', 0, NULL, NULL, 1),
(57, 'lv', 'Latvian', 'Latviešu', 0, NULL, NULL, 1),
(58, 'mg', 'Malagasy', 'Malagasy', 0, NULL, NULL, 1),
(59, 'mh', 'Marshallese', 'Kajin Majel / Ebon', 0, NULL, NULL, 1),
(60, 'mi', 'Maori', 'Māori', 0, NULL, NULL, 1),
(61, 'mk', 'Macedonian', 'Македонски', 0, NULL, NULL, 1),
(62, 'mn', 'Mongolian', 'Монгол', 0, NULL, NULL, 1),
(63, 'ms', 'Malay', 'Bahasa Melayu', 0, NULL, NULL, 1),
(64, 'mt', 'Maltese', 'bil-Malti', 0, NULL, NULL, 1),
(65, 'my', 'Burmese', 'မြန်မာစာ', 0, NULL, NULL, 1),
(66, 'na', 'Nauruan', 'Dorerin Naoero', 0, NULL, NULL, 1),
(67, 'nb', '', '', 0, NULL, NULL, 1),
(68, 'nd', 'North Ndebele', 'Sindebele', 0, NULL, NULL, 1),
(69, 'ne', 'Nepali', 'नेपाली', 0, NULL, NULL, 1),
(70, 'nl', 'Dutch', 'Nederlands', 0, NULL, NULL, 1),
(71, 'nn', 'Norwegian Nynorsk', 'Norsk (nynorsk)', 0, NULL, NULL, 1),
(72, 'no', 'Norwegian', 'Norsk (bokmål / riksmål)', 0, NULL, NULL, 1),
(73, 'nr', 'South Ndebele', 'isiNdebele', 0, NULL, NULL, 1),
(74, 'ny', 'Chichewa', 'Chi-Chewa', 0, NULL, NULL, 1),
(75, 'oc', 'Occitan', 'Occitan', 0, NULL, NULL, 1),
(76, 'pa', 'Panjabi / Punjabi', 'ਪੰਜਾਬੀ / पंजाबी / پنجابي', 0, NULL, NULL, 1),
(77, 'pl', 'Polish', 'Polski', 0, NULL, NULL, 1),
(78, 'ps', 'Pashto', 'پښتو', 1, NULL, NULL, 1),
(79, 'pt', 'Portuguese', 'Português', 0, NULL, NULL, 1),
(80, 'qu', 'Quechua', 'Runa Simi', 0, NULL, NULL, 1),
(81, 'rn', 'Kirundi', 'Kirundi', 0, NULL, NULL, 1),
(82, 'ro', 'Romanian', 'Română', 0, NULL, NULL, 1),
(83, 'ru', 'Russian', 'Русский', 0, NULL, NULL, 1),
(84, 'rw', 'Rwandi', 'Kinyarwandi', 0, NULL, NULL, 1),
(85, 'sg', 'Sango', 'Sängö', 0, NULL, NULL, 1),
(86, 'si', 'Sinhalese', 'සිංහල', 0, NULL, NULL, 1),
(87, 'sk', 'Slovak', 'Slovenčina', 0, NULL, NULL, 1),
(88, 'sl', 'Slovenian', 'Slovenščina', 0, NULL, NULL, 1),
(89, 'sm', 'Samoan', 'Gagana Samoa', 0, NULL, NULL, 1),
(90, 'sn', 'Shona', 'chiShona', 0, NULL, NULL, 1),
(91, 'so', 'Somalia', 'Soomaaliga', 0, NULL, NULL, 1),
(92, 'sq', 'Albanian', 'Shqip', 0, NULL, NULL, 1),
(93, 'sr', 'Serbian', 'Српски', 0, NULL, NULL, 1),
(94, 'ss', 'Swati', 'SiSwati', 0, NULL, NULL, 1),
(95, 'st', 'Southern Sotho', 'Sesotho', 0, NULL, NULL, 1),
(96, 'sv', 'Swedish', 'Svenska', 0, NULL, NULL, 1),
(97, 'sw', 'Swahili', 'Kiswahili', 0, NULL, NULL, 1),
(98, 'ta', 'Tamil', 'தமிழ்', 0, NULL, NULL, 1),
(99, 'tg', 'Tajik', 'Тоҷикӣ', 0, NULL, NULL, 1),
(100, 'th', 'Thai', 'ไทย / Phasa Thai', 0, NULL, NULL, 1),
(101, 'ti', 'Tigrinya', 'ትግርኛ', 0, NULL, NULL, 1),
(102, 'tk', 'Turkmen', 'Туркмен / تركمن', 0, NULL, NULL, 1),
(103, 'tn', 'Tswana', 'Setswana', 0, NULL, NULL, 1),
(104, 'to', 'Tonga', 'Lea Faka-Tonga', 0, NULL, NULL, 1),
(105, 'tr', 'Turkish', 'Türkçe', 0, NULL, NULL, 1),
(106, 'ts', 'Tsonga', 'Xitsonga', 0, NULL, NULL, 1),
(107, 'uk', 'Ukrainian', 'Українська', 0, NULL, NULL, 1),
(108, 'ur', 'Urdu', 'اردو', 1, NULL, NULL, 1),
(109, 'uz', 'Uzbek', 'Ўзбек', 0, NULL, NULL, 1),
(110, 've', 'Venda', 'Tshivenḓa', 0, NULL, NULL, 1),
(111, 'vi', 'Vietnamese', 'Tiếng Việt', 0, NULL, NULL, 1),
(112, 'xh', 'Xhosa', 'isiXhosa', 0, NULL, NULL, 1),
(113, 'zh', 'Chinese', '中文', 0, NULL, NULL, 1),
(114, 'zu', 'Zulu', 'isiZulu', 0, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_11_01_000001_create_sm_schools_table', 1),
(2, '2014_11_12_100000_create_password_resets_table', 1),
(3, '2014_12_01_000001_create_infix_roles_table', 1),
(4, '2014_12_01_000002_create_roles_table', 1),
(5, '2014_12_01_000003_create_users_table', 1),
(6, '2014_12_01_000004_create_sm_base_groups_table', 1),
(7, '2014_12_01_000005_create_sm_base_setups_table', 1),
(8, '2014_12_01_000006_create_sm_classes_table', 1),
(9, '2014_12_01_000007_create_sm_sections_table', 1),
(10, '2014_12_01_000008_create_sm_class_sections_table', 1),
(11, '2014_12_01_000009_create_sm_subjects_table', 1),
(12, '2014_12_01_000010_create_sm_visitors_table', 1),
(13, '2014_12_01_000011_create_sm_fees_groups_table', 1),
(14, '2014_12_01_000012_create_sm_fees_types_table', 1),
(15, '2014_12_01_000013_create_sm_fees_discounts_table', 1),
(16, '2014_12_01_000014_create_sm_income_heads_table', 1),
(17, '2014_12_01_000015_create_sm_chart_of_accounts_table', 1),
(18, '2014_12_01_000016_create_sm_bank_accounts_table', 1),
(19, '2014_12_01_000017_create_sm_payment_gateway_settings_table', 1),
(20, '2014_12_01_000018_create_sm_payment_methhods_table', 1),
(21, '2014_12_01_000019_create_sm_add_incomes_table', 1),
(22, '2014_12_01_000020_create_sm_student_groups_table', 1),
(23, '2014_12_01_000021_create_sm_academic_years_table', 1),
(24, '2014_12_01_000022_create_sm_sessions_table', 1),
(25, '2014_12_01_000023_create_sm_dormitory_lists_table', 1),
(26, '2014_12_01_000024_create_sm_room_types_table', 1),
(27, '2014_12_01_000025_create_sm_room_lists_table', 1),
(28, '2014_12_01_000026_create_sm_designations_table', 1),
(29, '2014_12_01_000027_create_sm_human_departments_table', 1),
(30, '2014_12_01_000028_create_sm_staffs_table', 1),
(31, '2014_12_01_000029_create_sm_vehicles_table', 1),
(32, '2014_12_01_000030_create_sm_routes_table', 1),
(33, '2014_12_01_000031_create_sm_instructions_table', 1),
(34, '2014_12_01_000032_create_sm_question_levels_table', 1),
(35, '2014_12_01_000033_create_sm_question_groups_table', 1),
(36, '2014_12_01_000034_create_sm_question_banks_table', 1),
(37, '2014_12_01_000035_create_sm_online_exams_table', 1),
(38, '2014_12_01_000036_create_sm_exam_types_table', 1),
(39, '2014_12_01_000037_create_sm_marks_grades_table', 1),
(40, '2014_12_01_000038_create_sm_exams_table', 1),
(41, '2014_12_01_000039_create_sm_hourly_rates_table', 1),
(42, '2014_12_01_000040_create_sm_leave_types_table', 1),
(43, '2014_12_01_000041_create_sm_leave_defines_table', 1),
(44, '2014_12_01_000042_create_sm_leave_requests_table', 1),
(45, '2014_12_01_000043_create_sm_expense_heads_table', 1),
(46, '2014_12_01_000044_create_sm_add_expenses_table', 1),
(47, '2014_12_01_000045_create_sm_fees_masters_table', 1),
(48, '2014_12_01_000046_create_sm_setup_admins_table', 1),
(49, '2014_12_01_000047_create_sm_complaints_table', 1),
(50, '2014_12_01_000048_create_sm_postal_receives_table', 1),
(51, '2014_12_01_000049_create_sm_postal_dispatches_table', 1),
(52, '2014_12_01_000050_create_sm_phone_call_logs_table', 1),
(53, '2014_12_01_000051_create_sm_student_categories_table', 1),
(54, '2014_12_01_000052_create_sm_parents_table', 1),
(55, '2014_12_01_000054_create_sm_students_table', 1),
(56, '2014_12_01_000055_create_sm_student_attendances_table', 1),
(57, '2014_12_01_000056_create_sm_student_promotions_table', 1),
(58, '2014_12_01_000057_create_sm_staff_attendences_table', 1),
(59, '2014_12_01_000058_create_sm_student_homeworks_table', 1),
(60, '2014_12_01_000059_create_sm_teacher_upload_contents_table', 1),
(61, '2014_12_01_000060_create_sm_hr_salary_templates_table', 1),
(62, '2014_12_01_000061_create_sm_hr_payroll_generates_table', 1),
(63, '2014_12_01_000062_create_sm_exam_marks_registers_table', 1),
(64, '2014_12_01_000063_create_sm_marks_send_sms_table', 1),
(65, '2014_12_01_000064_create_sm_class_routines_table', 1),
(66, '2014_12_01_000064_create_sm_class_times_table', 1),
(67, '2014_12_01_000065_create_languages_table', 1),
(68, '2014_12_01_000065_create_sm_assign_subjects_table', 1),
(69, '2014_12_01_000066_create_sm_modules_table', 1),
(70, '2014_12_01_000067_create_sm_languages_table', 1),
(71, '2014_12_01_000068_create_sm_date_formats_table', 1),
(72, '2014_12_01_000069_create_sm_news_categories_table', 1),
(73, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(74, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(75, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(76, '2016_06_01_000004_create_oauth_clients_table', 1),
(77, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(78, '2018_12_04_050352_create_sm_notice_boards_table', 1),
(79, '2018_12_04_051648_create_sm_send_messages_table', 1),
(80, '2018_12_04_060828_create_sm_events_table', 1),
(81, '2018_12_04_062330_create_sm_holidays_table', 1),
(82, '2018_12_04_062714_create_sm_book_categories_table', 1),
(83, '2018_12_04_063012_create_sm_books_table', 1),
(84, '2018_12_04_075138_create_sm_library_members_table', 1),
(85, '2018_12_04_075911_create_sm_book_issues_table', 1),
(86, '2018_12_13_093741_create_sm_fees_carry_forwards_table', 1),
(87, '2018_12_17_104146_create_sm_fees_assigns_table', 1),
(88, '2018_12_17_111529_create_sm_hr_payroll_earn_deducs_table', 1),
(89, '2018_12_20_064256_create_sm_fees_assign_discounts_table', 1),
(90, '2018_12_20_090159_create_sm_fees_payments_table', 1),
(91, '2018_12_24_052328_create_sm_homeworks_table', 1),
(92, '2018_12_26_084518_create_sm_homework_students_table', 1),
(93, '2018_12_28_054159_create_sm_upload_contents_table', 1),
(94, '2018_12_28_075918_create_sm_content_types_table', 1),
(95, '2018_12_28_122146_create_sm_assign_class_teachers_table', 1),
(96, '2018_12_28_122205_create_sm_class_teachers_table', 1),
(97, '2018_12_31_112538_create_sm_exam_schedules_table', 1),
(98, '2018_12_31_112600_create_sm_exam_schedule_subjects_table', 1),
(99, '2019_01_02_061148_create_sm_marks_registers_table', 1),
(100, '2019_01_02_061238_create_sm_marks_register_children_table', 1),
(101, '2019_01_03_105718_create_sm_class_rooms_table', 1),
(102, '2019_01_06_060144_create_sm_seat_plans_table', 1),
(103, '2019_01_06_060213_create_sm_seat_plan_children_table', 1),
(104, '2019_01_07_132108_create_sm_exam_attendances_table', 1),
(105, '2019_01_07_132220_create_sm_exam_attendance_children_table', 1),
(106, '2019_01_09_101421_create_sm_online_exam_questions_table', 1),
(107, '2019_01_09_101533_create_sm_online_exam_question_mu_options_table', 1),
(108, '2019_01_10_050231_create_sm_item_categories_table', 1),
(109, '2019_01_10_050645_create_sm_items_table', 1),
(110, '2019_01_10_054622_create_sm_item_stores_table', 1),
(111, '2019_01_10_070859_create_sm_suppliers_table', 1),
(112, '2019_01_10_112518_create_sm_item_receives_table', 1),
(113, '2019_01_12_104449_create_sm_item_receive_children_table', 1),
(114, '2019_01_13_113100_create_sm_online_exam_marks_table', 1),
(115, '2019_01_14_061003_create_sm_assign_vehicles_table', 1),
(116, '2019_01_16_065238_create_sm_module_links_table', 1),
(117, '2019_01_19_094137_create_sm_inventory_payments_table', 1),
(118, '2019_01_21_063031_create_sm_student_excel_formats_table', 1),
(119, '2019_01_21_131008_create_sm_item_sells_table', 1),
(120, '2019_01_22_104243_create_sm_item_sell_children_table', 1),
(121, '2019_01_23_121931_create_sm_item_issues_table', 1),
(122, '2019_01_26_054046_create_sm_sms_gateways_table', 1),
(123, '2019_01_30_122524_create_sm_student_documents_table', 1),
(124, '2019_01_31_052142_create_sm_student_timelines_table', 1),
(125, '2019_01_31_101401_create_sm_question_bank_mu_options_table', 1),
(126, '2019_02_02_043028_create_sm_online_exam_question_assigns_table', 1),
(127, '2019_02_02_112647_create_sm_student_take_online_exams_table', 1),
(128, '2019_02_02_112719_create_sm_student_take_online_exam_questions_table', 1),
(129, '2019_02_02_115540_create_sm_student_take_onln_ex_ques_options_table', 1),
(130, '2019_02_09_050800_create_sm_email_sms_logs_table', 1),
(131, '2019_02_10_125119_create_sm_general_settings_table', 1),
(132, '2019_02_11_093834_create_sm_user_logs_table', 1),
(133, '2019_02_12_064024_create_sm_email_settings_table', 1),
(134, '2019_02_16_082050_create_sm_student_certificates_table', 1),
(135, '2019_02_17_124203_create_sm_student_id_cards_table', 1),
(136, '2019_02_24_124115_create_sm_to_dos_table', 1),
(137, '2019_03_13_075602_create_sm_admission_queries_table', 1),
(138, '2019_03_14_075324_create_sm_admission_query_followups_table', 1),
(139, '2019_04_04_124508_create_sm_backups_table', 1),
(140, '2019_04_10_054237_create_sm_temporary_meritlists', 1),
(141, '2019_04_13_062212_create_sm_exam_setups_table', 1),
(142, '2019_04_15_055616_create_sm_mark_stores_table', 1),
(143, '2019_04_17_101844_create_sm_result_stores_table', 1),
(144, '2019_04_21_071626_create_sm_class_routine_updates_table', 1),
(145, '2019_04_23_051315_create_sm_weekends_table', 1),
(146, '2019_04_25_164649_create_sm_countries_table', 1),
(147, '2019_04_27_121353_create_sm_language_phrases_table', 1),
(148, '2019_04_28_074534_create_sm_notifications_table', 1),
(149, '2019_04_30_181622_create_continents_table', 1),
(150, '2019_04_30_181730_create_countries_table', 1),
(151, '2019_05_07_103627_create_sm_currencies_table', 1),
(152, '2019_05_26_095459_create_sm_news_table', 1),
(153, '2019_05_27_103844_create_sm_testimonials_table', 1),
(154, '2019_06_01_113053_create_sm_contact_pages_table', 1),
(155, '2019_06_01_165107_create_sm_contact_messages_table', 1),
(156, '2019_06_10_155041_create_sm_product_purchases_table', 1),
(157, '2019_06_11_112109_create_sm_about_pages_table', 1),
(158, '2019_06_12_143430_create_sm_courses_table', 1),
(159, '2019_07_17_182142_create_sm_dashboard_settings_table', 1),
(160, '2019_07_18_141858_create_sm_background_settings_table', 1),
(161, '2019_07_20_151115_create_sm_custom_links_table', 1),
(162, '2019_07_20_183407_create_sm_frontend_persmissions_table', 1),
(163, '2019_07_21_110814_create_sm_home_page_settings_table', 1),
(164, '2019_09_01_171428_create_sm_system_versions_table', 1),
(165, '2019_09_06_113029_create_continets_table', 1),
(166, '2019_09_09_142112_create_sm_styles_table', 1),
(167, '2019_09_25_183656_create_sm_module_permissions_table', 1),
(168, '2019_09_26_115256_create_sm_module_permission_assigns_table', 1),
(169, '2019_10_16_160104_create_sm_time_zones_table', 1),
(170, '2019_11_27_120508_create_sm_student_attendance_imports_table', 1),
(171, '2019_11_27_181351_create_sm_staff_attendance_imports_table', 1),
(172, '2020_01_23_125935_create_sm_optional_subject_assigns_table', 1),
(173, '2020_01_26_112215_create_sm_class_optional_subject', 1),
(174, '2020_01_28_103859_create_sm_news_pages_table', 1),
(175, '2020_01_28_121210_create_sm_course_pages_table', 1),
(176, '2020_01_29_110503_create_sm_subject_attendances_table', 1),
(177, '2020_02_05_105739_create_custom_result_settings_table', 1),
(178, '2020_02_05_131307_create_sm_custom_temporary_results_table', 1),
(179, '2020_03_09_153421_create_sm_add_ons_table', 1),
(180, '2020_03_14_123955_create_sms_templates_table', 1),
(181, '2020_03_21_200226_create_sm_social_media_icons_table', 1),
(182, '2020_03_29_102518_create_sm_upload_homework_contents_table', 1),
(183, '2020_04_01_060324_create_jobs_table', 1),
(184, '2020_04_11_141636_create_infix_module_infos_table', 1),
(185, '2020_04_12_125728_create_infix_permission_assigns_table', 1),
(186, '2020_04_16_064434_create_infix_module_student_parent_infos_table', 1),
(187, '2020_11_16_065239_create_sm_role_permissions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'System',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `updated_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `type`, `active_status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Super admin', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(2, 'Student', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(3, 'Parents', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(4, 'Teacher', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(5, 'Admin', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(6, 'Accountant', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(7, 'Receptionist', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(8, 'Librarian', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1),
(9, 'Driver', 'System', 1, '1', '1', '2020-05-17 05:35:11', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `admission_pro` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_admit` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_disable` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_publish` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `due_fees` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collect_fees` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stu_promote` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_sms` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `absent` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `late_sms` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `er_checkout` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_checkout` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `st_credentials` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_credentials` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holiday` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_app` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_sms` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_st` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_staff` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_bounce` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_issue_b` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `re_issue_book` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_reset_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_login_credential_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_login_credential_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_registration_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_registration_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_login_credential_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_email_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dues_payment_message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_footer_text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `admission_pro`, `student_admit`, `login_disable`, `exam_schedule`, `exam_publish`, `due_fees`, `collect_fees`, `stu_promote`, `attendance_sms`, `absent`, `late_sms`, `er_checkout`, `st_checkout`, `st_credentials`, `staff_credentials`, `holiday`, `leave_app`, `approve_sms`, `birth_st`, `birth_staff`, `cheque_bounce`, `l_issue_b`, `re_issue_book`, `sms_text`, `password_reset_message`, `student_login_credential_message`, `guardian_login_credential_message`, `student_registration_message`, `guardian_registration_message`, `staff_login_credential_message`, `send_email_message`, `dues_payment_message`, `email_footer_text`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'Dear parent |ParentName|, your child |StudentName| admission is in process.', 'Dear parent |ParentName|, your child |StudentName| admission is completed You can login to your account using username:|Username| Password:|Password|', 'hello world', 'hello world', 'hello world', 'Fee Due Reminder for your child |StudentName|. \n                                Dear Parent |ParentName|, please find the below fee summary.\n                                Fee: Rs.|Fee|, Back dues \n                                Adjustment: Rs.|Adjustment|, \n                                Total: Rs.|Total|, \n                                Paid: Rs.|Paid|, \n                                Balance: Rs.|Balance|. \n                                Please ignore in case already paid.', 'Fee Due Reminder for your child |StudentName|. \n                                Dear Parent |ParentName|, please find the below fee summary.\n                                Fee: Rs.|Fee|, Back dues \n                                Adjustment: Rs.|Adjustment|, \n                                Total: Rs.|Total|, \n                                Paid: Rs.|Paid|, \n                                Balance: Rs.|Balance|. \n                                Please ignore in case already paid.', 'Hi [student_name] , Welcome to [school_name]. Congratulations ! You have promoted in the next class.', 'Dear Parent |ParentName|, your child |StudentName| came to the school at |time|', 'Dear parent |ParentName|, your child |StudentName| is absent to the school on |AttendanceDate|', 'Dear parent |ParentName|, your child |StudentName| is late to the school on |AttendanceDate|', 'Dear parent |ParentName|, your child |StudentName| is checkout  at |time| to the school on |AttendanceDate|', 'Dear Parent |ParentName|, your child |StudentName| left the school at |time|', 'Dear parent |ParentName|, your child |StudentName| login details: username:|Username| Password:|Password|', 'Dear staff |StaffName| your login details: username:|Username| Password:|Password|', 'This is to update you that |HolidayDate| is holiday due to |HolidayName|', 'Dear staff |StaffName|, Thank you for your leave application. Please wait for approval. Thanks ', 'Dear staff |StaffName|, Thank you for your leave application. Your leave approved. Thanks ', 'Dear parent |ParentName|, Warm wishes to your child  |StudentName| on behalf of his/her birthday', 'Dear staff |StaffName|, Warm wishes to your birthday. Happy Birthday. Thanks', 'Dear parent |ParentName|, the Cheque with no :|ChequeNo| for Rs.|FeePaid| received towards fee payment for your child :|StudentName| with receipt number:|ReceiptNo| has been Bounced', 'Dear parent |ParentName|, Library book  is issued to your child |StudentName| studying in class: |ClassName| , section: |SectionName| with roll no:|RollNo| On |IssueDate| .Please find the details , Book Title: |BookTitle|, Book No: |BookNo|, Due Date: |DueDate|', 'Dear parent |ParentName|, Library book  is returned by your child |StudentName| studying in class: |ClassName| , section: |SectionName| with roll no:|RollNo| On |ReturnDate| .Please find the details , Book Title: |BookTitle|, Book No: |BookNo|, Issue Date: |IssueDate|, Due Date: |DueDate|', 'hello world', 'Hi [name], Tap the button below to reset your account password. If you didnt request a new password, you can safely delete this email.', 'Hi [student_name] , Welcome to [Gehlot Classes]. Congratulations! You have registered successfully. Please log in using this username [username] and password [password]. Thanks.', 'Hi [father_name]  , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', 'Hi [student_name] , Welcome to [Gehlot Classes]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', 'Hi [father_name]  , Welcome to [Gehlot Classes]. Congratulations! You have registered successfully. Please log in using this username [username] and password [password]. Thanks.', 'Hi [father_name]  , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', 'Hi [father_name]  , Welcome to [school_name]. Congratulations ! You have registered successfully. Please login using this username [username] and password [password]. Thanks.', 'Hi [student_name], You fees due amount [amount] for [fees_name] on [date]. Thanks', 'Copyright &copy; 2020 All rights reserved | This template is made by Codethemes', 1, NULL, '2020-10-15 15:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `sm_about_pages`
--

CREATE TABLE `sm_about_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_about_pages`
--

INSERT INTO `sm_about_pages` (`id`, `created_at`, `updated_at`, `title`, `description`, `main_title`, `main_description`, `image`, `main_image`, `button_text`, `button_url`, `active_status`, `created_by`, `updated_by`, `school_id`) VALUES
(1, NULL, '2020-10-16 10:30:25', 'About Us', 'Gehlot classes started in 1992 as a chemistry class coaching for 11th and 112th, today it’s a journey of more than 28 years. Oldest institute for science streams for 11th and 12th. From 1992 to today thousands of GC students have qualified for top colleges of India from IITs, NITs to AIIMS. Not just India but our students are making us proud across the Globe. Today we are offering education from preschool 6th to 12th class which includes JEE(Main + Advanced) and Pre Medical (AIIMS & NEET). Additionally after 6th to create future learner and leader GC is preparing student for exams like Olympiad, NSTSE, KVPY.', 'Leading coaching classes for IIT-JEE, NEET & Foundation', 'Gehlot Classes has all in one place. You’ll find everything what you are looking into education, \r\n\r\nWHY WE ?\r\n5 to 25% marks increment in 12th class, while other institutes focus on a top performer we focus at front bench students to last bench students. That’s why we only institute in Rajasthan which increases the percentage of laborious students from 5 to 25%.\r\nSelection with 12th in exams like IIT and NEET.\r\n28 years of trust and results – GC is not among the institute which starts 5 years back, the foundation of the legacy includes 28 years of hard work, experience launch and learn approach.\r\nExclusive Study Material – Study material in GC is prepared following a proper international and national guidelines(NCERT ). Each topic are prepared by subject matter expert. This exclusive study material gives a guarantee to differentiate our students from others because it’s prepared after research and experience of 28 years.\r\nFaculty – each faculty has more then 5-20 years of teaching experience to a particular subject. For ex. Director itself is teaching chemistry for more than 28 years.\r\nHolistic Development – Apart from academics of students we focus on the holistic development of our students in terms of physical and mental development. Regular motivational classes to proper counselling of students is conducted.\r\nSafe and secure environment – As our students enrolled from different districts and regions of the state it is very necessary to provide each student with a safe and secure environment. In the same thread we maintain female staff r to security personal ratio to provide a safe environment.', 'public/uploads/about_page/about.jpg', 'public/uploads/about_page/about-img.jpg', 'Learn More About Us', 'about', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_academic_years`
--

CREATE TABLE `sm_academic_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `year` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_date` date NOT NULL,
  `ending_date` date NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_academic_years`
--

INSERT INTO `sm_academic_years` (`id`, `year`, `title`, `starting_date`, `ending_date`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2020', 'Academic Year 2020', '2020-01-01', '2020-12-31', 1, '2020-05-17 05:35:12', '2020-05-17 05:35:12', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_add_expenses`
--

CREATE TABLE `sm_add_expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expense_head_id` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_add_incomes`
--

CREATE TABLE `sm_add_incomes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `income_head_id` int(10) UNSIGNED DEFAULT NULL,
  `account_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_add_ons`
--

CREATE TABLE `sm_add_ons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_admission_queries`
--

CREATE TABLE `sm_admission_queries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL,
  `next_follow_up_date` date DEFAULT NULL,
  `assigned` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` int(11) DEFAULT NULL,
  `source` int(11) DEFAULT NULL,
  `no_of_child` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_admission_query_followups`
--

CREATE TABLE `sm_admission_query_followups` (
  `id` int(10) UNSIGNED NOT NULL,
  `response` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admission_query_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_assign_class_teachers`
--

CREATE TABLE `sm_assign_class_teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_assign_subjects`
--

CREATE TABLE `sm_assign_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_assign_vehicles`
--

CREATE TABLE `sm_assign_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vehicle_id` int(10) UNSIGNED DEFAULT NULL,
  `route_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_background_settings`
--

CREATE TABLE `sm_background_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `school_id` int(10) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_background_settings`
--

INSERT INTO `sm_background_settings` (`id`, `title`, `type`, `image`, `color`, `is_default`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard Background', 'image', 'public/backEnd/img/body-bg.jpg', '', 1, 1, NULL, NULL),
(2, 'Login Background', 'image', 'public/backEnd/img/login-bg.jpg', '', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sm_backups`
--

CREATE TABLE `sm_backups` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` tinyint(4) DEFAULT NULL COMMENT '0=Database, 1=File, 2=Image',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_bank_accounts`
--

CREATE TABLE `sm_bank_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_balance` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_base_groups`
--

CREATE TABLE `sm_base_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_base_groups`
--

INSERT INTO `sm_base_groups` (`id`, `name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Gender', 1, '2020-05-17 05:35:11', NULL, 1, 1, 1),
(2, 'Religion', 1, '2020-05-17 05:35:11', NULL, 1, 1, 1),
(3, 'Blood Group', 1, '2020-05-17 05:35:11', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_base_setups`
--

CREATE TABLE `sm_base_setups` (
  `id` int(10) UNSIGNED NOT NULL,
  `base_setup_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `base_group_id` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_base_setups`
--

INSERT INTO `sm_base_setups` (`id`, `base_setup_name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `base_group_id`, `school_id`) VALUES
(1, 'Male', 1, '2020-05-17 05:35:11', NULL, 1, 1, 1, 1),
(2, 'Female', 1, '2020-05-17 05:35:11', NULL, 1, 1, 1, 1),
(3, 'Others', 1, '2020-05-17 05:35:11', NULL, 1, 1, 1, 1),
(4, 'Islam', 1, '2020-05-17 05:35:11', NULL, 1, 1, 2, 1),
(5, 'Hinduism', 1, '2020-05-17 05:35:11', NULL, 1, 1, 2, 1),
(6, 'Sikhism', 1, '2020-05-17 05:35:11', NULL, 1, 1, 2, 1),
(7, 'Buddhism', 1, '2020-05-17 05:35:11', NULL, 1, 1, 2, 1),
(8, 'Protestantism', 1, '2020-05-17 05:35:11', NULL, 1, 1, 2, 1),
(9, 'A+', 1, '2020-05-17 05:35:11', NULL, 1, 1, 3, 1),
(10, 'O+', 1, '2020-05-17 05:35:11', NULL, 1, 1, 3, 1),
(11, 'B+', 1, '2020-05-17 05:35:11', NULL, 1, 1, 3, 1),
(12, 'AB+', 1, '2020-05-17 05:35:11', NULL, 1, 1, 3, 1),
(13, 'A-', 1, '2020-05-17 05:35:11', NULL, 1, 1, 3, 1),
(14, 'O-', 1, '2020-05-17 05:35:11', NULL, 1, 1, 3, 1),
(15, 'B-', 1, '2020-05-17 05:35:11', NULL, 1, 1, 3, 1),
(16, 'AB-', 1, '2020-05-17 05:35:11', NULL, 1, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_books`
--

CREATE TABLE `sm_books` (
  `id` int(10) UNSIGNED NOT NULL,
  `book_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `book_number` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rack_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `book_price` int(11) DEFAULT NULL,
  `post_date` date DEFAULT NULL,
  `details` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `book_category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_book_categories`
--

CREATE TABLE `sm_book_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_book_issues`
--

CREATE TABLE `sm_book_issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `given_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `issue_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `book_id` int(10) UNSIGNED DEFAULT NULL,
  `member_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_chart_of_accounts`
--

CREATE TABLE `sm_chart_of_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `head` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'E = expense, I = income',
  `active_status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_classes`
--

CREATE TABLE `sm_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_optional_subject`
--

CREATE TABLE `sm_class_optional_subject` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `gpa_above` double(8,2) NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_rooms`
--

CREATE TABLE `sm_class_rooms` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_routines`
--

CREATE TABLE `sm_class_routines` (
  `id` int(10) UNSIGNED NOT NULL,
  `monday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `tuesday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `wednesday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `thursday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `friday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `saturday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `sunday` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_start_from` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_end_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_room_id` int(10) UNSIGNED DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_routine_updates`
--

CREATE TABLE `sm_class_routine_updates` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` int(11) DEFAULT NULL COMMENT '1=sat,2=sun,7=fri',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `class_period_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_sections`
--

CREATE TABLE `sm_class_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_teachers`
--

CREATE TABLE `sm_class_teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `assign_class_teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_class_times`
--

CREATE TABLE `sm_class_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('exam','class') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `is_break` tinyint(4) DEFAULT NULL COMMENT '1 = tiffin time, 0 = class',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_complaints`
--

CREATE TABLE `sm_complaints` (
  `id` int(10) UNSIGNED NOT NULL,
  `complaint_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complaint_type` tinyint(4) DEFAULT NULL,
  `complaint_source` tinyint(4) DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_taken` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_contact_messages`
--

CREATE TABLE `sm_contact_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_status` tinyint(4) NOT NULL DEFAULT 0,
  `reply_status` tinyint(4) NOT NULL DEFAULT 0,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_contact_pages`
--

CREATE TABLE `sm_contact_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_map_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_contact_pages`
--

INSERT INTO `sm_contact_pages` (`id`, `title`, `description`, `image`, `button_text`, `button_url`, `address`, `address_text`, `phone`, `phone_text`, `email`, `email_text`, `latitude`, `longitude`, `google_map_address`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Contact Us', 'Have any questions? We’d love to hear from you! Here’s how to get in touch with us.', 'public/uploads/contactPage/contact.jpg', 'Learn More About Us', 'about', 'Gehlot Classes, Maan Ji Ka Hatha, Paota, Jodhpur', 'Gehlot Classes, Maan Ji Ka Hatha, Paota, Jodhpur', '+910123456789', 'Mon to Fri 9am to 6 pm', 'info@gehlotclasses.com', 'Send us your query anytime!', '23.707310', '90.415480', 'Jodhpur', 1, NULL, '2020-08-12 19:16:12', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sm_content_types`
--

CREATE TABLE `sm_content_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_countries`
--

CREATE TABLE `sm_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `native` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `continent` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sm_courses`
--

CREATE TABLE `sm_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `outline` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prerequisites` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `resources` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_courses`
--

INSERT INTO `sm_courses` (`id`, `title`, `image`, `overview`, `outline`, `prerequisites`, `resources`, `stats`, `active_status`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Target IIT-JEE & NEET', 'public/uploads/course/academic1.jpg', 'Class 11th IIT-JEE, NEET and Board \r\nClass 12th IIT-JEE, NEET and Board \r\nClass 12th Pass IIT-JEE, NEET and Board', 'Highest selection ratio\r\nHighly qualified faculty\r\nTeaching Since 1992\r\nPrice for achievers', 'NA', 'Best Faculties \r\nBest Study materiel \r\nHighest Selection Ratio', 'NA', 1, '2020-05-17 05:35:24', '2020-10-18 05:03:40', 1),
(2, 'FOUNDATION COURSE', 'public/uploads/course/academic3.jpg', 'XI with IIT-JEE / NEET PREPARATION\r\nXII with IIT-JEE / NEET PREPARATION', 'NA', 'NA', 'Best Study Material\r\nBest Faculties \r\nHighest Selection ratio', 'NA', 1, '2020-05-17 05:35:24', '2020-10-18 05:11:37', 1),
(3, 'Nurture + Pre-Foundation', 'public/uploads/course/academic5.jpg', 'Class 6th, 7th & 8th\r\nClass 9th\r\nClass 10th', 'One month fees for class 8th , 9th & 10 is Rs 2000/- . After lockdown online classes will be converted in offline classroom program.', 'Best faculty\r\nBest Result \r\nBest Study Material \r\nBest Infrastructure \r\nHighest result produced in last 32 years', 'NA', 'NA', 1, '2020-05-17 05:35:24', '2020-10-18 05:00:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_course_pages`
--

CREATE TABLE `sm_course_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_course_pages`
--

INSERT INTO `sm_course_pages` (`id`, `created_at`, `updated_at`, `title`, `description`, `main_title`, `main_description`, `image`, `main_image`, `button_text`, `button_url`, `active_status`, `created_by`, `updated_by`, `school_id`) VALUES
(1, NULL, '2020-10-18 05:07:31', 'Course', 'We have maintained an excellent track record for over three decades in delivering outstanding results in various medical and engineering entrance exams, and competitive and scholarship exams such as NTSE, KVPY, and Olympiads every year.', 'Under Graduate Education', 'Gehlot classes started in 1992 as a chemistry class coaching for 11th and 112th, today it’s a journey of more than 28 years. Oldest institute for science streams for 11th and 12th. From 1992 to today thousands of GC students have qualified for top colleges of India from IITs, NITs to AIIMS. Not just India but our students are making us proud across the Globe. Today we are offering education from preschool 6th to 12th class which includes JEE(Main + Advanced) and Pre Medical (AIIMS & NEET). Additionally after 6th to create future learner and leader GC is preparing student for exams like Olympiad, NSTSE, KVPY.', 'public/uploads/about_page/about.jpg', 'public/uploads/about_page/about-img.jpg', 'Learn More News', 'news', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_currencies`
--

CREATE TABLE `sm_currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_currencies`
--

INSERT INTO `sm_currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(2, 'Dollars', 'USD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(3, 'Afghanis', 'AFN', '؋', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(4, 'Pesos', 'ARS', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(5, 'Guilders', 'AWG', 'ƒ', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(6, 'Dollars', 'AUD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(7, 'New Manats', 'AZN', 'ман', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(8, 'Dollars', 'BSD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(9, 'Dollars', 'BBD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(10, 'Rubles', 'BYR', 'p.', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(11, 'Euro', 'EUR', '€', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(12, 'Dollars', 'BZD', 'BZ$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(13, 'Dollars', 'BMD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(14, 'Bolivianos', 'BOB', '$b', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(15, 'Convertible Marka', 'BAM', 'KM', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(16, 'Pula', 'BWP', 'P', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(17, 'Leva', 'BGN', 'лв', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(18, 'Reais', 'BRL', 'R$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(19, 'Pounds', 'GBP', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(20, 'Dollars', 'BND', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(21, 'Riels', 'KHR', '៛', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(22, 'Dollars', 'CAD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(23, 'Dollars', 'KYD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(24, 'Pesos', 'CLP', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(25, 'Yuan Renminbi', 'CNY', '¥', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(26, 'Pesos', 'COP', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(27, 'Colón', 'CRC', '₡', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(28, 'Kuna', 'HRK', 'kn', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(29, 'Pesos', 'CUP', '₱', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(30, 'Koruny', 'CZK', 'Kč', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(31, 'Kroner', 'DKK', 'kr', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(32, 'Pesos', 'DOP ', 'RD$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(33, 'Dollars', 'XCD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(34, 'Pounds', 'EGP', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(35, 'Colones', 'SVC', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(36, 'Pounds', 'FKP', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(37, 'Dollars', 'FJD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(38, 'Cedis', 'GHC', '¢', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(39, 'Pounds', 'GIP', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(40, 'Quetzales', 'GTQ', 'Q', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(41, 'Pounds', 'GGP', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(42, 'Dollars', 'GYD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(43, 'Lempiras', 'HNL', 'L', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(44, 'Dollars', 'HKD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(45, 'Forint', 'HUF', 'Ft', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(46, 'Kronur', 'ISK', 'kr', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(47, 'Rupees', 'INR', '₹', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(48, 'Rupiahs', 'IDR', 'Rp', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(49, 'Rials', 'IRR', '﷼', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(50, 'Pounds', 'IMP', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(51, 'New Shekels', 'ILS', '₪', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(52, 'Dollars', 'JMD', 'J$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(53, 'Yen', 'JPY', '¥', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(54, 'Pounds', 'JEP', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(55, 'Tenge', 'KZT', 'лв', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(56, 'Won', 'KPW', '₩', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(57, 'Won', 'KRW', '₩', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(58, 'Soms', 'KGS', 'лв', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(59, 'Kips', 'LAK', '₭', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(60, 'Lati', 'LVL', 'Ls', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(61, 'Pounds', 'LBP', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(62, 'Dollars', 'LRD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(64, 'Litai', 'LTL', 'Lt', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(65, 'Denars', 'MKD', 'ден', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(66, 'Ringgits', 'MYR', 'RM', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(67, 'Rupees', 'MUR', '₨', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(68, 'Pesos', 'MXN', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(69, 'Tugriks', 'MNT', '₮', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(70, 'Meticais', 'MZN', 'MT', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(71, 'Dollars', 'NAD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(72, 'Rupees', 'NPR', '₨', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(73, 'Guilders', 'ANG', 'ƒ', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(74, 'Dollars', 'NZD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(75, 'Cordobas', 'NIO', 'C$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(76, 'Nairas', 'NGN', '₦', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(77, 'Krone', 'NOK', 'kr', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(78, 'Rials', 'OMR', '﷼', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(79, 'Rupees', 'PKR', '₨', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(80, 'Balboa', 'PAB', 'B/.', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(81, 'Guarani', 'PYG', 'Gs', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(83, 'Pesos', 'PHP', 'Php', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(84, 'Zlotych', 'PLN', 'zł', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(85, 'Rials', 'QAR', '﷼', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(86, 'New Lei', 'RON', 'lei', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(87, 'Rubles', 'RUB', 'руб', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(88, 'Pounds', 'SHP', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(89, 'Riyals', 'SAR', '﷼', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(90, 'Dinars', 'RSD', 'Дин.', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(91, 'Rupees', 'SCR', '₨', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(92, 'Dollars', 'SGD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(93, 'Dollars', 'SBD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(94, 'Shillings', 'SOS', 'S', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(95, 'Rand', 'ZAR', 'R', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(96, 'Rupees', 'LKR', '₨', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(97, 'Kronor', 'SEK', 'kr', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(98, 'Dollars', 'SRD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(99, 'Pounds', 'SYP', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(100, 'New Dollars', 'TWD', 'NT$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(101, 'Baht', 'THB', '฿', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(102, 'Dollars', 'TTD', 'TT$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(103, 'Lira', 'TRY', 'TL', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(104, 'Liras', 'TRL', '£', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(105, 'Dollars', 'TVD', '$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(106, 'Hryvnia', 'UAH', '₴', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(107, 'Pesos', 'UYU', '$U', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(108, 'Sums', 'UZS', 'лв', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(110, 'Dong', 'VND', '₫', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(111, 'Rials', 'YER', '﷼', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(112, 'Taka', 'BDT', '৳', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(113, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(114, 'Kenya', 'KES', 'KSh', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(115, 'Nigeria', 'naira', '₦', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(116, 'Ghana', 'GHS', 'GH₵', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(117, 'Ethiopian', 'ETB', 'Br', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(118, 'Tanzania', 'TZS', 'TSh', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(119, 'Uganda', 'UGX', 'USh', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1),
(120, 'Rwandan', 'FRW', 'FRw', '2020-05-17 05:35:23', '2020-05-17 05:35:23', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_custom_links`
--

CREATE TABLE `sm_custom_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_href16` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dribble_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `behance_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_custom_links`
--

INSERT INTO `sm_custom_links` (`id`, `title1`, `title2`, `title3`, `title4`, `link_label1`, `link_href1`, `link_label2`, `link_href2`, `link_label3`, `link_href3`, `link_label4`, `link_href4`, `link_label5`, `link_href5`, `link_label6`, `link_href6`, `link_label7`, `link_href7`, `link_label8`, `link_href8`, `link_label9`, `link_href9`, `link_label10`, `link_href10`, `link_label11`, `link_href11`, `link_label12`, `link_href12`, `link_label13`, `link_href13`, `link_label14`, `link_href14`, `link_label15`, `link_href15`, `link_label16`, `link_href16`, `facebook_url`, `twitter_url`, `dribble_url`, `linkedin_url`, `behance_url`, `created_at`, `updated_at`) VALUES
(1, 'Departments', 'Health Care', 'About Our System', 'Resources', 'About us', '#', 'Home', '#', 'Business', '#', 'link_label4', '#', 'link_label5', '#', 'link_label6', '#', 'link_label7', '#', 'link_label8', '#', 'Home', '#', 'About', '#', 'Contact', '#', 'link_label12', '#', 'link_label13', '#', 'link_label14', '#', 'link_label15', '#', 'link_label16', '#', '#', '#', '#', 'https://www.linkedin.com/in/infix-edu-875458190/', '#', '2020-05-17 05:35:24', '2020-08-12 19:12:17');

-- --------------------------------------------------------

--
-- Table structure for table `sm_custom_temporary_results`
--

CREATE TABLE `sm_custom_temporary_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `admission_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `term3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_result` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_grade` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_dashboard_settings`
--

CREATE TABLE `sm_dashboard_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `dashboard_sec_id` int(11) NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_date_formats`
--

CREATE TABLE `sm_date_formats` (
  `id` int(10) UNSIGNED NOT NULL,
  `format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normal_view` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_date_formats`
--

INSERT INTO `sm_date_formats` (`id`, `format`, `normal_view`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'jS M, Y', '17th May, 2019', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(2, 'Y-m-d', '2019-05-17', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(3, 'Y-d-m', '2019-17-05', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(4, 'd-m-Y', '17-05-2019', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(5, 'm-d-Y', '05-17-2019', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(6, 'Y/m/d', '2019/05/17', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(7, 'Y/d/m', '2019/17/05', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(8, 'd/m/Y', '17/05/2019', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(9, 'm/d/Y', '05/17/2019', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(10, 'l jS \\of F Y', 'Monday 17th of May 2019', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(11, 'jS \\of F Y', '17th of May 2019', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(12, 'g:ia \\o\\n l jS F Y', '12:00am on Monday 17th May 2019', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(13, 'F j, Y, g:i a', 'May 7, 2019, 6:20 pm', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(14, 'F j, Y', 'May 17, 2019', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1),
(15, '\\i\\t \\i\\s \\t\\h\\e jS \\d\\a\\y', 'it is the 17th day', 1, '2020-05-17 05:35:16', '2020-05-17 05:35:16', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_designations`
--

CREATE TABLE `sm_designations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_designations`
--

INSERT INTO `sm_designations` (`id`, `title`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Principal', 1, '2020-05-17 05:35:12', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_dormitory_lists`
--

CREATE TABLE `sm_dormitory_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `dormitory_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'B=Boys, G=Girls',
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_email_settings`
--

CREATE TABLE `sm_email_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `email_engine_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_driver` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_email_settings`
--

INSERT INTO `sm_email_settings` (`id`, `email_engine_type`, `from_name`, `from_email`, `mail_driver`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_encryption`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'smtp', 'System Admin', 'admin@infixedu.com', 'smtp', 'smtp.gmail.com', '587', 'spn5@spondonit.com', '123456', 'tls', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_email_sms_logs`
--

CREATE TABLE `sm_email_sms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_date` date DEFAULT NULL,
  `send_through` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `send_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_events`
--

CREATE TABLE `sm_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `for_whom` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'teacher, student, parents, all',
  `event_location` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_des` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uplad_image_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_events`
--

INSERT INTO `sm_events` (`id`, `event_title`, `for_whom`, `event_location`, `event_des`, `from_date`, `to_date`, `uplad_image_file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Biggest Robotics Competition in Campus', NULL, 'Main Campus', 'Amet enim curabitur urna. Faucibus tincidunt pellentesque varius blandit fermentum tristique vulputate sodales tempus est hendrerit est tincidunt ligula lorem tellus eu malesuada tortor, lacinia posuere. Conubia Egestas sed senectus.', '2019-06-12', '2019-06-21', 'public/uploads/events/event1.jpg', 1, NULL, NULL, 1, 1, 1),
(2, 'Great Science Fair in main campus', NULL, 'Main Campus', 'Magna odio in. Facilisi arcu nec augue lacus augue maecenas hendrerit euismod cras vulputate dignissim pellentesque sociis est. Ut congue Leo dignissim. Fermentum curabitur pede bibendum aptent, quam, ultrices Nam convallis sed condimentum. Adipiscing mollis lorem integer eget neque, vel.', '2019-06-12', '2019-06-21', 'public/uploads/events/event2.jpg', 1, NULL, NULL, 1, 1, 1),
(3, 'Seminar on Internet of Thing in Campus', NULL, 'Main Campus', 'Libero erat porta ridiculus semper mi eleifend. Nisl nulla. Tempus, rhoncus per. Varius. Pharetra nisi potenti ut ultrices sociosqu adipiscing at. Suscipit vulputate senectus. Nostra. Aliquam fringilla eleifend accumsan dui.', '2019-06-12', '2019-06-21', 'public/uploads/events/event3.jpg', 1, NULL, NULL, 1, 1, 1),
(4, 'Art Competition in Campus', NULL, 'Main Campus', 'Dui nunc faucibus Feugiat penatibus molestie taciti nibh nulla pellentesque convallis praesent. Fusce. Vivamus egestas Rutrum est eu dictum volutpat morbi et. Placerat justo elementum dictumst magna nisl ut mollis varius velit facilisi. Duis tellus ullamcorper aenean massa nibh mi.', '2019-06-12', '2019-06-21', 'public/uploads/events/event4.jpg', 1, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_exams`
--

CREATE TABLE `sm_exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_mark` double(8,2) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_type_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_attendances`
--

CREATE TABLE `sm_exam_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_attendance_children`
--

CREATE TABLE `sm_exam_attendance_children` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendance_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'P = present A = Absent',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_attendance_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_marks_registers`
--

CREATE TABLE `sm_exam_marks_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `obtained_marks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_date` date DEFAULT NULL,
  `comments` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_schedules`
--

CREATE TABLE `sm_exam_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_period_id` int(10) UNSIGNED DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_term_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_schedule_subjects`
--

CREATE TABLE `sm_exam_schedule_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `start_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_mark` int(11) DEFAULT NULL,
  `pass_mark` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_schedule_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_setups`
--

CREATE TABLE `sm_exam_setups` (
  `id` int(10) UNSIGNED NOT NULL,
  `exam_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exam_mark` double(8,2) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_term_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_exam_types`
--

CREATE TABLE `sm_exam_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` int(11) NOT NULL DEFAULT 1,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_expense_heads`
--

CREATE TABLE `sm_expense_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_assigns`
--

CREATE TABLE `sm_fees_assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_master_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_assign_discounts`
--

CREATE TABLE `sm_fees_assign_discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `fees_discount_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_carry_forwards`
--

CREATE TABLE `sm_fees_carry_forwards` (
  `id` int(10) UNSIGNED NOT NULL,
  `balance` double(16,2) NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_discounts`
--

CREATE TABLE `sm_fees_discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('once','year') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'once for one time, year for all months',
  `amount` double(10,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_groups`
--

CREATE TABLE `sm_fees_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_masters`
--

CREATE TABLE `sm_fees_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_group_id` int(10) UNSIGNED DEFAULT NULL,
  `fees_type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_payments`
--

CREATE TABLE `sm_fees_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `discount_month` tinyint(4) DEFAULT NULL,
  `discount_amount` double(8,2) DEFAULT NULL,
  `fine` double(8,2) DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_mode` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'C= Cash, Cq=Cheque, D=DD',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fine_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_discount_id` int(10) UNSIGNED DEFAULT NULL,
  `fees_type_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_fees_types`
--

CREATE TABLE `sm_fees_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(230) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fees_group_id` int(10) UNSIGNED DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_frontend_persmissions`
--

CREATE TABLE `sm_frontend_persmissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `is_published` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_frontend_persmissions`
--

INSERT INTO `sm_frontend_persmissions` (`id`, `name`, `parent_id`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 0, 1, '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(2, 'About Page', 1, 1, '2020-05-17 05:35:24', '2020-10-16 10:27:01'),
(3, 'Image Banner', 1, 1, '2020-05-17 05:35:24', '2020-10-16 10:27:01'),
(4, 'Latest News', 1, 1, '2020-05-17 05:35:24', '2020-10-16 10:27:01'),
(5, 'Notice Board', 1, 1, '2020-05-17 05:35:24', '2020-10-16 10:27:01'),
(6, 'Event List', 1, 1, '2020-05-17 05:35:24', '2020-10-16 10:27:01'),
(7, 'Academics', 1, 1, '2020-05-17 05:35:24', '2020-10-16 10:27:01'),
(8, 'Testimonial', 1, 1, '2020-05-17 05:35:24', '2020-10-16 10:27:01'),
(9, 'Custom Links', 1, 1, '2020-05-17 05:35:24', '2020-10-16 10:27:01'),
(10, 'Social Icons', 1, 1, '2020-05-17 05:35:24', '2020-10-16 10:27:01'),
(11, 'About Image', 2, 1, '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(12, 'Statistic Number Section', 2, 1, '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(13, 'Our History', 2, 1, '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(14, 'Our Mission and Vision', 2, 1, '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(15, 'Testimonial', 2, 1, '2020-05-17 05:35:24', '2020-05-17 05:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `sm_general_settings`
--

CREATE TABLE `sm_general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `currency_symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '$',
  `promotionSetting` int(11) DEFAULT 0,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '4.4',
  `active_status` int(11) DEFAULT 1,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'USD',
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `session_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '2019',
  `system_purchase_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_activated_date` date DEFAULT NULL,
  `envato_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `envato_item_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_url` int(11) NOT NULL DEFAULT 1,
  `website_btn` int(11) NOT NULL DEFAULT 1,
  `dashboard_btn` int(11) NOT NULL DEFAULT 1,
  `report_btn` int(11) NOT NULL DEFAULT 1,
  `style_btn` int(11) NOT NULL DEFAULT 1,
  `ltl_rtl_btn` int(11) NOT NULL DEFAULT 1,
  `lang_btn` int(11) NOT NULL DEFAULT 1,
  `website_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ttl_rtl` int(11) NOT NULL DEFAULT 2,
  `phone_number_privacy` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time_zone_id` int(11) DEFAULT NULL,
  `session_id` int(10) UNSIGNED DEFAULT NULL,
  `language_id` int(10) UNSIGNED DEFAULT 1,
  `date_format_id` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1,
  `software_version` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FeesCollection` int(11) DEFAULT 0,
  `InfixBiometrics` int(11) DEFAULT 0,
  `ResultReports` int(11) DEFAULT 0,
  `TemplateSettings` int(11) DEFAULT 1,
  `RolePermission` int(11) DEFAULT 1,
  `RazorPay` int(11) DEFAULT 0,
  `Saas` int(11) DEFAULT 1,
  `ParentRegistration` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_general_settings`
--

INSERT INTO `sm_general_settings` (`id`, `school_name`, `site_title`, `school_code`, `address`, `phone`, `email`, `currency`, `currency_symbol`, `promotionSetting`, `logo`, `favicon`, `system_version`, `active_status`, `currency_code`, `language_name`, `session_year`, `system_purchase_code`, `system_activated_date`, `envato_user`, `envato_item_id`, `system_domain`, `copyright_text`, `api_url`, `website_btn`, `dashboard_btn`, `report_btn`, `style_btn`, `ltl_rtl_btn`, `lang_btn`, `website_url`, `ttl_rtl`, `phone_number_privacy`, `created_at`, `updated_at`, `time_zone_id`, `session_id`, `language_id`, `date_format_id`, `school_id`, `software_version`, `FeesCollection`, `InfixBiometrics`, `ResultReports`, `TemplateSettings`, `RolePermission`, `RazorPay`, `Saas`, `ParentRegistration`) VALUES
(1, 'Gehlot classes', 'Gehlot Classes', '12345678', 'Gehlot Classes, Maan Ji Ka Hatha, Paota, Jodhpur', '+919829405475', 'admin@gehlot.com', 'INR', '₹', 0, 'public/uploads/settings/82046e65c0b29fe690ac8a6aa6f13caa.png', 'public/uploads/settings/2f9b4e82549c384894056fc01dbe81e2.png', '4.4', 1, 'USD', 'en', '2020', NULL, '2020-08-13', NULL, NULL, NULL, 'Copyright &copy; 2019 - 2020 All rights reserved', 1, 1, 1, 1, 1, 1, 1, NULL, 2, 1, NULL, '2020-10-15 15:23:14', 194, 1, 1, 1, 1, '4.5', 0, 0, 0, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_holidays`
--

CREATE TABLE `sm_holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `holiday_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `upload_image_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_holidays`
--

INSERT INTO `sm_holidays` (`id`, `holiday_title`, `details`, `from_date`, `to_date`, `upload_image_file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Dipawali Vacations', 'on the occasion of Dipawali institute will remain closed', '2020-11-10', '2020-11-15', '', 1, '2020-10-18 05:19:16', '2020-10-18 05:19:16', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_homeworks`
--

CREATE TABLE `sm_homeworks` (
  `id` int(10) UNSIGNED NOT NULL,
  `homework_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `evaluation_date` date DEFAULT NULL,
  `file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evaluated_by` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_homework_students`
--

CREATE TABLE `sm_homework_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `marks` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `complete_status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `homework_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_home_page_settings`
--

CREATE TABLE `sm_home_page_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_home_page_settings`
--

INSERT INTO `sm_home_page_settings` (`id`, `title`, `long_title`, `short_description`, `link_label`, `link_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Gehlot Classes', 'Gehlot Classes', 'Gehlot classes started in 1992 as a chemistry class coaching for 11th and 112th, today it’s a journey of more than 28 years. Oldest institute for science streams for 11th and 12th. From 1992 to today thousands of GC students have qualified for top colleges of India from IITs, NITs to AIIMS. Not just India but our students are making us proud across the Globe. Today we are offering education from preschool 6th to 12th class which includes JEE(Main + Advanced) and Pre Medical (AIIMS & NEET). Additionally after 6th to create future learner and leader GC is preparing student for exams like Olympiad, NSTSE, KVPY.', NULL, NULL, 'public/backEnd/img/client/home-banner1.jpg', '2020-05-17 05:35:24', '2020-10-15 15:25:10');

-- --------------------------------------------------------

--
-- Table structure for table `sm_hourly_rates`
--

CREATE TABLE `sm_hourly_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_hr_payroll_earn_deducs`
--

CREATE TABLE `sm_hr_payroll_earn_deducs` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `earn_dedc_type` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'e for earnings and d for deductions',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payroll_generate_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_hr_payroll_generates`
--

CREATE TABLE `sm_hr_payroll_generates` (
  `id` int(10) UNSIGNED NOT NULL,
  `basic_salary` double DEFAULT NULL,
  `total_earning` double DEFAULT NULL,
  `total_deduction` double DEFAULT NULL,
  `gross_salary` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `net_salary` double DEFAULT NULL,
  `payroll_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payroll_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'NG for not generated, G for generated, P for paid',
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `note` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_hr_salary_templates`
--

CREATE TABLE `sm_hr_salary_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `salary_grades` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_basic` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overtime_rate` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_rent` int(11) DEFAULT NULL,
  `provident_fund` int(11) DEFAULT NULL,
  `gross_salary` int(11) DEFAULT NULL,
  `total_deduction` int(11) DEFAULT NULL,
  `net_salary` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_human_departments`
--

CREATE TABLE `sm_human_departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_human_departments`
--

INSERT INTO `sm_human_departments` (`id`, `name`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Admin', 1, '2020-05-17 05:35:12', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_income_heads`
--

CREATE TABLE `sm_income_heads` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_instructions`
--

CREATE TABLE `sm_instructions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_inventory_payments`
--

CREATE TABLE `sm_inventory_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_receive_sell_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount` double(10,2) DEFAULT NULL,
  `reference_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'R for receive S for sell',
  `payment_method` int(10) UNSIGNED DEFAULT NULL,
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_items`
--

CREATE TABLE `sm_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_in_stock` double(8,2) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_category_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_categories`
--

CREATE TABLE `sm_item_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_issues`
--

CREATE TABLE `sm_item_issues` (
  `id` int(10) UNSIGNED NOT NULL,
  `issue_to` int(10) UNSIGNED DEFAULT NULL,
  `issue_by` int(10) UNSIGNED DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `quantity` int(10) UNSIGNED DEFAULT NULL,
  `issue_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `item_category_id` int(10) UNSIGNED DEFAULT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_receives`
--

CREATE TABLE `sm_item_receives` (
  `id` int(10) UNSIGNED NOT NULL,
  `receive_date` date DEFAULT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_quantity` int(11) DEFAULT NULL,
  `total_paid` int(11) DEFAULT NULL,
  `total_due` int(11) DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `supplier_id` int(10) UNSIGNED DEFAULT NULL,
  `store_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_receive_children`
--

CREATE TABLE `sm_item_receive_children` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `item_receive_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_sells`
--

CREATE TABLE `sm_item_sells` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_staff_id` int(11) DEFAULT NULL,
  `sell_date` date DEFAULT NULL,
  `reference_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_quantity` int(11) DEFAULT NULL,
  `total_paid` int(11) DEFAULT NULL,
  `total_due` int(11) DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_sell_children`
--

CREATE TABLE `sm_item_sell_children` (
  `id` int(10) UNSIGNED NOT NULL,
  `sell_price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_sell_id` int(10) UNSIGNED DEFAULT NULL,
  `item_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_item_stores`
--

CREATE TABLE `sm_item_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_languages`
--

CREATE TABLE `sm_languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `language_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `native` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_universal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lang_id` int(10) UNSIGNED DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_languages`
--

INSERT INTO `sm_languages` (`id`, `language_name`, `native`, `language_universal`, `active_status`, `created_at`, `updated_at`, `lang_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'English', 'English', 'en', 1, '2020-05-17 05:35:16', '2020-08-18 07:24:33', 19, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_language_phrases`
--

CREATE TABLE `sm_language_phrases` (
  `id` int(10) UNSIGNED NOT NULL,
  `modules` text DEFAULT NULL,
  `default_phrases` text DEFAULT NULL,
  `en` text DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sm_language_phrases`
--

INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `active_status`, `created_at`, `updated_at`) VALUES
(1, '0', 'dashboard', 'Dashboard', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(2, '0', 'welcome', 'Welcome', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(3, '0', 'student', 'Student', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(4, '0', 'total', 'Total', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(5, '0', 'template', 'Template', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(6, '0', 'early', 'Early', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(7, '0', 'cheque_bounce', 'Cheque Bounce', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(8, '0', 'checkout', 'Checkout', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(9, '0', 'check', 'Check', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(10, '0', 'credentials', 'Credentials', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(11, '0', 'birthday', 'Birthday', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(12, '0', 'application', 'Application', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(13, '0', 'student_admitted_message', 'Student Admitted Message', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(14, '0', 'student_admission_progress', 'Student Admission In Progress', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(15, '0', 'teachers', 'Teachers', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(16, '0', 'parents', 'Parents', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(17, '0', 'staffs', 'Staffs', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(18, '0', 'income_and_expenses_for', 'Income and Expenses for', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(19, '0', 'total_income', 'Total Income', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(20, '0', 'total_expenses', 'Total Expenses', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(21, '0', 'total_profit', 'Total Profit', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(22, '0', 'total_revenue', 'Total Revenue', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(23, '0', 'title', 'Title', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(24, '0', 'message', 'Message', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(25, '0', 'actions', 'Actions', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(26, '0', 'calendar', 'Calendar', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(27, '0', 'view', 'View', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(28, '0', 'to_do_list', 'To Do List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(29, '0', 'add', 'Add', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(30, '0', 'edit', 'Edit', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(31, '0', 'no_do_lists_assigned_yet', 'No Do Lists Assigned Yet', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(32, '0', 'theme', 'Theme', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(33, '0', 'time_zone', 'Time Zone', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(34, '0', 'mail', 'Mail', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(35, '0', 'host', 'Host', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(36, '0', 'encryption', 'Encryption', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(37, '0', 'login', 'Login', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(38, '0', 'enter', 'Enter', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(39, '0', 'remember_me', 'Remember Me', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(40, '0', 'forget', 'Forget', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(41, '0', 'current_month', 'Current Month', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(42, '0', 'keyword', 'Keyword', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(43, '0', 'manage', 'Manage', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(44, '0', 'manager', 'Manager', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(45, '0', 'child', 'Child', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(46, '0', 'running', 'Running', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(47, '0', 'select_academic_year', 'Select Academic Year', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(48, '0', 'PDF', 'PDF', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(49, '0', 'biometrics', 'Biometrics', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(50, '1', 'admin_section', 'Admin Section', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(51, '1', 'admission_query', 'Admission Query', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(52, '1', 'select_criteria', 'Select Criteria', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(53, '1', 'date_from', 'Date From', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(54, '1', 'date_to', 'Date To', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(55, '1', 'select_source', 'Select Source', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(56, '1', 'select_status', 'Select status', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(57, '1', 'Status', 'Status', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(58, '1', 'active', 'Active', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(59, '1', 'inactive', 'Inactive', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(60, '1', 'search', 'Search', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(61, '1', 'query_list', 'Query List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(62, '1', 'name', 'Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(63, '1', 'phone', 'Phone', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(64, '1', 'source', 'Source', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(65, '1', 'email', 'Email', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(66, '1', 'query_date', 'Query Date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(67, '1', 'last_follow_up_date', 'last follow up date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(68, '1', 'next_follow_up_date', 'next follow up date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(69, '1', 'select', 'Select', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(70, '1', 'add_query', 'Add Query', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(71, '1', 'delete', 'Delete', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(72, '1', 'delete_admission_query', 'Delete Admission Query', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(73, '1', 'are_you_sure_to_delete', 'Are you sure to delete this item?', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(74, '1', 'are_you_sure_to_disable', 'Are you sure to disable this item?', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(75, '1', 'are_you_sure_to_enable', 'Are you sure to enable this item?', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(76, '1', 'cancel', 'Cancel', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(77, '1', 'admission_enquiry', 'Admission Enquiry', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(78, '1', 'address', 'Address', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(79, '1', 'description', 'Description', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(80, '1', 'date', 'Date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(81, '1', 'assigned', 'Assigned', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(82, '1', 'reference', 'Reference', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(83, '1', 'number_of_child', 'Number of child', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(84, '1', 'save', 'Save', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(85, '1', 'visitor_book', 'Visitor Book', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(86, '1', 'visitor', 'Visitor', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(87, '1', 'purpose', 'Purpose', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(88, '1', 'id', 'Id', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(89, '1', 'no_of_person', 'No. of Person', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(90, '1', 'in_time', 'In Time', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(91, '1', 'out_time', 'Out time', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(92, '1', 'browse', 'browse', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(93, '1', 'update', 'Update', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(94, '1', 'visitor_list', 'Visitor List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(95, '1', 'download', 'Download', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(96, '1', 'complaint', 'Complaint', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(97, '1', 'by', 'By', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(98, '1', 'type', 'Type', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(99, '1', 'taken', 'Taken', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(100, '1', 'list', 'List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(101, '1', 'postal_receive', 'Postal Receive', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(102, '1', 'from_title', 'From Title', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(103, '1', 'no', 'No', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(104, '1', 'note', 'Note', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(105, '1', 'to_title', 'To Title', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(106, '1', 'postal_dispatch', 'Postal Dispatch', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(107, '1', 'phone_call_log', 'Phone Call Log', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(108, '1', 'phone_call', 'Phone Call', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(109, '1', 'follow_up_date', 'Follow Up Date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(110, '1', 'call_duration', 'Call Duration', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(111, '1', 'incoming', 'Incoming', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(112, '1', 'outgoing', 'Outgoing', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(113, '1', 'call', 'Call', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(114, '1', 'admin_setup', 'Admin Setup', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(115, '1', 'student_certificate', 'Student Certificate', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(116, '1', 'certificate', 'Certificate', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(117, '1', 'header_left_text', 'Header left text', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(118, '1', 'body', 'Body', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(119, '1', 'footer_left_text', 'Footer left text', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(120, '1', 'footer_center_text', 'Footer Center text', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(121, '1', 'footer_right_text', 'Footer Right text', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(122, '1', 'student_photo', 'Student Photo', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(123, '1', 'yes', 'Yes', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(124, '1', 'none', 'No', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(125, '1', 'background_image', 'Background Image', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(126, '1', 'generate_certificate', 'Generate Certificate', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(127, '1', 'select_section', 'Select section', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(128, '1', 'generate', 'Generate', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(129, '1', 'admission', 'Admission', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(130, '1', 'class_Sec', 'Class (Sec.)', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:03'),
(131, '1', 'father', 'Father', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(132, '1', 'date_of_birth', 'Date Of Birth', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(133, '1', 'gender', 'Gender', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(134, '1', 'mobile', 'Mobile', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(135, '1', 'student_id_card', 'Student ID Card', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(136, '1', 'id_card_title', 'ID Card Title', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(137, '1', 'number', 'Number', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(138, '1', 'mother', 'Mother', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(139, '1', 'blood_group', 'Blood Group', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(140, '1', 'id_card', 'ID Card', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(141, '1', 'generate_id_card', 'Generate ID Card', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(142, '1', 'all', 'All', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(143, '1', 'relation_with_guardian', 'Relation with Guardian', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(144, '1', 'admin', 'Admin', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(145, '1', 'follow_up', 'Follow up', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(146, '1', 'follow_up_admission_query', 'Follow Up Admission Query', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(147, '1', 'response', 'Response', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(148, '1', 'follow_up_list', 'Follow Up List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(149, '1', 'query_by', 'Query By', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(150, '1', 'delete_follow_up_query', 'Delete Follow up query', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(151, '1', 'certificate_body_len', 'Max Character lenght 500', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(152, '1', 'class_section', 'Class (Sec.)', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(153, '1', 'are_you_sure_to_remove', 'Are you sure to remove this item?', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(154, '1', 'admission_no', 'Admission No', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(155, '1', 'no', 'No', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(156, '1', 'fill_marks', 'Fill Marks', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(157, '1', 'main', 'Main', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(158, '1', 'duration', 'Duration', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(159, '1', 'approve', 'Approve', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(160, '1', 'user_name', 'User Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(161, '1', 'rate', 'Rate', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(162, '1', 'hourly_rate', 'Hourly Rate', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(163, '1', 'add_new_staff', 'Add New Staff', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(164, '1', 'first_name', 'First Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(165, '1', 'last_name', 'Last Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(166, '1', 'married', 'Married', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(167, '1', 'unmarried', 'Unmarried', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(168, '1', 'marital_status', 'Marital Status', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(169, '1', 'driving_license', 'Driving License', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(170, '1', 'contract', 'Contract', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(171, '1', 'crop', 'Crop', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(172, '1', 'crop_image_and_upload', 'Crop Image And Upload', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(173, '1', 'staff_ID', 'Staff ID', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(174, '1', 'for_the_period_of', 'for the period of', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(175, '1', 'evaluated_by', 'Evaluated By', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(176, '1', 'summary', 'Summary', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(177, '1', 'good', 'Good', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(178, '1', 'not', 'Not', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(179, '1', 'comments', 'Comments', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(180, '1', 'roll_number', 'Roll Number', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(181, '1', 'cash', 'Cash', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(182, '1', 'cheque', 'Cheque', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(183, '1', 'dd', 'DD', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(184, '1', 'please_give_the_all_information_properly', 'Please Give the All Information Properly. We can not Save any of Your Data. Your Safety is our First Priority', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(185, '1', 'expiration', 'Expiration', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(186, '1', 'cvc', 'CVC', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(187, '1', 'card_number', 'Card Number', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(188, '1', 'name_on_card', 'Name on Card', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(189, '1', 'vai_card', 'vai Card', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(190, '1', 'pay_with', 'Pay with', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(191, '1', 'fees', 'Fees', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(192, '1', 'all_fees', 'All Fees', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(193, '1', 'online', 'Online', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(194, '1', 'assign_exam_room', 'Assign Exam Room', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(195, '1', 'level', 'Level', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(196, '1', 'question_level', 'Question Level', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(197, '1', 'update_online_exam_question', 'Update Online Exam Question', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(198, '1', 'number_options', 'Number Options', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(199, '1', 'currect_answer', 'Currect Answer', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(200, '1', 'currect', 'Currect', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(201, '1', 'exam_has_to_be_submitted_within', 'Exam Has To Be Submitted Within', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(202, '1', 'is_present', 'Is Present', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(203, '1', 'roll_no', 'Roll No', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(204, '1', 'button_url', 'Button Url', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(205, '1', 'button_text', 'Button Text', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(206, '1', 'course', 'Course', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(207, '1', 'update_course_heading_section', 'Update Course Heading Section', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(208, '1', 'stats', 'Stats', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(209, '1', 'resources', 'Resources', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(210, '1', 'prerequisites', 'Prerequisites', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(211, '1', 'outline', 'Outline', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(212, '1', 'overview', 'Overview', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(213, '1', 'export_to_csv', 'Export to CSV', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(214, '1', 'export_to_excel', 'Export to Excel', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(215, '1', 'export_to_pdf', 'Export to PDF', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(216, '1', 'copy_table', 'Copy Table', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(217, '1', 'visibility', 'Visibility', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(218, '1', 'column_view', 'Column View', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(219, '1', 'student_name', 'Student Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(220, '1', 'is_published_web_site', 'Is Published Web Site', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(221, '10', 'home_work', 'HomeWork', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(222, '10', 'add_homework', 'Add Homework', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(223, '10', 'homework_list', 'Homework List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(224, '10', 'evaluation_report', 'Homework Evaluation Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(225, '10', 'submission', 'Submission', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(226, '10', 'attach_file', 'Attach File', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(227, '10', 'evaluation', 'Evaluation', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(228, '10', 'created_by', 'Created By', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(229, '10', 'complete', 'Complete', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(230, '10', 'incomplete', 'Incomplete', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(231, '11', 'notice_board', 'Notice Board', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(232, '11', 'for_whom', 'For Whom', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(233, '11', 'send_message', 'Send Message', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(234, '11', 'send_email', 'Send Email / Sms', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(235, '11', 'email_sms_log', 'Email / Sms Log', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(236, '11', 'event', 'Event', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(237, '11', 'notices', 'Notices', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(238, '11', 'notice', 'Notice', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(239, '11', 'publish', 'Publish', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(240, '11', 'add_notice', 'Add Notice', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(241, '11', 'add_a_notice', 'Add a Notice', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(242, '11', 'publish_on', 'Publish On', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(243, '11', 'Send_Email_Sms', 'Send Email', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(244, '11', 'sms', 'SMS', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(245, '11', 'individual', 'Individual', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(246, '11', 'select_all', 'Select All', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(247, '11', 'For_Sending_Email', 'For Sending Email / Sms, It may take some seconds. So please take patience.', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(248, '11', 'send', 'Send', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(249, '11', 'start_date', 'Start Date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(250, '11', 'to_date', 'To Date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(251, '11', 'from_date', 'from Date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(252, '11', 'details', 'Details', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(253, '11', 'notice_date', 'Notice Date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(254, '11', 'update_content', 'Update content', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(255, '11', 'communicate', 'Communicate', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(256, '12', 'library', 'Library', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(257, '12', 'add_book', 'Add Book', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(258, '12', 'book_list', 'Book List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(259, '12', 'book_category', 'Book Categories', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(260, '12', 'library_member', 'Add Member', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(261, '12', 'member_list', 'Issue/Return Book', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(262, '12', 'all_issued_book', 'All Issued Book', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(263, '12', 'edit_book', 'Edit Book', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(264, '12', 'book', 'Book', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(265, '12', 'book_title', 'Book Title', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(266, '12', 'select_book_category', 'Select Book Category', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(267, '12', 'isbn', 'ISBN', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(268, '12', 'publisher', 'Publisher', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(269, '12', 'author_name', 'Author Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(270, '12', 'rack', 'Rack', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(271, '12', 'quantity', 'Quantity', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(272, '12', 'book_price', 'Book Price', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(273, '12', 'price', 'Price', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(274, '12', 'category_name', 'Category Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(275, '12', 'add_member', 'Add Member', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(276, '12', 'member', 'Member', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(277, '12', 'member_type', 'Member Type', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(278, '12', 'select_student', 'Select Student', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(279, '12', 'issue_books', 'Issue Books', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(280, '12', 'full_name', 'Full Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(281, '12', 'issue_return_Book', 'Issue / Return Book', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(282, '12', 'issued_Book_List', 'Issued Book List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(283, '12', 'select_Book_Name', 'Select Book Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(284, '12', 'search_By_Book_ID', 'Search By Book ID', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(285, '12', 'author', 'Author', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(286, '12', 'library_book_issue', 'Library Book Issue', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(287, '12', 'staff_name', 'Staff Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(288, '12', 'select_book', 'Select Book', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(289, '12', 'issue_book', 'Issue Book', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(290, '12', 'issued_book', 'Issued Book', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(291, '12', 'book_number', 'Book Number', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(292, '12', 'status', 'Status', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(293, '12', 'issue_date', 'Issue Date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(294, '12', 'return_this_book', 'Are you sure to Return This Book ?', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(295, '12', 'return_date', 'Return Date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(296, '13', 'inventory', 'Inventory', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(297, '13', 'item_category', 'Item Category', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(298, '13', 'item_list', 'Item List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(299, '13', 'item_store', 'Item Store', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(300, '13', 'supplier', 'Supplier', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(301, '13', 'item_receive', 'Item Receive', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(302, '13', 'item_receive_list', 'Item Receive List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(303, '13', 'item_sell', 'Item Sell', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(304, '13', 'item_issue', 'Item Issue', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(305, '13', 'select_item_category', 'Select Item Category', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(306, '13', 'selected', 'Selected', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(307, '13', 'total_in_stock', 'Total in Stock', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(308, '13', 'store_name', 'Store Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(309, '13', 'store_number', 'Store Number', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(310, '13', 'company', 'Company', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(311, '13', 'contact_person_name', 'Contact Person Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(312, '13', 'contact_person', 'Contact Person', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(313, '13', 'receive_details', 'Receive Details', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(314, '13', 'select_supplier', 'Select Supplier', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(315, '13', 'receive_date', 'Receive Date', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(316, '13', 'product_name', 'Product Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(317, '13', 'unit_price', 'Unit Price', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(318, '13', 'sub_total', 'Sub Total', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(319, '13', 'full_paid', 'Full Paid', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(320, '13', 'total_paid', 'Total Paid', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(321, '13', 'total_due', 'Total Due', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(322, '13', 'receive', 'Receive', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(323, '13', 'new', 'New', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(324, '13', 'total_quantity', 'Total Quantity', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(325, '13', 'partial_paid', 'Partial Paid', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(326, '13', 'unpaid', 'Unpaid', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(327, '13', 'refund', 'Refund', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(328, '13', 'buyer', 'Buyer', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(329, '13', 'issue_item', 'Issue Item', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(330, '13', 'issue_a_item', 'Issue a Item', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(331, '13', 'user_type', 'User Type', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(332, '13', 'select_student_for_issue', 'Select Student For Issue', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(333, '13', 'issue_to', 'Issue To', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(334, '13', 'issued_item_list', 'Issued Item List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(335, '13', 'issued', 'Issued', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(336, '13', 'returned', 'Returned', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(337, '13', 'cancel_the_record', 'You are about to cancel the record. This cannot be undone. are you sure?', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(338, '13', 'return', 'Return', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(339, '13', 'purchase_details', 'Purchase Details', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(340, '14', 'transport', 'Transport', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(341, '14', 'routes', 'Routes', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(342, '14', 'vehicle', 'Vehicle', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(343, '14', 'assign_vehicle', 'Assign Vehicle', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(344, '14', 'student_transport_report', 'Student Transport Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(345, '14', 'transport_route', 'Transport Route', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(346, '14', 'route', 'Route', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(347, '14', 'route_title', 'Route Title', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(348, '14', 'fare', 'Fare', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(349, '14', 'model', 'Model', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(350, '14', 'year_made', 'Year Made', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(351, '14', 'select_driver', 'Select Driver', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(352, '14', 'license', 'License', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(353, '14', 'select_route', 'Select Route', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(354, '14', 'select_vehicle', 'Select Vehicle', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(355, '14', 'father_phone', 'Fathers Phone', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(356, '14', 'mother_name', 'Mothers Name', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(357, '14', 'mother_phone', 'Mothers Phone', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(358, '15', 'dormitory', 'Dormitory', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(359, '15', 'dormitory_rooms', 'Dormitory Rooms', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(360, '15', 'room_type', 'Room Type', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(361, '15', 'student_dormitory_report', 'Student Dormitory Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(362, '15', 'number_of_bed', 'Number Of Bed', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(363, '15', 'cost_per_bed', 'Cost Per Bed', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(364, '15', 'no_of_bed', 'NO. OF BEd', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(365, '15', 'dormitory_list', 'Dormitory List', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(366, '15', 'boys', 'Boys', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(367, '15', 'girls', 'Girls', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(368, '15', 'intake', 'Intake', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(369, '15', 'select_dormitory', 'Select Dormitory', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(370, '15', 'guardian_phone', 'Guardians Phone', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(371, '16', 'reports', 'Reports', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(372, '16', 'student_report', 'Student Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(373, '16', 'guardian_report', 'Guardian Reports', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(374, '16', 'student_history', 'Student History', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(375, '16', 'student_login_report', 'Student Login Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(376, '16', 'fees_statement', 'Fees Statement', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(377, '16', 'balance_fees_report', 'Balance Fees Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(378, '16', 'transaction_report', 'Transaction Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(379, '16', 'class_report', 'Class Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(380, '16', 'merit_list_report', 'Merit List Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(381, '16', 'online_exam_report', 'Online Exam Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(382, '16', 'mark_sheet_report', 'Mark Sheet Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(383, '16', 'tabulation_sheet_report', 'Tabulation Sheet Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(384, '16', 'student_fine_report', 'Student Fine Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(385, '16', 'user_log', 'User Log', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(386, '16', 'exam_routine', 'Exam Routine', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(387, '16', 'select_type', 'Select Type', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(388, '16', 'select_gender', 'Select Gender', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(389, '16', 'nid', 'NID', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(390, '16', 'Birth_Certificate_Number', 'Birth Certificate Number', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(391, '16', 'select_admission_year', 'Select admission Year', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(392, '16', 'start_end', 'Start-End', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(393, '16', 'student_login_info', 'Student Login Info', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(394, '16', 'login_info_report', 'Login Info Report', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(395, '16', 'username', 'Username', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(396, '16', 'password', 'Password', 1, '2020-05-17 05:35:22', '2020-08-13 06:09:04'),
(397, '16', 'parent', 'Parent', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(398, '16', 'reset', 'Reset', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(399, '16', 'due_date', 'Due Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(400, '16', 'partial', 'Partial', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(401, '16', 'discount_of', 'Discount of', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(402, '16', 'fees_report', 'Fees Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(403, '16', 'paid_fees', 'Paid Fees', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(404, '16', 'fees_collection_details', 'Fees Collection Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(405, '16', 'number_of_student', 'Number Of Student', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(406, '16', 'total_subjects_assigned', 'Total Subjects assigned', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(407, '16', 'collection', 'Collection', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(408, '16', 'due', 'Due', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(409, '16', 'fees_details', 'Fees Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(410, '16', 'class_routine_report', 'Class Routine Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(411, '16', 'report', 'Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(412, '16', 'teacher_class_routine_report', 'Teacher Class Routine Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(413, '16', 'select_teacher', 'Select Teacher', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(414, '16', 'school_management_system', 'School Management System', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(415, '16', 'united_states_of_america', 'House 25, Road 27, Block B, 54th Floor, USA', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(416, '16', 'order_of_merit_list', 'Order of merit list', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(417, '16', 'position', 'Position', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(418, '16', 'average', 'Average', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(419, '16', 'obtained_marks', 'Obtained Marks', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(420, '16', 'top_obtained_mark', 'Top Obtained Mark', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(421, '16', 'student_terminal_report', 'Student Terminal Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(422, '16', 'progress_card_report', 'Progress card report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(423, '16', 'position_in_class', 'Position in Class', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(424, '16', 'class_test', 'Class Test', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(425, '16', 'remarks', 'Remarks', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(426, '16', 'user', 'User', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(427, '16', 'ip', 'IP', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(428, '16', 'login_time', 'Login Time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(429, '16', 'user_agent', 'User Agent', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(430, '17', 'authentication', 'Authentication', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(431, '17', 'token', 'Token', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(432, '17', 'registered_phone_number', 'Registered Phone Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(433, '17', 'authentication_key_SId', 'Authentication Key SId', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(434, '17', 'sender', 'Sender', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(435, '17', 'country_code', 'Country Code', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(436, '17', 'select_serial', 'Select serial', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(437, '17', 'day_list', 'Day list', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(438, '17', 'serial', 'Serial', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(439, '17', 'upload_from_local_directory', 'Upload From Local Directory', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(440, '17', 'file', 'File', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(441, '17', 'cron_secret_key', 'Cron Secret Key', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(442, '17', 'generate_key', 'Generate key', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(443, '17', 'database_backup_list', 'Database Backup List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(444, '17', 'backup', 'Backup', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(445, '17', 'created_date_time', 'Created Date Time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(446, '17', 'backup_files', 'Backup Files', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(447, '17', 'weekend', 'Weekend', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(448, '17', 'restore', 'Restore', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(449, '17', 'default', 'Default', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(450, '17', 'module', 'Module', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(451, '17', 'module_link', 'Module Link', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(452, '17', 'permission', 'Permission', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(453, '17', 'site_title', 'Site Title', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(454, '17', 'select_session', 'Select Academic Year', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(455, '17', 'select_date_format', 'Select Date Format', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(456, '17', 'select_currency', 'Select Currency', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(457, '17', 'currency_symbol', 'Currency Symbol', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(458, '17', 'school_address', 'School Address', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(459, '17', 'update_language', 'Update Language', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(460, '17', 'language_setup', 'Language Setup', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(461, '17', 'starting', 'Starting', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(462, '17', 'term', 'Term', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(463, '17', 'optional_subject', 'Optional Subject', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(464, '17', 'manage_currency', 'Manage Currency', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(465, '17', 'send_through', 'Send Through', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(466, '17', 'custom_progress_card_report', 'Custom Progress Card Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(467, '17', 'due_amount', 'Due Amount', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(468, '17', 'paid_amount', 'Paid Amount', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(469, '17', 'expaire_date', 'Expaire Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(470, '17', 'purchase_date', 'Purchase Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(471, '17', 'package', 'Package', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(472, '17', 'sl', 'SL', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(473, '17', 'purchase_list', 'Purchase List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(474, '17', 'infix_clasified', 'Infix Clasified', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(475, '17', 'infix_edu', 'Infix Edu', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(476, '17', 'select_package', 'Select Package', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(477, '17', 'thanks', 'Thanks', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(478, '17', 'team', 'Team', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(479, '17', 'select', 'Select', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(480, '17', 'mark', 'Mark', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(481, '17', 'fees_groups_details', 'Fees groups Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(482, '17', 'staff', 'Staff', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(483, '17', 'manage-currency', 'Manage Currency', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(484, '17', 'wise', 'Wise', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(485, '17', 'system_settings', 'System Settings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(486, '17', 'general_settings', 'General Settings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(487, '17', 'email_settings', 'Email Settings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(488, '17', 'payment_method_settings', 'Payment Method Settings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(489, '17', 'role', 'Role', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(490, '17', 'base_group', 'Base Group', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(491, '17', 'base_setup', 'Base Setup', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(492, '17', 'academic_year', 'Academic Year', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(493, '17', 'session', 'Academic Year', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(494, '17', 'holiday', 'Holiday', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(495, '17', 'sms_settings', 'Sms Settings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(496, '17', 'language_settings', 'Language Settings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(497, '17', 'backup_settings', 'Backup', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(498, '17', 'select_language', 'Select Language', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(499, '17', 'native', 'Native', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(500, '17', 'universal', 'Universal', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(501, '17', 'make_default', 'Make Default', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(502, '17', 'setup', 'Setup', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(503, '17', 'change_logo', 'Change Logo', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(504, '17', 'change_fav', 'Change Favicon', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(505, '17', 'upload', 'Upload', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(506, '17', 'school_name', 'School Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(507, '17', 'school_code', 'School Code', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(508, '17', 'language', 'Language', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(509, '17', 'date_format', 'Date Format', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(510, '17', 'currency', 'Currency', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(511, '17', 'symbol', 'Symbol', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(512, '17', 'sand', 'Sand', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(513, '17', 'smtp', 'SMTP', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(514, '17', 'from_name', 'From Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(515, '17', 'from_email', 'From Email', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(516, '17', 'server', 'Server', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(517, '17', 'port', 'Port', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(518, '17', 'security', 'Security', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(519, '17', 'select_a_payment_gateway', 'Select a Payment Gateway', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(520, '17', 'checked', 'Checked', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(521, '17', 'paypal', 'Paypal', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(522, '17', 'stripe', 'Stripe', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(523, '17', 'payUMoney', 'PayUMoney', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(524, '17', 'signature', 'Signature', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(525, '17', 'client_id', 'Client ID', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(526, '17', 'secret_id', 'Secret ID', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(527, '17', 'stripe_api_secret_key', 'Stripe API Secret Key', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(528, '17', 'stripe_publisher_key', 'Stripe Publishable Key', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(529, '17', 'pay_u_money_key', 'PayU Money Key', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(530, '17', 'pay_u_money_salt', 'PayU Money Salt', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(531, '17', 'role_permission', 'Role Permission', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(532, '17', 'assign_permission', 'Assign Permission', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(533, '17', 'label', 'Label', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(534, '17', 'base', 'Base', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(535, '17', 'year_title', 'Year Title', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(536, '17', 'starting_date', 'Starting Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(537, '17', 'ending_date', 'Ending Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(538, '17', 'select_a_SMS_service', 'Select a SMS Service', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(539, '17', 'clickatell', 'Clickatell', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(540, '17', 'settings', 'Settings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(541, '17', 'twilio', 'Twilio', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(542, '17', 'api', 'API', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(543, '17', 'sid', 'SID', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(544, '18', 'front_end_settings', 'Front End Settings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(545, '18', 'add_news', 'Add News', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(546, '18', 'news', 'News', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(547, '18', 'news_list', 'News List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(548, '18', 'image', 'Image', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(549, '18', 'publication_date', 'Publication Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(550, '18', 'add_testimonial', 'Add Testimonial', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(551, '18', 'testimonial', 'Testimonial', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(552, '18', 'institution_name', 'Institution Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(553, '18', 'location', 'Location', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(554, '18', 'front_settings', 'Front Settings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(555, '19', 'my_profile', 'My Profile', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04');
INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `active_status`, `created_at`, `updated_at`) VALUES
(556, '19', 'fees', 'Fees', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(557, '19', 'pay_fees', 'Pay Fees', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(558, '19', 'download_center', 'Download Center', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(559, '19', 'student_study_material', 'Study Materials', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(560, '19', 'examinations', 'Examinations', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(561, '19', 'result', 'result', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(562, '19', 'active_exams', 'Active Exams', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(563, '19', 'book_issue', 'Book issued', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(564, '19', 'my_children', 'My Children', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(565, '19', 'exam_result', 'Exam Result', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(566, '19', 'teacher_list', 'Teacher list', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(567, '19', 'inserted_message', 'Operation Successfully', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(568, '19', 'updated_message', 'Updated Successfully', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(569, '19', 'deleted_message', 'Deleted Successfully', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(570, '19', 'inactive_message', 'Inactivated Successfully', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(571, '19', 'active_message', 'Activated Successfully', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(572, '19', 'backup_message', 'Backup Successfully', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(573, '19', 'restore_message', 'Restore Successfully', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(574, '19', 'not_found_message', 'Ops! Data not Found', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(575, '19', 'error_message', 'Ops! Something went wrong, please try again', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(576, '19', 'front_cms', 'Front cms', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(577, '19', 'update_system', 'Update System', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(578, '19', 'System_Status', 'System Status', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(579, '19', 'Upgrade', 'Upgrade', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(580, '19', 'Version', 'Version', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(581, '19', 'Existing', 'Existing', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(582, '19', 'Available', 'Available', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(583, '19', 'Alert', 'Alert', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(584, '19', 'New_Features', 'New Features', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(585, '19', 'copyright_text', 'Copyright Text', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(586, '2', 'grade_point', 'Grade Point', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(587, '2', 'without_additional', 'Without Additional', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(588, '2', 'additional_subject', 'Additional Subject', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(589, '2', 'gpa_above', 'GPA above', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(590, '2', 'date_of_publication_of_result', 'Date of Publication of Result', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(591, '2', 'exam_controller', 'Exam Controller', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(592, '2', 'class_report_for_class', 'Class Report for class', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(593, '2', 'history', 'History', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(594, '2', 'change_password', 'Change Password', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(595, '2', 'course_heading', 'Course Heading', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(596, '2', 'news_heading', 'News Heading', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(597, '2', 'subject_attendance_report', 'Subject Attendance Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(598, '2', 'ltl', 'LTL', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(599, '2', 'rtl', 'RTL', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(600, '2', 'alignment', 'Alignment', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(601, '2', 'invoice', 'Invoice', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(602, '2', 'new_client_information', 'New Client Information', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(603, '2', 'made', 'Made', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(604, '2', 'exam', 'Exam', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(605, '2', 'phone_number', 'Phone Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(606, '2', 'transport_and_dormitory_details', 'Transport and Dormitory Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(607, '2', 'driver_phone_number', 'Driver Phone Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(608, '2', 'national_identification_number', 'National Identification Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(609, '2', 'local_identification_number', 'Local Identification Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(610, '2', 'UBC56987', 'UBC56987', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(611, '2', 'incompleted', 'Incompleted', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(612, '2', 'room_name', 'Room Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(613, '2', 'class_period', 'Class Period', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(614, '2', 'paystack', 'Paystack', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(615, '2', 'update_news_heading_section', 'Update News Heading Section', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(616, '2', 'membership', 'Membership', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(617, '2', 'purchase_receipt', 'Purchase Receipt', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(618, '2', 'bill_to', 'Bill To', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(619, '2', 'sell_receipt', 'Sell Receipt', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(620, '2', 'sale_to', 'Sale To', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(621, '2', 'sell_date', 'Sell Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(622, '2', 'item_sale', 'Item Sale', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(623, '2', 'sell_price', 'Sell Price', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(624, '2', 'contarct_type', 'Contarct Type', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(625, '2', 'work_experience', 'Work Experience', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(626, '2', 'mode_of_payment', 'Mode of Payment', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(627, '2', 'no_payroll_data', 'No Payroll Data', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(628, '2', 'not_leaves_data', 'Not Leaves Data', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(629, '2', 'joining_letter', 'Joining Letter', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(630, '2', 'student_information', 'Student Info', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(631, '2', 'student_admission', 'Student Admission', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(632, '2', 'student_import', 'Student Import', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(633, '2', 'import', 'Import', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(634, '2', 'personal', 'Personal', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(635, '2', 'info', 'Info', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(636, '2', 'roll', 'Roll', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(637, '2', 'first', 'First', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(638, '2', 'last', 'Last', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(639, '2', 'religion', 'Religion', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(640, '2', 'caste', 'Caste', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(641, '2', 'category', 'Category', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(642, '2', 'height', 'Height', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(643, '2', 'Weight', 'Weight', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(644, '2', 'sibling', 'Sibling', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(645, '2', 'information', 'Information', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(646, '2', 'guardian', 'Guardian', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(647, '2', '&', '&', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(648, '2', 'occupation', 'Occupation', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(649, '2', 'photo', 'Photo', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(650, '2', 'Other', 'Others', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(651, '2', 'relation_with_guardian', 'Relation with Guardian', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(652, '2', 'current', 'Current', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(653, '2', 'permanent', 'Permanent', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(654, '2', 'route_list', 'Route List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(655, '2', 'driver', 'Driver', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(656, '2', 'room', 'Room', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(657, '2', 'national_iD_number', 'National ID Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(658, '2', 'local_Id_Number', 'Local Id Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(659, '2', 'bank', 'Bank', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(660, '2', 'previous_school_details', 'Previous School Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(661, '2', 'additional_notes', 'Additional Notes', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(662, '2', 'parents_and_guardian_info', 'PARENTS & GUARDIAN INFO', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(663, '2', 'transport_and_dormitory_info', 'Transport & Dormitory Info', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(664, '2', 'document_info', 'Document Info', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(665, '2', 'document_01_title', 'Document 01 Title', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(666, '2', 'document_02_title', 'Document 02 Title', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(667, '2', 'document_03_title', 'Document 03 Title', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(668, '2', 'document_04_title', 'Document 04 Title', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(669, '2', 'student_details', 'Student Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(670, '2', 'search_by_name', 'Search By Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(671, '2', 'search_by_roll_no', 'Search By Roll No', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(672, '2', 'father_name', 'Fathers Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(673, '2', 'student_promote', 'Student Promote', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(674, '2', 'select_current_session', 'Select Current Academic Year', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(675, '2', 'select_current_class', 'Select current Class', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(676, '2', 'select_current_section', 'Select Current section', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(677, '2', 'promote_student_in_next_session', 'Promote Student In Next Academic Year', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(678, '2', 'view_academic_performance', 'View Academic Performance', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(679, '2', 'pass', 'Pass', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(680, '2', 'fail', 'Fail', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(681, '2', 'select_promote_session', 'Select Promote Academic Year', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(682, '2', 'select_promote_class', 'Select Promote Class', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(683, '2', 'the_session_is_required', 'The session is required', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(684, '2', 'the_class_is_required', 'The class is required', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(685, '2', 'the_section_is_required', 'The section is required', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(686, '2', 'select_promote_section', 'Select Promote Section', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(687, '2', 'promote', 'Promote', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(688, '2', 'student_attendance', 'Student Attendance', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(689, '2', 'select_class', 'Select Class', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(690, '2', 'attendance', 'Attendance', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(691, '2', 'attendance_already_submitted_as_holiday', 'Attendance Already Submitted As Holiday. You Can Edit Record', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(692, '2', 'attendance_already_submitted', 'Attendance Already Submitted You Can Edit Record', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(693, '2', 'mark_holiday', 'Mark Holiday', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(694, '2', 'present', 'Present', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(695, '2', 'late', 'Late', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(696, '2', 'absent', 'Absent', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(697, '2', 'half_day', 'Half Day', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(698, '2', 'add_note_here', 'Add Note Here', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(699, '2', 'error', 'Error', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(700, '2', 'student_attendance_report', 'Student Attendance Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(701, '2', 'january', 'January', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(702, '2', 'february', 'February', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(703, '2', 'march', 'March', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(704, '2', 'april', 'April', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(705, '2', 'may', 'May', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(706, '2', 'june', 'June', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(707, '2', 'july', 'July', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(708, '2', 'august', 'August', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(709, '2', 'september', 'September', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(710, '2', 'october', 'October', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(711, '2', 'november', 'November', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(712, '2', 'december', 'December', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(713, '2', 'select_month', 'Select Month', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(714, '2', 'select_year', 'Select Year', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(715, '2', 'student_category', 'Student Category', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(716, '2', 'student_category_list', 'Student Category List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(717, '2', 'student_group', 'Student Group', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(718, '2', 'group', 'Group', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(719, '2', 'disabled_student', 'Disabled Students', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(720, '2', 'student_list', 'Student List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(721, '2', 'birth_certificate', 'Birth Certificate', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(722, '2', 'student_edit', 'Student Edit', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(723, '2', 'in', 'In', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(724, '2', 'kg', 'KG', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(725, '2', 'add_parent', 'Add Parent', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(726, '2', 'update_information', 'Update information', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(727, '2', 'siblings', 'Siblings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(728, '2', 'guardian_name', 'Guardians Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(729, '2', 'guardian_email', 'Guardians Email', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(730, '2', 'guardian_phone', 'Guardians Phone', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(731, '2', 'guardian_occupation', 'Guardian Occupation', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(732, '2', 'guardian_address', 'Guardian Address', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(733, '2', 'student_address_info', 'Student Address Info', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(734, '2', 'current_address', 'Current Address', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(735, '2', 'permanent_address', 'Permanent Address', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(736, '2', 'vehicle_number', 'Vehicle Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(737, '2', 'driver_name', 'Driver Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(738, '2', 'bank_name', 'Bank Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(739, '2', 'update_student', 'update student', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(740, '2', 'remove', 'Remove', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(741, '2', 'are_you', 'Are you sure to remove siblings?', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(742, '2', 'download_sample_file', 'Download Sample File', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(743, '2', 'other_documents', 'Other Documents', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(744, '2', 'documents', 'Documents', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(745, '2', 'resume', 'Resume', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(746, '2', 'summery', 'Summery', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(747, '2', 'academic_records', 'Academic Records', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(748, '2', 'chairman_of_the_examination_board', 'Chairman of the Examination Board', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(749, '2', 'head_of_students_affairs', 'Head of Students Affairs', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(750, '2', 'merit', 'Merit', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(751, '2', 'merit_list', 'Merit List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(752, '2', 'academic', 'Academic', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(753, '2', 'staring', 'Staring', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(754, '2', 'ending', 'Ending', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(755, '2', 'evalution', 'Evalution', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(756, '2', 'marks_sheet_of', 'Marks Sheet of', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(757, '2', 'highest_marks', 'Highest Marks', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(758, '2', 'letter_grade', 'Letter Grade', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(759, '20', 'point1', 'Your CSV data should be in the format download file. The first line of your CSV file should be the column headers as in the table example. Also make sure that your file is UTF-8 to avoid unnecessary encoding problems.', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:04'),
(760, '20', 'point2', 'If the column you are trying to import is date make sure that is formatted in format Y-m-d (2018-06-06).', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(761, '20', 'point3', 'Duplicate \"Roll Number\" (unique in section) rows will not be imported. Roll No used or not you can get from student report page search on class & section', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(762, '20', 'point4', 'Duplicate \"Guardian email & Guardian Phone\" rows will not be imported. Guardian email & Guardian Phone used or not you can get from student report page search on class & section', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(763, '20', 'point5', 'For student Session use Id', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(764, '20', 'point6', 'For student \"Gender\" use ID', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(765, '20', 'point7', 'For student \"Blood Group\" use Id', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(766, '20', 'point8', 'For student \"Religion\" use ID', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(767, '20', 'point9', 'For student \"Guardian Relation\" use capital O for Other, F for Father M for Mother.', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(768, '20', 'save_bulk_students', 'save bulk students', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(769, '20', 'bank_account_number', 'Bank Account Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(770, '20', 'IFSC_Code', 'IFSC Code', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(771, '20', 'payment_id', 'Payment Id', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(772, '20', 'passing_marks', 'Passing Marks', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(773, '20', 'website', 'Website', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(774, '20', 'you_have', 'You have', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(775, '20', 'new', 'new', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(776, '20', 'notification', 'notification', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(777, '20', 'mark_all_as_read', 'Mark All As Read', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(778, '20', 'view_profile', 'view profile', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(779, '20', 'completed', 'Completed', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(780, '20', 'to_do_title', 'To Do Title', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(781, '20', 'Designation_of_Signature_person', 'Designation of Signature person', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(782, '20', 'student_wise', 'Student Wise', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(783, '20', 'print', 'Print', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(784, '20', 'discount_of', 'Discount of', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(785, '20', 'applied', 'Applied', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(786, '20', 'fees_assign', 'Fees Assign', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(787, '20', 'invoice_print', 'Invoice print', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(788, '20', 'background', 'Background', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(789, '20', 'style', 'Style', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(790, '20', 'color', 'Color', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(791, '20', 'select_position', 'Select Position', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(792, '20', 'background_settings', 'Background Settings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(793, '20', 'background_type', 'Background Type', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(794, '20', 'course_list', 'Course List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(795, '20', 'about_us', 'About Us', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(796, '20', 'custom_links', 'Custom Links', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(797, '20', 'operation_success_message', 'Operation Successful', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(798, '20', 'home_page', 'Home Page', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(799, '20', 'payment_id', 'Payment ID', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(800, '20', 'payment_ID', 'Payment ID', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(801, '20', 'contact', 'Contact', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(802, '20', 'page', 'Page', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(803, '20', 'SampleDataEmpty', 'Sample Data', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(804, '20', 'authentication_key_SID', 'Authentication KEY SID', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(805, '20', 'validation_data', 'Data Validation', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(806, '20', 'login_permission', 'Login Permission', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(807, '20', 'profile', 'Profile', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(808, '20', 'primary_color', 'Primary Color', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(809, '20', 'primary_color2', 'Primary Color 2', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(810, '20', 'primary_color3', 'Primary Color 3', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(811, '20', 'title_color', 'Title Color', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(812, '20', 'text_color', 'Text Color', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(813, '20', 'sidebar_bg', 'Sidebar', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(814, '3', 'change', 'Change', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(815, '3', 'confirm', 'Confirm', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(816, '3', 'restore_message', 'All sample data will restore in your database. Your existing data will be damage, so please take backup before restore.', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(817, '3', 'sample', 'Sample', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(818, '3', 'data', 'Data', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(819, '3', 'empty', 'Empty', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(820, '3', 'database', 'Database', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(821, '3', 'table', 'Table', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(822, '3', 'key', 'KEY', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(823, '3', 'msg91', 'MSG91', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(824, '3', 'system', 'System', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(825, '3', 'home', 'Home', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(826, '3', 'front', 'Front', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(827, '3', 'heading', 'Heading', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(828, '3', 'short', 'Short', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(829, '3', 'set_permission_in', 'Set permission in', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(830, '3', 'home', 'HOME', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(831, '3', 'custom', 'Custom', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(832, '3', 'links', 'Links', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(833, '3', 'link', 'Link', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(834, '3', 'url', 'URL', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(835, '3', 'facebook', 'Facebook', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(836, '3', 'behance', 'Behance', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(837, '3', 'dribbble', 'Dribbble', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(838, '3', 'twitter', 'Twitter', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(839, '3', 'activated', 'Activated', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(840, '3', 'make', 'Make', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(841, '3', 'disable', 'Disable', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(842, '3', 'admin_staff', 'Admin/Staff', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(843, '3', 'access', 'Access', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(844, '3', 'enable', 'Enable', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(845, '3', 'criteria', 'Criteria', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(846, '3', 'office', 'Office', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(847, '3', 'site', 'Site', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(848, '3', 'google', 'Google', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(849, '3', 'ads', 'Ads', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(850, '3', 'campaign', 'Campaign', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(851, '3', 'advertisement', 'Advertisement', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(852, '3', 'passive', 'Passive', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(853, '3', 'dead', 'Dead', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(854, '3', 'won', 'Won', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(855, '3', 'lost', 'Lost', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(856, '3', 'name', 'Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(857, '3', 'salmon', 'Salmon', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(858, '3', 'shashimi', 'Shashimi', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(859, '3', 'shashimi', 'Shashimi', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(860, '3', 'male', 'Male', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(861, '3', 'female', 'female', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(862, '3', 'add_fees', 'Add Fees', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(863, '3', 'pay_via_paystack', 'Pay via Paystack', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(864, '3', 'grand', 'Grand', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(865, '3', 'are_you_sure_to_detete_this_item', 'Are you sure to detete this item', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(866, '3', 'student_profile', 'Student Profile', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(867, '3', 'admission_number', 'Admission Nnumber', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(868, '3', 'sibling_snformation', 'Sibling Information', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(869, '3', 'sibling_name', 'Sibling Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(870, '3', 'father_name', 'Father’s Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(871, '3', 'mother_name', 'Mother’s Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(872, '3', 'guardian_name', 'Guardian’s Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(873, '3', 'transport_and_dormitory_details', 'Transport and Dormitory Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(874, '3', 'dormitory_name', 'Dormitory Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(875, '3', 'other', 'Other', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(876, '3', 'upload_document', 'Upload Document', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(877, '3', 'document_title', 'Document Title', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(878, '3', 'others_download', 'Others Download', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(879, '3', 'attendance_result', 'Attendance result', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(880, '3', 'dormitory_room_list', 'Dormitory Room List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(881, '3', 'evaluation_date', 'Evaluation Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(882, '3', 'submission_date', 'Submission Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(883, '3', 'homework_date', 'Homework date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(884, '3', 'subject_list', 'Subject List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(885, '3', 'made', 'Made', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(886, '3', 'answer_script', 'Answer Script', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(887, '3', 'student_book_issue', 'Student Book Issue', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(888, '3', 'all_issued_book_list', 'All Issued Book List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(889, '3', 'sorry', 'Sorry', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(890, '3', 'there_is_no_notice_for_you', 'There is no notice for you', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(891, '3', 'available_for', 'Available For', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(892, '3', 'take_online_exam', 'Take Online Exam', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(893, '3', 'select_subject', 'Select subject', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(894, '3', 'mark_as_holiday', 'Mark as Holiday', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(895, '3', 'teacher', 'Teacher', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(896, '3', 'upload_content', 'Upload Content', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(897, '3', 'assignment', 'Assignment', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(898, '3', 'content_title', 'Content Title', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(899, '3', 'study_material', 'Study Material', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(900, '3', 'syllabus', 'Syllabus', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(901, '3', 'other_download', 'Other Downloads', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(902, '3', 'available_for', 'Available for', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(903, '3', 'admin', 'Admin', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(904, '3', 'available_for_all_classes', 'Available for all classes', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(905, '3', 'action', 'Action', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(906, '3', 'other_downloads_list', 'Other Downloads List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(907, '4', 'payment', 'Payment', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(908, '4', 'payment_ID_Details', 'Payment ID Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(909, '4', 'mode', 'Mode', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(910, '4', 'amount', 'Amount', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(911, '4', 'discount', 'Discount', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(912, '4', 'fine', 'Fine', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(913, '4', 'fees_due_list', 'Fees Due List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(914, '4', 'due_birth', 'Due Birth', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(915, '4', 'deposit', 'Deposit', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(916, '4', 'balance', 'Balance', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(917, '4', 'master', 'Master', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(918, '4', 'assign', 'Assign', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(919, '4', 'item', 'Item', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(920, '4', 'content', 'content', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(921, '4', 'fees_code', 'Fees Code', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(922, '4', 'code', 'Code', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(923, '4', 'once', 'Once', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(924, '4', 'year', 'Year', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(925, '4', 'previous_Session_Balance_Fees', 'Previous Session Balance Fees', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(926, '4', 'previous_balance_can_only_update_now.', 'Previous balance already forwarded, you can only update now.', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(927, '4', 'fees_collection', 'Fees Collection', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(928, '4', 'collect_fees', 'Collect Fees', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(929, '4', 'search_fees_payment', 'Search Fees Payment', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(930, '4', 'search_fees_due', 'Search Fees Due', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(931, '4', 'fees_master', 'Fees Master', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(932, '4', 'fees_group', 'Fees Group', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(933, '4', 'fees_type', 'Fees Type', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(934, '4', 'fees_discount', 'Fees Discount', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(935, '4', 'fees_forward', 'Fees Carry Forward', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(936, '5', 'accounts', 'Accounts', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(937, '5', 'profit', 'Profit', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(938, '5', 'income', 'Income', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(939, '5', 'expense', 'Expense', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(940, '5', 'chart_of_account', 'Chart Of Account', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(941, '5', 'payment_method', 'Payment Method', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(942, '5', 'bank_account', 'Bank Account', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(943, '5', 'a_c_Head', 'A/C Head', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(944, '5', 'add_expense', 'Add Expense', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(945, '5', 'search_income_expense', 'Search Income/Expense', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(946, '5', 'item_Receive', 'Item Receive', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(947, '5', 'income_head', 'Income Head', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(948, '5', 'sells', 'Sells', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(949, '5', 'grand_total', 'Grand Total', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(950, '5', 'expense_head', 'Expense Head', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(951, '5', 'purchase', 'Purchase', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(952, '5', 'from', 'From', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(953, '5', 'head', 'Head', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(954, '5', 'method', 'Method', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(955, '5', 'account_name', 'Account Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(956, '5', 'opening_balance', 'Opening Balance', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(957, '5', 'account', 'Account', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(958, '6', 'human_resource', 'Human resource', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(959, '6', 'staff_directory', 'Staff Directory', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(960, '6', 'staff_attendance', 'Staff Attendance', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(961, '6', 'staff_attendance_report', 'Staff Attendance Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(962, '6', 'payroll', 'Payroll', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(963, '6', 'payroll_report', 'Payroll Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(964, '6', 'approve_leave_request', 'Approve Leave Request', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(965, '6', 'apply_leave', 'Apply Leave', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(966, '6', 'leave_type', 'Leave type', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(967, '6', 'department', 'Department', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(968, '6', 'designation', 'Designation', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(969, '6', 'staff_list', 'Staff List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(970, '6', 'add_staff', 'Add Staff', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(971, '6', 'search_by_staff_id', 'Search By Staff Id', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(972, '6', 'staff', 'Staff', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(973, '6', 'select_role', 'Select Role', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(974, '6', 'generate_payroll', 'Generate Payroll', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(975, '6', 'generated', 'Generate', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(976, '6', 'paid', 'Paid', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(977, '6', 'not', 'Not', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(978, '6', 'proceed_to_pay', 'Proceed to Pay', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(979, '6', 'view_payslip', 'View Payslip', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(980, '6', 'month', 'Month', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(981, '6', 'payslip', 'Payslip', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(982, '6', 'basic_salary', 'Basic Salary', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(983, '6', 'earnings', 'Earnings', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(984, '6', 'deductions', 'Deductions', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(985, '6', 'gross_salary', 'Gross Salary', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(986, '6', 'tax', 'Tax', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(987, '6', 'net_salary', 'Net Salary', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(988, '6', 'to', 'To', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(989, '6', 'apply_date', 'Apply date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(990, '6', 'pending', 'Pending', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(991, '6', 'approved', 'Approved', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(992, '6', 'cancelled', 'Cancelled', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(993, '6', 'leave_from', 'Leave From', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(994, '6', 'leave_to', 'Leave to', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(995, '6', 'reason', 'Reason', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(996, '6', 'leave', 'Leave', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(997, '6', 'type_name', 'Type Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(998, '6', 'total_days', 'Total Days', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(999, '6', 'leave_type_list', 'Leave Type List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1000, '6', 'departments', 'Departments', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1001, '6', 'department_name', 'Department Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1002, '6', 'designations', 'Designations', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1003, '6', 'staffs_payroll', 'Staffs Payroll', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1004, '6', 'staff_no', 'Staff No', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1005, '6', 'date_of_joining', 'Date of Joining', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1006, '6', 'value', 'Value', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1007, '6', 'payroll_summary', 'Payroll Summary', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1008, '6', 'calculate', 'calculate', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1009, '6', 'earning', 'Earning', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1010, '6', 'deduction', 'Deduction', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1011, '6', 'submit', 'Submit', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1012, '6', 'edit_staff', 'Edit Staff', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1013, '6', 'basic_info', 'Basic Info', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1014, '6', 'staff_number', 'Staff Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1015, '6', 'emergency_mobile', 'Emergency Mobile', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1016, '6', 'current_address', 'Current Address', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1017, '6', 'permanent_address', 'Permanent Address', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1018, '6', 'qualifications', 'Qualifications', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1019, '6', 'experience', 'Experience', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1020, '6', 'payroll_details', 'Payroll Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1021, '6', 'epf_no', 'EPF NO', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1022, '6', 'bank_info_details', 'Bank Info Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1023, '6', 'bank_account_name', 'Bank Account Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1024, '6', 'branch_name', 'Branch Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1025, '6', 'social_links_details', 'Social Links Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1026, '6', 'facebook_url', 'Facebook Url', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1027, '6', 'twitter_url', 'Twitter Url', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1028, '6', 'linkedin_url', 'Linkedin Url', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1029, '6', 'instragram_url', 'Instragram Url', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1030, '6', 'update_staff', 'Update Staff', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1031, '6', 'pending_leave_request', 'Pending Leave', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1032, '7', 'leave', 'Leave', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1033, '7', 'leave_define', 'Leave Define', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1034, '7', 'my_remaining_leaves', 'My Remaining Leaves', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1035, '7', 'remaining_days', 'Remaining Days', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1036, '7', 'extra_taken', 'Extra Taken', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1037, '7', 'total_days', 'Total Days', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1038, '7', 'days', 'Days', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1039, '8', 'examination', 'Examination', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1040, '8', 'exam', 'Exam', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1041, '8', 'add_exam_type', 'Add Exam Type', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1042, '8', 'exam_schedule', 'Exam Schedule', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1043, '8', 'marks_register', 'Marks Register', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1044, '8', 'final_result', 'Final Result', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1045, '8', 'seat_plan', 'Seat Plan', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1046, '8', 'exam_attendance', 'Exam Attendance', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1047, '8', 'with', 'With', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1048, '8', 'marks_grade', 'Marks Grade', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1049, '8', 'custom_result_setting', 'Custom Result Setting', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1050, '8', 'send_marks_by_sms', 'Send Marks By Sms', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1051, '8', 'percentage', 'Percentage', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1052, '8', 'question_group', 'Question Group', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1053, '8', 'with_out', 'With out', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1054, '8', 'question_bank', 'Question Bank', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1055, '8', 'online_exam', 'Online Exam', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1056, '8', 'exam_type', 'Exam Type', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1057, '8', 'exam_setup', 'Exam Setup', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1058, '8', 'exam_name', 'Exam Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1059, '8', 'sl', 'Sl', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1060, '8', 'select_subjects', 'Select Subjects', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1061, '8', 'exam_mark', 'Exam Mark', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1062, '8', 'add_mark_distributions', 'Add Mark Distributions', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1063, '8', 'exam_title', 'Exam Title', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1064, '8', 'ct_AT_Exam', 'Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1065, '8', 'mark_distribution', 'Mark Distribution', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1066, '8', 'subject', 'Subject', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1067, '8', 'total_mark', 'Total Mark', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1068, '8', 'view_status', 'View Status', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1069, '8', 'copy', 'Copy', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1070, '8', 'add_exam_schedule', 'add Exam Schedule', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1071, '8', 'FALSE', 'FALSE', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1072, '8', 'exam_list', 'Exam List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1073, '8', 'archive', 'Archive', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1074, '8', 'marks', 'Marks', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1075, '8', 'official', 'Official', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1076, '8', 'select_exam', 'Select Exam', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1077, '8', 'transcript', 'Transcript', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1078, '8', 'percent', 'Percent', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1079, '8', 'previous', 'Previous', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1080, '8', 'seat_plan_report', 'Seat Plan Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1081, '8', 'record', 'Record', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1082, '8', 'assign_students', 'Assign Students', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1083, '8', 'search_by_year', 'Year', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1084, '8', 'start_end_time', 'start-end time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1085, '8', 'button', 'Button', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1086, '8', 'total_students', 'Total Students', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1087, '8', 'exam_not_found', 'Exam schedule is not available.', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1088, '8', 'attendance_create', 'Attendance Create', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1089, '8', 'biometrics', 'Biometrics', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1090, '8', 'grade', 'Grade', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1091, '8', 'consider_start_time', 'Consider Start Time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1092, '8', 'gpa', 'GPA', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1093, '8', 'consider_end_time', 'Consider End Time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1094, '8', 'percent_from', 'Percent From', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1095, '8', 'PDF', 'PDF', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1096, '8', 'percent_upto', 'Percent Upto', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05');
INSERT INTO `sm_language_phrases` (`id`, `modules`, `default_phrases`, `en`, `active_status`, `created_at`, `updated_at`) VALUES
(1097, '8', 'evalution', 'Evalution', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1098, '8', 'send_marks_via_SMS', 'Send Marks Via SMS', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1099, '8', 'Ending', 'Ending', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1100, '8', 'select_receiver', 'Select Receiver', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1101, '8', 'final_result', 'Final Result', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1102, '8', 'students', 'Students', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1103, '8', 'third_term', 'Third Term', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1104, '8', 'select_group', 'Select Group', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1105, '8', 'second_term', 'Second Term', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1106, '8', 'question_type', 'Question Type', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1107, '8', 'first_term', 'First term', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1108, '8', 'multiple_choice', 'Multiple Choice', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1109, '8', 'create_class_routine', 'Create class routine', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1110, '8', 'true_false', 'True False', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1111, '8', 'optional', 'Optional', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1112, '8', 'fill_in_the_blanks', 'Fill in the Blanks', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1113, '8', 'question', 'Question', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1114, '8', 'number_of_options', 'Number Of Options', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1115, '8', 'with', 'With', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1116, '8', 'create', 'Create', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1117, '8', 'with_out', 'With out', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1118, '8', 'option', 'option', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1119, '8', 'TRUE', 'TRUE', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1120, '8', 'FALSE', 'FALSE', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1121, '8', 'suitable_words', 'Suitable Words', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1122, '8', 'start_time', 'Start Time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1123, '8', 'end_time', 'End time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1124, '8', 'minimum_percentage', 'Minimum Percentage', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1125, '8', 'instruction', 'Instruction', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1126, '8', 'exam_date', 'Exam Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1127, '8', 'time', 'Time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1128, '8', 'published', 'Published', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1129, '8', 'manage_question', 'Manage Question', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1130, '8', 'published_now', 'Published Now', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1131, '8', 'view_result', 'View Result', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1132, '8', 'monday', 'Monday', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1133, '8', 'tuesday', 'Tuesday', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1134, '8', 'wednesday', 'Wednesday', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1135, '8', 'thursday', 'Thursday', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1136, '8', 'friday', 'Friday', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1137, '8', 'Saturday', 'Saturday', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1138, '8', 'sunday', 'Sunday', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1139, '8', 'room_number', 'Room Number', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1140, '8', 'not_scheduled', 'Not Scheduled', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1141, '8', 'result_view', 'Result View', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1142, '8', 'total_marks', 'Total Marks', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1143, '8', 'obtained_marks', 'Obtained Marks', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1144, '8', 'marking', 'Marking', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1145, '8', 'view_answer_marking', 'View answer & marking', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1146, '8', 'online_exam_question', 'Online Exam Question', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1147, '8', 'question_list', 'Question List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1148, '8', 'questions', 'Questions', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1149, '8', 'exam_details', 'Exam Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1150, '8', 'passing_percentage', 'Passing Percentage', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1151, '8', 'online_active_exams', 'Online Active Exams', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1152, '8', 'take_exam', 'Take Exam', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1153, '8', 'classes', 'Classes', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1154, '8', 'exam_terms', 'Exam Terms', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1155, '8', 'document', 'document', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1156, '8', 'timeline', 'Timeline', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1157, '8', 'Parent_Guardian_Details', 'Parent / Guardian Details', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1158, '8', 'full_marks', 'Full Marks', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1159, '8', 'results', 'Results', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1160, '8', 'visible_to_this_person', 'Visible to this person', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1161, '9', 'academics', 'Academics', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1162, '9', 'class_routine', 'Class Routine', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1163, '9', 'class_routine_create', 'Class Routine Create', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1164, '9', 'view_teacher_routine', 'View Class Routine(Teacher)', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1165, '9', 'assign_subject', 'Assign Subject', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1166, '9', 'assign_subject_create', 'Assign Subject create', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1167, '9', 'assign_class_teacher', 'Assign Class Teacher', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1168, '9', 'subjects', 'Subjects', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1169, '9', 'class', 'Class', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1170, '9', 'section', 'Section', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1171, '9', 'class_room', 'Class Room', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1172, '9', 'n_a', 'N/A', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1173, '9', 'class_teacher', 'Class Teacher', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1174, '9', 'assign_teacher', 'Assign teacher', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1175, '9', 'subject_name', 'Subject Name', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1176, '9', 'theory', 'Theory', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1177, '9', 'practical', 'Practical', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1178, '9', 'subject_code', 'Subject Code', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1179, '9', 'subject_type', 'Subject Type', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1180, '9', 'capacity', 'Capacity', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1181, '9', 'cl_ex_time_setup', 'Cl/Ex Time Setup', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1182, '9', 'class_exam_time_setup', 'Class & Exam Time Setup', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1183, '9', 'class_time', 'Class Time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1184, '9', 'time_type', 'Time Type', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1185, '9', 'exam_time', 'Exam Time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1186, '9', 'period', 'Period', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1187, '9', 'select_time', 'Select Time', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1188, '9', 'not_assigned_yet', 'Not assigned yet', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1189, '9', 'of', 'of', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1190, '9', 'about', 'About', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1191, '9', 'payable', 'Payable', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1192, '9', 'start', 'Start', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1193, '9', 'end', 'End', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1194, '9', 'uqinue_fine_list', 'Uqinue fine list', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1195, '9', 'days_after_date', 'Days After Due Date', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1196, '9', 'fixed', 'Fixed', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1197, '9', 'ltl_rtl', 'LTL To RTL', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1198, '9', 'testimonial_list', 'Testimonial List', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1199, '9', 'assign_optional_subject', 'Assign Optional Subject', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1200, '9', 'term_wise_report', 'Term Wise Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1201, '9', 'type_wise_report', 'Type Wise Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1202, '9', 'due_wise_report', 'Due Wise Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1203, '9', 'contract_type', 'Contract Type', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1204, '9', 'verify', 'Verify', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1205, '9', 'addOns', 'Add Ons', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1206, '9', 'adons', 'Add Ons', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1207, '9', 'due_wise_report', 'Due Wise Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1208, '9', 'type_wise_report', 'Type Wise Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1209, '9', 'term_wise_report', 'Term Wise Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1210, '0', 'export', 'Export', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1211, '0', 'PDF', 'PDF', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1212, '0', 'biometrics', 'Biometrics', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1213, '0', 'bio', 'Biometrics', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1214, '0', 'bio', 'Biometrics', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1215, '0', 'buy', 'Buy', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1216, '0', 'csu', 'Custom URL', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1217, '0', 'now', 'Now', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1218, '19', 'social_media', 'Social Media', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1219, '19', 'icon', 'Icon', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1220, '3', 'student_delete_note', 'Note: if delete, then all related information will removed.', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1221, '6', 'staff_delete_note', 'Note: if delete, then all related information will removed.', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1222, '17', 'cumulative', 'Cumulative', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1223, '17', 'sheet', 'Sheet', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1224, '17', 'report', 'Report', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1225, '17', 'contonuous', 'Contonuous', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1226, '17', 'assessment', 'Assessment', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1227, '17', 'termly', 'Termly', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1228, '17', 'academic', 'Academic', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1229, '17', 'performance', 'Performance', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1230, '17', 'terminal', 'Terminal', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1231, '17', 'sheet', 'Sheet', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1232, '17', 'continuous', 'Continuous', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1233, '17', 'assessment', 'Assessment', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1234, '17', 'version', 'Version', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1235, '17', 'institution', 'institution', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1236, '17', 'one', 'one', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1237, '17', 'school', 'school', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1238, '17', 'opening', 'opening', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1239, '17', 'confirm_password', 'confirm password', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1240, '17', 'or', 'or', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1241, '17', 'routine', 'routine', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1242, '17', 'ticket_comment', 'Ticke Comment', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1243, '17', 'manager', 'manager', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1244, '17', 'registration', 'registration', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1245, '17', 'after', 'after', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1246, '17', 'my', 'my', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1247, '17', 'ticket', 'ticket', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1248, '17', 'guardian_mobile', 'guardian mobile', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1249, '17', 'is_approved', 'is approved', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1250, '17', 'is_enabled', 'Is Enabled', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1251, '17', 'ticket_list', 'ticket list', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1252, '17', 'priority_list', 'priority list', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1253, '17', 'ticket_priority', 'ticket priority', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1254, '17', 'ticket_category', 'ticket category', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1255, '17', 'category_list', 'category list', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1256, '17', 'ticket_system', 'ticket system', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1257, '17', 'delete_uploaded_content', 'delete uploaded content', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1258, '17', 'add_content', 'add content', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1259, '18', 'download_uploaded_content', 'download uploaded content', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1260, '18', 'password_reset_message', 'password reset message', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1261, '18', 'student_login_credential_message', 'student login credential message', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1262, '18', 'guardian_login_credential_message', 'guardian login credential message', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1263, '18', 'staff_login_credential_message', 'staff login credential message', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1264, '18', 'dues_payment_message', 'dues payment message', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1265, '18', 'email_footer_text', 'email footer text', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1266, '18', 'registration', 'Registration', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1267, '18', 'after', 'After', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1268, '18', 'header', 'Header', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1269, '18', 'footer', 'Footer', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1270, '18', 'footer', 'Footer', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1271, '18', 'sec', 'Section', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1272, '18', 'guardian_mobile', 'Guardian Mobile', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1273, '18', 'are_you_sure_to_approve', 'Are you sure to approve this item?', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1274, '18', 'guardian_mobile', 'Guardian Mobile', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1275, '18', 'saas', 'SAAS', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1276, '18', 'how_do_you_know_us', 'How do you know us', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1277, '18', 'recaptcha', 'Recaptcha', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1278, '18', 'nocaptcha_sitekey', 'noCaptcha Sitekey', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1279, '18', 'nocaptcha_secret', 'noCaptcha Secret', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1280, '18', 'guardian_relation', 'Guardian Relation', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1281, '18', 'relation', 'Relation', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1282, '18', 'promossion_without', 'Promotion Without', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1283, '18', 'promossion', 'Promotion', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1284, '18', 'administrator', 'Administrator', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1285, '18', 'age', 'Age', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1286, '18', 'note_for_multiple_child_registration', 'If you want to register your another child please contact with school.', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05'),
(1287, '18', 'click_for_recaptcha_create', 'Click here for create Recaptcha (v2).', 1, '2020-05-17 05:35:23', '2020-08-13 06:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `sm_leave_defines`
--

CREATE TABLE `sm_leave_defines` (
  `id` int(10) UNSIGNED NOT NULL,
  `days` int(10) UNSIGNED DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_leave_requests`
--

CREATE TABLE `sm_leave_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `apply_date` date DEFAULT NULL,
  `leave_from` date DEFAULT NULL,
  `leave_to` date DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approve_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'P for Pending, A for Approve, R for reject',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `leave_define_id` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `type_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_leave_types`
--

CREATE TABLE `sm_leave_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_days` int(10) UNSIGNED DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_leave_types`
--

INSERT INTO `sm_leave_types` (`id`, `type`, `total_days`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Sick Leave', 2, 1, '2020-10-18 05:27:33', '2020-10-18 05:27:33', 1, 1, 1),
(2, 'Maternity leave', 90, 1, '2020-10-18 05:28:00', '2020-10-18 05:28:00', 1, 1, 1),
(3, 'Casual leave', 12, 1, '2020-10-18 05:28:27', '2020-10-18 05:28:27', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_library_members`
--

CREATE TABLE `sm_library_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `member_ud_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `member_type` int(10) UNSIGNED DEFAULT NULL,
  `student_staff_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_marks_grades`
--

CREATE TABLE `sm_marks_grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `grade_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` double(8,2) DEFAULT NULL,
  `up` double(8,2) DEFAULT NULL,
  `percent_from` int(11) DEFAULT NULL,
  `percent_upto` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_marks_grades`
--

INSERT INTO `sm_marks_grades` (`id`, `grade_name`, `gpa`, `from`, `up`, `percent_from`, `percent_upto`, `description`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'A+', '5.00', 5.00, 5.99, 80, 100, 'Outstanding !', 1, '2020-05-17 05:35:13', '2020-05-17 05:35:13', 1, 1, 1),
(2, 'A', '4.00', 4.00, 4.99, 70, 79, 'Very Good !', 1, '2020-05-17 05:35:13', '2020-05-17 05:35:13', 1, 1, 1),
(3, 'A-', '3.50', 3.50, 3.99, 60, 69, 'Good !', 1, '2020-05-17 05:35:13', '2020-05-17 05:35:13', 1, 1, 1),
(4, 'B', '3.00', 3.00, 3.49, 50, 59, 'Outstanding !', 1, '2020-05-17 05:35:13', '2020-05-17 05:35:13', 1, 1, 1),
(5, 'C', '2.00', 2.00, 2.99, 40, 49, 'Bad !', 1, '2020-05-17 05:35:13', '2020-05-17 05:35:13', 1, 1, 1),
(6, 'D', '1.00', 1.00, 1.99, 33, 39, 'Very Bad !', 1, '2020-05-17 05:35:13', '2020-05-17 05:35:13', 1, 1, 1),
(7, 'F', '0.00', 0.00, 0.99, 0, 32, 'Failed !', 1, '2020-05-17 05:35:13', '2020-05-17 05:35:13', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_marks_registers`
--

CREATE TABLE `sm_marks_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_marks_register_children`
--

CREATE TABLE `sm_marks_register_children` (
  `id` int(10) UNSIGNED NOT NULL,
  `marks` int(11) DEFAULT NULL,
  `abs` int(11) NOT NULL DEFAULT 0 COMMENT '1 for absent, 0 for present',
  `gpa_point` double(8,2) DEFAULT NULL,
  `gpa_grade` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `marks_register_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_marks_send_sms`
--

CREATE TABLE `sm_marks_send_sms` (
  `id` int(10) UNSIGNED NOT NULL,
  `sms_send_status` tinyint(4) NOT NULL DEFAULT 1,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_mark_stores`
--

CREATE TABLE `sm_mark_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_roll_no` int(11) NOT NULL DEFAULT 1,
  `student_addmission_no` int(11) NOT NULL DEFAULT 1,
  `total_marks` double(8,2) NOT NULL DEFAULT 0.00,
  `is_absent` tinyint(4) NOT NULL DEFAULT 1,
  `teacher_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_term_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_setup_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_modules`
--

CREATE TABLE `sm_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_modules`
--

INSERT INTO `sm_modules` (`id`, `name`, `active_status`, `order`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Dashboard', 1, 0, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(2, 'Admin Section', 1, 1, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(3, 'Student Information', 1, 2, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(4, 'Teacher', 1, 3, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(5, 'Fees Collection', 1, 4, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(6, 'Accounts', 1, 5, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(7, 'Human resource', 1, 6, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(8, 'Leave Application', 1, 7, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(9, 'Examination', 1, 8, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(10, 'Academics', 1, 9, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(11, 'HomeWork', 1, 10, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(12, 'Communicate', 1, 11, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(13, 'Library', 1, 12, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(14, 'Inventory', 1, 13, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(15, 'Transport', 1, 14, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(16, 'Dormitory', 1, 15, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(17, 'Reports', 1, 16, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(18, 'System Settings', 1, 17, '2020-05-17 05:35:16', NULL, 1, 1, 1),
(19, 'Common', 1, 18, '2020-05-17 05:35:16', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_module_links`
--

CREATE TABLE `sm_module_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_module_links`
--

INSERT INTO `sm_module_links` (`id`, `module_id`, `name`, `route`, `active_status`, `created_by`, `updated_by`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dashboard Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(2, 1, '➡ Number of Student', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(3, 1, '➡ Number of Teacher', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(4, 1, '➡ Number of Parents', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(5, 1, '➡ Number of Staff', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(6, 1, '➡ Current Month Income and Expense Chart', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(7, 1, '➡ Current Year Income and Expense Chart', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(8, 1, '➡ Notice Board', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(9, 1, '➡ Calendar Section', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(10, 1, '➡ To Do list', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(11, 2, 'Admin Section Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(12, 2, 'Admission Query menu', 'admission-query', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(13, 2, '➡ Create Query Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(14, 2, '➡ Create Query Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(15, 2, '➡ Create Query Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(16, 2, 'Visitor Book Menu', 'visitor', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(17, 2, '➡ Visitor  Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(18, 2, '➡ Visitor Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(19, 2, '➡ Visitor Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(20, 2, '➡ Visitor Download', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(21, 2, 'Complaint Menu', 'complaint', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(22, 2, '➡ Complaint Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(23, 2, '➡ Complaint Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(24, 2, '➡ Complaint Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(25, 2, '➡ Complaint Download', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(26, 2, '➡ Complaint View', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(27, 2, 'Postal Receive Menu', 'postal-receive', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(28, 2, '➡ Postal Receive Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(29, 2, '➡ Postal Receive Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(30, 2, '➡ Postal Receive Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(31, 2, '➡ Postal Receive Download', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(32, 2, 'Postal Dispatch Menu', 'postal-dispatch', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(33, 2, '➡ Postal Dispatch Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(34, 2, '➡ Postal Dispatch Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(35, 2, '➡ Postal Dispatch Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(36, 2, 'Phone Call Log Menu', 'phone-call', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(37, 2, '➡ Phone Call Log Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(38, 2, '➡ Phone Call Log Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(39, 2, '➡ Phone Call Log Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(40, 2, '➡ Phone Call Log Download', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(41, 2, 'Admin Setup Menu', 'setup-admin', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(42, 2, '➡ Admin Setup Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(43, 2, '➡ Admin Setup Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(44, 2, '➡ Admin Setup Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(45, 2, 'Student ID Menu', 'student-id-card', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(46, 2, '➡ Student ID Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(47, 2, '➡ Student ID Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(48, 2, '➡ Student ID Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(49, 2, 'Student Certificate Menu', 'student-certificate', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(50, 2, '➡ Student Certificate Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(51, 2, '➡ Student Certificate Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(52, 2, '➡ Student Certificate Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(53, 2, 'Generate Certificate Menu', 'generate-certificate', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(54, 2, '➡ Generate Certificate Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(55, 2, '➡ Generate Certificate Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(56, 2, '➡ Generate Certificate Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(57, 2, 'Generate ID Card Menu', 'generate-id-card', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(58, 2, '➡ Generate ID Card Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(59, 2, '➡ Generate ID Card Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(60, 2, '➡ Generate ID Card Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(61, 3, 'Student Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(62, 3, 'Student Admission Menu', 'student-admission', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(63, 3, '➡ Import Student', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(64, 3, 'Student List Menu', 'student-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(65, 3, '➡ Student List Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(66, 3, '➡ Student List Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(67, 3, '➡ Student List Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(68, 3, 'Student Attendance Menu', 'student-attendance', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(69, 3, '➡ Student Attendance Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(70, 3, 'Student Attendance Report Menu', 'student-attendance-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(71, 3, 'Student Category Menu', 'student-category', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(72, 3, '➡ Student Category Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(73, 3, '➡ Student Category Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(74, 3, '➡ Student Category Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(75, 3, '➡ Student Category Download', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(76, 3, 'Student Group Menu', 'student-group', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(77, 3, '➡ Student Group Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(79, 3, '➡ Student Group Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(80, 3, '➡ Student Group Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(81, 3, 'Student Promote Menu', 'student-promote', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(82, 3, '➡ Student Promote Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(83, 3, 'Disabled Students Menu', 'disabled-student', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(84, 3, '➡ Disabled Students Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(85, 3, '➡ Disabled Students Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(86, 3, '➡ Disabled Students Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(87, 4, 'Teacher Section Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(88, 4, 'Upload Content Menu', 'upload-content', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(89, 4, '➡ Create Content Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(90, 4, '➡ Content Download', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(91, 4, '➡ Content Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(92, 4, 'Assignment Menu', 'assignment-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(93, 4, '➡ Create Assignment Add', '', 0, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(94, 4, '➡ Assignment Download', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(95, 4, '➡ Assignment Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(96, 4, 'Study Material Menu', 'study-metarial-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(97, 4, '➡ Create Study Material Add', '', 0, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(98, 4, '➡ Study Material Download', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(99, 4, '➡ Study Material Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(100, 4, 'Syllabus Menu', 'syllabus-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(101, 4, '➡ Create Study Syllabus Add', '', 0, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(102, 4, '➡ Study Syllabus Edit', '', 0, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(103, 4, '➡ Study Syllabus Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(104, 4, '➡ Study Syllabus Download', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(105, 4, 'Other Downloads Menu', 'other-download-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(106, 4, '➡ Other Downloads Download', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(107, 4, '➡ Other Downloads Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(108, 5, 'Fees Collection Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(109, 5, 'Collect Fees Menu', 'collect-fees', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(110, 5, '➡ Create Collect Fees', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(111, 5, '➡ Collect Fees Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(112, 5, '➡ Collect Fees Print', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(113, 5, 'Search Fees Payment Menu', 'search-fees-payment', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(114, 5, '➡ Create Search Fees Payment Add', '', 0, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(115, 5, '➡ Search Fees Payment View', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(116, 5, 'Search Fees Due Menu', 'search-fees-due', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(117, 5, '➡ Search Fees Due View', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(118, 5, 'Fees Master Menu', 'fees-master', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(119, 5, '➡ Create Fees Master Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(120, 5, '➡ Fees Master Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(121, 5, '➡ Fees Master Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(122, 5, '➡ Fees Master Assign', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(123, 5, 'Fees Group Menu', 'fees-group', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(124, 5, '➡ Create Fees Group Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(125, 5, '➡ Fees Group Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(126, 5, '➡ Fees Group Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(127, 5, 'Fees Type Menu', 'fees-type', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(128, 5, '➡ Create Fees Type Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(129, 5, '➡ Fees Type Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(130, 5, '➡ Fees Type Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(131, 5, 'Fees Discount Menu', 'fees-discount', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(132, 5, '➡ Create Fees Discount Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(133, 5, '➡ Fees Discount Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(134, 5, '➡ Fees Discount Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(135, 5, '➡ Fees Discount Assign', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(136, 5, 'Fees Carry Forward Menu', 'fees-forward', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(137, 6, 'Accounts Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(138, 6, 'Profit Menu', 'profit', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(139, 6, 'Income Menu', 'add-income', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(140, 6, '➡ Create Income Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(141, 6, '➡ Income Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(142, 6, '➡ Income Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(143, 6, 'Expense Menu', 'add-expense', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(144, 6, '➡ Create Expense Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(145, 6, '➡ Expense Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(146, 6, '➡ Expense Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(147, 6, 'Search Menu', 'search-account', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(148, 6, 'Chart of Account Menu', 'chart-of-account', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(149, 6, '➡ Create Chart of Account Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(150, 6, '➡ Chart of Account Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(151, 6, '➡ Chart of Account Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(152, 6, 'Payment method Menu', 'payment-method', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(153, 6, '➡ Create Payment method Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(154, 6, '➡ Payment method Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(155, 6, '➡ Payment method Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(156, 6, 'Bank Account Menu', 'bank-account', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(157, 6, '➡ Create Bank Account Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(158, 6, '➡ Bank Account Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(159, 6, '➡ Bank Account Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(160, 7, 'Human Resource Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(161, 7, 'Staff Directory Menu', 'staff-directory', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(162, 7, '➡ Staff Directory Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(163, 7, '➡ Staff Directory Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(164, 7, '➡ Staff Directory Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(165, 7, 'Staff Attendance Menu', 'staff-attendance', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(166, 7, '➡ Staff Attendance Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(167, 7, '➡ Staff Attendance Edit', '', 0, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(168, 7, '➡ Staff Attendance Delete', '', 0, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(169, 7, 'Staff Attendance Report Menu', 'staff-attendance-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(170, 7, 'Payroll Menu', 'payroll', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(171, 7, '➡ Payroll Edit', '', 0, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(172, 7, '➡ Payroll Delete', '', 0, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(173, 7, '➡ Payroll Search', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(174, 7, '➡ Generate Payroll', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(175, 7, '➡ Payroll Create', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(176, 7, '➡ Payroll Proceed To Pay', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(177, 7, '➡ View Payslip', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(178, 7, 'Payroll Report Menu', 'payroll-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(179, 7, '➡ Payroll Report Search', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(180, 7, 'Designations Menu', 'designation', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(181, 7, '➡ Designations Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(182, 7, '➡ Designations Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(183, 7, '➡ Designations Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(184, 7, 'Departments Menu', 'department', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(185, 7, '➡ Departments Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(186, 7, '➡ Departments Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(187, 7, '➡ Departments Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(188, 8, 'Leave Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(189, 8, 'Approve Leave Menu', 'approve-leave', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(190, 8, '➡ Approve Leave Add', '', 0, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(191, 8, '➡ Approve Leave Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(192, 8, '➡ Approve Leave Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(193, 8, 'Apply Leave Menu', 'apply-leave', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(194, 8, '➡ Apply Leave View', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(195, 8, '➡ Apply Leave Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(196, 8, 'Pending Leave Menu', 'pending-leave', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(197, 8, '➡ Pending Leave View', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(198, 8, '➡ Pending Leave Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(199, 8, 'Leave Define Menu', 'leave-define', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(200, 8, '➡ Leave Define Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(201, 8, '➡ Leave Define Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(202, 8, '➡ Leave Define Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(203, 8, 'Leave Type Menu', 'leave-type', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(204, 8, '➡ Leave Type Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(205, 8, '➡ Leave Type Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(206, 8, '➡ Leave Type Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(207, 9, 'Examination Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(208, 9, 'Add Exam Type Menu', 'exam-type', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(209, 9, '➡ Add Exam Type Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(210, 9, '➡ Add Exam Type Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(211, 9, '➡ Add Exam Type Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(214, 9, 'Exam Setup Menu', 'exam', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(215, 9, '➡ Exam Setup Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(216, 9, '➡ Exam Setup Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(217, 9, 'Exam Schedule Menu', 'exam-schedule', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(218, 9, '➡ Exam Schedule Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(219, 9, '➡ Exam Schedule Create', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(220, 9, 'Exam Attendance Menu', 'exam-attendance', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(221, 9, '➡ Exam Attendance Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(222, 9, 'Marks Register Menu', 'marks-register', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(223, 9, '➡ Marks Register Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(224, 9, '➡ Marks Register Create', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(225, 9, 'Marks Grade Menu', 'marks-grade', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(226, 9, '➡ Marks Grade Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(227, 9, '➡ Marks Grade Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(228, 9, '➡ Marks Grade Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(229, 9, 'Send Marks By SMS Menu', 'send-marks-by-sms', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(230, 9, 'Question Group Menu', 'question-group', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(231, 9, '➡ Question Group Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(232, 9, '➡ Question Group Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(233, 9, '➡ Question Group Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(234, 9, 'Question Bank Menu', 'question-bank', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(235, 9, '➡ Question Bank Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(236, 9, '➡ Question Bank Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(237, 9, '➡ Question Bank Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(238, 9, 'Online Exam Menu', 'online-exam', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(239, 9, '➡ Online Exam Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(240, 9, '➡ Online Exam Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(241, 9, '➡ Online Exam Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(242, 9, '➡ Online Exam Manage Question', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(243, 9, '➡ Online Exam Marks Register', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(244, 9, '➡ Online Exam Result', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(245, 10, 'Academics Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(246, 10, 'Class Routine Menu', 'class-routine-new', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(247, 10, '➡ Class Routine Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(248, 10, '➡ Class Routine Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(249, 10, '➡ Class Routine Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(250, 10, 'Assign Subject Menu', 'assign-subject', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(251, 10, '➡ Assign Subject Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(252, 10, '➡ Assign Subject Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(253, 10, 'Assign Class Teacher Menu', 'assign-class-teacher', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(254, 10, '➡ Assign Class Teacher Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(255, 10, '➡ Assign Class Teacher Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(256, 10, '➡ Assign Class Teacher Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(257, 10, 'Subjects Menu', 'subject', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(258, 10, '➡ Subjects Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(259, 10, '➡ Subjects Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(260, 10, '➡ Subjects Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(261, 10, 'Class Menu', 'class', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(262, 10, '➡ Class Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(263, 10, '➡ Class Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(264, 10, '➡ Class Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(265, 10, 'Section Menu', 'section', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(266, 10, '➡ Section Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(267, 10, '➡ Section Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(268, 10, '➡ Section Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(269, 10, 'Class Room Menu', 'class-room', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(270, 10, '➡ Class Room Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(271, 10, '➡ Class Room Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(272, 10, '➡ Class Room Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(273, 10, 'CL/EX Time Setup Menu', 'class-time', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(274, 10, '➡ CL/EX Time Setup Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(275, 10, '➡ CL/EX Time Setup Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(276, 10, '➡ CL/EX Time Setup Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(277, 11, 'Homework Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(278, 11, 'Add Homework Menu', 'add-homeworks', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(279, 11, '➡ Create Homework Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(280, 11, 'Homework List Menu', 'homework-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(281, 11, '➡ Homework List Evaluation', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(282, 11, '➡ Homework List Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(283, 11, '➡ Homework List Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(284, 11, 'Homework Evaluation Report Menu', 'evaluation-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(285, 11, '➡ Homework Evaluation Report View', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(286, 12, 'Communicate Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(287, 12, 'Notice Board Menu', 'notice-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(288, 12, '➡ Create Notice Board Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(289, 12, '➡ Create Notice Board Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(290, 12, '➡ Create Notice Board Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(291, 12, 'Send Email / SMS  Menu', 'send-email-sms-view', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(292, 12, '➡ Send Email / SMS  Send', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(293, 12, 'Email / SMS Log Menu', 'email-sms-log', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(294, 12, 'Event Menu', 'event', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(295, 12, '➡ Event Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(296, 12, '➡ Event Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(297, 12, '➡ Event Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(298, 13, 'Library Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(299, 13, 'Add Book Menu', 'add-book', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(300, 13, '➡ Create Add Book Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(301, 13, 'Book List  Menu', 'book-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(302, 13, '➡ Create Book List Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(303, 13, '➡ Create Book List Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(304, 13, 'Book Category Menu', 'book-category-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(305, 13, '➡ Book Category Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(306, 13, '➡ Book Category Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(307, 13, '➡ Book Category Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(308, 13, 'Add Member Menu', 'library-member', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(309, 13, '➡ Add Member Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(310, 13, '➡ Add Member Cancel', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(311, 13, 'Issue/Return Book Menu', 'member-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(312, 13, '➡ Issue/Return Book Issue', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(313, 13, '➡ Issue/Return Book Return', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(314, 13, 'All Issued Book', 'all-issed-book', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(315, 14, 'Inventory Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(316, 14, 'Item Category Menu', 'item-category', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(317, 14, '➡ Create Item Category Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(318, 14, '➡ Create Item Category Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(319, 14, '➡ Item Category Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(320, 14, 'Item List Menu', 'item-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(321, 14, '➡ Create Item List Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(322, 14, '➡ Item List Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(323, 14, '➡ Item List Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(324, 14, 'Item Store Menu', 'item-store', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(325, 14, '➡ Create Item Store Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(326, 14, '➡ Item Store Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(327, 14, '➡ Item Store Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(328, 14, 'Supplier Menu', 'suppliers', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(329, 14, '➡ Create Supplier Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(330, 14, '➡ Supplier Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(331, 14, '➡ Supplier Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(332, 14, 'Item Receive Menu', 'item-receive', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(333, 14, '➡ Create Item Receive Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(334, 14, 'Item Receive List Menu', 'item-receive-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(335, 14, '➡ Create Item Receive List Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(336, 14, '➡ Item Receive List Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(337, 14, '➡ Item Receive List View', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(338, 14, '➡ Item Receive List Cancel', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(339, 14, 'Item Sell Menu', 'item-sell-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(340, 14, '➡ Create Item Sell Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(341, 14, '➡ Item Sell Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(342, 14, '➡ Item Sell Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(343, 14, '➡ Add Payment', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(344, 14, '➡ View Payment', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(345, 14, 'Item Issue Menu', 'item-issue', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(346, 14, '➡ Create Item Issue Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(347, 14, '➡ Item Issue Return', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(348, 15, 'Transport Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(349, 15, 'Routes Menu', 'transport-route', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(350, 15, '➡ Create Routes Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(351, 15, '➡ Create Routes Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(352, 15, '➡ Create Routes Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(353, 15, 'Vehicle Menu', 'vehicle', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(354, 15, '➡ Create Vehicle Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(355, 15, '➡ Create Vehicle Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(356, 15, '➡ Create Vehicle Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(357, 15, 'Assign Vehicle Menu', 'assign-vehicle', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(358, 15, '➡ Create Assign Vehicle Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(359, 15, '➡ Create Assign Vehicle Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(360, 15, '➡ Create Assign Vehicle Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(361, 15, 'Student Transport Report Menu', 'student-transport-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(362, 16, 'Dormitory Menu', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(363, 16, 'Dormitory Rooms Menu', 'room-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(364, 16, '➡ Create Dormitory Rooms Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(365, 16, '➡ Create Dormitory Rooms Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(366, 16, '➡ Create Dormitory Rooms Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(367, 16, 'Dormitory Menu', 'dormitory-list', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(368, 16, '➡ Create Dormitory Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(369, 16, '➡ Create Dormitory Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(370, 16, '➡ Create Dormitory Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(371, 16, 'Room Type Menu', 'room-type', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(372, 16, '➡ Create Room Type Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(373, 16, '➡ Create Room Type Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(374, 16, '➡ Create Room Type Delete', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(375, 16, 'Student Dormitory Report Menu', 'student-dormitory-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(376, 17, 'Reports Menu', 'student-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(377, 17, 'Guardian Report Menu', 'guardian-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(378, 17, 'Student History Menu', 'student-history', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(379, 17, 'Student Login Report', 'student-login-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(380, 17, '➡ Student Login Report Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(381, 17, 'Fees Statement Menu', 'fees-statement', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(382, 17, 'Balance Fees Report Menu', 'balance-fees-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(383, 17, 'Transaction Report Menu', 'transaction-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(384, 17, 'Class Report Menu', 'class-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(385, 17, 'Class Routine Menu', 'class-routine-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(386, 17, 'Exam Routine Menu', 'exam-routine-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(387, 17, 'Teacher Class Routine Menu', 'teacher-class-routine-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(388, 17, 'Merit List Report Menu', 'merit-list-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(389, 17, 'Online Exam Report Menu', 'online-exam-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(390, 17, 'Mark Sheet Report Menu', 'mark-sheet-report-student', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(391, 17, 'Tabulation Sheet Report Menu', 'tabulation-sheet-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(392, 17, 'Progress Card Report Menu', 'progress-card-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(393, 17, 'Student Fine Report Menu', 'student-fine-report', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(394, 17, 'User Log Menu', 'user-log', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(395, 8, '➡ Apply Leave Add', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(396, 8, '➡ Apply Leave Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(397, 9, '➡ Exam Setup Edit', '', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `sm_module_permissions`
--

CREATE TABLE `sm_module_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `dashboard_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_module_permissions`
--

INSERT INTO `sm_module_permissions` (`id`, `dashboard_id`, `name`, `active_status`, `created_by`, `updated_by`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dashboard', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(2, 1, 'Admin Section', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(3, 1, 'Student Information', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(4, 1, 'Teacher', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(5, 1, 'Fees Collection', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(6, 1, 'Accounts', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(7, 1, 'Human Resource', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(8, 1, 'Leave Application', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(9, 1, 'Examination', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(10, 1, 'Academics', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(11, 1, 'Homework', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(12, 1, 'Communicate', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(13, 1, 'Library', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(14, 1, 'Inventory', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(15, 1, 'Transport', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(16, 1, 'Dormitory', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(17, 1, 'Reports', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(18, 1, 'System Settings', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(19, 1, 'Style', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(20, 1, 'API Permission', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(21, 1, 'Front Settings', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(22, 2, 'My Profile', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(23, 2, 'Fees', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(24, 2, 'Class Routine', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(25, 2, 'Homework', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(26, 2, 'Download Center', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(27, 2, 'Attendance', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(28, 2, 'Examinations', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(29, 2, 'Online Exam', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(30, 2, 'Notice Board', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(31, 2, 'Subjects', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(32, 2, 'Teacher', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(33, 2, 'Library', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(34, 2, 'Transfort', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(35, 2, 'Dormitory', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(36, 3, 'My Children', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(37, 3, 'Fees', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(38, 3, 'Class Routine', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(39, 3, 'Homework', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(40, 3, 'Attendance', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(41, 3, 'Exam Result', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(42, 3, 'Notice Board', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(43, 3, 'Subjects', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(44, 3, 'Teacher', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(45, 3, 'Transfort', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22'),
(46, 3, 'Dormitory', 1, 1, 1, 1, '2019-07-24 20:21:21', '2019-07-24 22:24:22');

-- --------------------------------------------------------

--
-- Table structure for table `sm_module_permission_assigns`
--

CREATE TABLE `sm_module_permission_assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_module_permission_assigns`
--

INSERT INTO `sm_module_permission_assigns` (`id`, `active_status`, `created_at`, `updated_at`, `module_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 1, 1, 1, 1, 1),
(2, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 2, 1, 1, 1, 1),
(3, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 3, 1, 1, 1, 1),
(4, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 4, 1, 1, 1, 1),
(5, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 5, 1, 1, 1, 1),
(6, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 6, 1, 1, 1, 1),
(7, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 7, 1, 1, 1, 1),
(8, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 8, 1, 1, 1, 1),
(9, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 9, 1, 1, 1, 1),
(10, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 10, 1, 1, 1, 1),
(11, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 11, 1, 1, 1, 1),
(12, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 12, 1, 1, 1, 1),
(13, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 13, 1, 1, 1, 1),
(14, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 14, 1, 1, 1, 1),
(15, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 15, 1, 1, 1, 1),
(16, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 16, 1, 1, 1, 1),
(17, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 17, 1, 1, 1, 1),
(18, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 18, 1, 1, 1, 1),
(19, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 19, 1, 1, 1, 1),
(20, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 20, 1, 1, 1, 1),
(21, 1, '2019-11-18 02:14:09', '2019-11-18 02:14:09', 21, 1, 1, 1, 1),
(127, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 22, 2, 1, 1, 1),
(128, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 23, 2, 1, 1, 1),
(129, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 24, 2, 1, 1, 1),
(130, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 25, 2, 1, 1, 1),
(131, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 26, 2, 1, 1, 1),
(132, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 27, 2, 1, 1, 1),
(133, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 28, 2, 1, 1, 1),
(134, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 29, 2, 1, 1, 1),
(135, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 30, 2, 1, 1, 1),
(136, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 31, 2, 1, 1, 1),
(137, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 32, 2, 1, 1, 1),
(138, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 33, 2, 1, 1, 1),
(139, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 34, 2, 1, 1, 1),
(140, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 35, 2, 1, 1, 1),
(141, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 36, 3, 1, 1, 1),
(142, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 37, 3, 1, 1, 1),
(143, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 38, 3, 1, 1, 1),
(144, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 39, 3, 1, 1, 1),
(145, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 40, 3, 1, 1, 1),
(146, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 41, 3, 1, 1, 1),
(147, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 42, 3, 1, 1, 1),
(148, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 43, 3, 1, 1, 1),
(149, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 44, 3, 1, 1, 1),
(150, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 45, 3, 1, 1, 1),
(151, 1, '2019-11-18 02:14:10', '2019-11-18 02:14:10', 46, 3, 1, 1, 1),
(167, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 2, 5, 1, 1, 1),
(168, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 3, 5, 1, 1, 1),
(169, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 4, 5, 1, 1, 1),
(170, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 5, 5, 1, 1, 1),
(171, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 6, 5, 1, 1, 1),
(172, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 7, 5, 1, 1, 1),
(173, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 8, 5, 1, 1, 1),
(174, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 9, 5, 1, 1, 1),
(175, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 10, 5, 1, 1, 1),
(176, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 11, 5, 1, 1, 1),
(177, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 12, 5, 1, 1, 1),
(178, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 13, 5, 1, 1, 1),
(179, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 14, 5, 1, 1, 1),
(180, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 15, 5, 1, 1, 1),
(181, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 16, 5, 1, 1, 1),
(182, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 17, 5, 1, 1, 1),
(183, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 19, 5, 1, 1, 1),
(184, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 20, 5, 1, 1, 1),
(185, 1, '2019-12-03 04:55:49', '2019-12-03 04:55:49', 21, 5, 1, 1, 1),
(197, 1, '2019-12-03 05:14:06', '2019-12-03 05:14:06', 3, 4, 1, 1, 1),
(198, 1, '2019-12-03 05:14:06', '2019-12-03 05:14:06', 4, 4, 1, 1, 1),
(199, 1, '2019-12-03 05:14:06', '2019-12-03 05:14:06', 8, 4, 1, 1, 1),
(200, 1, '2019-12-03 05:14:06', '2019-12-03 05:14:06', 9, 4, 1, 1, 1),
(201, 1, '2019-12-03 05:14:06', '2019-12-03 05:14:06', 10, 4, 1, 1, 1),
(202, 1, '2019-12-03 05:14:06', '2019-12-03 05:14:06', 11, 4, 1, 1, 1),
(203, 1, '2019-12-03 05:14:06', '2019-12-03 05:14:06', 17, 4, 1, 1, 1),
(204, 1, '2019-12-03 05:14:06', '2019-12-03 05:14:06', 19, 4, 1, 1, 1),
(205, 1, '2019-12-03 05:16:38', '2019-12-03 05:16:38', 3, 6, 1, 1, 1),
(206, 1, '2019-12-03 05:16:38', '2019-12-03 05:16:38', 5, 6, 1, 1, 1),
(207, 1, '2019-12-03 05:16:38', '2019-12-03 05:16:38', 6, 6, 1, 1, 1),
(208, 1, '2019-12-03 05:16:38', '2019-12-03 05:16:38', 7, 6, 1, 1, 1),
(209, 1, '2019-12-03 05:16:38', '2019-12-03 05:16:38', 14, 6, 1, 1, 1),
(210, 1, '2019-12-03 05:16:38', '2019-12-03 05:16:38', 17, 6, 1, 1, 1),
(211, 1, '2019-12-03 05:17:09', '2019-12-03 05:17:09', 2, 7, 1, 1, 1),
(212, 1, '2019-12-03 05:17:09', '2019-12-03 05:17:09', 3, 7, 1, 1, 1),
(213, 1, '2019-12-03 05:17:09', '2019-12-03 05:17:09', 7, 7, 1, 1, 1),
(214, 1, '2019-12-03 05:17:30', '2019-12-03 05:17:30', 3, 8, 1, 1, 1),
(215, 1, '2019-12-03 05:17:30', '2019-12-03 05:17:30', 7, 8, 1, 1, 1),
(216, 1, '2019-12-03 05:17:30', '2019-12-03 05:17:30', 13, 8, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_news`
--

CREATE TABLE `sm_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) DEFAULT NULL,
  `active_status` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_news`
--

INSERT INTO `sm_news` (`id`, `news_title`, `view_count`, `active_status`, `image`, `image_thumb`, `news_body`, `publish_date`, `order`, `created_at`, `updated_at`, `category_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Doloremque nostrum nemo vel.', 8, 1, 'public/uploads/news/news1.jpg', NULL, 'Placeat corporis deleniti et autem omnis aut aut. Dolores aut et cum omnis dolor assumenda ullam. Necessitatibus esse blanditiis nemo. Omnis accusamus aut culpa molestiae corporis sed. Impedit excepturi molestiae ut dolorum. Sed et tempora a illum. Incidunt soluta tempore sed repellat et. Aut laboriosam voluptates error sed illum rerum.', '2019-06-02', '1', '2020-05-17 05:35:24', NULL, 1, 1, 1, 1),
(2, 'Ut eum eum aut corporis laborum iste.', 6, 1, 'public/uploads/news/news2.jpg', NULL, 'Autem pariatur enim minus velit sit. Ipsam numquam dolorem dolores odit. Mollitia excepturi voluptatibus non sunt nihil maiores. Veniam qui suscipit quo autem. Quaerat facilis inventore voluptas aut voluptatem totam. Aut alias repellendus sed sunt soluta ut enim. Veniam quis iusto fugiat libero autem illo quia nisi.', '2019-06-02', '2', '2020-05-17 05:35:24', NULL, 1, 1, 1, 1),
(3, 'Numquam mollitia velit quod sit porro.', 7, 1, 'public/uploads/news/news3.jpg', NULL, 'Voluptatum quos neque aut aut et rerum non. Dignissimos tempore est animi ipsa. Placeat dolorum illo blanditiis officia. Harum excepturi nulla veniam rem. Ea doloribus nesciunt nemo. Dolorem aperiam fugit nulla tempore quia distinctio sapiente doloribus. Repudiandae quis autem dolorem architecto in. Minus commodi quas nihil tempora in est molestias ut.', '2019-06-02', '3', '2020-05-17 05:35:24', NULL, 1, 1, 1, 1),
(4, 'Porro assumenda libero molestias quo.', 9, 1, 'public/uploads/news/news4.jpg', NULL, 'Pariatur officia adipisci ex. Veritatis dicta commodi autem commodi. Sint repellendus et quas enim. Eligendi rerum expedita sapiente doloremque. Dolor harum eligendi est rerum sint quia. Et quisquam voluptas at minus laborum voluptatem. Illum rerum corrupti consequuntur nesciunt. Recusandae amet hic reprehenderit. Eos quia sint suscipit minima. Explicabo quia et expedita sed. Molestiae consequatur tenetur placeat qui sit eum. Nisi aut sed recusandae sit minus.', '2019-06-02', '4', '2020-05-17 05:35:24', NULL, 1, 1, 1, 1),
(5, 'Et quia et iure commodi.', 5, 1, 'public/uploads/news/news5.jpg', NULL, 'Illum ipsum quis reprehenderit tenetur autem. Delectus est placeat molestiae. Earum et adipisci dolore quo illo sunt necessitatibus. Adipisci delectus consequuntur aut eveniet beatae atque vel. Vitae ea provident fuga. Natus non consequatur id dolorem ut deleniti provident veniam. Rerum ea porro nemo quibusdam sint quibusdam. Aut officiis cum ut assumenda.', '2019-06-02', '5', '2020-05-17 05:35:24', NULL, 2, 1, 1, 1),
(7, 'Optio et beatae et veniam.', 5, 1, 'public/uploads/news/news7.jpg', NULL, 'Nisi ipsam enim fuga quia hic necessitatibus rem sed. Et aut fugiat nihil unde. Quasi quidem hic iste impedit ea molestiae. Esse culpa aut facere. Omnis et sed error minima et. Quia aut quod debitis dolorem. Accusamus quae dolores similique ut. Est vel ducimus minus harum velit sequi mollitia. Incidunt dicta sed eos sint ipsum dolorem deleniti et. Et voluptatem incidunt asperiores assumenda fugiat sit.', '2019-06-02', '7', '2020-05-17 05:35:24', NULL, 2, 1, 1, 1),
(8, 'Voluptatem est ratione libero quasi.', 4, 1, 'public/uploads/news/news8.jpg', NULL, 'Quo quod non fuga eum rerum. Iusto non aut enim architecto ullam. Illo nam ex qui animi voluptatem. Quia facere minima dolor quasi magni ad. Sit molestiae at nisi dolorem iste est. Omnis libero praesentium ratione omnis voluptas hic tempora. Eveniet repellat deserunt voluptatem hic autem esse.', '2019-06-02', '8', '2020-05-17 05:35:24', NULL, 2, 1, 1, 1),
(9, 'Quasi et vel maiores.', 9, 1, 'public/uploads/news/news9.jpg', NULL, 'Sed molestiae nobis possimus possimus. Earum nam nihil ut molestiae. Voluptatum quo minus deserunt incidunt corporis mollitia assumenda ad. Reiciendis excepturi ex voluptates et. Sed dolores voluptas sed sint. Explicabo quam nemo aspernatur. Voluptatem veritatis dolor dolore repellat. Adipisci temporibus aut id voluptas. Commodi doloremque ipsa blanditiis ipsam sunt. Sint placeat ut autem.', '2019-06-02', '9', '2020-05-17 05:35:24', NULL, 3, 1, 1, 1),
(10, 'Rerum perspiciatis qui optio aliquid.', 9, 1, 'public/uploads/news/news10.jpg', NULL, 'Et est provident aut reprehenderit velit mollitia. Autem et et tempora totam velit dolores consequatur. Enim id quia unde cupiditate. Quia voluptates quod vero. Molestias perferendis velit voluptatum adipisci sed. Quidem quod aliquid enim rem. Sit id qui vel quo. Itaque dicta nostrum dolore et excepturi. Quis iusto aut sint porro dolorum. Id est nihil ut alias sapiente optio eum ea. Nam soluta omnis magni deserunt et officia. Aut deserunt ut est aliquid explicabo.', '2019-06-02', '10', '2020-05-17 05:35:24', NULL, 3, 1, 1, 1),
(11, 'Est sed dolorem perspiciatis ea dolor.', 6, 1, 'public/uploads/news/news11.jpg', NULL, 'Repellat impedit nesciunt dicta. Aperiam facere corporis consectetur porro modi ea. Aut quibusdam nihil eum assumenda nemo voluptatem nostrum. Vitae veritatis omnis est sunt debitis id. Et temporibus repudiandae non. Eveniet autem sequi ea. Earum ullam reiciendis unde quis. Fugit velit sit dolor dolorum qui. Sit eligendi tempore vel eos beatae aut minus numquam.', '2019-06-02', '11', '2020-05-17 05:35:24', NULL, 3, 1, 1, 1),
(12, 'Quasi recusandae at in dolor iure.', 4, 1, 'public/uploads/news/news12.jpg', NULL, 'Autem sed ut sunt. Ab molestias beatae quidem temporibus. Sunt eaque ad tempora ea. Fugiat aut aut expedita et corrupti. Possimus molestiae id quo repudiandae. Vel voluptatem eveniet voluptatem. Animi unde enim temporibus. Placeat quis maxime consequatur est ex quo. Expedita qui quas error a unde maxime commodi. Velit atque iste ut dolores. Id quaerat molestiae doloribus est eius.', '2019-06-02', '12', '2020-05-17 05:35:24', NULL, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_news_categories`
--

CREATE TABLE `sm_news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_news_categories`
--

INSERT INTO `sm_news_categories` (`id`, `category_name`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'International', NULL, NULL, 1),
(2, 'Our history', NULL, NULL, 1),
(3, 'Our mission and vision', NULL, NULL, 1),
(4, 'National', NULL, NULL, 1),
(5, 'Sports', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_news_pages`
--

CREATE TABLE `sm_news_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_news_pages`
--

INSERT INTO `sm_news_pages` (`id`, `created_at`, `updated_at`, `title`, `description`, `main_title`, `main_description`, `image`, `main_image`, `button_text`, `button_url`, `active_status`, `created_by`, `updated_by`, `school_id`) VALUES
(1, NULL, '2020-08-12 19:15:11', 'News', 'Lisus consequat sapien metus dis urna, facilisi. Nonummy rutrum eu lacinia platea a, ipsum parturient, orci tristique. Nisi diam natoque.', 'Under Graduate Education', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'public/uploads/about_page/about.jpg', 'public/uploads/about_page/about-img.jpg', 'Learn More News', 'news', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_notice_boards`
--

CREATE TABLE `sm_notice_boards` (
  `id` int(10) UNSIGNED NOT NULL,
  `notice_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_date` date DEFAULT NULL,
  `publish_on` date DEFAULT NULL,
  `inform_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Notice message sent to these roles',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `is_published` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_notice_boards`
--

INSERT INTO `sm_notice_boards` (`id`, `notice_title`, `notice_message`, `notice_date`, `publish_on`, `inform_to`, `active_status`, `is_published`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Dipawali Vacations', 'Due to Dipawali Vacations institute will remians closed', '2020-10-18', '2020-10-18', '1,2,3,4,5,6,7,8,9', 1, 1, '2020-10-18 05:31:24', '2020-10-18 05:31:24', 1, 1, 1),
(2, 'Admission Test', 'An admission cum entrance exam will be help at every sunday for  new admissions at Gehlot campus', '2020-10-18', '2020-10-18', '1,2,3,4,7', 1, 1, '2020-10-18 05:34:16', '2020-10-18 05:34:16', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_notifications`
--

CREATE TABLE `sm_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 1,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `school_id` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_notifications`
--

INSERT INTO `sm_notifications` (`id`, `date`, `message`, `url`, `is_read`, `active_status`, `created_at`, `updated_at`, `user_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2020-10-18', 'Notice for you', NULL, 0, 1, '2020-10-18 05:31:24', '2020-10-18 05:31:24', 1, 1, 1, 1, 1),
(2, '2020-10-18', 'Notice for you', NULL, 0, 1, '2020-10-18 05:34:16', '2020-10-18 05:34:16', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_online_exams`
--

CREATE TABLE `sm_online_exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL,
  `instruction` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 = Pending 1 Published',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_online_exam_marks`
--

CREATE TABLE `sm_online_exam_marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `marks` int(11) DEFAULT NULL,
  `abs` int(11) NOT NULL DEFAULT 0,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_online_exam_questions`
--

CREATE TABLE `sm_online_exam_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trueFalse` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'F = false, T = true ',
  `suitable_words` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `online_exam_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_online_exam_question_assigns`
--

CREATE TABLE `sm_online_exam_question_assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `online_exam_id` int(10) UNSIGNED DEFAULT NULL,
  `question_bank_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_online_exam_question_mu_options`
--

CREATE TABLE `sm_online_exam_question_mu_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 unchecked 1 checked',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `online_exam_question_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'here we use foreign key shorter name',
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_optional_subject_assigns`
--

CREATE TABLE `sm_optional_subject_assigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1,
  `session_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_parents`
--

CREATE TABLE `sm_parents` (
  `id` int(10) UNSIGNED NOT NULL,
  `fathers_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_mobile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_occupation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_mobile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_occupation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_mobile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_occupation` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_relation` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardians_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guardian` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_payment_gateway_settings`
--

CREATE TABLE `sm_payment_gateway_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `gateway_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_client_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_secret_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_secret_word` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_publisher_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gateway_private_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_payment_gateway_settings`
--

INSERT INTO `sm_payment_gateway_settings` (`id`, `gateway_name`, `gateway_username`, `gateway_password`, `gateway_signature`, `gateway_client_id`, `gateway_mode`, `gateway_secret_key`, `gateway_secret_word`, `gateway_publisher_key`, `gateway_private_key`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'PayPal', 'demo@paypal.com', '12334589', NULL, 'AVZdghanegaOjiL6DPXd0XwjMGEQ2aXc58z1-qNwv_Wz9mI_6MKSW5dS9uPAha3rd7eB82ToOCQLp31c', NULL, 'EMgxBzeJ9By7D0xvkSUblDd_GW99WvK0DDNyvkGn7rBikvjPw46xz9Plozp4jl7AOsx-isWmBFnw1h2j', NULL, NULL, NULL, 0, '2020-05-17 05:35:12', NULL, 1, 1, 1),
(2, 'Stripe', 'demo@strip.com', '12334589', NULL, '', NULL, 'AVZdghanegaOjiL6DPXd0XwjMGEQ2aXc58z1-isWmBFnw1h2j', 'AVZdghanegaOjiL6DPXd0XwjMGEQ2aXc58z1', NULL, NULL, 0, '2020-05-17 05:35:12', NULL, 1, 1, 1),
(3, 'Paystack', 'demo@gmail.com', '12334589', NULL, '', NULL, 'sk_live_2679322872013c265e161bc8ea11efc1e822bce1', NULL, 'pk_live_e5738ce9aade963387204f1f19bee599176e7a71', NULL, 0, '2020-05-17 05:35:12', NULL, 1, 1, 1),
(4, 'Razorpay', NULL, NULL, NULL, NULL, NULL, 'nUhyAjRJU5SAoNiZPLfosA9Q', NULL, 'rzp_test_qhPXN4zgflSLgA', NULL, 0, '2020-05-17 05:35:12', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_payment_methhods`
--

CREATE TABLE `sm_payment_methhods` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gateway_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_payment_methhods`
--

INSERT INTO `sm_payment_methhods` (`id`, `method`, `type`, `active_status`, `created_at`, `updated_at`, `gateway_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Cash', 'System', 0, '2020-05-17 05:35:12', NULL, NULL, 1, 1, 1),
(2, 'Cheque', 'System', 0, '2020-05-17 05:35:12', NULL, NULL, 1, 1, 1),
(3, 'Bank', 'System', 0, '2020-05-17 05:35:12', NULL, NULL, 1, 1, 1),
(4, 'Paypal', 'System', 0, '2020-05-17 05:35:12', NULL, NULL, 1, 1, 1),
(5, 'Stripe', 'System', 0, '2020-05-17 05:35:12', NULL, NULL, 1, 1, 1),
(6, 'Paystack', 'System', 0, '2020-05-17 05:35:12', NULL, NULL, 1, 1, 1),
(7, 'Razorpay', 'System', 0, '2020-05-17 05:35:12', NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_phone_call_logs`
--

CREATE TABLE `sm_phone_call_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_follow_up_date` date DEFAULT NULL,
  `call_duration` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `call_type` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_postal_dispatches`
--

CREATE TABLE `sm_postal_dispatches` (
  `id` int(10) UNSIGNED NOT NULL,
  `to_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_postal_receives`
--

CREATE TABLE `sm_postal_receives` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_product_purchases`
--

CREATE TABLE `sm_product_purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `purchase_date` date NOT NULL,
  `expaire_date` date NOT NULL,
  `price` double(10,2) DEFAULT NULL,
  `paid_amount` double(10,2) DEFAULT NULL,
  `due_amount` double(10,2) DEFAULT NULL,
  `package` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_question_banks`
--

CREATE TABLE `sm_question_banks` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'M for multi ans, T for trueFalse, F for fill in the blanks',
  `question` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `trueFalse` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'F = false, T = true ',
  `suitable_words` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_option` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `q_group_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_question_bank_mu_options`
--

CREATE TABLE `sm_question_bank_mu_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 = false, 1 = correct',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_bank_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_question_groups`
--

CREATE TABLE `sm_question_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_question_levels`
--

CREATE TABLE `sm_question_levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_result_stores`
--

CREATE TABLE `sm_result_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `student_roll_no` int(11) NOT NULL DEFAULT 1,
  `student_addmission_no` int(11) NOT NULL DEFAULT 1,
  `is_absent` int(11) NOT NULL DEFAULT 0 COMMENT '1=Absent, 0=Present',
  `total_marks` double(8,2) NOT NULL DEFAULT 0.00,
  `total_gpa_point` double(8,2) DEFAULT NULL,
  `total_gpa_grade` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `teacher_remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_type_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `exam_setup_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_role_permissions`
--

CREATE TABLE `sm_role_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `module_link_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_role_permissions`
--

INSERT INTO `sm_role_permissions` (`id`, `active_status`, `created_at`, `updated_at`, `module_link_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 1, 1, 1, 1, 1),
(2, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 2, 1, 1, 1, 1),
(3, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 3, 1, 1, 1, 1),
(4, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 4, 1, 1, 1, 1),
(5, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 5, 1, 1, 1, 1),
(6, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 6, 1, 1, 1, 1),
(7, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 7, 1, 1, 1, 1),
(8, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 8, 1, 1, 1, 1),
(9, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 9, 1, 1, 1, 1),
(10, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 10, 1, 1, 1, 1),
(11, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 11, 1, 1, 1, 1),
(12, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 12, 1, 1, 1, 1),
(13, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 13, 1, 1, 1, 1),
(14, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 14, 1, 1, 1, 1),
(15, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 15, 1, 1, 1, 1),
(16, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 16, 1, 1, 1, 1),
(17, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 17, 1, 1, 1, 1),
(18, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 18, 1, 1, 1, 1),
(19, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 19, 1, 1, 1, 1),
(20, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 20, 1, 1, 1, 1),
(21, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 21, 1, 1, 1, 1),
(22, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 22, 1, 1, 1, 1),
(23, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 23, 1, 1, 1, 1),
(24, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 24, 1, 1, 1, 1),
(25, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 25, 1, 1, 1, 1),
(26, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 26, 1, 1, 1, 1),
(27, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 27, 1, 1, 1, 1),
(28, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 28, 1, 1, 1, 1),
(29, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 29, 1, 1, 1, 1),
(30, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 30, 1, 1, 1, 1),
(31, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 31, 1, 1, 1, 1),
(32, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 32, 1, 1, 1, 1),
(33, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 33, 1, 1, 1, 1),
(34, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 34, 1, 1, 1, 1),
(35, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 35, 1, 1, 1, 1),
(36, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 36, 1, 1, 1, 1),
(37, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 37, 1, 1, 1, 1),
(38, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 38, 1, 1, 1, 1),
(39, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 39, 1, 1, 1, 1),
(40, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 40, 1, 1, 1, 1),
(41, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 41, 1, 1, 1, 1),
(42, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 42, 1, 1, 1, 1),
(43, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 43, 1, 1, 1, 1),
(44, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 44, 1, 1, 1, 1),
(45, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 45, 1, 1, 1, 1),
(46, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 46, 1, 1, 1, 1),
(47, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 47, 1, 1, 1, 1),
(48, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 48, 1, 1, 1, 1),
(49, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 49, 1, 1, 1, 1),
(50, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 50, 1, 1, 1, 1),
(51, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 51, 1, 1, 1, 1),
(52, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 52, 1, 1, 1, 1),
(53, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 53, 1, 1, 1, 1),
(54, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 54, 1, 1, 1, 1),
(55, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 55, 1, 1, 1, 1),
(56, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 56, 1, 1, 1, 1),
(57, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 57, 1, 1, 1, 1),
(58, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 58, 1, 1, 1, 1),
(59, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 59, 1, 1, 1, 1),
(60, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 60, 1, 1, 1, 1),
(61, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 61, 1, 1, 1, 1),
(62, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 62, 1, 1, 1, 1),
(63, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 63, 1, 1, 1, 1),
(64, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 64, 1, 1, 1, 1),
(65, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 65, 1, 1, 1, 1),
(66, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 66, 1, 1, 1, 1),
(67, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 67, 1, 1, 1, 1),
(68, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 68, 1, 1, 1, 1),
(69, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 69, 1, 1, 1, 1),
(70, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 70, 1, 1, 1, 1),
(71, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 71, 1, 1, 1, 1),
(72, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 72, 1, 1, 1, 1),
(73, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 73, 1, 1, 1, 1),
(74, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 74, 1, 1, 1, 1),
(75, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 75, 1, 1, 1, 1),
(76, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 76, 1, 1, 1, 1),
(77, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 77, 1, 1, 1, 1),
(78, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 79, 1, 1, 1, 1),
(79, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 80, 1, 1, 1, 1),
(80, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 81, 1, 1, 1, 1),
(81, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 82, 1, 1, 1, 1),
(82, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 83, 1, 1, 1, 1),
(83, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 84, 1, 1, 1, 1),
(84, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 85, 1, 1, 1, 1),
(85, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 86, 1, 1, 1, 1),
(86, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 87, 1, 1, 1, 1),
(87, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 88, 1, 1, 1, 1),
(88, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 89, 1, 1, 1, 1),
(89, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 90, 1, 1, 1, 1),
(90, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 91, 1, 1, 1, 1),
(91, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 92, 1, 1, 1, 1),
(92, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 93, 1, 1, 1, 1),
(93, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 94, 1, 1, 1, 1),
(94, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 95, 1, 1, 1, 1),
(95, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 96, 1, 1, 1, 1),
(96, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 97, 1, 1, 1, 1),
(97, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 98, 1, 1, 1, 1),
(98, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 99, 1, 1, 1, 1),
(99, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 100, 1, 1, 1, 1),
(100, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 101, 1, 1, 1, 1),
(101, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 102, 1, 1, 1, 1),
(102, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 103, 1, 1, 1, 1),
(103, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 104, 1, 1, 1, 1),
(104, 1, '2019-11-18 02:13:45', '2019-11-18 02:13:45', 105, 1, 1, 1, 1),
(105, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 106, 1, 1, 1, 1),
(106, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 107, 1, 1, 1, 1),
(107, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 108, 1, 1, 1, 1),
(108, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 109, 1, 1, 1, 1),
(109, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 110, 1, 1, 1, 1),
(110, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 111, 1, 1, 1, 1),
(111, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 112, 1, 1, 1, 1),
(112, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 113, 1, 1, 1, 1),
(113, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 114, 1, 1, 1, 1),
(114, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 115, 1, 1, 1, 1),
(115, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 116, 1, 1, 1, 1),
(116, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 117, 1, 1, 1, 1),
(117, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 118, 1, 1, 1, 1),
(118, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 119, 1, 1, 1, 1),
(119, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 120, 1, 1, 1, 1),
(120, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 121, 1, 1, 1, 1),
(121, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 122, 1, 1, 1, 1),
(122, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 123, 1, 1, 1, 1),
(123, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 124, 1, 1, 1, 1),
(124, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 125, 1, 1, 1, 1),
(125, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 126, 1, 1, 1, 1),
(126, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 127, 1, 1, 1, 1),
(127, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 128, 1, 1, 1, 1),
(128, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 129, 1, 1, 1, 1),
(129, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 130, 1, 1, 1, 1),
(130, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 131, 1, 1, 1, 1),
(131, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 132, 1, 1, 1, 1),
(132, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 133, 1, 1, 1, 1),
(133, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 134, 1, 1, 1, 1),
(134, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 135, 1, 1, 1, 1),
(135, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 136, 1, 1, 1, 1),
(136, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 137, 1, 1, 1, 1),
(137, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 138, 1, 1, 1, 1),
(138, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 139, 1, 1, 1, 1),
(139, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 140, 1, 1, 1, 1),
(140, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 141, 1, 1, 1, 1),
(141, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 142, 1, 1, 1, 1),
(142, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 143, 1, 1, 1, 1),
(143, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 144, 1, 1, 1, 1),
(144, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 145, 1, 1, 1, 1),
(145, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 146, 1, 1, 1, 1),
(146, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 147, 1, 1, 1, 1),
(147, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 148, 1, 1, 1, 1),
(148, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 149, 1, 1, 1, 1),
(149, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 150, 1, 1, 1, 1),
(150, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 151, 1, 1, 1, 1),
(151, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 152, 1, 1, 1, 1),
(152, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 153, 1, 1, 1, 1),
(153, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 154, 1, 1, 1, 1),
(154, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 155, 1, 1, 1, 1),
(155, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 156, 1, 1, 1, 1),
(156, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 157, 1, 1, 1, 1),
(157, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 158, 1, 1, 1, 1),
(158, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 159, 1, 1, 1, 1),
(159, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 160, 1, 1, 1, 1),
(160, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 161, 1, 1, 1, 1),
(161, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 162, 1, 1, 1, 1),
(162, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 163, 1, 1, 1, 1),
(163, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 164, 1, 1, 1, 1),
(164, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 165, 1, 1, 1, 1),
(165, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 166, 1, 1, 1, 1),
(166, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 167, 1, 1, 1, 1),
(167, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 168, 1, 1, 1, 1),
(168, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 169, 1, 1, 1, 1),
(169, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 170, 1, 1, 1, 1),
(170, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 171, 1, 1, 1, 1),
(171, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 172, 1, 1, 1, 1),
(172, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 173, 1, 1, 1, 1),
(173, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 174, 1, 1, 1, 1),
(174, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 175, 1, 1, 1, 1),
(175, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 176, 1, 1, 1, 1),
(176, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 177, 1, 1, 1, 1),
(177, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 178, 1, 1, 1, 1),
(178, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 179, 1, 1, 1, 1),
(179, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 180, 1, 1, 1, 1),
(180, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 181, 1, 1, 1, 1),
(181, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 182, 1, 1, 1, 1),
(182, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 183, 1, 1, 1, 1),
(183, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 184, 1, 1, 1, 1),
(184, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 185, 1, 1, 1, 1),
(185, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 186, 1, 1, 1, 1),
(186, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 187, 1, 1, 1, 1),
(187, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 188, 1, 1, 1, 1),
(188, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 189, 1, 1, 1, 1),
(189, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 190, 1, 1, 1, 1),
(190, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 191, 1, 1, 1, 1),
(191, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 192, 1, 1, 1, 1),
(192, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 193, 1, 1, 1, 1),
(193, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 194, 1, 1, 1, 1),
(194, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 195, 1, 1, 1, 1),
(195, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 196, 1, 1, 1, 1),
(196, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 197, 1, 1, 1, 1),
(197, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 198, 1, 1, 1, 1),
(198, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 199, 1, 1, 1, 1),
(199, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 200, 1, 1, 1, 1),
(200, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 201, 1, 1, 1, 1),
(201, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 202, 1, 1, 1, 1),
(202, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 203, 1, 1, 1, 1),
(203, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 204, 1, 1, 1, 1),
(204, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 205, 1, 1, 1, 1),
(205, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 206, 1, 1, 1, 1),
(206, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 207, 1, 1, 1, 1),
(207, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 208, 1, 1, 1, 1),
(208, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 209, 1, 1, 1, 1),
(209, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 210, 1, 1, 1, 1),
(210, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 211, 1, 1, 1, 1),
(211, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 214, 1, 1, 1, 1),
(212, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 215, 1, 1, 1, 1),
(213, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 216, 1, 1, 1, 1),
(214, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 217, 1, 1, 1, 1),
(215, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 218, 1, 1, 1, 1),
(216, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 219, 1, 1, 1, 1),
(217, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 220, 1, 1, 1, 1),
(218, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 221, 1, 1, 1, 1),
(219, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 222, 1, 1, 1, 1),
(220, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 223, 1, 1, 1, 1),
(221, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 224, 1, 1, 1, 1),
(222, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 225, 1, 1, 1, 1),
(223, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 226, 1, 1, 1, 1),
(224, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 227, 1, 1, 1, 1),
(225, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 228, 1, 1, 1, 1),
(226, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 229, 1, 1, 1, 1),
(227, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 230, 1, 1, 1, 1),
(228, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 231, 1, 1, 1, 1),
(229, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 232, 1, 1, 1, 1),
(230, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 233, 1, 1, 1, 1),
(231, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 234, 1, 1, 1, 1),
(232, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 235, 1, 1, 1, 1),
(233, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 236, 1, 1, 1, 1),
(234, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 237, 1, 1, 1, 1),
(235, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 238, 1, 1, 1, 1),
(236, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 239, 1, 1, 1, 1),
(237, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 240, 1, 1, 1, 1),
(238, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 241, 1, 1, 1, 1),
(239, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 242, 1, 1, 1, 1),
(240, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 243, 1, 1, 1, 1),
(241, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 244, 1, 1, 1, 1),
(242, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 245, 1, 1, 1, 1),
(243, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 246, 1, 1, 1, 1),
(244, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 247, 1, 1, 1, 1),
(245, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 248, 1, 1, 1, 1),
(246, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 249, 1, 1, 1, 1),
(247, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 250, 1, 1, 1, 1),
(248, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 251, 1, 1, 1, 1),
(249, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 252, 1, 1, 1, 1),
(250, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 253, 1, 1, 1, 1),
(251, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 254, 1, 1, 1, 1),
(252, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 255, 1, 1, 1, 1),
(253, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 256, 1, 1, 1, 1),
(254, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 257, 1, 1, 1, 1),
(255, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 258, 1, 1, 1, 1),
(256, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 259, 1, 1, 1, 1),
(257, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 260, 1, 1, 1, 1),
(258, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 261, 1, 1, 1, 1),
(259, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 262, 1, 1, 1, 1),
(260, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 263, 1, 1, 1, 1),
(261, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 264, 1, 1, 1, 1),
(262, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 265, 1, 1, 1, 1),
(263, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 266, 1, 1, 1, 1),
(264, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 267, 1, 1, 1, 1),
(265, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 268, 1, 1, 1, 1),
(266, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 269, 1, 1, 1, 1),
(267, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 270, 1, 1, 1, 1),
(268, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 271, 1, 1, 1, 1),
(269, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 272, 1, 1, 1, 1),
(270, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 273, 1, 1, 1, 1),
(271, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 274, 1, 1, 1, 1),
(272, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 275, 1, 1, 1, 1),
(273, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 276, 1, 1, 1, 1),
(274, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 277, 1, 1, 1, 1),
(275, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 278, 1, 1, 1, 1),
(276, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 279, 1, 1, 1, 1),
(277, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 280, 1, 1, 1, 1),
(278, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 281, 1, 1, 1, 1),
(279, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 282, 1, 1, 1, 1),
(280, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 283, 1, 1, 1, 1),
(281, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 284, 1, 1, 1, 1),
(282, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 285, 1, 1, 1, 1),
(283, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 286, 1, 1, 1, 1),
(284, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 287, 1, 1, 1, 1),
(285, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 288, 1, 1, 1, 1),
(286, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 289, 1, 1, 1, 1),
(287, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 290, 1, 1, 1, 1),
(288, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 291, 1, 1, 1, 1),
(289, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 292, 1, 1, 1, 1),
(290, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 293, 1, 1, 1, 1),
(291, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 294, 1, 1, 1, 1),
(292, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 295, 1, 1, 1, 1),
(293, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 296, 1, 1, 1, 1),
(294, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 297, 1, 1, 1, 1),
(295, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 298, 1, 1, 1, 1),
(296, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 299, 1, 1, 1, 1),
(297, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 300, 1, 1, 1, 1),
(298, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 301, 1, 1, 1, 1),
(299, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 302, 1, 1, 1, 1),
(300, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 303, 1, 1, 1, 1),
(301, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 304, 1, 1, 1, 1),
(302, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 305, 1, 1, 1, 1),
(303, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 306, 1, 1, 1, 1),
(304, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 307, 1, 1, 1, 1),
(305, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 308, 1, 1, 1, 1),
(306, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 309, 1, 1, 1, 1),
(307, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 310, 1, 1, 1, 1),
(308, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 311, 1, 1, 1, 1),
(309, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 312, 1, 1, 1, 1),
(310, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 313, 1, 1, 1, 1),
(311, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 314, 1, 1, 1, 1),
(312, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 315, 1, 1, 1, 1),
(313, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 316, 1, 1, 1, 1),
(314, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 317, 1, 1, 1, 1),
(315, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 318, 1, 1, 1, 1),
(316, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 319, 1, 1, 1, 1),
(317, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 320, 1, 1, 1, 1),
(318, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 321, 1, 1, 1, 1),
(319, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 322, 1, 1, 1, 1),
(320, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 323, 1, 1, 1, 1),
(321, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 324, 1, 1, 1, 1),
(322, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 325, 1, 1, 1, 1),
(323, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 326, 1, 1, 1, 1),
(324, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 327, 1, 1, 1, 1),
(325, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 328, 1, 1, 1, 1),
(326, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 329, 1, 1, 1, 1),
(327, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 330, 1, 1, 1, 1),
(328, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 331, 1, 1, 1, 1),
(329, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 332, 1, 1, 1, 1),
(330, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 333, 1, 1, 1, 1),
(331, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 334, 1, 1, 1, 1),
(332, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 335, 1, 1, 1, 1),
(333, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 336, 1, 1, 1, 1),
(334, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 337, 1, 1, 1, 1),
(335, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 338, 1, 1, 1, 1),
(336, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 339, 1, 1, 1, 1),
(337, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 340, 1, 1, 1, 1),
(338, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 341, 1, 1, 1, 1),
(339, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 342, 1, 1, 1, 1),
(340, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 343, 1, 1, 1, 1),
(341, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 344, 1, 1, 1, 1),
(342, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 345, 1, 1, 1, 1),
(343, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 346, 1, 1, 1, 1),
(344, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 347, 1, 1, 1, 1),
(345, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 348, 1, 1, 1, 1),
(346, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 349, 1, 1, 1, 1),
(347, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 350, 1, 1, 1, 1),
(348, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 351, 1, 1, 1, 1),
(349, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 352, 1, 1, 1, 1),
(350, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 353, 1, 1, 1, 1),
(351, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 354, 1, 1, 1, 1),
(352, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 355, 1, 1, 1, 1),
(353, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 356, 1, 1, 1, 1),
(354, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 357, 1, 1, 1, 1),
(355, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 358, 1, 1, 1, 1),
(356, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 359, 1, 1, 1, 1),
(357, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 360, 1, 1, 1, 1),
(358, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 361, 1, 1, 1, 1),
(359, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 362, 1, 1, 1, 1),
(360, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 363, 1, 1, 1, 1),
(361, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 364, 1, 1, 1, 1),
(362, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 365, 1, 1, 1, 1),
(363, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 366, 1, 1, 1, 1),
(364, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 367, 1, 1, 1, 1),
(365, 1, '2019-11-18 02:13:46', '2019-11-18 02:13:46', 368, 1, 1, 1, 1),
(366, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 369, 1, 1, 1, 1),
(367, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 370, 1, 1, 1, 1),
(368, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 371, 1, 1, 1, 1),
(369, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 372, 1, 1, 1, 1),
(370, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 373, 1, 1, 1, 1),
(371, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 374, 1, 1, 1, 1),
(372, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 375, 1, 1, 1, 1),
(373, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 376, 1, 1, 1, 1),
(374, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 377, 1, 1, 1, 1),
(375, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 378, 1, 1, 1, 1),
(376, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 379, 1, 1, 1, 1),
(377, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 380, 1, 1, 1, 1),
(378, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 381, 1, 1, 1, 1),
(379, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 382, 1, 1, 1, 1),
(380, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 383, 1, 1, 1, 1),
(381, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 384, 1, 1, 1, 1),
(382, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 385, 1, 1, 1, 1),
(383, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 386, 1, 1, 1, 1),
(384, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 387, 1, 1, 1, 1),
(385, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 388, 1, 1, 1, 1),
(386, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 389, 1, 1, 1, 1),
(387, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 390, 1, 1, 1, 1),
(388, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 391, 1, 1, 1, 1),
(389, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 392, 1, 1, 1, 1),
(390, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 393, 1, 1, 1, 1),
(391, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 394, 1, 1, 1, 1),
(392, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 395, 1, 1, 1, 1),
(393, 1, '2019-11-18 02:13:47', '2019-11-18 02:13:47', 396, 1, 1, 1, 1),
(787, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 1, 5, 1, 1, 1),
(788, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 2, 5, 1, 1, 1),
(789, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 3, 5, 1, 1, 1),
(790, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 4, 5, 1, 1, 1),
(791, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 5, 5, 1, 1, 1),
(792, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 6, 5, 1, 1, 1),
(793, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 7, 5, 1, 1, 1),
(794, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 8, 5, 1, 1, 1),
(795, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 9, 5, 1, 1, 1),
(796, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 10, 5, 1, 1, 1),
(797, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 11, 5, 1, 1, 1),
(798, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 12, 5, 1, 1, 1),
(799, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 13, 5, 1, 1, 1),
(800, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 14, 5, 1, 1, 1),
(801, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 15, 5, 1, 1, 1),
(802, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 16, 5, 1, 1, 1),
(803, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 17, 5, 1, 1, 1),
(804, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 18, 5, 1, 1, 1),
(805, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 19, 5, 1, 1, 1),
(806, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 20, 5, 1, 1, 1),
(807, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 21, 5, 1, 1, 1),
(808, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 22, 5, 1, 1, 1),
(809, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 23, 5, 1, 1, 1),
(810, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 24, 5, 1, 1, 1),
(811, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 25, 5, 1, 1, 1),
(812, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 26, 5, 1, 1, 1),
(813, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 27, 5, 1, 1, 1),
(814, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 28, 5, 1, 1, 1),
(815, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 29, 5, 1, 1, 1),
(816, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 30, 5, 1, 1, 1),
(817, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 31, 5, 1, 1, 1),
(818, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 32, 5, 1, 1, 1),
(819, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 33, 5, 1, 1, 1),
(820, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 34, 5, 1, 1, 1),
(821, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 35, 5, 1, 1, 1),
(822, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 36, 5, 1, 1, 1),
(823, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 37, 5, 1, 1, 1),
(824, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 38, 5, 1, 1, 1),
(825, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 39, 5, 1, 1, 1),
(826, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 40, 5, 1, 1, 1),
(827, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 41, 5, 1, 1, 1),
(828, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 42, 5, 1, 1, 1),
(829, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 43, 5, 1, 1, 1),
(830, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 44, 5, 1, 1, 1),
(831, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 45, 5, 1, 1, 1),
(832, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 46, 5, 1, 1, 1),
(833, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 47, 5, 1, 1, 1),
(834, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 48, 5, 1, 1, 1),
(835, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 49, 5, 1, 1, 1),
(836, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 50, 5, 1, 1, 1),
(837, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 51, 5, 1, 1, 1),
(838, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 52, 5, 1, 1, 1),
(839, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 53, 5, 1, 1, 1),
(840, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 54, 5, 1, 1, 1),
(841, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 55, 5, 1, 1, 1),
(842, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 56, 5, 1, 1, 1),
(843, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 57, 5, 1, 1, 1),
(844, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 58, 5, 1, 1, 1),
(845, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 59, 5, 1, 1, 1),
(846, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 60, 5, 1, 1, 1),
(847, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 61, 5, 1, 1, 1),
(848, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 62, 5, 1, 1, 1),
(849, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 63, 5, 1, 1, 1),
(850, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 64, 5, 1, 1, 1),
(851, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 65, 5, 1, 1, 1),
(852, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 66, 5, 1, 1, 1),
(853, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 67, 5, 1, 1, 1),
(854, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 68, 5, 1, 1, 1),
(855, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 69, 5, 1, 1, 1),
(856, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 70, 5, 1, 1, 1),
(857, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 71, 5, 1, 1, 1),
(858, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 72, 5, 1, 1, 1),
(859, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 73, 5, 1, 1, 1),
(860, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 74, 5, 1, 1, 1),
(861, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 75, 5, 1, 1, 1),
(862, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 76, 5, 1, 1, 1),
(863, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 77, 5, 1, 1, 1),
(864, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 79, 5, 1, 1, 1),
(865, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 80, 5, 1, 1, 1),
(866, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 81, 5, 1, 1, 1),
(867, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 82, 5, 1, 1, 1),
(868, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 83, 5, 1, 1, 1),
(869, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 84, 5, 1, 1, 1),
(870, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 85, 5, 1, 1, 1),
(871, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 86, 5, 1, 1, 1),
(872, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 87, 5, 1, 1, 1),
(873, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 88, 5, 1, 1, 1),
(874, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 89, 5, 1, 1, 1),
(875, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 90, 5, 1, 1, 1),
(876, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 91, 5, 1, 1, 1),
(877, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 92, 5, 1, 1, 1),
(878, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 93, 5, 1, 1, 1),
(879, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 94, 5, 1, 1, 1),
(880, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 95, 5, 1, 1, 1),
(881, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 96, 5, 1, 1, 1),
(882, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 97, 5, 1, 1, 1),
(883, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 98, 5, 1, 1, 1),
(884, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 99, 5, 1, 1, 1),
(885, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 100, 5, 1, 1, 1),
(886, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 101, 5, 1, 1, 1),
(887, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 102, 5, 1, 1, 1),
(888, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 103, 5, 1, 1, 1),
(889, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 104, 5, 1, 1, 1),
(890, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 105, 5, 1, 1, 1),
(891, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 106, 5, 1, 1, 1),
(892, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 107, 5, 1, 1, 1),
(893, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 108, 5, 1, 1, 1),
(894, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 109, 5, 1, 1, 1),
(895, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 110, 5, 1, 1, 1),
(896, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 111, 5, 1, 1, 1),
(897, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 112, 5, 1, 1, 1),
(898, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 113, 5, 1, 1, 1),
(899, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 114, 5, 1, 1, 1),
(900, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 115, 5, 1, 1, 1),
(901, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 116, 5, 1, 1, 1),
(902, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 117, 5, 1, 1, 1),
(903, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 118, 5, 1, 1, 1),
(904, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 119, 5, 1, 1, 1),
(905, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 120, 5, 1, 1, 1),
(906, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 121, 5, 1, 1, 1),
(907, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 122, 5, 1, 1, 1),
(908, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 123, 5, 1, 1, 1),
(909, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 124, 5, 1, 1, 1),
(910, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 125, 5, 1, 1, 1),
(911, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 126, 5, 1, 1, 1),
(912, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 127, 5, 1, 1, 1),
(913, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 128, 5, 1, 1, 1),
(914, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 129, 5, 1, 1, 1),
(915, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 130, 5, 1, 1, 1),
(916, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 131, 5, 1, 1, 1),
(917, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 132, 5, 1, 1, 1),
(918, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 133, 5, 1, 1, 1),
(919, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 134, 5, 1, 1, 1),
(920, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 135, 5, 1, 1, 1),
(921, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 136, 5, 1, 1, 1),
(922, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 137, 5, 1, 1, 1),
(923, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 138, 5, 1, 1, 1),
(924, 1, '2019-11-18 02:13:48', '2019-11-18 02:13:48', 139, 5, 1, 1, 1),
(925, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 140, 5, 1, 1, 1),
(926, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 141, 5, 1, 1, 1),
(927, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 142, 5, 1, 1, 1),
(928, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 143, 5, 1, 1, 1),
(929, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 144, 5, 1, 1, 1),
(930, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 145, 5, 1, 1, 1),
(931, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 146, 5, 1, 1, 1),
(932, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 147, 5, 1, 1, 1),
(933, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 148, 5, 1, 1, 1),
(934, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 149, 5, 1, 1, 1),
(935, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 150, 5, 1, 1, 1),
(936, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 151, 5, 1, 1, 1),
(937, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 152, 5, 1, 1, 1),
(938, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 153, 5, 1, 1, 1),
(939, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 154, 5, 1, 1, 1),
(940, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 155, 5, 1, 1, 1),
(941, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 156, 5, 1, 1, 1),
(942, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 157, 5, 1, 1, 1),
(943, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 158, 5, 1, 1, 1),
(944, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 159, 5, 1, 1, 1),
(945, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 160, 5, 1, 1, 1),
(946, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 161, 5, 1, 1, 1),
(947, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 162, 5, 1, 1, 1),
(948, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 163, 5, 1, 1, 1),
(949, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 164, 5, 1, 1, 1),
(950, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 165, 5, 1, 1, 1),
(951, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 166, 5, 1, 1, 1),
(952, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 167, 5, 1, 1, 1),
(953, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 168, 5, 1, 1, 1),
(954, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 169, 5, 1, 1, 1),
(955, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 170, 5, 1, 1, 1),
(956, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 171, 5, 1, 1, 1),
(957, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 172, 5, 1, 1, 1),
(958, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 173, 5, 1, 1, 1),
(959, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 174, 5, 1, 1, 1),
(960, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 175, 5, 1, 1, 1),
(961, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 176, 5, 1, 1, 1),
(962, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 177, 5, 1, 1, 1),
(963, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 178, 5, 1, 1, 1),
(964, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 179, 5, 1, 1, 1),
(965, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 180, 5, 1, 1, 1),
(966, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 181, 5, 1, 1, 1),
(967, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 182, 5, 1, 1, 1),
(968, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 183, 5, 1, 1, 1),
(969, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 184, 5, 1, 1, 1),
(970, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 185, 5, 1, 1, 1),
(971, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 186, 5, 1, 1, 1),
(972, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 187, 5, 1, 1, 1),
(973, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 188, 5, 1, 1, 1),
(974, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 189, 5, 1, 1, 1),
(975, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 190, 5, 1, 1, 1),
(976, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 191, 5, 1, 1, 1),
(977, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 192, 5, 1, 1, 1),
(978, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 193, 5, 1, 1, 1),
(979, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 194, 5, 1, 1, 1),
(980, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 195, 5, 1, 1, 1),
(981, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 196, 5, 1, 1, 1),
(982, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 197, 5, 1, 1, 1),
(983, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 198, 5, 1, 1, 1),
(984, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 199, 5, 1, 1, 1),
(985, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 200, 5, 1, 1, 1),
(986, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 201, 5, 1, 1, 1),
(987, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 202, 5, 1, 1, 1),
(988, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 203, 5, 1, 1, 1),
(989, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 204, 5, 1, 1, 1),
(990, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 205, 5, 1, 1, 1),
(991, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 206, 5, 1, 1, 1),
(992, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 207, 5, 1, 1, 1),
(993, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 208, 5, 1, 1, 1),
(994, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 209, 5, 1, 1, 1),
(995, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 210, 5, 1, 1, 1),
(996, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 211, 5, 1, 1, 1),
(997, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 214, 5, 1, 1, 1),
(998, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 215, 5, 1, 1, 1),
(999, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 216, 5, 1, 1, 1),
(1000, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 217, 5, 1, 1, 1),
(1001, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 218, 5, 1, 1, 1),
(1002, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 219, 5, 1, 1, 1),
(1003, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 220, 5, 1, 1, 1),
(1004, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 221, 5, 1, 1, 1),
(1005, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 222, 5, 1, 1, 1),
(1006, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 223, 5, 1, 1, 1),
(1007, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 224, 5, 1, 1, 1),
(1008, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 225, 5, 1, 1, 1),
(1009, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 226, 5, 1, 1, 1),
(1010, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 227, 5, 1, 1, 1),
(1011, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 228, 5, 1, 1, 1),
(1012, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 229, 5, 1, 1, 1),
(1013, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 230, 5, 1, 1, 1),
(1014, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 231, 5, 1, 1, 1),
(1015, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 232, 5, 1, 1, 1),
(1016, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 233, 5, 1, 1, 1),
(1017, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 234, 5, 1, 1, 1),
(1018, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 235, 5, 1, 1, 1),
(1019, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 236, 5, 1, 1, 1),
(1020, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 237, 5, 1, 1, 1),
(1021, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 238, 5, 1, 1, 1),
(1022, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 239, 5, 1, 1, 1),
(1023, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 240, 5, 1, 1, 1),
(1024, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 241, 5, 1, 1, 1),
(1025, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 242, 5, 1, 1, 1),
(1026, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 243, 5, 1, 1, 1),
(1027, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 244, 5, 1, 1, 1),
(1028, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 245, 5, 1, 1, 1),
(1029, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 246, 5, 1, 1, 1),
(1030, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 247, 5, 1, 1, 1),
(1031, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 248, 5, 1, 1, 1),
(1032, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 249, 5, 1, 1, 1),
(1033, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 250, 5, 1, 1, 1),
(1034, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 251, 5, 1, 1, 1),
(1035, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 252, 5, 1, 1, 1),
(1036, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 253, 5, 1, 1, 1),
(1037, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 254, 5, 1, 1, 1),
(1038, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 255, 5, 1, 1, 1),
(1039, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 256, 5, 1, 1, 1),
(1040, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 257, 5, 1, 1, 1),
(1041, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 258, 5, 1, 1, 1),
(1042, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 259, 5, 1, 1, 1),
(1043, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 260, 5, 1, 1, 1),
(1044, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 261, 5, 1, 1, 1),
(1045, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 262, 5, 1, 1, 1),
(1046, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 263, 5, 1, 1, 1),
(1047, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 264, 5, 1, 1, 1),
(1048, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 265, 5, 1, 1, 1),
(1049, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 266, 5, 1, 1, 1),
(1050, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 267, 5, 1, 1, 1),
(1051, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 268, 5, 1, 1, 1),
(1052, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 269, 5, 1, 1, 1),
(1053, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 270, 5, 1, 1, 1),
(1054, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 271, 5, 1, 1, 1),
(1055, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 272, 5, 1, 1, 1),
(1056, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 273, 5, 1, 1, 1),
(1057, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 274, 5, 1, 1, 1),
(1058, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 275, 5, 1, 1, 1),
(1059, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 276, 5, 1, 1, 1),
(1060, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 277, 5, 1, 1, 1),
(1061, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 278, 5, 1, 1, 1),
(1062, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 279, 5, 1, 1, 1),
(1063, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 280, 5, 1, 1, 1),
(1064, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 281, 5, 1, 1, 1),
(1065, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 282, 5, 1, 1, 1),
(1066, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 283, 5, 1, 1, 1),
(1067, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 284, 5, 1, 1, 1),
(1068, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 285, 5, 1, 1, 1),
(1069, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 286, 5, 1, 1, 1),
(1070, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 287, 5, 1, 1, 1),
(1071, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 288, 5, 1, 1, 1),
(1072, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 289, 5, 1, 1, 1),
(1073, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 290, 5, 1, 1, 1),
(1074, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 291, 5, 1, 1, 1),
(1075, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 292, 5, 1, 1, 1),
(1076, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 293, 5, 1, 1, 1),
(1077, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 294, 5, 1, 1, 1),
(1078, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 295, 5, 1, 1, 1),
(1079, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 296, 5, 1, 1, 1),
(1080, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 297, 5, 1, 1, 1),
(1081, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 298, 5, 1, 1, 1),
(1082, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 299, 5, 1, 1, 1),
(1083, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 300, 5, 1, 1, 1),
(1084, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 301, 5, 1, 1, 1),
(1085, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 302, 5, 1, 1, 1),
(1086, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 303, 5, 1, 1, 1),
(1087, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 304, 5, 1, 1, 1),
(1088, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 305, 5, 1, 1, 1),
(1089, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 306, 5, 1, 1, 1),
(1090, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 307, 5, 1, 1, 1),
(1091, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 308, 5, 1, 1, 1),
(1092, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 309, 5, 1, 1, 1),
(1093, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 310, 5, 1, 1, 1),
(1094, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 311, 5, 1, 1, 1),
(1095, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 312, 5, 1, 1, 1),
(1096, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 313, 5, 1, 1, 1),
(1097, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 314, 5, 1, 1, 1),
(1098, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 315, 5, 1, 1, 1);
INSERT INTO `sm_role_permissions` (`id`, `active_status`, `created_at`, `updated_at`, `module_link_id`, `role_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1099, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 316, 5, 1, 1, 1),
(1100, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 317, 5, 1, 1, 1),
(1101, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 318, 5, 1, 1, 1),
(1102, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 319, 5, 1, 1, 1),
(1103, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 320, 5, 1, 1, 1),
(1104, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 321, 5, 1, 1, 1),
(1105, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 322, 5, 1, 1, 1),
(1106, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 323, 5, 1, 1, 1),
(1107, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 324, 5, 1, 1, 1),
(1108, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 325, 5, 1, 1, 1),
(1109, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 326, 5, 1, 1, 1),
(1110, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 327, 5, 1, 1, 1),
(1111, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 328, 5, 1, 1, 1),
(1112, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 329, 5, 1, 1, 1),
(1113, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 330, 5, 1, 1, 1),
(1114, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 331, 5, 1, 1, 1),
(1115, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 332, 5, 1, 1, 1),
(1116, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 333, 5, 1, 1, 1),
(1117, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 334, 5, 1, 1, 1),
(1118, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 335, 5, 1, 1, 1),
(1119, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 336, 5, 1, 1, 1),
(1120, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 337, 5, 1, 1, 1),
(1121, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 338, 5, 1, 1, 1),
(1122, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 339, 5, 1, 1, 1),
(1123, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 340, 5, 1, 1, 1),
(1124, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 341, 5, 1, 1, 1),
(1125, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 342, 5, 1, 1, 1),
(1126, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 343, 5, 1, 1, 1),
(1127, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 344, 5, 1, 1, 1),
(1128, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 345, 5, 1, 1, 1),
(1129, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 346, 5, 1, 1, 1),
(1130, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 347, 5, 1, 1, 1),
(1131, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 348, 5, 1, 1, 1),
(1132, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 349, 5, 1, 1, 1),
(1133, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 350, 5, 1, 1, 1),
(1134, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 351, 5, 1, 1, 1),
(1135, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 352, 5, 1, 1, 1),
(1136, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 353, 5, 1, 1, 1),
(1137, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 354, 5, 1, 1, 1),
(1138, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 355, 5, 1, 1, 1),
(1139, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 356, 5, 1, 1, 1),
(1140, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 357, 5, 1, 1, 1),
(1141, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 358, 5, 1, 1, 1),
(1142, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 359, 5, 1, 1, 1),
(1143, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 360, 5, 1, 1, 1),
(1144, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 361, 5, 1, 1, 1),
(1145, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 362, 5, 1, 1, 1),
(1146, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 363, 5, 1, 1, 1),
(1147, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 364, 5, 1, 1, 1),
(1148, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 365, 5, 1, 1, 1),
(1149, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 366, 5, 1, 1, 1),
(1150, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 367, 5, 1, 1, 1),
(1151, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 368, 5, 1, 1, 1),
(1152, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 369, 5, 1, 1, 1),
(1153, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 370, 5, 1, 1, 1),
(1154, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 371, 5, 1, 1, 1),
(1155, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 372, 5, 1, 1, 1),
(1156, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 373, 5, 1, 1, 1),
(1157, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 374, 5, 1, 1, 1),
(1158, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 375, 5, 1, 1, 1),
(1159, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 376, 5, 1, 1, 1),
(1160, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 377, 5, 1, 1, 1),
(1161, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 378, 5, 1, 1, 1),
(1162, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 379, 5, 1, 1, 1),
(1163, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 380, 5, 1, 1, 1),
(1164, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 381, 5, 1, 1, 1),
(1165, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 382, 5, 1, 1, 1),
(1166, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 383, 5, 1, 1, 1),
(1167, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 384, 5, 1, 1, 1),
(1168, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 385, 5, 1, 1, 1),
(1169, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 386, 5, 1, 1, 1),
(1170, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 387, 5, 1, 1, 1),
(1171, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 388, 5, 1, 1, 1),
(1172, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 389, 5, 1, 1, 1),
(1173, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 390, 5, 1, 1, 1),
(1174, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 391, 5, 1, 1, 1),
(1175, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 392, 5, 1, 1, 1),
(1176, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 393, 5, 1, 1, 1),
(1177, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 394, 5, 1, 1, 1),
(1178, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 395, 5, 1, 1, 1),
(1179, 1, '2019-11-18 02:13:49', '2019-11-18 02:13:49', 396, 5, 1, 1, 1),
(7213, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 1, 4, 1, 1, 1),
(7214, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 2, 4, 1, 1, 1),
(7215, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 3, 4, 1, 1, 1),
(7216, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 4, 4, 1, 1, 1),
(7217, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 5, 4, 1, 1, 1),
(7218, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 6, 4, 1, 1, 1),
(7219, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 7, 4, 1, 1, 1),
(7220, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 8, 4, 1, 1, 1),
(7221, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 9, 4, 1, 1, 1),
(7222, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 10, 4, 1, 1, 1),
(7223, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 61, 4, 1, 1, 1),
(7224, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 62, 4, 1, 1, 1),
(7225, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 63, 4, 1, 1, 1),
(7226, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 64, 4, 1, 1, 1),
(7227, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 65, 4, 1, 1, 1),
(7228, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 66, 4, 1, 1, 1),
(7229, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 67, 4, 1, 1, 1),
(7230, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 68, 4, 1, 1, 1),
(7231, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 69, 4, 1, 1, 1),
(7232, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 70, 4, 1, 1, 1),
(7233, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 71, 4, 1, 1, 1),
(7234, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 72, 4, 1, 1, 1),
(7235, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 73, 4, 1, 1, 1),
(7236, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 74, 4, 1, 1, 1),
(7237, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 75, 4, 1, 1, 1),
(7238, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 76, 4, 1, 1, 1),
(7239, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 77, 4, 1, 1, 1),
(7240, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 79, 4, 1, 1, 1),
(7241, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 80, 4, 1, 1, 1),
(7242, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 81, 4, 1, 1, 1),
(7243, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 82, 4, 1, 1, 1),
(7244, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 83, 4, 1, 1, 1),
(7245, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 84, 4, 1, 1, 1),
(7246, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 85, 4, 1, 1, 1),
(7247, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 86, 4, 1, 1, 1),
(7248, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 87, 4, 1, 1, 1),
(7249, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 88, 4, 1, 1, 1),
(7250, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 89, 4, 1, 1, 1),
(7251, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 90, 4, 1, 1, 1),
(7252, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 91, 4, 1, 1, 1),
(7253, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 92, 4, 1, 1, 1),
(7254, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 93, 4, 1, 1, 1),
(7255, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 94, 4, 1, 1, 1),
(7256, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 95, 4, 1, 1, 1),
(7257, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 96, 4, 1, 1, 1),
(7258, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 97, 4, 1, 1, 1),
(7259, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 98, 4, 1, 1, 1),
(7260, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 99, 4, 1, 1, 1),
(7261, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 100, 4, 1, 1, 1),
(7262, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 101, 4, 1, 1, 1),
(7263, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 102, 4, 1, 1, 1),
(7264, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 103, 4, 1, 1, 1),
(7265, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 104, 4, 1, 1, 1),
(7266, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 105, 4, 1, 1, 1),
(7267, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 106, 4, 1, 1, 1),
(7268, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 107, 4, 1, 1, 1),
(7269, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 188, 4, 1, 1, 1),
(7270, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 193, 4, 1, 1, 1),
(7271, 1, '2019-12-03 05:27:28', '2019-12-03 05:27:28', 194, 4, 1, 1, 1),
(7272, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 195, 4, 1, 1, 1),
(7273, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 196, 4, 1, 1, 1),
(7274, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 197, 4, 1, 1, 1),
(7275, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 198, 4, 1, 1, 1),
(7276, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 207, 4, 1, 1, 1),
(7277, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 208, 4, 1, 1, 1),
(7278, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 209, 4, 1, 1, 1),
(7279, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 210, 4, 1, 1, 1),
(7280, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 211, 4, 1, 1, 1),
(7281, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 214, 4, 1, 1, 1),
(7282, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 215, 4, 1, 1, 1),
(7283, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 216, 4, 1, 1, 1),
(7284, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 217, 4, 1, 1, 1),
(7285, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 218, 4, 1, 1, 1),
(7286, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 219, 4, 1, 1, 1),
(7287, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 220, 4, 1, 1, 1),
(7288, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 221, 4, 1, 1, 1),
(7289, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 222, 4, 1, 1, 1),
(7290, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 223, 4, 1, 1, 1),
(7291, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 224, 4, 1, 1, 1),
(7292, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 225, 4, 1, 1, 1),
(7293, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 226, 4, 1, 1, 1),
(7294, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 227, 4, 1, 1, 1),
(7295, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 228, 4, 1, 1, 1),
(7296, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 229, 4, 1, 1, 1),
(7297, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 230, 4, 1, 1, 1),
(7298, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 231, 4, 1, 1, 1),
(7299, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 232, 4, 1, 1, 1),
(7300, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 233, 4, 1, 1, 1),
(7301, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 234, 4, 1, 1, 1),
(7302, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 235, 4, 1, 1, 1),
(7303, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 236, 4, 1, 1, 1),
(7304, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 237, 4, 1, 1, 1),
(7305, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 238, 4, 1, 1, 1),
(7306, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 239, 4, 1, 1, 1),
(7307, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 240, 4, 1, 1, 1),
(7308, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 241, 4, 1, 1, 1),
(7309, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 242, 4, 1, 1, 1),
(7310, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 243, 4, 1, 1, 1),
(7311, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 244, 4, 1, 1, 1),
(7312, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 245, 4, 1, 1, 1),
(7313, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 246, 4, 1, 1, 1),
(7314, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 247, 4, 1, 1, 1),
(7315, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 248, 4, 1, 1, 1),
(7316, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 249, 4, 1, 1, 1),
(7317, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 250, 4, 1, 1, 1),
(7318, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 251, 4, 1, 1, 1),
(7319, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 252, 4, 1, 1, 1),
(7320, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 253, 4, 1, 1, 1),
(7321, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 254, 4, 1, 1, 1),
(7322, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 255, 4, 1, 1, 1),
(7323, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 256, 4, 1, 1, 1),
(7324, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 257, 4, 1, 1, 1),
(7325, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 258, 4, 1, 1, 1),
(7326, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 259, 4, 1, 1, 1),
(7327, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 260, 4, 1, 1, 1),
(7328, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 261, 4, 1, 1, 1),
(7329, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 262, 4, 1, 1, 1),
(7330, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 263, 4, 1, 1, 1),
(7331, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 264, 4, 1, 1, 1),
(7332, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 265, 4, 1, 1, 1),
(7333, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 266, 4, 1, 1, 1),
(7334, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 267, 4, 1, 1, 1),
(7335, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 268, 4, 1, 1, 1),
(7336, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 269, 4, 1, 1, 1),
(7337, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 270, 4, 1, 1, 1),
(7338, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 271, 4, 1, 1, 1),
(7339, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 272, 4, 1, 1, 1),
(7340, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 273, 4, 1, 1, 1),
(7341, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 274, 4, 1, 1, 1),
(7342, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 275, 4, 1, 1, 1),
(7343, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 276, 4, 1, 1, 1),
(7344, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 277, 4, 1, 1, 1),
(7345, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 278, 4, 1, 1, 1),
(7346, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 279, 4, 1, 1, 1),
(7347, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 280, 4, 1, 1, 1),
(7348, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 281, 4, 1, 1, 1),
(7349, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 282, 4, 1, 1, 1),
(7350, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 283, 4, 1, 1, 1),
(7351, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 284, 4, 1, 1, 1),
(7352, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 285, 4, 1, 1, 1),
(7353, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 385, 4, 1, 1, 1),
(7354, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 386, 4, 1, 1, 1),
(7355, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 387, 4, 1, 1, 1),
(7356, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 388, 4, 1, 1, 1),
(7357, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 391, 4, 1, 1, 1),
(7358, 1, '2019-12-03 05:27:29', '2019-12-03 05:27:29', 392, 4, 1, 1, 1),
(7359, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 1, 6, 1, 1, 1),
(7360, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 2, 6, 1, 1, 1),
(7361, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 3, 6, 1, 1, 1),
(7362, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 4, 6, 1, 1, 1),
(7363, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 5, 6, 1, 1, 1),
(7364, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 6, 6, 1, 1, 1),
(7365, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 7, 6, 1, 1, 1),
(7366, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 8, 6, 1, 1, 1),
(7367, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 9, 6, 1, 1, 1),
(7368, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 10, 6, 1, 1, 1),
(7369, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 61, 6, 1, 1, 1),
(7370, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 64, 6, 1, 1, 1),
(7371, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 108, 6, 1, 1, 1),
(7372, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 109, 6, 1, 1, 1),
(7373, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 110, 6, 1, 1, 1),
(7374, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 111, 6, 1, 1, 1),
(7375, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 112, 6, 1, 1, 1),
(7376, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 113, 6, 1, 1, 1),
(7377, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 114, 6, 1, 1, 1),
(7378, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 115, 6, 1, 1, 1),
(7379, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 116, 6, 1, 1, 1),
(7380, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 117, 6, 1, 1, 1),
(7381, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 118, 6, 1, 1, 1),
(7382, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 119, 6, 1, 1, 1),
(7383, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 120, 6, 1, 1, 1),
(7384, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 121, 6, 1, 1, 1),
(7385, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 122, 6, 1, 1, 1),
(7386, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 123, 6, 1, 1, 1),
(7387, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 124, 6, 1, 1, 1),
(7388, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 125, 6, 1, 1, 1),
(7389, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 126, 6, 1, 1, 1),
(7390, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 127, 6, 1, 1, 1),
(7391, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 128, 6, 1, 1, 1),
(7392, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 129, 6, 1, 1, 1),
(7393, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 130, 6, 1, 1, 1),
(7394, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 131, 6, 1, 1, 1),
(7395, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 132, 6, 1, 1, 1),
(7396, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 133, 6, 1, 1, 1),
(7397, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 134, 6, 1, 1, 1),
(7398, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 135, 6, 1, 1, 1),
(7399, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 136, 6, 1, 1, 1),
(7400, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 137, 6, 1, 1, 1),
(7401, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 138, 6, 1, 1, 1),
(7402, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 139, 6, 1, 1, 1),
(7403, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 140, 6, 1, 1, 1),
(7404, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 141, 6, 1, 1, 1),
(7405, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 142, 6, 1, 1, 1),
(7406, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 143, 6, 1, 1, 1),
(7407, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 144, 6, 1, 1, 1),
(7408, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 145, 6, 1, 1, 1),
(7409, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 146, 6, 1, 1, 1),
(7410, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 147, 6, 1, 1, 1),
(7411, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 148, 6, 1, 1, 1),
(7412, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 149, 6, 1, 1, 1),
(7413, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 150, 6, 1, 1, 1),
(7414, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 151, 6, 1, 1, 1),
(7415, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 152, 6, 1, 1, 1),
(7416, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 153, 6, 1, 1, 1),
(7417, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 154, 6, 1, 1, 1),
(7418, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 155, 6, 1, 1, 1),
(7419, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 156, 6, 1, 1, 1),
(7420, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 157, 6, 1, 1, 1),
(7421, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 158, 6, 1, 1, 1),
(7422, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 159, 6, 1, 1, 1),
(7423, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 160, 6, 1, 1, 1),
(7424, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 161, 6, 1, 1, 1),
(7425, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 310, 6, 1, 1, 1),
(7426, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 315, 6, 1, 1, 1),
(7427, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 316, 6, 1, 1, 1),
(7428, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 317, 6, 1, 1, 1),
(7429, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 318, 6, 1, 1, 1),
(7430, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 319, 6, 1, 1, 1),
(7431, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 320, 6, 1, 1, 1),
(7432, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 321, 6, 1, 1, 1),
(7433, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 322, 6, 1, 1, 1),
(7434, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 323, 6, 1, 1, 1),
(7435, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 324, 6, 1, 1, 1),
(7436, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 325, 6, 1, 1, 1),
(7437, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 326, 6, 1, 1, 1),
(7438, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 327, 6, 1, 1, 1),
(7439, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 328, 6, 1, 1, 1),
(7440, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 329, 6, 1, 1, 1),
(7441, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 330, 6, 1, 1, 1),
(7442, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 331, 6, 1, 1, 1),
(7443, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 332, 6, 1, 1, 1),
(7444, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 333, 6, 1, 1, 1),
(7445, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 334, 6, 1, 1, 1),
(7446, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 335, 6, 1, 1, 1),
(7447, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 336, 6, 1, 1, 1),
(7448, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 337, 6, 1, 1, 1),
(7449, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 338, 6, 1, 1, 1),
(7450, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 339, 6, 1, 1, 1),
(7451, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 340, 6, 1, 1, 1),
(7452, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 341, 6, 1, 1, 1),
(7453, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 342, 6, 1, 1, 1),
(7454, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 343, 6, 1, 1, 1),
(7455, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 344, 6, 1, 1, 1),
(7456, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 345, 6, 1, 1, 1),
(7457, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 346, 6, 1, 1, 1),
(7458, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 347, 6, 1, 1, 1),
(7459, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 381, 6, 1, 1, 1),
(7460, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 382, 6, 1, 1, 1),
(7461, 1, '2019-12-03 05:33:41', '2019-12-03 05:33:41', 393, 6, 1, 1, 1),
(7574, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 1, 8, 1, 1, 1),
(7575, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 2, 8, 1, 1, 1),
(7576, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 3, 8, 1, 1, 1),
(7577, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 4, 8, 1, 1, 1),
(7578, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 5, 8, 1, 1, 1),
(7579, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 6, 8, 1, 1, 1),
(7580, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 7, 8, 1, 1, 1),
(7581, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 8, 8, 1, 1, 1),
(7582, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 9, 8, 1, 1, 1),
(7583, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 10, 8, 1, 1, 1),
(7584, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 54, 8, 1, 1, 1),
(7585, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 61, 8, 1, 1, 1),
(7586, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 64, 8, 1, 1, 1),
(7587, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 160, 8, 1, 1, 1),
(7588, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 161, 8, 1, 1, 1),
(7589, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 286, 8, 1, 1, 1),
(7590, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 287, 8, 1, 1, 1),
(7591, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 288, 8, 1, 1, 1),
(7592, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 289, 8, 1, 1, 1),
(7593, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 290, 8, 1, 1, 1),
(7594, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 291, 8, 1, 1, 1),
(7595, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 292, 8, 1, 1, 1),
(7596, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 293, 8, 1, 1, 1),
(7597, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 294, 8, 1, 1, 1),
(7598, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 295, 8, 1, 1, 1),
(7599, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 296, 8, 1, 1, 1),
(7600, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 297, 8, 1, 1, 1),
(7601, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 298, 8, 1, 1, 1),
(7602, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 299, 8, 1, 1, 1),
(7603, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 300, 8, 1, 1, 1),
(7604, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 301, 8, 1, 1, 1),
(7605, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 302, 8, 1, 1, 1),
(7606, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 303, 8, 1, 1, 1),
(7607, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 304, 8, 1, 1, 1),
(7608, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 305, 8, 1, 1, 1),
(7609, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 306, 8, 1, 1, 1),
(7610, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 307, 8, 1, 1, 1),
(7611, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 308, 8, 1, 1, 1),
(7612, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 309, 8, 1, 1, 1),
(7613, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 310, 8, 1, 1, 1),
(7614, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 311, 8, 1, 1, 1),
(7615, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 312, 8, 1, 1, 1),
(7616, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 313, 8, 1, 1, 1),
(7617, 1, '2019-12-03 05:42:20', '2019-12-03 05:42:20', 314, 8, 1, 1, 1),
(7618, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 1, 7, 1, 1, 1),
(7619, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 2, 7, 1, 1, 1),
(7620, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 3, 7, 1, 1, 1),
(7621, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 4, 7, 1, 1, 1),
(7622, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 5, 7, 1, 1, 1),
(7623, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 6, 7, 1, 1, 1),
(7624, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 7, 7, 1, 1, 1),
(7625, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 8, 7, 1, 1, 1),
(7626, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 9, 7, 1, 1, 1),
(7627, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 10, 7, 1, 1, 1),
(7628, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 11, 7, 1, 1, 1),
(7629, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 12, 7, 1, 1, 1),
(7630, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 13, 7, 1, 1, 1),
(7631, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 14, 7, 1, 1, 1),
(7632, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 15, 7, 1, 1, 1),
(7633, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 16, 7, 1, 1, 1),
(7634, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 17, 7, 1, 1, 1),
(7635, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 18, 7, 1, 1, 1),
(7636, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 19, 7, 1, 1, 1),
(7637, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 20, 7, 1, 1, 1),
(7638, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 21, 7, 1, 1, 1),
(7639, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 22, 7, 1, 1, 1),
(7640, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 23, 7, 1, 1, 1),
(7641, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 24, 7, 1, 1, 1),
(7642, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 25, 7, 1, 1, 1),
(7643, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 26, 7, 1, 1, 1),
(7644, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 27, 7, 1, 1, 1),
(7645, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 28, 7, 1, 1, 1),
(7646, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 29, 7, 1, 1, 1),
(7647, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 30, 7, 1, 1, 1),
(7648, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 31, 7, 1, 1, 1),
(7649, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 32, 7, 1, 1, 1),
(7650, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 33, 7, 1, 1, 1),
(7651, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 34, 7, 1, 1, 1),
(7652, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 35, 7, 1, 1, 1),
(7653, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 36, 7, 1, 1, 1),
(7654, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 37, 7, 1, 1, 1),
(7655, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 38, 7, 1, 1, 1),
(7656, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 39, 7, 1, 1, 1),
(7657, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 40, 7, 1, 1, 1),
(7658, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 61, 7, 1, 1, 1),
(7659, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 64, 7, 1, 1, 1),
(7660, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 160, 7, 1, 1, 1),
(7661, 1, '2019-12-03 05:48:21', '2019-12-03 05:48:21', 161, 7, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_room_lists`
--

CREATE TABLE `sm_room_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_bed` int(11) NOT NULL,
  `cost_per_bed` double(16,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `dormitory_id` int(10) UNSIGNED DEFAULT 1,
  `room_type_id` int(10) UNSIGNED DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_room_types`
--

CREATE TABLE `sm_room_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_routes`
--

CREATE TABLE `sm_routes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `far` double(10,2) NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_schools`
--

CREATE TABLE `sm_schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `school_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` tinyint(4) NOT NULL DEFAULT 1,
  `updated_by` tinyint(4) NOT NULL DEFAULT 1,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `starting_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `plan_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_type` enum('yearly','monthly','once') COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 approved, 0 pending',
  `is_enabled` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes' COMMENT 'yes=Login School, no=Login Off',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_schools`
--

INSERT INTO `sm_schools` (`id`, `school_name`, `created_by`, `updated_by`, `email`, `address`, `phone`, `school_code`, `is_email_verified`, `starting_date`, `ending_date`, `package_id`, `plan_type`, `contact_type`, `active_status`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 'Gehlot classes', 1, 1, 'admin@gehlot.com', 'Gehlot Classes, Maan Ji Ka Hatha, Paota, Jodhpur', '+919829405475', '12345678', 0, '2020-05-17', NULL, NULL, NULL, 'yearly', 1, 'yes', NULL, '2020-10-15 15:23:14');

-- --------------------------------------------------------

--
-- Table structure for table `sm_seat_plans`
--

CREATE TABLE `sm_seat_plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_seat_plan_children`
--

CREATE TABLE `sm_seat_plan_children` (
  `id` int(10) UNSIGNED NOT NULL,
  `room_id` tinyint(4) DEFAULT NULL,
  `assign_students` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seat_plan_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_sections`
--

CREATE TABLE `sm_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `section_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_send_messages`
--

CREATE TABLE `sm_send_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message_des` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notice_date` date DEFAULT NULL,
  `publish_on` date DEFAULT NULL,
  `message_to` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'message sent to these roles',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_sessions`
--

CREATE TABLE `sm_sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_sessions`
--

INSERT INTO `sm_sessions` (`id`, `session`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '2020-2021', 1, '2020-05-17 05:35:12', '2020-05-17 05:35:12', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_setup_admins`
--

CREATE TABLE `sm_setup_admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) DEFAULT NULL COMMENT '1 purpose, 2 complaint type, 3 source, 4 Reference',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_sms_gateways`
--

CREATE TABLE `sm_sms_gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clickatell_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clickatell_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clickatell_api_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_account_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_authentication_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_registered_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg91_authentication_key_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg91_sender_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg91_route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg91_country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_sms_gateways`
--

INSERT INTO `sm_sms_gateways` (`id`, `gateway_name`, `clickatell_username`, `clickatell_password`, `clickatell_api_id`, `twilio_account_sid`, `twilio_authentication_token`, `twilio_registered_no`, `msg91_authentication_key_sid`, `msg91_sender_id`, `msg91_route`, `msg91_country_code`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Twilio', 'demo2', '12336', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1),
(2, 'Msg91', 'demo3', '23445', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_social_media_icons`
--

CREATE TABLE `sm_social_media_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 active, 0 inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_social_media_icons`
--

INSERT INTO `sm_social_media_icons` (`id`, `url`, `icon`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, '#', 'fa fa-facebook', 1, NULL, '2020-08-12 19:09:19', 1, 1, 1),
(2, '#', 'fa fa-twitter', 1, NULL, '2020-08-12 19:09:33', 1, 1, 1),
(3, '#', 'fa fa-dribbble', 1, NULL, '2020-08-12 19:09:46', 1, 1, 1),
(4, '#', 'fa fa-linkedin', 1, NULL, '2020-08-12 19:10:03', 1, 1, 1),
(5, 'https://www.facebook.com/gehlotclassesofficial', 'Facebook', 1, '2020-10-15 15:41:49', '2020-10-15 15:41:49', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_staffs`
--

CREATE TABLE `sm_staffs` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_no` int(11) DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mothers_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT '2020-05-17',
  `date_of_joining` date DEFAULT '2020-05-17',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_mobile` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merital_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `epf_no` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_salary` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_type` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `casual_leave` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_leave` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metarnity_leave` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_brach` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twiteer_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instragram_url` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joining_letter` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_document` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `driving_license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driving_license_ex_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `designation_id` int(10) UNSIGNED DEFAULT 1,
  `department_id` int(10) UNSIGNED DEFAULT 1,
  `user_id` int(10) UNSIGNED DEFAULT 1,
  `role_id` int(10) UNSIGNED DEFAULT 1,
  `gender_id` int(10) UNSIGNED DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_staffs`
--

INSERT INTO `sm_staffs` (`id`, `staff_no`, `first_name`, `last_name`, `full_name`, `fathers_name`, `mothers_name`, `date_of_birth`, `date_of_joining`, `email`, `mobile`, `emergency_mobile`, `marital_status`, `merital_status`, `staff_photo`, `current_address`, `permanent_address`, `qualification`, `experience`, `epf_no`, `basic_salary`, `contract_type`, `location`, `casual_leave`, `medical_leave`, `metarnity_leave`, `bank_account_name`, `bank_account_no`, `bank_name`, `bank_brach`, `facebook_url`, `twiteer_url`, `linkedin_url`, `instragram_url`, `joining_letter`, `resume`, `other_document`, `notes`, `active_status`, `driving_license`, `driving_license_ex_date`, `created_at`, `updated_at`, `designation_id`, `department_id`, `user_id`, `role_id`, `gender_id`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 1, 'System', 'Administrator', 'System Administrator', NULL, NULL, '2020-05-17', '2020-05-17', 'admin@gehlot.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2020-05-17 05:35:12', '2020-08-13 00:59:38', 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_staff_attendance_imports`
--

CREATE TABLE `sm_staff_attendance_imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendence_date` date DEFAULT NULL,
  `in_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_staff_attendences`
--

CREATE TABLE `sm_staff_attendences` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendence_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendence_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `staff_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_students`
--

CREATE TABLE `sm_students` (
  `id` int(10) UNSIGNED NOT NULL,
  `admission_no` int(11) DEFAULT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `first_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `caste` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `student_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_id_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_school_details` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aditional_notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_1` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_3` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_title_4` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file_4` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bloodgroup_id` int(10) UNSIGNED DEFAULT NULL,
  `religion_id` int(10) UNSIGNED DEFAULT NULL,
  `route_list_id` int(10) UNSIGNED DEFAULT NULL,
  `dormitory_id` int(10) UNSIGNED DEFAULT NULL,
  `vechile_id` int(10) UNSIGNED DEFAULT NULL,
  `room_id` int(10) UNSIGNED DEFAULT NULL,
  `student_category_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `session_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `gender_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_attendances`
--

CREATE TABLE `sm_student_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendance_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_attendance_imports`
--

CREATE TABLE `sm_student_attendance_imports` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendance_date` date DEFAULT NULL,
  `in_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_time` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_categories`
--

CREATE TABLE `sm_student_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_certificates`
--

CREATE TABLE `sm_student_certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_left_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_left_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_center_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_right_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_photo` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = yes 0 no',
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_student_certificates`
--

INSERT INTO `sm_student_certificates` (`id`, `name`, `header_left_text`, `date`, `body`, `footer_left_text`, `footer_center_text`, `footer_right_text`, `student_photo`, `file`, `active_status`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Certificate in Technical Communication (PCTC)', 'Since 2020', '2020-05-17', 'Earning my UCR Extension professional certificate is one of the most beneficial things I\'ve done for my career. Before even completing the program, I was contacted twice by companies who were interested in hiring me as a technical writer. This program helped me reach my career goals in a very short time', 'Advisor Signature', 'Instructor Signature', 'Principale Signature', 0, 'public/uploads/certificate/c.jpg', 1, '2020-05-19 10:02:05', '2020-05-19 10:02:05', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_documents`
--

CREATE TABLE `sm_student_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_staff_id` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stu=student,stf=staff',
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_excel_formats`
--

CREATE TABLE `sm_student_excel_formats` (
  `roll_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siblings_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guardian_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_identification_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `local_identification_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_school_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_groups`
--

CREATE TABLE `sm_student_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `group` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_homeworks`
--

CREATE TABLE `sm_student_homeworks` (
  `id` int(10) UNSIGNED NOT NULL,
  `homework_date` date DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `evaluated_by` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_id_cards`
--

CREATE TABLE `sm_student_id_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `student_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `student_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `blood` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_promotions`
--

CREATE TABLE `sm_student_promotions` (
  `id` int(10) UNSIGNED NOT NULL,
  `result_status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `previous_class_id` int(10) UNSIGNED DEFAULT NULL,
  `current_class_id` int(10) UNSIGNED DEFAULT NULL,
  `previous_section_id` int(10) UNSIGNED DEFAULT NULL,
  `current_section_id` int(10) UNSIGNED DEFAULT NULL,
  `previous_session_id` int(10) UNSIGNED DEFAULT NULL,
  `current_session_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `admission_number` int(11) DEFAULT NULL,
  `student_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merit_student_info` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_roll_number` int(11) DEFAULT NULL,
  `current_roll_number` int(11) DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_take_online_exams`
--

CREATE TABLE `sm_student_take_online_exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Not Yet, 1 = alreday submitted, 2 = got marks',
  `total_marks` int(11) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `online_exam_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_take_online_exam_questions`
--

CREATE TABLE `sm_student_take_online_exam_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `trueFalse` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'F = false, T = true ',
  `suitable_words` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `take_online_exam_id` int(10) UNSIGNED DEFAULT NULL,
  `question_bank_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_take_onln_ex_ques_options`
--

CREATE TABLE `sm_student_take_onln_ex_ques_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 unchecked 1 checked',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `take_online_exam_question_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_student_timelines`
--

CREATE TABLE `sm_student_timelines` (
  `id` int(10) UNSIGNED NOT NULL,
  `staff_student_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'stu=student,stf=staff',
  `visible_to_student` int(11) NOT NULL DEFAULT 0 COMMENT '0 = no, 1 = yes',
  `active_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_styles`
--

CREATE TABLE `sm_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `style_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_main_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path_infix_style` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_color2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `white` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `black` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sidebar_bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barchart1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barchart2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcharttextcolor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `barcharttextfamily` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areachartlinecolor1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `areachartlinecolor2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dashboardbackground` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `is_active` tinyint(4) NOT NULL DEFAULT 0,
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'if 1 then yes, if 0 then no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_styles`
--

INSERT INTO `sm_styles` (`id`, `style_name`, `path_main_style`, `path_infix_style`, `primary_color`, `primary_color2`, `title_color`, `text_color`, `white`, `black`, `sidebar_bg`, `barchart1`, `barchart2`, `barcharttextcolor`, `barcharttextfamily`, `areachartlinecolor1`, `areachartlinecolor2`, `dashboardbackground`, `active_status`, `is_active`, `is_default`, `created_at`, `updated_at`, `created_by`, `updated_by`, `school_id`) VALUES
(1, 'Default', 'style.css', 'infix.css', '#415094', '#7c32ff', '#222222', '#828bb2', '#ffffff', '#000000', '#e7ecff', '#8a33f8', '#f25278', '#415094', '\"poppins\", sans-serif', 'rgba(124, 50, 255, 0.5)', 'rgba(242, 82, 120, 0.5)', '', 1, 0, 0, '2020-05-17 05:35:24', '2020-08-13 06:11:51', 1, 1, 1),
(2, 'Lawn Green', 'lawngreen_version/style.css', 'lawngreen_version/infix.css', '#415094', '#03e396', '#222222', '#828bb2', '#ffffff', '#000000', '#e7ecff', '#415094', '#03e396', '#03e396', '\"Cerebri Sans\", Helvetica, Arial, sans-serif', '#415094', '#03e396', '#e7ecff', 1, 1, 0, '2020-05-17 05:35:24', '2020-08-13 06:11:51', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_subjects`
--

CREATE TABLE `sm_subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_type` enum('T','P') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'T=Theory, P=Practical',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_subject_attendances`
--

CREATE TABLE `sm_subject_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `attendance_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Present: P Late: L Absent: A Holiday: H Half Day: F',
  `notes` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subject_id` int(10) UNSIGNED DEFAULT NULL,
  `student_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_suppliers`
--

CREATE TABLE `sm_suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cotact_person_address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_system_versions`
--

CREATE TABLE `sm_system_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `version_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_system_versions`
--

INSERT INTO `sm_system_versions` (`id`, `version_name`, `title`, `features`, `created_at`, `updated_at`) VALUES
(1, '3.2', 'Upgrade System Integration', 'features 1, features 2', '2020-05-17 05:35:24', '2020-05-17 05:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `sm_teacher_upload_contents`
--

CREATE TABLE `sm_teacher_upload_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'as assignment, st study material, sy sullabus, ot others download',
  `available_for_admin` int(11) NOT NULL DEFAULT 0,
  `available_for_all_classes` int(11) NOT NULL DEFAULT 0,
  `upload_date` date DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `class` int(10) UNSIGNED DEFAULT NULL,
  `section` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_temporary_meritlists`
--

CREATE TABLE `sm_temporary_meritlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `iid` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_id` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merit_order` int(11) DEFAULT NULL,
  `student_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admission_no` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subjects_id_string` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subjects_string` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks_string` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_marks` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `average_mark` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gpa_point` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `exam_id` int(10) UNSIGNED DEFAULT NULL,
  `class_id` int(10) UNSIGNED DEFAULT NULL,
  `section_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_testimonials`
--

CREATE TABLE `sm_testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institution_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_testimonials`
--

INSERT INTO `sm_testimonials` (`id`, `name`, `designation`, `institution_name`, `image`, `description`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'Mahak Gehlot', 'Student', '', 'public/uploads/testimonial/testimonial_1.jpg', 'BEST IN WORLD FOR FOUNDATION COURSES. ARUN SIR TEACHES STUDENT FROM HIS HEART AMND DURING TEACHING HE TEACHES TILL 9:00 PM AND WE ALL ENJOY TO STUDY CHEMISTRY WITH FABULOUS TRICKS OF ARUN SIR.\r\nI WOULD THANK ARUN SIR FOR CREATING CHEMISTRY A TOUGHEST SUBJECT TO EASIEST SUBJECT', '2020-05-17 05:35:24', '2020-10-15 15:29:45', 1),
(2, 'RAM VILASH', 'EX-Student', '', 'public/uploads/testimonial/testimonial_2.jpg', 'I  WAS CONTINUES 3 YEARS CLASSROOM STUDENT OF G.C.\r\nNO.1 INSTITUTIONS IN RAJASTHAN BCZ EVERY FACULTY IS WELL EDUCATIONAL BACKGROUND.\r\nVAIBHAV SIR AND NAGRAJ PUROHOT...KERE SIR IS MY FAVOURITE FACULTY.\r\nAFTER MY 12TH ....I SELECTED IN M.B.M.JODHPUR .\r\nNOWDAYS I TEACH 12TH PHYSICS ANY COACHINGS.', '2020-05-17 05:35:24', '2020-10-15 15:32:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_time_zones`
--

CREATE TABLE `sm_time_zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_time_zones`
--

INSERT INTO `sm_time_zones` (`id`, `code`, `time_zone`, `created_at`, `updated_at`) VALUES
(1, 'AD', 'Europe/Andorra', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(2, 'AE', 'Asia/Dubai', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(3, 'AF', 'Asia/Kabul', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(4, 'AG', 'America/Antigua', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(5, 'AI', 'America/Anguilla', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(6, 'AL', 'Europe/Tirane', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(7, 'AM', 'Asia/Yerevan', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(8, 'AO', 'Africa/Luanda', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(9, 'AQ', 'Antarctica/McMurdo', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(10, 'AQ', 'Antarctica/Casey', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(11, 'AQ', 'Antarctica/Davis', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(12, 'AQ', 'Antarctica/DumontDUrville', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(13, 'AQ', 'Antarctica/Mawson', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(14, 'AQ', 'Antarctica/Palmer', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(15, 'AQ', 'Antarctica/Rothera', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(16, 'AQ', 'Antarctica/Syowa', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(17, 'AQ', 'Antarctica/Troll', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(18, 'AQ', 'Antarctica/Vostok', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(19, 'AR', 'America/Argentina/Buenos_Aires', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(20, 'AR', 'America/Argentina/Cordoba', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(21, 'AR', 'America/Argentina/Salta', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(22, 'AR', 'America/Argentina/Jujuy', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(23, 'AR', 'America/Argentina/Tucuman', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(24, 'AR', 'America/Argentina/Catamarca', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(25, 'AR', 'America/Argentina/La_Rioja', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(26, 'AR', 'America/Argentina/San_Juan', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(27, 'AR', 'America/Argentina/Mendoza', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(28, 'AR', 'America/Argentina/San_Luis', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(29, 'AR', 'America/Argentina/Rio_Gallegos', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(30, 'AR', 'America/Argentina/Ushuaia', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(31, 'AS', 'Pacific/Pago_Pago', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(32, 'AT', 'Europe/Vienna', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(33, 'AU', 'Australia/Lord_Howe', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(34, 'AU', 'Antarctica/Macquarie', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(35, 'AU', 'Australia/Hobart', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(36, 'AU', 'Australia/Currie', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(37, 'AU', 'Australia/Melbourne', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(38, 'AU', 'Australia/Sydney', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(39, 'AU', 'Australia/Broken_Hill', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(40, 'AU', 'Australia/Brisbane', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(41, 'AU', 'Australia/Lindeman', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(42, 'AU', 'Australia/Adelaide', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(43, 'AU', 'Australia/Darwin', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(44, 'AU', 'Australia/Perth', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(45, 'AU', 'Australia/Eucla', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(46, 'AW', 'America/Aruba', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(47, 'AX', 'Europe/Mariehamn', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(48, 'AZ', 'Asia/Baku', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(49, 'BA', 'Europe/Sarajevo', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(50, 'BB', 'America/Barbados', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(51, 'BD', 'Asia/Dhaka', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(52, 'BE', 'Europe/Brussels', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(53, 'BF', 'Africa/Ouagadougou', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(54, 'BG', 'Europe/Sofia', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(55, 'BH', 'Asia/Bahrain', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(56, 'BI', 'Africa/Bujumbura', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(57, 'BJ', 'Africa/Porto-Novo', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(58, 'BL', 'America/St_Barthelemy', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(59, 'BM', 'Atlantic/Bermuda', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(60, 'BN', 'Asia/Brunei', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(61, 'BO', 'America/La_Paz', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(62, 'BQ', 'America/Kralendijk', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(63, 'BR', 'America/Noronha', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(64, 'BR', 'America/Belem', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(65, 'BR', 'America/Fortaleza', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(66, 'BR', 'America/Recife', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(67, 'BR', 'America/Araguaina', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(68, 'BR', 'America/Maceio', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(69, 'BR', 'America/Bahia', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(70, 'BR', 'America/Sao_Paulo', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(71, 'BR', 'America/Campo_Grande', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(72, 'BR', 'America/Cuiaba', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(73, 'BR', 'America/Santarem', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(74, 'BR', 'America/Porto_Velho', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(75, 'BR', 'America/Boa_Vista', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(76, 'BR', 'America/Manaus', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(77, 'BR', 'America/Eirunepe', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(78, 'BR', 'America/Rio_Branco', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(79, 'BS', 'America/Nassau', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(80, 'BT', 'Asia/Thimphu', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(81, 'BW', 'Africa/Gaborone', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(82, 'BY', 'Europe/Minsk', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(83, 'BZ', 'America/Belize', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(84, 'CA', 'America/St_Johns', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(85, 'CA', 'America/Halifax', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(86, 'CA', 'America/Glace_Bay', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(87, 'CA', 'America/Moncton', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(88, 'CA', 'America/Goose_Bay', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(89, 'CA', 'America/Blanc-Sablon', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(90, 'CA', 'America/Toronto', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(91, 'CA', 'America/Nipigon', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(92, 'CA', 'America/Thunder_Bay', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(93, 'CA', 'America/Iqaluit', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(94, 'CA', 'America/Pangnirtung', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(95, 'CA', 'America/Atikokan', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(96, 'CA', 'America/Winnipeg', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(97, 'CA', 'America/Rainy_River', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(98, 'CA', 'America/Resolute', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(99, 'CA', 'America/Rankin_Inlet', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(100, 'CA', 'America/Regina', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(101, 'CA', 'America/Swift_Current', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(102, 'CA', 'America/Edmonton', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(103, 'CA', 'America/Cambridge_Bay', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(104, 'CA', 'America/Yellowknife', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(105, 'CA', 'America/Inuvik', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(106, 'CA', 'America/Creston', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(107, 'CA', 'America/Dawson_Creek', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(108, 'CA', 'America/Fort_Nelson', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(109, 'CA', 'America/Vancouver', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(110, 'CA', 'America/Whitehorse', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(111, 'CA', 'America/Dawson', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(112, 'CC', 'Indian/Cocos', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(113, 'CD', 'Africa/Kinshasa', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(114, 'CD', 'Africa/Lubumbashi', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(115, 'CF', 'Africa/Bangui', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(116, 'CG', 'Africa/Brazzaville', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(117, 'CH', 'Europe/Zurich', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(118, 'CI', 'Africa/Abidjan', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(119, 'CK', 'Pacific/Rarotonga', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(120, 'CL', 'America/Santiago', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(121, 'CL', 'America/Punta_Arenas', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(122, 'CL', 'Pacific/Easter', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(123, 'CM', 'Africa/Douala', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(124, 'CN', 'Asia/Shanghai', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(125, 'CN', 'Asia/Urumqi', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(126, 'CO', 'America/Bogota', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(127, 'CR', 'America/Costa_Rica', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(128, 'CU', 'America/Havana', '2020-05-17 05:35:24', '2020-05-17 05:35:24'),
(129, 'CV', 'Atlantic/Cape_Verde', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(130, 'CW', 'America/Curacao', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(131, 'CX', 'Indian/Christmas', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(132, 'CY', 'Asia/Nicosia', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(133, 'CY', 'Asia/Famagusta', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(134, 'CZ', 'Europe/Prague', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(135, 'DE', 'Europe/Berlin', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(136, 'DE', 'Europe/Busingen', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(137, 'DJ', 'Africa/Djibouti', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(138, 'DK', 'Europe/Copenhagen', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(139, 'DM', 'America/Dominica', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(140, 'DO', 'America/Santo_Domingo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(141, 'DZ', 'Africa/Algiers', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(142, 'EC', 'America/Guayaquil', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(143, 'EC', 'Pacific/Galapagos', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(144, 'EE', 'Europe/Tallinn', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(145, 'EG', 'Africa/Cairo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(146, 'EH', 'Africa/El_Aaiun', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(147, 'ER', 'Africa/Asmara', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(148, 'ES', 'Europe/Madrid', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(149, 'ES', 'Africa/Ceuta', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(150, 'ES', 'Atlantic/Canary', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(151, 'ET', 'Africa/Addis_Ababa', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(152, 'FI', 'Europe/Helsinki', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(153, 'FJ', 'Pacific/Fiji', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(154, 'FK', 'Atlantic/Stanley', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(155, 'FM', 'Pacific/Chuuk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(156, 'FM', 'Pacific/Pohnpei', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(157, 'FM', 'Pacific/Kosrae', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(158, 'FO', 'Atlantic/Faroe', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(159, 'FR', 'Europe/Paris', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(160, 'GA', 'Africa/Libreville', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(161, 'GB', 'Europe/London', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(162, 'GD', 'America/Grenada', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(163, 'GE', 'Asia/Tbilisi', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(164, 'GF', 'America/Cayenne', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(165, 'GG', 'Europe/Guernsey', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(166, 'GH', 'Africa/Accra', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(167, 'GI', 'Europe/Gibraltar', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(168, 'GL', 'America/Godthab', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(169, 'GL', 'America/Danmarkshavn', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(170, 'GL', 'America/Scoresbysund', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(171, 'GL', 'America/Thule', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(172, 'GM', 'Africa/Banjul', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(173, 'GN', 'Africa/Conakry', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(174, 'GP', 'America/Guadeloupe', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(175, 'GQ', 'Africa/Malabo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(176, 'GR', 'Europe/Athens', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(177, 'GS', 'Atlantic/South_Georgia', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(178, 'GT', 'America/Guatemala', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(179, 'GU', 'Pacific/Guam', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(180, 'GW', 'Africa/Bissau', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(181, 'GY', 'America/Guyana', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(182, 'HK', 'Asia/Hong_Kong', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(183, 'HN', 'America/Tegucigalpa', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(184, 'HR', 'Europe/Zagreb', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(185, 'HT', 'America/Port-au-Prince', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(186, 'HU', 'Europe/Budapest', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(187, 'ID', 'Asia/Jakarta', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(188, 'ID', 'Asia/Pontianak', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(189, 'ID', 'Asia/Makassar', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(190, 'ID', 'Asia/Jayapura', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(191, 'IE', 'Europe/Dublin', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(192, 'IL', 'Asia/Jerusalem', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(193, 'IM', 'Europe/Isle_of_Man', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(194, 'IN', 'Asia/Kolkata', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(195, 'IO', 'Indian/Chagos', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(196, 'IQ', 'Asia/Baghdad', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(197, 'IR', 'Asia/Tehran', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(198, 'IS', 'Atlantic/Reykjavik', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(199, 'IT', 'Europe/Rome', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(200, 'JE', 'Europe/Jersey', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(201, 'JM', 'America/Jamaica', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(202, 'JO', 'Asia/Amman', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(203, 'JP', 'Asia/Tokyo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(204, 'KE', 'Africa/Nairobi', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(205, 'KG', 'Asia/Bishkek', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(206, 'KH', 'Asia/Phnom_Penh', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(207, 'KI', 'Pacific/Tarawa', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(208, 'KI', 'Pacific/Enderbury', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(209, 'KI', 'Pacific/Kiritimati', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(210, 'KM', 'Indian/Comoro', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(211, 'KN', 'America/St_Kitts', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(212, 'KP', 'Asia/Pyongyang', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(213, 'KR', 'Asia/Seoul', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(214, 'KW', 'Asia/Kuwait', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(215, 'KY', 'America/Cayman', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(216, 'KZ', 'Asia/Almaty', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(217, 'KZ', 'Asia/Qyzylorda', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(218, 'KZ', 'Asia/Aqtobe', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(219, 'KZ', 'Asia/Aqtau', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(220, 'KZ', 'Asia/Atyrau', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(221, 'KZ', 'Asia/Oral', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(222, 'LA', 'Asia/Vientiane', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(223, 'LB', 'Asia/Beirut', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(224, 'LC', 'America/St_Lucia', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(225, 'LI', 'Europe/Vaduz', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(226, 'LK', 'Asia/Colombo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(227, 'LR', 'Africa/Monrovia', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(228, 'LS', 'Africa/Maseru', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(229, 'LT', 'Europe/Vilnius', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(230, 'LU', 'Europe/Luxembourg', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(231, 'LV', 'Europe/Riga', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(232, 'LY', 'Africa/Tripoli', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(233, 'MA', 'Africa/Casablanca', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(234, 'MC', 'Europe/Monaco', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(235, 'MD', 'Europe/Chisinau', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(236, 'ME', 'Europe/Podgorica', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(237, 'MF', 'America/Marigot', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(238, 'MG', 'Indian/Antananarivo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(239, 'MH', 'Pacific/Majuro', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(240, 'MH', 'Pacific/Kwajalein', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(241, 'MK', 'Europe/Skopje', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(242, 'ML', 'Africa/Bamako', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(243, 'MM', 'Asia/Yangon', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(244, 'MN', 'Asia/Ulaanbaatar', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(245, 'MN', 'Asia/Hovd', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(246, 'MN', 'Asia/Choibalsan', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(247, 'MO', 'Asia/Macau', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(248, 'MP', 'Pacific/Saipan', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(249, 'MQ', 'America/Martinique', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(250, 'MR', 'Africa/Nouakchott', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(251, 'MS', 'America/Montserrat', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(252, 'MT', 'Europe/Malta', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(253, 'MU', 'Indian/Mauritius', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(254, 'MV', 'Indian/Maldives', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(255, 'MW', 'Africa/Blantyre', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(256, 'MX', 'America/Mexico_City', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(257, 'MX', 'America/Cancun', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(258, 'MX', 'America/Merida', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(259, 'MX', 'America/Monterrey', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(260, 'MX', 'America/Matamoros', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(261, 'MX', 'America/Mazatlan', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(262, 'MX', 'America/Chihuahua', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(263, 'MX', 'America/Ojinaga', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(264, 'MX', 'America/Hermosillo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(265, 'MX', 'America/Tijuana', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(266, 'MX', 'America/Bahia_Banderas', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(267, 'MY', 'Asia/Kuala_Lumpur', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(268, 'MY', 'Asia/Kuching', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(269, 'MZ', 'Africa/Maputo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(270, 'NA', 'Africa/Windhoek', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(271, 'NC', 'Pacific/Noumea', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(272, 'NE', 'Africa/Niamey', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(273, 'NF', 'Pacific/Norfolk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(274, 'NG', 'Africa/Lagos', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(275, 'NI', 'America/Managua', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(276, 'NL', 'Europe/Amsterdam', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(277, 'NO', 'Europe/Oslo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(278, 'NP', 'Asia/Kathmandu', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(279, 'NR', 'Pacific/Nauru', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(280, 'NU', 'Pacific/Niue', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(281, 'NZ', 'Pacific/Auckland', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(282, 'NZ', 'Pacific/Chatham', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(283, 'OM', 'Asia/Muscat', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(284, 'PA', 'America/Panama', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(285, 'PE', 'America/Lima', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(286, 'PF', 'Pacific/Tahiti', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(287, 'PF', 'Pacific/Marquesas', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(288, 'PF', 'Pacific/Gambier', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(289, 'PG', 'Pacific/Port_Moresby', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(290, 'PG', 'Pacific/Bougainville', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(291, 'PH', 'Asia/Manila', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(292, 'PK', 'Asia/Karachi', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(293, 'PL', 'Europe/Warsaw', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(294, 'PM', 'America/Miquelon', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(295, 'PN', 'Pacific/Pitcairn', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(296, 'PR', 'America/Puerto_Rico', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(297, 'PS', 'Asia/Gaza', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(298, 'PS', 'Asia/Hebron', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(299, 'PT', 'Europe/Lisbon', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(300, 'PT', 'Atlantic/Madeira', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(301, 'PT', 'Atlantic/Azores', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(302, 'PW', 'Pacific/Palau', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(303, 'PY', 'America/Asuncion', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(304, 'QA', 'Asia/Qatar', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(305, 'RE', 'Indian/Reunion', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(306, 'RO', 'Europe/Bucharest', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(307, 'RS', 'Europe/Belgrade', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(308, 'RU', 'Europe/Kaliningrad', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(309, 'RU', 'Europe/Moscow', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(310, 'RU', 'Europe/Simferopol', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(311, 'RU', 'Europe/Volgograd', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(312, 'RU', 'Europe/Kirov', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(313, 'RU', 'Europe/Astrakhan', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(314, 'RU', 'Europe/Saratov', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(315, 'RU', 'Europe/Ulyanovsk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(316, 'RU', 'Europe/Samara', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(317, 'RU', 'Asia/Yekaterinburg', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(318, 'RU', 'Asia/Omsk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(319, 'RU', 'Asia/Novosibirsk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(320, 'RU', 'Asia/Barnaul', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(321, 'RU', 'Asia/Tomsk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(322, 'RU', 'Asia/Novokuznetsk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(323, 'RU', 'Asia/Krasnoyarsk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(324, 'RU', 'Asia/Irkutsk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(325, 'RU', 'Asia/Chita', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(326, 'RU', 'Asia/Yakutsk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(327, 'RU', 'Asia/Khandyga', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(328, 'RU', 'Asia/Vladivostok', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(329, 'RU', 'Asia/Ust-Nera', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(330, 'RU', 'Asia/Magadan', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(331, 'RU', 'Asia/Sakhalin', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(332, 'RU', 'Asia/Srednekolymsk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(333, 'RU', 'Asia/Kamchatka', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(334, 'RU', 'Asia/Anadyr', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(335, 'RW', 'Africa/Kigali', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(336, 'SA', 'Asia/Riyadh', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(337, 'SB', 'Pacific/Guadalcanal', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(338, 'SC', 'Indian/Mahe', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(339, 'SD', 'Africa/Khartoum', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(340, 'SE', 'Europe/Stockholm', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(341, 'SG', 'Asia/Singapore', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(342, 'SH', 'Atlantic/St_Helena', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(343, 'SI', 'Europe/Ljubljana', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(344, 'SJ', 'Arctic/Longyearbyen', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(345, 'SK', 'Europe/Bratislava', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(346, 'SL', 'Africa/Freetown', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(347, 'SM', 'Europe/San_Marino', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(348, 'SN', 'Africa/Dakar', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(349, 'SO', 'Africa/Mogadishu', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(350, 'SR', 'America/Paramaribo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(351, 'SS', 'Africa/Juba', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(352, 'ST', 'Africa/Sao_Tome', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(353, 'SV', 'America/El_Salvador', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(354, 'SX', 'America/Lower_Princes', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(355, 'SY', 'Asia/Damascus', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(356, 'SZ', 'Africa/Mbabane', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(357, 'TC', 'America/Grand_Turk', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(358, 'TD', 'Africa/Ndjamena', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(359, 'TF', 'Indian/Kerguelen', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(360, 'TG', 'Africa/Lome', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(361, 'TH', 'Asia/Bangkok', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(362, 'TJ', 'Asia/Dushanbe', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(363, 'TK', 'Pacific/Fakaofo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(364, 'TL', 'Asia/Dili', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(365, 'TM', 'Asia/Ashgabat', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(366, 'TN', 'Africa/Tunis', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(367, 'TO', 'Pacific/Tongatapu', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(368, 'TR', 'Europe/Istanbul', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(369, 'TT', 'America/Port_of_Spain', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(370, 'TV', 'Pacific/Funafuti', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(371, 'TW', 'Asia/Taipei', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(372, 'TZ', 'Africa/Dar_es_Salaam', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(373, 'UA', 'Europe/Kiev', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(374, 'UA', 'Europe/Uzhgorod', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(375, 'UA', 'Europe/Zaporozhye', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(376, 'UG', 'Africa/Kampala', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(377, 'UM', 'Pacific/Midway', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(378, 'UM', 'Pacific/Wake', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(379, 'US', 'America/New_York', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(380, 'US', 'America/Detroit', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(381, 'US', 'America/Kentucky/Louisville', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(382, 'US', 'America/Kentucky/Monticello', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(383, 'US', 'America/Indiana/Indianapolis', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(384, 'US', 'America/Indiana/Vincennes', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(385, 'US', 'America/Indiana/Winamac', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(386, 'US', 'America/Indiana/Marengo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(387, 'US', 'America/Indiana/Petersburg', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(388, 'US', 'America/Indiana/Vevay', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(389, 'US', 'America/Chicago', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(390, 'US', 'America/Indiana/Tell_City', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(391, 'US', 'America/Indiana/Knox', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(392, 'US', 'America/Menominee', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(393, 'US', 'America/North_Dakota/Center', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(394, 'US', 'America/North_Dakota/New_Salem', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(395, 'US', 'America/North_Dakota/Beulah', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(396, 'US', 'America/Denver', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(397, 'US', 'America/Boise', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(398, 'US', 'America/Phoenix', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(399, 'US', 'America/Los_Angeles', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(400, 'US', 'America/Anchorage', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(401, 'US', 'America/Juneau', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(402, 'US', 'America/Sitka', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(403, 'US', 'America/Metlakatla', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(404, 'US', 'America/Yakutat', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(405, 'US', 'America/Nome', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(406, 'US', 'America/Adak', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(407, 'US', 'Pacific/Honolulu', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(408, 'UY', 'America/Montevideo', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(409, 'UZ', 'Asia/Samarkand', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(410, 'UZ', 'Asia/Tashkent', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(411, 'VA', 'Europe/Vatican', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(412, 'VC', 'America/St_Vincent', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(413, 'VE', 'America/Caracas', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(414, 'VG', 'America/Tortola', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(415, 'VI', 'America/St_Thomas', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(416, 'VN', 'Asia/Ho_Chi_Minh', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(417, 'VU', 'Pacific/Efate', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(418, 'WF', 'Pacific/Wallis', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(419, 'WS', 'Pacific/Apia', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(420, 'YE', 'Asia/Aden', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(421, 'YT', 'Indian/Mayotte', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(422, 'ZA', 'Africa/Johannesburg', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(423, 'ZM', 'Africa/Lusaka', '2020-05-17 05:35:25', '2020-05-17 05:35:25'),
(424, 'ZW', 'Africa/Harare', '2020-05-17 05:35:25', '2020-05-17 05:35:25');

-- --------------------------------------------------------

--
-- Table structure for table `sm_to_dos`
--

CREATE TABLE `sm_to_dos` (
  `id` int(10) UNSIGNED NOT NULL,
  `todo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `complete_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'P' COMMENT 'C for complete, N for not Complete, P Pending',
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_upload_contents`
--

CREATE TABLE `sm_upload_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_type` int(11) DEFAULT NULL,
  `available_for_role` int(11) DEFAULT NULL,
  `available_for_class` int(11) DEFAULT NULL,
  `available_for_section` int(11) DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_upload_homework_contents`
--

CREATE TABLE `sm_upload_homework_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED DEFAULT 1,
  `homework_id` int(10) UNSIGNED DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_user_logs`
--

CREATE TABLE `sm_user_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_user_logs`
--

INSERT INTO `sm_user_logs` (`id`, `ip_address`, `user_agent`, `created_at`, `updated_at`, `user_id`, `role_id`, `school_id`) VALUES
(1, '162.158.165.230', 'Chrome, AndroidOS', '2020-08-12 19:30:14', '2020-08-12 19:30:14', 1, 1, 1),
(2, '162.158.166.111', 'Chrome, Windows', '2020-08-12 19:33:15', '2020-08-12 19:33:15', 1, 1, 1),
(3, '162.158.167.4', 'Chrome, Windows', '2020-08-12 19:10:38', '2020-08-12 19:10:38', 1, 1, 1),
(4, '162.158.159.78', 'Chrome, AndroidOS', '2020-08-13 02:27:37', '2020-08-13 02:27:37', 1, 1, 1),
(5, '162.158.165.180', 'Chrome, OS X', '2020-08-13 05:52:16', '2020-08-13 05:52:16', 1, 1, 1),
(6, '162.158.50.212', 'Chrome, Windows', '2020-08-13 05:54:49', '2020-08-13 05:54:49', 1, 1, 1),
(7, '162.158.166.57', 'Chrome, OS X', '2020-08-18 07:24:08', '2020-08-18 07:24:08', 1, 1, 1),
(8, '162.158.154.181', 'Chrome, Windows', '2020-08-21 06:37:27', '2020-08-21 06:37:27', 1, 1, 1),
(9, '172.69.134.33', 'Chrome, Windows', '2020-08-21 06:52:16', '2020-08-21 06:52:16', 1, 1, 1),
(10, '162.158.158.123', 'Chrome, Windows', '2020-08-21 09:04:54', '2020-08-21 09:04:54', 1, 1, 1),
(11, '162.158.166.57', 'Chrome, Windows', '2020-08-21 12:27:19', '2020-08-21 12:27:19', 1, 1, 1),
(12, '141.101.99.85', 'Chrome, Windows', '2020-08-24 14:25:19', '2020-08-24 14:25:19', 1, 1, 1),
(13, '172.68.146.230', 'Chrome, OS X', '2020-08-24 14:26:33', '2020-08-24 14:26:33', 1, 1, 1),
(14, '188.114.102.56', 'Chrome, Windows', '2020-08-25 06:39:03', '2020-08-25 06:39:03', 1, 1, 1),
(15, '162.158.165.246', 'Chrome, Windows', '2020-08-26 07:14:25', '2020-08-26 07:14:25', 1, 1, 1),
(16, '162.158.166.239', 'Chrome, OS X', '2020-09-20 12:21:59', '2020-09-20 12:21:59', 1, 1, 1),
(17, '172.69.134.41', 'Chrome, Windows', '2020-10-14 13:07:59', '2020-10-14 13:07:59', 1, 1, 1),
(18, '162.158.166.249', 'Chrome, Windows', '2020-10-15 12:31:49', '2020-10-15 12:31:49', 1, 1, 1),
(19, '162.158.191.172', 'Chrome, OS X', '2020-10-15 14:05:07', '2020-10-15 14:05:07', 1, 1, 1),
(20, '172.69.135.224', 'Chrome, OS X', '2020-10-15 15:20:21', '2020-10-15 15:20:21', 1, 1, 1),
(21, '162.158.119.7', 'Firefox, Windows', '2020-10-16 10:14:10', '2020-10-16 10:14:10', 1, 1, 1),
(22, '162.158.166.233', 'Chrome, OS X', '2020-10-16 11:35:39', '2020-10-16 11:35:39', 1, 1, 1),
(23, '162.158.191.172', 'Chrome, OS X', '2020-10-18 04:53:20', '2020-10-18 04:53:20', 1, 1, 1),
(24, '162.158.7.43', 'Chrome, Windows', '2020-10-18 14:09:15', '2020-10-18 14:09:15', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sm_vehicles`
--

CREATE TABLE `sm_vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `made_year` int(11) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `driver_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_visitors`
--

CREATE TABLE `sm_visitors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visitor_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_person` int(11) DEFAULT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `out_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT 1,
  `updated_by` int(10) UNSIGNED DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sm_weekends`
--

CREATE TABLE `sm_weekends` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `is_weekend` int(11) DEFAULT NULL,
  `active_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sm_weekends`
--

INSERT INTO `sm_weekends` (`id`, `name`, `order`, `is_weekend`, `active_status`, `created_at`, `updated_at`) VALUES
(1, 'Saturday', 1, 0, 1, '2020-05-17 05:35:22', NULL),
(2, 'Sunday', 2, 1, 1, '2020-05-17 05:35:22', '2020-10-18 05:21:12'),
(3, 'Monday', 3, 0, 1, '2020-05-17 05:35:22', NULL),
(4, 'Tuesday', 4, 0, 1, '2020-05-17 05:35:22', NULL),
(5, 'Wednesday', 5, 0, 1, '2020-05-17 05:35:22', NULL),
(6, 'Thursday', 6, 0, 1, '2020-05-17 05:35:22', NULL),
(7, 'Friday', 7, 1, 1, '2020-05-17 05:35:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usertype` varchar(210) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `random_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notificationToken` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT 1,
  `updated_by` int(11) DEFAULT 1,
  `access_status` int(11) DEFAULT 1,
  `school_id` int(10) UNSIGNED DEFAULT 1,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `is_administrator` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `is_registered` tinyint(4) NOT NULL DEFAULT 0,
  `stripe_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `username`, `email`, `password`, `usertype`, `active_status`, `random_code`, `notificationToken`, `remember_token`, `created_at`, `updated_at`, `created_by`, `updated_by`, `access_status`, `school_id`, `role_id`, `is_administrator`, `is_registered`, `stripe_id`, `card_brand`, `card_last_four`, `verified`, `trial_ends_at`) VALUES
(1, 'System Administrator', 'admin@gehlot.com', 'admin@gehlot.com', '$2y$10$PXAYxez9wgsso4yPcKj7Wuxe4L1VszItTOPTbge8yRJOLqGnDQaW6', NULL, 1, NULL, NULL, NULL, '2020-05-17 05:35:11', '2020-08-13 00:59:38', 1, 1, 1, 1, 1, 'yes', 0, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `continents_school_id_foreign` (`school_id`);

--
-- Indexes for table `continets`
--
ALTER TABLE `continets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `continets_school_id_foreign` (`school_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_school_id_foreign` (`school_id`);

--
-- Indexes for table `custom_result_settings`
--
ALTER TABLE `custom_result_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_result_settings_school_id_foreign` (`school_id`);

--
-- Indexes for table `infix_module_infos`
--
ALTER TABLE `infix_module_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `infix_module_infos_created_by_foreign` (`created_by`),
  ADD KEY `infix_module_infos_updated_by_foreign` (`updated_by`),
  ADD KEY `infix_module_infos_school_id_foreign` (`school_id`);

--
-- Indexes for table `infix_module_student_parent_infos`
--
ALTER TABLE `infix_module_student_parent_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `infix_module_student_parent_infos_created_by_foreign` (`created_by`),
  ADD KEY `infix_module_student_parent_infos_updated_by_foreign` (`updated_by`),
  ADD KEY `infix_module_student_parent_infos_school_id_foreign` (`school_id`);

--
-- Indexes for table `infix_permission_assigns`
--
ALTER TABLE `infix_permission_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `infix_permission_assigns_role_id_foreign` (`role_id`),
  ADD KEY `infix_permission_assigns_school_id_foreign` (`school_id`);

--
-- Indexes for table `infix_roles`
--
ALTER TABLE `infix_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `infix_roles_school_id_foreign` (`school_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_school_id_foreign` (`school_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_school_id_foreign` (`school_id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_about_pages`
--
ALTER TABLE `sm_about_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_about_pages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_academic_years`
--
ALTER TABLE `sm_academic_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_academic_years_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_add_expenses`
--
ALTER TABLE `sm_add_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_add_expenses_expense_head_id_foreign` (`expense_head_id`),
  ADD KEY `sm_add_expenses_account_id_foreign` (`account_id`),
  ADD KEY `sm_add_expenses_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `sm_add_expenses_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_add_incomes`
--
ALTER TABLE `sm_add_incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_add_incomes_income_head_id_foreign` (`income_head_id`),
  ADD KEY `sm_add_incomes_account_id_foreign` (`account_id`),
  ADD KEY `sm_add_incomes_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `sm_add_incomes_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_add_ons`
--
ALTER TABLE `sm_add_ons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_admission_queries`
--
ALTER TABLE `sm_admission_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_admission_queries_class_foreign` (`class`),
  ADD KEY `sm_admission_queries_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_admission_query_followups`
--
ALTER TABLE `sm_admission_query_followups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_admission_query_followups_admission_query_id_foreign` (`admission_query_id`),
  ADD KEY `sm_admission_query_followups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_assign_class_teachers`
--
ALTER TABLE `sm_assign_class_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_assign_class_teachers_class_id_foreign` (`class_id`),
  ADD KEY `sm_assign_class_teachers_section_id_foreign` (`section_id`),
  ADD KEY `sm_assign_class_teachers_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_assign_subjects`
--
ALTER TABLE `sm_assign_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_assign_subjects_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sm_assign_subjects_class_id_foreign` (`class_id`),
  ADD KEY `sm_assign_subjects_section_id_foreign` (`section_id`),
  ADD KEY `sm_assign_subjects_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_assign_subjects_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_assign_vehicles`
--
ALTER TABLE `sm_assign_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_assign_vehicles_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `sm_assign_vehicles_route_id_foreign` (`route_id`),
  ADD KEY `sm_assign_vehicles_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_background_settings`
--
ALTER TABLE `sm_background_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_background_settings_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_backups`
--
ALTER TABLE `sm_backups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_backups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_bank_accounts`
--
ALTER TABLE `sm_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_bank_accounts_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_base_groups`
--
ALTER TABLE `sm_base_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_base_groups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_base_setups`
--
ALTER TABLE `sm_base_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_base_setups_base_group_id_foreign` (`base_group_id`),
  ADD KEY `sm_base_setups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_books`
--
ALTER TABLE `sm_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_books_book_category_id_foreign` (`book_category_id`),
  ADD KEY `sm_books_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_book_categories`
--
ALTER TABLE `sm_book_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_book_categories_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_book_issues`
--
ALTER TABLE `sm_book_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_book_issues_book_id_foreign` (`book_id`),
  ADD KEY `sm_book_issues_member_id_foreign` (`member_id`),
  ADD KEY `sm_book_issues_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_chart_of_accounts`
--
ALTER TABLE `sm_chart_of_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_chart_of_accounts_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_classes`
--
ALTER TABLE `sm_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_classes_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_optional_subject`
--
ALTER TABLE `sm_class_optional_subject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_optional_subject_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_rooms`
--
ALTER TABLE `sm_class_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_rooms_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_routines`
--
ALTER TABLE `sm_class_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_routines_class_id_foreign` (`class_id`),
  ADD KEY `sm_class_routines_section_id_foreign` (`section_id`),
  ADD KEY `sm_class_routines_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_class_routines_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_routine_updates`
--
ALTER TABLE `sm_class_routine_updates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_routine_updates_room_id_foreign` (`room_id`),
  ADD KEY `sm_class_routine_updates_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sm_class_routine_updates_class_period_id_foreign` (`class_period_id`),
  ADD KEY `sm_class_routine_updates_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_class_routine_updates_class_id_foreign` (`class_id`),
  ADD KEY `sm_class_routine_updates_section_id_foreign` (`section_id`),
  ADD KEY `sm_class_routine_updates_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_sections`
--
ALTER TABLE `sm_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_sections_class_id_foreign` (`class_id`),
  ADD KEY `sm_class_sections_section_id_foreign` (`section_id`),
  ADD KEY `sm_class_sections_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_teachers`
--
ALTER TABLE `sm_class_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_teachers_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sm_class_teachers_assign_class_teacher_id_foreign` (`assign_class_teacher_id`),
  ADD KEY `sm_class_teachers_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_class_times`
--
ALTER TABLE `sm_class_times`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_class_times_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_complaints`
--
ALTER TABLE `sm_complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_complaints_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_contact_messages`
--
ALTER TABLE `sm_contact_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_contact_messages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_contact_pages`
--
ALTER TABLE `sm_contact_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_contact_pages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_content_types`
--
ALTER TABLE `sm_content_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_content_types_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_countries`
--
ALTER TABLE `sm_countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_countries_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_courses`
--
ALTER TABLE `sm_courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_courses_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_course_pages`
--
ALTER TABLE `sm_course_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_course_pages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_currencies`
--
ALTER TABLE `sm_currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_currencies_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_custom_links`
--
ALTER TABLE `sm_custom_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_custom_temporary_results`
--
ALTER TABLE `sm_custom_temporary_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_dashboard_settings`
--
ALTER TABLE `sm_dashboard_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_dashboard_settings_role_id_foreign` (`role_id`),
  ADD KEY `sm_dashboard_settings_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_date_formats`
--
ALTER TABLE `sm_date_formats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_date_formats_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_designations`
--
ALTER TABLE `sm_designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_designations_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_dormitory_lists`
--
ALTER TABLE `sm_dormitory_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_dormitory_lists_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_email_settings`
--
ALTER TABLE `sm_email_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_email_settings_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_email_sms_logs`
--
ALTER TABLE `sm_email_sms_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_email_sms_logs_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_events`
--
ALTER TABLE `sm_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_events_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exams`
--
ALTER TABLE `sm_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exams_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `sm_exams_class_id_foreign` (`class_id`),
  ADD KEY `sm_exams_section_id_foreign` (`section_id`),
  ADD KEY `sm_exams_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exams_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_attendances`
--
ALTER TABLE `sm_exam_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_attendances_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exam_attendances_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_exam_attendances_class_id_foreign` (`class_id`),
  ADD KEY `sm_exam_attendances_section_id_foreign` (`section_id`),
  ADD KEY `sm_exam_attendances_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_attendance_children`
--
ALTER TABLE `sm_exam_attendance_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_attendance_children_exam_attendance_id_foreign` (`exam_attendance_id`),
  ADD KEY `sm_exam_attendance_children_student_id_foreign` (`student_id`),
  ADD KEY `sm_exam_attendance_children_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_marks_registers`
--
ALTER TABLE `sm_exam_marks_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_marks_registers_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_exam_marks_registers_student_id_foreign` (`student_id`),
  ADD KEY `sm_exam_marks_registers_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exam_marks_registers_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_schedules`
--
ALTER TABLE `sm_exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_schedules_exam_period_id_foreign` (`exam_period_id`),
  ADD KEY `sm_exam_schedules_room_id_foreign` (`room_id`),
  ADD KEY `sm_exam_schedules_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exam_schedules_exam_term_id_foreign` (`exam_term_id`),
  ADD KEY `sm_exam_schedules_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_exam_schedules_class_id_foreign` (`class_id`),
  ADD KEY `sm_exam_schedules_section_id_foreign` (`section_id`),
  ADD KEY `sm_exam_schedules_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_schedule_subjects`
--
ALTER TABLE `sm_exam_schedule_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_schedule_subjects_exam_schedule_id_foreign` (`exam_schedule_id`),
  ADD KEY `sm_exam_schedule_subjects_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exam_schedule_subjects_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_setups`
--
ALTER TABLE `sm_exam_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_setups_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_exam_setups_class_id_foreign` (`class_id`),
  ADD KEY `sm_exam_setups_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_exam_setups_section_id_foreign` (`section_id`),
  ADD KEY `sm_exam_setups_exam_term_id_foreign` (`exam_term_id`),
  ADD KEY `sm_exam_setups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_exam_types`
--
ALTER TABLE `sm_exam_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_exam_types_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_expense_heads`
--
ALTER TABLE `sm_expense_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_expense_heads_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_assigns`
--
ALTER TABLE `sm_fees_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_assigns_fees_master_id_foreign` (`fees_master_id`),
  ADD KEY `sm_fees_assigns_student_id_foreign` (`student_id`),
  ADD KEY `sm_fees_assigns_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_assign_discounts`
--
ALTER TABLE `sm_fees_assign_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_assign_discounts_student_id_foreign` (`student_id`),
  ADD KEY `sm_fees_assign_discounts_fees_discount_id_foreign` (`fees_discount_id`),
  ADD KEY `sm_fees_assign_discounts_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_carry_forwards`
--
ALTER TABLE `sm_fees_carry_forwards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_carry_forwards_student_id_foreign` (`student_id`),
  ADD KEY `sm_fees_carry_forwards_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_discounts`
--
ALTER TABLE `sm_fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_discounts_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_groups`
--
ALTER TABLE `sm_fees_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_groups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_masters`
--
ALTER TABLE `sm_fees_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_masters_fees_group_id_foreign` (`fees_group_id`),
  ADD KEY `sm_fees_masters_fees_type_id_foreign` (`fees_type_id`),
  ADD KEY `sm_fees_masters_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_payments`
--
ALTER TABLE `sm_fees_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_payments_fees_discount_id_foreign` (`fees_discount_id`),
  ADD KEY `sm_fees_payments_fees_type_id_foreign` (`fees_type_id`),
  ADD KEY `sm_fees_payments_student_id_foreign` (`student_id`),
  ADD KEY `sm_fees_payments_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_fees_types`
--
ALTER TABLE `sm_fees_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_fees_types_fees_group_id_foreign` (`fees_group_id`),
  ADD KEY `sm_fees_types_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_frontend_persmissions`
--
ALTER TABLE `sm_frontend_persmissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_general_settings`
--
ALTER TABLE `sm_general_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_general_settings_session_id_foreign` (`session_id`),
  ADD KEY `sm_general_settings_language_id_foreign` (`language_id`),
  ADD KEY `sm_general_settings_date_format_id_foreign` (`date_format_id`),
  ADD KEY `sm_general_settings_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_holidays`
--
ALTER TABLE `sm_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_holidays_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_homeworks`
--
ALTER TABLE `sm_homeworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_homeworks_evaluated_by_foreign` (`evaluated_by`),
  ADD KEY `sm_homeworks_class_id_foreign` (`class_id`),
  ADD KEY `sm_homeworks_section_id_foreign` (`section_id`),
  ADD KEY `sm_homeworks_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_homeworks_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_homework_students`
--
ALTER TABLE `sm_homework_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_homework_students_student_id_foreign` (`student_id`),
  ADD KEY `sm_homework_students_homework_id_foreign` (`homework_id`),
  ADD KEY `sm_homework_students_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_home_page_settings`
--
ALTER TABLE `sm_home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_hourly_rates`
--
ALTER TABLE `sm_hourly_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_hourly_rates_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_hr_payroll_earn_deducs`
--
ALTER TABLE `sm_hr_payroll_earn_deducs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_hr_payroll_earn_deducs_payroll_generate_id_foreign` (`payroll_generate_id`),
  ADD KEY `sm_hr_payroll_earn_deducs_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_hr_payroll_generates`
--
ALTER TABLE `sm_hr_payroll_generates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_hr_payroll_generates_staff_id_foreign` (`staff_id`),
  ADD KEY `sm_hr_payroll_generates_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_hr_salary_templates`
--
ALTER TABLE `sm_hr_salary_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_hr_salary_templates_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_human_departments`
--
ALTER TABLE `sm_human_departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_human_departments_created_by_foreign` (`created_by`),
  ADD KEY `sm_human_departments_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_human_departments_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_income_heads`
--
ALTER TABLE `sm_income_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_income_heads_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_instructions`
--
ALTER TABLE `sm_instructions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_instructions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_inventory_payments`
--
ALTER TABLE `sm_inventory_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_inventory_payments_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_items`
--
ALTER TABLE `sm_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_items_item_category_id_foreign` (`item_category_id`),
  ADD KEY `sm_items_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_categories`
--
ALTER TABLE `sm_item_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_categories_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_issues`
--
ALTER TABLE `sm_item_issues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_issues_role_id_foreign` (`role_id`),
  ADD KEY `sm_item_issues_item_category_id_foreign` (`item_category_id`),
  ADD KEY `sm_item_issues_item_id_foreign` (`item_id`),
  ADD KEY `sm_item_issues_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_receives`
--
ALTER TABLE `sm_item_receives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_receives_supplier_id_foreign` (`supplier_id`),
  ADD KEY `sm_item_receives_store_id_foreign` (`store_id`),
  ADD KEY `sm_item_receives_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_receive_children`
--
ALTER TABLE `sm_item_receive_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_receive_children_item_id_foreign` (`item_id`),
  ADD KEY `sm_item_receive_children_item_receive_id_foreign` (`item_receive_id`),
  ADD KEY `sm_item_receive_children_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_sells`
--
ALTER TABLE `sm_item_sells`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_sells_role_id_foreign` (`role_id`),
  ADD KEY `sm_item_sells_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_item_sell_children`
--
ALTER TABLE `sm_item_sell_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_sell_children_school_id_foreign` (`school_id`),
  ADD KEY `sm_item_sell_children_1` (`item_sell_id`),
  ADD KEY `sm_item_sell_children_2` (`item_id`);

--
-- Indexes for table `sm_item_stores`
--
ALTER TABLE `sm_item_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_item_stores_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_languages`
--
ALTER TABLE `sm_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_languages_lang_id_foreign` (`lang_id`),
  ADD KEY `sm_languages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_language_phrases`
--
ALTER TABLE `sm_language_phrases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_leave_defines`
--
ALTER TABLE `sm_leave_defines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_leave_defines_role_id_foreign` (`role_id`),
  ADD KEY `sm_leave_defines_type_id_foreign` (`type_id`),
  ADD KEY `sm_leave_defines_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_leave_requests`
--
ALTER TABLE `sm_leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_leave_requests_leave_define_id_foreign` (`leave_define_id`),
  ADD KEY `sm_leave_requests_staff_id_foreign` (`staff_id`),
  ADD KEY `sm_leave_requests_role_id_foreign` (`role_id`),
  ADD KEY `sm_leave_requests_type_id_foreign` (`type_id`),
  ADD KEY `sm_leave_requests_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_leave_types`
--
ALTER TABLE `sm_leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_leave_types_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_library_members`
--
ALTER TABLE `sm_library_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_library_members_member_type_foreign` (`member_type`),
  ADD KEY `sm_library_members_student_staff_id_foreign` (`student_staff_id`),
  ADD KEY `sm_library_members_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_marks_grades`
--
ALTER TABLE `sm_marks_grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_marks_grades_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_marks_registers`
--
ALTER TABLE `sm_marks_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_marks_registers_student_id_foreign` (`student_id`),
  ADD KEY `sm_marks_registers_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_marks_registers_class_id_foreign` (`class_id`),
  ADD KEY `sm_marks_registers_section_id_foreign` (`section_id`),
  ADD KEY `sm_marks_registers_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_marks_register_children`
--
ALTER TABLE `sm_marks_register_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_marks_register_children_marks_register_id_foreign` (`marks_register_id`),
  ADD KEY `sm_marks_register_children_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_marks_register_children_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_marks_send_sms`
--
ALTER TABLE `sm_marks_send_sms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_marks_send_sms_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_marks_send_sms_student_id_foreign` (`student_id`),
  ADD KEY `sm_marks_send_sms_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_mark_stores`
--
ALTER TABLE `sm_mark_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_mark_stores_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_mark_stores_exam_term_id_foreign` (`exam_term_id`),
  ADD KEY `sm_mark_stores_exam_setup_id_foreign` (`exam_setup_id`),
  ADD KEY `sm_mark_stores_student_id_foreign` (`student_id`),
  ADD KEY `sm_mark_stores_class_id_foreign` (`class_id`),
  ADD KEY `sm_mark_stores_section_id_foreign` (`section_id`),
  ADD KEY `sm_mark_stores_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_modules`
--
ALTER TABLE `sm_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_modules_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_module_links`
--
ALTER TABLE `sm_module_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_module_links_module_id_foreign` (`module_id`),
  ADD KEY `sm_module_links_created_by_foreign` (`created_by`),
  ADD KEY `sm_module_links_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_module_links_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_module_permissions`
--
ALTER TABLE `sm_module_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_module_permissions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_module_permission_assigns`
--
ALTER TABLE `sm_module_permission_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_module_permission_assigns_module_id_foreign` (`module_id`),
  ADD KEY `sm_module_permission_assigns_role_id_foreign` (`role_id`),
  ADD KEY `sm_module_permission_assigns_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_news`
--
ALTER TABLE `sm_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_news_category_id_foreign` (`category_id`),
  ADD KEY `sm_news_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_news_categories`
--
ALTER TABLE `sm_news_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_news_categories_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_news_pages`
--
ALTER TABLE `sm_news_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_news_pages_created_by_foreign` (`created_by`),
  ADD KEY `sm_news_pages_updated_by_foreign` (`updated_by`),
  ADD KEY `sm_news_pages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_notice_boards`
--
ALTER TABLE `sm_notice_boards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_notice_boards_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_notifications`
--
ALTER TABLE `sm_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_notifications_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_online_exams`
--
ALTER TABLE `sm_online_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_online_exams_class_id_foreign` (`class_id`),
  ADD KEY `sm_online_exams_section_id_foreign` (`section_id`),
  ADD KEY `sm_online_exams_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_online_exams_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_online_exam_marks`
--
ALTER TABLE `sm_online_exam_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_online_exam_marks_student_id_foreign` (`student_id`),
  ADD KEY `sm_online_exam_marks_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_online_exam_marks_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_online_exam_marks_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_online_exam_questions`
--
ALTER TABLE `sm_online_exam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_online_exam_questions_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `sm_online_exam_questions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_online_exam_question_assigns`
--
ALTER TABLE `sm_online_exam_question_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_online_exam_question_assigns_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `sm_online_exam_question_assigns_question_bank_id_foreign` (`question_bank_id`),
  ADD KEY `sm_online_exam_question_assigns_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_online_exam_question_mu_options`
--
ALTER TABLE `sm_online_exam_question_mu_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `on_ex_qu_id` (`online_exam_question_id`),
  ADD KEY `sm_online_exam_question_mu_options_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_optional_subject_assigns`
--
ALTER TABLE `sm_optional_subject_assigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_optional_subject_assigns_student_id_foreign` (`student_id`),
  ADD KEY `sm_optional_subject_assigns_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_optional_subject_assigns_school_id_foreign` (`school_id`),
  ADD KEY `sm_optional_subject_assigns_session_id_foreign` (`session_id`);

--
-- Indexes for table `sm_parents`
--
ALTER TABLE `sm_parents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_parents_user_id_foreign` (`user_id`),
  ADD KEY `sm_parents_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_payment_gateway_settings`
--
ALTER TABLE `sm_payment_gateway_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_payment_gateway_settings_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_payment_methhods`
--
ALTER TABLE `sm_payment_methhods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_payment_methhods_gateway_id_foreign` (`gateway_id`),
  ADD KEY `sm_payment_methhods_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_phone_call_logs`
--
ALTER TABLE `sm_phone_call_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_phone_call_logs_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_postal_dispatches`
--
ALTER TABLE `sm_postal_dispatches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_postal_dispatches_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_postal_receives`
--
ALTER TABLE `sm_postal_receives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_postal_receives_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_product_purchases`
--
ALTER TABLE `sm_product_purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_product_purchases_user_id_foreign` (`user_id`),
  ADD KEY `sm_product_purchases_staff_id_foreign` (`staff_id`),
  ADD KEY `sm_product_purchases_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_question_banks`
--
ALTER TABLE `sm_question_banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_question_banks_q_group_id_foreign` (`q_group_id`),
  ADD KEY `sm_question_banks_class_id_foreign` (`class_id`),
  ADD KEY `sm_question_banks_section_id_foreign` (`section_id`),
  ADD KEY `sm_question_banks_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_question_bank_mu_options`
--
ALTER TABLE `sm_question_bank_mu_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_question_bank_mu_options_question_bank_id_foreign` (`question_bank_id`),
  ADD KEY `sm_question_bank_mu_options_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_question_groups`
--
ALTER TABLE `sm_question_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_question_groups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_question_levels`
--
ALTER TABLE `sm_question_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_question_levels_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_result_stores`
--
ALTER TABLE `sm_result_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_result_stores_exam_type_id_foreign` (`exam_type_id`),
  ADD KEY `sm_result_stores_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_result_stores_exam_setup_id_foreign` (`exam_setup_id`),
  ADD KEY `sm_result_stores_student_id_foreign` (`student_id`),
  ADD KEY `sm_result_stores_class_id_foreign` (`class_id`),
  ADD KEY `sm_result_stores_section_id_foreign` (`section_id`),
  ADD KEY `sm_result_stores_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_role_permissions`
--
ALTER TABLE `sm_role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_role_permissions_module_link_id_foreign` (`module_link_id`),
  ADD KEY `sm_role_permissions_role_id_foreign` (`role_id`),
  ADD KEY `sm_role_permissions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_room_lists`
--
ALTER TABLE `sm_room_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_room_lists_dormitory_id_foreign` (`dormitory_id`),
  ADD KEY `sm_room_lists_room_type_id_foreign` (`room_type_id`),
  ADD KEY `sm_room_lists_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_room_types`
--
ALTER TABLE `sm_room_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_room_types_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_routes`
--
ALTER TABLE `sm_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_routes_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_schools`
--
ALTER TABLE `sm_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_seat_plans`
--
ALTER TABLE `sm_seat_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_seat_plans_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_seat_plans_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_seat_plans_class_id_foreign` (`class_id`),
  ADD KEY `sm_seat_plans_section_id_foreign` (`section_id`),
  ADD KEY `sm_seat_plans_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_seat_plan_children`
--
ALTER TABLE `sm_seat_plan_children`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_seat_plan_children_seat_plan_id_foreign` (`seat_plan_id`),
  ADD KEY `sm_seat_plan_children_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_sections`
--
ALTER TABLE `sm_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_sections_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_send_messages`
--
ALTER TABLE `sm_send_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_send_messages_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_sessions`
--
ALTER TABLE `sm_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_sessions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_setup_admins`
--
ALTER TABLE `sm_setup_admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_setup_admins_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_sms_gateways`
--
ALTER TABLE `sm_sms_gateways`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_sms_gateways_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_social_media_icons`
--
ALTER TABLE `sm_social_media_icons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_social_media_icons_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_staffs`
--
ALTER TABLE `sm_staffs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_staffs_designation_id_foreign` (`designation_id`),
  ADD KEY `sm_staffs_department_id_foreign` (`department_id`),
  ADD KEY `sm_staffs_user_id_foreign` (`user_id`),
  ADD KEY `sm_staffs_role_id_foreign` (`role_id`),
  ADD KEY `sm_staffs_gender_id_foreign` (`gender_id`),
  ADD KEY `sm_staffs_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_staff_attendance_imports`
--
ALTER TABLE `sm_staff_attendance_imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_staff_attendance_imports_staff_id_foreign` (`staff_id`),
  ADD KEY `sm_staff_attendance_imports_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_staff_attendences`
--
ALTER TABLE `sm_staff_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_staff_attendences_staff_id_foreign` (`staff_id`),
  ADD KEY `sm_staff_attendences_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_students`
--
ALTER TABLE `sm_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_students_bloodgroup_id_foreign` (`bloodgroup_id`),
  ADD KEY `sm_students_religion_id_foreign` (`religion_id`),
  ADD KEY `sm_students_route_list_id_foreign` (`route_list_id`),
  ADD KEY `sm_students_dormitory_id_foreign` (`dormitory_id`),
  ADD KEY `sm_students_vechile_id_foreign` (`vechile_id`),
  ADD KEY `sm_students_room_id_foreign` (`room_id`),
  ADD KEY `sm_students_student_category_id_foreign` (`student_category_id`),
  ADD KEY `sm_students_class_id_foreign` (`class_id`),
  ADD KEY `sm_students_section_id_foreign` (`section_id`),
  ADD KEY `sm_students_session_id_foreign` (`session_id`),
  ADD KEY `sm_students_parent_id_foreign` (`parent_id`),
  ADD KEY `sm_students_user_id_foreign` (`user_id`),
  ADD KEY `sm_students_role_id_foreign` (`role_id`),
  ADD KEY `sm_students_gender_id_foreign` (`gender_id`),
  ADD KEY `sm_students_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_attendances`
--
ALTER TABLE `sm_student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_attendances_student_id_foreign` (`student_id`),
  ADD KEY `sm_student_attendances_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_attendance_imports`
--
ALTER TABLE `sm_student_attendance_imports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_attendance_imports_student_id_foreign` (`student_id`),
  ADD KEY `sm_student_attendance_imports_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_categories`
--
ALTER TABLE `sm_student_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_categories_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_certificates`
--
ALTER TABLE `sm_student_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_certificates_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_documents`
--
ALTER TABLE `sm_student_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_documents_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_excel_formats`
--
ALTER TABLE `sm_student_excel_formats`
  ADD KEY `sm_student_excel_formats_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_groups`
--
ALTER TABLE `sm_student_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_groups_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_homeworks`
--
ALTER TABLE `sm_student_homeworks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_homeworks_evaluated_by_foreign` (`evaluated_by`),
  ADD KEY `sm_student_homeworks_student_id_foreign` (`student_id`),
  ADD KEY `sm_student_homeworks_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_student_homeworks_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_id_cards`
--
ALTER TABLE `sm_student_id_cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_id_cards_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_promotions`
--
ALTER TABLE `sm_student_promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_promotions_previous_class_id_foreign` (`previous_class_id`),
  ADD KEY `sm_student_promotions_current_class_id_foreign` (`current_class_id`),
  ADD KEY `sm_student_promotions_previous_section_id_foreign` (`previous_section_id`),
  ADD KEY `sm_student_promotions_current_section_id_foreign` (`current_section_id`),
  ADD KEY `sm_student_promotions_previous_session_id_foreign` (`previous_session_id`),
  ADD KEY `sm_student_promotions_current_session_id_foreign` (`current_session_id`),
  ADD KEY `sm_student_promotions_student_id_foreign` (`student_id`),
  ADD KEY `sm_student_promotions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_take_online_exams`
--
ALTER TABLE `sm_student_take_online_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_take_online_exams_student_id_foreign` (`student_id`),
  ADD KEY `sm_student_take_online_exams_online_exam_id_foreign` (`online_exam_id`),
  ADD KEY `sm_student_take_online_exams_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_take_online_exam_questions`
--
ALTER TABLE `sm_student_take_online_exam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_on_ex_id` (`take_online_exam_id`),
  ADD KEY `sm_student_take_online_exam_questions_question_bank_id_foreign` (`question_bank_id`),
  ADD KEY `sm_student_take_online_exam_questions_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_take_onln_ex_ques_options`
--
ALTER TABLE `sm_student_take_onln_ex_ques_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `t_on_ex_q_id` (`take_online_exam_question_id`),
  ADD KEY `sm_student_take_onln_ex_ques_options_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_student_timelines`
--
ALTER TABLE `sm_student_timelines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_student_timelines_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_styles`
--
ALTER TABLE `sm_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_styles_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_subjects`
--
ALTER TABLE `sm_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_subjects_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_subject_attendances`
--
ALTER TABLE `sm_subject_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_subject_attendances_subject_id_foreign` (`subject_id`),
  ADD KEY `sm_subject_attendances_student_id_foreign` (`student_id`),
  ADD KEY `sm_subject_attendances_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_suppliers`
--
ALTER TABLE `sm_suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_suppliers_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_system_versions`
--
ALTER TABLE `sm_system_versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_teacher_upload_contents`
--
ALTER TABLE `sm_teacher_upload_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_teacher_upload_contents_class_foreign` (`class`),
  ADD KEY `sm_teacher_upload_contents_section_foreign` (`section`),
  ADD KEY `sm_teacher_upload_contents_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_temporary_meritlists`
--
ALTER TABLE `sm_temporary_meritlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_temporary_meritlists_exam_id_foreign` (`exam_id`),
  ADD KEY `sm_temporary_meritlists_class_id_foreign` (`class_id`),
  ADD KEY `sm_temporary_meritlists_section_id_foreign` (`section_id`),
  ADD KEY `sm_temporary_meritlists_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_testimonials`
--
ALTER TABLE `sm_testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_testimonials_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_time_zones`
--
ALTER TABLE `sm_time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sm_to_dos`
--
ALTER TABLE `sm_to_dos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_to_dos_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_upload_contents`
--
ALTER TABLE `sm_upload_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_upload_contents_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_upload_homework_contents`
--
ALTER TABLE `sm_upload_homework_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_upload_homework_contents_student_id_foreign` (`student_id`),
  ADD KEY `sm_upload_homework_contents_homework_id_foreign` (`homework_id`),
  ADD KEY `sm_upload_homework_contents_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_user_logs`
--
ALTER TABLE `sm_user_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_user_logs_user_id_foreign` (`user_id`),
  ADD KEY `sm_user_logs_role_id_foreign` (`role_id`),
  ADD KEY `sm_user_logs_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_vehicles`
--
ALTER TABLE `sm_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_vehicles_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_visitors`
--
ALTER TABLE `sm_visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sm_visitors_school_id_foreign` (`school_id`);

--
-- Indexes for table `sm_weekends`
--
ALTER TABLE `sm_weekends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_school_id_foreign` (`school_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `continents`
--
ALTER TABLE `continents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `continets`
--
ALTER TABLE `continets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `custom_result_settings`
--
ALTER TABLE `custom_result_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infix_module_infos`
--
ALTER TABLE `infix_module_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553;

--
-- AUTO_INCREMENT for table `infix_module_student_parent_infos`
--
ALTER TABLE `infix_module_student_parent_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `infix_permission_assigns`
--
ALTER TABLE `infix_permission_assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=986;

--
-- AUTO_INCREMENT for table `infix_roles`
--
ALTER TABLE `infix_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_about_pages`
--
ALTER TABLE `sm_about_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_academic_years`
--
ALTER TABLE `sm_academic_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_add_expenses`
--
ALTER TABLE `sm_add_expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_add_incomes`
--
ALTER TABLE `sm_add_incomes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_add_ons`
--
ALTER TABLE `sm_add_ons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_admission_queries`
--
ALTER TABLE `sm_admission_queries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_admission_query_followups`
--
ALTER TABLE `sm_admission_query_followups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_assign_class_teachers`
--
ALTER TABLE `sm_assign_class_teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_assign_subjects`
--
ALTER TABLE `sm_assign_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_assign_vehicles`
--
ALTER TABLE `sm_assign_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_background_settings`
--
ALTER TABLE `sm_background_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_backups`
--
ALTER TABLE `sm_backups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_bank_accounts`
--
ALTER TABLE `sm_bank_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_base_groups`
--
ALTER TABLE `sm_base_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_base_setups`
--
ALTER TABLE `sm_base_setups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sm_books`
--
ALTER TABLE `sm_books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_book_categories`
--
ALTER TABLE `sm_book_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_book_issues`
--
ALTER TABLE `sm_book_issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_chart_of_accounts`
--
ALTER TABLE `sm_chart_of_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_classes`
--
ALTER TABLE `sm_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_class_optional_subject`
--
ALTER TABLE `sm_class_optional_subject`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_class_rooms`
--
ALTER TABLE `sm_class_rooms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_class_routines`
--
ALTER TABLE `sm_class_routines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_class_routine_updates`
--
ALTER TABLE `sm_class_routine_updates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_class_sections`
--
ALTER TABLE `sm_class_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_class_teachers`
--
ALTER TABLE `sm_class_teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_class_times`
--
ALTER TABLE `sm_class_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_complaints`
--
ALTER TABLE `sm_complaints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_contact_messages`
--
ALTER TABLE `sm_contact_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_contact_pages`
--
ALTER TABLE `sm_contact_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_content_types`
--
ALTER TABLE `sm_content_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_countries`
--
ALTER TABLE `sm_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_courses`
--
ALTER TABLE `sm_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_course_pages`
--
ALTER TABLE `sm_course_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_currencies`
--
ALTER TABLE `sm_currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `sm_custom_links`
--
ALTER TABLE `sm_custom_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_custom_temporary_results`
--
ALTER TABLE `sm_custom_temporary_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_dashboard_settings`
--
ALTER TABLE `sm_dashboard_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_date_formats`
--
ALTER TABLE `sm_date_formats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sm_designations`
--
ALTER TABLE `sm_designations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_dormitory_lists`
--
ALTER TABLE `sm_dormitory_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_email_settings`
--
ALTER TABLE `sm_email_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_email_sms_logs`
--
ALTER TABLE `sm_email_sms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_events`
--
ALTER TABLE `sm_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_exams`
--
ALTER TABLE `sm_exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_exam_attendances`
--
ALTER TABLE `sm_exam_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_exam_attendance_children`
--
ALTER TABLE `sm_exam_attendance_children`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_exam_marks_registers`
--
ALTER TABLE `sm_exam_marks_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_exam_schedules`
--
ALTER TABLE `sm_exam_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_exam_schedule_subjects`
--
ALTER TABLE `sm_exam_schedule_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_exam_setups`
--
ALTER TABLE `sm_exam_setups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_exam_types`
--
ALTER TABLE `sm_exam_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_expense_heads`
--
ALTER TABLE `sm_expense_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_fees_assigns`
--
ALTER TABLE `sm_fees_assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_fees_assign_discounts`
--
ALTER TABLE `sm_fees_assign_discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_fees_carry_forwards`
--
ALTER TABLE `sm_fees_carry_forwards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_fees_discounts`
--
ALTER TABLE `sm_fees_discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_fees_groups`
--
ALTER TABLE `sm_fees_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_fees_masters`
--
ALTER TABLE `sm_fees_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_fees_payments`
--
ALTER TABLE `sm_fees_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_fees_types`
--
ALTER TABLE `sm_fees_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_frontend_persmissions`
--
ALTER TABLE `sm_frontend_persmissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sm_general_settings`
--
ALTER TABLE `sm_general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_holidays`
--
ALTER TABLE `sm_holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_homeworks`
--
ALTER TABLE `sm_homeworks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_homework_students`
--
ALTER TABLE `sm_homework_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_home_page_settings`
--
ALTER TABLE `sm_home_page_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_hourly_rates`
--
ALTER TABLE `sm_hourly_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_hr_payroll_earn_deducs`
--
ALTER TABLE `sm_hr_payroll_earn_deducs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_hr_payroll_generates`
--
ALTER TABLE `sm_hr_payroll_generates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_hr_salary_templates`
--
ALTER TABLE `sm_hr_salary_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_human_departments`
--
ALTER TABLE `sm_human_departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_income_heads`
--
ALTER TABLE `sm_income_heads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_instructions`
--
ALTER TABLE `sm_instructions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_inventory_payments`
--
ALTER TABLE `sm_inventory_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_items`
--
ALTER TABLE `sm_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_item_categories`
--
ALTER TABLE `sm_item_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_item_issues`
--
ALTER TABLE `sm_item_issues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_item_receives`
--
ALTER TABLE `sm_item_receives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_item_receive_children`
--
ALTER TABLE `sm_item_receive_children`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_item_sells`
--
ALTER TABLE `sm_item_sells`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_item_sell_children`
--
ALTER TABLE `sm_item_sell_children`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_item_stores`
--
ALTER TABLE `sm_item_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_languages`
--
ALTER TABLE `sm_languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_language_phrases`
--
ALTER TABLE `sm_language_phrases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1288;

--
-- AUTO_INCREMENT for table `sm_leave_defines`
--
ALTER TABLE `sm_leave_defines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_leave_requests`
--
ALTER TABLE `sm_leave_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_leave_types`
--
ALTER TABLE `sm_leave_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sm_library_members`
--
ALTER TABLE `sm_library_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_marks_grades`
--
ALTER TABLE `sm_marks_grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sm_marks_registers`
--
ALTER TABLE `sm_marks_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_marks_register_children`
--
ALTER TABLE `sm_marks_register_children`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_marks_send_sms`
--
ALTER TABLE `sm_marks_send_sms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_mark_stores`
--
ALTER TABLE `sm_mark_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_modules`
--
ALTER TABLE `sm_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sm_module_links`
--
ALTER TABLE `sm_module_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `sm_module_permissions`
--
ALTER TABLE `sm_module_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `sm_module_permission_assigns`
--
ALTER TABLE `sm_module_permission_assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `sm_news`
--
ALTER TABLE `sm_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sm_news_categories`
--
ALTER TABLE `sm_news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_news_pages`
--
ALTER TABLE `sm_news_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_notice_boards`
--
ALTER TABLE `sm_notice_boards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_notifications`
--
ALTER TABLE `sm_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_online_exams`
--
ALTER TABLE `sm_online_exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_online_exam_marks`
--
ALTER TABLE `sm_online_exam_marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_online_exam_questions`
--
ALTER TABLE `sm_online_exam_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_online_exam_question_assigns`
--
ALTER TABLE `sm_online_exam_question_assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_online_exam_question_mu_options`
--
ALTER TABLE `sm_online_exam_question_mu_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_optional_subject_assigns`
--
ALTER TABLE `sm_optional_subject_assigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_parents`
--
ALTER TABLE `sm_parents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_payment_gateway_settings`
--
ALTER TABLE `sm_payment_gateway_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sm_payment_methhods`
--
ALTER TABLE `sm_payment_methhods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sm_phone_call_logs`
--
ALTER TABLE `sm_phone_call_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_postal_dispatches`
--
ALTER TABLE `sm_postal_dispatches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_postal_receives`
--
ALTER TABLE `sm_postal_receives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_product_purchases`
--
ALTER TABLE `sm_product_purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_question_banks`
--
ALTER TABLE `sm_question_banks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_question_bank_mu_options`
--
ALTER TABLE `sm_question_bank_mu_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_question_groups`
--
ALTER TABLE `sm_question_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_question_levels`
--
ALTER TABLE `sm_question_levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_result_stores`
--
ALTER TABLE `sm_result_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_role_permissions`
--
ALTER TABLE `sm_role_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7662;

--
-- AUTO_INCREMENT for table `sm_room_lists`
--
ALTER TABLE `sm_room_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_room_types`
--
ALTER TABLE `sm_room_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_routes`
--
ALTER TABLE `sm_routes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_schools`
--
ALTER TABLE `sm_schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_seat_plans`
--
ALTER TABLE `sm_seat_plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_seat_plan_children`
--
ALTER TABLE `sm_seat_plan_children`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_sections`
--
ALTER TABLE `sm_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_send_messages`
--
ALTER TABLE `sm_send_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_sessions`
--
ALTER TABLE `sm_sessions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_setup_admins`
--
ALTER TABLE `sm_setup_admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_sms_gateways`
--
ALTER TABLE `sm_sms_gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_social_media_icons`
--
ALTER TABLE `sm_social_media_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sm_staffs`
--
ALTER TABLE `sm_staffs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_staff_attendance_imports`
--
ALTER TABLE `sm_staff_attendance_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_staff_attendences`
--
ALTER TABLE `sm_staff_attendences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_students`
--
ALTER TABLE `sm_students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_attendances`
--
ALTER TABLE `sm_student_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_attendance_imports`
--
ALTER TABLE `sm_student_attendance_imports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_categories`
--
ALTER TABLE `sm_student_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_certificates`
--
ALTER TABLE `sm_student_certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_student_documents`
--
ALTER TABLE `sm_student_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_groups`
--
ALTER TABLE `sm_student_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_homeworks`
--
ALTER TABLE `sm_student_homeworks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_id_cards`
--
ALTER TABLE `sm_student_id_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_promotions`
--
ALTER TABLE `sm_student_promotions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_take_online_exams`
--
ALTER TABLE `sm_student_take_online_exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_take_online_exam_questions`
--
ALTER TABLE `sm_student_take_online_exam_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_take_onln_ex_ques_options`
--
ALTER TABLE `sm_student_take_onln_ex_ques_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_student_timelines`
--
ALTER TABLE `sm_student_timelines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_styles`
--
ALTER TABLE `sm_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_subjects`
--
ALTER TABLE `sm_subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_subject_attendances`
--
ALTER TABLE `sm_subject_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_suppliers`
--
ALTER TABLE `sm_suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_system_versions`
--
ALTER TABLE `sm_system_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sm_teacher_upload_contents`
--
ALTER TABLE `sm_teacher_upload_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_temporary_meritlists`
--
ALTER TABLE `sm_temporary_meritlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_testimonials`
--
ALTER TABLE `sm_testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sm_time_zones`
--
ALTER TABLE `sm_time_zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `sm_to_dos`
--
ALTER TABLE `sm_to_dos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_upload_contents`
--
ALTER TABLE `sm_upload_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_upload_homework_contents`
--
ALTER TABLE `sm_upload_homework_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_user_logs`
--
ALTER TABLE `sm_user_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sm_vehicles`
--
ALTER TABLE `sm_vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_visitors`
--
ALTER TABLE `sm_visitors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sm_weekends`
--
ALTER TABLE `sm_weekends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `continents`
--
ALTER TABLE `continents`
  ADD CONSTRAINT `continents_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `continets`
--
ALTER TABLE `continets`
  ADD CONSTRAINT `continets_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `custom_result_settings`
--
ALTER TABLE `custom_result_settings`
  ADD CONSTRAINT `custom_result_settings_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `infix_module_infos`
--
ALTER TABLE `infix_module_infos`
  ADD CONSTRAINT `infix_module_infos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `infix_module_infos_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `infix_module_infos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `infix_module_student_parent_infos`
--
ALTER TABLE `infix_module_student_parent_infos`
  ADD CONSTRAINT `infix_module_student_parent_infos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `infix_module_student_parent_infos_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `infix_module_student_parent_infos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `infix_permission_assigns`
--
ALTER TABLE `infix_permission_assigns`
  ADD CONSTRAINT `infix_permission_assigns_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `infix_roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `infix_permission_assigns_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `infix_roles`
--
ALTER TABLE `infix_roles`
  ADD CONSTRAINT `infix_roles_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_about_pages`
--
ALTER TABLE `sm_about_pages`
  ADD CONSTRAINT `sm_about_pages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_academic_years`
--
ALTER TABLE `sm_academic_years`
  ADD CONSTRAINT `sm_academic_years_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_add_expenses`
--
ALTER TABLE `sm_add_expenses`
  ADD CONSTRAINT `sm_add_expenses_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `sm_bank_accounts` (`id`),
  ADD CONSTRAINT `sm_add_expenses_expense_head_id_foreign` FOREIGN KEY (`expense_head_id`) REFERENCES `sm_expense_heads` (`id`),
  ADD CONSTRAINT `sm_add_expenses_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `sm_payment_methhods` (`id`),
  ADD CONSTRAINT `sm_add_expenses_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_add_incomes`
--
ALTER TABLE `sm_add_incomes`
  ADD CONSTRAINT `sm_add_incomes_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `sm_bank_accounts` (`id`),
  ADD CONSTRAINT `sm_add_incomes_income_head_id_foreign` FOREIGN KEY (`income_head_id`) REFERENCES `sm_income_heads` (`id`),
  ADD CONSTRAINT `sm_add_incomes_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `sm_payment_methhods` (`id`),
  ADD CONSTRAINT `sm_add_incomes_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_admission_queries`
--
ALTER TABLE `sm_admission_queries`
  ADD CONSTRAINT `sm_admission_queries_class_foreign` FOREIGN KEY (`class`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_admission_queries_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_admission_query_followups`
--
ALTER TABLE `sm_admission_query_followups`
  ADD CONSTRAINT `sm_admission_query_followups_admission_query_id_foreign` FOREIGN KEY (`admission_query_id`) REFERENCES `sm_admission_queries` (`id`),
  ADD CONSTRAINT `sm_admission_query_followups_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_assign_class_teachers`
--
ALTER TABLE `sm_assign_class_teachers`
  ADD CONSTRAINT `sm_assign_class_teachers_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_assign_class_teachers_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_assign_class_teachers_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`);

--
-- Constraints for table `sm_assign_subjects`
--
ALTER TABLE `sm_assign_subjects`
  ADD CONSTRAINT `sm_assign_subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_assign_subjects_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_assign_subjects_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_assign_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_assign_subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `sm_staffs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_assign_vehicles`
--
ALTER TABLE `sm_assign_vehicles`
  ADD CONSTRAINT `sm_assign_vehicles_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `sm_routes` (`id`),
  ADD CONSTRAINT `sm_assign_vehicles_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_assign_vehicles_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `sm_vehicles` (`id`);

--
-- Constraints for table `sm_background_settings`
--
ALTER TABLE `sm_background_settings`
  ADD CONSTRAINT `sm_background_settings_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_backups`
--
ALTER TABLE `sm_backups`
  ADD CONSTRAINT `sm_backups_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_bank_accounts`
--
ALTER TABLE `sm_bank_accounts`
  ADD CONSTRAINT `sm_bank_accounts_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_base_groups`
--
ALTER TABLE `sm_base_groups`
  ADD CONSTRAINT `sm_base_groups_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_base_setups`
--
ALTER TABLE `sm_base_setups`
  ADD CONSTRAINT `sm_base_setups_base_group_id_foreign` FOREIGN KEY (`base_group_id`) REFERENCES `sm_base_groups` (`id`),
  ADD CONSTRAINT `sm_base_setups_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_books`
--
ALTER TABLE `sm_books`
  ADD CONSTRAINT `sm_books_book_category_id_foreign` FOREIGN KEY (`book_category_id`) REFERENCES `sm_book_categories` (`id`),
  ADD CONSTRAINT `sm_books_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_book_categories`
--
ALTER TABLE `sm_book_categories`
  ADD CONSTRAINT `sm_book_categories_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_book_issues`
--
ALTER TABLE `sm_book_issues`
  ADD CONSTRAINT `sm_book_issues_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `sm_books` (`id`),
  ADD CONSTRAINT `sm_book_issues_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sm_book_issues_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_chart_of_accounts`
--
ALTER TABLE `sm_chart_of_accounts`
  ADD CONSTRAINT `sm_chart_of_accounts_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_classes`
--
ALTER TABLE `sm_classes`
  ADD CONSTRAINT `sm_classes_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_class_optional_subject`
--
ALTER TABLE `sm_class_optional_subject`
  ADD CONSTRAINT `sm_class_optional_subject_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_class_rooms`
--
ALTER TABLE `sm_class_rooms`
  ADD CONSTRAINT `sm_class_rooms_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_class_routines`
--
ALTER TABLE `sm_class_routines`
  ADD CONSTRAINT `sm_class_routines_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_class_routines_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_class_routines_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_class_routines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_class_routine_updates`
--
ALTER TABLE `sm_class_routine_updates`
  ADD CONSTRAINT `sm_class_routine_updates_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_class_routine_updates_class_period_id_foreign` FOREIGN KEY (`class_period_id`) REFERENCES `sm_class_times` (`id`),
  ADD CONSTRAINT `sm_class_routine_updates_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `sm_class_rooms` (`id`),
  ADD CONSTRAINT `sm_class_routine_updates_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_class_routine_updates_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_class_routine_updates_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_class_routine_updates_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `sm_staffs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_class_sections`
--
ALTER TABLE `sm_class_sections`
  ADD CONSTRAINT `sm_class_sections_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_class_sections_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_class_sections_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`);

--
-- Constraints for table `sm_class_teachers`
--
ALTER TABLE `sm_class_teachers`
  ADD CONSTRAINT `sm_class_teachers_assign_class_teacher_id_foreign` FOREIGN KEY (`assign_class_teacher_id`) REFERENCES `sm_assign_class_teachers` (`id`),
  ADD CONSTRAINT `sm_class_teachers_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_class_teachers_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `sm_staffs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_class_times`
--
ALTER TABLE `sm_class_times`
  ADD CONSTRAINT `sm_class_times_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_complaints`
--
ALTER TABLE `sm_complaints`
  ADD CONSTRAINT `sm_complaints_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_contact_messages`
--
ALTER TABLE `sm_contact_messages`
  ADD CONSTRAINT `sm_contact_messages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_contact_pages`
--
ALTER TABLE `sm_contact_pages`
  ADD CONSTRAINT `sm_contact_pages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_content_types`
--
ALTER TABLE `sm_content_types`
  ADD CONSTRAINT `sm_content_types_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_countries`
--
ALTER TABLE `sm_countries`
  ADD CONSTRAINT `sm_countries_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_courses`
--
ALTER TABLE `sm_courses`
  ADD CONSTRAINT `sm_courses_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_course_pages`
--
ALTER TABLE `sm_course_pages`
  ADD CONSTRAINT `sm_course_pages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_currencies`
--
ALTER TABLE `sm_currencies`
  ADD CONSTRAINT `sm_currencies_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_dashboard_settings`
--
ALTER TABLE `sm_dashboard_settings`
  ADD CONSTRAINT `sm_dashboard_settings_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `sm_dashboard_settings_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_date_formats`
--
ALTER TABLE `sm_date_formats`
  ADD CONSTRAINT `sm_date_formats_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_designations`
--
ALTER TABLE `sm_designations`
  ADD CONSTRAINT `sm_designations_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_dormitory_lists`
--
ALTER TABLE `sm_dormitory_lists`
  ADD CONSTRAINT `sm_dormitory_lists_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_email_settings`
--
ALTER TABLE `sm_email_settings`
  ADD CONSTRAINT `sm_email_settings_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_email_sms_logs`
--
ALTER TABLE `sm_email_sms_logs`
  ADD CONSTRAINT `sm_email_sms_logs_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_events`
--
ALTER TABLE `sm_events`
  ADD CONSTRAINT `sm_events_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_exams`
--
ALTER TABLE `sm_exams`
  ADD CONSTRAINT `sm_exams_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_exams_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `sm_exam_types` (`id`),
  ADD CONSTRAINT `sm_exams_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_exams_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_exam_attendances`
--
ALTER TABLE `sm_exam_attendances`
  ADD CONSTRAINT `sm_exam_attendances_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_exam_attendances_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `sm_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_exam_attendances_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_exam_attendances_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_exam_attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_exam_attendance_children`
--
ALTER TABLE `sm_exam_attendance_children`
  ADD CONSTRAINT `sm_exam_attendance_children_exam_attendance_id_foreign` FOREIGN KEY (`exam_attendance_id`) REFERENCES `sm_exam_attendances` (`id`),
  ADD CONSTRAINT `sm_exam_attendance_children_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_exam_attendance_children_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_exam_marks_registers`
--
ALTER TABLE `sm_exam_marks_registers`
  ADD CONSTRAINT `sm_exam_marks_registers_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `sm_exams` (`id`),
  ADD CONSTRAINT `sm_exam_marks_registers_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_exam_marks_registers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_exam_marks_registers_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_exam_schedules`
--
ALTER TABLE `sm_exam_schedules`
  ADD CONSTRAINT `sm_exam_schedules_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_exam_schedules_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `sm_exams` (`id`),
  ADD CONSTRAINT `sm_exam_schedules_exam_period_id_foreign` FOREIGN KEY (`exam_period_id`) REFERENCES `sm_class_times` (`id`),
  ADD CONSTRAINT `sm_exam_schedules_exam_term_id_foreign` FOREIGN KEY (`exam_term_id`) REFERENCES `sm_exam_types` (`id`),
  ADD CONSTRAINT `sm_exam_schedules_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `sm_room_lists` (`id`),
  ADD CONSTRAINT `sm_exam_schedules_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_exam_schedules_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_exam_schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_exam_schedule_subjects`
--
ALTER TABLE `sm_exam_schedule_subjects`
  ADD CONSTRAINT `sm_exam_schedule_subjects_exam_schedule_id_foreign` FOREIGN KEY (`exam_schedule_id`) REFERENCES `sm_exam_schedules` (`id`),
  ADD CONSTRAINT `sm_exam_schedule_subjects_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_exam_schedule_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_exam_setups`
--
ALTER TABLE `sm_exam_setups`
  ADD CONSTRAINT `sm_exam_setups_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_exam_setups_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `sm_exams` (`id`),
  ADD CONSTRAINT `sm_exam_setups_exam_term_id_foreign` FOREIGN KEY (`exam_term_id`) REFERENCES `sm_exam_types` (`id`),
  ADD CONSTRAINT `sm_exam_setups_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_exam_setups_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_exam_setups_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_exam_types`
--
ALTER TABLE `sm_exam_types`
  ADD CONSTRAINT `sm_exam_types_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_expense_heads`
--
ALTER TABLE `sm_expense_heads`
  ADD CONSTRAINT `sm_expense_heads_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_fees_assigns`
--
ALTER TABLE `sm_fees_assigns`
  ADD CONSTRAINT `sm_fees_assigns_fees_master_id_foreign` FOREIGN KEY (`fees_master_id`) REFERENCES `sm_fees_masters` (`id`),
  ADD CONSTRAINT `sm_fees_assigns_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_fees_assigns_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_fees_assign_discounts`
--
ALTER TABLE `sm_fees_assign_discounts`
  ADD CONSTRAINT `sm_fees_assign_discounts_fees_discount_id_foreign` FOREIGN KEY (`fees_discount_id`) REFERENCES `sm_fees_discounts` (`id`),
  ADD CONSTRAINT `sm_fees_assign_discounts_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_fees_assign_discounts_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_fees_carry_forwards`
--
ALTER TABLE `sm_fees_carry_forwards`
  ADD CONSTRAINT `sm_fees_carry_forwards_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_fees_carry_forwards_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_fees_discounts`
--
ALTER TABLE `sm_fees_discounts`
  ADD CONSTRAINT `sm_fees_discounts_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_fees_groups`
--
ALTER TABLE `sm_fees_groups`
  ADD CONSTRAINT `sm_fees_groups_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_fees_masters`
--
ALTER TABLE `sm_fees_masters`
  ADD CONSTRAINT `sm_fees_masters_fees_group_id_foreign` FOREIGN KEY (`fees_group_id`) REFERENCES `sm_fees_groups` (`id`),
  ADD CONSTRAINT `sm_fees_masters_fees_type_id_foreign` FOREIGN KEY (`fees_type_id`) REFERENCES `sm_fees_types` (`id`),
  ADD CONSTRAINT `sm_fees_masters_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_fees_payments`
--
ALTER TABLE `sm_fees_payments`
  ADD CONSTRAINT `sm_fees_payments_fees_discount_id_foreign` FOREIGN KEY (`fees_discount_id`) REFERENCES `sm_fees_discounts` (`id`),
  ADD CONSTRAINT `sm_fees_payments_fees_type_id_foreign` FOREIGN KEY (`fees_type_id`) REFERENCES `sm_fees_types` (`id`),
  ADD CONSTRAINT `sm_fees_payments_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_fees_payments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_fees_types`
--
ALTER TABLE `sm_fees_types`
  ADD CONSTRAINT `sm_fees_types_fees_group_id_foreign` FOREIGN KEY (`fees_group_id`) REFERENCES `sm_fees_groups` (`id`),
  ADD CONSTRAINT `sm_fees_types_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_general_settings`
--
ALTER TABLE `sm_general_settings`
  ADD CONSTRAINT `sm_general_settings_date_format_id_foreign` FOREIGN KEY (`date_format_id`) REFERENCES `sm_date_formats` (`id`),
  ADD CONSTRAINT `sm_general_settings_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `sm_languages` (`id`),
  ADD CONSTRAINT `sm_general_settings_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_general_settings_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sm_academic_years` (`id`);

--
-- Constraints for table `sm_holidays`
--
ALTER TABLE `sm_holidays`
  ADD CONSTRAINT `sm_holidays_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_homeworks`
--
ALTER TABLE `sm_homeworks`
  ADD CONSTRAINT `sm_homeworks_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_homeworks_evaluated_by_foreign` FOREIGN KEY (`evaluated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sm_homeworks_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_homeworks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_homeworks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_homework_students`
--
ALTER TABLE `sm_homework_students`
  ADD CONSTRAINT `sm_homework_students_homework_id_foreign` FOREIGN KEY (`homework_id`) REFERENCES `sm_homeworks` (`id`),
  ADD CONSTRAINT `sm_homework_students_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_homework_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_hourly_rates`
--
ALTER TABLE `sm_hourly_rates`
  ADD CONSTRAINT `sm_hourly_rates_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_hr_payroll_earn_deducs`
--
ALTER TABLE `sm_hr_payroll_earn_deducs`
  ADD CONSTRAINT `sm_hr_payroll_earn_deducs_payroll_generate_id_foreign` FOREIGN KEY (`payroll_generate_id`) REFERENCES `sm_hr_payroll_generates` (`id`),
  ADD CONSTRAINT `sm_hr_payroll_earn_deducs_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_hr_payroll_generates`
--
ALTER TABLE `sm_hr_payroll_generates`
  ADD CONSTRAINT `sm_hr_payroll_generates_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_hr_payroll_generates_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `sm_staffs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_hr_salary_templates`
--
ALTER TABLE `sm_hr_salary_templates`
  ADD CONSTRAINT `sm_hr_salary_templates_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_human_departments`
--
ALTER TABLE `sm_human_departments`
  ADD CONSTRAINT `sm_human_departments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sm_human_departments_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_human_departments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sm_income_heads`
--
ALTER TABLE `sm_income_heads`
  ADD CONSTRAINT `sm_income_heads_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_instructions`
--
ALTER TABLE `sm_instructions`
  ADD CONSTRAINT `sm_instructions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_inventory_payments`
--
ALTER TABLE `sm_inventory_payments`
  ADD CONSTRAINT `sm_inventory_payments_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_items`
--
ALTER TABLE `sm_items`
  ADD CONSTRAINT `sm_items_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `sm_item_categories` (`id`),
  ADD CONSTRAINT `sm_items_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_item_categories`
--
ALTER TABLE `sm_item_categories`
  ADD CONSTRAINT `sm_item_categories_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_item_issues`
--
ALTER TABLE `sm_item_issues`
  ADD CONSTRAINT `sm_item_issues_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `sm_item_categories` (`id`),
  ADD CONSTRAINT `sm_item_issues_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `sm_items` (`id`),
  ADD CONSTRAINT `sm_item_issues_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `sm_item_issues_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_item_receives`
--
ALTER TABLE `sm_item_receives`
  ADD CONSTRAINT `sm_item_receives_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_item_receives_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `sm_item_stores` (`id`),
  ADD CONSTRAINT `sm_item_receives_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `sm_suppliers` (`id`);

--
-- Constraints for table `sm_item_receive_children`
--
ALTER TABLE `sm_item_receive_children`
  ADD CONSTRAINT `sm_item_receive_children_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `sm_items` (`id`),
  ADD CONSTRAINT `sm_item_receive_children_item_receive_id_foreign` FOREIGN KEY (`item_receive_id`) REFERENCES `sm_item_receives` (`id`),
  ADD CONSTRAINT `sm_item_receive_children_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_item_sells`
--
ALTER TABLE `sm_item_sells`
  ADD CONSTRAINT `sm_item_sells_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `sm_item_sells_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_item_sell_children`
--
ALTER TABLE `sm_item_sell_children`
  ADD CONSTRAINT `sm_item_sell_children_1` FOREIGN KEY (`item_sell_id`) REFERENCES `sm_item_sells` (`id`),
  ADD CONSTRAINT `sm_item_sell_children_2` FOREIGN KEY (`item_id`) REFERENCES `sm_items` (`id`),
  ADD CONSTRAINT `sm_item_sell_children_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_item_stores`
--
ALTER TABLE `sm_item_stores`
  ADD CONSTRAINT `sm_item_stores_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_languages`
--
ALTER TABLE `sm_languages`
  ADD CONSTRAINT `sm_languages_lang_id_foreign` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`),
  ADD CONSTRAINT `sm_languages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_leave_defines`
--
ALTER TABLE `sm_leave_defines`
  ADD CONSTRAINT `sm_leave_defines_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `sm_leave_defines_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_leave_defines_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `sm_leave_types` (`id`);

--
-- Constraints for table `sm_leave_requests`
--
ALTER TABLE `sm_leave_requests`
  ADD CONSTRAINT `sm_leave_requests_leave_define_id_foreign` FOREIGN KEY (`leave_define_id`) REFERENCES `sm_leave_defines` (`id`),
  ADD CONSTRAINT `sm_leave_requests_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `sm_leave_requests_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_leave_requests_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `sm_staffs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_leave_requests_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `sm_leave_types` (`id`);

--
-- Constraints for table `sm_leave_types`
--
ALTER TABLE `sm_leave_types`
  ADD CONSTRAINT `sm_leave_types_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_library_members`
--
ALTER TABLE `sm_library_members`
  ADD CONSTRAINT `sm_library_members_member_type_foreign` FOREIGN KEY (`member_type`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `sm_library_members_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_library_members_student_staff_id_foreign` FOREIGN KEY (`student_staff_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sm_marks_grades`
--
ALTER TABLE `sm_marks_grades`
  ADD CONSTRAINT `sm_marks_grades_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_marks_registers`
--
ALTER TABLE `sm_marks_registers`
  ADD CONSTRAINT `sm_marks_registers_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_marks_registers_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `sm_exams` (`id`),
  ADD CONSTRAINT `sm_marks_registers_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_marks_registers_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_marks_registers_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_marks_register_children`
--
ALTER TABLE `sm_marks_register_children`
  ADD CONSTRAINT `sm_marks_register_children_marks_register_id_foreign` FOREIGN KEY (`marks_register_id`) REFERENCES `sm_marks_registers` (`id`),
  ADD CONSTRAINT `sm_marks_register_children_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_marks_register_children_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_marks_send_sms`
--
ALTER TABLE `sm_marks_send_sms`
  ADD CONSTRAINT `sm_marks_send_sms_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `sm_exams` (`id`),
  ADD CONSTRAINT `sm_marks_send_sms_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_marks_send_sms_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_mark_stores`
--
ALTER TABLE `sm_mark_stores`
  ADD CONSTRAINT `sm_mark_stores_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_mark_stores_exam_setup_id_foreign` FOREIGN KEY (`exam_setup_id`) REFERENCES `sm_exam_setups` (`id`),
  ADD CONSTRAINT `sm_mark_stores_exam_term_id_foreign` FOREIGN KEY (`exam_term_id`) REFERENCES `sm_exam_types` (`id`),
  ADD CONSTRAINT `sm_mark_stores_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_mark_stores_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_mark_stores_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_mark_stores_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_modules`
--
ALTER TABLE `sm_modules`
  ADD CONSTRAINT `sm_modules_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_module_links`
--
ALTER TABLE `sm_module_links`
  ADD CONSTRAINT `sm_module_links_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_module_links_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `sm_modules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_module_links_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_module_links_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_module_permissions`
--
ALTER TABLE `sm_module_permissions`
  ADD CONSTRAINT `sm_module_permissions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_module_permission_assigns`
--
ALTER TABLE `sm_module_permission_assigns`
  ADD CONSTRAINT `sm_module_permission_assigns_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `sm_module_permissions` (`id`),
  ADD CONSTRAINT `sm_module_permission_assigns_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `sm_module_permission_assigns_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_news`
--
ALTER TABLE `sm_news`
  ADD CONSTRAINT `sm_news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `sm_news_categories` (`id`),
  ADD CONSTRAINT `sm_news_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_news_categories`
--
ALTER TABLE `sm_news_categories`
  ADD CONSTRAINT `sm_news_categories_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_news_pages`
--
ALTER TABLE `sm_news_pages`
  ADD CONSTRAINT `sm_news_pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sm_news_pages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_news_pages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sm_notice_boards`
--
ALTER TABLE `sm_notice_boards`
  ADD CONSTRAINT `sm_notice_boards_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_notifications`
--
ALTER TABLE `sm_notifications`
  ADD CONSTRAINT `sm_notifications_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_online_exams`
--
ALTER TABLE `sm_online_exams`
  ADD CONSTRAINT `sm_online_exams_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_online_exams_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_online_exams_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_online_exams_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_online_exam_marks`
--
ALTER TABLE `sm_online_exam_marks`
  ADD CONSTRAINT `sm_online_exam_marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `sm_exams` (`id`),
  ADD CONSTRAINT `sm_online_exam_marks_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_online_exam_marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_online_exam_marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_online_exam_questions`
--
ALTER TABLE `sm_online_exam_questions`
  ADD CONSTRAINT `sm_online_exam_questions_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `sm_online_exams` (`id`),
  ADD CONSTRAINT `sm_online_exam_questions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_online_exam_question_assigns`
--
ALTER TABLE `sm_online_exam_question_assigns`
  ADD CONSTRAINT `sm_online_exam_question_assigns_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `sm_online_exams` (`id`),
  ADD CONSTRAINT `sm_online_exam_question_assigns_question_bank_id_foreign` FOREIGN KEY (`question_bank_id`) REFERENCES `sm_question_banks` (`id`),
  ADD CONSTRAINT `sm_online_exam_question_assigns_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_online_exam_question_mu_options`
--
ALTER TABLE `sm_online_exam_question_mu_options`
  ADD CONSTRAINT `on_ex_qu_id` FOREIGN KEY (`online_exam_question_id`) REFERENCES `sm_online_exam_questions` (`id`),
  ADD CONSTRAINT `sm_online_exam_question_mu_options_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_optional_subject_assigns`
--
ALTER TABLE `sm_optional_subject_assigns`
  ADD CONSTRAINT `sm_optional_subject_assigns_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_optional_subject_assigns_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sm_academic_years` (`id`),
  ADD CONSTRAINT `sm_optional_subject_assigns_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_optional_subject_assigns_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_parents`
--
ALTER TABLE `sm_parents`
  ADD CONSTRAINT `sm_parents_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sm_payment_gateway_settings`
--
ALTER TABLE `sm_payment_gateway_settings`
  ADD CONSTRAINT `sm_payment_gateway_settings_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_payment_methhods`
--
ALTER TABLE `sm_payment_methhods`
  ADD CONSTRAINT `sm_payment_methhods_gateway_id_foreign` FOREIGN KEY (`gateway_id`) REFERENCES `sm_payment_gateway_settings` (`id`),
  ADD CONSTRAINT `sm_payment_methhods_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_phone_call_logs`
--
ALTER TABLE `sm_phone_call_logs`
  ADD CONSTRAINT `sm_phone_call_logs_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_postal_dispatches`
--
ALTER TABLE `sm_postal_dispatches`
  ADD CONSTRAINT `sm_postal_dispatches_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_postal_receives`
--
ALTER TABLE `sm_postal_receives`
  ADD CONSTRAINT `sm_postal_receives_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_product_purchases`
--
ALTER TABLE `sm_product_purchases`
  ADD CONSTRAINT `sm_product_purchases_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_product_purchases_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `sm_staffs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_product_purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sm_question_banks`
--
ALTER TABLE `sm_question_banks`
  ADD CONSTRAINT `sm_question_banks_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_question_banks_q_group_id_foreign` FOREIGN KEY (`q_group_id`) REFERENCES `sm_question_groups` (`id`),
  ADD CONSTRAINT `sm_question_banks_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_question_banks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`);

--
-- Constraints for table `sm_question_bank_mu_options`
--
ALTER TABLE `sm_question_bank_mu_options`
  ADD CONSTRAINT `sm_question_bank_mu_options_question_bank_id_foreign` FOREIGN KEY (`question_bank_id`) REFERENCES `sm_question_banks` (`id`),
  ADD CONSTRAINT `sm_question_bank_mu_options_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_question_groups`
--
ALTER TABLE `sm_question_groups`
  ADD CONSTRAINT `sm_question_groups_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_question_levels`
--
ALTER TABLE `sm_question_levels`
  ADD CONSTRAINT `sm_question_levels_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_result_stores`
--
ALTER TABLE `sm_result_stores`
  ADD CONSTRAINT `sm_result_stores_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_result_stores_exam_setup_id_foreign` FOREIGN KEY (`exam_setup_id`) REFERENCES `sm_exam_setups` (`id`),
  ADD CONSTRAINT `sm_result_stores_exam_type_id_foreign` FOREIGN KEY (`exam_type_id`) REFERENCES `sm_exam_types` (`id`),
  ADD CONSTRAINT `sm_result_stores_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_result_stores_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_result_stores_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_result_stores_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_role_permissions`
--
ALTER TABLE `sm_role_permissions`
  ADD CONSTRAINT `sm_role_permissions_module_link_id_foreign` FOREIGN KEY (`module_link_id`) REFERENCES `sm_module_links` (`id`),
  ADD CONSTRAINT `sm_role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sm_role_permissions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_room_lists`
--
ALTER TABLE `sm_room_lists`
  ADD CONSTRAINT `sm_room_lists_dormitory_id_foreign` FOREIGN KEY (`dormitory_id`) REFERENCES `sm_dormitory_lists` (`id`),
  ADD CONSTRAINT `sm_room_lists_room_type_id_foreign` FOREIGN KEY (`room_type_id`) REFERENCES `sm_room_types` (`id`),
  ADD CONSTRAINT `sm_room_lists_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_room_types`
--
ALTER TABLE `sm_room_types`
  ADD CONSTRAINT `sm_room_types_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_routes`
--
ALTER TABLE `sm_routes`
  ADD CONSTRAINT `sm_routes_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_seat_plans`
--
ALTER TABLE `sm_seat_plans`
  ADD CONSTRAINT `sm_seat_plans_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_seat_plans_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `sm_exams` (`id`),
  ADD CONSTRAINT `sm_seat_plans_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_seat_plans_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_seat_plans_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_seat_plan_children`
--
ALTER TABLE `sm_seat_plan_children`
  ADD CONSTRAINT `sm_seat_plan_children_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_seat_plan_children_seat_plan_id_foreign` FOREIGN KEY (`seat_plan_id`) REFERENCES `sm_seat_plans` (`id`);

--
-- Constraints for table `sm_sections`
--
ALTER TABLE `sm_sections`
  ADD CONSTRAINT `sm_sections_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_send_messages`
--
ALTER TABLE `sm_send_messages`
  ADD CONSTRAINT `sm_send_messages_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_sessions`
--
ALTER TABLE `sm_sessions`
  ADD CONSTRAINT `sm_sessions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_setup_admins`
--
ALTER TABLE `sm_setup_admins`
  ADD CONSTRAINT `sm_setup_admins_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_sms_gateways`
--
ALTER TABLE `sm_sms_gateways`
  ADD CONSTRAINT `sm_sms_gateways_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_social_media_icons`
--
ALTER TABLE `sm_social_media_icons`
  ADD CONSTRAINT `sm_social_media_icons_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_staffs`
--
ALTER TABLE `sm_staffs`
  ADD CONSTRAINT `sm_staffs_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `sm_human_departments` (`id`),
  ADD CONSTRAINT `sm_staffs_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `sm_designations` (`id`),
  ADD CONSTRAINT `sm_staffs_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `sm_base_setups` (`id`),
  ADD CONSTRAINT `sm_staffs_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `infix_roles` (`id`),
  ADD CONSTRAINT `sm_staffs_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_staffs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sm_staff_attendance_imports`
--
ALTER TABLE `sm_staff_attendance_imports`
  ADD CONSTRAINT `sm_staff_attendance_imports_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_staff_attendance_imports_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `sm_staffs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_staff_attendences`
--
ALTER TABLE `sm_staff_attendences`
  ADD CONSTRAINT `sm_staff_attendences_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_staff_attendences_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `sm_staffs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_students`
--
ALTER TABLE `sm_students`
  ADD CONSTRAINT `sm_students_bloodgroup_id_foreign` FOREIGN KEY (`bloodgroup_id`) REFERENCES `sm_base_setups` (`id`),
  ADD CONSTRAINT `sm_students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_students_dormitory_id_foreign` FOREIGN KEY (`dormitory_id`) REFERENCES `sm_dormitory_lists` (`id`),
  ADD CONSTRAINT `sm_students_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `sm_base_setups` (`id`),
  ADD CONSTRAINT `sm_students_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `sm_parents` (`id`),
  ADD CONSTRAINT `sm_students_religion_id_foreign` FOREIGN KEY (`religion_id`) REFERENCES `sm_base_setups` (`id`),
  ADD CONSTRAINT `sm_students_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `infix_roles` (`id`),
  ADD CONSTRAINT `sm_students_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `sm_room_lists` (`id`),
  ADD CONSTRAINT `sm_students_route_list_id_foreign` FOREIGN KEY (`route_list_id`) REFERENCES `sm_routes` (`id`),
  ADD CONSTRAINT `sm_students_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_students_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_students_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `sm_academic_years` (`id`),
  ADD CONSTRAINT `sm_students_student_category_id_foreign` FOREIGN KEY (`student_category_id`) REFERENCES `sm_student_categories` (`id`),
  ADD CONSTRAINT `sm_students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sm_students_vechile_id_foreign` FOREIGN KEY (`vechile_id`) REFERENCES `sm_vehicles` (`id`);

--
-- Constraints for table `sm_student_attendances`
--
ALTER TABLE `sm_student_attendances`
  ADD CONSTRAINT `sm_student_attendances_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_student_attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_student_attendance_imports`
--
ALTER TABLE `sm_student_attendance_imports`
  ADD CONSTRAINT `sm_student_attendance_imports_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_student_attendance_imports_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_student_categories`
--
ALTER TABLE `sm_student_categories`
  ADD CONSTRAINT `sm_student_categories_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_student_certificates`
--
ALTER TABLE `sm_student_certificates`
  ADD CONSTRAINT `sm_student_certificates_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_student_documents`
--
ALTER TABLE `sm_student_documents`
  ADD CONSTRAINT `sm_student_documents_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_student_excel_formats`
--
ALTER TABLE `sm_student_excel_formats`
  ADD CONSTRAINT `sm_student_excel_formats_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_student_groups`
--
ALTER TABLE `sm_student_groups`
  ADD CONSTRAINT `sm_student_groups_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_student_homeworks`
--
ALTER TABLE `sm_student_homeworks`
  ADD CONSTRAINT `sm_student_homeworks_evaluated_by_foreign` FOREIGN KEY (`evaluated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sm_student_homeworks_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_student_homeworks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_student_homeworks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_student_id_cards`
--
ALTER TABLE `sm_student_id_cards`
  ADD CONSTRAINT `sm_student_id_cards_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_student_promotions`
--
ALTER TABLE `sm_student_promotions`
  ADD CONSTRAINT `sm_student_promotions_current_class_id_foreign` FOREIGN KEY (`current_class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_student_promotions_current_section_id_foreign` FOREIGN KEY (`current_section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_student_promotions_current_session_id_foreign` FOREIGN KEY (`current_session_id`) REFERENCES `sm_academic_years` (`id`),
  ADD CONSTRAINT `sm_student_promotions_previous_class_id_foreign` FOREIGN KEY (`previous_class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_student_promotions_previous_section_id_foreign` FOREIGN KEY (`previous_section_id`) REFERENCES `sm_sections` (`id`),
  ADD CONSTRAINT `sm_student_promotions_previous_session_id_foreign` FOREIGN KEY (`previous_session_id`) REFERENCES `sm_academic_years` (`id`),
  ADD CONSTRAINT `sm_student_promotions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_student_promotions_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_student_take_online_exams`
--
ALTER TABLE `sm_student_take_online_exams`
  ADD CONSTRAINT `sm_student_take_online_exams_online_exam_id_foreign` FOREIGN KEY (`online_exam_id`) REFERENCES `sm_online_exams` (`id`),
  ADD CONSTRAINT `sm_student_take_online_exams_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_student_take_online_exams_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_student_take_online_exam_questions`
--
ALTER TABLE `sm_student_take_online_exam_questions`
  ADD CONSTRAINT `sm_student_take_online_exam_questions_question_bank_id_foreign` FOREIGN KEY (`question_bank_id`) REFERENCES `sm_question_banks` (`id`),
  ADD CONSTRAINT `sm_student_take_online_exam_questions_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `t_on_ex_id` FOREIGN KEY (`take_online_exam_id`) REFERENCES `sm_student_take_online_exams` (`id`);

--
-- Constraints for table `sm_student_take_onln_ex_ques_options`
--
ALTER TABLE `sm_student_take_onln_ex_ques_options`
  ADD CONSTRAINT `sm_student_take_onln_ex_ques_options_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `t_on_ex_q_id` FOREIGN KEY (`take_online_exam_question_id`) REFERENCES `sm_student_take_online_exam_questions` (`id`);

--
-- Constraints for table `sm_student_timelines`
--
ALTER TABLE `sm_student_timelines`
  ADD CONSTRAINT `sm_student_timelines_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_styles`
--
ALTER TABLE `sm_styles`
  ADD CONSTRAINT `sm_styles_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_subjects`
--
ALTER TABLE `sm_subjects`
  ADD CONSTRAINT `sm_subjects_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_subject_attendances`
--
ALTER TABLE `sm_subject_attendances`
  ADD CONSTRAINT `sm_subject_attendances_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_subject_attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_subject_attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `sm_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_suppliers`
--
ALTER TABLE `sm_suppliers`
  ADD CONSTRAINT `sm_suppliers_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_teacher_upload_contents`
--
ALTER TABLE `sm_teacher_upload_contents`
  ADD CONSTRAINT `sm_teacher_upload_contents_class_foreign` FOREIGN KEY (`class`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_teacher_upload_contents_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_teacher_upload_contents_section_foreign` FOREIGN KEY (`section`) REFERENCES `sm_sections` (`id`);

--
-- Constraints for table `sm_temporary_meritlists`
--
ALTER TABLE `sm_temporary_meritlists`
  ADD CONSTRAINT `sm_temporary_meritlists_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `sm_classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sm_temporary_meritlists_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `sm_exams` (`id`),
  ADD CONSTRAINT `sm_temporary_meritlists_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_temporary_meritlists_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sm_sections` (`id`);

--
-- Constraints for table `sm_testimonials`
--
ALTER TABLE `sm_testimonials`
  ADD CONSTRAINT `sm_testimonials_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_to_dos`
--
ALTER TABLE `sm_to_dos`
  ADD CONSTRAINT `sm_to_dos_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_upload_contents`
--
ALTER TABLE `sm_upload_contents`
  ADD CONSTRAINT `sm_upload_contents_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_upload_homework_contents`
--
ALTER TABLE `sm_upload_homework_contents`
  ADD CONSTRAINT `sm_upload_homework_contents_homework_id_foreign` FOREIGN KEY (`homework_id`) REFERENCES `sm_homeworks` (`id`),
  ADD CONSTRAINT `sm_upload_homework_contents_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_upload_homework_contents_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `sm_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sm_user_logs`
--
ALTER TABLE `sm_user_logs`
  ADD CONSTRAINT `sm_user_logs_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `infix_roles` (`id`),
  ADD CONSTRAINT `sm_user_logs_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`),
  ADD CONSTRAINT `sm_user_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `sm_vehicles`
--
ALTER TABLE `sm_vehicles`
  ADD CONSTRAINT `sm_vehicles_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `sm_visitors`
--
ALTER TABLE `sm_visitors`
  ADD CONSTRAINT `sm_visitors_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `infix_roles` (`id`),
  ADD CONSTRAINT `users_school_id_foreign` FOREIGN KEY (`school_id`) REFERENCES `sm_schools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
