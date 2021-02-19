<?php
// +----------------------------------------------------------------------

// | Introduction:公用-同步邮件发送
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

	if(empty($_POST['url'])){
		$current_url=$_SERVER['QEQUEST_URI'];
		$arr_current=parse_url($current_url);
		$url="//".$arr_current["host"].$arr_current["path"];
		$_POST['url'] = $url;
	}
	if(empty($_POST['toemail'])){
		header("location:".$_POST['url']."?staet=0&tishi=请输入邮箱");
		exit;
	}
	if(empty($_POST['tittle'])){
		header("location:".$_POST['url']."?staet=0&tishi=请输入主题");
		exit;
	}
	if(empty($_POST['content'])){
		header("location:".$_POST['url']."?staet=0&tishi=请输入内容");
		exit;
	}


	//引入基本配置
	require_once $_SERVER['DOCUMENT_ROOT']."/config/config.php";
	
	//引入公公函数库
	require_once $_SERVER['DOCUMENT_ROOT']."/public/function/public.php";

	//引入公公变量库
	require_once $_SERVER['DOCUMENT_ROOT']."/public/variable/public.php";



	//读取email配置
	$emalLink = connect();
	$emalQuery = "SELECT smtp_server, smtp_serverport, smtp_usermail, smtp_pass, smtp_username FROM ".sqlPrefix."_site";
	$emalResult = execute($emalLink,$emalQuery);
	$emalRow = mysqli_fetch_assoc($emalResult);

	require_once "./Smtp.class.php";
	//******************** 配置信息 ********************************
	$smtpserver = $emalRow["smtp_server"];//SMTP服务器
	$smtpserverport =$emalRow["smtp_serverport"];//SMTP服务器端口
	$smtpusermail = $emalRow["smtp_usermail"];//SMTP服务器的用户邮箱
	$smtpemailto = $_POST['toemail'];//发送给谁
	$smtpuser = $emalRow["smtp_usermail"];//SMTP服务器的用户帐号，注：部分邮箱只需@前面的用户名
	$smtppass = $emalRow["smtp_pass"];//SMTP服务器的授权码
	$mailusername = $emalRow["smtp_username"];//发件人名字
	$mailtitle = $_POST['tittle'];//邮件主题
	$mailcontent = "<h1>".$_POST['content']."</h1>";//邮件内容
	$mailtype = "HTML";//邮件格式（HTML/TXT）,TXT为文本邮件
	//************************ 配置信息 ****************************
	$smtp = new Smtp($smtpserver,$smtpserverport,true,$smtpuser,$smtppass);//这里面的一个true是表示使用身份验证,否则不使用身份验证.
	$smtp->debug = false;//是否显示发送的调试信息
	$state = $smtp->sendmail($smtpemailto, $smtpusermail, $mailtitle, $mailcontent, $mailtype,$mailusername);

	if($state==""){
		header("location:".$_POST['url']."?staet=0&tishi=邮件发送失败！邮箱填写有误或联系管理员检查SMTP配置是否有误。");
		exit;
	}else{
		header("location:".$_POST['url']."?staet=1&tishi=邮件发送成功！请注意查收！");
		exit;
	}
	close($emalLink);
?>