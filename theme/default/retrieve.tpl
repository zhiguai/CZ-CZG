<!DOCTYPE html>
<html lang="en,zh">
<!-- 
+----------------------------------------------------------------------

| Introduction:模板-找回密码页面

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
                    <div class="login-content">
                        <div class="login-logo">
                            <a href="#">
                                <img src="<?php echo $themeAssetesWay; ?>/assetes/images/icon/logo.png" alt="CoolAdmin">
                            </a>
                        </div>
                        <div class="login-form">
                            <form action="" method="post">
                                <div class="form-group">
                                    <label>你的邮箱</label>
                                    <input class="au-input au-input--full" type="email" name="email" placeholder="Email">
                                </div>
                                <button class="au-btn au-btn--block au-btn--green m-b-20" type="submit">提交</button>
                            </form>
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