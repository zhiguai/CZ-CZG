<?php
// +----------------------------------------------------------------------

// | Introduction:视图-用户中心首页
 
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
$siteTittle = '用户中心首页';
//引入模型头
include $modelWay."/user/head.php";
//引入模型
include $modelWay."/user/index.php";

//引入提示模板
include $themeWay."/user/tishi.tpl";
//引入index模板头部
include $themeWay."/user/header.tpl";
//引入index模板主体
include $themeWay."/user/index.tpl";
//引入index模板页脚
include $themeWay."/user/footer.tpl";


//关闭数据库链接
close($link);
?>