<?php
// +----------------------------------------------------------------------

// | Introduction:模型-公告详情
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//判断是否提交数据id
if(empty($_GET['id'])){
	header("location:/index/user/nlist.php?staet=0&tishi=ID参数值为空！");
	exit;
}else{
	//判断文章否存在
	$query="select * from ".sqlPrefix."_notice where notice_id='{$_GET['id']}'";
	$result=execute($link,$query);
	if(mysqli_num_rows($result)!==1){
		header("location:/index/user/nlist.php?staet=0&tishi=未查询到这条数据！");
		exit;
	}
	$noticedata=mysqli_fetch_assoc($result);
}
?>