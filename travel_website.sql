-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-02 15:05:12
-- 伺服器版本： 10.4.27-MariaDB
-- PHP 版本： 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `travel_website`
--

-- --------------------------------------------------------

--
-- 資料表結構 `attractions_element`
--

CREATE TABLE `attractions_element` (
  `id` int(10) UNSIGNED NOT NULL,
  `checkname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `attractions_element`
--

INSERT INTO `attractions_element` (`id`, `checkname`) VALUES
(1, '遊樂園'),
(2, '自然園區'),
(3, '美食'),
(4, '購物'),
(5, '知識'),
(6, '動物園'),
(7, '神社'),
(8, '古蹟'),
(9, '景觀');

-- --------------------------------------------------------

--
-- 資料表結構 `attractions_img`
--

CREATE TABLE `attractions_img` (
  `id` int(11) NOT NULL,
  `path` varchar(100) DEFAULT NULL,
  `attraction_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `attractions_img`
--

INSERT INTO `attractions_img` (`id`, `path`, `attraction_id`) VALUES
(1, '/img/spotDetail/tokyodisneyland1.jpg', 1),
(2, '/img/spotDetail/tokyodisneyland2.jpeg', 1),
(3, '/img/spotDetail/tokyodisneyland3.jpg', 1),
(4, '/img/spotDetail/tokyodisneyland4.jpg', 1),
(5, '/img/spotDetail/tokyodisneyland5.jpg', 1),
(6, '/img/spotDetail/tokyodisneyland6.png', 1),
(7, '/img/spotDetail/tokyodisneysea01.jpg', 2),
(8, '/img/spotDetail/tokyodisneysea02.jpg', 2),
(9, '/img/spotDetail/tokyodisneysea03.jpg', 2),
(10, '/img/spotDetail/tokyodisneysea04.jpg', 2),
(11, '/img/spotDetail/tokyodisneysea05.jpg', 2),
(12, '/img/spotDetail/tokyodisneysea06.jpg', 2),
(13, '/img/spotDetail/淺草寺01.jpg', 3),
(14, '/img/spotDetail/淺草寺02.jpg', 3),
(15, '/img/spotDetail/淺草寺03.jpg', 3),
(16, '/img/spotDetail/淺草寺04.jpg', 3),
(17, '/img/spotDetail/淺草寺05.jpg', 3),
(18, '/img/spotDetail/淺草寺06.jpg', 3),
(19, '/img/spotDetail/晴空塔01.jpg', 4),
(20, '/img/spotDetail/晴空塔02.jpg', 4),
(21, '/img/spotDetail/晴空塔03.jpg', 4),
(22, '/img/spotDetail/晴空塔04.jpg', 4),
(23, '/img/spotDetail/晴空塔05.jpg', 4),
(24, '/img/spotDetail/晴空塔06.jpg', 4),
(25, '/img/spotDetail/明治神宮01.jpg', 5),
(26, '/img/spotDetail/明治神宮02.jpg', 5),
(27, '/img/spotDetail/明治神宮03.jpg', 5),
(28, '/img/spotDetail/明治神宮04.jpg', 5),
(29, '/img/spotDetail/明治神宮05.jpg', 5),
(30, '/img/spotDetail/明治神宮06.jpg', 5),
(31, '/img/spotDetail/築地市場01.jpg', 6),
(32, '/img/spotDetail/築地市場02.jpg', 6),
(33, '/img/spotDetail/築地市場03.jpg', 6),
(34, '/img/spotDetail/築地市場04.jpg', 6),
(35, '/img/spotDetail/築地市場05.jpg', 6),
(36, '/img/spotDetail/築地市場06.jpg', 6),
(37, '/img/spotDetail/日本科學未來館01.jpg', 7),
(38, '/img/spotDetail/日本科學未來館02.jpg', 7),
(39, '/img/spotDetail/日本科學未來館03.jpg', 7),
(40, '/img/spotDetail/日本科學未來館04.jpg', 7),
(41, '/img/spotDetail/日本科學未來館05.jpg', 7),
(42, '/img/spotDetail/日本科學未來館06.jpg', 7),
(43, '/img/spotDetail/井之頭自然文化園01.jpg', 8),
(44, '/img/spotDetail/井之頭自然文化園02.jpg', 8),
(45, '/img/spotDetail/井之頭自然文化園03.jpg', 8),
(46, '/img/spotDetail/井之頭自然文化園04.jpg', 8),
(47, '/img/spotDetail/井之頭自然文化園05.jpg', 8),
(48, '/img/spotDetail/井之頭自然文化園06.jpg', 8),
(49, '/img/spotDetail/秋葉原01.jpg', 9),
(50, '/img/spotDetail/秋葉原02.jpg', 9),
(51, '/img/spotDetail/秋葉原03.jpg', 9),
(52, '/img/spotDetail/秋葉原04.jpg', 9),
(53, '/img/spotDetail/秋葉原05.jpg', 9),
(54, '/img/spotDetail/秋葉原06.jpg', 9),
(55, '/img/spotDetail/新倉山淺間公園01.jpg', 10),
(56, '/img/spotDetail/新倉山淺間公園02.jpg', 10),
(57, '/img/spotDetail/新倉山淺間公園03.jpg', 10),
(58, '/img/spotDetail/新倉山淺間公園04.jpg', 10),
(59, '/img/spotDetail/新倉山淺間公園05.jpg', 10),
(60, '/img/spotDetail/新倉山淺間公園06.jpg', 10),
(61, '/img/spotDetail/皇居01.jpg', 11),
(62, '/img/spotDetail/皇居02.jpg', 11),
(63, '/img/spotDetail/皇居03.jpg', 11),
(64, '/img/spotDetail/皇居04.jpg', 11),
(65, '/img/spotDetail/皇居05.jpg', 11),
(66, '/img/spotDetail/皇居06.jpg', 11),
(67, '/img/spotDetail/三鷹之森吉卜力美術館01.jpg', 12),
(68, '/img/spotDetail/三鷹之森吉卜力美術館02.jpg', 12),
(69, '/img/spotDetail/三鷹之森吉卜力美術館03.jpg', 12),
(70, '/img/spotDetail/三鷹之森吉卜力美術館04.jpg', 12),
(71, '/img/spotDetail/三鷹之森吉卜力美術館05.jpg', 12),
(72, '/img/spotDetail/三鷹之森吉卜力美術館06.jpg', 12),
(73, '/img/spotDetail/新宿御苑01.jpg', 13),
(74, '/img/spotDetail/新宿御苑02.jpg', 13),
(75, '/img/spotDetail/新宿御苑03.jpg', 13),
(76, '/img/spotDetail/新宿御苑04.jpg', 13),
(77, '/img/spotDetail/新宿御苑05.jpg', 13),
(78, '/img/spotDetail/新宿御苑06.jpg', 13),
(79, '/img/spotDetail/上野恩賜公園01.jpg', 14),
(80, '/img/spotDetail/上野恩賜公園02.jpg', 14),
(81, '/img/spotDetail/上野恩賜公園03.jpg', 14),
(82, '/img/spotDetail/上野恩賜公園04.jpg', 14),
(83, '/img/spotDetail/上野恩賜公園05.jpg', 14),
(84, '/img/spotDetail/上野恩賜公園06.jpg', 14),
(85, '/img/spotDetail/御台場海濱公園01.jpg', 15),
(86, '/img/spotDetail/御台場海濱公園02.jpg', 15),
(87, '/img/spotDetail/御台場海濱公園03.jpg', 15),
(88, '/img/spotDetail/御台場海濱公園04.jpg', 15),
(89, '/img/spotDetail/御台場海濱公園05.jpg', 15),
(90, '/img/spotDetail/御台場海濱公園06.jpg', 15),
(91, '/img/spotDetail/澀谷SKY01.jpg', 16),
(92, '/img/spotDetail/澀谷SKY02.jpg', 16),
(93, '/img/spotDetail/澀谷SKY03.jpg', 16),
(94, '/img/spotDetail/澀谷SKY04.jpg', 16),
(95, '/img/spotDetail/澀谷SKY05.jpg', 16),
(96, '/img/spotDetail/澀谷SKY06.jpg', 16),
(97, '/img/spotDetail/六本木新城展望台01.jpg', 17),
(98, '/img/spotDetail/六本木新城展望台02.jpg', 17),
(99, '/img/spotDetail/六本木新城展望台03.jpg', 17),
(100, '/img/spotDetail/六本木新城展望台04.jpg', 17),
(101, '/img/spotDetail/六本木新城展望台05.jpg', 17),
(102, '/img/spotDetail/六本木新城展望台06.jpg', 17),
(103, '/img/spotDetail/阿美橫町01.jpg', 18),
(104, '/img/spotDetail/阿美橫町02.jpg', 18),
(105, '/img/spotDetail/阿美橫町03.jpg', 18),
(106, '/img/spotDetail/阿美橫町04.jpg', 18),
(107, '/img/spotDetail/阿美橫町05.jpg', 18),
(108, '/img/spotDetail/阿美橫町06.jpg', 18),
(109, '/img/spotDetail/上野動物園01.jpg', 19),
(110, '/img/spotDetail/上野動物園02.jpg', 19),
(111, '/img/spotDetail/上野動物園03.jpg', 19),
(112, '/img/spotDetail/上野動物園04.jpg', 19),
(113, '/img/spotDetail/上野動物園05.jpg', 19),
(114, '/img/spotDetail/上野動物園06.jpg', 19),
(115, '/img/spotDetail/歌舞伎町01.jpg', 20),
(116, '/img/spotDetail/歌舞伎町02.jpg', 20),
(117, '/img/spotDetail/歌舞伎町03.jpg', 20),
(118, '/img/spotDetail/歌舞伎町04.jpg', 20),
(119, '/img/spotDetail/歌舞伎町05.jpg', 20),
(120, '/img/spotDetail/歌舞伎町06.jpg', 20),
(121, '/img/spotDetail/忠犬八公像01.jpg', 21),
(122, '/img/spotDetail/忠犬八公像02.jpg', 21),
(123, '/img/spotDetail/忠犬八公像03.jpg', 21),
(124, '/img/spotDetail/忠犬八公像04.jpg', 21),
(125, '/img/spotDetail/忠犬八公像05.jpg', 21),
(126, '/img/spotDetail/忠犬八公像06.jpg', 21),
(127, '/img/spotDetail/竹下通01.jpg', 22),
(128, '/img/spotDetail/竹下通02.jpg', 22),
(129, '/img/spotDetail/竹下通03.jpg', 22),
(130, '/img/spotDetail/竹下通04.jpg', 22),
(131, '/img/spotDetail/竹下通05.jpg', 22),
(132, '/img/spotDetail/竹下通06.jpg', 22),
(133, '/img/spotDetail/六本木01.jpg', 23),
(134, '/img/spotDetail/六本木02.jpg', 23),
(135, '/img/spotDetail/六本木03.jpg', 23),
(136, '/img/spotDetail/六本木04.jpg', 23),
(137, '/img/spotDetail/六本木05.jpg', 23),
(138, '/img/spotDetail/六本木06.jpg', 23);

-- --------------------------------------------------------

--
-- 資料表結構 `attractions_info`
--

CREATE TABLE `attractions_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `opentime` varchar(50) NOT NULL,
  `clickrate` int(11) NOT NULL,
  `ticketprice` int(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `suggestedtime` int(11) NOT NULL,
  `coordinates` varchar(100) NOT NULL,
  `lat` decimal(20,10) NOT NULL,
  `lng` decimal(20,10) NOT NULL,
  `detailed` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `attractions_info`
--

INSERT INTO `attractions_info` (`id`, `name`, `opentime`, `clickrate`, `ticketprice`, `address`, `suggestedtime`, `coordinates`, `lat`, `lng`, `detailed`) VALUES
(1, '東京迪士尼樂園', '08:00~22:00', 1000, 1800, '東京都千葉縣浦安市舞浜1-1', 8, '[35.6328964,139.877814]', '35.6328964000', '139.8778140000', '東京迪士尼樂園，是位於日本千葉縣浦安市的一座主題樂園，同時也是組成東京迪士尼度假區的兩個主要組成部分之一；雖然它名為「東京迪士尼」，但是它的所有設施都位於千葉縣，而非東京都內，只是位置相近。'),
(2, '東京迪士尼海洋', '08:00~22:00', 1000, 1800, '東京都千葉縣浦安市舞浜1-1', 8, '[35.6267108,139.8850779]', '35.6267108000', '139.8850779000', '東京迪士尼海洋已經成為全世界最多遊客、以及最受歡迎的迪士尼主題樂園之一。它的遊樂設施比起東京迪士尼樂園的夢幻可愛更加多了一份屬於成人的驚險刺激，迪士尼海洋的代表吉祥物是達菲熊。'),
(3, '淺草寺', '00:00~24:00', 800, 0, '東京都台東区浅草２丁目３−1', 3, '[35.7134284,139.7953685]', '35.7134284000', '139.7953685000', '來到淺草第一站租件和服先與偌大的紅燈籠「雷門」合照後，一路沿著表參道「仲見世通」逛，淺草寺前這條超長的傳統商店街，販售著各式日式點心、特色伴手禮，來到名佛教寺院「淺草寺」參拜求張籤買個御守。'),
(4, '東京晴空塔', '10:00~21:00', 750, 400, '東京都墨田区押上１丁目１−2', 2, '[35.710256,139.8107946]', '35.7102560000', '139.8107946000', '東京晴空塔的建造目的，是為了降低東京市中心內高樓林立而造成的電波傳輸障礙,並且因應日本的類比電視服務於2011年7月24日終止後，需要建造一座高度達600米等級的高塔取代東京鐵塔（333公尺）作為數位無線電視的訊號發射站.'),
(5, '明治神宮', '05:20~17:20', 650, 0, '東京都渋谷区代々木神園町１−1', 4, '[35.6760351,139.7006416]', '35.6760351000', '139.7006416000', '明治神宮在地理條件上是鎮守東京的神社；迅速生成的自然森林被認為有再生能量；有強運的湧水被認為有浄化能量；在地人稱其為「龍穴」。因為眾多的能量景點聚集在南參道路線，因此最人氣的參拜路線是從「原宿口」進入，然後沿著「南參道」參拜。'),
(6, '築地市場', '04:00~14:00', 580, 0, '東京都中央区築地４丁目16番2号', 4, '[35.6649416,139.7673001]', '35.6649416000', '139.7673001000', '築地市場是位於日本東京都中央區築地的公設批發市場，也是日本最大的魚市場。在築地，每天都有大量海鮮被運到這裡競標、拍賣，場外市場則銷售廚房用具、餐廳用品、雜貨及海鮮批發，也有許多餐館。'),
(7, '日本科學未來館', '10:00~17:00', 400, 150, '東京都江東区青海２丁目３−6', 4, '[35.6198919,139.7768897]', '35.6198919000', '139.7768897000', '日本第一級的科學博物館，被人們暱稱為「未來館」。一起來這裡學習人類與宇宙的關係，還有賦予我們未來的最新技術吧。'),
(8, '井之頭自然文化園', '09:30~17:00', 450, 200, '東京都三鷹市井の頭４丁目１', 4, '[35.6995233,139.5745002]', '35.6995233000', '139.5745002000', '井之頭自然文化園就位於吉祥寺車站附近，緊鄰著賞櫻名所井之頭恩賜公園，從吉祥寺車站步行約10分鐘路程，附近還有熱門景點三鷹之森吉卜力美術館，行程安排上就可以把這三個地方排在同一天。'),
(9, '秋葉原', '10:00~22:00', 760, 0, '東京都台東区秋葉原', 5, '[35.7021724,139.7719717]', '35.7021724000', '139.7719717000', '秋葉原是一個熱鬧的購物中心，以電子產品零售聞名，商家從小攤販到大型百貨商店都有。專門進行漫畫、動漫和電動遊戲相關的場地包括用於展覽和紀念品的東京動漫中心，以及擁有 10 層樓販售玩具、交易卡和收藏品的無線電會館。'),
(10, '新倉山淺間公園', '09:00~16:00', 660, 0, '山梨県富士吉田市浅間2-4-1', 3, '[35.5003428,138.7975984]', '35.5003428000', '138.7975984000', '想要觀賞富士山，新倉富士淺間神社位置絕佳，可以說是人氣第一。秋天有楓葉、春天則是鋪著粉紅色花海的櫻花，富士山景在每個山坡處皆有不同風情，就像是設計好的背景牆美的不可思議。'),
(11, '皇居', '09:00~14:45', 560, 0, '日本東京都千代田區', 4, '[35.6868837,139.7563792]', '35.6868837000', '139.7563792000', '皇居是指日本天皇的宮殿，即天皇的辦公及居住場所。現在的皇居位於東京都千代田區，即原江戶幕府歷代將軍所居住的江戶城，但範圍較原始的江戶城為小。'),
(12, '三鷹之森吉卜力美術館', '10:00~16:00', 700, 250, '東京都三鷹市下連雀１丁目１−83', 4, '[35.696238,139.5704317]', '35.6962380000', '139.5704317000', '是位於日本東京都三鷹市的動畫美術館。館主由吉卜力工作室的代表人物宮崎駿擔任。首任館長是宮崎駿長子宮崎吾朗，2005年6月24日由中島清文接任第二任館長。'),
(13, '新宿御苑', '09:00~16:00', 690, 120, '東京都新宿区内藤町11', 3, '[35.6865186,139.7081229]', '35.6865186000', '139.7081229000', '位於新宿的大型庭院，交通便利，從地鐵新宿御苑前站出來，徒步五分鐘左右即可抵達。絕佳的賞櫻與賞楓景點之一。'),
(14, '上野恩賜公園', '05:00~23:00', 600, 0, '東京都台東区上野公園', 2, '[35.7147557,139.7734312]', '35.7147557000', '139.7734312000', '1873年被指定為日本第一座公園!上野公園內有東京國立博物館、國立西洋美術館、國立科學博物館、不忍池遊艇場,上野東照宮,野動物園，現今也入選日本櫻名所100選，吸引大量遊客前往。'),
(15, '御台場海濱公園', '00:00~24:00', 400, 0, '東京都港区台場１丁目４', 3, '[35.6300488,139.7744037]', '35.6300488000', '139.7744037000', '位於日本東京都港區台場，由舊防波堤與台場公園所圍繞的海濱公園。設施包括人工沙灘、展望台、船艇設施，設有淋浴間與更衣室的水上活動中心，是靠近都心的休憩場所。'),
(16, '澀谷SKY', '10:00~22:00', 860, 450, '東京都渋谷区渋谷２丁目２４−12', 2, '[35.6584638,139.6996872]', '35.6584638000', '139.6996872000', '視野遼闊，玻璃乾淨，天氣好的時候可以看到遠方的富士山！建議下午時段入場，待到晚上，可以看到夕陽跟夜景，非常美麗！太陽下山後有點冷，要注意保暖。'),
(17, '六本木新城展望台', '10:00~:2200', 850, 430, '東京都港区六本木６丁目１０−1', 2, '[35.6604864,139.7270667]', '35.6604864000', '139.7270667000', '如果有買SKY DECK 頂樓門票能到的地方是很普通的頂樓觀景台,看看夜景到還好。+500元上去SKY DECK 可以直接到停機坪 無死角的享受整個風景。'),
(18, '阿美橫町', '10:30~22:00', 840, 0, '日本東京都台東區的商店街', 3, '[35.7093533,139.7720243]', '35.7093533000', '139.7720243000', '簡稱阿美橫，是位於日本東京都台東區的商店街，坐落於山手線上野至御徒町間高架路段的下方及西側道路，長400公尺，為東京著名的露天市集之一。'),
(19, '上野動物園', '09:30~17:00', 835, 200, '東京都台東區上野公園9-83', 4, '[35.7164535,139.7700302]', '35.7164535000', '139.7700302000', '於1882年開園的日本最早的動物園。人氣動物是大熊貓。此外，這裡還飼養著大象、兔子、猴子等450個種類的3000只動物。'),
(20, '歌舞伎町', '18:00~03:00', 820, 0, '東京都新宿区歌舞伎町', 3, '[35.6955427,139.7005745]', '35.6955427000', '139.7005745000', '歌舞伎町是熱門的娛樂區，以成人夜生活聞名。黃金街中，燈籠點亮的巷弄擠滿了小型夜店、煙霧瀰漫的酒吧和深夜小吃店。'),
(21, '忠犬八公像', '00:00~24:00', 830, 0, '東京都渋谷区道玄坂２丁目１', 1, '[35.6590579,139.6980544]', '35.6590579000', '139.6980544000', '熱門的聚會地點，佇立著一座銅像，紀念著名的忠誠秋田犬八公。'),
(22, '竹下通', '11:00～20:00', 850, 0, '東京都澀谷區神宮前1丁目', 3, '[35.6710387,139.7026017]', '35.6710387000', '139.7026017000', '竹下通東端接明治通，西端則位於JR東日本原宿站竹下口正對面，只相隔一條馬路。在週末、假日以及學生長假時都會人山人海，可見到很多年輕人及學生在此購物。'),
(23, '六本木', '10:00~24:00', 860, 0, '東京都港區六本木', 3, '[35.6628931,139.7336508]', '35.6628931000', '139.7336508000', '一個充滿活力的娛樂區，當地人和遊客流連在繁華的深夜酒吧和俱樂部。白天，六本木新城摩天大樓 舉辦展覽，為其觀景台、設計師時裝精品店、森美術館帶來擁擠人潮。');

-- --------------------------------------------------------

--
-- 資料表結構 `attractions_property`
--

CREATE TABLE `attractions_property` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `attractions_property`
--

INSERT INTO `attractions_property` (`id`, `name`) VALUES
(1, '親近自然'),
(2, '歷史人文'),
(3, '尋找刺激'),
(4, '美食'),
(5, '歡樂'),
(6, '學習新知');

-- --------------------------------------------------------

--
-- 資料表結構 `attractions_vs_attractions_element`
--

CREATE TABLE `attractions_vs_attractions_element` (
  `element_id` int(10) UNSIGNED NOT NULL,
  `attraction_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `attractions_vs_attractions_element`
--

INSERT INTO `attractions_vs_attractions_element` (`element_id`, `attraction_id`) VALUES
(1, 1),
(1, 2),
(1, 12),
(1, 14),
(1, 19),
(2, 5),
(2, 8),
(2, 10),
(2, 11),
(2, 13),
(2, 14),
(2, 15),
(3, 3),
(3, 6),
(3, 9),
(3, 18),
(3, 20),
(3, 22),
(3, 23),
(4, 4),
(4, 9),
(4, 15),
(4, 16),
(4, 17),
(4, 18),
(4, 20),
(4, 22),
(4, 23),
(5, 7),
(5, 8),
(5, 11),
(5, 12),
(5, 19),
(6, 8),
(6, 19),
(7, 3),
(7, 5),
(7, 10),
(8, 3),
(8, 5),
(8, 11),
(8, 13),
(8, 21),
(9, 4),
(9, 16),
(9, 17),
(9, 21),
(9, 23);

-- --------------------------------------------------------

--
-- 資料表結構 `attractions_vs_attractions_property`
--

CREATE TABLE `attractions_vs_attractions_property` (
  `property_id` int(10) UNSIGNED NOT NULL,
  `attraction_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `attractions_vs_attractions_property`
--

INSERT INTO `attractions_vs_attractions_property` (`property_id`, `attraction_id`) VALUES
(1, 5),
(1, 8),
(2, 3),
(2, 7),
(3, 1),
(3, 2),
(4, 3),
(4, 6),
(4, 9),
(5, 1),
(5, 2),
(5, 4),
(5, 9),
(6, 7),
(6, 8);

-- --------------------------------------------------------

--
-- 資料表結構 `hotels_facilities`
--

CREATE TABLE `hotels_facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `item` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `hotels_facilities`
--

INSERT INTO `hotels_facilities` (`id`, `item`) VALUES
(1, '可停車(Park Space)'),
(2, '空調(air_conditioner)'),
(3, '免費無線上網(wifi)'),
(4, '冰箱(refrigerator)'),
(5, '禁菸(Non Smoking)'),
(6, '浴缸(tub)'),
(7, '餐廳(restaurants)'),
(8, '洗衣服務(Laundry)'),
(9, '行李寄放(baggage deposit'),
(10, '無障礙設施(Accessibility)'),
(11, '溫泉');

-- --------------------------------------------------------

--
-- 資料表結構 `hotels_img`
--

CREATE TABLE `hotels_img` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(100) NOT NULL,
  `hotel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `hotels_img`
--

INSERT INTO `hotels_img` (`id`, `path`, `hotel_id`) VALUES
(1, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A01_01', 1),
(2, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A01_02', 1),
(3, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A01_03', 1),
(4, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A01_04', 1),
(5, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A02_01', 2),
(6, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A02_02', 2),
(7, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A02_03', 2),
(8, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A02_04', 2),
(9, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A03_01', 3),
(10, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A03_02', 3),
(11, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A03_03', 3),
(12, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A03_04', 3),
(13, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A03_05', 3),
(14, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A04_01', 4),
(15, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A04_02', 4),
(16, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A04_03', 4),
(17, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A04_04', 4),
(18, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A04_05', 4),
(19, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A04_06', 4),
(20, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A04_07', 4),
(21, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A05_01', 5),
(22, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A05_02', 5),
(23, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A05_03', 5),
(24, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A05_04', 5),
(25, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A05_05', 5),
(26, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A05_06', 5),
(27, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A05_07', 5),
(28, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A06_01', 6),
(29, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A06_02', 6),
(30, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A06_03', 6),
(31, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A06_04', 6),
(32, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A06_05', 6),
(33, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A06_06', 6),
(34, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A07_01', 7),
(35, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A07_02', 7),
(36, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A07_03', 7),
(37, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A07_04', 7),
(38, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A07_05', 7),
(39, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A07_06', 7),
(40, '\\tripschedule\\public\\img\\Hotel_For_SQL\\A07_07', 7);

-- --------------------------------------------------------

--
-- 資料表結構 `hotels_info`
--

CREATE TABLE `hotels_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `name_CH` varchar(50) DEFAULT NULL,
  `name_EN` varchar(50) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `lng` decimal(10,10) DEFAULT NULL,
  `lat` decimal(10,10) DEFAULT NULL,
  `ch` tinyint(4) DEFAULT NULL,
  `en` tinyint(4) DEFAULT NULL,
  `jp` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `hotels_info`
--

INSERT INTO `hotels_info` (`id`, `name`, `name_CH`, `name_EN`, `stars`, `area`, `address`, `lng`, `lat`, `ch`, `en`, `jp`) VALUES
(1, 'A01', '東京蒲田東方快捷飯店', 'Hotel Oriental Express Tokyo Kamata', 3, '大田區', '1-3-15 Minamikamata, Ota, Tokyo, Tokyo, 144-0035', '0.9999999999', '0.9999999999', 1, 1, 0),
(2, 'A02', '五反田東急飯店', 'Tokyu Stay Gotanda', 3, '品川區', '1-12-2Higashi-gotanda, Tokyo, Tokyo-to, 141-0022', '0.9999999999', '0.9999999999', 1, 1, 1),
(3, 'A03', '西新宿大和 ROYNET 飯店', 'Daiwa Roynet Hotel Nishi Shinjuku', 3, '中野區', '6-12-39, Nishi-Shinjuku, Shinjuku-ku, Tokyo, Tokyo', '0.9999999999', '0.9999999999', 1, 1, 1),
(4, 'A04', '新宿華盛頓主飯店', 'Shinjuku Washington Hotel Main', 4, '新宿區', '3-2-9 Nishishinjuku, Shinjuku-ku, Tokyo, Tokyo-to,', '0.9999999999', '0.9999999999', 1, 1, 1),
(5, 'A05', '東京椿山莊飯店', 'Hotel Chinzanso Tokyo', 5, '文京區', '2-10-8 Sekiguchi, Bunkyo ku, Tokyo, Tokyo, 112-866', '0.9999999999', '0.9999999999', 1, 1, 1),
(6, 'A06', '東京赤羽大和 Roynet 飯店', 'Daiwa Roynet Hotel Tokyo Akabane', 3, '北區', '1-9-13 Akabane Minami, Kita-ku, Tokyo, Tokyo-to, 1', '0.9999999999', '0.9999999999', 1, 1, 0),
(7, 'A07', '西葛西盧米埃爾飯店', 'Hotel Lumiere Nishikasai', 3, '江戶川區', '6-20-3 Nishikasai Edogawaku, Tokyo, Tokyo-to, 134-', '0.9999999999', '0.9999999999', 1, 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `hotels_roomtype`
--

CREATE TABLE `hotels_roomtype` (
  `id` int(10) UNSIGNED NOT NULL,
  `roomtype_num` varchar(30) NOT NULL,
  `roomtype` varchar(20) NOT NULL,
  `price_weekdays` int(11) NOT NULL,
  `price_holidays` int(11) NOT NULL,
  `price_super` int(11) NOT NULL,
  `restrictnumber` int(11) NOT NULL,
  `doublebed` int(11) NOT NULL,
  `singlebed` int(11) NOT NULL,
  `roomarea` int(11) NOT NULL,
  `hotel_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `hotels_roomtype`
--

INSERT INTO `hotels_roomtype` (`id`, `roomtype_num`, `roomtype`, `price_weekdays`, `price_holidays`, `price_super`, `restrictnumber`, `doublebed`, `singlebed`, `roomarea`, `hotel_id`) VALUES
(1, 'A01R01', '雙人房', 1755, 2385, 3768, 2, 1, 0, 14, 1),
(2, 'A01R02', '雙床房', 2313, 2764, 4015, 2, 0, 2, 17, 1),
(3, 'A01R03', '三人房', 2686, 3105, 4387, 3, 0, 3, 20, 1),
(4, 'A02R01', '商務雙人房', 3351, 3905, 4295, 2, 1, 0, 15, 2),
(5, 'A02R02', '標準雙人房', 3841, 4215, 4579, 2, 1, 0, 21, 2),
(6, 'A03R01', '標準雙人房', 4283, 4587, 5218, 2, 1, 0, 21, 3),
(7, 'A03R02', '普通套房', 6159, 6489, 8286, 2, 0, 2, 49, 3),
(8, 'A03R03', '標準雙床房', 3805, 4215, 4652, 2, 0, 2, 24, 3),
(9, 'A04R01', '經濟雙人房', 2775, 2985, 3218, 3, 1, 0, 28, 4),
(10, 'A04R02', '雙床房', 2597, 2915, 3698, 4, 0, 2, 31, 4),
(11, 'A04R03', '三人房', 3516, 3845, 4389, 6, 0, 3, 36, 4),
(12, 'A05R01', '城市景觀房', 6104, 7245, 9017, 3, 1, 0, 45, 5),
(13, 'A05R02', '花園景觀房', 6929, 7781, 9675, 3, 1, 0, 46, 5),
(14, 'A06R01', '標準雙人房', 2550, 2864, 3269, 2, 1, 0, 17, 6),
(15, 'A06R02', '經濟雙床房', 3306, 3905, 4678, 2, 0, 2, 17, 6),
(16, 'A06R03', '標準單人房', 2215, 2514, 3109, 1, 2, 0, 17, 6),
(17, 'A07R01', '經濟雙人房', 1708, 2275, 3059, 3, 1, 0, 13, 7),
(18, 'A07R02', '標準雙床房', 2232, 2645, 3389, 6, 0, 3, 21, 7);

-- --------------------------------------------------------

--
-- 資料表結構 `hotels_roomtypeimg`
--

CREATE TABLE `hotels_roomtypeimg` (
  `id` int(10) UNSIGNED NOT NULL,
  `path` varchar(30) NOT NULL,
  `hotels_roomtype` varchar(20) NOT NULL,
  `roomtype_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `hotels_roomtypeimg`
--

INSERT INTO `hotels_roomtypeimg` (`id`, `path`, `hotels_roomtype`, `roomtype_id`) VALUES
(1, 'travelschedule\\tripschedule\\sr', 'A01R01', 1),
(2, 'travelschedule\\tripschedule\\sr', 'A01R01', 1),
(3, 'travelschedule\\tripschedule\\sr', 'A01R01', 1),
(4, 'travelschedule\\tripschedule\\sr', 'A01R01', 1),
(5, 'travelschedule\\tripschedule\\sr', 'A01R02', 2),
(6, 'travelschedule\\tripschedule\\sr', 'A01R02', 2),
(7, 'travelschedule\\tripschedule\\sr', 'A01R03', 3),
(8, 'travelschedule\\tripschedule\\sr', 'A01R03', 3),
(9, 'travelschedule\\tripschedule\\sr', 'A01R03', 3),
(10, 'tripschedule\\public\\img\\Hotel_', 'A02R01', 4),
(11, 'tripschedule\\public\\img\\Hotel_', 'A02R01', 4),
(12, 'tripschedule\\public\\img\\Hotel_', 'A02R01', 4),
(13, 'tripschedule\\public\\img\\Hotel_', 'A02R02', 5),
(14, 'tripschedule\\public\\img\\Hotel_', 'A02R02', 5),
(15, 'tripschedule\\public\\img\\Hotel_', 'A02R02', 5),
(16, 'tripschedule\\public\\img\\Hotel_', 'A03R01', 6),
(17, 'tripschedule\\public\\img\\Hotel_', 'A03R01', 6),
(18, 'tripschedule\\public\\img\\Hotel_', 'A03R02', 7),
(19, 'tripschedule\\public\\img\\Hotel_', 'A03R02', 7),
(20, 'tripschedule\\public\\img\\Hotel_', 'A03R02', 7),
(21, 'tripschedule\\public\\img\\Hotel_', 'A03R02', 7),
(22, 'tripschedule\\public\\img\\Hotel_', 'A03R02', 7),
(23, 'tripschedule\\public\\img\\Hotel_', 'A03R03', 8),
(24, 'tripschedule\\public\\img\\Hotel_', 'A03R03', 8),
(25, 'tripschedule\\public\\img\\Hotel_', 'A04R01', 9),
(26, 'tripschedule\\public\\img\\Hotel_', 'A04R01', 9),
(27, 'tripschedule\\public\\img\\Hotel_', 'A04R01', 9),
(28, 'tripschedule\\public\\img\\Hotel_', 'A04R01', 9),
(29, 'tripschedule\\public\\img\\Hotel_', 'A04R02', 10),
(30, 'tripschedule\\public\\img\\Hotel_', 'A04R02', 10),
(31, 'tripschedule\\public\\img\\Hotel_', 'A04R02', 10),
(32, 'tripschedule\\public\\img\\Hotel_', 'A04R02', 10),
(33, 'tripschedule\\public\\img\\Hotel_', 'A04R03', 11),
(34, 'tripschedule\\public\\img\\Hotel_', 'A04R03', 11),
(35, 'tripschedule\\public\\img\\Hotel_', 'A04R03', 11),
(36, 'tripschedule\\public\\img\\Hotel_', 'A05R01', 12),
(37, 'tripschedule\\public\\img\\Hotel_', 'A05R01', 12),
(38, 'tripschedule\\public\\img\\Hotel_', 'A05R01', 12),
(39, 'tripschedule\\public\\img\\Hotel_', 'A05R01', 12),
(40, 'tripschedule\\public\\img\\Hotel_', 'A05R02', 13),
(41, 'tripschedule\\public\\img\\Hotel_', 'A05R02', 13),
(42, 'tripschedule\\public\\img\\Hotel_', 'A05R02', 13),
(43, 'tripschedule\\public\\img\\Hotel_', 'A06R01', 14),
(44, 'tripschedule\\public\\img\\Hotel_', 'A06R01', 14),
(45, 'tripschedule\\public\\img\\Hotel_', 'A06R01', 14),
(46, 'tripschedule\\public\\img\\Hotel_', 'A06R01', 14),
(47, 'tripschedule\\public\\img\\Hotel_', 'A06R02', 15),
(48, 'tripschedule\\public\\img\\Hotel_', 'A06R02', 15),
(49, 'tripschedule\\public\\img\\Hotel_', 'A06R02', 15),
(50, 'tripschedule\\public\\img\\Hotel_', 'A06R03', 16),
(51, 'tripschedule\\public\\img\\Hotel_', 'A06R03', 16),
(52, 'tripschedule\\public\\img\\Hotel_', 'A06R03', 16),
(53, 'tripschedule\\public\\img\\Hotel_', 'A06R03', 16),
(54, 'tripschedule\\public\\img\\Hotel_', 'A07R01', 17),
(55, 'tripschedule\\public\\img\\Hotel_', 'A07R01', 17),
(56, 'tripschedule\\public\\img\\Hotel_', 'A07R01', 17),
(57, 'tripschedule\\public\\img\\Hotel_', 'A07R02', 18),
(58, 'tripschedule\\public\\img\\Hotel_', 'A07R02', 18),
(59, 'tripschedule\\public\\img\\Hotel_', 'A07R02', 18),
(60, 'tripschedule\\public\\img\\Hotel_', 'A07R02', 18);

-- --------------------------------------------------------

--
-- 資料表結構 `hotels_vs_facilities`
--

CREATE TABLE `hotels_vs_facilities` (
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `facilities_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `hotels_vs_facilities`
--

INSERT INTO `hotels_vs_facilities` (`hotel_id`, `facilities_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8);

-- --------------------------------------------------------

--
-- 資料表結構 `schedules_info`
--

CREATE TABLE `schedules_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `price` int(11) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `schedules_info`
--

INSERT INTO `schedules_info` (`id`, `name`, `duration`, `date_start`, `date_end`, `price`, `user_id`) VALUES
(1, '東京3天2夜', '3天2夜', '2022-12-01', '2022-12-03', 3000, 1),
(2, '東京2天1夜', '2天1夜', '2022-12-01', '2022-12-03', 3000, 1),
(3, '東京2天1夜旅遊', '2天1夜', '2022-12-01', '2022-12-03', 3000, 2),
(4, '半天東京', '半天', '2022-12-01', '2022-12-03', 3000, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `schedules_spotplan`
--

CREATE TABLE `schedules_spotplan` (
  `id` int(11) NOT NULL,
  `date_order` int(11) NOT NULL,
  `date` date NOT NULL,
  `period` varchar(10) NOT NULL,
  `playtime` float NOT NULL,
  `attraction_id` int(11) UNSIGNED NOT NULL,
  `schedule_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `schedules_spotplan`
--

INSERT INTO `schedules_spotplan` (`id`, `date_order`, `date`, `period`, `playtime`, `attraction_id`, `schedule_id`) VALUES
(1, 1, '2022-10-01', '早', 1, 1, 1),
(2, 1, '2022-10-01', '中', 1, 2, 1),
(3, 1, '2022-10-01', '中', 0.5, 3, 1),
(4, 1, '2022-10-01', '晚', 1, 4, 1),
(5, 2, '2022-10-02', '早', 1, 1, 1),
(6, 1, '2022-12-02', '早', 1, 2, 2),
(7, 1, '2022-12-02', '中', 1, 6, 2),
(8, 2, '2022-12-03', '中', 1, 3, 2),
(9, 2, '2022-12-03', '晚', 1, 8, 2),
(10, 1, '2022-12-22', '早', 1, 1, 3),
(11, 1, '2022-12-22', '中', 1, 2, 3),
(12, 1, '2022-12-23', '中', 0.5, 3, 4),
(13, 1, '2022-12-23', '晚', 1, 4, 4);

-- --------------------------------------------------------

--
-- 資料表結構 `schedules_vs_attractions`
--

CREATE TABLE `schedules_vs_attractions` (
  `attraction_id` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `schedules_vs_attractions`
--

INSERT INTO `schedules_vs_attractions` (`attraction_id`, `schedule_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(5, 1),
(8, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `schedules_vs_flightticket`
--

CREATE TABLE `schedules_vs_flightticket` (
  `flightTicket_id` int(10) UNSIGNED NOT NULL,
  `flightTicket_info_json` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`flightTicket_info_json`)),
  `schedule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `schedules_vs_flightticket`
--

INSERT INTO `schedules_vs_flightticket` (`flightTicket_id`, `flightTicket_info_json`, `schedule_id`) VALUES
(1, '[]', 1),
(1, '[]', 2),
(1, '[]', 3),
(1, '[]', 4),
(2, '[]', 1),
(2, '[]', 2),
(2, '[]', 3),
(2, '[]', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `schedules_vs_hotels`
--

CREATE TABLE `schedules_vs_hotels` (
  `hotel_id` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `schedules_vs_hotels`
--

INSERT INTO `schedules_vs_hotels` (`hotel_id`, `schedule_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2);

-- --------------------------------------------------------

--
-- 資料表結構 `users_collection`
--

CREATE TABLE `users_collection` (
  `attraction_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `users_collection`
--

INSERT INTO `users_collection` (`attraction_id`, `user_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 2),
(6, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `users_info`
--

CREATE TABLE `users_info` (
  `id` int(11) UNSIGNED NOT NULL,
  `loginway` varchar(20) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nickname` varchar(30) NOT NULL,
  `avatarphoto_path` varchar(100) NOT NULL,
  `coverphoto_path` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `users_info`
--

INSERT INTO `users_info` (`id`, `loginway`, `username`, `password`, `email`, `nickname`, `avatarphoto_path`, `coverphoto_path`) VALUES
(1, 'email', 'jennifer53085@gmail.com', '123@DsfE:s', 'jennifer53085@gmail.com', '檸檬怪', '/img/淺草寺.jpg', '/img/淺草寺.jpg'),
(2, 'google', 'lemonmoster', 'null', 'null', '阿寧', '/img/淺草寺(維基百科夜景).jpg', '/img/淺草寺(維基百科夜景).jpg');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `attractions_element`
--
ALTER TABLE `attractions_element`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `attractions_img`
--
ALTER TABLE `attractions_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attraction_id` (`attraction_id`);

--
-- 資料表索引 `attractions_info`
--
ALTER TABLE `attractions_info`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `attractions_property`
--
ALTER TABLE `attractions_property`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `attractions_vs_attractions_element`
--
ALTER TABLE `attractions_vs_attractions_element`
  ADD PRIMARY KEY (`element_id`,`attraction_id`),
  ADD KEY `element_id` (`element_id`,`attraction_id`),
  ADD KEY `attractions_vs_attractions_element_ibfk_1` (`attraction_id`);

--
-- 資料表索引 `attractions_vs_attractions_property`
--
ALTER TABLE `attractions_vs_attractions_property`
  ADD PRIMARY KEY (`property_id`,`attraction_id`),
  ADD KEY `property_id` (`property_id`,`attraction_id`),
  ADD KEY `attractions_vs_attractions_property_ibfk_1` (`attraction_id`);

--
-- 資料表索引 `hotels_facilities`
--
ALTER TABLE `hotels_facilities`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `hotels_img`
--
ALTER TABLE `hotels_img`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- 資料表索引 `hotels_info`
--
ALTER TABLE `hotels_info`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `hotels_roomtype`
--
ALTER TABLE `hotels_roomtype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- 資料表索引 `hotels_roomtypeimg`
--
ALTER TABLE `hotels_roomtypeimg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roomtype_id` (`roomtype_id`);

--
-- 資料表索引 `hotels_vs_facilities`
--
ALTER TABLE `hotels_vs_facilities`
  ADD PRIMARY KEY (`hotel_id`,`facilities_id`),
  ADD KEY `hotel_id` (`hotel_id`),
  ADD KEY `hotels_vs_facilities_ibfk_1` (`facilities_id`);

--
-- 資料表索引 `schedules_info`
--
ALTER TABLE `schedules_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- 資料表索引 `schedules_spotplan`
--
ALTER TABLE `schedules_spotplan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_id` (`schedule_id`),
  ADD KEY `attraction_id` (`attraction_id`);

--
-- 資料表索引 `schedules_vs_attractions`
--
ALTER TABLE `schedules_vs_attractions`
  ADD PRIMARY KEY (`attraction_id`,`schedule_id`),
  ADD KEY `schedules_vs_attractions_ibfk_1` (`schedule_id`);

--
-- 資料表索引 `schedules_vs_flightticket`
--
ALTER TABLE `schedules_vs_flightticket`
  ADD PRIMARY KEY (`flightTicket_id`,`schedule_id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- 資料表索引 `schedules_vs_hotels`
--
ALTER TABLE `schedules_vs_hotels`
  ADD PRIMARY KEY (`hotel_id`,`schedule_id`),
  ADD KEY `schedules_vs_hotels_ibfk_1` (`schedule_id`);

--
-- 資料表索引 `users_collection`
--
ALTER TABLE `users_collection`
  ADD PRIMARY KEY (`attraction_id`,`user_id`),
  ADD KEY `attraction_id` (`attraction_id`,`user_id`),
  ADD KEY `users_collection_ibfk_1` (`user_id`);

--
-- 資料表索引 `users_info`
--
ALTER TABLE `users_info`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `attractions_element`
--
ALTER TABLE `attractions_element`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `attractions_img`
--
ALTER TABLE `attractions_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `attractions_info`
--
ALTER TABLE `attractions_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `attractions_property`
--
ALTER TABLE `attractions_property`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `hotels_facilities`
--
ALTER TABLE `hotels_facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `hotels_img`
--
ALTER TABLE `hotels_img`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `hotels_info`
--
ALTER TABLE `hotels_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `hotels_roomtype`
--
ALTER TABLE `hotels_roomtype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `hotels_roomtypeimg`
--
ALTER TABLE `hotels_roomtypeimg`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `hotels_vs_facilities`
--
ALTER TABLE `hotels_vs_facilities`
  MODIFY `hotel_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `schedules_info`
--
ALTER TABLE `schedules_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `schedules_spotplan`
--
ALTER TABLE `schedules_spotplan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users_info`
--
ALTER TABLE `users_info`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
