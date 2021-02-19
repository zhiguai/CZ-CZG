-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-05-03 22:21:48
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `sb.com`
--

-- --------------------------------------------------------

--
-- 表的结构 `fatda_index`
--

CREATE TABLE `fatda_index` (
  `index_header_img` varchar(255) NOT NULL,
  `index_header_navigation` text NOT NULL,
  `index_header_slogan` text NOT NULL,
  `index_footer_list1` text NOT NULL,
  `index_footer_list2` text NOT NULL,
  `index_footer_list3` text NOT NULL,
  `index_footer_list4` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fatda_index`
--

INSERT INTO `fatda_index` (`index_header_img`, `index_header_navigation`, `index_header_slogan`, `index_footer_list1`, `index_footer_list2`, `index_footer_list3`, `index_footer_list4`) VALUES
('https://s1.ax1x.com/2020/03/29/GZ8sXD.jpg', '<li><a href=\"index.php\">首页</a></li>\r\n<li><a href=\"page.php?page=about\">关于我们</a></li>', '欢迎使用该框架', '<li><a href=\"page.php?page=about\">关于我们</a></li>\r\n<li><a href=\"#\">Careers</a></li>\r\n<li><a href=\"#\">Feature Tour</a></li>\r\n<li><a href=\"#\">Pricing</a></li>\r\n<li><a href=\"#\">Team</a></li>', '<li><a href=\"https://chizg.cn/\">吃纸怪博客</a></li>\r\n<li><a href=\"#\">24/7 Call Support</a></li>\r\n<li><a href=\"#\">Video Demos</a></li>\r\n<li><a href=\"#\">Terms of Use</a></li>\r\n<li><a href=\"#\">Privacy Policy</a></li>', '<a href=\"mailto:info@freehtml5.co\">czg@fatda.cn</a> <br>\r\n198 West 21th Street, <br>\r\nSuite 721 New York NY 10016 <br>\r\n<a href=\"tel:+123456789\">+12 34  5677 89</a>', '<li><a href=\"#\"><i class=\"icon-twitter\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"icon-facebook\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"icon-google-plus\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"icon-instagram\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"icon-youtube-play\"></i></a></li>');

-- --------------------------------------------------------

--
-- 表的结构 `fatda_notice`
--

CREATE TABLE `fatda_notice` (
  `notice_id` int(10) UNSIGNED NOT NULL,
  `notice_user_uid` int(10) NOT NULL,
  `notice_top` varchar(10) NOT NULL DEFAULT '0',
  `notice_tittle` varchar(255) NOT NULL,
  `notice_content` text NOT NULL,
  `notice_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `fatda_site`
--

CREATE TABLE `fatda_site` (
  `site_state` varchar(10) DEFAULT '1' COMMENT '网站状态',
  `site_state_content` varchar(255) DEFAULT NULL COMMENT '闭站内容',
  `site_tittle` varchar(255) DEFAULT 'FatDa框架' COMMENT '网站名',
  `site_keywords` varchar(255) DEFAULT 'FatDa，PullBa，吃纸怪' COMMENT '网站关键词',
  `site_description` varchar(255) DEFAULT '由吃纸怪所制作' COMMENT '网站介绍',
  `site_copyright` varchar(255) DEFAULT '© 2020 <a href="https://chizhg.cn">吃纸怪</a>. All Rights Reserved.' COMMENT '网站版权',
  `site_theme` varchar(255) NOT NULL,
  `site_logo` varchar(255) DEFAULT NULL COMMENT '网站logo地址',
  `smtp_state` varchar(10) NOT NULL DEFAULT '0',
  `smtp_server` varchar(36) DEFAULT NULL COMMENT '邮箱服务器地址',
  `smtp_serverport` varchar(36) DEFAULT NULL COMMENT '邮箱服务端口',
  `smtp_usermail` varchar(36) DEFAULT NULL COMMENT '邮箱服务账号',
  `smtp_pass` varchar(36) DEFAULT NULL COMMENT '邮箱服务密码',
  `smtp_username` varchar(36) DEFAULT NULL COMMENT '邮箱发件人姓名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `fatda_site`
--

INSERT INTO `fatda_site` (`site_state`, `site_state_content`, `site_tittle`, `site_keywords`, `site_description`, `site_copyright`, `site_theme`, `site_logo`, `smtp_state`, `smtp_server`, `smtp_serverport`, `smtp_usermail`, `smtp_pass`, `smtp_username`) VALUES
('0', 'FatDa框架正在维护中', 'FatDa框架', 'FatDa，PullBa，吃纸怪', '由吃纸怪所制作', '© 2020 <a href=\"https://chizhg.cn\">吃纸怪</a>. All Rights Reserved.', 'default', 'https://image.swap.wang/plug/logo/GREATY_PBT.png', '0', 'smtp.ym.163.com', '25', 'toolman@fatda.cn', '123456', 'FatDa邮件员');

-- --------------------------------------------------------

--
-- 表的结构 `fatda_user`
--

CREATE TABLE `fatda_user` (
  `user_uid` varchar(10) NOT NULL,
  `user_uuid` varchar(36) NOT NULL,
  `user_level` varchar(6) NOT NULL DEFAULT '1',
  `user_name` varchar(35) DEFAULT NULL,
  `user_head_img` varchar(255) DEFAULT NULL,
  `user_email` varchar(35) NOT NULL,
  `user_password` varchar(35) NOT NULL,
  `user_qq` varchar(35) DEFAULT NULL,
  `user_introduce` varchar(255) DEFAULT NULL,
  `user_last_time` datetime DEFAULT NULL COMMENT '最后一次登入时间',
  `user_regtime` datetime NOT NULL COMMENT '注册时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转储表的索引
--

--
-- 表的索引 `fatda_notice`
--
ALTER TABLE `fatda_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- 表的索引 `fatda_user`
--
ALTER TABLE `fatda_user`
  ADD PRIMARY KEY (`user_uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `fatda_notice`
--
ALTER TABLE `fatda_notice`
  MODIFY `notice_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
