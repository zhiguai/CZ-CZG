<?php
// +----------------------------------------------------------------------

// | Introduction:模型-后台公告列表
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//获取用户列表
//引入分页函数
require_once $_SERVER['DOCUMENT_ROOT']."/public/function/page.inc.php";
//引入翻页按钮模板
include_once "../../theme/admin/btnfy.tpl";

//获取列表总数
$query="select * from ".sqlPrefix."_notice";
$result=execute($link,$query);
$user_list_all = mysqli_num_rows($result);
//翻页按钮
$page=page($style,$user_list_all,6);

//显示列表查询
$query="select * from ".sqlPrefix."_notice {$page['limit']}";
$result_content=execute($link,$query);
			
?>