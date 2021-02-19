<?php
// +----------------------------------------------------------------------

// | Introduction:模型-官网页面
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

if(!empty($_GET['page']) && file_exists($_SERVER['DOCUMENT_ROOT'].'/page/'.$_GET['page'].'.php')){
	include_once $_SERVER['DOCUMENT_ROOT'].'/page/'.$_GET['page'].'.php';
}else{
	$sitePageTittle = '不存在当前页面';
	$sitePageImg = 'https://s1.ax1x.com/2020/03/29/GZgVje.png';
	$sitePageSlogn1 = '404';
	$sitePageSlogn2 = '不存在当前页面,请返回查证后重新操作';
}

//获取站点信息
$indexquery="SELECT * FROM ".sqlPrefix."_index";
$indexresult=execute($link,$indexquery);
$index = mysqli_fetch_assoc($indexresult);
/*
$index['index_header_img'];
首页大图
$index['index_header_navigation'];
头部导航
$index['index_header_slogan'];
头部标语
$index['index_footer_list1'];
页脚列表1
$index['index_footer_list2'];
页脚列表2
$index['index_footer_list3'];
页脚列表3
$index['index_footer_list4'];
页脚列表4
*/


//判断登入状态
if(is_login($link)){
	$userState = true;
	//获取账号信息
	$query="select user_uid,user_name,user_email,user_qq from ".sqlPrefix."_user where user_uuid='{$_COOKIE['user_uuid']}'";
	$result=execute($link,$query);
	$user = mysqli_fetch_assoc($result);
/*	用户uid
	$user['user_uid'];
	用户名
	$user['user_name'];
	用户邮箱
	$user['user_email'];
	用户QQ
	$user['user_qq'];
*/
}

?>