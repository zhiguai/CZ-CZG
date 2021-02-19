<?php
	//生成一个UID
	function guid(){
		
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
		$uid = str_shuffle(substr($hunxaio * $suiji, 0, 11));
		return $uid;
	}
	$uuid = guid();
?>