<!-- 
+----------------------------------------------------------------------

| Introduction:模板-后台页面管理

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
                                    <strong><?php if(empty($_GET['page'])){echo "发布新页面";}else{echo "页面名：".$_GET['page'];}?></strong>
                                </div>
                                <div class="card-body card-block">
                                    <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="text-input" class=" form-control-label">页面名</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="text-input" name="pageName" placeholder="page1" value="<?php echo $_GET['page'];?>" class="form-control">
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-lg-12">
                                                <div class="alert alert-success" role="alert">
                                                    <h4 class="alert-heading">编写标准</h4>
                                                    <code>
                                                        &#60;?php<br>
                                                        $sitePageTittle = '关于我们';//页面tittle<br>
                                                        $sitePageImg = 'https://s1.ax1x.com/2020/03/29/GZgVje.png';//首页大图url<br>
                                                        $sitePageSlogn1 = '关于我们';//大标题<br>
                                                        $sitePageSlogn2 = '一下是关于我们的信息';//副标题<br>
                                                        $sitePageNR = &#60;&#60;&#60;STR<br>
                                                        &#60;div&#62;内容&#60;/div&#62;
                                                        <br>STR;//内容部分<br>
                                                        ?&#62;
                                                    </code>
                                                    <p>{$themeAssetesWay}：模板内资源引入路径(在"内容"中的用法：{$themeAssetesWay}/assetes1/images/)</p>
                                                    <hr>
                                                    <p class="mb-0">页面是基于所选模板的样式为基础，"内容部分(也就是$sitePageNR变量)"请按照模板示例页面以 HTML 格式编写！</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-lg-12">

                                                <textarea name="pageContent" rows="9" placeholder="Content..." class="form-control"><?php echo $openPage;?></textarea>

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