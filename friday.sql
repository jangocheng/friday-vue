-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-08-03 09:00:18
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `friday`
--

-- --------------------------------------------------------

--
-- 表的结构 `buy`
--

CREATE TABLE `buy` (
  `username` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `jiage` int(100) NOT NULL,
  `rulerBuy` varchar(20) NOT NULL,
  `buyNum` int(20) NOT NULL,
  `bigImg` varchar(100) NOT NULL,
  `shopcarAl` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `buy`
--

INSERT INTO `buy` (`username`, `title`, `jiage`, `rulerBuy`, `buyNum`, `bigImg`, `shopcarAl`) VALUES
('18738107350', '三文鱼', 57, '1000g', 1, '/static/img/vjdgsv3.7fe5c94.jpg', 0),
('18738107350', '三文鱼', 57, '', 1, '/static/img/vjdgsv3.7fe5c94.jpg', 0),
('18738107350', '北极磷虾', 258, '1000g', 2, '/static/img/kvjf.292eac2.jpg', 0),
('18738107350', '精品红富士  包邮', 19, '1000g', 3, '/static/img/item430x430q90.ea73c62.jpg', 0),
('18738107350', '台湾沛梨 ', 23, '', 1, '/static/img/awds5d.1318c80.jpg', 0),
('18738107350', '台湾沛梨 ', 23, '', 1, '/static/img/awds5d.1318c80.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `detail`
--

CREATE TABLE `detail` (
  `id` int(10) NOT NULL COMMENT 'id',
  `samll1` varchar(100) NOT NULL,
  `samll2` varchar(100) NOT NULL,
  `samll3` varchar(100) NOT NULL,
  `samll4` varchar(100) NOT NULL,
  `small5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品详情表';

--
-- 转存表中的数据 `detail`
--

INSERT INTO `detail` (`id`, `samll1`, `samll2`, `samll3`, `samll4`, `small5`) VALUES
(9, 'TB14.jpg', 'TB2.jpg', 'TB1.jpg', '4564.jpg', 'TB1.jpg'),
(10, 'item430x430q90.jpg', 'TB20x430q90.jpg', '211534.jpg', 'asdasd.jpg', 'asdasd.jpg'),
(11, 'hlg01.jpg', 'qweqw33.jpg', 'dasd.jpg', 'qweqweqwe3.jpg', 'weqewq3.jpg'),
(12, 'asdas22d.jpg', 'sdasdas.jpg', 'asdas2da.jpg', 'asdas22d.jpg', 'asdas2da.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE `goods` (
  `id` int(20) NOT NULL,
  `bigImg` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `jiage` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `bigImg`, `intro`, `jiage`) VALUES
(9, 'TB14.jpg', '精选芒果!天然无害!', '28.8'),
(10, 'item430x430q90.jpg', '精品红富士  包邮', '18.8'),
(11, 'hlg01.jpg', '越南红心火龙果1kg', '45.5'),
(12, 'sdasd.jpg', '佳沛新西兰阳光金奇异果原箱', '86.6');

-- --------------------------------------------------------

--
-- 表的结构 `otherdetail`
--

CREATE TABLE `otherdetail` (
  `id` int(10) NOT NULL,
  `intros` varchar(100) NOT NULL,
  `small1` varchar(100) NOT NULL,
  `small2` varchar(100) NOT NULL,
  `small3` varchar(100) NOT NULL,
  `small4` varchar(100) NOT NULL,
  `small5` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `otherdetail`
--

INSERT INTO `otherdetail` (`id`, `intros`, `small1`, `small2`, `small3`, `small4`, `small5`) VALUES
(1, '墨西哥牛油果6个130-160g/个 鳄梨', '3333.jpg', 'asddd2d.jpg', 'aaasd.jpg', 'asddd2d.jpg', '3333.jpg'),
(2, '来自泰国的新鲜', 'aasdd22d.jpg', 'aasdd2.jpg', 'www.jpg', 'www.jpg', 'aasdd2.jpg'),
(3, '阳光滋养 全部进口', 'a33sdasd.jpg', 'aaaaa22s.jpg', '22123.jpg', '22123.jpg', 'a33sdasd.jpg'),
(4, '天然无害', 'fff.jpg', 'asda22sd.jpg', 'wewe.jpg', 'asda22sd.jpg', 'asda22sd.jpg'),
(5, '', '', '', '', '', ''),
(6, '精选北极磷虾 极品', 'djfvhfjkhb.jpg', 'hvjdgsbjv.jpg', 'jxcfkbhdf.jpg', 'vhjggbfhb.jpg', 'djfvhfjkhb.jpg'),
(7, '严选  产自日本北海道', 'bmjngkl.jpg', 'bmjngkl.jpg', 'vjdgsv3.jpg', 'qopfm.jpg', 'bmjngkl.jpg'),
(8, '海南空运到港', 'jhbksss.jpg', 'n,.mbgn;l.jpg', 'kshgbvjkf.jpg', 'kshgbvjkf.jpg', 'akfjckf.jpg'),
(9, '倾听海的味道', 'smvnbn.jpg', 'mbnxcm.bh.jpg', 'kshvjkxnbmcv.jpg', 'mbnxcm.bh.jpg', 'smvnbn.jpg'),
(10, '进口新西兰 精品牛排', 'lkfob.jpg', 'nmbxcjm.jpg', 'nbvdf.jpg', 'mdngbjkdfh.jpg', 'nmbxcjm.jpg'),
(11, '澳大利亚黑牛排', 'fcdszv.jpg', 'mvcxjvb.jpg', 'fcdszv.jpg', 'mxvjnxcbv.jpg', 'mvcxjvb.jpg'),
(12, '新疆嫩羊肉 次日达', 'zfczsd.jpg', 'nhfvgxhjv.jpg', 'asdqwe.jpg', 'fdsgdfh.jpg', 'asdqwe.jpg'),
(13, '陕西放养山羊肉', 'fdsbfvhe.jpg', 'nbvdjs.jpg', 'jbvdm.jpg', 'nbxcnv.jpg', 'nbvdjs.jpg'),
(14, '放养 土鸡', 'jirou2.jpg', 'jirou3.jpg', 'jirou4.jpg', 'jirou2.jpg', 'jirou4.jpg'),
(15, '全国满10包邮', 'jidan2.jpg', 'jidan3.jpg', 'jidan4.jpg', 'jidan2.jpg', 'jidan3.jpg'),
(16, '检疫合格 全国包邮', 'yazi2.jpg', 'yazi3.jpg', 'yazi2.jpg', 'yazi4.jpg', 'yazi4.jpg'),
(17, '全国满五包邮', 'yadan2.jpg', 'yadan3.jpg', 'yadan4.jpg', 'yadan2.jpg', 'yadan3.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `othergoods`
--

CREATE TABLE `othergoods` (
  `id` int(10) NOT NULL,
  `bigImg` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `intro` varchar(100) NOT NULL,
  `jiage` varchar(10) NOT NULL,
  `oldparse` varchar(10) NOT NULL,
  `kinds` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `othergoods`
--

INSERT INTO `othergoods` (`id`, `bigImg`, `title`, `intro`, `jiage`, `oldparse`, `kinds`) VALUES
(1, 'asdasd5.jpg', '牛油果 空运到货', '墨西哥牛油果 鳄梨', '58.8', '108', '新鲜水果'),
(2, 'asdds6d.jpg', '泰国龙眼  ', '来自泰国的新鲜', '35.6', '56.6', '新鲜水果'),
(3, 'awds5d.jpg', '台湾沛梨 ', '阳光滋养 全部进口', '23.3', '58.8', '新鲜水果'),
(4, 'qwerrr.jpg', '百香果200g', '天然无害', '56.8', '86.6', '新鲜水果'),
(6, 'kvjf.jpg', '北极磷虾', '精选北极磷虾 极品', '258', '599.3', '水产海鲜'),
(7, 'vjdgsv3.jpg', '三文鱼', '严选  产自日本北海道', '56.6', '96.6', '水产海鲜'),
(8, 'jhbksss.jpg', '马鲛鱼片', '海南空运到港', '23.3', '56.6', '水产海鲜'),
(9, 'kan kvgbf.jpg', '海南扇贝', '倾听海的味道', '52.2', '85.5', '水产海鲜'),
(10, 'lkfob.jpg', '新西兰小牛肉', '进口新西兰 精品牛排', '52.2', '85.5', '精品肉类'),
(11, 'fvdszgv.jpg', '黑牛排', '澳大利亚黑牛排', '85.5', '158', '精品肉类'),
(12, 'zfczsd.jpg', '新疆羊羔肉', '新疆嫩羊肉 次日达', '35.5', '56.6', '精品肉类'),
(13, 'fdsbfvhe.jpg', '野生山羊肉', '陕西放养山羊肉', '56.6', '95.6', '精品肉类'),
(14, 'jirou1.jpg', '土鸡  鸡肉', '放养 土鸡', '19.8', '50.3', '蛋奶速食'),
(15, 'jidan1.jpg', '一品香卤蛋 ', '全国满10包邮', '1.0', '1.5', '蛋奶速食'),
(16, 'yazi1.jpg', '高邮 鸭肉', '检疫合格 全国包邮', '25.5', '36.6', '蛋奶速食'),
(17, 'yadan1.jpg', '高邮鸭蛋', '全国满五包邮', '1.0', '1.9', '蛋奶速食');

-- --------------------------------------------------------

--
-- 表的结构 `userInformation`
--

CREATE TABLE `userInformation` (
  `id` int(20) NOT NULL COMMENT 'id',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `password` varchar(30) NOT NULL COMMENT '密码',
  `Iconurl` varchar(30) NOT NULL COMMENT '用户名地址',
  `integral` int(20) NOT NULL COMMENT '积分',
  `money` int(20) NOT NULL COMMENT '钱'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

--
-- 转存表中的数据 `userInformation`
--

INSERT INTO `userInformation` (`id`, `username`, `password`, `Iconurl`, `integral`, `money`) VALUES
(1, '18738107350', '112607', 'url', 0, 0),
(2, '15537546612', '123456', 'url', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail`
--
ALTER TABLE `detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `othergoods`
--
ALTER TABLE `othergoods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userInformation`
--
ALTER TABLE `userInformation`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `othergoods`
--
ALTER TABLE `othergoods`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `userInformation`
--
ALTER TABLE `userInformation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
