<?php
// +----------------------------------------------------------------------

// | Introduction:模型-用户中心首页
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

if($user['user_level'] = 0){
	$user_level = '管理员';
}
$user_level = '普通用户';



//获取列表总数
$query="select * from ".sqlPrefix."_notice";
$result=execute($link,$query);
$user_list_all = mysqli_num_rows($result);

//显示列表查询
$query="select * from ".sqlPrefix."_notice order by notice_top desc,notice_time desc LIMIT 0,4 ";
$result_content=execute($link,$query);

?>