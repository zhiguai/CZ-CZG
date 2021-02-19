<?php
// +----------------------------------------------------------------------

// | Introduction:公用变函数库
 
// +----------------------------------------------------------------------

// | Copyright (c) 2019~2020 FatDa All rights reserved.

// +----------------------------------------------------------------------

// | Author: 吃纸怪 

// +----------------------------------------------------------------------

// | contact:QQ2903074366

// +----------------------------------------------------------------------

//引入基本配置
require_once $_SERVER['DOCUMENT_ROOT']."/config/config.php";
//引入数据库操作函数库
require_once $_SERVER['DOCUMENT_ROOT']."/public/function/mysql.inc.php";

//启动session
session_start();

//数据库连接检测
function sqlcon_test(&$error){
	// 创建连接
	@$conn = mysqli_connect(sqlServerHost, sqlUserName, sqlPassWord, sqlDbName);
	// 检测连接
	if (!$conn) {
		$error = "，失败原因: " . mysqli_connect_error();
		return false;
	}else{
		return true;
	}
	close($conn);
}

//ip获取函数
function getClientIp(){
	$ip = $_SERVER['REMOTE_ADDR'];
	if (isset($_SERVER['HTTP_CLIENT_IP']) && preg_match('/^([0-9]{1,3}\.){3}[0-9]{1,3}$/', $_SERVER['HTTP_CLIENT_IP'])) {
		$ip = $_SERVER['HTTP_CLIENT_IP'];
	} elseif(isset($_SERVER['HTTP_X_FORWARDED_FOR']) AND preg_match_all('#\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}#s', $_SERVER['HTTP_X_FORWARDED_FOR'], $matches)) {
		foreach ($matches[0] AS $xip) {
			if (!preg_match('#^(10|172\.16|192\.168)\.#', $xip)) {
				$ip = $xip;
				break;
			}
		}
	}
	return $ip;
}

//检测程序状态
/*调用说明
*参数   $state $way
*必填   是     否
*参数值 1/0    从主目录开始
*
*调用例：testState("1",/index); / testState("0");
*说明：检测后跳转至 / 检测后跳出循环
*函数作用：检测程序状态后后是否需要跳转 1需要 0不需要
*/
function test_state($state,$way = ""){
	//检测是否存在安装目录
	if(file_exists($_SERVER['DOCUMENT_ROOT']."/install")){
		//检测数据库是否连接正常
		if(sqlcon_test($mysqError) === false){
			header("Location:/public/go.php?tittle=安装页面&url=../install");
		}else{
			$tittleTiSi="请删除install";
			echo"<html><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width\"><link rel=\"stylesheet\" href=\"https://cdn.bootcss.com/mdui/0.4.3/css/mdui.min.css\"/></head><body class=\"mdui-theme-primary-indigo mdui-theme-accent-pink\"><div class=\"mdui-container\"><div class=\"mdui-row mdui-m-t-2\">	<div class=\"mdui-col-md-6 mdui-col-offset-md-3\">	<div class=\"mdui-card\">		<div class=\"mdui-card-media\">		<img src=\"https://api.ixiaowai.cn/mcapi/mcapi.php\"/>		</div>		<i class=\"mdui-card-header-avatar mdui-icon material-icons\">&#xe031;</i>		<div class=\"mdui-card-header-title\">系统提示</div>		<div class=\"mdui-card-content\">".$tittleTiSi."</div>		</div>	</div></div></div><script src=\"https://cdn.bootcss.com/mdui/0.4.3/js/mdui.min.js\"></script></body></html>";
			exit;
		}
	}else{
		//检测数据库是否连接正常
		if(sqlcon_test($mysqError) === false){
			$tittleTiSi="数据库连接失败".$mysqError;
			echo "<html><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width\"><link rel=\"stylesheet\" href=\"https://cdn.bootcss.com/mdui/0.4.3/css/mdui.min.css\"/></head><body class=\"mdui-theme-primary-indigo mdui-theme-accent-pink\"><div class=\"mdui-container\"><div class=\"mdui-row mdui-m-t-2\">	<div class=\"mdui-col-md-6 mdui-col-offset-md-3\">	<div class=\"mdui-card\">		<div class=\"mdui-card-media\">		<img src=\"https://api.ixiaowai.cn/mcapi/mcapi.php\"/>		</div>		<i class=\"mdui-card-header-avatar mdui-icon material-icons\">&#xe031;</i>		<div class=\"mdui-card-header-title\">系统提示</div>		<div class=\"mdui-card-content\">".$tittleTiSi."</div>		</div>	</div></div></div><script src=\"https://cdn.bootcss.com/mdui/0.4.3/js/mdui.min.js\"></script></body></html>";
			exit;
		}elseif($state !== "1" && $state !== "0"){
			$tittleTiSi="请传入正确参数0/1";
			echo "<html><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width\"><link rel=\"stylesheet\" href=\"https://cdn.bootcss.com/mdui/0.4.3/css/mdui.min.css\"/></head><body class=\"mdui-theme-primary-indigo mdui-theme-accent-pink\"><div class=\"mdui-container\"><div class=\"mdui-row mdui-m-t-2\">	<div class=\"mdui-col-md-6 mdui-col-offset-md-3\">	<div class=\"mdui-card\">		<div class=\"mdui-card-media\">		<img src=\"https://api.ixiaowai.cn/mcapi/mcapi.php\"/>		</div>		<i class=\"mdui-card-header-avatar mdui-icon material-icons\">&#xe031;</i>		<div class=\"mdui-card-header-title\">系统提示</div>		<div class=\"mdui-card-content\">".$tittleTiSi."</div>		</div>	</div></div></div><script src=\"https://cdn.bootcss.com/mdui/0.4.3/js/mdui.min.js\"></script></body></html>";
			exit;
		}elseif($state === "1"){
			header("Location: //".$_SERVER['HTTP_HOST'].$way);
		}elseif($state === "0"){
			return;
		}
	}
}

