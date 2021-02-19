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

                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>头像</strong>上传
                                    </div>
                                    <form method="post" enctype="multipart/form-data" class="form-horizontal">

                                        <div class="card-body card-block">

                                            <div class="row form-group">
                                                <div class="col-12 col-md-12">
                                                    <div class="account2">
                                                        <div class="image img-cir img-120" >
                                                            <img src="<?php echo $imgurl;?>">
                                                        </div>
                                                    </div>
                                                    <div class="input-group">
                                                        <input value="<?php echo $imgvalue;?>" type="text" id="url1" name="userHead" placeholder="Text" class="form-control">
                                                        <div class="input-group-btn">
                                                            <button type="button" id="image1"class="btn btn-primary">选择图片</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <script src="/public/plug/kindeditor/kindeditor-all.js"></script>
                                            <link rel="stylesheet" href="/public/plug/kindeditor/themes/default/default.css" />
                                            <script>
                                                //document.domain = 'domain.com';
                                                KindEditor.ready(function(K) {
                                                    var editor = K.editor({
                                                        allowFileManager : false,
                                                        langType : 'zh-CN',
                                                        autoHeightMode : true
                                                    });
                                                    K('#image1').click(function() {
                                                        editor.loadPlugin('image', function() {
                                                            editor.plugin.imageDialog({
                                                                imageUrl : K('#url1').val(),
                                                                clickFn : function(url, title, width, height, border, align) {
                                                                    K('#url1').val(url);
                                                                    editor.hideDialog();
                                                                }
                                                            });
                                                        });
                                                    });
                                                });
                                            </script>
                                        </div>

                                        <div class="card-footer">
                                            <button name="setting-3" type="submit" class="btn btn-primary btn-sm">
                                                <i class="fa fa-dot-circle-o"></i> 修改
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>我的信息</strong>
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="setting.php" method="post" enctype="multipart/form-data" class="form-horizontal">
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">UID</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <p class="form-control-static"><?php echo $user['user_uid'];?></p>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">用户名</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="text-input" name="name" placeholder="用户名" value="<?php echo $user['user_name'];?>" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">QQ</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="text-input" name="qq" placeholder="QQ号" value="<?php echo $user['user_qq'];?>" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="disabled-input" class=" form-control-label">邮箱</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" id="disabled-input" name="disabled-input" placeholder="Disabled" value="<?php echo $user['user_email'];?>" disabled="" class="form-control">
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="textarea-input" class=" form-control-label">个人介绍</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <textarea name="introduce" id="textarea-input" rows="9" placeholder="我是..." class="form-control"><?php echo $user['user_introduce'];?></textarea>
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
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="password-input" class=" form-control-label">原始密码</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="password" id="password-input" name="pw" placeholder="Password" class="form-control">
                                                    <small class="help-block form-text">为防止出非本人操作请输入密码</small>
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
                            
                            <!--from2-->
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <strong>修改绑定邮箱</strong>
                                    </div>
                                    <div class="card-body card-block">
                                        <form action="setting.php" method="post" enctype="multipart/form-data" class="form-horizontal">
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">当前邮箱</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <p class="form-control-static"><?php echo $user['user_email'];?></p>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label for="text-input" class=" form-control-label">新邮箱</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <div class="input-group">
                                                        <input  type="email" name="email" id="email" placeholder="邮箱" class="form-control">
<?php                               
if($site['smtp_state'] == "1"){
?>
                                                        <div class="input-group-btn">
                                                            <button class="btn btn-primary" type="button" id="sendvcodeemail">获取验证码</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                                <div class="col col-md-3">
                                                    <label class=" form-control-label">验证码</label>
                                                </div>
                                                <div class="col-12 col-md-9">
                                                    <input type="text" name="vcode" placeholder="输入验证码" class="form-control">
                                                    <small class="help-block form-text">请先获取验证码</small>
                                                </div>
                                            </div>
<?php
}else{
?>
                                                    </div>
                                                </div>
                                            </div>
<?php
}
?>
                                        </form>    
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" name="setting-2" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> 修改
                                        </button>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->