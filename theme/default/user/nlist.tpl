<!-- 
+----------------------------------------------------------------------

| Introduction:模板-后台公告列表

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

                                <div class="user-data m-b-30">
                                    <h3 class="title-3 m-b-30">
                                        <i class="zmdi zmdi-comment-alert"></i>公告列表
                                    </h3>

                                    <div class="table-responsive table-data">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <td>公告标题</td>
                                                    <td>简要内容</td>
                                                    <td>发布时间</td>
                                                    <td></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <?php while($data_content=mysqli_fetch_assoc($result_content)){ ?>
                                                <tr>
                                                    <td>
                                                        <div class="table-data__info">
                                                            <h6><?php echo htmlspecialchars($data_content['notice_tittle'])?></h6>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="table-data__info">
                                                            <h6 style="text-overflow: ellipsis"><?php echo cut_str(htmlspecialchars($data_content['notice_content']),18)?></h6>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <?php echo $data_content['notice_time']?>
                                                    </td>
                                                    <td>
                                                        <?php if($data_content['notice_top'] == "0"){ ?>   
                                                        <?php }else{ ?>
                                                        <span class="role admin">置顶</span>  
                                                        <?php } ?>
                                                    </td>
                                                    <td>
                                                        <div class="table-data-feature">
                                                            <button class="item" title="查看详情">
                                                                <a href="ndetails.php?id=<?php echo $data_content['notice_id']?>">
                                                                <i class="zmdi zmdi-mail-send"></i>
                                                                </a>
                                                            </button>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="user-data__footer">
                                        <?php echo $page['html'];?>
                                    </div>
                                </div>
                                <!-- END USER DATA-->
                            </div>
                        </div>
                    </div>   
                </div>
            </section>
            <!-- END STATISTIC-->