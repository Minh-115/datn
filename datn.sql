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
(1, 1, 1, '1', '12,000,000.00', 'Đã giao', NULL, '2022-06-10 08:15:45'),
(2, 2, 2, '2', '14,000,000.00', 'Đang chờ xử lý', NULL, NULL);

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
(1, 'Thẻ ATM', 'Đang chờ xử lý', NULL, NULL),
(2, 'Thanh toán VNPay', 'Đang chờ xử lý', NULL, NULL);

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
(1, 'COVID-19 VÀ NHỮNG LƯU Ý KHI ĐẠP XE NGOÀI TRỜI', '<h2><a href=\"javascript:void(0)\">COVID-19 V&Agrave; NHỮNG LƯU &Yacute; KHI ĐẠP XE NGO&Agrave;I TRỜI</a></h2>\r\n\r\n<h2>1. Vệ sinh chiếc xe của bạn</h2>\r\n\r\n<p>Sau một buổi tập luyện đạp xe ngo&agrave;i trời chắc hẳn xe của bạn cũng đ&atilde; đi qua c&aacute;c đoạn đường nước, b&ugrave;n lầy, đất đ&aacute;,&hellip;Những việc đ&oacute; khiến chiếc xe của bạn đ&atilde; bị bẩn đi phần n&agrave;o.</p>\r\n\r\n<p>Vệ sinh chiếc xe của bạn sau c&aacute;c buổi đạp xe ngo&agrave;i trời để chắc chắn rằng n&oacute; lu&ocirc;n sạch sẽ v&agrave; tr&aacute;nh nguy cơ l&acirc;y nhiễm.</p>\r\n\r\n<p>Vệ sinh chiếc xe đạp của m&igrave;nh kh&ocirc;ng chỉ ngăn ngừa virus m&agrave; c&ograve;n l&agrave;m cho xe của m&igrave;nh đẹp v&agrave; thẩm mỹ hơn.</p>\r\n\r\n<h2>2. Hạn chế tụ tập</h2>\r\n\r\n<p>Hạn chế tụ tập v&agrave; đạp xe ở chỗ đ&ocirc;ng người, hạn chế đạp xe theo nh&oacute;m trong thời gian n&agrave;y để giảm đi sự tiếp x&uacute;c qua lại với nhau v&agrave; giữ khoảng c&aacute;ch an to&agrave;n với người kh&aacute;c.</p>\r\n\r\n<p>Bạn n&ecirc;n đạp xe một m&igrave;nh v&agrave;o buổi s&aacute;ng hoặc buổi tối. Việc đạp xe một m&igrave;nh sẽ mang đến cho bạn nhiều trải nghiệm th&uacute; vị, đặc biệt đạp xe một m&igrave;nh vừa gi&uacute;p bạn giảm thiểu sự tiếp x&uacute;c với mọi người khi thể thao. Ngo&agrave;i ra, đạp xe một m&igrave;nh bạn c&oacute; thể tự lựa chọn chuyến đi cho m&igrave;nh, kh&ocirc;ng cần phải tăng tốc chạy theo một ai đ&oacute;. Kh&ocirc;ng cần phải tr&ograve; chuyện với bất cứ ai, h&atilde;y để suy nghĩ của bạn tr&ocirc;i theo d&ograve;ng chảy một c&aacute;ch tự nhi&ecirc;n nhất.</p>\r\n\r\n<p>Đ&ocirc;i khi, cứ để suy nghĩ của bạn như vậy sau 1 thời gian d&agrave;i l&agrave;m việc gi&uacute;p bạn phấn chấn hơn, giải tr&iacute; v&agrave; vui vẻ hơn. Đặc biệt giảm bớt sự căng thẳng.</p>\r\n\r\n<ul>\r\n	<li><img alt=\"\" src=\"https://giant.vn/wp-content/uploads/2020/03/blog-3.jpg\" /></li>\r\n</ul>\r\n\r\n<h2>3. Chuẩn bị đồ d&ugrave;ng vệ sinh c&aacute; nh&acirc;n</h2>\r\n\r\n<p>Lu&ocirc;n trang bị cho m&igrave;nh một chiếc khẩu trang kh&aacute;ng khuẩn, nước rửa tay s&aacute;t khuẩn để sử dụng khi cần thiết. Bạn y&ecirc;n t&acirc;m v&igrave; việc đeo khẩu trang sẽ kh&ocirc;ng ảnh hưởng qu&aacute; nhiều tới việc đạp xe, tập luyện của bạn.</p>\r\n\r\n<ul>\r\n	<li><img alt=\"\" src=\"https://giant.vn/wp-content/uploads/2020/03/blog-2.jpg\" /></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'Sau một buổi tập luyện đạp xe ngoài trời chắc hẳn xe của bạn cũng đã đi qua các đoạn đường nước, bùn lầy, đất đá,…Những việc đó khiến chiếc xe của bạn đã bị bẩn đi phần nào.', '/storage/post/1/MgKvAl5lwd3JThq4F9LE.webp', '2022-06-14 00:45:07', '2022-06-14 00:45:07'),
(2, 'COVID-19 NÀY, ĐẠP XE MỘT MÌNH CÓ CHÁN NHƯ BẠN NGHĨ?', '<h2><a href=\"javascript:void(0)\">COVID-19 N&Agrave;Y, ĐẠP XE MỘT M&Igrave;NH C&Oacute; CH&Aacute;N NHƯ BẠN NGHĨ?</a></h2>\r\n\r\n<h2>1. Bạn c&oacute; thể đi đến nơi bạn muốn</h2>\r\n\r\n<p>Khi bạn đi một m&igrave;nh, bạn chỉ cần nghĩ về bản th&acirc;n v&agrave; kh&ocirc;ng phụ thuộc v&agrave;o c&aacute;c cung đường với những người kh&aacute;c đi c&ugrave;ng. Bạn sẽ kh&ocirc;ng cần phải bỏ lỡ một lần leo dốc m&agrave; bạn đ&atilde; từng th&iacute;ch nhưng người bạn đi c&ugrave;ng lại kh&ocirc;ng điều đ&oacute;.</p>\r\n\r\n<p>Điều đặc biệt hơn l&agrave; bạn c&oacute; thể đi theo tốc độ của bạn muốn, c&oacute; thể ho&agrave;n th&agrave;nh cung đường đ&oacute; thật nhanh m&agrave; chẳng bị phụ thuộc v&agrave;o ai. Kh&ocirc;ng cần chờ đợi, kh&ocirc;ng cần phải hỏi &yacute; kiến cho c&aacute;c chặng đường tiếp theo, việc đơn giản l&agrave; bạn c&oacute; thể đi theo c&aacute;ch m&igrave;nh muốn.</p>\r\n\r\n<h2>2. Bạn c&oacute; thể đi khi n&agrave;o bạn muốn</h2>\r\n\r\n<p>Một trong những điều tồi tệ nhất khi đi xe đạp theo nh&oacute;m l&agrave; chờ đợi mọi người xuất hiện. Lu&ocirc;n lu&ocirc;n c&oacute; một v&agrave;i l&iacute; do n&agrave;o đ&oacute; l&agrave;m nh&oacute;m tập hợp l&acirc;u hơn so với thời gian đ&atilde; l&ecirc;n kế hoạch trước đ&oacute;.</p>\r\n\r\n<p>Đi xe một m&igrave;nh c&oacute; nghĩa l&agrave; bạn c&oacute; thể thay đổi, chủ động thời gian, chủ động l&ecirc;n kế hoạch m&agrave; kh&ocirc;ng bị b&aacute;c bỏ &yacute; kiến khi mọi người trong nh&oacute;m kh&ocirc;ng th&iacute;ch. Đơn giản l&agrave; bạn chỉ cần chuẩn bị mọi thứ v&agrave; khởi h&agrave;nh khi bạn rảnh m&agrave; kh&ocirc;ng cần chờ đợi một ai.</p>\r\n\r\n<p>N&oacute; thậm ch&iacute; c&ograve;n tệ hơn nếu bạn c&oacute; kế hoạch hẹn gặp nhau ở đ&acirc;u đ&oacute; tr&ecirc;n đường, bởi v&igrave; bạn biết rằng họ sẽ tới trễ v&agrave; bạn sẽ kh&ocirc;ng muốn chờ trong một thời gian d&agrave;i, đồng thời bạn cũng kh&ocirc;ng được đến muộn.</p>\r\n\r\n<p>V&igrave; vậy đi xe một m&igrave;nh, c&oacute; nghĩa l&agrave; bạn c&oacute; thể ra ngo&agrave;i bất cứ l&uacute;c n&agrave;o bạn muốn v&agrave; cứ tiếp tục đạp từ khi bạn rời khỏi nh&agrave;.</p>\r\n\r\n<h2>3. Bạn c&oacute; thể dừng lại bao nhi&ecirc;u lần t&ugrave;y &yacute;</h2>\r\n\r\n<p><img alt=\"\" src=\"https://giant.vn/wp-content/uploads/2020/04/cover2.jpg\" /></p>\r\n\r\n<p>C&oacute; một cảnh quan tuyệt đẹp hoặc một khung cảnh đ&aacute;ng y&ecirc;u m&agrave; bạn muốn chụp lại để lưu giữ. Bạn muốn kiểm tra xem bạn đ&atilde; đi được ở đ&acirc;u tr&ecirc;n tr&aacute;i đất n&agrave;y? Qu&aacute; mệt mỏi để đi tiếp? Đ&oacute; l&agrave; tất cả tốt đẹp khi bạn l&agrave;m một m&igrave;nh.</p>\r\n\r\n<p>Bạn sẽ kh&ocirc;ng giữ ai khi bạn đi một m&igrave;nh v&agrave; kh&ocirc;ng ai quan t&acirc;m nếu bạn dừng lại 10 lần tr&ecirc;n chuyến đi để tận hưởng c&aacute;c khung cảnh. Tuy nhi&ecirc;n, nếu bạn l&agrave;m điều đ&oacute; trong một chuyến đạp xe theo nh&oacute;m. Chắc hẳn mọi người đều sẽ cảm thấy kh&oacute; chịu, trừ khi những người đ&oacute; c&oacute; c&ugrave;ng sở th&iacute;ch giống bạn.</p>\r\n\r\n<h2>4. N&oacute; dễ d&agrave;ng hơn để gắn b&oacute; với một kế hoạch đ&atilde; l&ecirc;n từ trước</h2>\r\n\r\n<p>Nếu bạn c&oacute; kế hoạch đ&agrave;o tạo m&agrave; bạn muốn thực hiện hoặc đang tham gia một thử th&aacute;ch như CW5000, th&igrave; d&ugrave; sao bạn cũng c&oacute; thể muốn thực hiện n&oacute;, trừ khi nh&oacute;m của bạn đều theo c&ugrave;ng một mục ti&ecirc;u v&agrave; tất cả đều hướng đến Một mục ti&ecirc;u, đ&oacute; sẽ l&agrave; bất thường.</p>\r\n\r\n<p>Tất cả sự huấn luyện tốt đều xuất ph&aacute;t từ một kế hoạch v&agrave; nếu bạn đang thực hiện một kế hoạch kh&aacute;c với những người trong nh&oacute;m của m&igrave;nh th&igrave; mọi thứ c&oacute; thể trở n&ecirc;n rời rạc.</p>\r\n\r\n<p>Nếu bạn muốn tập trung v&agrave; việc ph&acirc;n chia khoảng thời gian, th&igrave; việc tự m&igrave;nh đạp xe chắc chắn l&agrave; c&aacute;ch tốt nhất. H&atilde;y ngồi xuống v&agrave; tất cả sẽ l&ecirc;n th&agrave;nh một kế hoạch ho&agrave;n chỉnh.</p>\r\n\r\n<h2>5. N&oacute; cho bạn thời gian để suy nghĩ</h2>\r\n\r\n<p><img alt=\"\" src=\"https://giant.vn/wp-content/uploads/2020/04/flo-karr-nCj0zBLIaAk-unsplash.jpg\" /></p>\r\n\r\n<p>Đ&acirc;y phải l&agrave; một trong những phần thưởng lớn nhất khi đi một m&igrave;nh, n&oacute; cho bạn thời gian để thực sự xả hơi hoặc để tự m&igrave;nh vượt qua mọi thứ v&agrave; giải tỏa t&acirc;m tr&iacute; của bạn khỏi bất cứ điều g&igrave; đ&atilde; xảy ra với bạn trong nhiều tuần hoặc nhiều th&aacute;ng trước đ&oacute;.</p>\r\n\r\n<p>Mặc d&ugrave; đi theo nh&oacute;m l&agrave; tuyệt vời để giao tiếp x&atilde; hội, tr&ograve; chuyện li&ecirc;n tục c&oacute; thể cản trở bạn thực sự tận hưởng, đ&ocirc;i khi đ&oacute; l&agrave; tất cả những g&igrave; bạn muốn l&agrave;m tr&ecirc;n một chuyến đi.</p>\r\n\r\n<h2>6. Bạn sẽ kh&ocirc;ng thể bị bỏ rơi</h2>\r\n\r\n<p>Một trong những cảm gi&aacute;c tồi tệ nhất l&agrave; khi bạn bị bạn b&egrave; bỏ rơi. Bạn nghĩ m&igrave;nh đi hết sức rồi, nhưng n&oacute; vẫn chưa l&agrave; g&igrave; so với người đi c&ugrave;ng với bạn. C&oacute; khi bạn nh&igrave;n l&ecirc;n th&igrave; mọi người đ&atilde; l&ecirc;n tới đỉnh v&agrave; đang nh&igrave;n xuống.</p>\r\n\r\n<p>C&ograve;n khi tự m&igrave;nh đạp xe, sẽ kh&ocirc;ng c&oacute; ai phải đợi bạn để bắt kịp mọi l&uacute;c. Nếu bạn l&agrave; một người đạp xe chậm th&igrave; việc muốn về nh&agrave; l&uacute;c n&agrave;o m&agrave; chẳng được v&agrave; chuyện g&igrave; xảy ra th&igrave; cũng chỉ c&oacute; bạn biết m&agrave; th&ocirc;i. Cũng chẳng c&oacute; ai bỏ bạn lại ph&iacute;a sau cả.</p>\r\n\r\n<h2>7. Bạn c&oacute; thể từ bỏ khi bạn muốn</h2>', 'Khi bạn đi một mình, bạn chỉ cần nghĩ về bản thân và không phụ thuộc vào các cung đường với những người khác đi cùng. Bạn sẽ không cần phải bỏ lỡ một lần leo dốc mà bạn đã từng thích nhưng người bạn đi cùng lại không điều đó.', '/storage/post/1/K5Zpn40NkdMu4SCcix9U.webp', '2022-06-14 00:45:59', '2022-06-14 00:45:59');

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
(1, 'rưer', 'ưer', 'ưerqeqw', 'qưe', 'ưq', 1, NULL, NULL),
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
