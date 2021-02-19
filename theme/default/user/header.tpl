<!DOCTYPE html>
<html lang="en,zh">
<!-- 
+----------------------------------------------------------------------

| Introduction:模板-用户中心头部

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

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar2">
            <div class="logo">
                <a href="#">
                    <img src="<?php echo $themeAssetesWay; ?>/assetes/images/icon/logo-white.png"/>
                </a>
            </div>
            <div class="menu-sidebar2__content js-scrollbar1">

                <div class="account2">
                    <div class="image img-cir img-120">
                        <img src="<?php echo $user['user_head_img']; ?>"/>
                    </div>
                    <h4 class="name"><?php echo $user['user_name']; ?></h4>
                    <a href="../logout.php"><i class="zmdi zmdi-sign-in"></i> 退 出</a>
                </div>
                <nav class="navbar-sidebar2">
                    <ul class="list-unstyled navbar__list">
                        <li class="active has-sub">
                            <a class="js-arrow" href="#">
                                <i class="fas fa-tachometer-alt"></i>仪表盘
                                <span class="arrow">
                                    <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <ul class="list-unstyled navbar__sub-list js-sub-list">
                                <li>
                                    <a href="index.php">用户中心</a>
                                </li>
                                <li>
                                    <a href="setting.php">修改资料</a>
                                </li>
                            </ul>
                        </li>
                        <li  class="has-sub">
                            <a href="nlist.php">
                                <i class="fa fa-bell"></i>公告列表</a>
                        </li>
                        <li  class="has-sub">
                            <a href="../index.php">
                                <i class="fa fa-reply-all"></i>返回官网</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->
        
        <!-- PAGE CONTAINER-->
        <div class="page-container2">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop2">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap2">
                            <div class="logo d-block d-lg-none">
                                <a href="#">
                                    <img src="<?php echo $themeAssetesWay; ?>/assetes/images/icon/logo-white.png"/>
                                </a>
                            </div>
                            <div class="header-button2">
                                <div class="header-button-item js-item-menu">
                                    <i class="zmdi zmdi-search"></i>
                                    <div class="search-dropdown js-dropdown">
                                        <form action="">
                                            <input class="au-input au-input--full au-input--h65" type="text" placeholder="Search for datas &amp; reports..." />
                                            <span class="search-dropdown__icon">
                                                <i class="zmdi zmdi-search"></i>
                                            </span>
                                        </form>
                                    </div>
                                </div>
                            <!--<div class="header-button-item has-noti js-item-menu">
                                    <i class="zmdi zmdi-notifications"></i>
                                    <div class="notifi-dropdown js-dropdown">
                                        <div class="notifi__title">
                                            <p>You have 3 Notifications</p>
                                        </div>
                                        <div class="notifi__item">
                                            <div class="bg-c1 img-cir img-40">
                                                <i class="zmdi zmdi-email-open"></i>
                                            </div>
                                            <div class="content">
                                                <p>You got a email notification</p>
                                                <span class="date">April 12, 2018 06:50</span>
                                            </div>
                                        </div>
                                        <div class="notifi__item">
                                            <div class="bg-c2 img-cir img-40">
                                                <i class="zmdi zmdi-account-box"></i>
                                            </div>
                                            <div class="content">
                                                <p>Your account has been blocked</p>
                                                <span class="date">April 12, 2018 06:50</span>
                                            </div>
                                        </div>
                                        <div class="notifi__item">
                                            <div class="bg-c3 img-cir img-40">
                                                <i class="zmdi zmdi-file-text"></i>
                                            </div>
                                            <div class="content">
                                                <p>You got a new file</p>
                                                <span class="date">April 12, 2018 06:50</span>
                                            </div>
                                        </div>
                                        <div class="notifi__footer">
                                            <a href="#">All notifications</a>
                                        </div>
                                    </div>
                                </div>-->
                                <div class="header-button-item mr-0 js-sidebar-btn">
                                    <i class="zmdi zmdi-menu"></i>
                                </div>
                                <div class="setting-menu js-right-sidebar d-none d-lg-block">
                                    <div class="account-dropdown__body">
                                        <div class="account-dropdown__item">
                                            <a href="#">待开发</a>
                                        </div>
                                        <!--<div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-settings"></i>Setting</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-money-box"></i>Billing</a>
                                        </div>-->
                                    </div>
                                <!--<div class="account-dropdown__body">
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-globe"></i>Language</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-pin"></i>Location</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-email"></i>Email</a>
                                        </div>
                                        <div class="account-dropdown__item">
                                            <a href="#">
                                                <i class="zmdi zmdi-notifications"></i>Notifications</a>
                                        </div>  
                                    </div>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <aside class="menu-sidebar2 js-right-sidebar d-block d-lg-none">
                <div class="logo">
                    <a href="#">
                        <img src="<?php echo $themeAssetesWay; ?>/assetes/images/icon/logo-white.png" alt="Cool Admin" />
                    </a>
                </div>
                <div class="menu-sidebar2__content js-scrollbar2">
                    <div class="account2">
                        <div class="image img-cir img-120">
                            <img src="<?php echo $user['user_head_img']; ?>"/>
                        </div>
                        <h4 class="name"><?php echo $user['user_name']; ?></h4>
                        <a href="../logout.php"><i class="zmdi zmdi-sign-in"></i> 退 出</a>
                    </div>
                    <nav class="navbar-sidebar2">
                        <ul class="list-unstyled navbar__list">
                            <li class="active has-sub">
                                <a class="js-arrow" href="#">
                                    <i class="fas fa-tachometer-alt"></i>仪表盘
                                    <span class="arrow">
                                        <i class="fas fa-angle-down"></i>
                                    </span>
                                </a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                    <li>
                                        <a href="index.php">用户中心</a>
                                    </li>
                                    <li>
                                        <a href="setting.php">修改资料</a>
                                    </li>
                                </ul>
                            </li>
                            <li  class="has-sub">
                                <a href="nlist.php">
                                    <i class="fa fa-bell"></i>公告列表</a>
                            </li>
                            <li  class="has-sub">
                                <a href="../index.php">
                                    <i class="fa fa-reply-all"></i>返回官网</a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </aside>
            <!-- END HEADER DESKTOP-->

            <!-- BREADCRUMB-->
            <section class="au-breadcrumb m-t-75">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="au-breadcrumb-content">
                                    <div class="au-breadcrumb-left">
                                        <span class="au-breadcrumb-span">您的位置:</span>
                                        <ul class="list-unstyled list-inline au-breadcrumb__list">
                                            <li class="list-inline-item active">
                                                <a href="#">用户中心</a>
                                            </li>
                                            <li class="list-inline-item seprate">
                                                <span>/</span>
                                            </li>
                                            <li class="list-inline-item"><?php echo $siteTittle;?></li>
                                        </ul>
                                    </div>
                                    <!--<button class="au-btn au-btn-icon au-btn--green">
                                        <i class="zmdi zmdi-plus"></i>联系客服</button>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END BREADCRUMB-->