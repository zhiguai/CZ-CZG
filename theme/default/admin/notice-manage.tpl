<!-- 
+----------------------------------------------------------------------

| Introduction:模板-后台公告管理

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
                                    <strong><?php if(empty($_GET['id'])){echo "发布新的公告";}else{echo "公告ID：".$noticedata['notice_id'];}?></strong>
                                </div>
                                <div class="card-body card-block">
                                    <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">权限</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <select name="noticeTop" class="form-control-sm form-control">
                                                <?php if($noticedata['notice_top'] == "1"){ ?>
                                                    <option value="1">置顶</option>
                                                    <option value="0">正常</option>
                                                <?php }else{ ?>
                                                    <option value="0">正常</option>
                                                    <option value="1">置顶</option>
                                                <?php } ?>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="password-input" class=" form-control-label">标题</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="password-input" name="noticeTittle" value="<?php echo $noticedata['notice_tittle'];?>" placeholder="题目" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-lg-12">

                                                <textarea name="noticeContent" cols="100" rows="20" style="width:100%;max-height:200px;resize:none"><?php echo $noticedata['notice_content'];?></textarea>

                                                <script src="/public/plug/kindeditor/kindeditor-all.js"></script>

                                                <script>
                                                    //document.domain = 'domain.com';
                                                    KindEditor.ready(function(K) {
                                                        window.editor = K.create('textarea', {
                                                            allowFileManager : true,
                                                            langType : 'zh-CN',
                                                            autoHeightMode : true
                                                        });
                                                    });
                                                </script>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer">
                                        <button type="submit" name="setting-1" class="btn btn-primary btn-sm">
                                            <i class="fa fa-dot-circle-o"></i> 发布
                                        </button>
                                    </div>
                                </form>    
                            </div>
                        </div>

                    </div>
                </div>
            </section>
            <!-- END STATISTIC-->