-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2022 at 08:03 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id_brand` int(11) NOT NULL,
  `name_brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id_brand`, `name_brand`) VALUES
(2, 'Luxury'),
(3, 'Hobu'),
(4, ' Aillen'),
(5, 'BELLA'),
(6, 'Woody');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `method_payment` varchar(50) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `id_user`, `code_cart`, `method_payment`, `cart_status`, `created_at`) VALUES
(104, 118, '8961532644', 'Tiền mặt', 1, '2022-12-11 06:05:58'),
(105, 118, '5587516619', 'Tiền mặt', 1, '2022-12-11 06:08:42'),
(106, 118, '1018554549', 'Tiền mặt', 0, '2022-12-11 06:09:52'),
(107, 121, '8765932670', 'Momo', 1, '2022-12-16 04:41:17'),
(108, 121, '1917209784', 'Momo', 1, '2022-12-16 04:45:42'),
(109, 121, '9317221142', 'Momo', 0, '2022-12-16 04:48:46'),
(110, 123, '7723407578', 'Tiền mặt', 0, '2022-12-16 06:28:03'),
(111, 123, '6229638292', 'Tiền mặt', 1, '2022-12-16 06:28:46'),
(112, 123, '2427569844', 'Momo', 1, '2022-12-16 06:29:26'),
(113, 123, '2918301841', 'Tiền mặt', 1, '2022-12-16 06:54:42'),
(114, 125, '4055696853', 'Momo', 1, '2022-12-16 07:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`id_cart_details`, `code_cart`, `id_product`, `quantity`) VALUES
(187, '8961532644', 29, 4),
(188, '8961532644', 48, 6),
(189, '8961532644', 52, 1),
(190, '5587516619', 29, 4),
(191, '5587516619', 48, 6),
(192, '5587516619', 52, 1),
(193, '1018554549', 29, 4),
(194, '1018554549', 48, 6),
(195, '1018554549', 52, 1),
(196, '8765932670', 52, 7),
(197, '1917209784', 74, 1),
(198, '9317221142', 29, 4),
(199, '7723407578', 52, 1),
(200, '6229638292', 52, 1),
(201, '2427569844', 29, 4),
(202, '2918301841', 29, 1),
(203, '4055696853', 67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(100) NOT NULL,
  `order_category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name_category`, `order_category`) VALUES
(73, 'Ghế', 73),
(75, 'Sofa', 2),
(76, 'Trang trí', 32),
(77, 'Kệ sách', 32),
(78, 'Bàn', 78),
(80, 'Tủ', 60);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `user` varchar(50) NOT NULL,
  `content` tinytext NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `id_product`, `id_user`, `product`, `user`, `content`, `star`, `created_at`) VALUES
(13, 52, 118, 'Kệ đẩy Hobu', 'viet.lenai123@hcmut.edu.vn', 'cúng được', 4, '2022/12/12'),
(14, 52, 120, 'Kệ đẩy Hobu', 'vietbdf000@gmail.com', 'quá tuyệt', 5, '2022/12/12'),
(20, 29, 120, 'Kệ đẩy Hobu', 'vietbdf000@gmail.com', 'quá tốt', 5, '2022/12/12'),
(21, 52, 121, 'Ghế Luxury', 'thinh.chungmaou1702@hcmut.edu.vn', 'tuyệt vời', 5, '2022/12/16'),
(22, 52, 123, 'Ghế Luxury', 'thinh.chungmaou1702@hcmut.edu.vn', 'tốt', 5, '2022/12/16'),
(42, 67, 125, 'Ghế BELLA', 'thinh.chungmaou1702@hcmut.edu.vn', 'quá đẹp', 5, '2022/12/16');

-- --------------------------------------------------------

--
-- Table structure for table `infomation`
--

CREATE TABLE `infomation` (
  `id` int(11) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `introduce` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `infomation`
--

INSERT INTO `infomation` (`id`, `phone`, `email`, `address`, `introduce`) VALUES
(1, ' 1900 113', 'seateaminfo@gmail.co', '268 Lý Thường Kiệt, Phường 14, Quận 10, Thành phố Hồ Chí Minh', '                                                                                                                                            Sea Furniture xây dựng một thương hiệu thân thiện thông qua cách chúng tôi làm sản phẩm và đem sản phẩm đó đến tay của bạn. Một sản phẩm thân thiện được cung cấp bởi một dịch vụ thân thiện chính là Kim chỉ nam để thành công của chúng tôi.\r\n\r\nSea Furniture chủ động thay đổi để không ngừng phát triển. Ngoài ra, khách hàng, bằng những sản phẩm của chúng tôi, có thể chủ động trong việc tạo nên phong cách sống riêng biệt trong không gian của mỗi người.\r\n\r\nChúng tôi tin rằng: Không gian sống đẹp có thể làm thay đổi chất lượng cuộc sống của bạn. Và chúng tôi mong mỏi truyền tải niềm tin đó đến cho mọi người để ai cũng có một nơi đáng sống.\r\n\r\nChúng tôi không chỉ cung cấp sản phẩm nội thất, chúng tôi mang cho bạn phong cách sống. “Less is more” - Một sự đơn giản nhất định nhưng tinh tế trong không gian sống sẽ giúp bạn dễ dàng cân bằng hơn trong cuộc sống.                                                                                                                                                                                                                        ');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `name`, `image`, `brief`, `content`, `status`, `created_at`) VALUES
(4, 'Mẹo bảo quản & vệ sinh các đồ nội thất', '1670847122_post1.jpg', '', '<p>Đối với nội thất bằng kim loại</p><p>- Khi xử lý các vết bẩn thông thường, bạn chỉ cần xịt một chút dung dịch vệ sinh kính và dùng khăn mềm để lau qua.&nbsp;<br>- Đối với các vết ố vàng, hãy xử lý chúng bằng khăn thấm ít chanh loãng hoặc giấm. Đừng quên lau khô sản phẩm sau khi vệ sinh (để tránh axit trong dung dịch làm kim loại bị hoan gỉ). Phương pháp này cũng có thể sử dụng cho vết gỉ nhưng sử dụng dung dịch đậm đặc hơn, thời gian dùng trên sản phẩm lâu hơn (5-10 phút). Ngoài ra, khoai tây cắt lát cũng có thể thay thế chanh hay giấm.<br>- Để đánh bóng các vật dụng bằng sắt không gỉ hoặc crom, phủ một ít bột mì lên bề mặt, chà xát, rửa lại với nước và lau thật khô.<br>- Nếu không sử dụng những chất tẩy tự nhiên (như chanh, giấm, bột mì,...) thì hãy mua những loại dung dịch vệ sinh chuyên dụng cho từng chất liệu bạn nhé. Tuyệt đối không sử dụng giấy nhám hay các sản phẩm có mức độ tẩy rửa quá cao làm hư bề mặt sản phẩm.</p><p>Đối với nội thất có sử dụng chất hiệu da<br>- Bạn nên tránh để các vật dụng da tiếp xúc trực tiếp với ánh sáng mặt trời làm giảm sắc tố và độ đàn hồi.&nbsp;<br>- Không sử dụng chất tẩy mạnh, nhiều thành phần xút trong dung dịch.<br>- Không sử dụng bàn chải để chà các vết bẩn trên bề mặt sản phẩm da. Vì chất liệu này cực kì nhạy cảm nên bạn hãy sử dụng những dụng cụ và chất tẩy rửa chuyên dụng để an tâm hơn bạn nhé.</p><p>Đối với mặt gương, kính</p><p>- Để vệ sinh gương thật sạch và sáng, trước tiên bạn hãy cố gắng loại bỏ các vết nước đọng trên gương bằng khăn ướt và khăn khô. Sau đó sử dụng các dung dịch chuyên dụng để lau gương sạch và sáng hơn, lưu ý bạn chỉ nên lau theo một chiều và cố gắng lau hết chiều dài (hoặc ngang) một lượt để hạn chế các vệt nước còn sót lại.</p>', 1, '0000-00-00'),
(5, 'Thư thái trong chính căn hộ của bạn', '1671161524_blog-grid-15.jpg', '<p>Thư thái trong chính căn hộ của bạn</p>', '<p>Nét thư thái và thanh lịch là cảm nhận đầu tiên mà Nhà nghĩ tới khi kể cho khách hàng nghe về ý tưởng căn hộ. Giữa thành phố hiện đại thật hiếm có cơ hội để chúng ta được gần gũi với thiên nhiên nhưng với phong cách Tropical cùng sự tinh gọn của Minimalism, Nhà muốn đem cả thiên nhiên gần hơn với cuộc sống hằng ngày.</p><p>Tận dụng điều kiện môi trường, Nhà bố trí hai mặt căn phòng bằng lớp kính để đón ánh sáng cùng với sơn tường màu trắng tạo cho không gian sáng sủa rất tự nhiên.</p><p>Vì Việt Nam chúng ta nằm trong khu vực Nhiệt đới ẩm gió mùa chính vì vậy nên mùa đông thường dài, rét và ẩm ướt. Đồng thời, Nhà muốn giữ nét đặc trưng Đông Á cho căn phòng nên đã dử dụng gam màu chủ đạo là cam sáng cho sàn nhà và các đồ dùng bằng gỗ tạo cho căn phòng thêm cảm giác vững chắc. Ngoài ra, xuất hiện của cây cảnh trong không gian trầm ấm sẽ tạo điểm nhấn nổi bật và tăng thêm vẻ tươi mát cho cây cối.</p>', 1, '0000-00-00'),
(6, 'Bảo quản đồ gỗ khi độ ẩm không khí cao', '1671161584_dining-suite-for-sale.jpg', '<p>Bảo quản đồ gỗ khi độ ẩm không khí cao</p>', '<p>Đồ nội thất bằng gỗ chất lượng cao là một sự đầu tư tuyệt vời để trang trí ngôi nhà của bạn bởi vì độ bền của chúng. Đồ gỗ có thời hạn sử dụng rất lâu, có thể đươc dùng truyền từ đời này sang đời khác.</p><p>Tất nhiên để kéo dài tuổi thọ của sản phẩm, quan trọng là bạn phải thực hiện các bước cơ bản để bảo vệ đồ gỗ ở nhà. Đặc biệt là trong những thời điểm độ ẩm trong môi trường tăng cao từ tháng 4 đến tháng 8 hằng năm. Nếu không có phương pháp bảo quản, khi thời tiết quá ẩm sẽ khiến đồ nội thất làm bằng gỗ xuất hiện các giọt nước li ti trên bề mặt. Lúc này, lớp bề mặt phía ngoài sẽ có chỗ bị mất màu, thậm chí nghiệm trọng sẽ sinh mốc và biến dạng.</p><p>Trước khi đồ gỗ có hiện tượng tụ nước thành các hạt li ti hoặc nấm mốc, có thể xử lý bằng cách, bên trong đồ gỗ đặt các chất chống ẩm. Trong cuộc sống thường ngày, rất nhiều vật xung quanh ta đều có tác dụng như một chất chống ẩm thiên nhiên. Tìm ngay trong nhà bạn các thứ có khả năng chống ẩm tuyệt vời cho tủ gỗ đó là:</p><p>Lá trà: Đặt lá trà vào trong một túi vải xô hoặc dùng báo gói lại, đặt tản ra các góc của tủ đựng tài liệu, như vậy không chỉ có thể hút ẩm, khử mùi mà còn không có tác dụng phụ.<br>Bã cà phê: Bã cà phê có tác dụng kép vừa hút ẩm vừa khử mùi ẩm mốc. Cà phê sau khi dùng xong, lấy bã phơi khô đặt trong túi vải xô hoặc tất cũ, buộc chặt là đã trở thành một túi chống ẩm hiệu quả mà cực đơn giản rồi.<br>Vôi: Có thể đặt đá vôi trong một chiếc hộp không đậy nắp, đặt ở góc tủ, lúc thời tiết ẩm ướt, tác dụng hút ẩm của vôi sẽ phát huy vô cùng hiệu quả.<br>Than hoạt tính: Than hoạt tính có tác dụng hút ẩm khử mùi rất tốt, nhưng nên chú ý đặt trong hộp hoặc gói trong báo để tránh làm bẩn giấy tờ.<br>Báo: Có thể phủ một lớp báo dưới đáy tủ, thậm chí dán báo ở mặt trong của tủ cũng được, bởi vì báo không chỉ có thể hút ẩm, chống mốc mà còn mùi của mực còn có thể xua đuổi côn trùng.<br>2. Bề mặt bên ngoài đồ nội thất cần được lau sạch bụi và làm khô. Nếu nó không sạch, nó có thể bị biến màu hoặc hư hỏng, hoặc có mùi hôi. Bạn hãy lau khô nhẹ nhàng qua các đồ dùng bằng các loại vải mềm, sau đó bôi một lớp dầu hạch đào (dầu quả óc chó) lên bề mặt. Bạn có thể kiếm mua dầu hạch đào trên các trang thương mại điện tử &nbsp;với giá dao động khoảng 75.000đ/100ml.</p>', 1, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `name_product` varchar(250) NOT NULL,
  `id_category` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `number` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `detail` text NOT NULL,
  `brand` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id_product`, `name_product`, `id_category`, `code`, `price`, `number`, `image`, `detail`, `brand`, `status`) VALUES
