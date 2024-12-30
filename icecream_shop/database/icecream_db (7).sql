-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2024 pada 02.45
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icecream_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(50) NOT NULL,
  `qty` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `message`
--

CREATE TABLE `message` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `subject`, `message`) VALUES
('CvUb8kb5573ibm0fF8L3', 'WFaXoVtjvMym8IfHhDON', 'john doe', 'johndoe@gmail.com', 'selling purpose', 'johndoe@gmail.com'),
('66uTYMcA1QqPFNfLiyYw', 'WFaXoVtjvMym8IfHhDON', 'muhammad firza', 'firza@gmail.com', 'selling goods', 'firza@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(10) NOT NULL,
  `qty` int(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress',
  `payment_status` varchar(100) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `seller_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`, `payment_status`) VALUES
('67567fe4e1433', 'WFaXoVtjvMym8IfHhDON', 'G4v8mrwwVcbEr7OP3ytt', 'muhammad firza', '1234567890', 'firza@gmail.com', '245, , bekasi, indonesia, 112233', 'home', '', 'cOw56WQKKHehaxCyO2en', 100, 1, '2024-12-09', 'cancled', 'pending'),
('67567fe4e2d28', 'WFaXoVtjvMym8IfHhDON', 'G4v8mrwwVcbEr7OP3ytt', 'muhammad firza', '1234567890', 'firza@gmail.com', '245, , bekasi, indonesia, 112233', 'home', '', 'kzmkTIh8R0AixvM68MxY', 80, 1, '2024-12-09', 'cancled', 'pending'),
('67567fe4e3a51', 'WFaXoVtjvMym8IfHhDON', 'G4v8mrwwVcbEr7OP3ytt', 'muhammad firza', '1234567890', 'firza@gmail.com', '245, , bekasi, indonesia, 112233', 'home', '', '0YDOJKeszwJUO9y6BrFT', 50, 1, '2024-12-09', 'in progress', 'pending'),
('675684b677eae', 'WFaXoVtjvMym8IfHhDON', 'G4v8mrwwVcbEr7OP3ytt', 'muhammad firza', '1234567891', 'firza@gmail.com', '245, asemjaya, bekasi, indonesia, 123345', 'home', '', '0YDOJKeszwJUO9y6BrFT', 50, 1, '2024-12-09', 'in progress', 'pending'),
('6757924f14eba', 'WFaXoVtjvMym8IfHhDON', 'G4v8mrwwVcbEr7OP3ytt', 'firza', '9876543210', 'firza@gmail.com', 'asem, jaya, bekasi, indonesia, 112233', 'home', '', '1k4Z6Kpky6hm7VbLsvBK', 100, 1, '2024-12-10', 'cancled', 'pending'),
('67579ce5496ad', 'WFaXoVtjvMym8IfHhDON', 'G4v8mrwwVcbEr7OP3ytt', 'firza', '1122334455', 'firza@gmail.com', '245, asem, bekasi, Indonesia, 110011', 'home', '', '1k4Z6Kpky6hm7VbLsvBK', 100, 1, '2024-12-10', 'in progress', 'pending'),
('6757a413a413b', 'FmssjDjMAoFkgY4FqnAl', 'G4v8mrwwVcbEr7OP3ytt', 'hanif', '2233445566', 'hanif@gmail.com', '255, kelapadua, bekasi, indonesia, 110011', 'home', '', '0YDOJKeszwJUO9y6BrFT', 50, 1, '2024-12-10', 'cancled', 'pending'),
('6757a413a4f81', 'FmssjDjMAoFkgY4FqnAl', 'G4v8mrwwVcbEr7OP3ytt', 'hanif', '2233445566', 'hanif@gmail.com', '255, kelapadua, bekasi, indonesia, 110011', 'home', '', 'bZ04lf5f7JZDzz38jDpF', 60, 1, '2024-12-10', 'cancled', 'pending'),
('6757a413a52f4', 'FmssjDjMAoFkgY4FqnAl', 'G4v8mrwwVcbEr7OP3ytt', 'hanif', '2233445566', 'hanif@gmail.com', '255, kelapadua, bekasi, indonesia, 110011', 'home', '', 'QhdAY8fhloeATB6bjYlu', 70, 1, '2024-12-10', 'in progress', 'pending'),
('6757a413a5622', 'FmssjDjMAoFkgY4FqnAl', 'G4v8mrwwVcbEr7OP3ytt', 'hanif', '2233445566', 'hanif@gmail.com', '255, kelapadua, bekasi, indonesia, 110011', 'home', '', 'kzmkTIh8R0AixvM68MxY', 80, 1, '2024-12-10', 'in progress', 'pending'),
('6757a413a591d', 'FmssjDjMAoFkgY4FqnAl', 'G4v8mrwwVcbEr7OP3ytt', 'hanif', '2233445566', 'hanif@gmail.com', '255, kelapadua, bekasi, indonesia, 110011', 'home', '', '1k4Z6Kpky6hm7VbLsvBK', 100, 1, '2024-12-10', 'in progress', 'pending'),
('6757a413a5d4b', 'FmssjDjMAoFkgY4FqnAl', 'G4v8mrwwVcbEr7OP3ytt', 'hanif', '2233445566', 'hanif@gmail.com', '255, kelapadua, bekasi, indonesia, 110011', 'home', '', 'cOw56WQKKHehaxCyO2en', 100, 1, '2024-12-10', 'in progress', 'pending'),
('6757ae52946cb', 'Jxd0XI4IS6NkxK2a7nbd', 'KUzUHYdblWc3LH5MgdmE', 'tiar', '0088113320', 'tiar@gmail.com', '210, zamrud, bekasi, Indonesia, 110011', 'office', '', 'tvHaYt24629RQb95HfOc', 80, 1, '2024-12-10', 'cancled', 'pending'),
('6757ae5294b2e', 'Jxd0XI4IS6NkxK2a7nbd', 'KUzUHYdblWc3LH5MgdmE', 'tiar', '0088113320', 'tiar@gmail.com', '210, zamrud, bekasi, Indonesia, 110011', 'office', '', 'ghc7IOwBotsCCM0pFfhA', 100, 1, '2024-12-10', 'in progress', 'pending'),
('6757ae529581e', 'Jxd0XI4IS6NkxK2a7nbd', 'KUzUHYdblWc3LH5MgdmE', 'tiar', '0088113320', 'tiar@gmail.com', '210, zamrud, bekasi, Indonesia, 110011', 'office', '', 'swhdfThzV7q82LNh3Om3', 110, 1, '2024-12-10', 'in progress', 'pending'),
('6757ae5295c7b', 'Jxd0XI4IS6NkxK2a7nbd', 'G4v8mrwwVcbEr7OP3ytt', 'tiar', '0088113320', 'tiar@gmail.com', '210, zamrud, bekasi, Indonesia, 110011', 'office', '', 'MvnV3BQFaEqAPHHlYUNo', 25, 1, '2024-12-10', 'in progress', 'pending'),
('6757ae5295fe1', 'Jxd0XI4IS6NkxK2a7nbd', 'G4v8mrwwVcbEr7OP3ytt', 'tiar', '0088113320', 'tiar@gmail.com', '210, zamrud, bekasi, Indonesia, 110011', 'office', '', 'wBeOxjzLz52l5A7sattD', 20, 1, '2024-12-10', 'in progress', 'pending'),
('6757ae5296382', 'Jxd0XI4IS6NkxK2a7nbd', 'G4v8mrwwVcbEr7OP3ytt', 'tiar', '0088113320', 'tiar@gmail.com', '210, zamrud, bekasi, Indonesia, 110011', 'office', '', 'xLhRc4vB9htgKrZJlmuB', 20, 1, '2024-12-10', 'in progress', 'pending'),
('6757ae52966ea', 'Jxd0XI4IS6NkxK2a7nbd', 'G4v8mrwwVcbEr7OP3ytt', 'tiar', '0088113320', 'tiar@gmail.com', '210, zamrud, bekasi, Indonesia, 110011', 'office', '', 'zYobVC5xlgRYJHSh91Z8', 30, 1, '2024-12-10', 'in progress', 'pending'),
('67689dd070e50', 'M77GLUEioC9KnK2XQdhY', 'KUzUHYdblWc3LH5MgdmE', 'Moreno Ferrel', '0812345678', 'moreno@gmail.com', 'graha, mustikajaya, Bekasi, Indonesia, 110011', 'home', '', 'ghc7IOwBotsCCM0pFfhA', 100, 1, '2024-12-23', 'in progress', 'pending'),
('67689dd07165b', 'M77GLUEioC9KnK2XQdhY', 'KUzUHYdblWc3LH5MgdmE', 'Moreno Ferrel', '0812345678', 'moreno@gmail.com', 'graha, mustikajaya, Bekasi, Indonesia, 110011', 'home', '', 'tvHaYt24629RQb95HfOc', 80, 1, '2024-12-23', 'in progress', 'pending'),
('67689dd071ae4', 'M77GLUEioC9KnK2XQdhY', 'KUzUHYdblWc3LH5MgdmE', 'Moreno Ferrel', '0812345678', 'moreno@gmail.com', 'graha, mustikajaya, Bekasi, Indonesia, 110011', 'home', '', 'swhdfThzV7q82LNh3Om3', 110, 1, '2024-12-23', 'in progress', 'pending'),
('67689dd071f5c', 'M77GLUEioC9KnK2XQdhY', 'G4v8mrwwVcbEr7OP3ytt', 'Moreno Ferrel', '0812345678', 'moreno@gmail.com', 'graha, mustikajaya, Bekasi, Indonesia, 110011', 'home', '', 'MvnV3BQFaEqAPHHlYUNo', 25, 1, '2024-12-23', 'in progress', 'pending'),
('67689dd07294a', 'M77GLUEioC9KnK2XQdhY', 'G4v8mrwwVcbEr7OP3ytt', 'Moreno Ferrel', '0812345678', 'moreno@gmail.com', 'graha, mustikajaya, Bekasi, Indonesia, 110011', 'home', '', 'wBeOxjzLz52l5A7sattD', 20, 1, '2024-12-23', 'in progress', 'pending'),
('67689dd072d7f', 'M77GLUEioC9KnK2XQdhY', 'G4v8mrwwVcbEr7OP3ytt', 'Moreno Ferrel', '0812345678', 'moreno@gmail.com', 'graha, mustikajaya, Bekasi, Indonesia, 110011', 'home', '', 'zYobVC5xlgRYJHSh91Z8', 30, 1, '2024-12-23', 'in progress', 'pending'),
('6769a9cea0812', 'M77GLUEioC9KnK2XQdhY', 'KUzUHYdblWc3LH5MgdmE', 'moreno', '1234567890', 'moreno@gmail.com', 'graha, mustikajaya, BEKASI, Indonesia, 110011', 'home', '', 'tvHaYt24629RQb95HfOc', 80, 1, '2024-12-24', 'cancled', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` varchar(20) NOT NULL,
  `seller_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL,
  `stock` int(100) NOT NULL,
  `product_detail` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `seller_id`, `name`, `price`, `image`, `stock`, `product_detail`, `status`) VALUES
('tvHaYt24629RQb95HfOc', 'KUzUHYdblWc3LH5MgdmE', 'chocolate ice cream', 80, '687180636_012c012ccc@2x.jpg', 20, 'Chocolate Ice Cream adalah es krim lezat dengan cita rasa cokelat premium yang dibuat dari bahan-bahan berkualitas tinggi. Setiap gigitan memberikan sensasi manis dan lembut dengan aroma khas cokelat yang kaya, cocok dinikmati dalam suasana santai bersama keluarga, teman, atau sebagai camilan manis di waktu pribadi Anda.', 'active'),
('PQPKjs7IsPBQ7Yuq5hbw', 'KUzUHYdblWc3LH5MgdmE', 'strawbery ice cream', 90, '547235148_012c012ccc@2x.jpg', 40, 'Strawberry Ice Cream adalah es krim segar dan lembut dengan rasa stroberi alami yang manis dan sedikit asam, memberikan kesegaran di setiap sendok. Dibuat dari bahan-bahan berkualitas tinggi seperti buah stroberi segar dan susu murni, es krim ini menjadi pilihan sempurna untuk penggemar rasa buah yang menyegarkan.', 'deactive'),
('ghc7IOwBotsCCM0pFfhA', 'KUzUHYdblWc3LH5MgdmE', 'matcha ice cream', 100, '535405916_012c012ccc@2x.jpg', 60, 'Matcha Ice Cream adalah es krim premium dengan cita rasa khas teh hijau Jepang yang autentik. Dibuat dengan matcha berkualitas tinggi, es krim ini menghadirkan keseimbangan sempurna antara rasa manis yang lembut dan pahit yang khas, memberikan pengalaman rasa yang mewah dan menenangkan.', 'active'),
('swhdfThzV7q82LNh3Om3', 'KUzUHYdblWc3LH5MgdmE', 'melon ice cream', 110, '518151488_012c012ccc@2x.jpg', 80, 'Melon Ice Cream adalah es krim segar dengan rasa manis alami dan aroma khas buah melon premium. Dibuat dari perpaduan daging melon asli dan susu berkualitas tinggi, es krim ini menawarkan sensasi rasa tropis yang lembut dan memanjakan lidah, sempurna untuk dinikmati di segala suasana.', 'active'),
('cGhfX9RXxFC7WhLqX72c', 'G4v8mrwwVcbEr7OP3ytt', 'Chocolate Ice Cream', 20, '687180636_012c012ccc@2x.jpg', 10, 'Nikmati sensasi manis dan lembut dari Chocolate Ice Cream premium kami. Dibuat dari cokelat asli berkualitas tinggi yang memberikan rasa kaya dan tekstur halus di setiap gigitan. Cocok dinikmati kapan saja, baik saat santai di rumah atau sebagai pelengkap acara spesial.', 'active'),
('MvnV3BQFaEqAPHHlYUNo', 'G4v8mrwwVcbEr7OP3ytt', 'Ice Cream Bar', 25, '547235148_012c012ccc@2x.jpg', 15, 'Nikmati kesegaran dan kelezatan manis dari Strawberry Ice Cream Bar, perpaduan sempurna antara es krim stroberi lembut dan lapisan cokelat putih yang renyah. Setiap gigitan memberikan sensasi creamy dan fruity yang menyegarkan, cocok untuk momen santai Anda.', 'active'),
('wBeOxjzLz52l5A7sattD', 'G4v8mrwwVcbEr7OP3ytt', 'Kiwi Ice Cream', 20, '518151488_012c012ccc@2x.jpg', 20, 'Rasakan kesegaran tropis dengan Kiwi Ice Cream yang lembut dan menyegarkan. Dibuat dari buah kiwi asli yang kaya akan vitamin C, setiap gigitan memberikan sensasi creamy dan fruity yang sempurna. Cocok untuk dinikmati di segala suasana!', 'active'),
('xLhRc4vB9htgKrZJlmuB', 'G4v8mrwwVcbEr7OP3ytt', 'Vanilla Ice Cream', 20, '514215896_012c012ccc@2x.jpg', 10, 'Nikmati cita rasa klasik dan elegan dari Vanilla Ice Cream, dibuat dari ekstrak vanila alami yang berkualitas tinggi. Teksturnya yang lembut dan creamy menjadikan es krim ini favorit sepanjang masa, cocok untuk dinikmati kapan saja dan di mana saja.', 'active'),
('zYobVC5xlgRYJHSh91Z8', 'G4v8mrwwVcbEr7OP3ytt', 'Mix Ice Cream', 30, 'product0.jpg', 25, 'Nikmati kelezatan yang luar biasa dari Mix Ice Cream, kombinasi sempurna antara beberapa rasa es krim favorit yang saling melengkapi. Dengan perpaduan rasa vanila, cokelat, stroberi, dan kiwi, es krim ini menawarkan pengalaman rasa yang beragam dan menyegarkan dalam satu gigitan. Cocok untuk dinikmati bersama keluarga atau teman!', 'active'),
('tePw02L2773coxOJdaMb', 'G4v8mrwwVcbEr7OP3ytt', 'Box Ice Cream', 35, 'boc.webp', 15, 'Nikmati Box Ice Cream, kemasan praktis dan ekonomis yang berisi es krim premium dalam berbagai rasa favorit. Sempurna untuk acara keluarga, pesta, atau sekadar menikmati waktu santai di rumah. Dengan kualitas rasa yang luar biasa dan kemasan yang praktis, Box Ice Cream ini menjadi pilihan ideal untuk berbagi kebahagiaan.', 'active'),
('zQFyAVEyJ3KecGdTK7Lh', 'G4v8mrwwVcbEr7OP3ytt', 'Cup Ice Cream', 25, 'product12.jpg', 15, 'Nikmati kesegaran es krim yang lezat dalam kemasan praktis dengan Chocolate Cup Ice Cream. Dibuat dari es krim cokelat premium yang kaya rasa, disajikan dalam cup cokelat renyah yang membuat pengalaman mencicipi semakin nikmat. Setiap gigitan adalah perpaduan sempurna antara es krim lembut dan cup cokelat yang kaya rasa. Sempurna untuk pencinta cokelat!', 'active'),
('A3TDQZ7G4FhpahOk3ClK', 'G4v8mrwwVcbEr7OP3ytt', 'Vanilla Corn', 10, 'product3-removebg-preview.png', 20, 'Nikmati kelezatan manis dan gurih dari Vanilla Corn Ice Cream, perpaduan sempurna antara rasa vanila yang lembut dan rasa jagung manis yang alami. Es krim ini hadir dengan tekstur yang creamy, serta potongan jagung yang memberikan sensasi kenyal dan unik di setiap gigitan. Cocok untuk Anda yang ingin mencoba rasa es krim yang berbeda dan segar!', 'active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sellers`
--

CREATE TABLE `sellers` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `email`, `password`, `image`) VALUES
('G4v8mrwwVcbEr7OP3ytt', 'selena ansari', 'selena@gmail.com', '826cff199e5734ba19d4fde182a993e153045a60', 'hMLPnEjo06pB42o2gxG7.jpg'),
('KUzUHYdblWc3LH5MgdmE', 'selena ansari', 'selena@gmail.com', '826cff199e5734ba19d4fde182a993e153045a60', '7DLBQxucAMKpcYZUKn3Z.jpg'),
('4HVMsHLcpauhFR3DnY4b', 'Hanif Alfian', 'hanif@gmail.com', '021403bf9cfa12e30443d58dc6b43d7569e4ea63', 'dEARnJFlRHuTf8Oobt5V.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`) VALUES
('WFaXoVtjvMym8IfHhDON', 'muhammad firza', 'firza@gmail.com', 'f159428217cb3cc28bf2b9d54de155bf0ba0f661', '2WxYlWImj81sMXwxWlIk.jpg'),
('FmssjDjMAoFkgY4FqnAl', 'hanif', 'hanif@gmail.com', '021403bf9cfa12e30443d58dc6b43d7569e4ea63', 'CfVzht5952N6tQq2vRMR.jpg'),
('Jxd0XI4IS6NkxK2a7nbd', 'tiar', 'tiar@gmail.com', '186e7c7677c7b9c42cd45c5b545802498ae4d66f', 'cQesYxUnwuXF7NtC6NOR.jpg'),
('M77GLUEioC9KnK2XQdhY', 'Moreno Ferrel', 'moreno@gmail.com', '1c018a305664da4040a64de20321707c068d2f4a', 'vmEPJpgaut1va59AEc7W.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlist`
--

CREATE TABLE `wishlist` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
