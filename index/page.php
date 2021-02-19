<?php
// +----------------------------------------------------------------------

// | Introduction:视图-官网页面
 
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

//引入模型
include $modelWay."/page.php";

//引入page模板
include $themeWay."/page.tpl";

//关闭数据库链接
close($link);
?>