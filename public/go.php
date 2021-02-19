<?php
// +----------------------------------------------------------------------

// | Introduction:跳转
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------
if(empty($_GET["tittle"])){
	echo"请以GET方式请求，例如“?tittle=测试页面&neirong=测试测试&url=http://xxx.xxx”";
	exit;
}
if(empty($_GET["url"])){
	echo"请以GET方式请求，例如“?tittle=测试页面&neirong=测试测试&url=http://xxx.xxx”";
	exit;
}
	$tittle = $_GET["tittle"];
	$neirong = $_GET["neirong"];
	$url = $_GET["url"];
	$time = "6";
?>

<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">

	<?php
		if(empty($_GET["neirong"])){
			echo "<title>跳转 - ".$tittle."</title>";
		}else{
			echo "<title>系统提示 - ".$tittle."</title>";
		}
	?>

  <link rel="stylesheet" href="https://cdn.bootcss.com/mdui/0.4.3/css/mdui.min.css"/>
</head>

<script>
	function countDown(){
		//获取初始时间
		var time = document.getElementById("Time");
		
		//获取到id为time标签中的数字时间
		if(time.innerHTML == 0){
			//等于0时清除计时，并跳转该指定页面
			window.location.href="<?php echo $url; ?>";
		}else{
			time.innerHTML = time.innerHTML-1;
		}
	}
	//1000毫秒调用一次
	window.setInterval("countDown()",1000);
</script>

<body class="mdui-theme-primary-indigo mdui-theme-accent-pink">

<div class="mdui-container">
  <div class="mdui-row mdui-m-t-2">
	<div class="mdui-col-md-6 mdui-col-offset-md-3">
	  <div class="mdui-card">
		<div class="mdui-card-header">
		  <img class="mdui-card-header-avatar" src="https://api.uomg.com/api/get.favicon?url=<?php echo $url; ?>"/>
		  <div class="mdui-card-header-title"><?php echo $tittle; ?></div>
		  <div class="mdui-card-header-subtitle">目标URL：<?php echo $url; ?></div>
		</div>
		<div class="mdui-card-media">
		  <img src="https://api.ixiaowai.cn/mcapi/mcapi.php"/>
		  <div class="mdui-card-menu">
			<button class="mdui-btn mdui-btn-icon mdui-text-color-white"><i class="mdui-icon material-icons">share</i></button>
		  </div>
		</div>

	<?php
		if(empty($_GET["neirong"])){
echo<<<STR
			<div class="mdui-card-primary">
			  <div class="mdui-card-primary-title">正在准备跳转 - {$tittle}</div>
			  <div class="mdui-card-primary-subtitle">将在 <span id="Time" >{$time}</span> 后跳转至 {$url}</div>
			</div>
			<div class="mdui-card-content">小知识：<span id="jinrishici-sentence">正在加载今日诗词....</span></div>
STR;
		}else{
echo<<<STR
			<div class="mdui-card-primary">
			  <div class="mdui-card-primary-title">系统提示 - {$tittle}</div>
			  <div class="mdui-card-primary-subtitle">将在 <span id="Time" >30</span> 后跳转至 {$url}</div>
			</div>
			<div class="mdui-card-content">{$neirong}</div>
STR;
		}
	?>			
		<div class="mdui-card-actions">
		  <a href="<?php echo $url; ?>"><button class="mdui-btn mdui-ripple mdui-color-theme-accent">立即跳转</button></a>
		</div>
	  </div>
	</div>
  </div>
</div>

<script src="https://sdk.jinrishici.com/v2/browser/jinrishici.js" charset="utf-8"></script>
<script src="https://cdn.bootcss.com/mdui/0.4.3/js/mdui.min.js"></script>
</body>
</html>