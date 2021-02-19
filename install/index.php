<?php
// +----------------------------------------------------------------------

// | Introduction:入口文件
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------
header('Content-type:text/html;charset=utf-8');
$tab1 = "";
$tab2 = "disabled";
$tab3 = "disabled";
$tab4 = "disabled";
if($_GET['tab'] == "2"){
	$tab1 = "disabled";
	$tab2 = "";
	$tab3 = "disabled";
	$tab4 = "disabled";
}elseif($_GET['tab'] == "3"){
	$tab1 = "disabled";
	$tab2 = "disabled";
	$tab3 = "";
	$tab4 = "disabled";
}elseif($_GET['tab'] == "4"){
	$tab1 = "disabled";
	$tab2 = "disabled";
	$tab3 = "disabled";
	$tab4 = "";
}

if(!empty($_GET['tishi'])){
echo <<<"STR"
<script type="text/javascript">
	window.onload=function(){
	  mdui.snackbar({
	    message: '{$_GET['tishi']}',
	    position: 'left-top'
	  });
	}
</script>
STR;
}

if(isset($_POST['submit-2'])){
	if(empty($_POST['sqlServerHost'])){
		header("location:/install/index.php?tab=2&tishi=数据库地址不得为空！#example1-tab2");
		exit;
	}
	if(empty($_POST['sqlDbPort'])){
		header("location:/install/index.php?tab=2&tishi=数据库服务端口不得为空！#example1-tab2");
		exit;
	}
	if(empty($_POST['sqlUserName'])){
		header("location:/install/index.php?tab=2&tishi=数据库用户名不得为空！#example1-tab2");
		exit;
	}
	if(!isset($_POST['sqlPassWord'])){
		header("location:/install/index.php?tab=2&tishi=数据库密码不存在！#example1-tab2");
		exit;
	}
	if(empty($_POST['sqlDbName'])){
		header("location:/install/index.php?tab=2&tishi=数据库名称不得为空！#example1-tab2");
		exit;
	}

	function insert($file,$name,$root,$pwd,$database,$port){
        //将表导入数据库
        header("Content-type: text/html; charset=utf-8");
        $_sql = file_get_contents($file);//写自己的.sql文件
        $_arr = explode(';', $_sql);
        $_mysqli = new mysqli($name,$root,$pwd,$database,$port);//第一个参数为域名，第二个为用户名，第三个为密码，第四个为数据库名字
        if (mysqli_connect_errno()) 
        {
            return false;
        }
        else{
            //执行sql语句
            $_mysqli->query('set names utf8;'); //设置编码方式
            foreach ($_arr as $_value) {
                $_mysqli->query($_value.';');
            }
            return true;
        }
        $_mysqli->close();
        $_mysqli = null;
    }

    if(insert("mysql.sql",$_POST['sqlServerHost'],$_POST['sqlUserName'],$_POST['sqlPassWord'],$_POST['sqlDbName'],$_POST['sqlDbPort']) == false){
		header("location:/install/index.php?tab=2&tishi=数据库创建失败请检查填写是否有误，或是否给予权限！#example1-tab2");
		exit;
    }

	$filename='../config/config.php';
	$str_file=file_get_contents($filename);
	$pattern="/'sqlServerHost',.*?\)/";
	if(preg_match($pattern,$str_file)){
		$_POST['sqlServerHost']=addslashes($_POST['sqlServerHost']);
		$str_file=preg_replace($pattern,"'sqlServerHost','{$_POST['sqlServerHost']}')", $str_file);
	}
	$pattern="/'sqlUserName',.*?\)/";
	if(preg_match($pattern,$str_file)){
		$_POST['sqlUserName']=addslashes($_POST['sqlUserName']);
		$str_file=preg_replace($pattern,"'sqlUserName','{$_POST['sqlUserName']}')", $str_file);
	}
	$pattern="/'sqlPassWord',.*?\)/";
	if(preg_match($pattern,$str_file)){
		$_POST['sqlPassWord']=addslashes($_POST['sqlPassWord']);
		$str_file=preg_replace($pattern,"'sqlPassWord','{$_POST['sqlPassWord']}')", $str_file);
	}
	$pattern="/'sqlDbName',.*?\)/";
	if(preg_match($pattern,$str_file)){
		$_POST['sqlDbName']=addslashes($_POST['sqlDbName']);
		$str_file=preg_replace($pattern,"'sqlDbName','{$_POST['sqlDbName']}')", $str_file);
	}
	$pattern="/\('sqlDbPort',.*?\)/";
	if(preg_match($pattern,$str_file)){
		$_POST['sqlDbPort']=addslashes($_POST['sqlDbPort']);
		$str_file=preg_replace($pattern,"('sqlDbPort','{$_POST['sqlDbPort']}')", $str_file);
	}
	if(!file_put_contents($filename, $str_file)){
		header("location:/install/index.php?tab=2&tishi=数据库创建成功，配置文件写入失败，请检查cofign/config.php文件的权限后再试！#example1-tab2");
		exit;
	}
	header("location:/install/index.php?tab=3&tishi=数据库创建成功，配置文件写入成功，添加管理账号！#example1-tab3");
	exit;
}

