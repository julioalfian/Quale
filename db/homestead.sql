-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2017 at 10:43 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestead`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` decimal(15,2) DEFAULT NULL,
  `course_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `published` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `slug`, `description`, `price`, `course_image`, `start_date`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mr. Murphy Collier Jr.', 'mr-murphy-collier-jr', 'Veritatis distinctio consequatur doloremque non voluptatibus eum. Natus numquam ipsam quaerat aut et quam rerum. Voluptates eaque quis inventore repudiandae.', '24.04', NULL, NULL, 1, '2017-12-13 11:17:20', '2017-12-13 11:17:20', NULL),
(2, 'Prof. Anna Blanda', 'prof-anna-blanda', 'Iure et vel magnam aliquid accusantium eos. Laborum occaecati aut architecto. Atque error sequi nulla sed dolore dolorem.', '4.92', NULL, NULL, 1, '2017-12-13 11:17:20', '2017-12-13 11:17:20', NULL),
(3, 'Yasmeen Erdman', 'yasmeen-erdman', 'Sequi ut quam qui et aut. Et eos et molestias quo aliquam. Nesciunt tempora incidunt dolores reiciendis. Sit aspernatur molestiae repudiandae consectetur autem qui.', '105.03', NULL, NULL, 1, '2017-12-13 11:17:20', '2017-12-13 11:17:20', NULL),
(4, 'Kiley Bins', 'kiley-bins', 'Odio eligendi nobis esse et fugiat. Dolores sequi consequatur a voluptatibus officia a praesentium.', '112.67', NULL, NULL, 1, '2017-12-13 11:17:20', '2017-12-13 11:17:20', NULL),
(5, 'Georgianna Wilderman Sr.', 'georgianna-wilderman-sr', 'Voluptas numquam esse quam facilis aperiam. Sit vel tempora vel quo. Incidunt sed et et eos perferendis at.', '170.14', NULL, NULL, 1, '2017-12-13 11:17:21', '2017-12-13 11:17:21', NULL),
(6, 'matematika', 'matematika', 'ini matkul sulit', NULL, '1513492764-chemigo.png', '2017-12-17', 1, '2017-12-16 23:39:24', '2017-12-16 23:46:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_student`
--

