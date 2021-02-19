<?php
// +----------------------------------------------------------------------

// | Introduction:视图-后台用户列表
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//引入公公函数库
require_once $_SERVER['DOCUMENT_ROOT']."/public/function/public.php";
//引入公公变量库
require_once $_SERVER['DOCUMENT_ROOT']."/public/variable/public.php";

//检测状态
test_state("0");

//页面标题
$siteTittle = '用户列表';
//引入模型头部文件
include $modelWay."/admin/head.php";
//引入模型
include $modelWay."/admin/user-list.php";

//引入提示模板
include "../../theme/admin/tishi.tpl";
//引入index模板头部
include "../../theme/admin/header.tpl";
//引入index模板主体
include "../../theme/admin/user-list.tpl";
//引入index模板页脚
include "../../theme/admin/footer.tpl";


//关闭数据库链接
close($link);
?>