if(isset($_POST['submit-3'])){

	require_once $_SERVER['DOCUMENT_ROOT']."/config/config.php";
	require_once $_SERVER['DOCUMENT_ROOT']."/public/function/mysql.inc.php";
	//连接数据库
	$link=connect();

	if(empty($_POST['email'])){
		header("location:/install/index.php?tab=3&tishi=邮箱不得为空！#example1-tab3");
		exit;
	}
	if(mb_strlen($_POST['email'])>32){
		header("location:/install/index.php?tab=3&tishi=邮箱不得超过32位！#example1-tab3");
		exit;
	}


	if(mb_strlen($_POST['username'])<3){
		header("location:/install/index.php?tab=3&tishi=名字不得少于3个字符！#example1-tab3");
		exit;
	}
	if(mb_strlen($_POST['username'])>32){
		header("location:/install/index.php?tab=3&tishi=用户名长度不得超过32个字符！#example1-tab3");
		exit;
	}

	if(mb_strlen($_POST['password'])<6){
		header("location:/install/index.php?tab=3&tishi=密码不得少于6位！#example1-tab3");
		exit;
	}
	if(mb_strlen($_POST['password'])>32){
		header("location:/install/index.php?tab=3&tishi=密码不得多余32位！#example1-tab3");
		exit;
	}

	$_POST=escape($link,$_POST);
	$query="select * from ".sqlPrefix."_user where user_email='{$_POST['email']}'";
	$result=execute($link, $query);
	if(mysqli_num_rows($result)){
		header("location:/install/index.php?tab=3&tishi=该邮箱已经存在，请换其他邮箱！#example1-tab3");
		exit;
	}
	
	//生成一个UID
	function uid(){
		
		function make_password( $length = 8 )
		{
			// 密码字符集，可任意添加你需要的字符
			$chars = array('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', );
			// 在 $chars 中随机取 $length 个数组元素键名
			$keys = array_rand($chars, $length); 
			$password = '';
			for($i = 0; $i < $length; $i++)
			{
				// 将 $length 个数组元素连接成字符串
				$password .= $chars[$keys[$i]];
			}
			return $password;
		}
		$suiji = make_password(4);
		//$_POST['email']
		$time=date('ymdhis',time());
		
		$hunxaio = str_shuffle(substr(str_shuffle($time) * 3.14 - $suiji, 0, 11));
		$uid = str_shuffle(substr($hunxaio * $suiji, 0, 9));
		return $uid;
	}
	$uid = uid();

	$query="select * from ".sqlPrefix."_user where user_uid='{$uid}'";
	$result=execute($link, $query);
	if(mysqli_num_rows($result)){
		header("location:/install/index.php?tab=3&tishi=这个UID已存在，请重新注册！#example1-tab3");
		exit;
	}

	//生成一个UUID
	function guid(){
		if (function_exists('com_create_guid')){
			return com_create_guid();
		}else{
			mt_srand((double)microtime()*10000);//optional for php 4.2.0 and up.
			$charid = strtoupper(md5(uniqid(rand(), true)));
			$hyphen = chr(45);// "-"
			$uuid = chr(123)// "{"
					.substr($charid, 0, 8).$hyphen
					.substr($charid, 8, 4).$hyphen
					.substr($charid,12, 4).$hyphen
					.substr($charid,16, 4).$hyphen
					.substr($charid,20,12)
					.chr(125);// "}"
			$uuid = str_replace('{',"",$uuid);
			$uuid = str_replace('}',"",$uuid);
			$uuid = strtolower($uuid);
			return $uuid;
		}
	}
	$uuid = guid();
	
	$_POST['username'] = htmlspecialchars($_POST['username']);

	$query="insert into ".sqlPrefix."_user(user_uid,user_level,user_uuid,user_name,user_password,user_email,user_regtime) values('{$uid}','0','{$uuid}','{$_POST['username']}',md5('{$_POST['password']}'),'{$_POST['email']}',now())";
	execute($link,$query);
	if(mysqli_affected_rows($link)==1){
		header("location:/install/index.php?tab=4&tishi=账户添加成功！#example1-tab4");
		exit;
	}else{
		header("location:/install/index.php?tab=3&tishi=添加失败,请重试！#example1-tab3");
		exit;
	}
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width">
  <title>程序安装 - 采用CZG框架1.0</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/mdui/0.4.3/css/mdui.min.css"/>
</head>
<body class="mdui-m-y-2">

<div class="mdui-container">
	<div class="mdui-row mdui-m-t-2">
		<div class="mdui-col-md-6 mdui-col-offset-md-3">

			<div class="mdui-card mdui-shadow-12 mdui-p-b-2">
				<div class="mdui-card-media">
				    <img src="https://chizg.cn/usr/uploads/2020/04/2281177083.gif"/>
				    <div class="mdui-card-media-covered">
						<div class="mdui-card-primary">
							<div class="mdui-card-primary-title">CZG1.0</div>
							<div class="mdui-card-primary-subtitle">Powered by CZG. Copyright © 2020. Crafted with <a href="//chizg.cn">吃纸怪</a>. </div>
						</div>
				    </div>
				</div>
				<div class="mdui-tab mdui-tab-full-width" mdui-tab>
				  	<a href="#example1-tab1" class="mdui-ripple" <?php echo $tab1 ?> >程序介绍</a>
				  	<a href="#example1-tab2" class="mdui-ripple" <?php echo $tab2 ?> >数据库配置</a>
				  	<a href="#example1-tab3" class="mdui-ripple" <?php echo $tab3 ?> >管理员配置</a>
				  	<a href="#example1-tab4" class="mdui-ripple" <?php echo $tab4 ?> >完成安装</a>
				</div>
				<div id="example1-tab1" class="mdui-p-a-2">
					<div class="mdui-typo">
						<h3>欢迎使用CZG<small><kbd>1.0</kbd></small>框架</h3>
						<p>  
							<ul>
							    <li>作者：吃纸怪</li>
							    <li>联系方式：
							    	<ul>
							    		<li>QQ：2903074366</li>
							    		<li>EMAIL：2903074366@qq.com</li>
							    	</ul>
							    </li>
							    <li>博客：chizg.cn</li>
							    <li>QQ交流群：801235342</li>
							</ul>
						</p>
						<blockquote>目前传播均采用 CC BY-NC-SA 4.0 许可协议</blockquote>
					</div>
					<div class="mdui-divider mdui-m-t-4 mdui-m-b-2"></div>
					<a href="index.php?tab=2#example1-tab2"><button class="mdui-btn mdui-color-pink-accent mdui-m-a-1 mdui-float-right">开始安装</button></a>
				</div>

				<div id="example1-tab2" class="mdui-p-a-2">
					<form method="post" enctype="multipart/form-data">
						<div class="mdui-textfield mdui-textfield-floating-label">
							<label class="mdui-textfield-label">数据库服务器</label>
							<input class="mdui-textfield-input" name="sqlServerHost" value="localhost"/>
						</div>
						<div class="mdui-textfield mdui-textfield-floating-label">
							<label class="mdui-textfield-label">数据库用户名</label>
							<input class="mdui-textfield-input" name="sqlUserName"/>
						</div>
						<div class="mdui-textfield mdui-textfield-floating-label">
							<label class="mdui-textfield-label">数据库密码</label>
							<input class="mdui-textfield-input" name="sqlPassWord" type="password"/>
						</div>
						<div class="mdui-textfield mdui-textfield-floating-label">
							<label class="mdui-textfield-label">数据库端口</label>
							<input class="mdui-textfield-input" name="sqlDbPort" value="3306"/>
						</div>
						<div class="mdui-textfield mdui-textfield-floating-label">
							<label class="mdui-textfield-label">数据库名</label>
							<input class="mdui-textfield-input" name="sqlDbName"/>
						</div>

						<div class="mdui-divider mdui-m-t-4 mdui-m-b-2"></div>
						<a href="index.php?tab=1#example1-tab1"><button type="button" class="mdui-btn mdui-color-pink-accent mdui-m-a-1 mdui-float-left">上一步</button></a>
						<button type="submit" name="submit-2" class="mdui-btn mdui-color-pink-accent mdui-m-a-1 mdui-float-right">下一步</button>
					</form>
				</div>

				<div id="example1-tab3" class="mdui-p-a-2">
					<form  method="post" enctype="multipart/form-data">
						<div class="mdui-textfield mdui-textfield-floating-label">
							<label class="mdui-textfield-label">用户名</label>
							<input class="mdui-textfield-input" name="username" />
						</div>
						<div class="mdui-textfield mdui-textfield-floating-label">
							<label class="mdui-textfield-label">邮箱</label>
							<input class="mdui-textfield-input" name="email" type="email" />
						</div>
						<div class="mdui-textfield mdui-textfield-floating-label">
							<label class="mdui-textfield-label">密码</label>
							<input class="mdui-textfield-input" name="password" type="password" />
						</div>

						<div class="mdui-divider mdui-m-t-4 mdui-m-b-2"></div>
						<a href="index.php?tab=2#example1-tab2"><button type="button" class="mdui-btn mdui-color-pink-accent mdui-m-a-1 mdui-float-left">上一步</button></a>
						<button type="submit" name="submit-3" class="mdui-btn mdui-color-pink-accent mdui-m-a-1 mdui-float-right">下一步</button>
					</form>
				</div>
				<div id="example1-tab4" class="mdui-p-a-2">
					<div class="mdui-typo">
						<h1 class="mdui-text-center">安装完成</h1>
						<p>  
							<ul>
							    <li>管理地址：域名/index/admin</li>
							    <li>门户首页：域名/index</li>
							    <li>博客：chizg.cn</li>
							    <li>QQ交流群：801235342</li>
							</ul>
						</p>
						<blockquote>目前传播均采用 CC BY-NC-SA 4.0 许可协议</blockquote>
					</div>
					<div class="mdui-divider mdui-m-t-4 mdui-m-b-2"></div>
					<div class="mdui-col">
						<a href="/index"><button class="mdui-btn mdui-btn-block mdui-color-theme-accent mdui-ripple  mdui-color-pink-accent">开启全新时代</button></a>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>

<script src="https://cdn.bootcss.com/mdui/0.4.3/js/mdui.min.js"></script>
</body>
</html>