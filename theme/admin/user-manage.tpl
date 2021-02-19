<!-- 
+----------------------------------------------------------------------

| Introduction:模板-后台用户管理

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
                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong>UID：<?php echo $userdata['user_uid'];?> 的 信息</strong>
                                </div>
                                <div class="card-body card-block">
                                    <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label class=" form-control-label">UID</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <p class="form-control-static"><?php echo $userdata['user_uid'];?></p>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">权限</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <select name="userLevel" class="form-control-sm form-control">
                                                <?php if($userdata['user_level'] == "0"){ ?>
                                                    <option value="0">管理员</option>
                                                    <option value="1">普通用户</option>
                                                <?php }else{ ?>
                                                    <option value="1">普通用户</option>
                                                    <option value="0">管理员</option>
                                                <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">用户名</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="text-input" name="name" placeholder="用户名" value="<?php echo $userdata['user_name'];?>" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">QQ</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="text-input" name="qq" placeholder="QQ号" value="<?php echo $userdata['user_qq'];?>" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="disabled-input" class=" form-control-label">邮箱</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="disabled-input" name="email" placeholder="Disabled" value="<?php echo $userdata['user_email'];?>" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="textarea-input" class=" form-control-label">个人介绍</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <textarea name="introduce" id="textarea-input" rows="9" placeholder="我是..." class="form-control"><?php echo $userdata['user_introduce'];?></textarea>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="password-input" class=" form-control-label">修改密码</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="password" id="password-input" name="newpw" placeholder="Password" class="form-control">
                                                <small class="help-block form-text">不填则不修改</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" name="setting-1" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> 保存
                                        </button>
                                    </div>
                                </form>    
                            </div>
                        </div>

                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->