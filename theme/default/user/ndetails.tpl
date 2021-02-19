<!-- 
+----------------------------------------------------------------------

| Introduction:模板-公告详情

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

                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>
                                            <?php echo $noticedata['notice_tittle'];?>
                                            <span class="float-right mt-1">ID：<?php echo $noticedata['notice_id'];?></span>
                                        </strong>
                                    </div>

                                    <div class="card-body card-block">
                                        <?php echo $noticedata['notice_content'];?>
                                        <hr>
                                        发布者<?php echo $noticedata['notice_user_uid'];?>
                                        <span class="float-right mt-1"><?php echo $noticedata['notice_time'];?></span>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->