(29, 'Kệ đẩy Hobu', 77, 'c1008', 560, 23, '1670612165_item2.png', '<p><strong>Màu sắc:&nbsp;</strong>Trắng, Đen, Xám nhạt</p><p><strong>Kích thước:</strong>&nbsp;D50 x R40 x C65 (cm).</p><p><strong>Khối lượng thực tế:</strong>&nbsp;8,5kg.</p><p><strong>Chất liệu:&nbsp;</strong>Sắt sơn tĩnh điện</p><p><strong>Ý tưởng thiết kế:</strong></p><p>HOBU Trolley là sản phẩm mở đầu cho HOBU Collection của Make My Home, được lấy cảm hứng từ những thanh tre giản dị gắn liền với cuộc sống người Việt.</p><p><strong>Các điểm nổi bật:</strong></p><p>Với thiết kế ba tầng, không gian chứa đồ rộng rãi và dễ dàng di chuyển, HOBU Trolley sẽ khiến bạn hài lòng về sự linh hoạt và tiện dụng của mình.</p>', 'Hobu', 1),
(48, 'Kệ TV Hobu', 77, 'xvxcv', 123, 123, '1670610258_item3.jpg', '<p><strong>Màu sắc:</strong><br>Chân: Trắng, đen.<br>Mặt: Trắng.<br><strong>Kích thước:</strong>&nbsp;D150 x R45 x C54 (cm)<br><strong>Khối lượng thực tế:</strong>&nbsp;22kg.<br><strong>Chất liệu:</strong><br>Chân: Sắt sơn tĩnh điện.<br>Mặt: Gỗ MFC</p><p><strong>Các điểm nổi bật:</strong><br>Kệ Tivi – Bằng việc tối đa hoá diện tích sử dụng, Kệ tivi Hobu mang lại giải pháp trưng bày và lưu trữ hiệu quả nhưng vẫn tiết kiệm không gian cho gia đình nhỏ của bạn.<br>Kệ Tivi HOBU với khung sắt chắc chắn sẽ khiến cho góc phòng của bạn trở nên ngăn nắp và tiết kiệm diện tích hơn rất nhiều.<br>Thiết kế đơn giản, 2 tầng cùng vô cùng tiện lợi, không gian chứa đồ rộng. Dễ dàng tháo lắp, tiết kiệm chi phí vận chuyển.<br>Chất liệu: sơn tĩnh điện chống gỉ sét, mặt gỗ MFC chống ẩm, chống trầy xướt.</p>', 'Hobu', 1),
(52, 'Ghế Luxury', 73, 'c1001', 230, 321, '1670610138_item1.jpg', '<p><strong>Màu sắc:&nbsp;</strong></p><p>Chân: Trắng, đen, gỗ.</p><p>Mặt: Trắng, đen, xám, hồng.</p><p><strong>Kích thước:</strong>&nbsp;H80/45 x D40 x R48.</p><p><strong>Khối lượng thực tế:</strong>&nbsp;5kg.</p><p><strong>Chất liệu:</strong>&nbsp;Chân sắt sơn tĩnh điện, mặt nhựa MDS.</p><p><strong>Ý tưởng thiết kế:</strong></p><p>Với những biến tấu đa dạng độc đáo, có thể nói Luxury là một trong những mẫu ghế hiện đại được ưa chuộng nhất hiện nay. Luxury có kiểu dáng DAW - một biểu tượng của thiết kế hiện đại ngày nay.</p><p>Phần tựa lưng ghế bằng nhựa với độ cao và độ ngả hợp lí giúp hỗ trợ xương sống. Chân ghế gỗ tự nhiên và cấu trúc cân bằng trọng lượng và tạo ra nét khác biệt.</p><p>Sự kết hợp độc đáo và sáng tạo giữa các chất liệu gỗ, nhựa, đệm… tạo nên một chiếc ghế đẹp và thanh lịch cho ngôi nhà của bạn.</p><p><strong>Các điểm nổi bật:</strong></p><p>Mặt ngồi ghế hõm sâu, dáng ghế như một thác nước đổ xuống giữ cho người ngồi thoải mái bằng cách giảm áp lực lên lưng và đùi. Qua đó bạn có thể ngồi lâu hơn trên ghế mà không cảm thấy mỏi.</p><p>Sử dụng những chiếc ghế Luxury xinh xắn là giải pháp thông minh tiết kiệm diện tích cho ngôi nhà của bạn. Bạn có thể tha hồ lựa chọn kết hợp màu sắc, thoải mái thay đổi cho mọi không gian, ứng dụng.</p><p>Chất liệu hiện đại, bền, chắc chắn.</p>', 'Luxury', 1),
(53, 'Bàn Ailee1', 78, 'c1007', 450, 340, '1671173677_g-2-master.jpg', '<p>Màu sắc: Chân: Trắng, đen. Mặt: Trắng, đen, gỗ. Kích thước: H75 x D120 x R50. Khối lượng thực tế: 11,5kg. Chất liệu: Mặt bàn: Gỗ MDF chống ẩm. Chân bàn: Sắt sơn tĩnh điện. Ý tưởng thiết kế: Một sản phẩm nội thất văn phòng được ưa chuộng. Bàn chân Aileen với giá thành cạnh tranh, chất lượng vật liệu vượt trội, thiết kế tối giản mà thanh lịch sẽ mang lại sự hài lòng cho bạn. Các điểm nổi bật: Phần mặt bàn làm từ gỗ công nghiệp MDF có khả năng chống ẩm tốt, các đường vân hiên đại. Phần chân tháo lắp được làm từ sắt sơn tĩnh điện có khả năng chóng rỉ sét, độ bền hoàn hảo, thuận tiện trong việc di chuyển, tháo rời. Được thiết kế tỉ mỉ đến từng góc độ cho ra bộ khung vững chãi có khả năng chịu lực tốt nhất.</p>', 'Woody', 1),
(65, 'Ghế Woody Pinky', 73, 'easd1', 1250, 25, '1671160005_ghe-hong-cheo-30f7d63900384e489ee1e06c11186f3d-master.jpg', '', 'Woody', 1),
(66, 'Ghế Woody', 73, 'weqe4', 900, 30, '1671160038_g-2-master.jpg', '', 'Woody', 1),
(67, 'Ghế BELLA', 73, 'asda3', 750, 12, '1671160116_profile-ghebee-den-xeo-56ae996c8c7b4fb0826bc671eb5742d9-master.png', '', 'BELLA', 1),
(68, 'Ghế BELLA 2', 73, 'asd12', 80, 23, '1671160170_2-e75ada50bdb54ea99d0db5af778c40bb-master.jpg', '', 'BELLA', 1),
(69, 'Tủ giày Hobu', 80, 'sdasd34', 3100, 5, '1671160350_30-do-2021fed95b944be3873d99cbd3dd93ff-master.jpg', '', 'Hobu', 1),
(73, 'Tranh ảnh', 76, 'asdd1', 2000, 5, '1671161093_img-5508-72a51c73445544af9dfa25fd2a38e56c-master.jpg', '', ' Aillen', 1),
(74, 'Sofa góc BELLA', 75, 'sad34', 1000, 7, '1671161148_cinderela-goc-chinh-dien-darkgrey-429b69161e8b4c85bf93cc7f5d4eaf87-master.png', '', 'Woody', 1),
(77, 'ghế sofa 1', 73, 'easd1', 23, 23, '1671173704_cinderela-goc-chinh-dien-darkgrey-429b69161e8b4c85bf93cc7f5d4eaf87-master.png', 'àb', 'BELLA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `id` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shipment`
--

INSERT INTO `shipment` (`id`, `code_cart`, `name`, `email`, `phone`, `address`) VALUES
(4, '2147483647', 'Lê Quang Việt', 'viet.lenai123@hcmut.edu.vn', '0915135008', ' 72 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, Thành phố HCM'),
(5, '2147483647', 'Lê Quang Việt', 'viet.lenai123@hcmut.edu.vn', '0915135008', ' 72 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, Thành phố HCM'),
(6, '1018554549', 'Lê Quang Việt', 'viet.lenai123@hcmut.edu.vn', '0915135008', ' 72 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, Thành phố HCM'),
(7, '8765932670', 'Thinh Chung', 'thinh.chungmaou1702@hcmut.edu.vn', '0943777525', '370, Thống Nhất, P.16, Q. Gò Vấp'),
(8, '1917209784', 'Thinh Chung', 'thinh.chungmaou1702@hcmut.edu.vn', '0943777525', '370, Thống Nhất, P.16, Q. Gò Vấp'),
(9, '9317221142', 'Thinh Chung', 'thinh.chungmaou1702@hcmut.edu.vn', '0943777525', '370, Thống Nhất, P.16, Q. Gò Vấp'),
(10, '7723407578', 'Phục', 'thinh.chungmaou1702@hcmut.edu.vn', '0943656', '123, đường số 1'),
(11, '6229638292', 'Phục', 'thinh.chungmaou1702@hcmut.edu.vn', '0943656', '123, đường số 1'),
(12, '2427569844', 'Phục', 'thinh.chungmaou1702@hcmut.edu.vn', '0943656', '123, đường số 1'),
(13, '2918301841', 'Phục', 'thinh.chungmaou1702@hcmut.edu.vn', '0943656', '123, đường số 1'),
(14, '4055696853', 'Thinh Chung1', 'thinh.chungmaou1702@hcmut.edu.vn', '0915135008', '370, Thống Nhất, P.16, Q. GÒ Vấp');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `is_admin` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `name`, `phone`, `address`, `is_admin`, `status`) VALUES
(110, 'vietbdf000@gmail.com', '202cb962ac59075b964b07152d234b70', 'Lê Văn Long', '0915135008', ' 73 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, Thành phố HCM', 0, 1),
(118, 'viet.lenai123@hcmut.edu.vn', '827ccb0eea8a706c4c34a16891f84e7b', 'Lê Quang Việt', '0915135008', ' 72 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, Thành phố HCM', 0, 1),
(122, 'vietbdf000@gmail.com', '202cb962ac59075b964b07152d234b70', 'việt', '0905034064', ' 73 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, Thành phố HCM', 1, 1),
(124, 'vietbdf000@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Thinh Chung', '0905036786', '370, Thống Nhất, P.16, Q. GÒ Vấp', 0, 1),
(125, 'thinh.chungmaou1702@hcmut.edu.vn', '827ccb0eea8a706c4c34a16891f84e7b', 'Thinh Chung1', '0915135008', '370, Thống Nhất, P.16, Q. GÒ Vấp', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id_brand`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infomation`
--
ALTER TABLE `infomation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `infomation`
--
ALTER TABLE `infomation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
