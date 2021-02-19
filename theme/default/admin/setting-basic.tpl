<!-- 
+----------------------------------------------------------------------

| Introduction:模板-后台基本配置

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
                                    <strong>基本配置</strong>
                                </div>
                                <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="card-body card-block">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="selectSm" class=" form-control-label">网站状态</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <select name="siteState" id="SelectLm" class="form-control-sm form-control">

                                                <?php if($site['site_state'] == "0"){ ?>
                                                    <option value="0">关闭</option>
                                                    <option value="1">打开</option>
                                                <?php }else{ ?>
                                                    <option value="1">打开</option>
                                                    <option value="0">关闭</option>
                                                <?php } ?>

                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="textarea-input" class=" form-control-label">闭站展示内容</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <textarea name="siteStateContent" id="textarea-input" rows="9" placeholder="Content..." class="form-control"><?php echo $site['site_state_content'];?></textarea>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">站点名称</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input value="<?php echo $site['site_tittle'];?>" type="text" id="text-input" name="siteTittle" placeholder="Text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">站点介绍</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input value="<?php echo $site['site_description'];?>" type="text" id="text-input" name="siteDescription" placeholder="Text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">站点关键词</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input value="<?php echo $site['site_keywords'];?>" type="text" id="text-input" name="siteKeywords" placeholder="Text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">站点版权</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input value="<?php echo htmlspecialchars($site['site_copyright']);?>" type="text" id="text-input" name="siteCopyright" placeholder="Text" class="form-control">
                                                <small class="form-text text-muted">例：© 2020 吃纸怪. All Rights Reserved.</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <button name="setting-1" type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> 修改
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong>发件配置</strong>SMTP
                                </div>
                                <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="card-body card-block">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="selectSm" class=" form-control-label">邮件验证服务状态</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <select name="smtpState" id="SelectLm" class="form-control-sm form-control">
                                                <?php if($site['smtp_state'] == "0"){ ?>
                                                    <option value="0">关闭</option>
                                                    <option value="1">打开</option>
                                                <?php }else{ ?>
                                                    <option value="1">打开</option>
                                                    <option value="0">关闭</option>
                                                <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">SMTP邮箱服务器地址</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input value="<?php echo $site['smtp_server'];?>" type="text" id="text-input" name="smtpServer" placeholder="Text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">邮箱服务器端口</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input value="<?php echo $site['smtp_serverport'];?>" type="text" id="text-input" name="smtpServerport" placeholder="Text" class="form-control">
                                                <small class="form-text text-muted">一般为 25</small>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">邮箱账号</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input value="<?php echo $site['smtp_usermail'];?>" type="email" id="text-input" name="smtpUsermail" placeholder="Text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">邮箱密码</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input value="<?php echo $site['smtp_pass'];?>" type="password" id="text-input" name="smtpPass" placeholder="Text" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">发件人名字</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input value="<?php echo $site['smtp_username'];?>" type="text" id="text-input" name="smtpUsername" placeholder="Text" class="form-control">
                                                <small class="form-text text-muted">无要求可填自己网站名字</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <button name="setting-2" type="submit" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> 修改
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="card">
                                <div class="card-header">
                                    <strong>站点Logo</strong>上传
                                </div>
                                <form method="post" enctype="multipart/form-data" class="form-horizontal">

                                    <div class="card-body card-block">

                                        <div class="row form-group">
                                            <div class="col-12 col-md-12">
                                                <img class="card-img-top" src="<?php echo $imgurl;?>">
                                                <div class="input-group">
                                                    <input value="<?php echo $imgvalue;?>" type="text" id="url1" name="siteLogo" placeholder="Text" class="form-control">
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
                                                    allowFileManager : true,
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
                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->