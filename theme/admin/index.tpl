<!-- 
+----------------------------------------------------------------------

| Introduction:模板-后台首页

+----------------------------------------------------------------------

| Copyright (c) 2019~2020 FatDa All rights reserved.

+----------------------------------------------------------------------

| Author: 吃纸怪 

+----------------------------------------------------------------------

| contact:QQ2903074366

+----------------------------------------------------------------------
-->
            <!-- STATISTIC-->
            <section>
                <div class="container">

                    <!-- 返回提示 -->
                    <?php $registerstaet=$_GET['staet']; jbTiShi($registerstaet,$registertishi0,$registertishi1); ?>

                    <div class="row">
                        <div class="col-md-6 col-lg-3">
                            <h3 class="title-5 m-b-35">平台数据</h3>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item">
                                <h2 class="number"><?php echo $userNumber; ?></h2>
                                <span class="desc">用户总数</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-account-o"></i>
                                </div>
                            </div>
                        </div>
                        <!-- 暂时不需要
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item">
                                <h2 class="number">388,688</h2>
                                <span class="desc">items sold</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-shopping-cart"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item">
                                <h2 class="number">1,086</h2>
                                <span class="desc">this week</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-calendar-note"></i>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                            <div class="statistic__item">
                                <h2 class="number">$1,060,386</h2>
                                <span class="desc">total earnings</span>
                                <div class="icon">
                                    <i class="zmdi zmdi-money"></i>
                                </div>
                            </div>
                        </div>
                    -->
                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->

            <section>
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-lg-3">
                            <h3 class="title-5 m-b-35">系统与环境</h3>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-lg-4">
                            <!-- CHART-->
                            <div class="statistic-chart-1">
                                <h3 class="title-3 m-b-30">系统版本</h3>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <strong>当前系统版本: <?php echo systemVersion; ?></strong>
                                    </li>
                                    <li class="list-group-item">
                                        <strong>最新版本更新内容</strong>
                                    </li>
                                </ul>
                            </div>
                            <!-- END CHART-->
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <!-- CHART-->
                            <div class="statistic-chart-1">
                                <h3 class="title-3 m-b-30">官方公告</h3>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <strong>1. 公告</strong>
                                    </li>
                                    <li class="list-group-item">
                                       <strong> 2. 公告</strong>
                                    </li>
                                </ul>
                            </div>
                            <!-- END CHART-->
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <!-- CHART-->
                            <div class="statistic-chart-1">
                                <h3 class="title-3 m-b-30">环境信息</h3>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <strong>操作系统: <?php echo $system; ?></strong>
                                    </li>
                                    <li class="list-group-item">
                                        <strong>服务环境: <?php echo $sysos; ?></strong>
                                    </li>
                                    <li class="list-group-item">
                                        <strong>PHP版本: <?php echo $phpinfo; ?></strong>
                                    </li>
                                </ul>
                            </div>
                            <!-- END CHART-->
                        </div>
                    </div>
                </div>
            </section>