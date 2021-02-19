<?php
// +----------------------------------------------------------------------

// | Introduction:模型-后台首页配置
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

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

if(empty($index['index_header_img'])){
	$imgurl = "https://s1.ax1x.com/2020/04/30/JH2wwt.jpg";
	$imgvalue = "暂无图片";
}else{
	$imgurl = $index['index_header_img'];
	$imgvalue = $index['index_header_img'];
}
//站点基本资料修改
if(isset($_POST['setting-1'])){

	if($_POST['indexHeaderSlogan'] == $index['index_header_slogan'] && $_POST['indexHeaderNavigation'] == $index['index_header_navigation'] && $_POST['indexFooterList1'] == $index['index_footer_list1'] && $_POST['indexFooterList2'] == $index['index_footer_list2'] && $_POST['indexFooterList3'] == $index['index_footer_list3'] && $_POST['indexFooterList4'] == $index['index_footer_list4']){
		header("location:/index/admin/setting-index.php?staet=0&tishi=请修改后再保存！");
		exit;
	}

	if(mb_strlen($_POST['indexHeaderSlogan'])>65535){
		header("location:/index/admin/setting-index.php?staet=0&tishi=头部大标语不得超过65535个字符！");
		exit;
	}
	if(mb_strlen($_POST['indexHeaderNavigation'])>65535){
		header("location:/index/admin/setting-index.php?staet=0&tishi=头部导航不得超过65535个字符！");
		exit;
	}
	if(mb_strlen($_POST['indexFooterList1'])>65535){
		header("location:/index/admin/setting-index.php?staet=0&tishi=页脚导航第1列不得超过65535个字符！");
		exit;
	}
	if(mb_strlen($_POST['indexFooterList2'])>65535){
		header("location:/index/admin/setting-index.php?staet=0&tishi=页脚导航第2列不得超过65535个字符！");
		exit;
	}
	if(mb_strlen($_POST['indexFooterList3'])>65535){
		header("location:/index/admin/setting-index.php?staet=0&tishi=页脚导航第3列不得超过65535个字符！");
		exit;
	}
	if(mb_strlen($_POST['indexFooterList4'])>65535){
		header("location:/index/admin/setting-index.php?staet=0&tishi=页脚导航第4列不得超过65535个字符！");
		exit;
	}

	$_POST=escape($link,$_POST);

	$query="UPDATE ".sqlPrefix."_index SET index_header_slogan='{$_POST['indexHeaderSlogan']}',index_header_navigation='{$_POST['indexHeaderNavigation']}',index_footer_list1='{$_POST['indexFooterList1']}',index_footer_list2='{$_POST['indexFooterList2']}',index_footer_list3='{$_POST['indexFooterList3']}',index_footer_list4='{$_POST['indexFooterList4']}'";	//更新数据

	$result=execute($link, $query);
	if($result){
		header("location:/index/admin/setting-index.php?staet=1&tishi=保存成功！");
		exit;
	}
header("location:/index/admin/setting-index.php?staet=0&tishi=保存失败,请重试！");
exit;
}

if(isset($_POST['setting-2'])){
	if($_POST['indexImg'] == $index['index_header_img']){
		header("location:/index/admin/setting-index.php?staet=0&tishi=请修改后再保存！");
		exit;
	}
	if(empty($_POST['indexImg'])){
		header("location:/index/admin/setting-index.php?staet=0&tishi=填入图片链接后再保存！");
		exit;
	}
	$_POST=escape($link,$_POST);

	$query="UPDATE ".sqlPrefix."_index SET index_header_img='{$_POST['indexImg']}'";	//更新数据

	$result=execute($link, $query);
	if($result){
		header("location:/index/admin/setting-index.php?staet=1&tishi=保存成功！");
		exit;
	}
header("location:/index/admin/setting-index.php?staet=0&tishi=保存失败,请重试！");
exit;
}
?>