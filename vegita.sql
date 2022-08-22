-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 22, 2022 at 10:10 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vegita`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `about_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `subtitle`, `description`, `about_name`, `job_title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Know More About Shop', 'Trusted Fast Food Store', '<p>Lorem, ipsum dolor sit, amet consectetur adipisicing elit. Harum, \r\nnulla quis similique, inventore quasi t rem eius incidunt eos cumque \r\nitaqueexercitationem debitis, earum expedita alias!eius incidunt eos cumque \r\nitaqueexercitationem debitis, earum expedita alias!itaqueexercitationem debitis, earum expedita alias</p>\r\n\r\n 					<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Dicta \r\nvoluptatibus ea ipsum harum ducimus, nam delectus, suscipit laudantium, \r\nat rem eius incidunt eos cumque itaque exercitationem debitis, earum \r\nexpedita alias!</p><p></p>', 'Nurul Hasan', 'Shop Director', 'know-more-about-shop.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(255) DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `subtitle`, `status`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'Fresh And Healthy Organic Fruits', 'fresh-and-healthy-organic-fruits', 'Free Pickup and Delivery Available', 1, 'public/files/banner/fresh-and-healthy-organic-fruits.jpg', NULL, NULL),
(2, 'Green onion knife and fresh fruits', 'green-onion-knife-and-fresh-fruits', 'Free Pickup and Delivery Available', 1, 'public/files/banner/green-onion-knife-and-fresh-fruits.jpg', NULL, NULL),
(3, 'Green onion knife and fresh vegetable', 'green-onion-knife-and-fresh-vegetable', 'Free Pickup and Delivery Available', 1, 'public/files/banner/green-onion-knife-and-fresh-vegetable.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbanil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(111) DEFAULT '0',
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `user_id`, `name`, `title`, `slug`, `tag`, `description`, `thumbanil`, `status`, `likes`, `month`, `year`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'Admin', 'Green onion knife and fresh fruits', 'green-onion-knife-and-fresh-fruits', 'organic,fresh vegetable,fresh', '<p>&nbsp;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum \r\nmaxime recusandae repudiandae similique. Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae \r\nsimilique. Lorem ipsum dolor sit amet, consectetur adipisicing elit. \r\nIpsam ipsum maxime recusandae repudiandae similique.</p>', 'green-onion-knife-and-fresh-fruits.jpg', '0', 0, 'August', '2022', NULL, NULL),
(2, 5, 1, 'Admin', 'Green onion knife and salad placed', 'green-onion-knife-and-salad-placed', 'organicorganic,fresh vegetable,fresh', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae similique.&nbsp; Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum \r\nmaxime recusandae repudiandae similique.&nbsp; Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae \r\nsimilique.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br></p>', 'green-onion-knife-and-salad-placed.jpg', '1', 12, 'August', '2022', NULL, NULL),
(3, 5, 1, 'Admin', 'Green onion knife and salad tomato', 'green-onion-knife-and-salad-tomato', 'organic,fresh vegetable,fresh,tomato', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum \r\nmaxime recusandae repudiandae similique.&nbsp; Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae \r\nsimilique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum \r\nmaxime recusandae repudiandae similique.&nbsp; Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae \r\nsimilique.</p>', 'green-onion-knife-and-salad-tomato.jpg', '1', 4, 'August', '2022', NULL, NULL),
(4, 4, 1, 'Admin', 'All time fresh every time healthy', 'all-time-fresh-every-time-healthy', 'organic,fresh vegetable,fresh,tomato', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae similique.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsam ipsum maxime recusandae repudiandae similique.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br></p>', 'all-time-fresh-every-time-healthy.jpg', '1', 0, 'August', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `front_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_slug`, `brand_logo`, `front_page`, `created_at`, `updated_at`) VALUES
(2, 'Organic food', 'organic-food', 'public/files/brand/organic-food.jpg', '1', NULL, NULL),
(3, 'Ripe Food', 'ripe-food', 'public/files/brand/ripe-food.jpg', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `start_date`, `end_date`, `image`, `status`, `discount`, `month`, `year`, `created_at`, `updated_at`) VALUES
(8, 'Ea exerci option hendrerit', '2022-06-02', '2022-06-09', 'public/files/campaign/ea-exerci-option-hendrerit.jpg', '1', '7', 'June', '2022', NULL, NULL),
(9, 'Shopbop Spring Sale Selects', '2022-06-14', '2022-06-15', 'public/files/campaign/shopbop-spring-sale-selects.jpg', '1', '20', 'June', '2022', NULL, NULL),
(11, 'ummer-discount', '2022-08-01', '2022-08-31', 'public/files/campaign/ummer-discount.jpg', '1', '27', 'August', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_products`
--

