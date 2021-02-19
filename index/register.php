<?php
// +----------------------------------------------------------------------

// | Introduction:视图-注册页面
 
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
$siteTittle = '注册';

//引入模型
include $modelWay."/register.php";

//引入提示模板
include $themeWay."/tishi.tpl";

//引入index模板
include $themeWay."/register.tpl";

//关闭数据库链接
close($link);
?>