//页面提示接收函数
/*调用说明
*参数   $state $registertishi0 $registertishi
*必填   是     否				否
*参数值 1/0    整形				整形
*
*调用例：<?php $registerstaet="1"; jbTiShi($registerstaet,$registertishi0,$registertishi1); ?>
*说明：接收模型层返回的提示并显示,$registertishi0/$registertishi1 分别代表错误和正确输出的内容
*函数作用：检测程序状态后后是否需要跳转 1需要 0不需要
*/
function jbTiShi($staet,$registertishi0,$registertishi1){
	if($staet !== "0" && $staet !== "1"){
		return;
	}elseif($staet === "0"){
		echo $registertishi0;
	}elseif($staet === "1"){
		echo $registertishi1;
	}
}

//获取站点状态
function siteState($state, $tittleTiSi){
	if ($state == "0") {
		header("location:/public/go.php?tittle=网站关闭中&neirong={$tittleTiSi}&url=/");
		exit;
	}
}

//判断登入状态
function is_login($link){
	if(isset($_COOKIE['user_uuid']) && isset($_COOKIE['user_pw'])){
		$query="select * from ".sqlPrefix."_user where user_uuid='{$_COOKIE['user_uuid']}' and sha1(user_password)='{$_COOKIE['user_pw']}'";
		$result=execute($link,$query);
		if(mysqli_num_rows($result)==1){
			$data=mysqli_fetch_assoc($result);
			return $data['user_uid'];
		}else{
			return false;
		}
	}else{
		return false;
	}
}

//判断密码是否正确
function nooff_passworld($link,$pw){
	if(isset($pw)){
		$query="select * from ".sqlPrefix."_user where user_uuid='{$_COOKIE['user_uuid']}' and user_password=md5('{$pw}')";
		$result=execute($link,$query);
		if(mysqli_num_rows($result)==1){
			$data=mysqli_fetch_assoc($result);
			return $data['user_uuid'];
		}else{
			return false;
		}
	}else{
		return false;
	}
}

