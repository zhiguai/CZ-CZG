<!-- 
+----------------------------------------------------------------------

| Introduction:模板-后台用户列表

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
                            <div class="card">
                                <div class="card-header">
                                    <strong>添加用户</strong>
                                </div>
                                <div class="card-body card-block">
                                    <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="disabled-input" class=" form-control-label">用户名</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="disabled-input" name="username" placeholder="吃纸怪" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="disabled-input" class=" form-control-label">邮箱</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="disabled-input" name="email" placeholder="263..@qq.com" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="password-input" class=" form-control-label">密码</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="password" id="password-input" name="password" placeholder="Password" class="form-control">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" name="setting-1" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> 添加
                                        </button>
                                    </div>
                                </form>    
                            </div>
                        </div>
                        <div class="col-lg-12">

                            <div class="user-data m-b-30">
                                <h3 class="title-3 m-b-30">
                                    <i class="zmdi zmdi-account-calendar"></i>用户列表</h3>
                                <div class="table-responsive table-data">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <td>UID</td>
                                                <td>用户名/邮箱</td>
                                                <td>权限</td>
                                                <td>注册时间</td>
                                                <td></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php while($data_content=mysqli_fetch_assoc($result_content)){ ?>
                                            <tr>
                                                <td>
                                                    <?php echo $data_content['user_uid']?>
                                                </td>
                                                <td>
                                                    <div class="table-data__info">
                                                        <h6><?php echo $data_content['user_name']?></h6>
                                                        <span>
                                                            <a href="#"><?php echo $data_content['user_email']?></a>
                                                        </span>
                                                    </div>
                                                </td>
                                                <td>
                                                    <?php if($data_content['user_level'] == "0"){ ?>   
                                                    <span class="role admin">管理员</span>
                                                    <?php }else{ ?>
                                                    <span class="role user">普通用户</span>    
                                                    <?php } ?>
                                                </td>
                                                <td>
                                                    <?php echo $data_content['user_regtime']?>
                                                </td>
                                                <td>
                                                    <div class="table-data-feature">
                                                        <button class="item" title="修改">
                                                            <a href="user-manage.php?uid=<?php echo $data_content['user_uid']?>"><i class="zmdi zmdi-edit"></i></a>
                                                        </button>
                                                        <button class="item" title="删除" type="button" data-toggle="modal" data-target="#<?php echo $data_content['user_uid']?>">
                                                            <i class="zmdi zmdi-delete"></i>
                                                        </button>
                                                    </div>
                                                </td>
                                            </tr>
                                            <!-- modal static -->
                                            <div class="modal fade" id="<?php echo $data_content['user_uid']?>" tabindex="-1" role="dialog" aria-labelledby="staticModalLabel" aria-hidden="true"
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
                                                                你确定要删除UID：<?php echo $data_content['user_uid']?>的用户吗？
                                                            </p>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
                                                            <a href="user-manage.php?uid=<?php echo $data_content['user_uid']?>&operation=delete"><button type="button" class="btn btn-primary">确认</button></a>
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