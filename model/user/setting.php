<?php
// +----------------------------------------------------------------------

// | Introduction:模型-个人中心
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

if(empty($user['user_head_img'])){
	$imgurl = "https://s1.ax1x.com/2020/04/30/JH2wwt.jpg";
	$imgvalue = "暂无图片";
}else{
	$imgurl = $user['user_head_img'];
	$imgvalue = $user['user_head_img'];
}

//启动发信机制
sand_vcodeemail();

if(isset($_POST['setting-1'])){

	if(empty($_POST['newpw']) && $_POST['name'] == $user['user_name'] && $_POST['qq'] == $user['user_qq'] && $_POST['introduce'] == $user['user_introduce']){
		header("location:/index/user/setting.php?staet=0&tishi=请修改后再保存！");
		exit;
	}

	if(mb_strlen($_POST['pw'])<6){
		header("location:/index/user/setting.php?staet=0&tishi=原始密码不得少于6位！");
		exit;
	}
	if(mb_strlen($_POST['pw'])>32){
		header("location:/index/user/setting.php?staet=0&tishi=原始密码不得少于32位！");
		exit;
	}

	if(mb_strlen($_POST['name'])>32){
		header("location:/index/user/setting.php?staet=0&tishi=用户名长度不要超过32个字符！");
		exit;
	}
	if(mb_strlen($_POST['name'])<3){
		header("location:/index/user/setting.php?staet=0&tishi=名字不得少于3个字符！");
		exit;
	}

	if(mb_strlen($_POST['introduce'])>255){
		header("location:/index/user/setting.php?staet=0&tishi=个人介绍不得超过255个字符！");
		exit;
	}

	if(mb_strlen($_POST['qq'])>11){
		header("location:/index/user/setting.php?staet=0&tishi=QQ不得超过11个字符！");
		exit;
	}

	if(nooff_passworld($link,$_POST['pw']) == false){
		header("location:/index/user/setting.php?staet=0&tishi=密码错误！");
		exit;
	}

	$_POST=escape($link,$_POST);
	$_POST['introduce'] = htmlspecialchars($_POST['introduce']);
	$_POST['name'] = htmlspecialchars($_POST['name']);
	
	if(empty($_POST['newpw'])){
		$query="UPDATE ".sqlPrefix."_user SET user_name='{$_POST['name']}',user_qq='{$_POST['qq']}',user_introduce='{$_POST['introduce']}' WHERE user_uuid='{$_COOKIE['user_uuid']}'";	//不修改密码	
	}else{
		if(MD5($_POST['newpw']) == $user['user_password']){
			header("location:/index/user/setting.php?staet=0&tishi=请勿与原始密码相同！");
			exit;
		}
		if(mb_strlen($_POST['newpw'])<6){
			header("location:/index/user/setting.php?staet=0&tishi=新密码密码不得少于6位！");
			exit;
		}
		$query="UPDATE ".sqlPrefix."_user SET user_password=md5('{$_POST['newpw']}'),user_name='{$_POST['name']}',user_qq='{$_POST['qq']}',user_introduce='{$_POST['introduce']}' WHERE user_uuid='{$_COOKIE['user_uuid']}'";	//修改密码	
	}


	$result=execute($link, $query);
	if($result){
		header("location:/index/user/setting.php?staet=1&tishi=保存成功！");
		exit;
	}
header("location:/index/user/setting.php?staet=0&tishi=保存失败,请重试！");
exit;
}

if(isset($_POST['setting-2'])){
	//启动验证码发信机制
	if(empty($_POST['email'])){
		header("location:/index/user/setting.php?staet=0&tishi=邮箱不得为空！");
		exit;
	}
	if(mb_strlen($_POST['email'])>32){
		header("location:/index/user/setting.php?staet=0&tishi=邮箱不得超过32位！");
		exit;
	}
	if($site['smtp_state'] == "1"){
		if($_POST['vcode']!=$_SESSION['vcode']){
			header("location:/index/user/setting.php?staet=0&tishi=验证码错误！");
			exit;
		}
		if($_POST['vcodeEail']!=$_SESSION['vcodeEail']){
			header("location:/index/user/setting.php?staet=0&tishi=验证码错误！");
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
		header("location:/index/user/setting.php?staet=0&tishi=该邮箱已经存在，请换其他邮箱！");
		exit;
	}

	$query="UPDATE ".sqlPrefix."_user SET user_email='{$_POST['email']}' WHERE user_uuid='{$_COOKIE['user_uuid']}'";	//修改邮箱	
	$result=execute($link, $query);
	if($result){
		unset($_SESSION['vcode']);
		header("location:/index/user/setting.php?staet=1&tishi=修改成功！");
		exit;
	}
header("location:/index/user/setting.php?staet=0&tishi=修改失败,请重试！");
exit;
}

if(isset($_POST['setting-3'])){
	if($_POST['userHead'] == $user['user_head_img']){
		header("location:/index/user/setting.php?staet=0&tishi=请修改后再保存！");
		exit;
	}
	if(empty($_POST['userHead'])){
		header("location:/index/user/setting.php?staet=0&tishi=填入图片链接后再保存！");
		exit;
	}
	$_POST=escape($link,$_POST);

	$query="UPDATE ".sqlPrefix."_user SET user_head_img='{$_POST['userHead']}'";	//更新数据

	$result=execute($link, $query);
	if($result){
		header("location:/index/user/setting.php?staet=1&tishi=保存成功！");
		exit;
	}
header("location:/index/user/setting.php?staet=0&tishi=保存失败,请重试！");
exit;
}
?>