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
            <section>
                <div class="container">

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
                                                <td>公告ID</td>
                                                <td>公告标题</td>
                                                <td>发布者ID</td>
                                                <td>发布时间</td>
                                                <td>置顶状态</td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                                            <a style="color:white;" href="notice-manage.php"><i class="zmdi zmdi-plus"></i>发布公告</a>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php while($data_content=mysqli_fetch_assoc($result_content)){ ?>
                                            <tr>
                                                <td>
                                                    <?php echo $data_content['notice_id']?>
                                                </td>
                                                <td>
                                                    <div class="table-data__info">
                                                        <h6><?php echo htmlspecialchars($data_content['notice_tittle'])?></h6>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div class="table-data__info">
                                                        <h6><?php echo $data_content['notice_user_uid']?></h6>
                                                    </div>
                                                </td>
                                                <td>
                                                    <?php echo $data_content['notice_time']?>
                                                </td>
                                                <td>
                                                    <?php if($data_content['notice_top'] == "0"){ ?>   
                                                    <span class="role user">正常</span> 
                                                    <?php }else{ ?>
                                                    <span class="role admin">置顶</span>  
                                                    <?php } ?>
                                                </td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" title="查看">
                                                            <a href="/index/user/ndetails.php?id=<?php echo $data_content['notice_id']?>">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                            </a>
                                                        </button>
                                                        <button class="item" title="修改">
                                                            <a href="notice-manage.php?id=<?php echo $data_content['notice_id']?>"><i class="zmdi zmdi-edit"></i></a>
                                                        </button>
                                                        <button class="item" title="delete" type="button" data-toggle="modal" data-target="#<?php echo $data_content['notice_id']?>">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- modal static -->
                                            <div class="modal fade" id="<?php echo $data_content['notice_id']?>" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel" aria-hidden="true"
                                             data-backdrop="static">
                                                <div class="modal-dialog modal-sm" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h5 class="modal-title" id="staticModalLabel">系统提示</h5>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                <span aria-hidden="true">&times;</span>
                                                            </button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p>
                                                                你确定要删除ID：<?php echo $data_content['notice_id']?>的公告吗？
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                                                            <a href="notice-manage.php?id=<?php echo $data_content['notice_id']?>&operation=delete"><button type="button" class="btn btn-primary">确认</button></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end modal static -->
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
            </section>
            <!-- END STATISTIC-->