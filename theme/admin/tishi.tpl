<?php 
// +----------------------------------------------------------------------

// | Introduction:公用变量库
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//错误提示模板
$registertishi0=<<<neirong
<div class="sufee-alert alert with-close alert-danger alert-dismissible fade show">
	<span class="badge badge-pill badge-danger">异常</span>
	{$_GET['tishi']}
	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
		<span aria-hidden="true">×</span>
	</button>
</div>
neirong;
//正确提示模板
$registertishi1=<<<neirong
<div class="sufee-alert alert with-close alert-success alert-dismissible fade show">
	<span class="badge badge-pill badge-success">成功</span>
	{$_GET['tishi']}
	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
		<span aria-hidden="true">×</span>
	</button>
</div>
neirong;
?>