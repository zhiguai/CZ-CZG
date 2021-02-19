<?php
// +----------------------------------------------------------------------

// | Introduction:模型-后台页面管理
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

$pageUrl = $_SERVER['DOCUMENT_ROOT']."/page/";

//判断是否提交数据page
if(empty($_GET['page'])){

	if(isset($_POST['setting-1'])){

		if(empty($_POST['pageContent']) && empty($_POST['pageName'])){
			header("location:/index/admin/page-manage.php?staet=0&tishi=请检填写内容再提交！");
			exit;
		}

		if(empty($_POST['pageName'])){
			header("location:/index/admin/page-manage.php?staet=0&tishi=请填写页面名再提交！");
			exit;
		}

		//检测页面名是否存在
		if(file_exists($pageUrl.$_POST['pageName'].".php")){
			header("location:/index/admin/page-manage.php?staet=0&tishi=该页面名已存在，请更换后再试！");
			exit;
		}

		//创建文件
		$setPage = file_put_contents($pageUrl.$_POST['pageName'].".php", $_POST['pageContent']); 

		if($setPage){
			header("location:/index/admin/page-list.php?staet=1&tishi=发布成功！");
			exit;
		}
		header("location:/index/admin/page-list.php?staet=0&tishi=发布失败，请检查权限！");
		exit;
	}
}else{
	//判断页面否存在
	if(!file_exists($pageUrl.$_GET['page'].".php")){
		header("location:/index/admin/page-list.php?staet=0&tishi=该页面名不存在，请更换后再试！");
		exit;
	}

	//判断是否提交指令
	if($_GET['operation'] == "delete"){
		//删除这条数据
		if (!unlink($pageUrl.$_GET['page'].".php")){
			header("location:/index/admin/page-list.php?staet=0&tishi=删除失败！");
			exit;
		}
		header("location:/index/admin/page-list.php?staet=1&tishi=删除成功！");
		exit;
	}

	$openPage = file_get_contents($pageUrl.$_GET['page'].".php"); //读取文件存入变量

	if(isset($_POST['setting-1'])){

		//判断数据是否有更改
		if($_POST['pageName'] == $_GET['page'] && $_POST['pageContent'] == $openPage){
			header("location:/index/admin/page-list.php?staet=0&tishi=请修改后再保存！");
			exit;
		}

		//验证是否修改页面名
		if($_POST['pageName'] == $_GET['page']){
			$setPage = file_put_contents($pageUrl.$_POST['pageName'].".php", $_POST['pageContent']); //创建文件

			if($setPage){
				header("location:/index/admin/page-list.php?staet=1&tishi=发布成功！");
				exit;
			}
			header("location:/index/admin/page-list.php?staet=0&tishi=发布失败，请检查权限！");
			exit;
		}else{
			//修改页面名
			//验证页面名是否已存在
			if(file_exists($pageUrl.$_POST['pageName'].".php")){
				header("location:/index/admin/page-list.php?staet=0&tishi=该页面名已存在，请更换后再试！");
				exit;
			}

			//修改页面名
			if(rename($pageUrl.$_GET['page'].".php",$pageUrl.$_POST['pageName'].".php")){
				//页面名修改成功
				$setPage = file_put_contents($pageUrl.$_POST['pageName'].".php", $_POST['pageContent']); //创建文件

				if($setPage){
					header("location:/index/admin/page-list.php?staet=1&tishi=发布成功！");
					exit;
				}
				header("location:/index/admin/page-list.php?staet=0&tishi=发布失败，请检查权限！");
				exit;
			}else{
				header("location:/index/admin/page-manage.php?staet=0&tishi=页面名修改失败，请检查权限！");
				exit;
			} 
		}

	}
}

?>