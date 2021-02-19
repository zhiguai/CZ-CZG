<!DOCTYPE html>
<html lang="en,zh">
<!-- 
+----------------------------------------------------------------------

| Introduction:模板-官网页面

+----------------------------------------------------------------------

| Copyright (c) 2019~2020 FatDa All rights reserved.

+----------------------------------------------------------------------

| Author: 吃纸怪 

+----------------------------------------------------------------------

| contact:QQ2903074366

+----------------------------------------------------------------------
-->

<html class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage no-websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients no-cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths" style=""><!--<![endif]--><head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo $sitePageTittle.' - '.$site['site_tittle'];?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="<?php echo $site['site_keywords'];?>">
    <meta name="keywords" content="<?php echo $site['site_description'];?>">
    

  

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content="">
    <meta property="og:image" content="">
    <meta property="og:url" content="">
    <meta property="og:site_name" content="">
    <meta property="og:description" content="">
    <meta name="twitter:title" content="">
    <meta name="twitter:image" content="">
    <meta name="twitter:url" content="">
    <meta name="twitter:card" content="">

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,600,400italic,700" rel="stylesheet" type="text/css">
    
    <!-- Animate.css -->
    <link rel="stylesheet" href="<?php echo $themeAssetesWay; ?>/assetes1/css/animate.css">
    <!-- Flexslider -->
    <link rel="stylesheet" href="<?php echo $themeAssetesWay; ?>/assetes1/css/flexslider.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<?php echo $themeAssetesWay; ?>/assetes1/css/icomoon.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<?php echo $themeAssetesWay; ?>/assetes1/css/magnific-popup.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<?php echo $themeAssetesWay; ?>/assetes1/css/bootstrap.css">

    <!-- 
    Default Theme Style 
    You can change the style.css (default color purple) to one of these styles
    
    

    -->
    <link rel="stylesheet" href="<?php echo $themeAssetesWay; ?>/assetes1/css/style.css">

    <!-- Styleswitcher ( This style is for demo purposes only, you may delete this anytime. ) -->
    <link rel="stylesheet" id="theme-switch" href="<?php echo $themeAssetesWay; ?>/assetes1/css/style.css">
    <!-- End demo purposes only -->


    <style>
    /* For demo purpose only */

    /*
    GREEN
    8dc63f
    RED
    FA5555
    TURQUOISE
    27E1CE
    BLUE 
    2772DB
    ORANGE
    FF7844
    YELLOW
    FCDA05
    PINK
    F64662
    PURPLE
    7045FF

    */
    
    /* For Demo Purposes Only ( You can delete this anytime :-) */
    #colour-variations {
        padding: 10px;
        -webkit-transition: 0.5s;
        -o-transition: 0.5s;
        transition: 0.5s;
        width: 140px;
        position: fixed;
        left: 0;
        top: 100px;
        z-index: 999999;
        background: #fff;
        /*border-radius: 4px;*/
        border-top-right-radius: 4px;
        border-bottom-right-radius: 4px;
        -webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
        -moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
        -ms-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
        box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
    }
    #colour-variations.sleep {
        margin-left: -140px;
    }
    #colour-variations h3 {
        text-align: center;;
        font-size: 11px;
        letter-spacing: 2px;
        text-transform: uppercase;
        color: #777;
        margin: 0 0 10px 0;
        padding: 0;;
    }

    #colour-variations ul,
    #colour-variations ul li {
        padding: 0;
        margin: 0;
    }
    #colour-variations ul {
        margin-bottom: 20px;
        float: left;    
    }
    #colour-variations li {
        list-style: none;
        display: inline;
    }
    #colour-variations li a {
        width: 20px;
        height: 20px;
        position: relative;
        float: left;
        margin: 5px;
    }



    #colour-variations li a[data-theme="style"] {
        background: #8dc63f;
    }
    #colour-variations li a[data-theme="red"] {
        background: #FA5555;
    }
    #colour-variations li a[data-theme="turquoise"] {
        background: #27E1CE;
    }
    #colour-variations li a[data-theme="blue"] {
        background: #2772DB;
    }
    #colour-variations li a[data-theme="orange"] {
        background: #FF7844;
    }
    #colour-variations li a[data-theme="yellow"] {
        background: #FCDA05;
    }
    #colour-variations li a[data-theme="pink"] {
        background: #F64662;
    }
    #colour-variations li a[data-theme="purple"] {
        background: #7045FF;
    }

    #colour-variations a[data-layout="boxed"],
    #colour-variations a[data-layout="wide"] {
        padding: 2px 0;
        width: 48%;
        border: 1px solid #ededed;
        text-align: center;
        color: #777;
        display: block;
    }
    #colour-variations a[data-layout="boxed"]:hover,
    #colour-variations a[data-layout="wide"]:hover {
        border: 1px solid #777;
    }
    #colour-variations a[data-layout="boxed"] {
        float: left;
    }
    #colour-variations a[data-layout="wide"] {
        float: right;
    }

    .option-toggle {
        position: absolute;
        right: 0;
        top: 0;
        margin-top: 5px;
        margin-right: -30px;
        width: 30px;
        height: 30px;
        background: #8dc63f;
        text-align: center;
        border-top-right-radius: 4px;
        border-bottom-right-radius: 4px;
        color: #fff;
        cursor: pointer;
        -webkit-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
        -moz-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
        -ms-box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
        box-shadow: 0 0 9px 0 rgba(0,0,0,.1);
    }
    .option-toggle i {
        top: 2px;
        position: relative;
    }
    .option-toggle:hover, .option-toggle:focus, .option-toggle:active {
        color:  #fff;
        text-decoration: none;
        outline: none;
    }
    </style>
    <!-- End demo purposes only -->


    <!-- Modernizr JS -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/respond.min.js"></script>
    <![endif]-->

    </head>


    <!-- 
        INFO:
        Add 'boxed' class to body element to make the layout as boxed style.
        Example: 
        <body class="boxed">    
    -->
    <body>
    
    <!-- Loader -->
    <div class="fh5co-loader"></div>
    <div class="fh5co-loader" style="display: none;"></div>
    
    <div id="fh5co-page">
        <section id="fh5co-header">
            <div class="container">
                <nav role="navigation">
                    <ul class="pull-left left-menu">
                        <?php echo $index['index_header_navigation'];//头部导航?>
                    </ul>
                    <h1 id="fh5co-logo"><a href="index.html"><?php echo $site['site_tittle'];//站点名字?><span>.</span></a></h1>
                    <ul class="pull-right right-menu">
