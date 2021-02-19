<!-- 
+----------------------------------------------------------------------

| Introduction:模板-后台页面列表

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
                                    <i class="zmdi zmdi-file-text"></i>页面列表
                                </h3>

                                <div class="table-responsive table-data">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <td>页面名</td>
                                                <td>文件名</td>
                                                <td>页面地址</td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                                                            <a style="color:white;" href="page-manage.php"><i class="zmdi zmdi-plus"></i>创建页面</a>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php foreach ($file as $value){ ?>
                                            <tr>
                                                <td>
                                                    <?php echo str_replace(".php", "", "$value")?>
                                                </td>
                                                <td>
                                                   <?php echo $value?>
                                                </td>
                                                <td>
                                                   <?php echo $_SERVER['HTTP_HOST']."/index/page.php?page=".str_replace(".php", "", "$value")?>
                                                </td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" title="查看">
                                                            <a href="/index/page.php?page=<?php echo str_replace(".php", "", "$value")?>">
                                                            <i class="zmdi zmdi-mail-send"></i>
                                                            </a>
                                                        </button>
                                                        <button class="item" title="修改">
                                                            <a href="page-manage.php?page=<?php echo str_replace(".php", "", "$value")?>"><i class="zmdi zmdi-edit"></i></a>
                                                        </button>
                                                        <button class="item" title="delete" type="button" data-toggle="modal" data-target="#<?php echo str_replace(".php", "", "$value")?>">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- modal static -->
                                            <div class="modal fade" id="<?php echo str_replace(".php", "", "$value")?>" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel" aria-hidden="true"
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
                                                                你确定要删除名为：<?php echo str_replace(".php", "", "$value")?> 的页面吗？
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                                                            <a href="page-manage.php?page=<?php echo str_replace(".php", "", "$value")?>&operation=delete"><button type="button" class="btn btn-primary">确认</button></a>
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