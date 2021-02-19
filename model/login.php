<?php
// +----------------------------------------------------------------------

// | Introduction:模型-登入页面
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//判断登入状态
if(is_login($link)){
	header("location:/index/index.php?staet=0&tishi=已经登入！");
	exit;
}

if(isset($_POST['login'])){
	
	if(empty($_POST['email'])){
		header("location:/index/login.php?staet=0&tishi=邮箱不得为空！");
		exit;
	}
	if(mb_strlen($_POST['email'])>32){
		header("location:/index/login.php?staet=0&tishi=邮箱不得超过32位！");
		exit;
	}
	if(mb_strlen($_POST['pw'])<6){
		header("location:/index/login.php?staet=0&tishi=密码不得少于6位！");
		exit;
	}
	if(mb_strlen($_POST['pw'])>32){
		header("location:/index/login.php?staet=0&tishi=密码不得多余32位！");
		exit;
	}
	if(!empty($_POST['remember'])){
		$_POST['time']=2592000;
	}else{
		$_POST['time']=10800;
	}
	escape($link,$_POST);
	$query="select * from ".sqlPrefix."_user where user_email='{$_POST['email']}' and user_password=md5('{$_POST['pw']}')";
	$result=execute($link, $query);
	if(mysqli_num_rows($result)==1){
		//成功后获取uuid
		$sqluuid = "select user_uuid from ".sqlPrefix."_user where user_email='{$_POST['email']}' and user_password=md5('{$_POST['pw']}')";
		$resultuuid = execute($link,$sqluuid);
		//判断是否获取成功
		if($resultuuid){
			$uuid = mysqli_fetch_row($resultuuid);
			
 			//写入最后一次登陆时间
			$lasttimequery = "UPDATE ".sqlPrefix."_user SET user_last_time=now() WHERE user_uuid='{$uuid['0']}'";
			$lasttimeresult = execute($link, $lasttimequery);
			//判断是否写入成功
			if($lasttimeresult){
				//设置cookie
				setcookie('user_pw',sha1(md5($_POST['pw'])),time()+$_POST['time']);
 				setcookie('user_uuid', $uuid["0"],time()+$_POST['time']);
				header("location:/index/index.php");
				exit;
			}else{
				
				header("location:/index/login.php?staet=0&tishi=系统出现错误请重试");
				exit; 
			}  
		}else{
			header("location:/index/login.php?staet=0&tishi=uuid获取失败！");
			exit;
		}
	}else{
		header("location:/index/login.php?staet=0&tishi=密码错误！");
		exit;
	}
}
?>