CREATE TABLE `course_student` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `rating` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 3);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lesson_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_text` text COLLATE utf8mb4_unicode_ci,
  `full_text` text COLLATE utf8mb4_unicode_ci,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `free_lesson` tinyint(4) DEFAULT '0',
  `published` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `lesson_image`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Itaque enim provident atque nam sed quia et.', 'itaque-enim-provident-atque-nam-sed-quia-et', NULL, 'Modi rerum illum repellat quia praesentium eum inventore voluptas. Accusamus quod iusto nesciunt exercitationem aliquid dolor. Nemo repudiandae aut cupiditate provident omnis nisi explicabo. Expedita et a error at error.', 'Quas officiis qui commodi quia. Voluptates inventore eligendi commodi nihil eligendi. A aut esse exercitationem ducimus voluptatem dolore. Architecto inventore aliquid quasi molestiae tempora. Labore fugit sit ut tempore tempore placeat quibusdam.\nEt est culpa non et in nihil. Enim maxime ea dolorem est. Qui ut rerum nulla natus.\nAccusamus aut explicabo pariatur possimus nisi. Reprehenderit et dolores est tempora voluptatem dolorem placeat.\nMolestiae impedit quaerat sint quisquam aut est recusandae. Quia et vitae consequatur similique omnis. Maiores dolor eum dolorum laboriosam odio quod. Dolorem ex nobis animi ad debitis.\nUnde nesciunt tempora et dolorem corrupti id. In vel omnis voluptas commodi qui molestiae velit. Blanditiis voluptatem ut quas aliquid iure autem quam aut. Iusto qui autem qui culpa non dicta.\nLabore soluta inventore voluptas nobis asperiores accusantium quas animi. Facilis in officiis nisi ad. Est dolorem consequatur quae consequatur voluptatibus natus debitis.', 3, 0, 1, '2017-12-13 11:17:21', '2017-12-13 11:17:25', NULL),
(2, 1, 'Dicta tempora voluptatem non dolore.', 'dicta-tempora-voluptatem-non-dolore', NULL, 'Nulla officia est eum rerum est eos facere. Magnam harum dicta illo.', 'Quo quae id explicabo similique et error accusantium reprehenderit. Inventore est aliquid sequi quis earum alias exercitationem.\nSequi alias culpa tenetur provident ut quia. Incidunt dolore ea distinctio non ullam dolor.\nQuibusdam suscipit at eos consectetur repudiandae quam. Est soluta officia aut deserunt. Nulla ratione dolore vel eveniet dolorum delectus et est. Ut excepturi voluptatem dolores et.\nQuibusdam autem laudantium id unde cumque facilis quaerat. Neque culpa cupiditate temporibus accusantium vero dicta. Doloremque modi dolorem accusamus animi. Doloribus maxime autem quia perspiciatis. Est aliquam eaque aut laudantium consequatur a.\nAspernatur voluptatem vel voluptate corrupti dolores facere. Consectetur ut ut eius.\nNisi aperiam veritatis non illo. Et alias et expedita ratione nostrum. Consequuntur id iure commodi. Accusantium dolore alias nisi ab voluptates vero earum.', 5, 1, 0, '2017-12-13 11:17:22', '2017-12-13 11:17:25', NULL),
(3, 1, 'Officiis repudiandae sint quibusdam.', 'officiis-repudiandae-sint-quibusdam', NULL, 'Molestiae tenetur animi consectetur dolores. Veniam eos nisi cumque quas. Voluptate quia qui est aliquid magnam.', 'Non sit doloremque nisi veritatis ratione aperiam quae. Qui qui ipsum libero tempora veniam illo. Natus qui ad et repellendus et.\nTempora eveniet maiores molestias non id sint. Quia harum perspiciatis magni magni qui quis vel. Dolor ipsam omnis itaque.\nModi nobis ratione quam sunt. Illo veniam voluptas nemo eos aut impedit quis. Tenetur ipsa non voluptate. Alias cupiditate dolores voluptas necessitatibus quia velit aut dolores.\nIpsa laboriosam et aspernatur autem consequatur cupiditate omnis. Quod nihil in architecto numquam dolore. Alias consectetur qui reprehenderit dicta. Totam nihil natus aut eveniet nulla et voluptatem. Illo sunt sit corporis ut necessitatibus sit.\nNihil consequuntur a sit necessitatibus libero sit. Porro veniam molestiae similique quod voluptatem nesciunt quod. Commodi cum blanditiis dolor odio omnis. Fuga harum veritatis qui atque incidunt sed aut ut.', 6, 1, 1, '2017-12-13 11:17:22', '2017-12-13 11:17:25', NULL),
(4, 1, 'Fuga et harum voluptas consequuntur facilis.', 'fuga-et-harum-voluptas-consequuntur-facilis', NULL, 'Natus maxime nihil perferendis quasi ipsa. Molestiae incidunt eum quod rem assumenda recusandae magni. Asperiores modi quidem eius.', 'Amet veniam et ut a et sint. Repellat sit dicta voluptate illo quisquam eveniet. Officia molestiae deserunt omnis quia ut. Qui animi ut ea. Est repellendus eaque accusantium eveniet molestias voluptatibus aut.\nVoluptatem facilis accusantium atque ut error. Eos quas dolore quia. A provident pariatur in veritatis est aspernatur fugit. Magnam omnis dicta nihil. Qui repudiandae est vel et fugiat ratione.\nLaudantium deleniti dicta voluptatibus praesentium. Reiciendis praesentium incidunt sint culpa. Veritatis dolor sit qui iste. Modi nemo nesciunt vel omnis nam.\nAperiam voluptatem laborum omnis eligendi sint est saepe expedita. Provident beatae quam minus. Fugiat soluta quidem doloribus alias odit quia sequi. Ipsa aut perspiciatis architecto corrupti quos omnis.\nAt repudiandae est aut quis sed nesciunt. Nostrum aperiam laborum eveniet minima quo quod vel quos. Animi minus laudantium iste incidunt error consequatur consequuntur inventore.', 10, 1, 0, '2017-12-13 11:17:22', '2017-12-13 11:17:25', NULL),
(5, 1, 'Consequatur recusandae ut totam ut numquam.', 'consequatur-recusandae-ut-totam-ut-numquam', NULL, 'Velit repudiandae provident provident. Atque qui ut odit quam et et dignissimos consequatur. Delectus sed odit architecto. Quaerat qui et explicabo accusamus et.', 'Deleniti dolores nam nobis et cumque. Mollitia et non suscipit. Ut ipsam mollitia voluptatum asperiores rerum recusandae ut vero. Et voluptatem dicta maiores nulla modi. Qui autem at ut aliquid beatae voluptatibus aut.\nEnim cum et cumque fugiat sit et nisi. Nisi consequatur adipisci deserunt esse repellendus. Ut inventore tempora quibusdam mollitia rerum. Ducimus rerum perferendis aliquid quia perspiciatis corporis iste maiores.\nEt deserunt quam aut molestiae illum. Autem consequatur distinctio ut quis ea.\nEst rerum aperiam quibusdam animi neque sunt. Ea hic officia deserunt repellendus.\nVeniam tempore totam doloribus consequatur error. Sit quidem omnis eius voluptas est eligendi velit. Cupiditate qui delectus nostrum minus pariatur expedita reprehenderit nulla. Consequatur omnis aut ratione voluptatem voluptas.\nIure delectus aliquid praesentium voluptatem nisi sunt. Aut in sapiente quia ut dignissimos laboriosam voluptatem. Enim minima quod eaque.', 8, 0, 0, '2017-12-13 11:17:22', '2017-12-13 11:17:25', NULL),
(6, 1, 'Necessitatibus vel aperiam vel non et.', 'necessitatibus-vel-aperiam-vel-non-et', NULL, 'Tempore sapiente sed reprehenderit magnam maxime. Ea ipsa consequatur occaecati.', 'Provident harum nobis deserunt voluptatem harum odit possimus doloremque. Aliquid asperiores dolore temporibus sed in et aspernatur. Vitae provident aut eius non eum.\nTenetur illo in voluptatem numquam alias. Labore possimus aut aut dolores. Occaecati consequatur modi adipisci facilis facilis qui. Nihil est inventore minus incidunt cupiditate.\nEt iure illo aliquam ut accusantium adipisci ut. Deserunt inventore ut magni ex voluptatem vero. Ea vitae iusto id corrupti possimus nobis molestiae. Doloribus praesentium provident optio omnis accusantium.\nMagnam ad nulla autem qui voluptatem aliquam vel. Impedit eligendi qui natus omnis. Reprehenderit odit necessitatibus nemo.\nPerferendis maxime maiores omnis est quis. Alias maxime cum quo aperiam magnam ipsam eveniet. Velit error perspiciatis animi. Ipsa vel odio fugiat impedit. Quas velit odit quae quaerat nisi debitis tempore.\nArchitecto aut error rerum eos ut qui. Porro mollitia impedit impedit dolor.', 1, 1, 1, '2017-12-13 11:17:22', '2017-12-13 11:17:26', NULL),
(7, 1, 'Fuga ut dolor voluptate earum eum quidem.', 'fuga-ut-dolor-voluptate-earum-eum-quidem', NULL, 'Rerum doloremque sapiente recusandae et rerum voluptas et similique. Fuga velit ipsam sunt ipsa.', 'Et voluptate consequatur et itaque ut ut pariatur. Nam facere sint possimus a provident fuga. Unde provident sed eaque doloribus aperiam iusto.\nSaepe quasi dolores suscipit quia. Dolores iure et ratione eaque quo sequi nulla. Nostrum ipsa optio et rerum mollitia corrupti. Animi mollitia aut illo dolorum.\nInventore accusantium et quo ea beatae. Atque repudiandae molestiae quia perferendis vel cupiditate possimus. Rerum fugit et culpa consequatur id odit qui illum. Soluta ipsam similique dolor rerum.\nLaboriosam laborum sit sed ratione. Dicta et eos repellendus officia. Nobis numquam voluptatum debitis quia. Recusandae laudantium eos aut assumenda commodi qui maxime.\nNobis rem ipsum natus porro nobis vel distinctio enim. Est illum illo qui incidunt architecto.\nIpsa earum neque non in assumenda maiores et. Repudiandae cum et sit quia sed expedita molestiae.', 4, 1, 0, '2017-12-13 11:17:22', '2017-12-13 11:17:26', NULL),
(8, 1, 'Et quia laboriosam eaque ducimus aut.', 'et-quia-laboriosam-eaque-ducimus-aut', NULL, 'Iure voluptatibus quaerat voluptatem sit quas. Non deleniti temporibus omnis sint sapiente totam recusandae asperiores. Ratione sunt veritatis culpa sint omnis deserunt tempore. Omnis consequatur numquam non deleniti. Corporis amet cupiditate ut quasi rerum.', 'Aliquid ullam neque quis fugiat hic necessitatibus quia deleniti. Vel qui ad ipsum hic quo libero molestiae fugit. Dolor earum aperiam ducimus eos aut qui. Culpa placeat distinctio blanditiis voluptatem est doloremque.\nIste laboriosam voluptates debitis magnam qui aut. Id omnis vel et nobis quis quis ea. Fuga iste id cumque. Qui praesentium autem provident aliquam earum provident.\nMinus aut dolor placeat sed et laboriosam aperiam at. Magnam officiis et quia quia omnis labore. Id odit repellat tempore itaque aut deleniti.\nQuam eius tempore dolorum tempora quam odio quia. Consequatur in qui blanditiis aperiam dolorum. Excepturi illum cumque et autem.\nQuia cupiditate molestias dolores suscipit totam porro vel. Et in cupiditate quos sapiente reiciendis. Quidem quo asperiores ipsa itaque voluptatum accusamus sit. Laudantium tempora est eius molestiae odit dolorum.', 3, 0, 0, '2017-12-13 11:17:22', '2017-12-13 11:17:26', NULL),
(9, 1, 'At et et id hic enim.', 'at-et-et-id-hic-enim', NULL, 'Facere sequi est aut distinctio. Vitae dolor minus libero nulla quis. Et laboriosam blanditiis laboriosam ea omnis itaque voluptatem.', 'Magni exercitationem sapiente eveniet velit ut vitae iste. Unde et non dignissimos maxime. Mollitia fuga placeat rem natus.\nVel placeat sed possimus voluptatum ut repellendus. Delectus quis rem voluptatem magnam doloremque. Debitis officiis et ea rerum quisquam aut ipsa.\nCum et ea enim et consectetur totam molestiae. Et quo saepe quia vel. Qui aliquid dolores rerum necessitatibus consectetur voluptatem debitis.\nMaiores voluptate veritatis dolor culpa nulla. Nostrum odit vitae quod iusto illo illum. Voluptatum libero recusandae quia.\nVel est cupiditate voluptatum vel qui quas aut. Deleniti illum aut ea consequatur facilis. Amet natus aliquid illo tempora. Magni natus iste praesentium corporis facere et sint voluptas.\nDolor dolores excepturi dolorum accusantium libero. Voluptate molestiae omnis architecto alias repudiandae dolorem ad. Illo porro soluta fugiat tempore sit non nemo. Aut aut quo corrupti aut.', 2, 0, 1, '2017-12-13 11:17:22', '2017-12-13 11:17:26', NULL),
(10, 1, 'Et optio et quo et et.', 'et-optio-et-quo-et-et', NULL, 'Esse omnis facere praesentium adipisci. Esse molestiae eos culpa reiciendis. Velit debitis dolorum consequatur vel voluptatibus. Maxime quia qui tenetur soluta.', 'Consectetur dolor non dolore et alias consequatur fugit. Et cumque quis officiis culpa consequatur consequatur quasi. Odit magnam ut qui inventore est.\nQuidem voluptas blanditiis et velit omnis. Accusantium magnam sunt ut sed eos id. Id eius dolorum ullam et totam. Ut quod voluptas amet.\nNesciunt velit et sapiente accusantium eos incidunt perferendis. Voluptas ea cumque error cupiditate temporibus quidem voluptatum.\nEum impedit dignissimos soluta nobis velit consequatur. Soluta aliquid nobis delectus et eos minima. Tenetur praesentium dolor veniam sed molestiae tempore. Non consectetur aperiam aut velit eum voluptates.\nIn eligendi saepe sequi eligendi soluta voluptatibus. Nostrum doloribus voluptatem dolorem.\nAsperiores est incidunt maxime. Dicta autem labore reprehenderit quia aliquid voluptas voluptas. Tempore molestiae expedita minus architecto ipsa. Qui animi qui labore magnam autem vel et.', 5, 0, 0, '2017-12-13 11:17:22', '2017-12-13 11:17:26', NULL),
(11, 2, 'Autem hic rerum id et a animi.', 'autem-hic-rerum-id-et-a-animi', NULL, 'Amet optio et et eius. Atque accusantium corrupti accusamus dolores eligendi tenetur quam. Tempore error ut consequuntur magnam ut.', 'Et repellendus hic voluptas deserunt eum. Voluptatem et pariatur labore quia deserunt explicabo.\nEst nihil nobis unde maiores aliquam itaque. Id est praesentium facilis maxime aliquid dolorem magni. Quo aut vitae sunt et consequuntur temporibus assumenda perferendis. Neque esse voluptate doloremque velit vel. Mollitia aut aut deserunt voluptatem.\nIure et quisquam ea non ullam et. Nihil nobis earum est similique. Quam nam et eveniet.\nAmet repellat ullam consectetur. Dignissimos rem delectus rerum voluptatem est. Temporibus et minus perspiciatis nostrum aperiam. Perferendis ipsa et qui hic. Et iure voluptas provident vel maiores.\nOfficiis sint sed aut quis. Molestiae sit dolorem doloremque ducimus. Et nemo culpa adipisci tenetur. Qui ut est dignissimos. Aut sit voluptatum enim quisquam excepturi rerum consequatur.', 8, 1, 0, '2017-12-13 11:17:26', '2017-12-13 11:17:30', NULL),
(12, 2, 'Quia consequatur animi eum adipisci facilis.', 'quia-consequatur-animi-eum-adipisci-facilis', NULL, 'Maiores ex illum ut facere. Officia ea illo quo rerum eveniet nostrum. Odit quo voluptate vero fuga.', 'Repudiandae doloribus consectetur quo sunt at. Delectus qui ad non omnis. Corporis et autem ipsa facere iure non beatae.\nIpsum odit aut qui odit velit. Qui fugit sed ut. Alias laudantium et eos et et perferendis. Sequi dolorem deleniti assumenda vitae dolor aspernatur. Ut et molestiae excepturi hic cupiditate consequatur voluptas qui.\nPorro animi incidunt qui ut. Velit molestiae at sit. Earum laborum incidunt magni consequuntur sit. Ea perspiciatis qui sit optio placeat eos et nemo. Expedita delectus commodi culpa rerum odit possimus veritatis.\nDolorem dicta praesentium quasi expedita culpa aliquam veniam. Eum necessitatibus molestiae rerum assumenda. Voluptatem magnam praesentium dolores eum eos tempora reprehenderit.\nPossimus tenetur ut non ut. Neque qui debitis voluptatibus et harum. Et rem ut id aperiam excepturi. Quidem quidem id quod aut aspernatur voluptatem vel.', 9, 1, 1, '2017-12-13 11:17:26', '2017-12-13 11:17:30', NULL),
(13, 2, 'Est iusto odio dolorem perspiciatis.', 'est-iusto-odio-dolorem-perspiciatis', NULL, 'Culpa vel sapiente natus atque eligendi. Omnis nesciunt voluptatem magni molestias consequatur quis debitis ut. Mollitia explicabo magni sunt numquam cupiditate tenetur.', 'Quod quae iusto occaecati voluptates iure quae iure illum. Sed fugiat molestias officia accusantium. Pariatur consectetur illum qui inventore odit. Quia amet blanditiis corporis qui molestias.\nMinus officia vitae dolores consequatur vel asperiores numquam. Numquam rem quisquam quis exercitationem nihil ea voluptas rerum. Rerum consequuntur sed inventore ipsum.\nSequi totam nisi provident id delectus explicabo quidem. Accusantium rerum saepe consectetur magnam non cum et. Atque illo quos incidunt. Qui quaerat sit et sequi.\nEst voluptate deserunt itaque qui libero. Aspernatur alias repellendus natus voluptas eum voluptatem. Numquam est voluptas ad similique et doloribus.\nEt a qui hic. Ullam deserunt aut consequatur laudantium accusantium molestias nihil.\nEx reprehenderit nisi debitis. Soluta aliquid nisi dignissimos est.', 3, 1, 1, '2017-12-13 11:17:26', '2017-12-13 11:17:30', NULL),
(14, 2, 'Dolorem asperiores ut earum vero.', 'dolorem-asperiores-ut-earum-vero', NULL, 'Aut inventore enim debitis beatae. Rerum laudantium quo repellendus et. Aut fuga blanditiis voluptatem deleniti et voluptatibus.', 'Consequatur commodi porro atque nostrum. Non ipsa quo perferendis nisi ab. Ipsam delectus sint voluptates corporis consequatur suscipit distinctio. Consequatur consequuntur vitae et.\nDoloremque perferendis ducimus assumenda dolorem. Totam eum et minima nihil. Labore temporibus occaecati enim voluptatem. Eos harum inventore voluptatem incidunt sed cumque sequi omnis.\nNihil blanditiis quidem magni accusantium eaque fuga. Cupiditate qui est voluptatem. Qui fuga qui molestias ut sequi voluptas sunt. Ad voluptas ipsum ipsam earum rerum. Commodi accusantium velit et velit aliquam nemo ut.\nQuam perspiciatis provident blanditiis. Omnis dignissimos eveniet est aut ratione. Quisquam dolorem et expedita doloribus sed. Molestiae veniam laborum aut enim.\nAspernatur inventore ullam aut asperiores. Delectus et vero explicabo rerum. Velit placeat repellat est maxime libero harum ducimus.', 9, 1, 1, '2017-12-13 11:17:26', '2017-12-13 11:17:30', NULL),
(15, 2, 'Recusandae sunt et reprehenderit vel dicta.', 'recusandae-sunt-et-reprehenderit-vel-dicta', NULL, 'Vel hic nihil similique quisquam sint. Est amet autem et eveniet aut enim dolores. Porro ea enim voluptatem vero. Qui maxime esse reiciendis eos aliquid.', 'Eveniet non officia voluptas dolorem qui. Exercitationem inventore doloremque debitis deserunt sed et et et. Qui voluptas fugiat consequatur aut ex. Minima et consectetur aut cupiditate neque nam minima voluptatem.\nNumquam repellat voluptas et sit nulla ullam deserunt. Aut illo totam est officiis vitae magni voluptatem illo. Vitae fugit id nobis quo autem fugiat placeat ut. Omnis recusandae perferendis ut.\nQuia sed rerum rerum officia. Eius recusandae reprehenderit fugit iusto totam aut. Aut eos unde vel.\nA asperiores ut magni earum tenetur amet blanditiis. Veritatis quae porro delectus labore atque. Nihil ipsum necessitatibus quisquam molestiae animi minima. Reprehenderit non consequatur minus voluptatum unde et enim.\nEt modi recusandae ut. Non officiis occaecati veniam quia. Facilis quos deserunt ipsa beatae. Assumenda esse placeat earum necessitatibus similique aut dolorem.\nAmet consectetur labore delectus animi delectus vitae. Exercitationem aut ullam qui odit rerum.', 6, 0, 0, '2017-12-13 11:17:27', '2017-12-13 11:17:30', NULL),
(16, 2, 'Quo aut nemo est officia ut.', 'quo-aut-nemo-est-officia-ut', NULL, 'Dolores quasi dicta debitis voluptatem nisi qui aspernatur. Rerum sint ea velit officiis. Iure deserunt ea necessitatibus rerum sint. Fugiat nobis rem eaque dolores inventore sunt at.', 'Quia odio tempore cum rerum ullam. Et eum ipsa iure nam. Quia ut recusandae dolores laboriosam.\nDolor quod facilis voluptas itaque explicabo omnis quidem. Et aliquam illo et eligendi doloremque ipsum iste. Aut quia blanditiis id corrupti labore. Rerum possimus qui velit.\nEst sit natus sint vitae cupiditate veritatis rem. In quos neque impedit omnis. At maxime facere odit non est aspernatur maiores.\nNeque tempore officiis aliquam. Quod laboriosam cum ut laudantium rem dolorem veniam. Corporis officiis voluptatem et beatae expedita fugit ducimus voluptas.\nEt reiciendis et officia dolor voluptatem animi. Maiores omnis minima qui et occaecati. Quam aut nobis et aut atque est.\nRerum voluptatem qui aliquam exercitationem velit assumenda dolorem. Repudiandae asperiores accusantium aspernatur suscipit. Eveniet distinctio ex atque sit sapiente voluptatem voluptas.', 8, 0, 1, '2017-12-13 11:17:27', '2017-12-13 11:17:30', NULL),
(17, 2, 'Qui voluptatem et culpa sunt dolorum impedit.', 'qui-voluptatem-et-culpa-sunt-dolorum-impedit', NULL, 'Debitis quia aut in suscipit. Omnis eveniet dolores qui accusamus. Doloribus corporis voluptatem voluptatem dolore aut soluta.', 'Ut qui illum iusto nostrum. Minima quos inventore minima qui asperiores. Voluptatem beatae ut nisi necessitatibus esse minus.\nEligendi dolores quibusdam voluptas velit impedit officiis tempore incidunt. Quo in minima odio voluptatum. Sunt perferendis iusto perferendis repellendus voluptatem reiciendis deserunt. Sit culpa dolor est voluptates quos nisi. Dolorem quo ut non non.\nEnim facilis optio non repellat minus. Tenetur aliquid ab quibusdam quidem ut nostrum quasi. Sit reprehenderit corrupti autem officiis est. Et assumenda unde et vero aut laborum quo.\nAdipisci repellendus saepe accusantium voluptatem qui consequatur velit. Ut fugit tempora nihil quidem in ad. Et ut autem et facere maxime.\nAliquam est quasi doloremque illo in vel. Ut quaerat ut architecto omnis totam.\nMolestiae et occaecati quasi consequuntur earum dolorem est. Sunt est voluptatem tenetur labore incidunt. Voluptatem et laborum rerum sint ipsa.', 4, 0, 0, '2017-12-13 11:17:27', '2017-12-13 11:17:31', NULL),
(18, 2, 'Qui veniam quod occaecati tempora animi.', 'qui-veniam-quod-occaecati-tempora-animi', NULL, 'Nostrum voluptas beatae doloribus minima ut repellendus. Autem ratione esse et possimus in aspernatur repellendus. Saepe et officiis dicta voluptatem asperiores qui.', 'Excepturi id ipsum velit. Qui et nihil dicta dolore molestias. Molestiae veniam nostrum natus quam aut. Est deserunt debitis id quis sit dolor.\nUt earum aperiam laborum ut voluptates ad laborum. Rerum adipisci dolorum ut ut dolor illo quaerat. Est ut aut iusto eveniet sed quam.\nLabore laborum est dolores eligendi ea consectetur. Ut nostrum quidem eos et hic voluptates sit corporis. Natus cum ut provident reprehenderit voluptatum unde est voluptas.\nAd hic qui perferendis beatae hic aperiam doloribus. Et omnis rerum consequuntur sit sed velit. Neque hic ut hic odit qui impedit minus.\nIllo voluptates occaecati nesciunt tempore nulla vel. Omnis quo earum earum et rerum aliquam. Illum enim enim aut illum soluta.\nAspernatur ea quibusdam et qui hic. Corrupti suscipit facere omnis dolores accusamus. Minus quo explicabo beatae porro. Eveniet suscipit ea porro debitis.', 9, 0, 1, '2017-12-13 11:17:27', '2017-12-13 11:17:31', NULL),
(19, 2, 'Aut dolorum voluptates iusto ut.', 'aut-dolorum-voluptates-iusto-ut', NULL, 'Et et quia maxime nemo rerum rerum. Est ut minus id quo. Velit eveniet voluptas dicta et. Voluptas exercitationem sapiente ut dolor possimus quo. Amet magnam quaerat velit dolor iusto eos error.', 'Voluptatem deleniti autem excepturi esse et deleniti accusantium. Animi nam voluptatum nobis praesentium odit repellat temporibus. Fugiat iusto consectetur cum repellat voluptatibus nostrum quasi deleniti. Dolorum dolores qui ut quia.\nEa veritatis error reiciendis a veniam rem et. Facilis vel placeat eius ut nesciunt et id dignissimos.\nBlanditiis est aperiam qui explicabo. Dolores tenetur velit alias blanditiis temporibus. Quam quod quos officia molestiae quia et aut.\nEveniet commodi odit atque. Aut quae quia et architecto dolor. Fugit et aperiam cupiditate necessitatibus necessitatibus dignissimos. Quo voluptas tempore tempore adipisci distinctio repellat.\nVero accusantium nam aut illo iste ab voluptas. Velit velit consequatur vel est architecto suscipit. Aut officia dolore praesentium temporibus non inventore dolore.\nDolores nesciunt nesciunt quam delectus occaecati esse sunt corporis. Provident sint vel dolorem modi dolore. Aspernatur laborum repellendus et.', 1, 0, 1, '2017-12-13 11:17:27', '2017-12-13 11:17:31', NULL),
(20, 2, 'Quia illum quia debitis facere eos.', 'quia-illum-quia-debitis-facere-eos', NULL, 'Iusto debitis reprehenderit vel voluptatem. Laudantium enim esse omnis voluptatibus ea illo necessitatibus.', 'Et autem voluptas voluptatibus aperiam est consequatur possimus explicabo. Perspiciatis ea iusto voluptatem sed a aut enim. Iusto pariatur delectus dolorum ut porro.\nQuas nobis aut labore ea. Adipisci vel itaque aperiam omnis iste voluptas quas consequuntur. Rerum et et perspiciatis quis. Quo unde earum culpa omnis eos.\nQuia nulla omnis quaerat minima saepe numquam doloremque aperiam. Aspernatur sint quaerat nostrum voluptatem harum accusamus. Necessitatibus ea harum voluptatibus. Laudantium numquam ipsa accusantium facere id.\nVoluptatem dignissimos unde molestiae ullam aut. Eum rerum eveniet est possimus aperiam hic laborum. Et tempora cumque alias aut.\nQuae debitis modi qui qui id deserunt sed. Magnam quis nisi qui non. Quam sequi sit veniam dolorum iste doloremque.\nEt quibusdam eos suscipit eum est cum nulla est. Consequuntur libero commodi rerum eum ut deleniti. Fugiat quis numquam reprehenderit architecto quo et. Quos non iusto qui neque.', 9, 1, 0, '2017-12-13 11:17:27', '2017-12-13 11:17:31', NULL),
(21, 3, 'Dicta illo blanditiis sit quidem.', 'dicta-illo-blanditiis-sit-quidem', NULL, 'Non non repudiandae eum. Qui molestias occaecati enim quam quo laudantium quia. Molestiae pariatur atque ut quas ut et nihil repellat. Earum qui dolorem eius sequi deserunt consequatur nesciunt veritatis.', 'Explicabo voluptas similique et quia et omnis officiis consequuntur. Fugit architecto id labore quo voluptatem. Itaque quia sit voluptatum maxime placeat atque.\nVoluptatem eum sequi aut voluptatem perspiciatis impedit. Praesentium accusamus repudiandae assumenda quisquam laborum voluptatem quo reprehenderit. Dolor velit ut recusandae nihil porro velit et.\nVoluptatibus consequatur omnis enim debitis dolore quos doloremque. Blanditiis ipsum est in sit. Eum sed qui est et.\nHarum et quis eius corporis molestiae fuga. Molestiae aliquid blanditiis blanditiis. Quibusdam est quibusdam quisquam animi. Debitis enim ut architecto soluta enim cum.\nAssumenda quisquam corporis distinctio ut. Quae et esse dolorum hic rerum.\nNesciunt ad et maiores voluptas quasi. Esse similique dolor tenetur doloribus vero fuga. Nam sunt inventore sed odit.\nQuis ut cupiditate eum ipsum. Soluta et est numquam hic ut alias. Placeat qui nemo est voluptatem.', 2, 1, 1, '2017-12-13 11:17:31', '2017-12-13 11:17:33', NULL),
(22, 3, 'Consequuntur est aut dolorem laboriosam sit.', 'consequuntur-est-aut-dolorem-laboriosam-sit', NULL, 'Sed voluptatem quam nihil est exercitationem. Atque itaque dolorem eaque est quia. Dolorem dolorem aut ex aperiam quidem assumenda voluptatem.', 'Consequatur aut nisi nesciunt possimus corrupti accusantium vel. Non commodi eius ad aut quis aut. Numquam illum necessitatibus omnis voluptas voluptatem. Possimus architecto cum laboriosam sint sit dolorum expedita.\nEst cumque dolor non aut quae. Inventore et ut alias et sequi nam. Similique aperiam nobis esse incidunt possimus.\nVoluptatem et optio aspernatur hic quia praesentium. Recusandae ullam et fugit explicabo. Delectus quae sunt eum iusto nesciunt inventore culpa.\nFacilis dolor autem laborum porro minima corrupti. Rem et sed architecto veritatis. Repellat vel omnis enim aspernatur sint molestias. Nam tempore error amet voluptas nesciunt.\nQuisquam autem ipsa accusantium consequuntur sunt delectus a. Et inventore perferendis expedita. Voluptates tempore itaque reprehenderit quos in consequatur in. A facere non deserunt et officiis.\nUt consequatur quod veniam. Dolorum ducimus quam et officiis non ut perspiciatis. Libero ut sed illum voluptatem eligendi doloremque.', 1, 0, 0, '2017-12-13 11:17:31', '2017-12-13 11:17:34', NULL),
(23, 3, 'Consequatur dolorum culpa at eveniet amet.', 'consequatur-dolorum-culpa-at-eveniet-amet', NULL, 'Similique rem vel rerum sunt. Nulla quaerat praesentium vero rerum. Omnis aut esse nisi impedit sit dolores. Ea non aliquid corporis praesentium temporibus tempore assumenda.', 'Beatae neque aut et provident nulla inventore consequatur. Tempora quos sunt libero consequatur aut vel. Et nihil cum doloremque vel exercitationem quisquam dolor.\nDoloremque ut doloremque inventore recusandae exercitationem beatae minus. Necessitatibus odio itaque eum. Veritatis modi dolores soluta nam facilis cum. Magni itaque numquam sapiente.\nAut odit molestiae sed accusantium qui dignissimos sunt. Laudantium eaque libero blanditiis. Ab voluptatem et perferendis recusandae eius beatae atque.\nVel exercitationem aliquam ut doloremque numquam amet ipsam. Optio voluptates atque qui occaecati omnis similique aut. Dolore assumenda itaque dolor distinctio. Quia adipisci est blanditiis quibusdam autem.\nNecessitatibus quos voluptate quidem quisquam veritatis. Deleniti et tempora et vero in explicabo ullam amet. Quisquam nesciunt rerum neque porro consequuntur est. In omnis sapiente assumenda quasi unde velit.', 4, 1, 0, '2017-12-13 11:17:31', '2017-12-13 11:17:34', NULL),
(24, 3, 'Illum maxime consequatur tempore expedita.', 'illum-maxime-consequatur-tempore-expedita', NULL, 'Est dicta debitis voluptatem autem numquam aspernatur. Soluta aliquam harum quisquam esse nesciunt reprehenderit. Porro perferendis praesentium officiis debitis quia labore id. Aperiam nostrum accusamus reiciendis et maxime.', 'Non in aspernatur adipisci qui labore. Ratione laborum perferendis dolorem animi iure sed. Quos quos quam est autem.\nNostrum consequatur reprehenderit ut libero voluptatem. Minima quo sed sequi.\nOdit explicabo nihil ut harum. Libero laborum est id. Voluptas sed dolore expedita dolores sit recusandae. Et consectetur consequatur sit tenetur eius. Eius quae officiis commodi.\nDistinctio voluptas consequatur sed. Suscipit quo officiis est mollitia. Consectetur a perspiciatis quod maiores sed explicabo qui.\nQui eum autem quae laudantium quia. Quasi quia consequatur provident animi nobis.\nId autem molestiae fuga aut reiciendis. Fugit aut officia eum earum eveniet. Optio molestiae nisi magni. Sit consectetur voluptatem est sapiente atque tempora repellendus quos.\nAut reiciendis veritatis dolorum tempora. A id tempora laborum enim consequatur. Rerum minus est veritatis quasi laborum deserunt. Illum temporibus ea vero quia exercitationem consequuntur.', 5, 1, 1, '2017-12-13 11:17:31', '2017-12-13 11:17:34', NULL),
(25, 3, 'Quia et asperiores autem soluta.', 'quia-et-asperiores-autem-soluta', NULL, 'Sed aliquam ullam maxime illo vel in quo et. Consequatur enim cum illum quia dignissimos. Est incidunt occaecati qui maxime molestiae rem. Quasi numquam magni sed et recusandae est ipsum. Aliquid iusto ea illum placeat.', 'Beatae velit eligendi dolores ipsum porro aut. Similique aut non amet ab quia delectus cupiditate. Ut vitae aut aut ratione qui voluptatum nesciunt. Natus a atque dolores maiores. Dolores iusto qui provident ad ut repellendus consequatur.\nA facere magnam ipsum delectus molestiae voluptate non. Molestiae est animi vitae provident. Magnam et consectetur expedita aliquid doloremque in magnam dolore.\nEarum et accusamus dolores ipsum. In et est voluptatem. Rerum quod et quas eum nobis officia nobis.\nItaque aliquam temporibus blanditiis quis ipsa reiciendis et totam. Facilis assumenda ullam odio et ipsa velit iste. In aliquid aut quisquam quis labore reiciendis et. Velit qui error et ut omnis.\nEt ab et et accusamus nemo delectus voluptates illo. Iste perferendis architecto non illum quisquam ducimus. Fuga sit est odio laborum dolores nobis voluptatum. Alias repellendus sit vitae sint et sequi ipsam.', 3, 1, 1, '2017-12-13 11:17:31', '2017-12-13 11:17:34', NULL),
(26, 3, 'Repellendus alias et ut aperiam cum mollitia.', 'repellendus-alias-et-ut-aperiam-cum-mollitia', NULL, 'Dolor numquam placeat fugiat ipsum. Qui sed illum porro suscipit laboriosam dolor fugit. Rerum perspiciatis molestiae soluta rem magnam ex. Ea animi hic consequuntur et.', 'Assumenda qui at asperiores asperiores. Totam enim cum in autem et veritatis aperiam. Veritatis nulla et deserunt atque rerum.\nPraesentium harum aut exercitationem recusandae nisi. Et rem praesentium quam nemo similique molestias. Et omnis velit sit qui necessitatibus.\nEnim non reiciendis ut vitae enim et qui autem. Qui quisquam quo ut non. Et tempora dolores iure quod libero. Possimus quasi consequatur soluta a officiis eos.\nError autem et voluptatem soluta dolorem qui tempore mollitia. Beatae nihil consequatur rerum recusandae omnis est. Eveniet est id nemo repellat inventore est.\nVoluptate fugiat est aperiam ad ut deleniti. Exercitationem qui qui rem ab voluptatem nisi assumenda. Ut voluptatem voluptas non cumque ut sed quia.\nTemporibus voluptas et suscipit dolorum. Est et voluptas excepturi necessitatibus modi blanditiis ipsa. Voluptatibus quisquam iusto possimus autem exercitationem voluptatibus maiores. Necessitatibus cupiditate adipisci laudantium quidem.', 10, 1, 0, '2017-12-13 11:17:32', '2017-12-13 11:17:34', NULL),
(27, 3, 'Deserunt enim ea est sit aut.', 'deserunt-enim-ea-est-sit-aut', NULL, 'Pariatur harum eligendi maiores distinctio. Nulla vitae quia explicabo sed. Id impedit mollitia iste aut nobis vel.', 'Necessitatibus sit id et ipsum maxime. At est harum rerum molestiae. Perspiciatis qui sit quis saepe est reiciendis voluptatem.\nEt quo officiis quam laborum consequatur. Velit placeat sit ipsum eos fugit rem quibusdam. Ipsa qui fugit ut et libero mollitia.\nProvident qui qui perspiciatis. Optio nihil sed sint deserunt ipsam odit. Totam expedita deserunt sunt deleniti asperiores quam exercitationem.\nEt facere nulla veritatis. In excepturi rem perferendis fuga eveniet. Aut aspernatur aperiam aut. Numquam voluptas perferendis sint harum placeat amet iure. Voluptas consequatur qui dolores facilis.\nQui in ducimus vero debitis. Enim ducimus et magni aut corrupti. Dolore dolor ut autem voluptates aspernatur perspiciatis. Saepe omnis et et earum incidunt iste.\nNon velit eos perspiciatis officia similique. Aperiam aperiam corrupti ut cupiditate eaque nemo eius.', 6, 0, 0, '2017-12-13 11:17:32', '2017-12-13 11:17:34', NULL),
(28, 3, 'Facilis eos voluptatem sequi et aut modi.', 'facilis-eos-voluptatem-sequi-et-aut-modi', NULL, 'Sequi eveniet rem nobis eaque necessitatibus non rerum. Ex sequi perferendis ipsum qui aut ipsa sint sit. Doloribus praesentium pariatur veniam in nesciunt veniam. In est voluptas inventore veniam. Rem sit harum aspernatur sed sequi.', 'Est quia vitae animi distinctio praesentium dolores praesentium occaecati. Porro sit ipsa placeat enim dolor ea reiciendis. Ea dignissimos molestiae voluptatem eaque totam minima.\nQuo totam repudiandae non et fuga et. Architecto est impedit laborum ut illum ut magni. Eum non eos ea consequatur.\nIn a natus nam. Sit modi debitis aut odit. Numquam id et qui. Id ipsa ducimus non optio.\nEos rerum a vel sit harum beatae consequatur ipsa. Nesciunt et doloribus illo doloremque a neque non. Aut autem ut voluptatibus reiciendis quasi. Quia ut ipsa consectetur numquam eius assumenda.\nSoluta autem qui id. Nobis voluptatem non blanditiis et magni. Ullam et rerum autem qui quod.\nNecessitatibus mollitia totam non autem provident. Dolores distinctio accusantium magnam quia aliquid rerum id ratione. Ipsum nihil quos eveniet iusto officiis veritatis. Possimus ea ea rerum assumenda amet explicabo.', 10, 1, 1, '2017-12-13 11:17:32', '2017-12-13 11:17:34', NULL),
(29, 3, 'Et molestiae quam sit nihil et labore.', 'et-molestiae-quam-sit-nihil-et-labore', NULL, 'Et dicta cupiditate consequatur sapiente. Est soluta quis quos aut. Est vero sed nostrum quisquam tempore neque veritatis. Illum et totam sed fugiat. Totam omnis accusantium ut nulla laudantium ex placeat.', 'Est repellat voluptate repellendus sit. In aut corporis similique et qui. Architecto iusto rerum odit cupiditate quae qui.\nRepudiandae accusantium quia voluptatem provident repudiandae sit. Neque dolores et iure atque magnam. Consequatur aliquam ipsa non sequi quos tempore unde. Nulla voluptatem impedit voluptas nihil.\nQuia dolor eos iste atque. Aut repellendus aut quis.\nExpedita vel fugit odio commodi voluptas aut ullam. Aut et enim mollitia sequi qui omnis eum. Itaque aut consectetur nobis molestiae asperiores magnam. Vel enim eum laudantium iusto.\nMollitia pariatur sit distinctio debitis voluptatem similique eos. Libero doloribus voluptas architecto sit. Blanditiis consequatur incidunt quaerat rem consectetur animi.\nDeleniti mollitia ex enim nesciunt sint. Molestias harum tempora inventore in officiis nobis reiciendis. Alias ut accusantium temporibus perferendis. Vitae unde sed veniam sunt explicabo et.', 1, 1, 0, '2017-12-13 11:17:32', '2017-12-13 11:17:34', NULL),
(30, 3, 'Voluptates rerum provident minus est culpa sint.', 'voluptates-rerum-provident-minus-est-culpa-sint', NULL, 'Recusandae et qui sit. Voluptatum distinctio voluptates nemo iusto aut libero consequatur. Autem porro rerum quidem ab deserunt. Ab laboriosam ipsam animi ut et voluptatem et.', 'Ipsa ut rerum sapiente non nobis quisquam est ad. Maiores eligendi expedita beatae porro molestias voluptates harum optio. Velit quo eos ducimus illum sint quis quod.\nEst accusantium qui consequatur architecto minima voluptatem. Et quisquam ipsa amet soluta reiciendis totam est. Officiis omnis sed quia sit enim dolores voluptatum. Cum placeat in in itaque facilis assumenda et.\nIllo animi eveniet quas in a porro. Corporis debitis adipisci facere illo qui. Adipisci perferendis enim nihil corporis est. Eum asperiores totam qui sint.\nDebitis rerum consequatur magni labore porro nihil provident. Aut aut explicabo non consequuntur. Alias rem non et illo voluptatibus quae. Et cumque dolor itaque.\nQui voluptas et deserunt labore. Quibusdam exercitationem placeat itaque est id vitae. Ad velit voluptatem dolores quaerat quas est. Et rerum repellat aut sed ea cum similique.', 8, 0, 1, '2017-12-13 11:17:32', '2017-12-13 11:17:34', NULL),
(31, 4, 'Eum iste ipsa assumenda et et.', 'eum-iste-ipsa-assumenda-et-et', NULL, 'Minus id quis sapiente. Sit nemo perspiciatis occaecati velit corporis aspernatur omnis. Non veritatis rem accusantium doloribus. Quis eos quo qui quia corporis quia ratione.', 'Enim praesentium aut est et quis vel voluptates. Sit quis quis debitis eius. Pariatur est tenetur voluptates rem voluptate.\nNesciunt aliquam reiciendis earum aut harum ut id. Maiores nulla adipisci aut aut minus ut. Autem pariatur perspiciatis dignissimos eos. Quasi consectetur iste magnam porro suscipit et modi.\nDignissimos magnam eaque aperiam autem. Autem ducimus maxime laudantium eaque et facere aperiam. Similique quaerat optio laudantium laboriosam dolores dolores recusandae nobis.\nCupiditate consequatur maxime mollitia et quibusdam et. Perferendis optio mollitia vel sed eius consequuntur sit. Expedita velit assumenda dolorem sed ipsam sed sed. Esse dolor dolores omnis.\nOmnis aliquid beatae provident quis. Fugit nihil explicabo sequi in. Quia et pariatur sed corrupti.', 3, 1, 0, '2017-12-13 11:17:34', '2017-12-13 11:17:37', NULL),
(32, 4, 'Hic sed dolorem dolorem impedit eos.', 'hic-sed-dolorem-dolorem-impedit-eos', NULL, 'Natus non inventore possimus voluptas alias quisquam. Iste laudantium fugiat sapiente et veniam qui. Ut quaerat quos molestiae. Ab quaerat ut reiciendis dicta cupiditate.', 'Distinctio ea eum labore qui ullam accusamus alias. Id ducimus et eius illo id. Necessitatibus magnam deleniti sit blanditiis accusantium consequatur sed.\nReprehenderit minima minus rerum rerum. Accusantium mollitia cum debitis quo molestias reprehenderit et. Aliquam sunt nobis eum nihil pariatur et expedita. Mollitia commodi voluptatem repellat rerum tempore amet qui est.\nIpsam minima in perspiciatis iusto itaque et dignissimos. Nulla sit itaque facilis animi perspiciatis. Harum perferendis dolorem velit libero aperiam aut aliquid. Nihil et tenetur maxime ut id.\nReprehenderit aut officia reiciendis sed quam at. A pariatur aliquid sapiente sit rerum. Omnis ea est placeat qui ut veritatis illo. Eius ut id aliquam temporibus aut quis dolore.\nEaque qui quae et amet magnam dolore modi. Ratione amet iste neque harum id. Corporis facere ipsa eum illum quod harum consequatur.', 4, 1, 1, '2017-12-13 11:17:35', '2017-12-13 11:17:37', NULL),
(33, 4, 'Ut quos sequi quia consequatur repellat.', 'ut-quos-sequi-quia-consequatur-repellat', NULL, 'Beatae explicabo aut quia modi. Sit qui praesentium commodi est atque quo qui. Est mollitia qui quas omnis architecto consequuntur earum dolorum. Dolor facere ea blanditiis dolor consequuntur.', 'Ipsum eos iusto amet repellat non aliquam. Velit enim consectetur ut id. Maxime dolorem error qui eligendi repudiandae cumque. Repellendus rerum enim magnam mollitia quis. Blanditiis rerum consequatur est debitis.\nEt ex perspiciatis qui et. Repellat quae possimus ipsam mollitia omnis. Quo aut nisi magni autem. Corporis saepe qui itaque dolorem.\nVel et incidunt et aut aut nam voluptas. Aspernatur facilis nesciunt occaecati voluptatem quia rem. Fuga qui et assumenda tenetur quam quidem. Nemo sapiente unde accusamus odit.\nEt ut laboriosam ullam eos odio neque. Quos facilis dolor pariatur ipsam quis. Itaque molestiae in eum optio voluptate.\nAut repellat quia cum et. Voluptatem numquam enim quisquam possimus nam perspiciatis. Soluta voluptatum quia iste qui adipisci aut.', 7, 1, 0, '2017-12-13 11:17:35', '2017-12-13 11:17:37', NULL),
(34, 4, 'Illo est id porro aut error voluptatibus.', 'illo-est-id-porro-aut-error-voluptatibus', NULL, 'Quo consectetur laboriosam accusamus impedit. Autem praesentium quasi at incidunt in rem. Hic ipsam reprehenderit aliquid in placeat nisi.', 'Modi et reprehenderit at dolorem qui accusantium autem natus. Voluptates et totam cupiditate dolorem modi assumenda repellat. Est sint ducimus cum mollitia unde neque. Laboriosam optio illo itaque expedita corrupti omnis placeat.\nIure officiis rerum corporis commodi tenetur sed quia. Nulla dolorem officiis eveniet et et. Et excepturi commodi tempore placeat at quo dolore. Quia et quam eum sed cupiditate impedit. Non nulla possimus illum sed.\nVoluptas magni quidem officia non asperiores vitae ducimus. Aut consequuntur eum et est et vero. Sed dolores laboriosam et expedita. Adipisci sunt dolore atque vero qui rerum.\nInventore commodi minus laborum beatae. Aut vero consectetur sapiente nihil sed odit est. Aut id est quia est eveniet.\nEnim maiores consequuntur officia hic rem repellendus. Molestias molestias autem eaque accusamus perspiciatis. Suscipit quam esse ad nulla temporibus.', 9, 1, 1, '2017-12-13 11:17:35', '2017-12-13 11:17:37', NULL),
(35, 4, 'Soluta nisi dolor nostrum eos dicta.', 'soluta-nisi-dolor-nostrum-eos-dicta', NULL, 'Quidem deserunt et doloribus in. Blanditiis illo et est consequuntur. Saepe qui aut ut quo.', 'Quasi minima ipsam asperiores sed omnis eum. Dolores voluptate quidem cupiditate occaecati minima ab. Tempore fuga illo eveniet suscipit nulla ipsum hic.\nOmnis consequatur non laudantium cumque molestiae. Maiores aut accusamus incidunt provident cupiditate. Possimus exercitationem omnis quaerat vel exercitationem voluptatem.\nQuis qui commodi saepe ratione in. Sed omnis minima voluptate eligendi iste a. Ipsam dolorem ratione qui nihil.\nConsequatur accusamus maxime laborum quia et. Iusto et ut harum placeat vitae ad ut. Rerum et ratione molestiae quos qui maiores ut et.\nA molestias et tempore qui ipsam. Aut dolorum aut ipsa voluptas culpa in pariatur. Dolorem aut molestias quo quos laborum.\nNemo provident sequi odio ipsa et. Repellat eos consectetur qui ut similique et. Fugit et architecto ullam dolorem. Quam qui quia qui qui nesciunt et quo.', 7, 1, 1, '2017-12-13 11:17:35', '2017-12-13 11:17:37', NULL),
(36, 4, 'Est minima qui odit amet.', 'est-minima-qui-odit-amet', NULL, 'Aspernatur consequatur commodi voluptatibus quos. Quia rerum reiciendis cumque quaerat quae. Ut officiis esse numquam et qui. Odit quod repudiandae aut culpa modi tempora. Rem quasi ipsa enim nihil quos ratione velit.', 'Eos rem exercitationem atque consequuntur. Tempora iusto corrupti vitae nisi minus ut quis. Eveniet ab maxime fuga eos non et.\nUt eum aut non est debitis ut. Consequatur possimus maxime omnis autem inventore. Accusantium repudiandae consequatur enim illo. Dolorum velit pariatur maxime.\nSimilique ab qui provident velit ratione expedita quas. Doloribus reprehenderit vel reiciendis reiciendis. Exercitationem corporis et dolor voluptas laboriosam ex.\nVoluptate rerum eos omnis et quae quia. Molestiae alias omnis ut odio. Consequuntur minima qui labore.\nLaudantium in nobis explicabo cumque et sit. Natus sit fugiat et eum. Quisquam veniam non quia quia expedita dolorum. Voluptatem enim veniam aut voluptatibus rem quos.\nConsequatur ut est consequatur minima. Assumenda veniam neque et molestias earum.\nReprehenderit aut dignissimos ut modi hic. Earum aspernatur ad quia itaque quis amet sunt quisquam. Quisquam explicabo aut quas laborum.', 8, 1, 1, '2017-12-13 11:17:35', '2017-12-13 11:17:37', NULL),
(37, 4, 'Quis aut dignissimos eos quae adipisci.', 'quis-aut-dignissimos-eos-quae-adipisci', NULL, 'Et iste excepturi dolore. Autem qui dolorem porro consequatur.', 'Nisi aliquam ut deleniti. Libero harum optio accusantium quidem repellat voluptatem eveniet. Consectetur error suscipit officia enim magnam cum quo. Et cumque est officia ea et culpa.\nSit nihil ipsam aut enim. Corporis aut labore eum placeat suscipit porro. Vitae beatae earum qui omnis numquam. Veritatis quo quisquam exercitationem et animi.\nIure nesciunt placeat corporis et ut. Est deserunt harum et voluptatem ab quibusdam. Reiciendis facilis id cum commodi rerum ut. A molestias reprehenderit perspiciatis adipisci.\nQuia ut excepturi reiciendis quod. Aspernatur reprehenderit corrupti quis temporibus similique. Quam sed possimus ut magnam. Ratione quae soluta voluptate est ut.\nVoluptatem ullam modi occaecati alias assumenda neque at. At ratione quaerat animi officiis quo assumenda soluta.', 1, 0, 0, '2017-12-13 11:17:35', '2017-12-13 11:17:37', NULL),
(38, 4, 'Natus sit et et nulla laborum aperiam.', 'natus-sit-et-et-nulla-laborum-aperiam', NULL, 'Quia voluptate sed rerum aut explicabo ut autem suscipit. Nobis pariatur dolores molestiae nisi sint illo. Aut eum enim aliquam quam quo dolores. Perspiciatis velit aut eligendi commodi et error.', 'Ipsa autem quis dolores a sit. Pariatur delectus ex magni. Saepe saepe ut distinctio at ab. Omnis culpa ex exercitationem architecto quaerat.\nAd odio veniam doloribus aut quia asperiores ab. Ea maxime veritatis est qui ut. Quidem qui et nihil non laborum. Tempore ea rerum ea ut cumque.\nEx autem magni soluta laudantium hic ipsum. Nihil et illo eveniet eveniet consequatur.\nDoloremque laborum quam aut voluptas et. Cumque blanditiis molestiae sint tempora. Numquam ipsa molestias consequuntur sint veniam voluptatem.\nDolores reiciendis doloremque minima tenetur et optio iste. Totam sed maiores ex nihil molestias. Error sed nulla at rem aut molestiae quod. Sint tempore molestiae numquam ducimus fuga vitae et omnis.\nVoluptate numquam impedit id repellendus dolorum suscipit unde. Quis sunt non rerum error illum aut quod. Necessitatibus sequi dolorum eos voluptatibus tempora rerum et. Possimus et temporibus laboriosam molestiae facere.', 2, 0, 0, '2017-12-13 11:17:35', '2017-12-13 11:17:38', NULL),
(39, 4, 'Eveniet id nesciunt quisquam cumque et.', 'eveniet-id-nesciunt-quisquam-cumque-et', NULL, 'Sapiente quo unde accusantium repellat. Omnis occaecati placeat occaecati corrupti optio itaque commodi. Neque atque repudiandae amet illo repellendus non. Voluptatem tenetur aut vitae enim ea.', 'Quos perferendis porro voluptatem voluptate reprehenderit. Voluptatum adipisci enim culpa aspernatur amet. Et id deserunt natus unde.\nOmnis aut ut commodi ea accusantium. Porro qui perferendis voluptatum laborum commodi.\nMagni sint repellendus ducimus et et velit expedita. Non voluptate voluptatum quia blanditiis quia. Id rerum qui voluptate error. Adipisci libero reiciendis exercitationem sit laborum doloremque enim.\nQuibusdam quos aperiam praesentium similique. Ut veritatis illo et et quo labore.\nRecusandae similique eum labore non qui illo. Odit non iste magni autem asperiores magni sequi. Praesentium dolorum magnam dignissimos voluptates aut.\nVelit voluptas neque quia nulla commodi. Voluptatem dignissimos expedita voluptatibus soluta perferendis id. Illum doloremque nam voluptate. Consequatur velit natus et.\nEt facere et ex non quod. Ad qui tempora ducimus dicta voluptas rerum corporis. Ullam ut nisi quo quae perspiciatis perferendis et. Quasi exercitationem ut quidem minima.', 2, 1, 1, '2017-12-13 11:17:35', '2017-12-13 11:17:38', NULL),
(40, 4, 'Impedit porro quaerat vero repellendus commodi.', 'impedit-porro-quaerat-vero-repellendus-commodi', NULL, 'Sit est accusamus consequuntur laudantium in similique eos ut. Nobis voluptate aut iste velit illum. Quidem est cum qui rerum ut nam quam.', 'Enim quia officia iusto sunt. Saepe fugiat quia non ut ut quae. Quo dolor dolorem nesciunt voluptates cumque id.\nAperiam ut molestias quod. Quod nisi molestias expedita non. Asperiores sit id et voluptatem nihil.\nQuo quidem enim fugit iusto. Sit laboriosam velit consequuntur praesentium distinctio dolor quia. In impedit molestiae architecto reprehenderit. Pariatur adipisci molestiae accusamus nostrum. Beatae adipisci sunt consequatur itaque reprehenderit iste laudantium.\nEt voluptate rerum veritatis itaque maxime praesentium eveniet. Rem quis reiciendis autem nulla. Saepe fuga est repudiandae doloribus at.\nIncidunt aut laboriosam est quos non quisquam. Alias iusto labore sapiente illum architecto. Quo autem animi eligendi sint quasi. Quo vero itaque libero enim voluptatum dolores totam consequatur.\nNon asperiores dolores est reiciendis sed ipsam. Alias natus dolorum libero. Qui ut aperiam voluptates voluptatibus.', 5, 0, 0, '2017-12-13 11:17:35', '2017-12-13 11:17:38', NULL);
INSERT INTO `lessons` (`id`, `course_id`, `title`, `slug`, `lesson_image`, `short_text`, `full_text`, `position`, `free_lesson`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, 5, 'Autem est expedita amet voluptatem.', 'autem-est-expedita-amet-voluptatem', NULL, 'Aut quo nihil est. Aliquam cum nesciunt consequuntur eligendi voluptates.', 'Nam eum dolorem fugiat qui dolor ut et. Vero at eum dolor. Mollitia quia vero velit explicabo sit ab.\nLaudantium facere dolores sunt hic qui. Sit veritatis cum nihil incidunt neque magnam eum. Sit sit qui et voluptates.\nCulpa totam nam tempore saepe deserunt voluptate. Labore aut exercitationem facilis et itaque. Sed vel architecto nihil.\nNemo est aliquid cupiditate eligendi quis. Fugiat qui et vel. Quidem enim eos tempora impedit amet aut totam.\nSed quidem dignissimos cumque architecto adipisci harum repudiandae. Eligendi et labore odio impedit. Et doloremque aut et.\nAt exercitationem vel veniam qui quae. Doloribus delectus quam repellendus facilis. Sint cumque dicta eligendi autem deserunt et. Doloribus amet nam deserunt et ut sed illo et.\nQuis nihil consequatur temporibus ipsam minima. Id ipsa corporis occaecati. Nam incidunt quod magnam illum.', 10, 0, 1, '2017-12-13 11:17:38', '2017-12-13 11:17:42', NULL),
(42, 5, 'Ipsam ducimus earum exercitationem ut non.', 'ipsam-ducimus-earum-exercitationem-ut-non', NULL, 'Ad excepturi labore repudiandae ea sed quia. Nihil odio aperiam laudantium sint quasi placeat omnis sapiente. Nihil minima omnis nisi quaerat at tempora vel. Voluptatem molestiae est vero fugiat.', 'Dolorem sit nihil molestiae. Vel aspernatur eveniet quod voluptas asperiores modi aspernatur. Voluptatem fuga sed vel est velit aut.\nNeque ea et quia non sunt. Eos esse provident est corrupti. Dignissimos fugit exercitationem non quae voluptates dolores ipsum. Ad omnis blanditiis veritatis corrupti consequatur in dicta.\nSit eum tempore quos sint et. Quis et velit ducimus fugit rerum et nam.\nOmnis atque enim laborum omnis consequatur. Sapiente vel fugit ut amet accusantium non fugiat. Adipisci nulla occaecati ut accusamus corrupti. Similique quibusdam quasi quia.\nUt quia suscipit non saepe quo error. Natus at sapiente rerum non consequuntur sit. Blanditiis error error eligendi placeat.\nOmnis rerum totam eaque eligendi. Molestiae quia reprehenderit occaecati est laudantium eos. Deserunt reprehenderit dignissimos accusantium repellat est pariatur et.', 9, 1, 1, '2017-12-13 11:17:39', '2017-12-13 11:17:42', NULL),
(43, 5, 'Eveniet autem modi enim sint eaque.', 'eveniet-autem-modi-enim-sint-eaque', NULL, 'Ratione nam eligendi distinctio illo. Et dolorem quo provident dolorem eius. Minus quos harum tenetur. Voluptatem aut saepe voluptas repudiandae quia nihil est.', 'Eaque delectus odio omnis nam modi cupiditate unde nemo. Voluptatum natus quisquam deleniti. Est eaque et velit vitae commodi dicta rem.\nSint accusantium corporis tempora est commodi. Non quia maiores modi accusamus. Sed nihil itaque quaerat qui et eos consequatur doloribus.\nNumquam vero expedita nisi ut in. Molestiae consequuntur expedita omnis quis eligendi distinctio et. Reiciendis adipisci perferendis laboriosam voluptas exercitationem ipsam. Perferendis minus sint sit eveniet.\nQuam omnis soluta maiores et qui. Ipsam laudantium dolores et qui non recusandae numquam. Sunt quaerat sunt ducimus rerum et.\nFacilis labore officiis dolores consequuntur odio. Reiciendis reprehenderit ex maiores illum quia illum repudiandae facere. Enim ullam aut hic ratione. Rerum aperiam et nam ad praesentium. Labore natus cumque dicta eum autem.', 4, 0, 0, '2017-12-13 11:17:39', '2017-12-13 11:17:42', NULL),
(44, 5, 'Qui at perspiciatis voluptas et ut fuga sit.', 'qui-at-perspiciatis-voluptas-et-ut-fuga-sit', NULL, 'Nulla quos porro commodi explicabo. Sit id facere consectetur et nesciunt enim atque nesciunt. Cum eum maxime sed.', 'Tempora ducimus magnam nobis eum voluptas repellat. Soluta sed voluptates facere ullam. In sed hic eos vel. Quo enim ea deserunt sunt molestias omnis.\nDelectus velit ullam illo rem nam dolor ea sint. Autem libero qui dolor vitae ut. Nostrum voluptate voluptatem ut dignissimos ad quidem vel.\nEum rem commodi fuga sint corporis sunt aliquid. Quae ratione in ut necessitatibus. Qui ut alias qui et id.\nDebitis aut aut voluptas voluptas est. Mollitia incidunt eum voluptatem voluptas quo excepturi ad. Saepe beatae quo quisquam mollitia ipsa occaecati aut et.\nVoluptate molestiae qui ut aut. Cum dolores voluptatem omnis dolorem minima consequatur. Et consequatur ex in quaerat. Consequatur est voluptatem dolorum est dignissimos beatae commodi.\nIn dicta sed voluptate minima eveniet et sit. Quidem et modi molestias maxime. Quos aliquam id iusto et illo distinctio temporibus. Dolorem dolores odio facilis consequuntur.', 6, 0, 1, '2017-12-13 11:17:39', '2017-12-13 11:17:42', NULL),
(45, 5, 'Nobis vel est unde facilis ut corrupti.', 'nobis-vel-est-unde-facilis-ut-corrupti', NULL, 'Aut provident nostrum incidunt ut illum quaerat nisi reprehenderit. Earum numquam qui non eveniet est earum. Sint voluptate nesciunt illum est et ipsa rerum. Nostrum rerum placeat consequatur rem. Magni suscipit laborum labore voluptatem sed beatae.', 'Veniam at voluptatem aut voluptatibus dolorum. Quisquam quibusdam dolorum unde sit et voluptatibus quod. Debitis quia itaque voluptates voluptatem porro eveniet. Ducimus adipisci sint quidem impedit eligendi facere.\nSapiente officia unde et exercitationem ipsa. Nemo voluptate veritatis ab assumenda sed possimus eaque. Eaque qui voluptatem provident earum excepturi. Rem non ullam itaque.\nEst quos eligendi reiciendis impedit exercitationem aut est et. Quo quo voluptatem dolorum officia quaerat asperiores ut. Quas modi doloremque nobis ab sit.\nSequi a qui delectus incidunt vero eum voluptatem. Expedita incidunt molestiae repellat pariatur eum. Natus soluta magnam ut facilis.\nDolor beatae officiis non. Ut nihil dolore ab placeat impedit. Molestiae nobis est eligendi aut ipsa dolor dolores. Ducimus repellat fugit qui.', 6, 1, 0, '2017-12-13 11:17:39', '2017-12-13 11:17:42', NULL),
(46, 5, 'Sequi quas voluptatibus asperiores.', 'sequi-quas-voluptatibus-asperiores', NULL, 'At saepe doloremque dolores porro ex. Consequuntur doloribus ipsam repellat et.', 'Iste reprehenderit ipsa dignissimos. Iusto molestias eaque voluptatem in earum quasi rerum. Corporis architecto quis odit eos saepe dolores.\nNumquam voluptatem reprehenderit perferendis. Amet cupiditate molestiae mollitia autem voluptas sed minima et. Ipsa possimus exercitationem ut sed sed et.\nIpsa dignissimos quod hic minima rerum omnis eius laborum. Vitae nam doloribus nemo eum. Aut laboriosam repudiandae aut deleniti ex facilis. Eaque inventore expedita totam eligendi perferendis.\nAccusantium qui suscipit quis est voluptatem in in. Ipsam distinctio delectus molestiae. Iure eos repudiandae ullam maiores ullam natus. Ratione iure modi ad repellendus.\nFugit ut nihil cum. Id eaque labore laboriosam error ut ullam. Sit voluptas tempore maiores doloremque ut. Saepe deleniti assumenda soluta alias.\nNon dignissimos quia repellat tempore est ea. Vitae possimus soluta voluptatem illum. Officiis molestiae adipisci assumenda nam autem cumque occaecati quia.', 10, 0, 1, '2017-12-13 11:17:39', '2017-12-13 11:17:42', NULL),
(47, 5, 'Repellendus dignissimos omnis accusantium ut et.', 'repellendus-dignissimos-omnis-accusantium-ut-et', NULL, 'Mollitia dolores neque odio ipsum eos vel. Velit nam aut quis natus repudiandae ad dolore. Iste ut non at facere. Voluptate rerum dolorem incidunt architecto dolores.', 'Quia ullam ut quidem aut blanditiis. Eveniet nihil velit quia vero recusandae qui ipsam. Eveniet rem optio cum odio corporis.\nVel asperiores esse iusto aut. Qui non vel reprehenderit quia doloremque ut. Perferendis qui nihil quisquam eos dolor.\nNihil sint non temporibus et consequatur. Ipsum ut nulla nemo. In doloribus aperiam molestiae eos sint id. Et iure veritatis soluta quae dolore.\nEt nam iure amet cupiditate ab consequuntur. Molestias ipsa et sunt est quam. Qui quam consectetur est at dolores reiciendis voluptatem.\nOdio est voluptatum ad quam nihil voluptas. Reprehenderit omnis omnis enim sunt itaque. Dolores cupiditate non ab ab deleniti doloremque sed. Magnam voluptatem amet corrupti voluptatibus.\nQui sit debitis laborum. Aspernatur ut dolorem adipisci. Sapiente et quae aut voluptatem dicta ducimus. Est quibusdam nisi sed ut dolor perspiciatis.', 1, 0, 0, '2017-12-13 11:17:39', '2017-12-13 11:17:42', NULL),
(48, 5, 'Quae ex illo rerum modi ut nihil illum.', 'quae-ex-illo-rerum-modi-ut-nihil-illum', NULL, 'Pariatur reprehenderit occaecati est est nostrum. Dicta cum aperiam fuga quia illo. Ut voluptatem molestias quia. Ratione fuga quae praesentium. Quos et ea reiciendis eum est perspiciatis.', 'Sunt voluptatem esse aut est laudantium nisi. Qui ea maxime quas iusto. Minima veritatis dolores reiciendis blanditiis.\nMolestiae et consequatur vel commodi sit. Quasi distinctio dolorem aut reiciendis. Omnis vel ea est officiis non nemo inventore voluptatum.\nAut quia numquam impedit consequatur quia vitae tempore sit. Aut repudiandae dolores et illo dolorum asperiores. Quia enim est sed error blanditiis ut ipsa consequatur.\nTenetur iusto assumenda ut quis dolores. Autem quis animi nobis nesciunt accusamus et. Tempora dolor quia saepe facere. Ipsam aut nesciunt earum corrupti soluta non porro.\nAut ea aliquid aspernatur qui esse culpa. Consectetur laboriosam illo perspiciatis. Doloremque voluptatum officia itaque et iusto et nam non.\nNulla omnis harum natus qui molestias. Officia totam nesciunt maiores cum. Commodi dolore adipisci consectetur et repellat pariatur. Consequatur eveniet recusandae est est maxime possimus. Dolores ea reprehenderit sapiente eligendi vitae.', 4, 0, 1, '2017-12-13 11:17:39', '2017-12-13 11:17:42', NULL),
(49, 5, 'Recusandae dolores a iure dolor.', 'recusandae-dolores-a-iure-dolor', NULL, 'Inventore officia quisquam impedit voluptatum quia est. Illum voluptatem voluptatibus rem quasi et dolores ut. Accusamus aliquam doloremque ullam autem et quidem molestias a.', 'Repellat accusantium deserunt commodi cumque id quia eius laboriosam. Autem dolores rerum ullam distinctio excepturi voluptatem animi. Fugit neque minima similique alias. Suscipit asperiores nisi saepe voluptatum sed natus aut.\nAccusantium repudiandae voluptas perferendis omnis libero dolores quia. Assumenda est sed dolorem dolores. Ea numquam voluptatem accusamus vitae incidunt quas aut.\nEum iusto dolorem est accusantium soluta vero. Tempora non maxime quia porro. Ut dolores in et vero numquam autem et modi. Est earum eum et sapiente reiciendis dolor.\nMinima sit enim consequatur. Laborum id iure rerum debitis voluptas numquam. Est suscipit numquam quia similique consectetur. Distinctio et alias quidem quas.\nTenetur aut facere expedita nihil qui at eos. Qui sed sunt esse dolore. Aut blanditiis nemo placeat qui quia iusto ipsum. Accusantium quo nulla rem fugit cum quibusdam.', 5, 0, 1, '2017-12-13 11:17:39', '2017-12-13 11:17:42', NULL),
(50, 5, 'Tempore eos animi similique consequatur.', 'tempore-eos-animi-similique-consequatur', NULL, 'Ut quis reiciendis autem et. In ut laborum molestiae quia corrupti fugit illum. Animi sit reiciendis sapiente.', 'Laborum consequatur ut aliquam beatae vitae ipsa. Dolor est esse incidunt numquam. Perferendis ea dolores dignissimos sunt cumque et.\nVoluptas vitae iste ratione et et adipisci. Doloribus hic soluta eum architecto architecto voluptatibus.\nA nostrum delectus assumenda qui est necessitatibus. Molestiae in veniam dolor repellendus quam dolorem non quas. Unde repudiandae autem adipisci dolorum omnis. Iusto ut et repudiandae quia ut quo.\nVel voluptatem minima consequatur unde ipsum repellat magni fuga. Voluptas cum modi saepe distinctio nemo. Labore at aliquam qui esse harum eius.\nUt voluptate dolores tempore ratione aut consequatur. Veritatis sint reiciendis et repudiandae reprehenderit perspiciatis quia. Occaecati odit nobis temporibus voluptatum. Quaerat voluptatibus pariatur incidunt qui qui qui.\nSaepe laborum animi eos molestiae at atque. Qui delectus tempore et numquam ex placeat nulla rerum. Numquam itaque molestiae dolores nostrum sed nostrum possimus eum.', 8, 1, 1, '2017-12-13 11:17:39', '2017-12-13 11:17:43', NULL),
(51, 6, 'aljabar linier', 'aljabar linier', '1513492876-jl-io2.png', 'hahaha', '<p><a href=\"http://google.com\">http://google.com</a></p>\r\n\r\n<p>&nbsp;</p>', 1, 1, 1, '2017-12-16 23:41:16', '2017-12-16 23:59:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_student`
--

