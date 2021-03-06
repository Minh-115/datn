-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jun 14, 2022 at 10:19 AM
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
-- Database: `datn`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Asama', 0, 'asama', '2022-06-13 06:51:25', '2022-06-13 06:51:25'),
(2, 'Java', 0, 'java', '2022-06-13 06:51:31', '2022-06-13 06:51:31'),
(3, 'Spear', 0, 'spear', '2022-06-13 06:51:38', '2022-06-13 06:51:38'),
(4, 'Camp', 0, 'camp', '2022-06-13 06:52:10', '2022-06-13 06:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `password`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'r', 'minhquangpham502@gmail.com', '202cb962ac59075b964b07152d234b70', 'r', NULL, NULL),
(2, 'Minh', 'minhquangpham500@gmail.com', '0cc175b9c0f1b6a831c399e269772661', 'a', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_20_080531_create_categories_table', 1),
(6, '2022_02_21_091330_create_menus_table', 1),
(7, '2022_02_21_132712_add_column_slug_to_menus_table', 1),
(8, '2022_02_22_072704_create_products_table', 1),
(9, '2022_02_22_072919_create_product_images_table', 1),
(10, '2022_02_22_073023_create_tags_table', 1),
(11, '2022_02_22_073107_create_product_tags_table', 1),
(12, '2022_02_22_124215_add_column_feature_image_name', 1),
(13, '2022_02_22_130242_add_column_image_name_to_table_product_image', 1),
(14, '2022_04_28_061752_create_sliders_table', 1),
(15, '2022_05_23_013910_create_shippings_table', 1),
(16, '2022_05_23_143742_create_customers_table', 1),
(17, '2022_05_25_013521_create_payments_table', 1),
(18, '2022_05_26_062122_create_comments_table', 1),
(19, '2022_06_01_020321_create_posts_table', 1),
(20, '2022_06_10_141647_create_orders_table', 1),
(21, '2022_06_10_141714_create_order_details_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '12,000,000.00', '???? giao', NULL, '2022-06-10 08:15:45'),
(2, 2, 2, '2', '14,000,000.00', '??ang ch??? x??? l??', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'fashion', '12000000', 1, NULL, NULL),
(2, 2, 7, 'MARUISHI HNA 2733', '14000000', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'Th??? ATM', '??ang ch??? x??? l??', NULL, NULL),
(2, 'Thanh to??n VNPay', '??ang ch??? x??? l??', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_title`, `post_content`, `post_desc`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'COVID-19 V?? NH???NG L??U ?? KHI ?????P XE NGO??I TR???I', '<h2><a href=\"javascript:void(0)\">COVID-19 V&Agrave; NH???NG L??U &Yacute; KHI ?????P XE NGO&Agrave;I TR???I</a></h2>\r\n\r\n<h2>1. V??? sinh chi???c xe c???a b???n</h2>\r\n\r\n<p>Sau m???t bu???i t???p luy???n ?????p xe ngo&agrave;i tr???i ch???c h???n xe c???a b???n c??ng ??&atilde; ??i qua c&aacute;c ??o???n ???????ng n?????c, b&ugrave;n l???y, ?????t ??&aacute;,&hellip;Nh???ng vi???c ??&oacute; khi???n chi???c xe c???a b???n ??&atilde; b??? b???n ??i ph???n n&agrave;o.</p>\r\n\r\n<p>V??? sinh chi???c xe c???a b???n sau c&aacute;c bu???i ?????p xe ngo&agrave;i tr???i ????? ch???c ch???n r???ng n&oacute; lu&ocirc;n s???ch s??? v&agrave; tr&aacute;nh nguy c?? l&acirc;y nhi???m.</p>\r\n\r\n<p>V??? sinh chi???c xe ?????p c???a m&igrave;nh kh&ocirc;ng ch??? ng??n ng???a virus m&agrave; c&ograve;n l&agrave;m cho xe c???a m&igrave;nh ?????p v&agrave; th???m m??? h??n.</p>\r\n\r\n<h2>2. H???n ch??? t??? t???p</h2>\r\n\r\n<p>H???n ch??? t??? t???p v&agrave; ?????p xe ??? ch??? ??&ocirc;ng ng?????i, h???n ch??? ?????p xe theo nh&oacute;m trong th???i gian n&agrave;y ????? gi???m ??i s??? ti???p x&uacute;c qua l???i v???i nhau v&agrave; gi??? kho???ng c&aacute;ch an to&agrave;n v???i ng?????i kh&aacute;c.</p>\r\n\r\n<p>B???n n&ecirc;n ?????p xe m???t m&igrave;nh v&agrave;o bu???i s&aacute;ng ho???c bu???i t???i. Vi???c ?????p xe m???t m&igrave;nh s??? mang ?????n cho b???n nhi???u tr???i nghi???m th&uacute; v???, ?????c bi???t ?????p xe m???t m&igrave;nh v???a gi&uacute;p b???n gi???m thi???u s??? ti???p x&uacute;c v???i m???i ng?????i khi th??? thao. Ngo&agrave;i ra, ?????p xe m???t m&igrave;nh b???n c&oacute; th??? t??? l???a ch???n chuy???n ??i cho m&igrave;nh, kh&ocirc;ng c???n ph???i t??ng t???c ch???y theo m???t ai ??&oacute;. Kh&ocirc;ng c???n ph???i tr&ograve; chuy???n v???i b???t c??? ai, h&atilde;y ????? suy ngh?? c???a b???n tr&ocirc;i theo d&ograve;ng ch???y m???t c&aacute;ch t??? nhi&ecirc;n nh???t.</p>\r\n\r\n<p>??&ocirc;i khi, c??? ????? suy ngh?? c???a b???n nh?? v???y sau 1 th???i gian d&agrave;i l&agrave;m vi???c gi&uacute;p b???n ph???n ch???n h??n, gi???i tr&iacute; v&agrave; vui v??? h??n. ?????c bi???t gi???m b???t s??? c??ng th???ng.</p>\r\n\r\n<ul>\r\n	<li><img alt=\"\" src=\"https://giant.vn/wp-content/uploads/2020/03/blog-3.jpg\" /></li>\r\n</ul>\r\n\r\n<h2>3. Chu???n b??? ????? d&ugrave;ng v??? sinh c&aacute; nh&acirc;n</h2>\r\n\r\n<p>Lu&ocirc;n trang b??? cho m&igrave;nh m???t chi???c kh???u trang kh&aacute;ng khu???n, n?????c r???a tay s&aacute;t khu???n ????? s??? d???ng khi c???n thi???t. B???n y&ecirc;n t&acirc;m v&igrave; vi???c ??eo kh???u trang s??? kh&ocirc;ng ???nh h?????ng qu&aacute; nhi???u t???i vi???c ?????p xe, t???p luy???n c???a b???n.</p>\r\n\r\n<ul>\r\n	<li><img alt=\"\" src=\"https://giant.vn/wp-content/uploads/2020/03/blog-2.jpg\" /></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'Sau m???t bu???i t???p luy???n ?????p xe ngo??i tr???i ch???c h???n xe c???a b???n c??ng ???? ??i qua c??c ??o???n ???????ng n?????c, b??n l???y, ?????t ????,???Nh???ng vi???c ???? khi???n chi???c xe c???a b???n ???? b??? b???n ??i ph???n n??o.', '/storage/post/1/MgKvAl5lwd3JThq4F9LE.webp', '2022-06-14 00:45:07', '2022-06-14 00:45:07'),
(2, 'COVID-19 N??Y, ?????P XE M???T M??NH C?? CH??N NH?? B???N NGH???', '<h2><a href=\"javascript:void(0)\">COVID-19 N&Agrave;Y, ?????P XE M???T M&Igrave;NH C&Oacute; CH&Aacute;N NH?? B???N NGH???</a></h2>\r\n\r\n<h2>1. B???n c&oacute; th??? ??i ?????n n??i b???n mu???n</h2>\r\n\r\n<p>Khi b???n ??i m???t m&igrave;nh, b???n ch??? c???n ngh?? v??? b???n th&acirc;n v&agrave; kh&ocirc;ng ph??? thu???c v&agrave;o c&aacute;c cung ???????ng v???i nh???ng ng?????i kh&aacute;c ??i c&ugrave;ng. B???n s??? kh&ocirc;ng c???n ph???i b??? l??? m???t l???n leo d???c m&agrave; b???n ??&atilde; t???ng th&iacute;ch nh??ng ng?????i b???n ??i c&ugrave;ng l???i kh&ocirc;ng ??i???u ??&oacute;.</p>\r\n\r\n<p>??i???u ?????c bi???t h??n l&agrave; b???n c&oacute; th??? ??i theo t???c ????? c???a b???n mu???n, c&oacute; th??? ho&agrave;n th&agrave;nh cung ???????ng ??&oacute; th???t nhanh m&agrave; ch???ng b??? ph??? thu???c v&agrave;o ai. Kh&ocirc;ng c???n ch??? ?????i, kh&ocirc;ng c???n ph???i h???i &yacute; ki???n cho c&aacute;c ch???ng ???????ng ti???p theo, vi???c ????n gi???n l&agrave; b???n c&oacute; th??? ??i theo c&aacute;ch m&igrave;nh mu???n.</p>\r\n\r\n<h2>2. B???n c&oacute; th??? ??i khi n&agrave;o b???n mu???n</h2>\r\n\r\n<p>M???t trong nh???ng ??i???u t???i t??? nh???t khi ??i xe ?????p theo nh&oacute;m l&agrave; ch??? ?????i m???i ng?????i xu???t hi???n. Lu&ocirc;n lu&ocirc;n c&oacute; m???t v&agrave;i l&iacute; do n&agrave;o ??&oacute; l&agrave;m nh&oacute;m t???p h???p l&acirc;u h??n so v???i th???i gian ??&atilde; l&ecirc;n k??? ho???ch tr?????c ??&oacute;.</p>\r\n\r\n<p>??i xe m???t m&igrave;nh c&oacute; ngh??a l&agrave; b???n c&oacute; th??? thay ?????i, ch??? ?????ng th???i gian, ch??? ?????ng l&ecirc;n k??? ho???ch m&agrave; kh&ocirc;ng b??? b&aacute;c b??? &yacute; ki???n khi m???i ng?????i trong nh&oacute;m kh&ocirc;ng th&iacute;ch. ????n gi???n l&agrave; b???n ch??? c???n chu???n b??? m???i th??? v&agrave; kh???i h&agrave;nh khi b???n r???nh m&agrave; kh&ocirc;ng c???n ch??? ?????i m???t ai.</p>\r\n\r\n<p>N&oacute; th???m ch&iacute; c&ograve;n t??? h??n n???u b???n c&oacute; k??? ho???ch h???n g???p nhau ??? ??&acirc;u ??&oacute; tr&ecirc;n ???????ng, b???i v&igrave; b???n bi???t r???ng h??? s??? t???i tr??? v&agrave; b???n s??? kh&ocirc;ng mu???n ch??? trong m???t th???i gian d&agrave;i, ?????ng th???i b???n c??ng kh&ocirc;ng ???????c ?????n mu???n.</p>\r\n\r\n<p>V&igrave; v???y ??i xe m???t m&igrave;nh, c&oacute; ngh??a l&agrave; b???n c&oacute; th??? ra ngo&agrave;i b???t c??? l&uacute;c n&agrave;o b???n mu???n v&agrave; c??? ti???p t???c ?????p t??? khi b???n r???i kh???i nh&agrave;.</p>\r\n\r\n<h2>3. B???n c&oacute; th??? d???ng l???i bao nhi&ecirc;u l???n t&ugrave;y &yacute;</h2>\r\n\r\n<p><img alt=\"\" src=\"https://giant.vn/wp-content/uploads/2020/04/cover2.jpg\" /></p>\r\n\r\n<p>C&oacute; m???t c???nh quan tuy???t ?????p ho???c m???t khung c???nh ??&aacute;ng y&ecirc;u m&agrave; b???n mu???n ch???p l???i ????? l??u gi???. B???n mu???n ki???m tra xem b???n ??&atilde; ??i ???????c ??? ??&acirc;u tr&ecirc;n tr&aacute;i ?????t n&agrave;y? Qu&aacute; m???t m???i ????? ??i ti???p? ??&oacute; l&agrave; t???t c??? t???t ?????p khi b???n l&agrave;m m???t m&igrave;nh.</p>\r\n\r\n<p>B???n s??? kh&ocirc;ng gi??? ai khi b???n ??i m???t m&igrave;nh v&agrave; kh&ocirc;ng ai quan t&acirc;m n???u b???n d???ng l???i 10 l???n tr&ecirc;n chuy???n ??i ????? t???n h?????ng c&aacute;c khung c???nh. Tuy nhi&ecirc;n, n???u b???n l&agrave;m ??i???u ??&oacute; trong m???t chuy???n ?????p xe theo nh&oacute;m. Ch???c h???n m???i ng?????i ?????u s??? c???m th???y kh&oacute; ch???u, tr??? khi nh???ng ng?????i ??&oacute; c&oacute; c&ugrave;ng s??? th&iacute;ch gi???ng b???n.</p>\r\n\r\n<h2>4. N&oacute; d??? d&agrave;ng h??n ????? g???n b&oacute; v???i m???t k??? ho???ch ??&atilde; l&ecirc;n t??? tr?????c</h2>\r\n\r\n<p>N???u b???n c&oacute; k??? ho???ch ??&agrave;o t???o m&agrave; b???n mu???n th???c hi???n ho???c ??ang tham gia m???t th??? th&aacute;ch nh?? CW5000, th&igrave; d&ugrave; sao b???n c??ng c&oacute; th??? mu???n th???c hi???n n&oacute;, tr??? khi nh&oacute;m c???a b???n ?????u theo c&ugrave;ng m???t m???c ti&ecirc;u v&agrave; t???t c??? ?????u h?????ng ?????n M???t m???c ti&ecirc;u, ??&oacute; s??? l&agrave; b???t th?????ng.</p>\r\n\r\n<p>T???t c??? s??? hu???n luy???n t???t ?????u xu???t ph&aacute;t t??? m???t k??? ho???ch v&agrave; n???u b???n ??ang th???c hi???n m???t k??? ho???ch kh&aacute;c v???i nh???ng ng?????i trong nh&oacute;m c???a m&igrave;nh th&igrave; m???i th??? c&oacute; th??? tr??? n&ecirc;n r???i r???c.</p>\r\n\r\n<p>N???u b???n mu???n t???p trung v&agrave; vi???c ph&acirc;n chia kho???ng th???i gian, th&igrave; vi???c t??? m&igrave;nh ?????p xe ch???c ch???n l&agrave; c&aacute;ch t???t nh???t. H&atilde;y ng???i xu???ng v&agrave; t???t c??? s??? l&ecirc;n th&agrave;nh m???t k??? ho???ch ho&agrave;n ch???nh.</p>\r\n\r\n<h2>5. N&oacute; cho b???n th???i gian ????? suy ngh??</h2>\r\n\r\n<p><img alt=\"\" src=\"https://giant.vn/wp-content/uploads/2020/04/flo-karr-nCj0zBLIaAk-unsplash.jpg\" /></p>\r\n\r\n<p>??&acirc;y ph???i l&agrave; m???t trong nh???ng ph???n th?????ng l???n nh???t khi ??i m???t m&igrave;nh, n&oacute; cho b???n th???i gian ????? th???c s??? x??? h??i ho???c ????? t??? m&igrave;nh v?????t qua m???i th??? v&agrave; gi???i t???a t&acirc;m tr&iacute; c???a b???n kh???i b???t c??? ??i???u g&igrave; ??&atilde; x???y ra v???i b???n trong nhi???u tu???n ho???c nhi???u th&aacute;ng tr?????c ??&oacute;.</p>\r\n\r\n<p>M???c d&ugrave; ??i theo nh&oacute;m l&agrave; tuy???t v???i ????? giao ti???p x&atilde; h???i, tr&ograve; chuy???n li&ecirc;n t???c c&oacute; th??? c???n tr??? b???n th???c s??? t???n h?????ng, ??&ocirc;i khi ??&oacute; l&agrave; t???t c??? nh???ng g&igrave; b???n mu???n l&agrave;m tr&ecirc;n m???t chuy???n ??i.</p>\r\n\r\n<h2>6. B???n s??? kh&ocirc;ng th??? b??? b??? r??i</h2>\r\n\r\n<p>M???t trong nh???ng c???m gi&aacute;c t???i t??? nh???t l&agrave; khi b???n b??? b???n b&egrave; b??? r??i. B???n ngh?? m&igrave;nh ??i h???t s???c r???i, nh??ng n&oacute; v???n ch??a l&agrave; g&igrave; so v???i ng?????i ??i c&ugrave;ng v???i b???n. C&oacute; khi b???n nh&igrave;n l&ecirc;n th&igrave; m???i ng?????i ??&atilde; l&ecirc;n t???i ?????nh v&agrave; ??ang nh&igrave;n xu???ng.</p>\r\n\r\n<p>C&ograve;n khi t??? m&igrave;nh ?????p xe, s??? kh&ocirc;ng c&oacute; ai ph???i ?????i b???n ????? b???t k???p m???i l&uacute;c. N???u b???n l&agrave; m???t ng?????i ?????p xe ch???m th&igrave; vi???c mu???n v??? nh&agrave; l&uacute;c n&agrave;o m&agrave; ch???ng ???????c v&agrave; chuy???n g&igrave; x???y ra th&igrave; c??ng ch??? c&oacute; b???n bi???t m&agrave; th&ocirc;i. C??ng ch???ng c&oacute; ai b??? b???n l???i ph&iacute;a sau c???.</p>\r\n\r\n<h2>7. B???n c&oacute; th??? t??? b??? khi b???n mu???n</h2>', 'Khi b???n ??i m???t m??nh, b???n ch??? c???n ngh?? v??? b???n th??n v?? kh??ng ph??? thu???c v??o c??c cung ???????ng v???i nh???ng ng?????i kh??c ??i c??ng. B???n s??? kh??ng c???n ph???i b??? l??? m???t l???n leo d???c m?? b???n ???? t???ng th??ch nh??ng ng?????i b???n ??i c??ng l???i kh??ng ??i???u ????.', '/storage/post/1/K5Zpn40NkdMu4SCcix9U.webp', '2022-06-14 00:45:59', '2022-06-14 00:45:59');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`) VALUES
(2, 'JAVA VETTA 30S', '12000000', '/storage/product/1/8KEGMJiLNHsbttiM6lWC.webp', 'JAVA VETTA 30S', 1, 2, '2022-06-13 06:52:50', '2022-06-13 06:52:50', 'JAVA VETTA 30S.webp'),
(3, 'ASAMA FLOW 6 24\'\'.', '1000000', '/storage/product/1/1bimVUegvpj3OcFx8fMt.webp', 'ASAMA FLOW 6 24\'\'.', 1, 1, '2022-06-13 06:53:32', '2022-06-13 06:53:32', 'ASAMA FLOW 6 24\'\'.webp'),
(4, 'CAMP DARE', '9000000', '/storage/product/1/IXD6claFALUtyZcoKXyr.webp', 'CAMP DARE', 1, 4, '2022-06-13 06:54:03', '2022-06-13 06:55:48', 'CAMP DARE.webp'),
(5, 'CAMP FENIX 2.0', '2000000', '/storage/product/1/AssXPXMpMRiMP67c9KOH.webp', 'CAMP FENIX 2.0', 1, 4, '2022-06-13 06:54:34', '2022-06-13 06:55:39', 'CAMP FENIX 2.0.webp'),
(6, 'SPEAR 7007-SP7', '8000000', '/storage/product/1/jd1miDSEbYrQLoFVmWck.webp', 'SPEAR 7007-SP7', 1, 3, '2022-06-13 06:55:29', '2022-06-13 06:55:29', 'SPEAR 7007-SP7.webp'),
(7, 'MARUISHI HNA 2733', '14000000', '/storage/product/1/xybfmypRQ5Vl0j6yzyAt.webp', 'MARUISHI HNA 2733', 1, 1, '2022-06-13 06:57:55', '2022-06-13 06:57:55', 'MARUISHI HNA 2733.webp');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(1, '/storage/product/1/gZow85cEUEVQu1MIY64x.webp', 1, '2022-06-10 08:14:47', '2022-06-10 08:14:47', 'JAVA VETTA 30S_2.webp'),
(2, '/storage/product/1/SiP2a8zIUGUaiDd542FY.webp', 2, '2022-06-13 06:52:50', '2022-06-13 06:52:50', 'JAVA VETTA 30S_1.webp'),
(3, '/storage/product/1/IXd1OpH2izKS4xHfBqJn.webp', 3, '2022-06-13 06:53:32', '2022-06-13 06:53:32', 'ASAMA FLOW 6 2601.webp'),
(4, '/storage/product/1/yYbNsy89gdAXiEb0a2Py.webp', 4, '2022-06-13 06:54:03', '2022-06-13 06:54:03', 'CAMP DARE_2.webp'),
(5, '/storage/product/1/ngctzsGcVIDCw7DQL51o.webp', 5, '2022-06-13 06:54:34', '2022-06-13 06:54:34', 'CAMP FENIX 2.0_1.webp'),
(6, '/storage/product/1/OFpCq2717STkBoDOlAV5.webp', 6, '2022-06-13 06:55:29', '2022-06-13 06:55:29', 'SPEAR 7007-SP7_1.webp'),
(7, '/storage/product/1/dvW7CKKsFf1nWES0FfLc.webp', 7, '2022-06-13 06:57:55', '2022-06-13 06:57:55', 'MARUISHI HNA 27331.webp');

-- --------------------------------------------------------

--
-- Table structure for table `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-06-10 08:14:47', '2022-06-10 08:14:47'),
(2, 2, 2, '2022-06-13 06:52:50', '2022-06-13 06:52:50'),
(3, 3, 3, '2022-06-13 06:53:32', '2022-06-13 06:53:32'),
(4, 4, 4, '2022-06-13 06:54:03', '2022-06-13 06:54:03'),
(5, 5, 4, '2022-06-13 06:54:34', '2022-06-13 06:54:34'),
(6, 6, 5, '2022-06-13 06:55:29', '2022-06-13 06:55:29'),
(7, 7, 6, '2022-06-13 06:57:55', '2022-06-13 06:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `shipping_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`shipping_id`, `name`, `email`, `phone`, `address`, `note`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'r??er', '??er', '??erqeqw', 'q??e', '??q', 1, NULL, NULL),
(2, 'q', 'q', '123', 'rt', 'q', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'r', '2022-06-10 08:14:47', '2022-06-10 08:14:47'),
(2, 't', '2022-06-13 06:52:50', '2022-06-13 06:52:50'),
(3, 'asama', '2022-06-13 06:53:32', '2022-06-13 06:53:32'),
(4, 'Camp', '2022-06-13 06:54:03', '2022-06-13 06:54:03'),
(5, 'spear', '2022-06-13 06:55:29', '2022-06-13 06:55:29'),
(6, 'MARUISHI HNA 2733', '2022-06-13 06:57:55', '2022-06-13 06:57:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Minh', 'minhquangpham502@gmail.com', 'admin', '$2y$10$ow8QD4Uz.eV47pdgGEaVteaKq9IGozOhLN4/9mJknRaS41DM4vmaW', NULL, '2022-06-10 08:14:19', '2022-06-10 08:14:19'),
(3, 'SSSS', 'minhquangpham500@gmail.com', 'staff', '$2y$10$BygFu5qJTp4CcB2n1ugo3uRVXARVUg6HCqWDWqxbfvGWxZZMhfxIK', NULL, '2022-06-13 07:14:23', '2022-06-13 07:14:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `shipping_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