<?php 
    if($userState === true){
        echo<<<neirong
<li><a href="./logout.php">退出</a></li>
<li class="fh5co-cta-btn"><a href="./user/index.php">用户中心</a></li>
neirong;
    }else{
        echo<<<neirong
<li><a href="./login.php">登入</a></li>
<li class="fh5co-cta-btn"><a href="./register.php">注册</a></li>
neirong;
    }
?>
                    </ul>
                </nav>
            </div>
        </section>
        <!-- #fh5co-header -->

        <section id="fh5co-hero" class="no-js-fullheight" style="background-image: url(<?php echo $sitePageImg;?>);" data-next="yes">
            <div class="fh5co-overlay"></div>
            <div class="container">
                <div class="fh5co-intro no-js-fullheight">
                    <div class="fh5co-intro-text">
                        <!-- 
                            INFO:
                            Change the class to 'fh5co-right-position' or 'fh5co-center-position' to change the layout position
                            Example:
                            <div class="fh5co-right-position">
                        -->
                        <div class="fh5co-center-position">
                            <h2 class="animate-box"><?php echo $sitePageSlogn1;?></h2>
                            <h3 class="animate-box"><?php echo $sitePageSlogn2;?></h3>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="fh5co-learn-more animate-box">
                <a href="#" class="scroll-btn">
                    <span class="text">Explore more about us</span>
                    <span class="arrow"><i class="icon-chevron-down"></i></span>
                </a>
            </div>
        </section>
        <!-- END #fh5co-hero -->
        <?php echo $sitePageNR;?>
        <!-- 页脚 -->
        <footer id="fh5co-footer">
            <div class="container">
                <div class="row row-bottom-padded-md">
                    <div class="col-md-3 col-sm-6 col-xs-12 animate-box fadeInUp animated">
                        <div class="fh5co-footer-widget">
                            <h3>我们与支持</h3>
                            <ul class="fh5co-links">
                                <?php echo $index['index_footer_list1'];//页脚列表1?>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 animate-box fadeInUp animated">
                        <div class="fh5co-footer-widget">
                            <h3>生态与合作</h3>
                            <ul class="fh5co-links">
                                <?php echo $index['index_footer_list2'];//页脚列表2?>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 animate-box fadeInUp animated">
                        <div class="fh5co-footer-widget">
                            <h3>联系我们</h3>
                            <p>
                                <?php echo $index['index_footer_list3'];//页脚列表3?>
                            </p>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6 col-xs-12 animate-box fadeInUp animated">
                        <div class="fh5co-footer-widget">
                            <h3>跟着我们</h3>
                            <ul class="fh5co-social">
                                <?php echo $index['index_footer_list4'];//页脚列表4?>
                            </ul>
                        </div>
                    </div>

                </div>
                
            </div>
            <div class="fh5co-copyright animate-box fadeInUp animated">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <p class="fh5co-left"><small><?php echo $site['site_copyright'];?></small></p>
                            <p class="fh5co-right"><small class="fh5co-right">The Templates <a href="https://chizg.cn" target="_blank">默认模板</a> - Collect from <a href="https://chizg.cn" target="_blank">吃纸怪</a></small></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- END #fh5co-footer -->
    </div>
    <!-- END #fh5co-page -->
    
    <!-- For demo purposes Only ( You may delete this anytime :-) -->
    <div id="colour-variations" class="sleep">
        <a class="option-toggle"><i class="icon-gear"></i></a>
        <h3>Preset Colors</h3>
        <ul>
            <li><a href="javascript: void(0);" data-theme="style"></a></li>
            <li><a href="javascript: void(0);" data-theme="red"></a></li>
            <li><a href="javascript: void(0);" data-theme="turquoise"></a></li>
            <li><a href="javascript: void(0);" data-theme="blue"></a></li>
            <li><a href="javascript: void(0);" data-theme="orange"></a></li>
            <li><a href="javascript: void(0);" data-theme="yellow"></a></li>
            <li><a href="javascript: void(0);" data-theme="pink"></a></li>
            <li><a href="javascript: void(0);" data-theme="purple"></a></li>
        </ul>
        <a href="#" data-layout="boxed">Boxed</a>
        <a href="#" data-layout="wide">Wide</a>
    </div>
    <!-- End demo purposes only -->

    
    <!-- jQuery -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/jquery.min.js"></script>
    <!-- jQuery Easing -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/jquery.easing.1.3.js"></script>
    <!-- Bootstrap -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/bootstrap.min.js"></script>
    <!-- Waypoints -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/jquery.waypoints.min.js"></script>
    <!-- Flexslider -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/jquery.flexslider-min.js"></script>
    <!-- Magnific Popup -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/jquery.magnific-popup.min.js"></script>
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/magnific-popup-options.js"></script>

    <!-- For demo purposes only styleswitcher ( You may delete this anytime ) -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/jquery.style.switcher.js"></script>
    <script>
        $(function(){
            $('#colour-variations ul').styleSwitcher({
                defaultThemeId: 'theme-switch',
                hasPreview: false,
                cookie: {
                    expires: 30,
                    isManagingLoad: true
                }
            }); 
            $('.option-toggle').click(function() {
                $('#colour-variations').toggleClass('sleep');
            });
        });
    </script>
    <!-- End demo purposes only -->

    <!-- Main JS (Do not remove) -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/main.js"></script>

    <!-- 
    INFO:
    jQuery Cookie for Demo Purposes Only. 
    The code below is to toggle the layout to boxed or wide 
    -->
    <script src="<?php echo $themeAssetesWay; ?>/assetes1/js/jquery.cookie.js"></script>
    <script>
        $(function(){

            if ( $.cookie('layoutCookie') != '' ) {
                $('body').addClass($.cookie('layoutCookie'));
            }

            $('a[data-layout="boxed"]').click(function(event){
                event.preventDefault();
                $.cookie('layoutCookie', 'boxed', { expires: 7, path: '/'});
                $('body').addClass($.cookie('layoutCookie')); // the value is boxed.
            });

            $('a[data-layout="wide"]').click(function(event){
                event.preventDefault();
                $('body').removeClass($.cookie('layoutCookie')); // the value is boxed.
                $.removeCookie('layoutCookie', { path: '/' }); // remove the value of our cookie 'layoutCookie'
            });
        });
    </script>
    
</body>
<div title="Google Translator Anywhere" class="itanywhere-activator" style="left: 666px; top: 7097px; display: none;"></div>
</html>