CREATE TABLE `lesson_student` (
  `lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lesson_student`
--

INSERT INTO `lesson_student` (`lesson_id`, `user_id`, `created_at`, `updated_at`) VALUES
(13, 1, '2017-12-13 11:22:52', '2017-12-13 11:22:52'),
(50, 1, '2017-12-16 04:10:59', '2017-12-16 04:10:59'),
(39, 1, '2017-12-16 04:20:21', '2017-12-16 04:20:21'),
(32, 1, '2017-12-16 04:20:31', '2017-12-16 04:20:31'),
(35, 1, '2017-12-16 04:20:35', '2017-12-16 04:20:35'),
(36, 1, '2017-12-16 04:20:36', '2017-12-16 04:20:36'),
(34, 1, '2017-12-16 04:20:37', '2017-12-16 04:20:37'),
(44, 1, '2017-12-16 04:26:01', '2017-12-16 04:26:01'),
(48, 1, '2017-12-16 04:26:15', '2017-12-16 04:26:15'),
(51, 2, '2017-12-16 23:44:59', '2017-12-16 23:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `manipulations` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_id`, `model_type`, `collection_name`, `name`, `file_name`, `disk`, `size`, `manipulations`, `custom_properties`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 51, 'App\\Lesson', 'downloadable_files', 'template laporan', 'template laporan.docx', 'media', 143898, '[]', '[]', 1, '2017-12-16 23:54:45', '2017-12-16 23:59:41');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_07_19_082005_create_1500441605_permissions_table', 1),
(3, '2017_07_19_082006_create_1500441606_roles_table', 1),
(4, '2017_07_19_082009_create_1500441609_users_table', 1),
(5, '2017_07_19_082347_create_1500441827_courses_table', 1),
(6, '2017_07_19_082723_create_1500442043_lessons_table', 1),
(7, '2017_07_19_082724_create_media_table', 1),
(8, '2017_07_19_082929_create_1500442169_questions_table', 1),
(9, '2017_07_19_083047_create_1500442247_questions_options_table', 1),
(10, '2017_07_19_083236_create_1500442356_tests_table', 1),
(11, '2017_07_19_120427_create_596eec08307cd_permission_role_table', 1),
(12, '2017_07_19_120430_create_596eec0af366b_role_user_table', 1),
(13, '2017_07_19_120808_create_596eece522a6e_course_user_table', 1),
(14, '2017_07_19_121657_create_596eeef709839_question_test_table', 1),
(15, '2017_08_14_085956_create_course_students_table', 1),
(16, '2017_08_17_051131_create_tests_results_table', 1),
(17, '2017_08_17_051254_create_tests_results_answers_table', 1),
(18, '2017_08_18_054622_create_lesson_student_table', 1),
(19, '2017_08_18_060324_add_rating_to_course_student_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', '2017-12-13 11:17:06', '2017-12-13 11:17:06'),
(2, 'user_management_create', '2017-12-13 11:17:06', '2017-12-13 11:17:06'),
(3, 'user_management_edit', '2017-12-13 11:17:07', '2017-12-13 11:17:07'),
(4, 'user_management_view', '2017-12-13 11:17:07', '2017-12-13 11:17:07'),
(5, 'user_management_delete', '2017-12-13 11:17:07', '2017-12-13 11:17:07'),
(6, 'permission_access', '2017-12-13 11:17:07', '2017-12-13 11:17:07'),
(7, 'permission_create', '2017-12-13 11:17:07', '2017-12-13 11:17:07'),
(8, 'permission_edit', '2017-12-13 11:17:07', '2017-12-13 11:17:07'),
(9, 'permission_view', '2017-12-13 11:17:07', '2017-12-13 11:17:07'),
(10, 'permission_delete', '2017-12-13 11:17:08', '2017-12-13 11:17:08'),
(11, 'role_access', '2017-12-13 11:17:08', '2017-12-13 11:17:08'),
(12, 'role_create', '2017-12-13 11:17:08', '2017-12-13 11:17:08'),
(13, 'role_edit', '2017-12-13 11:17:08', '2017-12-13 11:17:08'),
(14, 'role_view', '2017-12-13 11:17:08', '2017-12-13 11:17:08'),
(15, 'role_delete', '2017-12-13 11:17:08', '2017-12-13 11:17:08'),
(16, 'user_access', '2017-12-13 11:17:09', '2017-12-13 11:17:09'),
(17, 'user_create', '2017-12-13 11:17:09', '2017-12-13 11:17:09'),
(18, 'user_edit', '2017-12-13 11:17:09', '2017-12-13 11:17:09'),
(19, 'user_view', '2017-12-13 11:17:09', '2017-12-13 11:17:09'),
(20, 'user_delete', '2017-12-13 11:17:09', '2017-12-13 11:17:09'),
(21, 'course_access', '2017-12-13 11:17:09', '2017-12-13 11:17:09'),
(22, 'course_create', '2017-12-13 11:17:10', '2017-12-13 11:17:10'),
(23, 'course_edit', '2017-12-13 11:17:10', '2017-12-13 11:17:10'),
(24, 'course_view', '2017-12-13 11:17:10', '2017-12-13 11:17:10'),
(25, 'course_delete', '2017-12-13 11:17:10', '2017-12-13 11:17:10'),
(26, 'lesson_access', '2017-12-13 11:17:10', '2017-12-13 11:17:10'),
(27, 'lesson_create', '2017-12-13 11:17:10', '2017-12-13 11:17:10'),
(28, 'lesson_edit', '2017-12-13 11:17:10', '2017-12-13 11:17:10'),
(29, 'lesson_view', '2017-12-13 11:17:10', '2017-12-13 11:17:10'),
(30, 'lesson_delete', '2017-12-13 11:17:10', '2017-12-13 11:17:10'),
(31, 'question_access', '2017-12-13 11:17:10', '2017-12-13 11:17:10'),
(32, 'question_create', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(33, 'question_edit', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(34, 'question_view', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(35, 'question_delete', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(36, 'questions_option_access', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(37, 'questions_option_create', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(38, 'questions_option_edit', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(39, 'questions_option_view', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(40, 'questions_option_delete', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(41, 'test_access', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(42, 'test_create', '2017-12-13 11:17:11', '2017-12-13 11:17:11'),
(43, 'test_edit', '2017-12-13 11:17:12', '2017-12-13 11:17:12'),
(44, 'test_view', '2017-12-13 11:17:12', '2017-12-13 11:17:12'),
(45, 'test_delete', '2017-12-13 11:17:12', '2017-12-13 11:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(1, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(1, 3),
(21, 3),
(24, 3),
(26, 3),
(29, 3),
(31, 3),
(34, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(44, 3);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `question_image`, `score`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ducimus non dolor est minus.?', NULL, 1, '2017-12-13 11:17:43', '2017-12-13 11:17:43', NULL),
(2, 'Deserunt et enim rerum ipsum.?', NULL, 1, '2017-12-13 11:17:43', '2017-12-13 11:17:43', NULL),
(3, 'Eos corporis quam est fuga dolorem.?', NULL, 1, '2017-12-13 11:17:43', '2017-12-13 11:17:43', NULL),
(4, 'Explicabo numquam ea dolorem maxime et illo.?', NULL, 1, '2017-12-13 11:17:43', '2017-12-13 11:17:43', NULL),
(5, 'Occaecati molestiae nisi sint tenetur.?', NULL, 1, '2017-12-13 11:17:43', '2017-12-13 11:17:43', NULL),
(6, 'Et impedit vitae tenetur esse quam alias dolor.?', NULL, 1, '2017-12-13 11:17:43', '2017-12-13 11:17:43', NULL),
(7, 'Impedit nulla laudantium a sed ea.?', NULL, 1, '2017-12-13 11:17:43', '2017-12-13 11:17:43', NULL),
(8, 'Fugiat quasi autem molestiae dicta ullam.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(9, 'Soluta nemo quia et ut ipsa quo porro.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(10, 'Assumenda sunt impedit doloremque.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(11, 'Sed omnis magnam a aut neque dolorem ratione.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(12, 'Enim sunt odio dolor aliquam ipsum.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(13, 'Modi et at et et aut quas.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(14, 'Odio voluptates minus quis voluptas.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(15, 'Libero placeat deleniti ut eius debitis.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(16, 'Eius quis dolore consequatur doloremque esse.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(17, 'Ex dolorum aperiam sed.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(18, 'Quae quas deleniti provident eos illo.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(19, 'Accusamus voluptatibus animi amet ut nisi.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(20, 'Id et cumque similique eius id numquam.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(21, 'Asperiores dolorum ducimus sit iste.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(22, 'Harum vel maiores molestiae consequatur ut.?', NULL, 1, '2017-12-13 11:17:44', '2017-12-13 11:17:44', NULL),
(23, 'Nesciunt vel a dolores eius natus.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(24, 'Earum veniam est fugiat blanditiis.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(25, 'Iste assumenda quas vitae totam.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(26, 'Veniam sint ut eum reprehenderit nisi.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(27, 'Non nesciunt et quia quibusdam.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(28, 'Quia sed vero ipsum saepe hic exercitationem.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(29, 'Fugit in non neque dolorem et praesentium.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(30, 'Natus libero a error tempore illum sunt quis.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(31, 'Asperiores velit iusto iusto.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(32, 'Autem voluptatem est porro repellat dolorum aut.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(33, 'Iusto nam impedit et illum.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(34, 'Consectetur qui non vel.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(35, 'Incidunt et sapiente vero aut.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(36, 'Qui et exercitationem et.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(37, 'Alias asperiores debitis possimus distinctio.?', NULL, 1, '2017-12-13 11:17:45', '2017-12-13 11:17:45', NULL),
(38, 'Eius magni ut animi error quis sit.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(39, 'Voluptatem ad consequatur aperiam.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(40, 'Necessitatibus aut dicta ipsam eveniet.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(41, 'Laudantium veniam enim qui ut perferendis id.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(42, 'Tempore et officiis voluptatum et et sunt totam.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(43, 'Occaecati est rerum odit illum nihil.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(44, 'Quidem placeat sed vero doloribus deserunt in.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(45, 'Aspernatur voluptates molestias earum vero.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(46, 'Iure ut totam iure.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(47, 'Dolore magnam fugiat et dolor minima et.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(48, 'Et nostrum nobis soluta tempore distinctio a.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(49, 'Voluptate amet laborum qui et cumque.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(50, 'Ut optio enim nihil.?', NULL, 1, '2017-12-13 11:17:46', '2017-12-13 11:17:46', NULL),
(51, '1 + 1 =', NULL, 1, '2017-12-16 23:43:30', '2017-12-16 23:43:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions_options`
--

CREATE TABLE `questions_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `option_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions_options`
--

INSERT INTO `questions_options` (`id`, `question_id`, `option_text`, `correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Tenetur labore quas et accusantium voluptatem ea.?', 0, '2017-12-13 11:17:46', '2017-12-13 11:17:47', NULL),
(2, 1, 'Corporis tempore dolor et eveniet ipsa.?', 1, '2017-12-13 11:17:47', '2017-12-13 11:17:47', NULL),
(3, 1, 'Et quod ut sapiente quibusdam.?', 1, '2017-12-13 11:17:47', '2017-12-13 11:17:47', NULL),
(4, 1, 'Aliquid voluptas minima qui enim modi aut maxime.?', 1, '2017-12-13 11:17:47', '2017-12-13 11:17:47', NULL),
(5, 2, 'Iste et temporibus at quo impedit quis.?', 0, '2017-12-13 11:17:48', '2017-12-13 11:17:48', NULL),
(6, 2, 'Fuga et provident natus.?', 0, '2017-12-13 11:17:48', '2017-12-13 11:17:48', NULL),
(7, 2, 'Modi id quisquam adipisci tempore.?', 0, '2017-12-13 11:17:48', '2017-12-13 11:17:48', NULL),
(8, 2, 'Est laudantium qui hic.?', 0, '2017-12-13 11:17:48', '2017-12-13 11:17:48', NULL),
(9, 3, 'Enim voluptas quo cum aut eius.?', 0, '2017-12-13 11:17:49', '2017-12-13 11:17:49', NULL),
(10, 3, 'Vero assumenda quisquam eum harum officiis non.?', 0, '2017-12-13 11:17:49', '2017-12-13 11:17:49', NULL),
(11, 3, 'Est cumque ut voluptatum consequatur nihil.?', 1, '2017-12-13 11:17:49', '2017-12-13 11:17:50', NULL),
(12, 3, 'Dolor veritatis sed aut qui optio rerum.?', 1, '2017-12-13 11:17:49', '2017-12-13 11:17:50', NULL),
(13, 4, 'Ex amet eum beatae vel velit.?', 0, '2017-12-13 11:17:50', '2017-12-13 11:17:51', NULL),
(14, 4, 'Minus perspiciatis iusto sunt et aut illo.?', 0, '2017-12-13 11:17:50', '2017-12-13 11:17:51', NULL),
(15, 4, 'Quos sequi distinctio quibusdam accusamus iure.?', 0, '2017-12-13 11:17:50', '2017-12-13 11:17:51', NULL),
(16, 4, 'Commodi ut eum expedita consectetur.?', 1, '2017-12-13 11:17:51', '2017-12-13 11:17:51', NULL),
(17, 5, 'Distinctio amet provident sint accusantium.?', 1, '2017-12-13 11:17:51', '2017-12-13 11:17:51', NULL),
(18, 5, 'Odio quae sunt alias deserunt aut explicabo.?', 1, '2017-12-13 11:17:51', '2017-12-13 11:17:51', NULL),
(19, 5, 'Et qui sit molestiae.?', 1, '2017-12-13 11:17:51', '2017-12-13 11:17:52', NULL),
(20, 5, 'Quidem autem deserunt a fuga inventore in neque.?', 0, '2017-12-13 11:17:51', '2017-12-13 11:17:52', NULL),
(21, 6, 'Ex dolorum qui dolore quis.?', 1, '2017-12-13 11:17:52', '2017-12-13 11:17:52', NULL),
(22, 6, 'Quidem nisi eveniet laboriosam quos.?', 1, '2017-12-13 11:17:52', '2017-12-13 11:17:52', NULL),
(23, 6, 'Laborum est consequatur blanditiis ut.?', 1, '2017-12-13 11:17:52', '2017-12-13 11:17:52', NULL),
(24, 6, 'Possimus eveniet autem voluptatem temporibus.?', 1, '2017-12-13 11:17:52', '2017-12-13 11:17:52', NULL),
(25, 7, 'Aut ut unde sapiente ut.?', 1, '2017-12-13 11:17:52', '2017-12-13 11:17:53', NULL),
(26, 7, 'Expedita tenetur consequatur voluptatem sed.?', 0, '2017-12-13 11:17:53', '2017-12-13 11:17:53', NULL),
(27, 7, 'Quos ullam doloribus eos.?', 1, '2017-12-13 11:17:53', '2017-12-13 11:17:53', NULL),
(28, 7, 'Necessitatibus vero provident quibusdam.?', 1, '2017-12-13 11:17:53', '2017-12-13 11:17:53', NULL),
(29, 8, 'Non rerum est nam autem necessitatibus.?', 0, '2017-12-13 11:17:53', '2017-12-13 11:17:54', NULL),
(30, 8, 'Sit corporis occaecati consequuntur vitae.?', 0, '2017-12-13 11:17:53', '2017-12-13 11:17:54', NULL),
(31, 8, 'A molestias et dolores repellat dolores saepe.?', 1, '2017-12-13 11:17:54', '2017-12-13 11:17:54', NULL),
(32, 8, 'Et dolor repellendus excepturi vel.?', 1, '2017-12-13 11:17:54', '2017-12-13 11:17:54', NULL),
(33, 9, 'Inventore saepe dolorum unde doloribus.?', 0, '2017-12-13 11:17:54', '2017-12-13 11:17:54', NULL),
(34, 9, 'Ab repellendus omnis est alias.?', 1, '2017-12-13 11:17:54', '2017-12-13 11:17:54', NULL),
(35, 9, 'Impedit quia qui similique nostrum.?', 0, '2017-12-13 11:17:54', '2017-12-13 11:17:54', NULL),
(36, 9, 'Est ut et sed voluptatibus omnis.?', 0, '2017-12-13 11:17:54', '2017-12-13 11:17:55', NULL),
(37, 10, 'Et id molestiae assumenda labore et sit in.?', 0, '2017-12-13 11:17:55', '2017-12-13 11:17:55', NULL),
(38, 10, 'Recusandae aut hic non.?', 0, '2017-12-13 11:17:55', '2017-12-13 11:17:55', NULL),
(39, 10, 'Quam facere quae ratione et aut.?', 1, '2017-12-13 11:17:55', '2017-12-13 11:17:55', NULL),
(40, 10, 'Placeat eligendi sit maxime mollitia at culpa.?', 1, '2017-12-13 11:17:55', '2017-12-13 11:17:55', NULL),
(41, 11, 'In voluptatum ut sint sint asperiores earum.?', 1, '2017-12-13 11:17:55', '2017-12-13 11:17:56', NULL),
(42, 11, 'Voluptatum pariatur totam dolor autem ea eos sed.?', 1, '2017-12-13 11:17:55', '2017-12-13 11:17:56', NULL),
(43, 11, 'Nihil quisquam nisi laborum pariatur ex.?', 0, '2017-12-13 11:17:55', '2017-12-13 11:17:56', NULL),
(44, 11, 'Beatae ea sit in. Ad dicta quia ea a eum iure.?', 1, '2017-12-13 11:17:55', '2017-12-13 11:17:56', NULL),
(45, 12, 'Ipsa dolorem praesentium soluta modi.?', 1, '2017-12-13 11:17:56', '2017-12-13 11:17:56', NULL),
(46, 12, 'Est laudantium quasi quasi nesciunt earum.?', 0, '2017-12-13 11:17:56', '2017-12-13 11:17:56', NULL),
(47, 12, 'Blanditiis odio qui dicta autem.?', 0, '2017-12-13 11:17:56', '2017-12-13 11:17:57', NULL),
(48, 12, 'Ea voluptatem doloribus qui velit omnis.?', 0, '2017-12-13 11:17:56', '2017-12-13 11:17:57', NULL),
(49, 13, 'Quod earum beatae optio sit qui.?', 0, '2017-12-13 11:17:57', '2017-12-13 11:17:57', NULL),
(50, 13, 'Aperiam qui aliquid quidem alias.?', 0, '2017-12-13 11:17:57', '2017-12-13 11:17:57', NULL),
(51, 13, 'Quo voluptatibus sit excepturi voluptas impedit.?', 1, '2017-12-13 11:17:57', '2017-12-13 11:17:58', NULL),
(52, 13, 'Impedit consequatur explicabo nostrum non et.?', 1, '2017-12-13 11:17:57', '2017-12-13 11:17:58', NULL),
(53, 14, 'Quia aliquam quos rerum.?', 0, '2017-12-13 11:17:58', '2017-12-13 11:17:58', NULL),
(54, 14, 'Dolore et dolorem et aut quisquam omnis neque.?', 1, '2017-12-13 11:17:58', '2017-12-13 11:17:58', NULL),
(55, 14, 'Quidem ut asperiores deleniti sit amet nam.?', 0, '2017-12-13 11:17:58', '2017-12-13 11:17:58', NULL),
(56, 14, 'Eaque eligendi quam voluptas officia.?', 1, '2017-12-13 11:17:58', '2017-12-13 11:17:58', NULL),
(57, 15, 'Aut quia sint est laudantium.?', 1, '2017-12-13 11:17:58', '2017-12-13 11:17:59', NULL),
(58, 15, 'Iusto iste quibusdam unde qui non.?', 0, '2017-12-13 11:17:58', '2017-12-13 11:17:59', NULL),
(59, 15, 'Ut porro repudiandae odit non dolore voluptatem.?', 0, '2017-12-13 11:17:59', '2017-12-13 11:17:59', NULL),
(60, 15, 'Voluptate nulla fugiat est.?', 0, '2017-12-13 11:17:59', '2017-12-13 11:17:59', NULL),
(61, 16, 'Sed ipsum quisquam et cum velit est saepe.?', 0, '2017-12-13 11:18:00', '2017-12-13 11:18:01', NULL),
(62, 16, 'Et ea aut autem et sapiente mollitia.?', 1, '2017-12-13 11:18:01', '2017-12-13 11:18:01', NULL),
(63, 16, 'Qui cumque eum ut saepe.?', 1, '2017-12-13 11:18:01', '2017-12-13 11:18:01', NULL),
(64, 16, 'Tenetur voluptas quia aut repellat sint.?', 0, '2017-12-13 11:18:01', '2017-12-13 11:18:01', NULL),
(65, 17, 'Facere et sequi optio sed qui esse sed repellat.?', 0, '2017-12-13 11:18:01', '2017-12-13 11:18:01', NULL),
(66, 17, 'A suscipit aut est. Voluptatum qui sit dolor.?', 0, '2017-12-13 11:18:01', '2017-12-13 11:18:01', NULL),
(67, 17, 'Non quos est perferendis culpa quia aut.?', 0, '2017-12-13 11:18:01', '2017-12-13 11:18:02', NULL),
(68, 17, 'Veritatis dolor vel omnis.?', 1, '2017-12-13 11:18:01', '2017-12-13 11:18:02', NULL),
(69, 18, 'Vitae laborum non dicta voluptatibus.?', 0, '2017-12-13 11:18:02', '2017-12-13 11:18:02', NULL),
(70, 18, 'Ex assumenda aut qui atque magnam repellat.?', 1, '2017-12-13 11:18:02', '2017-12-13 11:18:02', NULL),
(71, 18, 'Commodi et commodi nemo distinctio sed.?', 0, '2017-12-13 11:18:02', '2017-12-13 11:18:02', NULL),
(72, 18, 'Quisquam est culpa a et a omnis quam.?', 0, '2017-12-13 11:18:02', '2017-12-13 11:18:02', NULL),
(73, 19, 'Molestiae aliquid expedita repudiandae.?', 1, '2017-12-13 11:18:02', '2017-12-13 11:18:03', NULL),
(74, 19, 'Praesentium ut voluptates minus.?', 1, '2017-12-13 11:18:02', '2017-12-13 11:18:03', NULL),
(75, 19, 'Est consequatur optio cumque quam eaque.?', 0, '2017-12-13 11:18:02', '2017-12-13 11:18:03', NULL),
(76, 19, 'In culpa minus perferendis est.?', 1, '2017-12-13 11:18:03', '2017-12-13 11:18:03', NULL),
(77, 20, 'Possimus vitae molestiae voluptas non omnis.?', 1, '2017-12-13 11:18:03', '2017-12-13 11:18:03', NULL),
(78, 20, 'Vel voluptatem vel tenetur aut veniam et odit ut.?', 0, '2017-12-13 11:18:03', '2017-12-13 11:18:03', NULL),
(79, 20, 'Non magni eligendi aut nihil ex voluptatem.?', 1, '2017-12-13 11:18:03', '2017-12-13 11:18:03', NULL),
(80, 20, 'Ducimus nihil eius aut inventore.?', 1, '2017-12-13 11:18:03', '2017-12-13 11:18:03', NULL),
(81, 21, 'Aliquid ducimus laborum delectus dolores rem.?', 0, '2017-12-13 11:18:04', '2017-12-13 11:18:04', NULL),
(82, 21, 'A accusantium est magni tenetur architecto et.?', 0, '2017-12-13 11:18:04', '2017-12-13 11:18:04', NULL),
(83, 21, 'Et et sit exercitationem in.?', 1, '2017-12-13 11:18:04', '2017-12-13 11:18:04', NULL),
(84, 21, 'Hic et dolores neque.?', 0, '2017-12-13 11:18:04', '2017-12-13 11:18:04', NULL),
(85, 22, 'Sunt vitae sunt quo officiis reiciendis.?', 0, '2017-12-13 11:18:04', '2017-12-13 11:18:05', NULL),
(86, 22, 'Sunt illo architecto tempora eos sint et.?', 1, '2017-12-13 11:18:04', '2017-12-13 11:18:05', NULL),
(87, 22, 'Placeat illo libero nulla sit vel.?', 1, '2017-12-13 11:18:04', '2017-12-13 11:18:05', NULL),
(88, 22, 'Ut natus quo non eaque qui.?', 0, '2017-12-13 11:18:04', '2017-12-13 11:18:05', NULL),
(89, 23, 'Et velit nostrum deleniti animi at iusto.?', 1, '2017-12-13 11:18:05', '2017-12-13 11:18:05', NULL),
(90, 23, 'Omnis eveniet sit minima.?', 1, '2017-12-13 11:18:05', '2017-12-13 11:18:05', NULL),
(91, 23, 'Accusamus illo facere ratione voluptatum.?', 1, '2017-12-13 11:18:05', '2017-12-13 11:18:05', NULL),
(92, 23, 'Quas vero odit velit asperiores.?', 0, '2017-12-13 11:18:05', '2017-12-13 11:18:05', NULL),
(93, 24, 'Minima ullam voluptatem in sunt fuga repellendus.?', 1, '2017-12-13 11:18:05', '2017-12-13 11:18:06', NULL),
(94, 24, 'Aut in explicabo exercitationem enim.?', 0, '2017-12-13 11:18:05', '2017-12-13 11:18:06', NULL),
(95, 24, 'Eaque autem explicabo adipisci voluptas.?', 0, '2017-12-13 11:18:06', '2017-12-13 11:18:06', NULL),
(96, 24, 'Possimus provident necessitatibus sit eos ut.?', 1, '2017-12-13 11:18:06', '2017-12-13 11:18:06', NULL),
(97, 25, 'Quia similique debitis placeat voluptatem.?', 1, '2017-12-13 11:18:06', '2017-12-13 11:18:07', NULL),
(98, 25, 'Quidem facilis recusandae enim voluptates.?', 0, '2017-12-13 11:18:06', '2017-12-13 11:18:07', NULL),
(99, 25, 'Aut aut iste omnis. Consequatur enim vitae aut.?', 0, '2017-12-13 11:18:06', '2017-12-13 11:18:07', NULL),
(100, 25, 'Nostrum ea aut ut et.?', 1, '2017-12-13 11:18:07', '2017-12-13 11:18:07', NULL),
(101, 26, 'Voluptatem non minima inventore.?', 0, '2017-12-13 11:18:07', '2017-12-13 11:18:08', NULL),
(102, 26, 'Non sed odit eum incidunt asperiores.?', 1, '2017-12-13 11:18:07', '2017-12-13 11:18:08', NULL),
(103, 26, 'Quis provident sunt dignissimos quos corrupti.?', 1, '2017-12-13 11:18:08', '2017-12-13 11:18:08', NULL),
(104, 26, 'Eaque magnam harum non.?', 1, '2017-12-13 11:18:08', '2017-12-13 11:18:08', NULL),
(105, 27, 'Velit velit aut similique et impedit.?', 1, '2017-12-13 11:18:08', '2017-12-13 11:18:09', NULL),
(106, 27, 'Corrupti est aut ut quo aspernatur sunt deleniti.?', 1, '2017-12-13 11:18:08', '2017-12-13 11:18:09', NULL),
(107, 27, 'Dicta in eos enim rerum.?', 0, '2017-12-13 11:18:09', '2017-12-13 11:18:09', NULL),
(108, 27, 'Et sunt soluta a qui ullam et ipsam.?', 1, '2017-12-13 11:18:09', '2017-12-13 11:18:09', NULL),
(109, 28, 'Nobis ea delectus autem at eligendi eum vel.?', 1, '2017-12-13 11:18:09', '2017-12-13 11:18:10', NULL),
(110, 28, 'Magnam non sunt dolorum voluptas possimus.?', 1, '2017-12-13 11:18:09', '2017-12-13 11:18:10', NULL),
(111, 28, 'Placeat neque quia itaque quas quia.?', 1, '2017-12-13 11:18:10', '2017-12-13 11:18:10', NULL),
(112, 28, 'Non libero impedit quaerat facere voluptatem.?', 1, '2017-12-13 11:18:10', '2017-12-13 11:18:10', NULL),
(113, 29, 'Incidunt laudantium sint provident.?', 1, '2017-12-13 11:18:10', '2017-12-13 11:18:11', NULL),
(114, 29, 'Omnis velit et dolores saepe.?', 0, '2017-12-13 11:18:11', '2017-12-13 11:18:11', NULL),
(115, 29, 'Dolore iure ut magni non nobis pariatur illo.?', 0, '2017-12-13 11:18:11', '2017-12-13 11:18:11', NULL),
(116, 29, 'Qui voluptatem sint sit perferendis odio vel.?', 0, '2017-12-13 11:18:11', '2017-12-13 11:18:11', NULL),
(117, 30, 'Explicabo est officiis deleniti.?', 0, '2017-12-13 11:18:11', '2017-12-13 11:18:12', NULL),
(118, 30, 'Dolore fuga nihil itaque est vero.?', 1, '2017-12-13 11:18:11', '2017-12-13 11:18:12', NULL),
(119, 30, 'Error earum molestias cumque.?', 0, '2017-12-13 11:18:11', '2017-12-13 11:18:12', NULL),
(120, 30, 'Velit est voluptate laboriosam nam dignissimos.?', 0, '2017-12-13 11:18:12', '2017-12-13 11:18:12', NULL),
(121, 31, 'Corrupti aperiam nam quo sit.?', 0, '2017-12-13 11:18:12', '2017-12-13 11:18:13', NULL),
(122, 31, 'Quae sapiente vero pariatur nostrum.?', 0, '2017-12-13 11:18:13', '2017-12-13 11:18:13', NULL),
(123, 31, 'Aut illum velit commodi sequi consequatur.?', 1, '2017-12-13 11:18:13', '2017-12-13 11:18:13', NULL),
(124, 31, 'Nostrum voluptatem et iure ipsum.?', 0, '2017-12-13 11:18:13', '2017-12-13 11:18:13', NULL),
(125, 32, 'Dolore aut sit rerum inventore sequi ea quos.?', 1, '2017-12-13 11:18:14', '2017-12-13 11:18:14', NULL),
(126, 32, 'Sunt placeat aut soluta quibusdam.?', 0, '2017-12-13 11:18:14', '2017-12-13 11:18:14', NULL),
(127, 32, 'Architecto et vel ut et fuga.?', 0, '2017-12-13 11:18:14', '2017-12-13 11:18:14', NULL),
(128, 32, 'Modi ut maiores tempora est dicta.?', 1, '2017-12-13 11:18:14', '2017-12-13 11:18:15', NULL),
(129, 33, 'Ex modi cum et ut maiores in.?', 0, '2017-12-13 11:18:15', '2017-12-13 11:18:15', NULL),
(130, 33, 'Voluptas est delectus sed at nulla a.?', 0, '2017-12-13 11:18:15', '2017-12-13 11:18:15', NULL),
(131, 33, 'Et rerum harum quis dolores illum autem atque.?', 0, '2017-12-13 11:18:15', '2017-12-13 11:18:15', NULL),
(132, 33, 'Maxime quaerat soluta excepturi.?', 1, '2017-12-13 11:18:15', '2017-12-13 11:18:15', NULL),
(133, 34, 'Quis autem et ut ipsam et.?', 0, '2017-12-13 11:18:16', '2017-12-13 11:18:16', NULL),
(134, 34, 'Est non architecto nihil.?', 0, '2017-12-13 11:18:16', '2017-12-13 11:18:16', NULL),
(135, 34, 'Et numquam dolor nostrum quia in.?', 1, '2017-12-13 11:18:16', '2017-12-13 11:18:16', NULL),
(136, 34, 'Totam et dolores tempore quo aliquam fugiat.?', 1, '2017-12-13 11:18:16', '2017-12-13 11:18:16', NULL),
(137, 35, 'Sunt quas eveniet quae dolorem nulla aut.?', 1, '2017-12-13 11:18:17', '2017-12-13 11:18:17', NULL),
(138, 35, 'Sit veniam aut et doloribus minima et.?', 0, '2017-12-13 11:18:17', '2017-12-13 11:18:17', NULL),
(139, 35, 'Sint ut veritatis dolorem sit.?', 1, '2017-12-13 11:18:17', '2017-12-13 11:18:17', NULL),
(140, 35, 'Eius hic debitis et et.?', 1, '2017-12-13 11:18:17', '2017-12-13 11:18:17', NULL),
(141, 36, 'Numquam dolore soluta suscipit ut.?', 1, '2017-12-13 11:18:18', '2017-12-13 11:18:18', NULL),
(142, 36, 'Cupiditate eos magnam voluptas atque.?', 0, '2017-12-13 11:18:18', '2017-12-13 11:18:18', NULL),
(143, 36, 'Rerum est dicta sunt voluptatibus ad aut.?', 0, '2017-12-13 11:18:18', '2017-12-13 11:18:18', NULL),
(144, 36, 'Cumque a fuga libero blanditiis.?', 0, '2017-12-13 11:18:18', '2017-12-13 11:18:19', NULL),
(145, 37, 'Quod et ex et et facilis.?', 0, '2017-12-13 11:18:19', '2017-12-13 11:18:20', NULL),
(146, 37, 'Sed quia incidunt beatae ad quia atque.?', 1, '2017-12-13 11:18:19', '2017-12-13 11:18:20', NULL),
(147, 37, 'Ut qui dolores quo et doloremque.?', 1, '2017-12-13 11:18:20', '2017-12-13 11:18:20', NULL),
(148, 37, 'Aut iure nesciunt non iusto ducimus.?', 0, '2017-12-13 11:18:20', '2017-12-13 11:18:20', NULL),
(149, 38, 'Est aut ut odit ratione atque qui.?', 1, '2017-12-13 11:18:20', '2017-12-13 11:18:21', NULL),
(150, 38, 'Cupiditate earum reiciendis iusto velit.?', 1, '2017-12-13 11:18:21', '2017-12-13 11:18:21', NULL),
(151, 38, 'Velit aut rerum possimus et qui.?', 0, '2017-12-13 11:18:21', '2017-12-13 11:18:21', NULL),
(152, 38, 'Ea qui dolorem excepturi ea autem.?', 1, '2017-12-13 11:18:21', '2017-12-13 11:18:21', NULL),
(153, 39, 'Consequatur nesciunt sed saepe tempore optio.?', 0, '2017-12-13 11:18:21', '2017-12-13 11:18:22', NULL),
(154, 39, 'Quam iure labore velit ducimus.?', 1, '2017-12-13 11:18:21', '2017-12-13 11:18:22', NULL),
(155, 39, 'Doloribus voluptas suscipit aspernatur quibusdam.?', 0, '2017-12-13 11:18:21', '2017-12-13 11:18:22', NULL),
(156, 39, 'Saepe illum quaerat nam dolore.?', 0, '2017-12-13 11:18:21', '2017-12-13 11:18:22', NULL),
(157, 40, 'Rerum ut possimus vel quaerat.?', 0, '2017-12-13 11:18:22', '2017-12-13 11:18:22', NULL),
(158, 40, 'Magnam recusandae sit culpa earum sed eum.?', 0, '2017-12-13 11:18:22', '2017-12-13 11:18:22', NULL),
(159, 40, 'Qui ut sit dolorem non.?', 0, '2017-12-13 11:18:22', '2017-12-13 11:18:22', NULL),
(160, 40, 'Corrupti vitae et dicta excepturi ipsum.?', 0, '2017-12-13 11:18:22', '2017-12-13 11:18:22', NULL),
(161, 41, 'Labore sed ipsa molestiae.?', 1, '2017-12-13 11:18:23', '2017-12-13 11:18:23', NULL),
(162, 41, 'Ea voluptatum occaecati rerum.?', 1, '2017-12-13 11:18:23', '2017-12-13 11:18:23', NULL),
(163, 41, 'Temporibus nihil rem culpa quia autem rerum.?', 0, '2017-12-13 11:18:23', '2017-12-13 11:18:24', NULL),
(164, 41, 'Suscipit laborum est est sit voluptate.?', 0, '2017-12-13 11:18:23', '2017-12-13 11:18:24', NULL),
(165, 42, 'Fugit enim quos odio inventore.?', 0, '2017-12-13 11:18:24', '2017-12-13 11:18:24', NULL),
(166, 42, 'Quis eum sed sed officia aut nesciunt itaque.?', 0, '2017-12-13 11:18:24', '2017-12-13 11:18:24', NULL),
(167, 42, 'Odit magnam repellat minus quod maiores.?', 1, '2017-12-13 11:18:24', '2017-12-13 11:18:24', NULL),
(168, 42, 'Odit libero illo qui sint vero et ut.?', 0, '2017-12-13 11:18:24', '2017-12-13 11:18:24', NULL),
(169, 43, 'Officia officiis iure aut at eaque dolor.?', 0, '2017-12-13 11:18:24', '2017-12-13 11:18:25', NULL),
(170, 43, 'Laudantium eum corrupti animi.?', 0, '2017-12-13 11:18:24', '2017-12-13 11:18:25', NULL),
(171, 43, 'Aliquam fuga velit tempore culpa accusamus.?', 0, '2017-12-13 11:18:24', '2017-12-13 11:18:25', NULL),
(172, 43, 'Asperiores enim occaecati ipsa repudiandae.?', 0, '2017-12-13 11:18:25', '2017-12-13 11:18:25', NULL),
(173, 44, 'Eos sequi quia quos magnam est nihil saepe.?', 0, '2017-12-13 11:18:25', '2017-12-13 11:18:25', NULL),
(174, 44, 'Corrupti quas rerum veniam odio eos quaerat.?', 0, '2017-12-13 11:18:25', '2017-12-13 11:18:25', NULL),
(175, 44, 'Provident suscipit id qui omnis vel.?', 1, '2017-12-13 11:18:25', '2017-12-13 11:18:25', NULL),
(176, 44, 'Sit et eaque perspiciatis facere placeat.?', 1, '2017-12-13 11:18:25', '2017-12-13 11:18:25', NULL),
(177, 45, 'Et impedit dolor occaecati possimus dignissimos.?', 0, '2017-12-13 11:18:26', '2017-12-13 11:18:26', NULL),
(178, 45, 'Et deserunt est non soluta necessitatibus quos.?', 1, '2017-12-13 11:18:26', '2017-12-13 11:18:26', NULL),
(179, 45, 'Aut in quia ducimus sunt provident cupiditate.?', 1, '2017-12-13 11:18:26', '2017-12-13 11:18:26', NULL),
(180, 45, 'Sit ut porro totam sint amet quae.?', 0, '2017-12-13 11:18:26', '2017-12-13 11:18:26', NULL),
(181, 46, 'Nulla ipsam aliquid ut rem.?', 1, '2017-12-13 11:18:26', '2017-12-13 11:18:27', NULL),
(182, 46, 'Reiciendis soluta commodi autem similique.?', 1, '2017-12-13 11:18:26', '2017-12-13 11:18:27', NULL),
(183, 46, 'Maiores in dolor eum voluptas quia repellendus.?', 1, '2017-12-13 11:18:26', '2017-12-13 11:18:27', NULL),
(184, 46, 'Possimus asperiores ad sapiente.?', 1, '2017-12-13 11:18:26', '2017-12-13 11:18:27', NULL),
(185, 47, 'Laborum fugiat incidunt voluptatum hic.?', 1, '2017-12-13 11:18:27', '2017-12-13 11:18:28', NULL),
(186, 47, 'Repellat sed officia nisi.?', 0, '2017-12-13 11:18:27', '2017-12-13 11:18:28', NULL),
(187, 47, 'Quo quos tempora ut aperiam.?', 1, '2017-12-13 11:18:27', '2017-12-13 11:18:28', NULL),
(188, 47, 'Laudantium ut quibusdam expedita.?', 0, '2017-12-13 11:18:27', '2017-12-13 11:18:28', NULL),
(189, 48, 'Placeat hic distinctio voluptatem quasi odit.?', 0, '2017-12-13 11:18:28', '2017-12-13 11:18:28', NULL),
(190, 48, 'Omnis nesciunt rerum et.?', 0, '2017-12-13 11:18:28', '2017-12-13 11:18:28', NULL),
(191, 48, 'Aperiam ab est beatae aut qui.?', 1, '2017-12-13 11:18:28', '2017-12-13 11:18:28', NULL),
(192, 48, 'Saepe impedit veniam asperiores eligendi.?', 1, '2017-12-13 11:18:28', '2017-12-13 11:18:28', NULL),
(193, 49, 'Placeat qui ut ducimus enim et.?', 1, '2017-12-13 11:18:29', '2017-12-13 11:18:29', NULL),
(194, 49, 'Eligendi dolore dolorum non reiciendis.?', 1, '2017-12-13 11:18:29', '2017-12-13 11:18:29', NULL),
(195, 49, 'Aperiam consequuntur magni tenetur et.?', 1, '2017-12-13 11:18:29', '2017-12-13 11:18:30', NULL),
(196, 49, 'Dolorem dolorem dolorum aut eveniet aspernatur.?', 1, '2017-12-13 11:18:29', '2017-12-13 11:18:30', NULL),
(197, 50, 'Quia at rerum ipsa rerum dolor accusantium.?', 0, '2017-12-13 11:18:30', '2017-12-13 11:18:31', NULL),
(198, 50, 'Fuga saepe earum omnis molestiae unde.?', 1, '2017-12-13 11:18:30', '2017-12-13 11:18:31', NULL),
(199, 50, 'Delectus eius illo consequatur.?', 1, '2017-12-13 11:18:30', '2017-12-13 11:18:31', NULL),
(200, 50, 'Atque laboriosam sit ut magnam.?', 0, '2017-12-13 11:18:30', '2017-12-13 11:18:31', NULL),
(201, 51, '2', 1, '2017-12-16 23:43:30', '2017-12-16 23:43:30', NULL),
(202, 51, '4', 0, '2017-12-16 23:43:30', '2017-12-16 23:43:30', NULL),
(203, 51, '1', 0, '2017-12-16 23:43:30', '2017-12-16 23:43:30', NULL),
(204, 51, '5', 0, '2017-12-16 23:43:30', '2017-12-16 23:43:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_test`
--

CREATE TABLE `question_test` (
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_test`
--

INSERT INTO `question_test` (`question_id`, `test_id`) VALUES
(1, 31),
(2, 43),
(3, 24),
(4, 3),
(5, 31),
(6, 2),
(7, 30),
(8, 24),
(9, 6),
(10, 44),
(11, 13),
(12, 4),
(13, 24),
(14, 49),
(15, 20),
(16, 27),
(17, 38),
(18, 16),
(19, 11),
(20, 5),
(21, 16),
(22, 14),
(23, 46),
(24, 26),
(25, 14),
(26, 1),
(27, 25),
(28, 14),
(29, 9),
(30, 26),
(31, 15),
(32, 39),
(33, 23),
(34, 29),
(35, 38),
(36, 23),
(37, 6),
(38, 37),
(39, 18),
(40, 41),
(41, 3),
(42, 14),
(43, 22),
(44, 33),
(45, 10),
(46, 49),
(47, 32),
(48, 29),
(49, 35),
(50, 10),
(51, 51);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2017-12-13 11:17:12', '2017-12-13 11:17:12'),
(2, 'Teacher', '2017-12-13 11:17:12', '2017-12-13 11:17:12'),
(3, 'Student', '2017-12-13 11:17:12', '2017-12-13 11:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(3, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `lesson_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `published` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `course_id`, `lesson_id`, `title`, `description`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, 'Eius sequi omnis consequatur.', NULL, 1, '2017-12-13 11:17:22', '2017-12-13 11:17:23', NULL),
(2, NULL, 2, 'Dolorum nam aut alias ea.', NULL, 1, '2017-12-13 11:17:23', '2017-12-13 11:17:23', NULL),
(3, NULL, 3, 'Mollitia deserunt assumenda eos cum.', NULL, 1, '2017-12-13 11:17:23', '2017-12-13 11:17:23', NULL),
(4, NULL, 4, 'Et adipisci eos et.', NULL, 1, '2017-12-13 11:17:23', '2017-12-13 11:17:23', NULL),
(5, NULL, 5, 'Assumenda aperiam quia dolore non facere dolore.', NULL, 1, '2017-12-13 11:17:23', '2017-12-13 11:17:23', NULL),
(6, NULL, 6, 'Expedita accusamus et harum ea incidunt aut ut.', NULL, 1, '2017-12-13 11:17:24', '2017-12-13 11:17:24', NULL),
(7, NULL, 7, 'Ipsam unde eaque et ad.', NULL, 1, '2017-12-13 11:17:24', '2017-12-13 11:17:24', NULL),
(8, NULL, 8, 'Veniam omnis qui sint quae reiciendis quibusdam.', NULL, 1, '2017-12-13 11:17:24', '2017-12-13 11:17:24', NULL),
(9, NULL, 9, 'Enim fugiat at sunt unde et quasi in.', NULL, 1, '2017-12-13 11:17:24', '2017-12-13 11:17:25', NULL),
(10, NULL, 10, 'Et fuga est totam dignissimos quod molestias ex.', NULL, 1, '2017-12-13 11:17:25', '2017-12-13 11:17:25', NULL),
(11, NULL, 11, 'Aspernatur ratione et ipsa magni quia quia ipsum.', NULL, 1, '2017-12-13 11:17:27', '2017-12-13 11:17:28', NULL),
(12, NULL, 12, 'Ad vitae minima harum.', NULL, 1, '2017-12-13 11:17:28', '2017-12-13 11:17:28', NULL),
(13, NULL, 13, 'Ut architecto labore et debitis non.', NULL, 1, '2017-12-13 11:17:28', '2017-12-13 11:17:28', NULL),
(14, NULL, 14, 'Odio ut maxime possimus et sed.', NULL, 1, '2017-12-13 11:17:28', '2017-12-13 11:17:28', NULL),
(15, NULL, 15, 'Et ut nostrum nulla deleniti.', NULL, 1, '2017-12-13 11:17:29', '2017-12-13 11:17:29', NULL),
(16, NULL, 16, 'Eius minima reprehenderit non quasi.', NULL, 1, '2017-12-13 11:17:29', '2017-12-13 11:17:29', NULL),
(17, NULL, 17, 'Eum doloribus inventore porro aut enim ad quia.', NULL, 1, '2017-12-13 11:17:29', '2017-12-13 11:17:29', NULL),
(18, NULL, 18, 'Quaerat voluptatem distinctio quia qui.', NULL, 1, '2017-12-13 11:17:29', '2017-12-13 11:17:30', NULL),
(19, NULL, 19, 'Corrupti assumenda impedit quae amet.', NULL, 1, '2017-12-13 11:17:30', '2017-12-13 11:17:30', NULL),
(20, NULL, 20, 'Blanditiis sunt libero provident a.', NULL, 1, '2017-12-13 11:17:30', '2017-12-13 11:17:30', NULL),
(21, NULL, 21, 'Aut ea ut quasi odio.', NULL, 1, '2017-12-13 11:17:32', '2017-12-13 11:17:32', NULL),
(22, NULL, 22, 'Quis fugit nulla eveniet nihil.', NULL, 1, '2017-12-13 11:17:32', '2017-12-13 11:17:32', NULL),
(23, NULL, 23, 'Ea dolorem molestiae non placeat.', NULL, 1, '2017-12-13 11:17:32', '2017-12-13 11:17:32', NULL),
(24, NULL, 24, 'Id mollitia deserunt corporis qui vel.', NULL, 1, '2017-12-13 11:17:32', '2017-12-13 11:17:33', NULL),
(25, NULL, 25, 'Tenetur soluta sit quia nulla.', NULL, 1, '2017-12-13 11:17:33', '2017-12-13 11:17:33', NULL),
(26, NULL, 26, 'Nihil amet corporis sed sapiente magnam.', NULL, 1, '2017-12-13 11:17:33', '2017-12-13 11:17:33', NULL),
(27, NULL, 27, 'Eligendi quis sunt aperiam est eveniet.', NULL, 1, '2017-12-13 11:17:33', '2017-12-13 11:17:33', NULL),
(28, NULL, 28, 'Dolorem recusandae rerum esse deserunt.', NULL, 1, '2017-12-13 11:17:33', '2017-12-13 11:17:33', NULL),
(29, NULL, 29, 'Eius aut dolores laboriosam qui autem ea ab.', NULL, 1, '2017-12-13 11:17:33', '2017-12-13 11:17:33', NULL),
(30, NULL, 30, 'Doloribus error consequuntur aliquam.', NULL, 1, '2017-12-13 11:17:33', '2017-12-13 11:17:33', NULL),
(31, NULL, 31, 'Hic qui autem vel id rerum ducimus eos.', NULL, 1, '2017-12-13 11:17:35', '2017-12-13 11:17:35', NULL),
(32, NULL, 32, 'Est perspiciatis qui commodi quae magni sed.', NULL, 1, '2017-12-13 11:17:35', '2017-12-13 11:17:35', NULL),
(33, NULL, 33, 'Soluta esse sunt tempora eveniet.', NULL, 1, '2017-12-13 11:17:36', '2017-12-13 11:17:36', NULL),
(34, NULL, 34, 'Consequatur nisi rem eaque placeat quasi.', NULL, 1, '2017-12-13 11:17:36', '2017-12-13 11:17:36', NULL),
(35, NULL, 35, 'Dolores quia a quia illum rerum qui.', NULL, 1, '2017-12-13 11:17:36', '2017-12-13 11:17:36', NULL),
(36, NULL, 36, 'Quis similique non at eaque sit qui.', NULL, 1, '2017-12-13 11:17:36', '2017-12-13 11:17:36', NULL),
(37, NULL, 37, 'Ut facere neque et.', NULL, 1, '2017-12-13 11:17:36', '2017-12-13 11:17:36', NULL),
(38, NULL, 38, 'Quia beatae dolor aliquam eligendi reprehenderit.', NULL, 1, '2017-12-13 11:17:36', '2017-12-13 11:17:36', NULL),
(39, NULL, 39, 'Eius magnam qui adipisci voluptatum sed dicta.', NULL, 1, '2017-12-13 11:17:36', '2017-12-13 11:17:37', NULL),
(40, NULL, 40, 'Adipisci atque soluta beatae consectetur ea.', NULL, 1, '2017-12-13 11:17:37', '2017-12-13 11:17:37', NULL),
(41, NULL, 41, 'Sequi minus id dolore consequatur.', NULL, 1, '2017-12-13 11:17:39', '2017-12-13 11:17:39', NULL),
(42, NULL, 42, 'Est illum laudantium omnis aliquam nobis.', NULL, 1, '2017-12-13 11:17:39', '2017-12-13 11:17:40', NULL),
(43, NULL, 43, 'Itaque ducimus eaque vel.', NULL, 1, '2017-12-13 11:17:40', '2017-12-13 11:17:40', NULL),
(44, NULL, 44, 'Est delectus quam et quis.', NULL, 1, '2017-12-13 11:17:40', '2017-12-13 11:17:40', NULL),
(45, NULL, 45, 'Ut sint et qui.', NULL, 1, '2017-12-13 11:17:40', '2017-12-13 11:17:40', NULL),
(46, NULL, 46, 'Est ducimus quod ipsa est.', NULL, 1, '2017-12-13 11:17:41', '2017-12-13 11:17:41', NULL),
(47, NULL, 47, 'Culpa rerum quas modi eum minima nulla.', NULL, 1, '2017-12-13 11:17:41', '2017-12-13 11:17:41', NULL),
(48, NULL, 48, 'Dolores ut neque maiores repudiandae quis.', NULL, 1, '2017-12-13 11:17:41', '2017-12-13 11:17:41', NULL),
(49, NULL, 49, 'Nihil ullam consectetur voluptatibus sint.', NULL, 1, '2017-12-13 11:17:41', '2017-12-13 11:17:41', NULL),
(50, NULL, 50, 'Minus dolor aliquid tempore quod deserunt non.', NULL, 1, '2017-12-13 11:17:41', '2017-12-13 11:17:42', NULL),
(51, 6, 51, 'Tes Maateri 1', 'sulit banget coy', 1, '2017-12-16 23:41:58', '2017-12-16 23:41:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests_results`
--

CREATE TABLE `tests_results` (
  `id` int(10) UNSIGNED NOT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `test_result` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests_results`
--

INSERT INTO `tests_results` (`id`, `test_id`, `user_id`, `test_result`, `created_at`, `updated_at`) VALUES
(1, 25, NULL, 1, '2017-12-14 00:36:16', '2017-12-14 00:36:16'),
(2, 51, 2, 0, '2017-12-17 00:00:35', '2017-12-17 00:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `tests_results_answers`
--

CREATE TABLE `tests_results_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `tests_result_id` int(10) UNSIGNED DEFAULT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `option_id` int(10) UNSIGNED DEFAULT NULL,
  `correct` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests_results_answers`
--

INSERT INTO `tests_results_answers` (`id`, `tests_result_id`, `question_id`, `option_id`, `correct`, `created_at`, `updated_at`) VALUES
(1, 1, 27, 105, 1, '2017-12-14 00:36:16', '2017-12-14 00:36:16'),
(2, 2, 51, 202, 0, '2017-12-17 00:00:35', '2017-12-17 00:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$l4MghrLnKXTRUDlR07XQeesKHRIaAe7WzDf90g751BEf70AwnJ5m.', 'voaNSoBFQk7jcUueEZhu03IiDMRPmF9AXRVLIUNskBn3yXq8zBoWDQWFz6gq', '2017-12-13 11:17:12', '2017-12-13 11:17:12'),
(2, 'lio', 'lio@gmail.com', '$2y$10$ht.xPfe5w8Ryi0Tnnbo3aOAi3rffmeAWyGNr2BE3UhGVJj3d9IgZy', 'jpBfQho3tmOmTcodZItTpBpEOEU9lWXhb06GzlrP8hCsPrwSCsdNLWSarn2g', '2017-12-14 00:37:31', '2017-12-14 00:37:31'),
(3, 'guru', 'guru@guru.com', '$2y$10$Q0.5MwZo7XG8fi3FsDFl7ekZbL4y6ipWjDm0CCCt2LVgTf4EePUS2', 'p818Fdg0Plq2CGczRwCWh82iuNQHT7QkzMI7ISW5IBPiECYFWqCVIcwazipz', '2017-12-16 23:37:31', '2017-12-16 23:37:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `course_student`
--
ALTER TABLE `course_student`
  ADD KEY `course_student_course_id_foreign` (`course_id`),
  ADD KEY `course_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD KEY `fk_p_54418_54417_user_cou_596eece522b73` (`course_id`),
  ADD KEY `fk_p_54417_54418_course_u_596eece522bee` (`user_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54419_596eedbb6686e` (`course_id`),
  ADD KEY `lessons_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD KEY `lesson_student_lesson_id_foreign` (`lesson_id`),
  ADD KEY `lesson_student_user_id_foreign` (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `fk_p_54415_54416_role_per_596eec08308d0` (`permission_id`),
  ADD KEY `fk_p_54416_54415_permissi_596eec0830986` (`role_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `questions_options`
--
ALTER TABLE `questions_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54421_596eee8745a1e` (`question_id`),
  ADD KEY `questions_options_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `question_test`
--
ALTER TABLE `question_test`
  ADD KEY `fk_p_54420_54422_test_que_596eeef70992f` (`question_id`),
  ADD KEY `fk_p_54422_54420_question_596eeef7099af` (`test_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `fk_p_54416_54417_user_rol_596eec0af3746` (`role_id`),
  ADD KEY `fk_p_54417_54416_role_use_596eec0af37c1` (`user_id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `54422_596eeef514d00` (`course_id`),
  ADD KEY `54422_596eeef53411a` (`lesson_id`),
  ADD KEY `tests_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `tests_results`
--
ALTER TABLE `tests_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_results_test_id_foreign` (`test_id`),
  ADD KEY `tests_results_user_id_foreign` (`user_id`);

--
-- Indexes for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_results_answers_tests_result_id_foreign` (`tests_result_id`),
  ADD KEY `tests_results_answers_question_id_foreign` (`question_id`),
  ADD KEY `tests_results_answers_option_id_foreign` (`option_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `questions_options`
--
ALTER TABLE `questions_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `tests_results`
--
ALTER TABLE `tests_results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_student`
--
ALTER TABLE `course_student`
  ADD CONSTRAINT `course_student_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `fk_p_54417_54418_course_u_596eece522bee` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54418_54417_user_cou_596eece522b73` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `54419_596eedbb6686e` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_student`
--
ALTER TABLE `lesson_student`
  ADD CONSTRAINT `lesson_student_lesson_id_foreign` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_student_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `fk_p_54415_54416_role_per_596eec08308d0` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54416_54415_permissi_596eec0830986` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions_options`
--
ALTER TABLE `questions_options`
  ADD CONSTRAINT `54421_596eee8745a1e` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `question_test`
--
ALTER TABLE `question_test`
  ADD CONSTRAINT `fk_p_54420_54422_test_que_596eeef70992f` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54422_54420_question_596eeef7099af` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_p_54416_54417_user_rol_596eec0af3746` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_54417_54416_role_use_596eec0af37c1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `54422_596eeef514d00` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `54422_596eeef53411a` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests_results`
--
ALTER TABLE `tests_results`
  ADD CONSTRAINT `tests_results_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tests_results_answers`
--
ALTER TABLE `tests_results_answers`
  ADD CONSTRAINT `tests_results_answers_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `questions_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_results_answers_tests_result_id_foreign` FOREIGN KEY (`tests_result_id`) REFERENCES `tests_results` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