//发信函数
/*调用说明
*参数	$emailtittle 	$emailcontent
*必填     是				是
*参数值   整形				整形
*
*说明：函数采用ajax方式发送，调用时需先调用函数并设置变量，然后将发送按钮写入id sendemail 邮件填写框写入id email即可
*注意页面需引入jq库http://apps.bdimg.com/libs/jquery/1.9.1/jquery.js
*函数作用：用于发送邮件的函数
*/
function sand_email($emailtittle,$emailcontent){
	if(empty($emailtittle)&& empty($emailcontent) ){
		return;
	}else{
	echo<<<neirong
<script src="/theme/default/assetes/vendor/jquery-3.2.1.min.js"></script>
<script>
	var wait = 60;
	function time(o) {
	   if (wait == 0) {
		   $(o).attr("disabled", false);
		   $(o).html("再次发送");
		   wait = 60;
	   } else {
		   $(o).attr("disabled", true);
		   $(o).html(wait + "秒后重新发送");
		   wait--;
		   setTimeout(function () {time(o);},1000);
	   }
	}
$(document).ready(function(){
	$("#sendemail").on('click',function(){
		
		var odrer = {
			toemail:$('#email').val(),
			tittle:"{$emailtittle}",
			content:"{$emailcontent}"
		};
		$.ajax({
			type:'post',
			url:'/public/plug/email/sendmail.php',
			data:odrer,
			success: function(neworder){
				alert(neworder);
				time('#sendemail');
			},
			error: function(){
				alert('接口调用失败');
			}
		})
	});
});
</script>
neirong;
	}
}

//验证码发信函数
/*调用说明
*说明：函数采用ajax方式发送，调用时需先调用函数并设置变量，然后将发送按钮写入id sendvcodeemail 邮件填写框写入id email即可
*注意页面需引入jq库http://apps.bdimg.com/libs/jquery/1.9.1/jquery.js
*函数作用：用于发送邮件的函数
*/
function sand_vcodeemail(){
	echo<<<neirong
<script src="/theme/default/assetes/vendor/jquery-3.2.1.min.js"></script>
<script>
	var wait = 60;
	function time(o) {
	   if (wait == 0) {
		   $('#email').attr("readonly", false);
		   $(o).attr("disabled", false);
		   $(o).html("再次获取验证码");
		   wait = 60;
	   } else {
		   $('#email').attr("readonly", true);
		   $(o).attr("disabled", true);
		   $(o).html(wait + "秒后重新发送");
		   wait--;
		   setTimeout(function () {time(o);},1000);
	   }
	}
$(document).ready(function(){
	$("#sendvcodeemail").on('click',function(){
		
		var odrer = {
			toemail:$('#email').val(),
		};
		$.ajax({
			type:'post',
			url:'/public/plug/email/mail.vcode.class.php',
			data:odrer,
			success: function(neworder){
				alert(neworder);
				time('#sendvcodeemail');
			},
			error: function(){
				alert('接口调用失败');
			}
		})
	});
});
</script>
neirong;
}

//截取多余字符用定义翻译好代替
function cut_str($sourcestr,$cutlength)
{
   $i=0;
   $n=0;
   $str_length=strlen($sourcestr);//字符串的字节数
   while (($n<$cutlength) and ($i<=$str_length))
   {
      $temp_str=substr($sourcestr,$i,1);
      $ascnum=Ord($temp_str);//得到字符串中第$i位字符的ascii码
      if ($ascnum>=224)    //如果ASCII位高与224，
      {
		$returnstr=$returnstr.substr($sourcestr,$i,3); //根据UTF-8编码规范，将3个连续的字符计为单个字符        
		         $i=$i+3;            //实际Byte计为3
		         $n++;            //字串长度计1
		      }
		      elseif ($ascnum>=192) //如果ASCII位高与192，
		      {
		         $returnstr=$returnstr.substr($sourcestr,$i,2); //根据UTF-8编码规范，将2个连续的字符计为单个字符
		         $i=$i+2;            //实际Byte计为2
		         $n++;            //字串长度计1
		      }
		      elseif ($ascnum>=65 && $ascnum<=90) //如果是大写字母，
		      {
		         $returnstr=$returnstr.substr($sourcestr,$i,1);
		         $i=$i+1;            //实际的Byte数仍计1个
		         $n++;            //但考虑整体美观，大写字母计成一个高位字符
		      }
		      else                //其他情况下，包括小写字母和半角标点符号，
		      {
		         $returnstr=$returnstr.substr($sourcestr,$i,1);
		         $i=$i+1;            //实际的Byte数计1个
		         $n=$n+0.5;        //小写字母和半角标点等与半个高位字符宽…
		      }
		   }
         if ($str_length>$i){
          $returnstr = $returnstr . "…";//超过长度时在尾处加上省略号
      }
    return $returnstr;
}

?>