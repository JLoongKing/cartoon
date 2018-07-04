-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2018-07-04 05:24:39
-- 服务器版本： 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lzc_video`
--

-- --------------------------------------------------------

--
-- 表的结构 `t_banner`
--

CREATE TABLE `t_banner` (
  `id` int(11) NOT NULL COMMENT 'bannerId',
  `imgurl` varchar(100) NOT NULL COMMENT '图片地址'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_banner`
--

INSERT INTO `t_banner` (`id`, `imgurl`) VALUES
(1, '/tp50/public/Uploads/20180413/5ad02cb9f0062.jpg'),
(2, '/tp50/public/Uploads/20180413/5ad02cbf2b09d.jpg'),
(3, '/tp50/public/Uploads/20180413/5ad02cc2a5e5f.jpg'),
(4, '/tp50/public/Uploads/20180413/5ad02cc644c0f.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `t_blog`
--

CREATE TABLE `t_blog` (
  `id` int(11) NOT NULL COMMENT '博客id',
  `title` varchar(200) DEFAULT NULL COMMENT '博客标题',
  `summary` varchar(400) DEFAULT NULL COMMENT '博客简介',
  `clickHit` int(11) DEFAULT NULL COMMENT '点击数',
  `replyHit` int(11) DEFAULT NULL COMMENT '评论数',
  `content` text COMMENT '内容',
  `typeId` int(11) DEFAULT NULL COMMENT '类别d',
  `keyWord` varchar(200) DEFAULT NULL COMMENT '关键字',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_blog`
--

INSERT INTO `t_blog` (`id`, `title`, `summary`, `clickHit`, `replyHit`, `content`, `typeId`, `keyWord`, `create_time`, `update_time`) VALUES
(93, '动漫', '测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫', 0, 0, '/tp50/public/Uploads/20180514/5af9a7860438f.mp4', 14, '动漫', '2018-05-14 14:27:40', '2018-05-14 15:13:00'),
(94, '动漫2', '测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫测试1测试动漫', 0, 0, '/tp50/public/Uploads/20180514/5af9a7e978e95.ogg', 14, '', '2018-05-14 15:13:38', '2018-05-14 15:14:40');

-- --------------------------------------------------------

--
-- 表的结构 `t_blogger`
--

CREATE TABLE `t_blogger` (
  `id` int(11) NOT NULL COMMENT '博主id',
  `userName` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `profile` text COMMENT '个人简介',
  `nickName` varchar(50) DEFAULT NULL COMMENT '昵称',
  `sign` varchar(100) DEFAULT NULL COMMENT '签名',
  `imageName` varchar(100) DEFAULT NULL COMMENT '头像',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_blogger`
--

INSERT INTO `t_blogger` (`id`, `userName`, `password`, `profile`, `nickName`, `sign`, `imageName`, `create_time`, `update_time`) VALUES
(1, 'JLoongKing', 'b97183ee6e875d4a64de6e15870bf3dd', '<p><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\">白衣裳凭朱栏立</span><br/><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\">凉月趖西</span><br/><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\">点鬓霜微</span><br/><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\">岁晏知君归不归</span><br/><br/><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\">残更目断传书雁</span><br/><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\">尺素还稀</span><br/><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\">一味相思</span><br/><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\">准拟相看似旧时</span></p><p><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\"><br/></span></p><p><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\"><br/></span></p><p><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\"></span></p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">《贺新郎·甚矣吾衰矣》</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">【宋】辛弃疾</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">甚矣吾衰矣。</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">怅平生、交游零落，只今馀几！</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">白发空垂三千丈，一笑人间万事。</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">问何物、能令公喜？</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">我见青山多妩媚，料青山见我应如是。</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">情与貌，略相似。</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">一尊搔首东窗里。</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">想渊明《停云》诗就，此时风味。</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">江左沉酣求名者，岂识浊醪妙理。</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">回首叫、云飞风起。</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">不恨古人吾不见，恨古人不见吾狂耳。</p><p class=\"section txt\" style=\"box-sizing: border-box; word-break: break-all; word-wrap: break-word; margin-top: 20px; margin-bottom: 0px; padding: 0px; line-height: 28px; font-size: 18px; color: rgb(51, 51, 51); font-family: &quot;Hiragino Sans GB&quot;, &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft Yahei&quot;, sans-serif; text-align: justify; white-space: normal; background-color: rgb(255, 255, 255);\">知我者，二三子。</p><p><span style=\"font-family: sans-serif, console, &quot;Hiragino Sans GB&quot;, &quot;WenQuanYi Micro Hei&quot;, SimSun; font-size: 14px; background-color: rgb(255, 250, 240);\"><br/></span><br/></p>', '王霄', '<p>老当益壮，宁移白首之心。穷且益坚，不坠青云之志。</p>', '/tp50/public/Uploads/20180412/5acefadcc82c6.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_blogtype`
--

CREATE TABLE `t_blogtype` (
  `id` int(11) NOT NULL COMMENT '标签id',
  `typeName` varchar(30) DEFAULT NULL COMMENT '标签名',
  `orderNo` int(11) DEFAULT NULL COMMENT '优先级',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_blogtype`
--

INSERT INTO `t_blogtype` (`id`, `typeName`, `orderNo`, `create_time`, `update_time`) VALUES
(1, 'Java核心基础', 1, NULL, NULL),
(2, 'Mysql', 2, NULL, NULL),
(3, 'Tomcat', 3, NULL, NULL),
(4, 'IT之路', 6, NULL, NULL),
(5, '随心生活', 7, NULL, NULL),
(13, '西游重生井龙王', 1, NULL, NULL),
(14, '动漫', 11, '2018-05-14 15:11:39', '2018-05-14 15:11:39');

-- --------------------------------------------------------

--
-- 表的结构 `t_color`
--

CREATE TABLE `t_color` (
  `id` int(11) NOT NULL COMMENT '主题id',
  `colorname` varchar(100) NOT NULL COMMENT '主题名',
  `active` int(11) NOT NULL COMMENT '是否选定0否/1是'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_color`
--

INSERT INTO `t_color` (`id`, `colorname`, `active`) VALUES
(1, '天空蓝', 0),
(2, '日出橙', 1);

-- --------------------------------------------------------

--
-- 表的结构 `t_comment`
--

CREATE TABLE `t_comment` (
  `id` int(11) NOT NULL COMMENT '评论id',
  `userName` varchar(50) DEFAULT NULL COMMENT '用户ip',
  `blogId` int(11) DEFAULT NULL COMMENT '博客id',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `status` int(11) DEFAULT NULL COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `toid` int(11) DEFAULT NULL COMMENT '回复评论的id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_comment`
--

INSERT INTO `t_comment` (`id`, `userName`, `blogId`, `content`, `status`, `create_time`, `update_time`, `toid`) VALUES
(5, 'JLoongKing', 72, '<p>这是测试</p>', 0, '2018-05-13 14:49:44', '2018-05-13 14:49:44', 0),
(6, 'JLoongKing', 72, '<p>这是test2</p>', 0, '2018-05-13 14:59:51', '2018-05-13 14:59:51', 5),
(7, 'JLoongKing', 72, '<p>这是test3</p><p><br/></p>', 0, '2018-05-13 15:05:48', '2018-05-13 15:05:48', 5),
(8, 'JLoongKing', 72, '<p>这是测试1</p>', 0, '2018-05-13 15:08:06', '2018-05-13 15:08:06', 0),
(9, 'JLoongKing', 72, '<p>这是test21</p>', 0, '2018-05-13 15:08:34', '2018-05-13 15:08:34', 8),
(10, 'JLoongKing', 72, '<p>这是测试3<br/></p>', 0, '2018-05-14 11:35:43', '2018-05-14 11:35:43', 0),
(11, 'JLoongKing', 72, '<p>这是test31</p>', 0, '2018-05-14 11:36:01', '2018-05-14 11:36:01', 10),
(12, 'JLoongKing', 93, '<p>vhbhb&nbsp;</p>', 0, '2018-05-14 15:15:34', '2018-05-14 15:15:34', 0);

-- --------------------------------------------------------

--
-- 表的结构 `t_link`
--

CREATE TABLE `t_link` (
  `id` int(11) NOT NULL COMMENT '链接id',
  `linkName` varchar(100) DEFAULT NULL COMMENT '连接名',
  `linkUrl` varchar(200) DEFAULT NULL COMMENT '链接url',
  `orderNo` int(11) DEFAULT NULL COMMENT '优先级',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_link`
--

INSERT INTO `t_link` (`id`, `linkName`, `linkUrl`, `orderNo`, `create_time`, `update_time`) VALUES
(6, '百度引擎', 'https://www.baidu.com', 1, NULL, NULL),
(7, 'google', 'https://www.google.com', 2, NULL, NULL),
(8, '必应', 'http://cn.bing.com', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_log`
--

CREATE TABLE `t_log` (
  `id` int(11) NOT NULL COMMENT '管理员日志id',
  `adminname` varchar(100) NOT NULL COMMENT '管理员名称',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `loginfo` text NOT NULL COMMENT '日志信息'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `t_log`
--

INSERT INTO `t_log` (`id`, `adminname`, `create_time`, `loginfo`) VALUES
(1, 'admin', '0000-00-00 00:00:00', '11111'),
(2, 'admin', '0000-00-00 00:00:00', '11111'),
(3, 'admin', '0000-00-00 00:00:00', '11111'),
(4, 'admin', '0000-00-00 00:00:00', '11111'),
(5, 'admin', '0000-00-00 00:00:00', '11111'),
(6, 'admin', '0000-00-00 00:00:00', '11111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_banner`
--
ALTER TABLE `t_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_blog`
--
ALTER TABLE `t_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `typeId` (`typeId`);

--
-- Indexes for table `t_blogger`
--
ALTER TABLE `t_blogger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_blogtype`
--
ALTER TABLE `t_blogtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_color`
--
ALTER TABLE `t_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_comment`
--
ALTER TABLE `t_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_link`
--
ALTER TABLE `t_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_log`
--
ALTER TABLE `t_log`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `t_banner`
--
ALTER TABLE `t_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'bannerId', AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `t_blog`
--
ALTER TABLE `t_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博客id', AUTO_INCREMENT=95;

--
-- 使用表AUTO_INCREMENT `t_blogger`
--
ALTER TABLE `t_blogger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博主id', AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `t_blogtype`
--
ALTER TABLE `t_blogtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签id', AUTO_INCREMENT=15;

--
-- 使用表AUTO_INCREMENT `t_color`
--
ALTER TABLE `t_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主题id', AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `t_comment`
--
ALTER TABLE `t_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id', AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `t_link`
--
ALTER TABLE `t_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '链接id', AUTO_INCREMENT=9;

--
-- 使用表AUTO_INCREMENT `t_log`
--
ALTER TABLE `t_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员日志id', AUTO_INCREMENT=7;

--
-- 限制导出的表
--

--
-- 限制表 `t_blog`
--
ALTER TABLE `t_blog`
  ADD CONSTRAINT `t_blog_ibfk_1` FOREIGN KEY (`typeId`) REFERENCES `t_blogtype` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
