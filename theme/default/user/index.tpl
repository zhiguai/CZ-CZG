<!-- 
+----------------------------------------------------------------------

| Introduction:模板-用户中心首页

+----------------------------------------------------------------------

| Copyright (c) 2019~2020 FatDa All rights reserved.

+----------------------------------------------------------------------

| Author: 吃纸怪 

+----------------------------------------------------------------------

| contact:QQ2903074366

+----------------------------------------------------------------------
-->
            <!-- STATISTIC-->
            <section class="statistic">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        
                        <!-- 返回提示 -->
                        <?php $registerstaet=$_GET['staet']; jbTiShi($registerstaet,$registertishi0,$registertishi1); ?>

                        <div class="row">

                            <div class="col-lg-6">
                                <div class="card">
                                    <div class="card-header user-header alt bg-dark">
                                        <div class="media">
                                            <a href="#">
                                                <img class="align-self-center rounded-circle mr-3" style="width:85px; height:85px;" alt="" src="<?php echo $user['user_head_img']; ?>">
                                            </a>
                                            <div class="media-body">
                                                <h2 class="text-light display-6"><?php echo $user['user_name'];?></h2>
                                                <p>UID: <?php echo $user['user_uid'];?></p>
                                            </div>
                                        </div>
                                    </div>


                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item">
                                            <i class="zmdi zmdi-assignment-account"></i> 权限: <?php echo $user_level;?>
                                        </li>
                                        <li class="list-group-item">
                                            <i class="zmdi zmdi-comment-edit"></i> 个人介绍: <?php echo $user['user_introduce'];?>
                                        </li>
                                        <li class="list-group-item">
                                            <i class="fa fa-comments"></i> QQ: <?php echo $user['user_qq'];?>
                                        </li>
                                        <li class="list-group-item">
                                            <i class="zmdi zmdi-email"></i> 邮箱: <?php echo $user['user_email'];?>
                                        </li>
                                        <li class="list-group-item">
                                            <i class="zmdi zmdi-alarm"></i> 最后一次登入时间: <?php echo $user['user_last_time'];?>
                                        </li>
                                        <li class="list-group-item">
                                            <i class="zmdi zmdi-alarm-check"></i> 注册时间: <?php echo $user['user_regtime'];?>
                                        </li>
                                        <li class="list-group-item"> 
                                            <button id="payment-button" class="btn btn-lg btn-info btn-block">
                                                <a href="setting.php" style="color:#fff;">
                                                    <i class="fa fa-edit fa-lg"></i>&nbsp;
                                                    <span id="payment-button-amount">修改资料</span>
                                                </a>
                                            </button>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="au-card au-card--no-shadow au-card--no-pad m-b-40 au-card--border">
                                    <div class="au-card-title" style="background-image:url('<?php echo $themeAssetesWay;?>/assetes/images/bg-title-01.jpg');">
                                        <div class="bg-overlay bg-overlay--blue"></div>
                                        <h3>
                                            <i class="zmdi zmdi-volume-up"></i> 公 告</h3>
                                    </div>
                                    <div class="au-task js-list-load au-task--border">
                                        <div class="au-task-list js-scrollbar3">
                                            <?php while($data_content=mysqli_fetch_assoc($result_content)){ ?>
                                            <div class="au-task__item au-task__item--<?php if($data_content['notice_top'] == "0"){echo "primary";}else{echo "danger";}?>">

                                                <div class="au-task__item-inner">
                                                    <h5 class="task">
                                                        <a href="ndetails.php?id=<?php echo $data_content['notice_id']?>"><?php echo cut_str(htmlspecialchars($data_content['notice_content']),18)?></a>
                                                    </h5>
                                                    <span class="time"><?php echo $data_content['notice_time']?></span>
                                                </div>
                                            </div>
                                            <?php } ?>
                                        </div>
                                        <div class="au-task__footer">
                                            <a href="nlist.php"><button class="au-btn au-btn-load">查看更多</button></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->

            <section>
                <div class="section__content section__content--p30">
                    <div class="container-fluid">

                    </div>
                </div>
            </section>