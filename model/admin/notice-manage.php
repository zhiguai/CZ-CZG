<?php
// +----------------------------------------------------------------------

// | Introduction:模型-后台公告管理
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//判断是否提交数据id
if(empty($_GET['id'])){

	if(isset($_POST['setting-1'])){

		if(empty($_POST['noticeTop']) && empty($_POST['noticeTittle']) && empty($_POST['noticeContent'])){
			header("location:/index/admin/notice-manage.php?staet=0&tishi=请检填写内容再提交！");
			exit;
		}

		if(empty($_POST['noticeTop'])){
			header("location:/index/admin/notice-manage.php?staet=0&tishi=请选择置顶状态再提交！");
			exit;
		}

		if($_POST['noticeTop'] != "0" && $_POST['noticeTop'] != "1"){
			header("location:/index/admin/notice-manage.php?staet=0&tishi=置顶值错误！");
			exit;
		}

		if(mb_strlen($_POST['noticeTop'])>10){
			header("location:/index/admin/notice-manage.php?staet=0&tishi=置顶值超长！");
			exit;
		}
		if(mb_strlen($_POST['noticeTittle'])>255){
			header("location:/index/admin/notice-manage.php?staet=0&tishi=标题不得超过255个字符！");
			exit;
		}
		if(mb_strlen($_POST['noticeContent'])>65535){
			header("location:/index/admin/notice-manage.php?staet=0&tishi=内容不得超过65535个字符！");
			exit;
		}

		$_POST=escape($link,$_POST);
		//插入这条数据
		$query="insert into ".sqlPrefix."_notice(notice_user_uid,notice_top,notice_tittle,	notice_content,notice_time) values('{$user['user_uid']}','{$_POST['noticeTop']}','{$_POST['noticeTittle']}','{$_POST['noticeContent']}',now())";
		$result=execute($link, $query);
		if($result){
			header("location:/index/admin/notice-list.php?staet=1&tishi=发布成功！");
			exit;
		}
		header("location:/index/admin/notice-list.php?staet=0&tishi=发布失败！");
		exit;
	}
}else{
	//判断文章否存在
	$query="select * from ".sqlPrefix."_notice where notice_id='{$_GET['id']}'";
	$result=execute($link,$query);
	if(mysqli_num_rows($result)!==1){
		header("location:/index/admin/notice-list.php?staet=0&tishi=未查询到这条数据！");
		exit;
	}
	$noticedata=mysqli_fetch_assoc($result);

	//判断是否提交指令
	if($_GET['operation'] == "delete"){
		//删除这条数据
		$query="DELETE FROM ".sqlPrefix."_notice WHERE notice_id='{$noticedata['notice_id']}'";
		$result=execute($link, $query);
		if($result){
			header("location:/index/admin/notice-list.php?staet=1&tishi=删除成功！");
			exit;
		}
		header("location:/index/admin/notice-list.php?staet=1&tishi=删除失败，请检查权限！");
		exit;
	}

	//修改这条数据
	if(isset($_POST['setting-1'])){
		//判断数据是否有更改
		if($_POST['noticeTop'] == $noticedata['notice_top'] && $_POST['noticeTittle'] == $noticedata['notice_tittle'] && $_POST['noticeContent'] == $noticedata['notice_content']){
			header("location:/index/admin/user-list.php?staet=0&tishi=请修改后再保存！");
			exit;
		}

		if(mb_strlen($_POST['noticeTop'])>2){
			header("location:/index/admin/notice-list.php?staet=0&tishi=置顶值错误！");
			exit;
		}
		if(mb_strlen($_POST['noticeTittle'])>255){
			header("location:/index/admin/notice-list.php?staet=0&tishi=标题不得超过255个字符！");
			exit;
		}
		if(mb_strlen($_POST['noticeContent'])>65535){
			header("location:/index/admin/notice-list.php?staet=0&tishi=内容不得超过65535个字符！");
			exit;
		}
		$_POST=escape($link,$_POST);
		//更新这条数据	
		$query="UPDATE ".sqlPrefix."_notice SET notice_user_uid='{$user['user_uid']}',notice_top='{$_POST['noticeTop']}',notice_tittle='{$_POST['noticeTittle']}',notice_content='{$_POST['noticeContent']}',notice_time=now() WHERE notice_id='{$noticedata['notice_id']}'";	

		$result=execute($link, $query);
		if($result){
			header("location:/index/admin/notice-list.php?staet=1&tishi=发布成功！");
			exit;
		}
	header("location:/index/admin/notice-list.php?staet=0&tishi=发布失败,请重试！");
	exit;
	}
}

?>