<?php
// +----------------------------------------------------------------------

// | Introduction:模型-注册页面
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//启动验证码发信机制
sand_vcodeemail();
//连接数据库
$link=connect();

if(is_login($link)){
	header("location:/index/index.php?staet=0&tishi=已经登入！");
	exit;
}

//判断提交
if(isset($_POST['register'])){
	//验证
	if(empty($_POST['aggree'])){
		header("location:/index/register.php?staet=0&tishi=同意政策即可享受我们的服务。");
		exit;
	}
	
	if(mb_strlen($_POST['email'])>32){
		header("location:/index/register.php?staet=0&tishi=邮箱不得超过32位！");
		exit;
	}

	if(mb_strlen($_POST['username'])<3){
		header("location:/index/register.php?staet=0&tishi=名字不得少于3个字符！");
		exit;
	}
	if(mb_strlen($_POST['username'])>32){
		header("location:/index/register.php?staet=0&tishi=用户名长度不得超过32个字符！");
		exit;
	}

	if(mb_strlen($_POST['password'])<6){
		header("location:/index/register.php?staet=0&tishi=密码不得少于6位！");
		exit;
	}
	if(mb_strlen($_POST['password'])>32){
		header("location:/index/register.php?staet=0&tishi=密码不得多余32位！");
		exit;
	}
	if($_POST['password']!=$_POST['confirm_password']){
		header("location:/index/register.php?staet=0&tishi=两次密码输入不一致！");
		exit;
	}

	if($site['smtp_state'] == "1"){
		if($_POST['vcode']!=$_SESSION['vcode']){
			header("location:/index/register.php?staet=0&tishi=验证码错误！");
			exit;
		}
		if($_POST['vcodeEail']!=$_SESSION['vcodeEail']){
			header("location:/index/register.php?staet=0&tishi=验证码错误！");
			exit;
		}		
		if(empty($_POST['vcode'])){
			header("location:/index/user/setting.php?staet=0&tishi=请填写验证码！");
			exit;
		}
	}

	$_POST=escape($link,$_POST);
	$query="select * from ".sqlPrefix."_user where user_email='{$_POST['email']}'";
	$result=execute($link, $query);
	if(mysqli_num_rows($result)){
		header("location:/index/register.php?staet=0&tishi=该邮箱已经存在，请换其他邮箱！");
		exit;
	}
	
	//生成一个UID
	function uid(){
		
		function make_password( $length = 8 )
		{
			// 密码字符集，可任意添加你需要的字符
			$chars = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', );
			// 在 $chars 中随机取 $length 个数组元素键名
			$keys = array_rand($chars, $length); 
			$password = '';
			for($i = 0; $i < $length; $i++)
			{
				// 将 $length 个数组元素连接成字符串
				$password .= $chars[$keys[$i]];
			}
			return $password;
		}
		$suiji = make_password(4);
		//$_POST['email']
		$time=date('ymdhis',time());
		
		$hunxaio = str_shuffle(substr(str_shuffle($time) * 3.14 - $suiji, 0, 11));
		$uid = str_shuffle(substr($hunxaio * $suiji, 0, 9));
		return $uid;
	}
	$uid = uid();
	
	$query="select * from ".sqlPrefix."_user where user_uid='{$uid}'";
	$result=execute($link, $query);
	if(mysqli_num_rows($result)){
		header("location:/index/login.php?staet=0&tishi=这个UID已存在，请才重新注册！");
		exit;
	}

	//生成一个UUID
	function guid(){
		if (function_exists('com_create_guid')){
			return com_create_guid();
		}else{
			mt_srand((double)microtime()*10000);//optional for php 4.2.0 and up.
			$charid = strtoupper(md5(uniqid(rand(), true)));
			$hyphen = chr(45);// "-"
			$uuid = chr(123)// "{"
					.substr($charid, 0, 8).$hyphen
					.substr($charid, 8, 4).$hyphen
					.substr($charid,12, 4).$hyphen
					.substr($charid,16, 4).$hyphen
					.substr($charid,20,12)
					.chr(125);// "}"
			$uuid = str_replace('{',"",$uuid);
			$uuid = str_replace('}',"",$uuid);
			$uuid = strtolower($uuid);
			return $uuid;
		}
	}
	$uuid = guid();
	
	$_POST['username'] = htmlspecialchars($_POST['username']);

	$query="insert into ".sqlPrefix."_user(user_uid,user_uuid,user_name,user_password,user_email,user_regtime) values('{$uid}','{$uuid}','{$_POST['username']}',md5('{$_POST['password']}'),'{$_POST['email']}',now())";
	execute($link,$query);
	if(mysqli_affected_rows($link)==1){
	//销毁验证码session
		unset($_SESSION['vcode']);
		unset($_SESSION['vcodeEail']);
		header("location:/index/login.php?staet=1&tishi=注册成功！");
		exit;
	}else{
	//销毁验证码session
		unset($_SESSION['vcodeEail']);
		header("location:/index/register.php?staet=0&tishi=注册失败,请重试！");
		exit;
	}
}
?>