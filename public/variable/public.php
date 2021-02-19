<?php
// +----------------------------------------------------------------------

// | Introduction:公用变量库
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//连接数据库
$link=connect();

//引入基本配置
require_once $_SERVER['DOCUMENT_ROOT']."/config/config.php";

//模板相关
$themeWay = $_SERVER['DOCUMENT_ROOT']."/theme/".themeName;//模板页面引入调用
$modelWay = $_SERVER['DOCUMENT_ROOT']."/model";//模型页面引入调用
$themeAssetesWay = "//".$_SERVER['HTTP_HOST']."/theme/".themeName;//模板内资源引入调用

//获取站点信息
$sitequery="SELECT * FROM ".sqlPrefix."_site";
$siteresult=execute($link,$sitequery);
$site = mysqli_fetch_assoc($siteresult);
/*
$site['site_state'];
网站状态
$site['site_state_content'];
闭站内容
$site['site_tittle'];
网站名
$site['site_keywords'];
网站关键词
$site['site_description'];
网站介绍
$site['site_copyright'];
网站版权
$site['site_logo'];
网站logo地址
*/

?>