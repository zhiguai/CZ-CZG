<!DOCTYPE html>
<html lang="en,zh">
<!-- 
+----------------------------------------------------------------------

| Introduction:模板-注册页面

+----------------------------------------------------------------------

| Copyright (c) 2019~2020 FatDa All rights reserved.

+----------------------------------------------------------------------

| Author: 吃纸怪 

+----------------------------------------------------------------------

| contact:QQ2903074366

+----------------------------------------------------------------------
-->
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="<?php echo $site['site_keywords'];?>">
    <meta name="keywords" content="<?php echo $site['site_description'];?>">

    <!-- Title Page-->
    <title><?php echo $siteTittle;?> - <?php echo $site['site_tittle'];?></title>
	
    <!-- Fontfaces CSS-->
    <link href="<?php echo $themeAssetesWay; ?>/assetes/css/font-face.css" rel="stylesheet" media="all">
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="<?php echo $themeAssetesWay; ?>/assetes/css/theme.css" rel="stylesheet" media="all">

</head>
<style>
/*隐藏滚动条*/
::-webkit-scrollbar {
	width: 0px;
}
</style>

<body class="animsition">
<!--[if lt IE 9]><div class="alert alert-danger topframe" role="alert">你的浏览器实在<strong>太太太太太太旧了</strong>，放学别走，升级完浏览器再说 <a target="_blank" class="alert-link" href="http://browsehappy.com">立即升级</a></div><![endif]-->

    <div class="page-wrapper">
        <div class="page-content--bge5">
            <div class="container">
                <div class="login-wrap">
					<!-- 返回提示 -->
					<?php $registerstaet=$_GET['staet']; jbTiShi($registerstaet,$registertishi0,$registertishi1); ?>

                    <div class="login-content">
                        <div class="login-logo">
                            <a href="./index.php">
                                <img src="<?php echo $themeAssetesWay; ?>/assetes/images/icon/logo.png" alt="CoolAdmin">
                            </a>
                        </div>
                        <div class="login-form">
                            <form action="register.php" method="post">
                                <div class="form-group">
                                    <label>用户名</label>
                                    <input class="au-input au-input--full" type="text" name="username" placeholder="Username" required="required">
                                </div>
                                <div class="form-group">
                                    <label>邮箱</label>
                                    <input class="au-input au-input--full" type="email" name="email" id="email" placeholder="Email" required="required">
                                </div>
                                <div class="form-group">
                                    <label>密码</label>
                                    <input class="au-input au-input--full" type="password" name="password" placeholder="Password" required="required">
                                </div>
								<div class="form-group">
                                    <label>确认密码</label>
                                    <input class="au-input au-input--full" type="password" name="confirm_password" placeholder="Password" required="required">
                                </div>
                                <div class="login-checkbox">
                                    <label>
                                        <input type="checkbox" name="aggree">同意政策和服务条款
                                    </label>
								</div>
                                
								<!-- modal medium 弹窗提示 -->
								<div class="modal fade" id="mediumModal1" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="mediumModalLabel">邮箱验证</h5>
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">
											<!-- 验证模块 -->
												<div class="row form-group">
													<div class="col col-md-12">
														<div class="input-group">
															<input type="vcode" id="input2-group2" name="vcode" placeholder="请填入邮箱验证码" class="form-control">
															<div class="input-group-btn">
																<button type="button" id="sendvcodeemail" class="btn btn-primary">获取验证码</button>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
												<button type="submit" name="register" class="btn btn-primary">确认</button>
											</div>
										</div>
									</div>
								</div>
                                <!-- end modal medium -->
<?php								
if($site['smtp_state'] == "1"){
?>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" id="embed-submit" type="button" data-toggle="modal" data-target="#mediumModal1">注册</button>
<?php          
}else{
?>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" id="embed-submit"  name="register" type="submit">注册</button>
<?php
}
?>
                                <div class="social-login-content">
                                    <div class="social-button">
                                        <button class="au-btn au-btn--block au-btn--blue m-b-20">register with facebook</button>
                                        <button class="au-btn au-btn--block au-btn--blue2">register with twitter</button>
                                    </div>
                                </div>
                            </form>
                            <div class="register-link">
                                <p>
                                    已经拥有账号?
                                    <a href="./login.php">去登入</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Jquery JS-->
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/slick/slick.min.js">
    </script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/wow/wow.min.js"></script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/animsition/animsition.min.js"></script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="<?php echo $themeAssetesWay; ?>/assetes/js/main.js"></script>
</body>

</html>
<!-- end document-->