<?php
// +----------------------------------------------------------------------

// | Introduction:模型-后台基本配置
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

if(empty($site['site_logo'])){
	$imgurl = "https://s1.ax1x.com/2020/04/30/JH2wwt.jpg";
	$imgvalue = "暂无图片";
}else{
	$imgurl = $site['site_logo'];
	$imgvalue = $site['site_logo'];
}

if(empty($site['site_theme'])){
	$theme = "暂无选择";
}else{
	$theme = $site['site_theme'];
}

$file = array_diff(scandir('../../theme'),array('.','..','admin'));

//站点基本资料修改
if(isset($_POST['setting-1'])){

	if($_POST['siteState'] == $site['site_state'] && $_POST['siteStateContent'] == $site['site_state_content'] && $_POST['siteTittle'] == $site['site_tittle'] && $_POST['siteDescription'] == $site['site_description'] && $_POST['siteKeywords'] == $site['site_keywords'] && $_POST['siteCopyright'] == $site['site_copyright']){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=请修改后再保存！");
		exit;
	}

	if($_POST['siteState'] != "0" && $_POST['siteState'] != "1"){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=网站状态值格式错误！");
		exit;
	}
	
	if(mb_strlen($_POST['siteState'])>10){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=网站状态值超长！");
		exit;
	}
	if(mb_strlen($_POST['siteStateContent'])>255){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=闭站内容不得超过255个字符！");
		exit;
	}
	if(mb_strlen($_POST['siteTittle'])>255){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=网站名不得超过255个字符！");
		exit;
	}
	if(mb_strlen($_POST['siteDescription'])>255){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=网站介绍不得超过255个字符！");
		exit;
	}
	if(mb_strlen($_POST['siteKeywords'])>255){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=网站关键词不得超过255个字符！");
		exit;
	}
	if(mb_strlen($_POST['siteCopyright'])>255){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=网站版权不得超过255个字符！");
		exit;
	}

	$_POST=escape($link,$_POST);
	//更新数据
	$query="UPDATE ".sqlPrefix."_site SET site_state='{$_POST['siteState']}',site_state_content='{$_POST['siteStateContent']}',site_tittle='{$_POST['siteTittle']}',site_description='{$_POST['siteDescription']}',site_keywords='{$_POST['siteKeywords']}',site_copyright='{$_POST['siteCopyright']}'";	
	$result=execute($link, $query);
	if($result){
		header("location:/index/admin/setting-basic.php?staet=1&tishi=保存成功！");
		exit;
	}
header("location:/index/admin/setting-basic.php?staet=0&tishi=保存失败,请重试！");
exit;
}

//SMTP邮箱修改
if(isset($_POST['setting-2'])){

	if($_POST['smtpState'] == $site['smtp_state'] && $_POST['smtpServer'] == $site['smtp_server'] && $_POST['smtpServerport'] == $site['smtp_serverport'] && $_POST['smtpUsermail'] == $site['smtp_usermail'] && $_POST['smtpPass'] == $site['smtp_pass'] && $_POST['smtpUsername'] == $site['smtp_username']){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=请修改后再保存！");
		exit;
	}

	if($_POST['smtpState'] != "0" && $_POST['smtpState'] != "1"){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=发件服务状态值格式错误！");
		exit;
	}
	
	if(mb_strlen($_POST['smtpState'])>10){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=发件服务状态值超长！");
		exit;
	}
	if(mb_strlen($_POST['smtpServer'])>36){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=邮箱服务器地址不得超过36个字符！");
		exit;
	}
	if(mb_strlen($_POST['smtpServerport'])>36){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=邮箱服务端口不得超过36个字符！");
		exit;
	}
	if(mb_strlen($_POST['smtpUsermail'])>36){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=邮箱服务账号不得超过36个字符！");
		exit;
	}
	if(mb_strlen($_POST['smtpPass'])>36){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=邮箱服务密码不得超过36个字符！");
		exit;
	}
	if(mb_strlen($_POST['smtpUsername'])>36){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=邮箱发件人姓名不得超过36个字符！");
		exit;
	}

	$_POST=escape($link,$_POST);

	$query="UPDATE ".sqlPrefix."_site SET smtp_state='{$_POST['smtpState']}',smtp_server='{$_POST['smtpServer']}',smtp_serverport='{$_POST['smtpServerport']}',smtp_usermail='{$_POST['smtpUsermail']}',smtp_pass='{$_POST['smtpPass']}',smtp_username='{$_POST['smtpUsername']}'";	//更新数据

	$result=execute($link, $query);
	if($result){
		header("location:/index/admin/setting-basic.php?staet=1&tishi=保存成功！");
		exit;
	}
header("location:/index/admin/setting-basic.php?staet=0&tishi=保存失败,请重试！");
exit;
}

if(isset($_POST['setting-3'])){
	if($_POST['siteLogo'] == $site['site_logo']){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=请修改后再保存！");
		exit;
	}
	if(empty($_POST['siteLogo'])){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=填入图片链接后再保存！");
		exit;
	}
	$_POST=escape($link,$_POST);

	$query="UPDATE ".sqlPrefix."_site SET site_logo='{$_POST['siteLogo']}'";	//更新数据

	$result=execute($link, $query);
	if($result){
		header("location:/index/admin/setting-basic.php?staet=1&tishi=保存成功！");
		exit;
	}
header("location:/index/admin/setting-basic.php?staet=0&tishi=保存失败,请重试！");
exit;
}

if(isset($_POST['setting-4'])){

	if(empty($_POST['themeName'])){
		header("location:/index/admin/setting-basic.php?staet=0&tishi=请选择后再试！");
		exit;
	}

	$filename='../../config/config.php';
	$str_file=file_get_contents($filename);
	$pattern="/('themeName',.*?\)/";
	if(preg_match($pattern,$str_file)){
		$_POST['themeName']=addslashes($_POST['themeName']);
		$str_file=preg_replace($pattern,"('themeName','{$_POST['themeName']}')", $str_file);
	}

	if(!file_put_contents($filename, $str_file)){
		header("location:/index/admin/setting-basic.php?staet=1&tishi=配置保存失败！");
		exit;
	}

	$_POST=escape($link,$_POST);
	$query="UPDATE ".sqlPrefix."_site SET site_theme='{$_POST['themeName']}'";	//更新数据
	$result=execute($link, $query);
	if($result){
		header("location:/index/admin/setting-basic.php?staet=1&tishi=保存成功！");
		exit;
	}

header("location:/index/admin/setting-basic.php?staet=0&tishi=数据保存失败,请重试！");
exit;
}
?>