CREATE TABLE `campaign_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_products`
--

INSERT INTO `campaign_products` (`id`, `campaign_id`, `product_id`, `price`, `created_at`, `updated_at`) VALUES
(1, 8, '7', '17.67', NULL, NULL),
(2, 9, '2', '120', NULL, NULL),
(3, 9, '3', '48', NULL, NULL),
(4, 9, '4', '32', NULL, NULL),
(6, 8, '2', '139.5', NULL, NULL),
(7, 8, '4', '37.2', NULL, NULL),
(8, 8, '3', '55.8', NULL, NULL),
(9, 8, '5', '37.2', NULL, NULL),
(10, 11, '4', '29.2', NULL, NULL),
(11, 11, '3', '43.8', NULL, NULL),
(12, 11, '2', '109.5', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_slug`, `icon`, `home_page`, `created_at`, `updated_at`) VALUES
(3, 'Fish', 'fish', 'public/files/category/fish.jpg', '1', NULL, NULL),
(4, 'Frutis', 'frutis', 'public/files/category/frutis.jpg', '1', NULL, NULL),
(5, 'Vegitables', 'vegitables', 'public/files/category/vegitables.jpg', '1', NULL, NULL),
(6, 'Meat', 'meat', 'public/files/category/meat.jpg', '1', NULL, NULL),
(7, 'Others', 'others', 'public/files/category/others.jpg', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `childcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `category_id`, `subcategory_id`, `childcategory_name`, `childcategory_slug`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 'Green Tomato', 'green-tomato', NULL, NULL),
(2, 4, 2, 'Green Apple', 'green-apple', NULL, NULL),
(3, 5, 7, 'Green Fresh Spainach', 'green-fresh-spainach', NULL, NULL),
(4, 5, 8, 'Green Fresh Vegetable', 'green-fresh-vegetable', NULL, NULL),
(5, 4, 2, 'Ripe', 'ripe', NULL, NULL),
(6, 4, 6, 'swahili', 'swahili', NULL, NULL),
(7, 4, 6, 'raw', 'raw', NULL, NULL),
(8, 4, 11, 'raw', 'raw', NULL, NULL),
(9, 4, 12, 'Organic', 'organic', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chooses`
--

CREATE TABLE `chooses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(2555) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chooses`
--

INSERT INTO `chooses` (`id`, `icon`, `name`, `slug`, `description`, `created_at`, `updated_at`) VALUES
(1, 'public/files/choose/organic-fresh-tomato.png', 'Organic Fresh Tomato', 'organic-fresh-tomato', 'Lorem ipsum dolor, sit amet dolore maiores, harum, velit optio aut? Optio minus sit quas, atque tempore quisquam obcaecati, vel dolor.Lorem ipsum dolor, sit amet dolore maiores, harum, velit optio aut? Optio minus sit quas, atque tempore quisquam obcaecati, vel dolor.', NULL, NULL),
(2, 'public/files/choose/fresh-and-organic.png', 'Fresh And Organic', 'fresh-and-organic', 'Lorem ipsum dolor, sit amet dolore maiores, harum, velit optio aut? Optio minus sit quas, atque tempore quisquam obcaecati, vel dolor.Lorem ipsum dolor, sit amet dolore maiores, harum, velit optio aut? Optio minus sit quas, atque tempore quisquam obcaecati, vel dolor.', NULL, NULL),
(3, 'public/files/choose/all-kind-brand.png', 'All Kind Brand', 'all-kind-brand', 'Lorem ipsum dolor, sit amet dolore maiores, harum, velit optio aut? Optio minus sit quas, atque tempore quisquam obcaecati, vel dolor.Lorem ipsum dolor, sit amet dolore maiores, harum, velit optio aut? Optio minus sit quas, atque tempore quisquam obcaecati, vel dolor.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Liton Islam', 'lgkjdkdoi@gmail.com', 'Email Address\r\n\r\n18/A, Mirpur Dream Town Dhaka,\r\nBangladesh', NULL, NULL),
(2, 'Liton Islam', 'admin@gmail.com', 'onk sundor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vaild_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `vaild_date`, `type`, `coupon_amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 'tomato', '2022-06-21', '2', '120', 'Active', NULL, NULL),
(3, 'summer', '2022-07-29', '1', '80', 'Active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cupons`
--

CREATE TABLE `cupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coupon_amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(5, '2022_05_31_113519_create_users_table', 2),
(6, '2022_06_02_051957_create_categories_table', 3),
(7, '2022_06_03_083745_create_subcategories_table', 4),
(8, '2022_06_04_042909_create_childcategories_table', 5),
(9, '2022_06_04_142440_create_warehouses_table', 6),
(10, '2022_06_04_162539_create_brands_table', 7),
(11, '2022_06_05_104705_create_pickuppoints_controller', 8),
(12, '2022_06_06_175201_create_products_table', 9),
(13, '2022_06_09_100237_create_seos_table', 10),
(14, '2022_06_09_103956_create_smtp_table', 11),
(15, '2022_06_09_114548_create_settings_table', 12),
(16, '2022_06_09_142528_create_pages_table', 13),
(17, '2022_06_19_045729_create_coupons_table', 14),
(18, '2022_06_26_050247_create_campaigns_table', 15),
(19, '2022_06_27_154525_create_reviews_table', 16),
(20, '2022_06_29_163536_create_wishlists_table', 17),
(21, '2022_07_12_043316_create_website_reviews_table', 18),
(22, '2022_07_13_041918_create_shippings_table', 19),
(23, '2022_07_13_133128_create_newsletters_table', 20),
(24, '2022_07_13_150811_create_cupons_table', 21),
(25, '2022_07_25_123432_create_orders_table', 22),
(26, '2022_07_25_130618_create_order_details_table', 23),
(27, '2022_07_26_155044_create_tickets_table', 24),
(28, '2022_07_27_105120_create_replies_table', 25),
(29, '2022_07_30_143722_create_payment_gateway_table', 26),
(30, '2022_08_02_143454_create_campaign_products_table', 27),
(31, '2022_08_05_040120_create_blogs_table', 28),
(32, '2022_08_09_063312_create_post_comments_table', 29),
(33, '2022_08_11_162934_create_contacts_table', 30),
(34, '2022_08_12_100434_create_abouts_table', 31),
(35, '2022_08_13_102940_create_chooses_table', 32),
(36, '2022_08_13_175904_create_teams_table', 33),
(37, '2022_08_14_105341_create_banners_table', 34);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'nurul@gmail.com', NULL, NULL),
(2, 'admin@gmail.com', NULL, NULL),
(3, 'customer@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_extra_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `c_name`, `c_phone`, `c_email`, `c_country`, `c_zipcode`, `c_address`, `c_extra_phone`, `c_city`, `subtotal`, `total`, `coupon_code`, `coupon_discount`, `after_code`, `payment_type`, `tax`, `shipping_charge`, `order_id`, `status`, `date`, `month`, `year`, `created_at`, `updated_at`) VALUES
(21, 2, 'customer', '01737884945', 'Nurul@gmail.com', 'bangladesh', '5020', 'Dhaka', '018477634748', 'rangpur', NULL, '184.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '716201', 1, '27-07-22', 'July', '2022', NULL, NULL),
(22, 2, 'customer', '01737884945', 'nurlk@gmail.com', 'bangladesh', '5030', 'Dhaka', '018477634748', 'rangpur', NULL, '90.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '201423', 2, '28-07-22', 'July', '2022', NULL, NULL),
(23, 3, 'Nurul Islam', '01737884945', 'nurul@gmail.com', 'bangladesh', '5030', 'Dhaka', '01847763474', 'rangpur', NULL, '129.00', NULL, NULL, NULL, 'Hand Cash', '0', '0', '398144', 1, '31-07-22', 'July', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `single_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `product_name`, `weight`, `quantity`, `single_price`, `subtotal_price`, `id`, `created_at`, `updated_at`) VALUES
(21, 5, 'Green Punishak', NULL, '1', '37', '37', 9, NULL, NULL),
(21, 7, 'Green Healthy Cauliflower', NULL, '1', '17', '17', 10, NULL, NULL),
(21, 2, 'Organic Fresh Tomato', NULL, '1', '130', '130', 11, NULL, NULL),
(22, 4, 'Organic Fresh Spinach', NULL, '1', '35', '35', 12, NULL, NULL),
(22, 3, 'Organic Ripe Tomato', NULL, '1', '55', '55', 13, NULL, NULL),
(23, 5, 'Green Punishak', '1', '2', '37', '74', 14, NULL, NULL),
(23, 3, 'Organic Ripe Tomato', '1', '1', '55', '55', 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_position` int(11) DEFAULT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_position`, `page_name`, `page_slug`, `page_title`, `page_description`, `created_at`, `updated_at`) VALUES
(1, NULL, 'page_one', 'page-one', 'page', '', NULL, NULL),
(2, 1, 'page_one', 'page-one', 'page_one', 'n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('customer@gmail.com', '$2y$10$CFncMcydyGRqoOiK0iXgzO8/dwA8pzaE42cJ9hm.5Ikrrb53LpFt6', '2022-06-01 09:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateway`
--

CREATE TABLE `payment_gateway` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gateway_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateway`
--

INSERT INTO `payment_gateway` (`id`, `gateway_name`, `store_id`, `signature_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'aamrpay', 'Aamarpay', '28c78bb1f45112f5d40b956fe104645a', 0, NULL, NULL),
(2, 'surjopay', 'Surjopay', '8c78bb1f45112f5d40b956fe104645a', 0, NULL, NULL),
(3, 'ssl', 'SSL', '8c78bb1f45112f5d40b956fe104645a', 0, NULL, NULL);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pickuppoints_controller`
--

CREATE TABLE `pickuppoints_controller` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pickuppoin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickuppoin_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickuppoin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickuppoin_phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pickuppoints_controller`
--

INSERT INTO `pickuppoints_controller` (`id`, `pickuppoin_name`, `pickuppoin_address`, `pickuppoin_phone`, `pickuppoin_phone_two`, `created_at`, `updated_at`) VALUES
(2, 'Mirpur', 'Dhaka Bangladesh', '01744326741', '01744326742', NULL, NULL),
(3, 'Uttara', 'Uttara Dhaka', '01744326755', '01744326722', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `user_id`, `post_id`, `comment`, `date`, `created_at`, `updated_at`) VALUES
(2, 2, 2, 'nice blog', '10-08-22', NULL, NULL),
(3, 2, 2, 'apnader blog post gula onk vlo..plus product gula fresh', '10-08-22', NULL, NULL),
(4, 3, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing, elit. Explicabo facilis', '10-08-22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `childcategory_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_views` int(255) DEFAULT '0',
  `pickuppoint_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(9550) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trendy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `today_deal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flash_deal_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_on_delivery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `name`, `slug`, `code`, `unit`, `tags`, `weight`, `product_views`, `pickuppoint_id`, `purchase_price`, `discount_price`, `selling_price`, `stock_quantity`, `warehouse`, `description`, `thumbnail`, `images`, `featured`, `product_slider`, `trendy`, `today_deal`, `status`, `date`, `month`, `flash_deal_id`, `cash_on_delivery`, `admin_id`, `created_at`, `updated_at`) VALUES
(2, 5, 8, NULL, '2', 'Organic Fresh Tomato', 'organic-fresh-tomato', 'dd-12344', 'complex-1', 'fresh,vegetable', '1', 12, '2', '120', '130', '150', '121', 'warehouse-1', '<p>Freshly harvested Dutch Carrots grown by Valley Pride Produce at Charlwood.</p>', 'organic-fresh-tomato.jpg', '[\"1735768670531105.jpg\",\"1735768670689891.jpg\",\"1735768670778322.jpg\"]', '1', NULL, '1', '1', '0', '16-06-2022', 'June', NULL, NULL, '1', NULL, '2022-08-15 00:03:14'),
(3, 5, 3, '1', '2', 'Organic Ripe Tomato', 'organic-ripe-tomato', 't-2343', 'complex-1', 'fresh,organic', '1', 12, '2', '50', '55', '60', '33', 'warehouse-2', '<p>Open from 11:30 until 9pm. ... Lunch and Dinner menus avaiable. ... we accommodate personal and business events at the <em>Ripe Tomato</em>, large gatherings or small, with </p>', 'organic-ripe-tomato.jpg', '[\"1735768670531105.jpg\",\"1735768670689891.jpg\",\"1735768670778322.jpg\"]', '1', NULL, '1', '1', '0', '15-06-2022', 'June', NULL, NULL, '1', NULL, '2022-07-26 05:50:58'),
(4, 5, 7, '3', '2', 'Organic Fresh Spinach', 'organic-fresh-spinach', 'sd2433', 'complex-1', 'fresh,organic', '1', 28, '2', '30', '35', '40', '22', 'warehouse-2', '<p>Open from 11:30 until 9pm. ... Lunch and Dinner menus avaiable. ... we accommodate personal and business events at the <em>Ripe Tomato</em>, large gatherings or small, with </p>', 'organic-fresh-spinach.jpg', '[\"1735768670531105.jpg\",\"1735768670689891.jpg\",\"1735768670778322.jpg\"]', '1', NULL, NULL, '1', '1', '15-06-2022', 'June', NULL, NULL, '1', NULL, '2022-08-14 23:59:22'),
(5, 5, 7, '3', '2', 'Green Punishak', 'green-punishak', 'es33333', 'complex-1', 'fresh,organic', '1', 31, '2', '30', '37', '40', '22kg', 'warehouse-2', '<p>Open from 11:30 until 9pm. ... Lunch and Dinner menus avaiable. ... we accommodate personal and business events at the <em>Ripe Tomato</em>, large gatherings or small, with </p>', 'green-punishak.jpg', '[\"1735695722693444.jpg\",\"1735695722693444.jpg\",\"1735695722693444.jpg\"]', '1', NULL, '1', '1', '1', '15-06-2022', 'June', NULL, NULL, '1', NULL, '2022-08-21 23:16:43'),
(6, 5, 8, NULL, '2', 'Organic Fresh Cauliflower', 'organic-fresh-cauliflower', 'fgre4e', 'dfdsf', 'dfds', '1', 63, '2', '34', '4536', '56', '54', 'warehouse-1', '<p><span class=\"ILfuVd\"><span class=\"hgKElc\"> fruit is <strong>the fleshy or dry ripened ovary of a flowering plant, enclosing the seed or seeds</strong>. Apricots, bananas, and grapes, as well as bean pods, corn grains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.</span></span></p>', 'organic-fresh-cauliflower.jpg', '[\"1735698006377807.jpg\",\"1735698006466433.jpg\",\"1735698006597804.jpg\"]', '1', '1', NULL, '1', '0', '15-06-2022', 'June', NULL, NULL, '1', NULL, '2022-08-03 23:52:42'),
(7, 5, 8, '4', '2', 'Green Healthy Cauliflower', 'green-healthy-cauliflower', 'CD43453', 'complex-2', 'Cauliflower,fresh,green', '1', 36, '2', '12', '17', '19', '10kg', 'warehouse-1', '<p><em>Cauliflower</em> is one of several vegetables in the species Brassica oleracea in the genus Brassica, which is in the Brassicaceae (or mustard) family.</p>', 'green-healthy-cauliflower.jpg', '[\"1736536452106325.jpg\",\"1736536452264923.jpg\",\"1736536452382760.jpg\"]', '1', NULL, '1', '1', '1', '24-06-2022', 'June', NULL, NULL, '1', NULL, '2022-08-21 23:11:43'),
(8, 4, 6, '6', '2', 'Fresh Mango', 'fresh-mango', 'mn403', 'complex1', 'mango,fresh,swahili', '1', 1, '3', '20', '20', '23', '5', 'warehouse-2', '<p>Vegetables and <em>Fruits</em>. Basket of food including grapes apples asparagus onions lettuce carrots melon bananas corn. Vegetables and <em>fruits</em> are an important part ...</p>', 'fresh-mango.jpg', '[\"1741832137716045.jpg\",\"1741832137822976.jpg\",\"1741832137914807.jpg\"]', '1', NULL, NULL, '1', '1', '22-08-2022', 'August', NULL, NULL, '1', NULL, '2022-08-21 22:01:15'),
(9, 4, 2, '5', '3', 'Fresh Apple', 'fresh-apple', 'sd2435', 'complex2', 'fresh,organic,fruits', '1', 0, '3', '10', '12', '14', '5', 'warehouse-2', '<p>Vegetables and <em>Fruits</em>. Basket of food including grapes apples asparagus onions lettuce carrots melon bananas corn. Vegetables and <em>fruits</em> are an important part ...</p>', 'fresh-apple.jpg', '[\"1741832429852470.jpg\",\"1741832429955482.jpg\"]', '0', NULL, NULL, '1', '1', '22-08-2022', 'August', NULL, NULL, '1', NULL, NULL),
(10, 4, 11, '8', '2', 'Organic  Strawberry', 'organic-strawberry', 'st433', 'complex2', NULL, '1', 0, '2', '5', '9', '10', '55', 'warehouse-1', '<h1 class=\"Text_text___5YSC Text_size-p14__OI9CQ Text_weight-semibold__jKPqr Text_color-grey7F7F7F__IrIyU spacing_noMargin__Q_PsJ useAuth_hideWhenSignedIn__EbOj6 Text_ellipsis__HHCcM Text_icon__CnWj_\" title=\"Macro Photography of Strawberry\">Strawberry</h1>\r\n<p>Shop Online at MATCHESFASHION. Express Delivery in 3-5 Working Days. Discover Our Unique Mix of Established, Emerging, and Exclusive Designers. 24/7 Customer Care. Over 650 designers. Duty Free On EU Items. New Pieces Added Daily.</p>\r\n<p>&nbsp;</p>', 'organic-strawberry.jpg', '[\"1741832815349941.jpg\",\"1741832815470862.jpg\",\"1741832815562400.jpg\"]', '0', NULL, NULL, '1', '1', '22-08-2022', 'August', NULL, NULL, '1', NULL, NULL),
(11, 4, 12, '9', '2', 'Sliced Papaya', 'sliced-papaya', 'e4654', 'complex2', 'Papaya,fresh', '1', 1, '2', '22', '22', '25', '45', 'warehouse-2', '<p>Papaya</p>\r\n<p>Shop Online at MATCHESFASHION. Express Delivery in 3-5 Working Days. Discover Our Unique Mix of Established, Emerging, and Exclusive Designers. 24/7 Customer Care. Over 650 designers. Duty Free On EU Items. New Pieces Added Daily.</p>', 'sliced-papaya.jpg', '[\"1741833233806152.jpg\",\"1741833233917120.jpg\",\"1741833234066838.jpg\"]', '0', NULL, NULL, '0', '1', '22-08-2022', 'August', NULL, NULL, '1', NULL, '2022-08-21 22:53:28'),
(12, 6, 5, NULL, '3', 'Slicing Raw Meat', 'slicing-raw-meat', 'mt3454', 'complex1', 'meat,raw', '1kg', 1, '3', '50', '55', '60', '56', 'warehouse-1', '<p>Shop Online at MATCHESFASHION. Express Delivery in 3-5 Working Days. Discover Our Unique Mix of Established, Emerging, and Exclusive Designers. 24/7 Customer Care. Over 650 designers. Duty Free On EU Items. New Pieces Added Daily.</p>', 'slicing-raw-meat.jpg', '[\"1741836273393704.jpg\",\"1741836273503954.jpg\"]', '0', NULL, NULL, '0', '1', '22-08-2022', 'August', NULL, NULL, '1', NULL, '2022-08-21 23:17:49'),
(13, 3, 10, NULL, '2', 'Fresh Sculpin', 'fresh-sculpin', 'e4565', 'complex1', 'fish,fresh', '1kg,2kg', 0, '3', '30', '34', '36', '45', 'warehouse-1', '<h1 class=\"Text_text___5YSC Text_size-p14__OI9CQ Text_weight-semibold__jKPqr Text_color-grey7F7F7F__IrIyU spacing_noMargin__Q_PsJ useAuth_hideWhenSignedIn__EbOj6 Text_ellipsis__HHCcM Text_icon__CnWj_\" title=\"Close-up of Fresh Sculpin\">Fresh Sculpin</h1>\r\n<p>Shop Online at MATCHESFASHION. Express Delivery in 3-5 Working Days. Discover Our Unique Mix of Established, Emerging, and Exclusive Designers. 24/7 Customer Care. Over 650 designers. Duty Free On EU Items. New Pieces Added Daily.</p>\r\n<p>&nbsp;</p>', 'fresh-sculpin.jpg', '[\"1741836609021291.jpg\",\"1741836609157318.jpg\"]', '0', NULL, NULL, '0', '1', '22-08-2022', 'August', NULL, NULL, '1', NULL, NULL),
(14, 3, 9, NULL, '2', 'Ocean Fish', 'ocean-fish', 'ce4t', 'complex1', 'fish', '1kg', 0, '3', '30', '40', '35', '54', 'warehouse-1', '<p>Shop Online at MATCHESFASHION. Express Delivery in 3-5 Working Days. Discover Our Unique Mix of Established, Emerging, and Exclusive Designers. 24/7 Customer Care. Over 650 designers. Duty Free On EU Items. New Pieces Added Daily.</p>', 'ocean-fish.jpg', '[\"1741836850698688.jpg\"]', '0', NULL, NULL, NULL, '1', '22-08-2022', 'August', NULL, NULL, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `ticket_id`, `message`, `image`, `reply_date`, `created_at`, `updated_at`) VALUES
(1, '2', 1, 'hello', NULL, '2022-07-27', NULL, NULL),
(2, '2', 1, 'hell checking', NULL, '2022-07-27', NULL, NULL),
(3, '0', 1, 'ji bolen ki help korte pari', NULL, '2022-07-28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `review_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_month` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `name`, `review`, `rating`, `review_date`, `review_month`, `review_year`, `created_at`, `updated_at`) VALUES
(5, 2, 7, 'customer', 'corrupti amet, tempora sint magni.', 5, '28-06-2022', 'June', '2022', NULL, NULL),
(6, 1, 7, 'Admin', 'corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.', 5, '28-06-2022', 'June', '2022', NULL, NULL),
(7, 1, 6, 'Admin', 'rains, tomatoes, cucumbers, and (in their shells) acorns and almonds, are all technically fruits.', 4, '28-06-2022', 'June', '2022', NULL, NULL),
(8, 1, 2, 'Admin', 'stias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga', 2, '28-06-2022', 'June', '2022', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alexa_verification` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_absense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `meta_keyword`, `google_verification`, `google_analytics`, `alexa_verification`, `google_absense`, `created_at`, `updated_at`) VALUES
(1, 'Blog1', 'Admin', 'meta_tag', 'meta_description', 'meta_keyword', 'google_verification', 'google_analytics', 'alexa_verification', 'google_absense', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency`, `phone_one`, `phone_two`, `main_email`, `support_email`, `logo`, `favicon`, `address`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, '৳', '01xxxxxxxxxx', '01xxxxxxxxxx', 'vegita@gmai.com', 'info@gmai.com', 'public/files/setting/62a1e20e5e169.png', 'public/files/setting/62a1e20e63815.png', 'Dhaka,Bangladesh', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.instragram.com/', 'https://www.linkedin.com/', 'https://www.youtube.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `shipping_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `user_id`, `shipping_name`, `shipping_phone`, `shipping_address`, `shipping_email`, `shipping_country`, `shipping_city`, `shipping_zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, 'customer', '56555555765', 'nilphamari bangladesh', 'nil@gmail.com', 'bangladesh', 'nilphamari', '5010', NULL, NULL),
(2, 2, 'customer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smtp`
--

CREATE TABLE `smtp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `miler` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp`
--

INSERT INTO `smtp` (`id`, `miler`, `host`, `port`, `user_name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'smpt', '.com', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `subcategory_slug`, `created_at`, `updated_at`) VALUES
(2, 4, 'Apple', 'apple', NULL, NULL),
(3, 5, 'Tomato', 'tomato', NULL, NULL),
(4, 6, 'Chicken', 'chicken', NULL, NULL),
(5, 6, 'Beef', 'beef', NULL, NULL),
(6, 4, 'Mango', 'mango', NULL, NULL),
(7, 5, 'Spinach', 'spinach', NULL, NULL),
(8, 5, 'Raw vegetables', 'raw-vegetables', NULL, NULL),
(9, 3, 'Foreign', 'foreign', NULL, NULL),
(10, 3, 'Deshi', 'deshi', NULL, NULL),
(11, 4, 'Strawberry', 'strawberry', NULL, NULL),
(12, 4, 'Papaya', 'papaya', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instragram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `job_name`, `image`, `facebook`, `google`, `instragram`, `twitter`, `linkedin`, `created_at`, `updated_at`) VALUES
(1, 'Imran Hasan', 'Founder', 'public/files/team/imran-hasan.jpg', 'https://www.facebook.com/', 'https://www.google.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL),
(2, 'Liton Islam', 'Founder', 'public/files/team/liton-islam.jpg', 'https://www.facebook.com/', 'https://www.google.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL),
(3, 'Abir Hasan', 'Founder', 'public/files/team/abir-hasan.jpg', 'https://www.facebook.com/', 'https://www.google.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL),
(4, 'Abdur Rahim', 'Founder', 'public/files/team/abdur-rahim.jpg', 'https://www.facebook.com/', 'https://www.google.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL),
(5, 'Nurul Islam', 'Founder', 'public/files/team/nurul-islam.jpg', 'https://www.facebook.com/', 'https://www.google.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL),
(6, 'Abdul kalam', 'Founder', 'public/files/team/abdul-kalam.jpg', 'https://www.facebook.com/', 'https://www.google.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL),
(7, 'Mahim Islam', 'Founder', 'public/files/team/mahim-islam.jpg', 'https://www.facebook.com/', 'https://www.google.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL),
(8, 'Mijan khan', 'Founder', 'public/files/team/mijan-khan.jpg', 'https://www.facebook.com/', 'https://www.google.com/', 'https://www.instragram.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `subject`, `service`, `priority`, `message`, `image`, `status`, `date`, `created_at`, `updated_at`) VALUES
(1, 2, 'new product', 'tecnical', 'medium', 'new product', 'public/files/ticket/62e11119ebb5d.jpg', '1', '2022-07-27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT '0',
  `product` int(11) DEFAULT '0',
  `offer` int(11) DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `blog` int(11) DEFAULT '0',
  `pickup` int(11) DEFAULT '0',
  `ticket` int(11) DEFAULT '0',
  `contact` int(11) DEFAULT '0',
  `report` int(11) DEFAULT '0',
  `setting` int(11) DEFAULT '0',
  `userrole` int(11) DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `is_admin`, `avatar`, `provider`, `provider_id`, `access_token`, `category`, `product`, `offer`, `order`, `blog`, `pickup`, `ticket`, `contact`, `report`, `setting`, `userrole`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$k32zlZikMuME/kkR9vgr7.1fG7707QTWx..S6hsjTqW4.b/klhhQ.', '017xxxxx', 1, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-05-31 05:39:47', '2022-06-09 08:32:34'),
(2, 'customer', 'customer@gmail.com', NULL, '$2y$10$jvp.Zau.87sqp.8ZLlK9y.urXctNM2RFebFp9og72aHDIYoBFD2my', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-05-31 07:41:39', '2022-07-12 23:11:36'),
(3, 'Nurul Islam', 'nurul@gmail.com', NULL, '$2y$10$wlHbMrc0pIhbd9x/IITbgeSG0TEATNEjD6q7QAvMOxEscpE2LJnde', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2022-07-12 05:15:48', '2022-07-12 05:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `warehouse_name`, `warehouse_phone`, `warehouse_address`, `created_at`, `updated_at`) VALUES
(2, 'warehouse-1', '017xxxxxxxx', 'dhaka bangladesh', NULL, NULL),
(3, 'warehouse-2', '017xxxxxxx', 'Dhaka mirpur', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `website_reviews`
--

CREATE TABLE `website_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `rating` int(11) DEFAULT NULL,
  `review_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_reviews`
--

INSERT INTO `website_reviews` (`id`, `user_id`, `name`, `review`, `rating`, `review_date`, `status`, `created_at`, `updated_at`) VALUES
(3, 2, 'customer', 'See What Everyone Is Shopping from E-\nSee What Everyone Is Shopping from Andshop E-Commerce Today\nSee What Everyone Is Shopping from Andshop E-Comme', 4, '12 ,July 2022', 1, NULL, NULL),
(4, 3, 'Nurul Islam', 'See What Everyone Is Shopping from Andshop E-Comme\nSee What Everyone Is Shopping from E-ShopBD E-Commerce Today\nSee What Everyone Is Shopping from E-ShopBD E-Commerce Today\nSee What Everyone Is Shopping from E-ShopBD E-Commerce Today  E-ShopBD E-Commerce Today', 2, '12 ,July 2022', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `date`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Sat ,July 2022', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_user_id_foreign` (`user_id`),
  ADD KEY `blogs_category_id_foreign` (`category_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_products`
--
ALTER TABLE `campaign_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_products_campaign_id_foreign` (`campaign_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `childcategories_category_id_foreign` (`category_id`),
  ADD KEY `childcategories_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `chooses`
--
ALTER TABLE `chooses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cupons`
--
ALTER TABLE `cupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pickuppoints_controller`
--
ALTER TABLE `pickuppoints_controller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_user_id_foreign` (`user_id`);

--
-- Indexes for table `smtp`
--
ALTER TABLE `smtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_reviews`
--
ALTER TABLE `website_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `campaign_products`
--
ALTER TABLE `campaign_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chooses`
--
ALTER TABLE `chooses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cupons`
--
ALTER TABLE `cupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_gateway`
--
ALTER TABLE `payment_gateway`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pickuppoints_controller`
--
ALTER TABLE `pickuppoints_controller`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `smtp`
--
ALTER TABLE `smtp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `website_reviews`
--
ALTER TABLE `website_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `blogs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `campaign_products`
--
ALTER TABLE `campaign_products`
  ADD CONSTRAINT `campaign_products_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD CONSTRAINT `childcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `childcategories_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `website_reviews`
--
ALTER TABLE `website_reviews`
  ADD CONSTRAINT `website_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
