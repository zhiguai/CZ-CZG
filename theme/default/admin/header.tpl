<!DOCTYPE html>
<html lang="en,zh">
<!-- 
+----------------------------------------------------------------------

| Introduction:模板-后台首页头部

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
    <link href="<?php echo $themeAssetesWay; ?>/assetes/vendor/vector-map/jqvmap.min.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="<?php echo $themeAssetesWay; ?>/assetes/css/theme.css" rel="stylesheet" media="all">

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop3 d-none d-lg-block">
            <div class="section__content section__content--p35">
                <div class="header3-wrap">
                    <div class="header__logo">
                        <a href="#">
                            <img src="<?php echo $themeAssetesWay; ?>/assetes/images/icon/logo-white.png" alt="CoolAdmin" />
                        </a>
                    </div>
                    <div class="header__navbar">
                        <ul class="list-unstyled">

                            <li class="has-sub">
                                <a href="index.php">
                                    <i class="zmdi zmdi-compass"></i>后台首页
                                    <span class="bot-line"></span>
                                </a>
                            </li>
                            <li class="has-sub">
                                <a href="#">
                                    <i class="zmdi zmdi-settings"></i>站点设置
                                    <span class="bot-line"></span>
                                </a>
                                <ul class="header3-sub-list list-unstyled">
                                    <li>
                                        <a href="setting-basic.php">基本配置</a>
                                    </li>
                                    <li>
                                        <a href="setting-index.php">门户配置</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="has-sub">
                                <a href="#">
                                    <i class="zmdi zmdi-accounts-alt"></i>用户管理
                                    <span class="bot-line"></span>
                                </a>
                                <ul class="header3-sub-list list-unstyled">
                                    <li>
                                        <a href="user-list.php">用户列表</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="has-sub">
                                <a href="#">
                                    <i class="zmdi zmdi-comment-edit"></i>公告管理
                                    <span class="bot-line"></span>
                                </a>
                                <ul class="header3-sub-list list-unstyled">
                                    <li>
                                        <a href="notice-list.php">公告列表</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="has-sub">
                                <a href="#">
                                    <i class="zmdi zmdi-collection-bookmark"></i>页面管理
                                    <span class="bot-line"></span>
                                </a>
                                <ul class="header3-sub-list list-unstyled">
                                    <li>
                                        <a href="page-list.php">页面列表</a>
                                    </li>
                                </ul>
                            </li>
                            <li class="has-sub">
                                <a href="#">
                                    <i class="zmdi zmdi-dropbox"></i>工具箱
                                    <span class="bot-line"></span>
                                </a>
                                <ul class="header3-sub-list list-unstyled">
                                    <li>
                                        <a href="sendemail.php">发送邮件</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
<?php $indexHeader=<<<STR
                    <div class="header__tool">
                        <div class="account-wrap">
                            <div class="account-item account-item--style2 clearfix js-item-menu">
                                <div class="image">
                                    <img src="{$themeAssetesWay}/assetes/images/icon/avatar-01.jpg" alt="{$user['user_name']}" />
                                </div>
                                <div class="content">
                                    <a class="js-acc-btn" href="#">{$user['user_name']}</a>
                                </div>
                                <div class="account-dropdown js-dropdown">
                                    <div class="info clearfix">
                                        <div class="image">
                                            <a href="#">
                                                <img src="{$themeAssetesWay}/assetes/images/icon/avatar-01.jpg" alt="{$user['user_name']}" />
                                            </a>
                                        </div>
                                        <div class="content">
                                            <h5 class="name">
                                                <a href="#">{$user['user_name']}</a>
                                            </h5>
                                            <span class="email">最后登陆时间:{$user['user_last_time']}</span>
                                        </div>
                                    </div>
                                    <div class="account-dropdown__body">
                                        <div class="account-dropdown__item">
                                            <a href="../user/index.php">
                                                <i class="zmdi zmdi-account-box"></i>用户中心</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="../index.php">
                                                <i class="zmdi zmdi-mail-reply"></i>门户首页</a>
                                        </div>
                                    </div>
                                    <div class="account-dropdown__footer">
                                        <a href="../logout.php">
                                            <i class="zmdi zmdi-power"></i>退出</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
STR; echo $indexHeader;?>
                </div>
            </div>
        </header>
        <!-- END HEADER DESKTOP-->

        <!-- HEADER MOBILE-->
        <header class="header-mobile header-mobile-2 d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="<?php echo $themeAssetesWay; ?>/assetes/images/icon/logo-white.png" alt="CoolAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">

                        <li class="has-sub">
                            <a class="js-arrow" href="index.php">
                                <i class="zmdi zmdi-compass"></i>后台首页
                                <span class="bot-line"></span>
                            </a>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="zmdi zmdi-settings"></i>站点设置
                                <span class="bot-line"></span>
                            </a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="setting-basic.php">基本配置</a>
                                </li>
                                <li>
                                    <a href="setting-index.php">门户配置</a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="zmdi zmdi-accounts-alt"></i>用户管理
                                <span class="bot-line"></span>
                            </a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="user-list.php">用户列表</a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="zmdi zmdi-comment-edit"></i>公告管理
                                <span class="bot-line"></span>
                            </a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="notice-list.php">公告里表</a>
                                </li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a class="js-arrow" href="#">
                                <i class="zmdi zmdi-collection-bookmark"></i>页面管理
                                <span class="bot-line"></span>
                            </a>
                            <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                <li>
                                    <a href="page-list.php">页面列表</a>
                                </li>
                            </ul>
                            <li class="has-sub">
                                <a href="#">
                                    <i class="zmdi zmdi-dropbox"></i>工具箱
                                    <span class="bot-line"></span>
                                </a>
                                <ul class="navbar-mobile-sub__list list-unstyled js-sub-list">
                                    <li>
                                        <a href="sendemail.php">发送邮件</a>
                                    </li>
                                </ul>
                            </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="sub-header-mobile-2 d-block d-lg-none">
            <?php echo $indexHeader;?>
        </div>
        <!-- END HEADER MOBILE -->

        <!-- PAGE CONTENT-->
        <div class="page-content--bgf7">
            <!-- BREADCRUMB-->
            <section class="au-breadcrumb2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="au-breadcrumb-content">
                                <div class="au-breadcrumb-left">
                                    <span class="au-breadcrumb-span">您的位置:</span>
                                    <ul class="list-unstyled list-inline au-breadcrumb__list">
                                        <li class="list-inline-item active">
                                            <a href="#">管理后台</a>
                                        </li>
                                        <li class="list-inline-item seprate">
                                            <span>/</span>
                                        </li>
                                        <li class="list-inline-item"><?php echo $siteTittle;?></li>
                                    </ul>
                                </div>
                                <form class="au-form-icon--sm" action="" method="post">
                                    <input class="au-input--w300 au-input--style2" type="text" placeholder="Search for datas &amp; reports...">
                                    <button class="au-btn--submit2" type="submit">
                                        <i class="zmdi zmdi-search"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->
            