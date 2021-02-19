<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>按钮倒数5秒后才能点击</title>
    </head>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <body>
<input type="text" name="email" id="email" required>
<input type="text" name="neirong" id="neirong" required>
<input type="text" name="tittle" id="tittle" required>
<button id="sendcode">获取验证码</button>
<input type="submit" id="sendcode"/>
    </body>
<!-- html部分 -->

<script>
	var wait = 60;
	function time(o) {
	   if (wait == 0) {
		   $(o).attr("disabled", false);
		   $(o).html("再次获取验证码");
		   wait = 60;
	   } else {
		   $(o).attr("disabled", true);
		   $(o).html(wait + "秒后重新发送");
		   wait--;
		   setTimeout(function () {time(o);},1000);
	   }
	}
$(document).ready(function(){
	$("#sendcode").on('click',function(){
		
		var odrer = {
			toemail:$('#email').val(),
			tittle:"<?php echo "emailtittle:";//邮件标题?>",
			content:"<?php echo "emailcontent"//邮件内容?>"
		};
		$.ajax({
			type:'post',
			url:'/public/plug/email/sendmail.php',
			data:odrer,
			success: function(neworder){
				alert(neworder);
				time('#sendcode');
			},
			error: function(){
				alert('接口调用失败');
			}
		})

	});
});
</script>

</html>