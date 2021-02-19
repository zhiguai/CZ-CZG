<?php
// +----------------------------------------------------------------------

// | Introduction:模型-后台用户管理
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//判断是否提交用户uid
if(empty($_GET['uid'])){
	header("location:/index/admin/user-list.php?staet=0&tishi=请选择用户！");
	exit;
}

//判断用户否存在
$query="select * from ".sqlPrefix."_user where user_uid='{$_GET['uid']}'";
$result=execute($link,$query);
if(mysqli_num_rows($result)!==1){
	header("location:/index/admin/user-list.php?staet=0&tishi=未查询到用户！");
	exit;
}
$userdata=mysqli_fetch_assoc($result);

//判断是否提交指令
if($_GET['operation'] == "delete"){
	$query="DELETE FROM ".sqlPrefix."_user WHERE user_uuid='{$userdata['user_uuid']}'";	//删除用户
	$result=execute($link, $query);
	if($result){
		header("location:/index/admin/user-list.php?staet=1&tishi=删除成功！");
		exit;
	}
	header("location:/index/admin/user-list.php?staet=1&tishi=删除失败！");
	exit;
}

//修改用户资料
if(isset($_POST['setting-1'])){

	if(empty($_POST['newpw']) && $_POST['userLevel'] == $userdata['user_level'] && $_POST['name'] == $userdata['user_name'] && $_POST['qq'] == $userdata['user_qq'] && $_POST['introduce'] == $userdata['user_introduce'] && $_POST['email'] == $userdata['user_email']){
		header("location:/index/admin/user-list.php?staet=0&tishi=请修改后再保存！");
		exit;
	}

	if(mb_strlen($_POST['name'])>32){
		header("location:/index/admin/user-list.php?staet=0&tishi=用户名长度不得超过32个字符！");
		exit;
	}
	if(mb_strlen($_POST['name'])<3){
		header("location:/index/admin/user-list.php?staet=0&tishi=名字不得少于3个字符！");
		exit;
	}

	if(empty($_POST['email'])){
		header("location:/index/admin/user-list.php?staet=0&tishi=邮箱不得为空！");
		exit;
	}
	if(mb_strlen($_POST['email'])>32){
		header("location:/index/admin/user-list.php?staet=0&tishi=邮箱不得超过32位！");
		exit;
	}

	if(mb_strlen($_POST['introduce'])>255){
		header("location:/index/admin/user-list.php?staet=0&tishi=个人介绍不得超过255个字符！");
		exit;
	}

	if(mb_strlen($_POST['qq'])>11){
		header("location:/index/admin/user-list.php?staet=0&tishi=QQ不得超过11个字符！");
		exit;
	}

	$_POST=escape($link,$_POST);
	$_POST['introduce'] = htmlspecialchars($_POST['introduce']);
	$_POST['name'] = htmlspecialchars($_POST['name']);

	if(empty($_POST['newpw'])){
		$query="UPDATE ".sqlPrefix."_user SET user_name='{$_POST['name']}',user_email='{$_POST['email']}',user_qq='{$_POST['qq']}',user_introduce='{$_POST['introduce']}',user_level='{$_POST['userLevel']}' WHERE user_uuid='{$userdata['user_uuid']}'";	//不修改密码	
	}else{
		if(MD5($_POST['newpw']) == $userdata['user_password']){
			header("location:/index/admin/user-list.php?staet=0&tishi=请勿与原始密码相同！");
			exit;
		}
		if(mb_strlen($_POST['newpw'])<6){
			header("location:/index/admin/user-list.php?staet=0&tishi=新密码密码不得少于6位！");
			exit;
		}
		$query="UPDATE ".sqlPrefix."_user SET user_password=md5('{$_POST['newpw']}'),user_name='{$_POST['name']}',user_email='{$_POST['email']}',user_qq='{$_POST['qq']}',user_introduce='{$_POST['introduce']}',user_level='{$_POST['userLevel']}' WHERE user_uuid='{$userdata['user_uuid']}'";	//修改密码	
	}


	$result=execute($link, $query);
	if($result){
		header("location:/index/admin/user-list.php?staet=1&tishi=保存成功！");
		exit;
	}
header("location:/index/admin/user-list.php?staet=0&tishi=保存失败,请重试！");
exit;
}
?>