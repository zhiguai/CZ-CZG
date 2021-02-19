<?php
// +----------------------------------------------------------------------

// | Introduction:模型-用户中心头部
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//判断站点状态
siteState($site['site_state'],$site['site_state_content']);

//判断登入状态
if(is_login($link) == false){
	header("location:/index/login.php?staet=0&tishi=请先登入！");
	exit;
}

//获取账号信息
$userState = true;
//获取账号信息
$query="select * from ".sqlPrefix."_user where user_uuid='{$_COOKIE['user_uuid']}'";
$result=execute($link,$query);
$user = mysqli_fetch_assoc($result);
/*	用户uid
	$user['user_uid'];
	账户等级
	$user['user_level'];
	用户名
	$user['user_name'];
	用户邮箱
	$user['user_email'];
	用户QQ
	$user['user_qq'];
*/
?>