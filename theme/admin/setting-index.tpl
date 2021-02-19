<!-- 
+----------------------------------------------------------------------

| Introduction:模板-后台首页配置

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
                                    <strong>门户页面配置</strong>
                                </div>
                                <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="card-body card-block">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="textarea-input" class=" form-control-label">头部大标语</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <textarea name="indexHeaderSlogan" id="textarea-input" rows="9" placeholder="Content..." class="form-control"><?php echo $index['index_header_slogan'];?></textarea>
                                                <small>注：HTML格式</small>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="textarea-input" class=" form-control-label">头部导航</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <textarea name="indexHeaderNavigation" id="textarea-input" rows="9" placeholder="Content..." class="form-control"><?php echo $index['index_header_navigation'];?></textarea>
                                                <small>注：HTML格式</small>
                                            </div>
                                        </div>                                        
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="textarea-input" class=" form-control-label">页脚导航</label>
                                                <small>第1列</small>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <textarea name="indexFooterList1" id="textarea-input" rows="9" placeholder="Content..." class="form-control"><?php echo $index['index_footer_list1'];?></textarea>
                                                <small>注：HTML格式</small>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="textarea-input" class=" form-control-label">页脚导航</label>
                                                <small>第2列</small>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <textarea name="indexFooterList2" id="textarea-input" rows="9" placeholder="Content..." class="form-control"><?php echo $index['index_footer_list2'];?></textarea>
                                                <small>注：HTML格式</small>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="textarea-input" class=" form-control-label">页脚导航</label>
                                                <small>第3列</small>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <textarea name="indexFooterList3" id="textarea-input" rows="9" placeholder="Content..." class="form-control"><?php echo $index['index_footer_list3'];?></textarea>
                                                <small>注：HTML格式</small>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="textarea-input" class=" form-control-label">页脚导航</label>
                                                <small>第4列</small>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <textarea name="indexFooterList4" id="textarea-input" rows="9" placeholder="Content..." class="form-control"><?php echo $index['index_footer_list4'];?></textarea>
                                                <small>注：HTML格式</small>
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
                                    <strong>首页大图</strong>上传
                                </div>
                                <form method="post" enctype="multipart/form-data" class="form-horizontal">

                                    <div class="card-body card-block">

                                        <div class="row form-group">
                                            <div class="col-12 col-md-12">
                                                <img class="card-img-top" src="<?php echo $imgurl;?>">
                                                <div class="input-group">
                                                    <input value="<?php echo $imgvalue;?>" type="text" id="url1" name="indexImg" placeholder="Text" class="form-control">
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
                                        <button name="setting-2" type="submit" class="btn btn-primary btn-sm">
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