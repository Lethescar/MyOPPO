<template>
    <footer>
        <div class="footer-nav">
            <div class="footer-nav-wrapper">
                <div class="nav-directory">
                    <dl>
                        <dt>推荐产品</dt>
                        <dd>Find X</dd>
                        <dd>Reno</dd>
                        <dd>Reno Z</dd>
                        <dd>R17 Pro</dd>
                        <dd>K3</dd>
                        <dd>K1</dd>
                        <dd>A9</dd>
                    </dl>
                    <dl>
                        <dt>购买渠道</dt>
                        <dd>线下体验店</dd>
                        <dd>官方商城</dd>
                        <dd>官方授权店</dd>
                    </dl>
                    <dl>
                        <dt>探索精彩 OPPO</dt>
                        <dd>关于 OPPO</dd>
                        <dd>OPPO 管理层</dd>
                        <dd>新闻资讯</dd>
                        <dd>OPPO 社区</dd>
                        <dd>加入我们</dd>
                        <dd>知识产权</dd>
                    </dl>
                    <dl>
                        <dt>商务合作</dt>
                        <dd>政企合作</dd>
                        <dd>开放平台</dd>
                        <dd>采购相关</dd>
                        <dd>媒体联络</dd>
                    </dl>
                    <dl>
                        <dt>服务与支持</dt>
                        <dd>ColorOS</dd>
                        <dd>云服务</dd>
                        <dd>以旧换新</dd>
                        <dd>服务政策</dd>
                        <dd>预置软件公示</dd>
                        <dd>安全响应中心</dd>
                    </dl>
                </div>
                <div class="responsive_menu">
                    <el-collapse v-model="activeName" accordion>
                        <el-collapse-item title="推荐产品" name="1">
                            <div>Find X</div>
                            <div>Reno</div>
                            <div>Reno Z</div>
                            <div>R17 Pro</div>
                            <div>K3</div>
                            <div>K1</div>
                            <div>A9</div>
                        </el-collapse-item>
                        <el-collapse-item title="购买渠道" name="2">
                            <div>线下体验店</div>
                            <div>官方商城</div>
                            <div>官方授权店</div>
                        </el-collapse-item>
                        <el-collapse-item title="探索精彩 OPPO" name="3">
                            <div>关于 OPPO</div>
                            <div>OPPO 管理层</div>
                            <div>新闻资讯</div>
                            <div>OPPO 社区</div>
                            <div>加入我们</div>
                            <div>知识产权</div>
                        </el-collapse-item>
                        <el-collapse-item title="商务合作" name="4">
                            <div>政企合作</div>
                            <div>开放平台</div>
                            <div>采购相关</div>
                            <div>媒体联络</div>
                        </el-collapse-item>
                        <el-collapse-item title="服务与支持" name="5">
                            <div>ColorOS</div>
                            <div>云服务</div>
                            <div>以旧换新</div>
                            <div>服务政策</div>
                            <div>预置软件公示</div>
                            <div>安全响应中心</div>
                        </el-collapse-item>
                    </el-collapse>
                </div>
                <div class="nav-service">
                    <div class="service-btn">
                        <a href="javascript:;">
                            <img src="../../public/img/service.png" alt="">
                            <span>在线客服</span>
                        </a>
                    </div>
                    <div class="service-tel">
                        <h3>4001-666-888</h3>
                        <p>24 小时全国热线</p>
                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="content">
                    <p>
                        © 2005 - 2019 OPPO 版权所有
                        <a href="javascript:;">粤ICP备08130115号-1&nbsp;</a>|
                        <a href="javascript:;">隐私&nbsp;</a>|
                        <a href="javascript:;">用户使用协议</a>
                         | 联系方式：4001-666-888
                        <img src="../../public/img/saic_logo.png" alt="">
                    </p>
                </div>
                <div class="sns-content">
                    <p>关注我们：</p>
                    <a href="javascript:;">
                        <img src="../../public/img/microblog.png">
                    </a>
                    <a href="javascript:;">
                        <img src="../../public/img/Alipay.png">
                    </a>
                    <a href="javascript:;" class="position-relative threea">
                        <em></em>
                        <img  class="iconfont-global" src="../../public/img/global.png">
                        <span>Global</span>
                    </a>
                </div>
            </div>
        </div>
    </footer>
</template>
<script>
export default {
    data() {
        return {
            activeName: '0'
        }
    },
    methods: {
        
    },
}
</script>
<style scoped>
/* 底部导航 */
footer{    background: #fff;}
.footer-nav{padding: 60px 0;font-size: 13px;}
.footer-nav-wrapper{width: 1200px;margin: 0 auto;display: inline-block;}
/* 左侧 */
.nav-directory{float: left;display: flex;justify-content: space-between; overflow: hidden;width: 62%;text-align: left}
.nav-directory dl{flex: 1;margin-bottom: 0;}
.nav-directory dl dt{line-height: 1;margin-bottom: 10px;color: #333;display: block;cursor: pointer;font-weight: normal}
.nav-directory dl dd{display: block;line-height: 1;padding: 8px 0;color: #666;overflow: hidden;margin-right: 1em;margin-bottom: 0;cursor: pointer;}
/* 右侧 */
.nav-service{float: right;text-align: right;}
/* 客服按钮 */
.service-btn{margin-bottom: 20px}
.service-btn a{color: #fff;background-color: #666;text-align: center;transition: background-color 0.35s ease;height: 53px;line-height: 53px;border-radius: 26.5px;width: 173px;display: inline-block;}
.service-btn a:hover{background-color: #333;}
.service-btn a img{height: 25px;width: 25px;margin-right: 4px;margin-top: -4px;}
.service-btn a span{display: inline-block;font-size: 14px;margin-top: 2px;font-weight: bold}
/* 客服电话 */
.service-tel h3{font-size: 20px;line-height: 1;font-weight: normal;color: #333;margin: 0 0 10px 0;}
.service-tel p{font-size: 14px;color: #828282;}
/* 底部版权 */
.footer-copyright{display: flex;position: relative;justify-content: space-between; width: 1200px;margin: 72px auto 0 auto;padding-top: 24px;color: #98979A;box-sizing: border-box;border-top: 1px #EBEBEB solid;}
.footer-copyright .content p a{color: #98979A;text-decoration: none}
.footer-copyright .content p img{width: 23px;height: 23px;margin-top: -4px;cursor: pointer;}
.footer-copyright .content p img{width: 23px;height: 23px;margin-top: -4px;cursor: pointer;}
.sns-content p{display: inline-block;}
.sns-content a img{width: 22px;height: 22px;margin-top: -4px;}
.sns-content a{padding-left: 15px;}
.sns-content a:hover{text-decoration: none;}
.sns-content .threea{margin-left: 15px;margin-top: 3px;}
.sns-content a .iconfont-global{width: 16px;height: 16px;}
.sns-content em{width: 1px;top: -3px;bottom: 3px;position: absolute;left: 0;background-color: #999;height: 20px;}
.sns-content a span{padding-left: .5em;color: #98979a;}
/* 响应式列表 */
.responsive_menu{display: none;}
.responsive_menu .el-collapse{width: 100%;}
/* 响应式 */
@media (max-width: 768px) {
    .responsive_menu .el-collapse-item__content>div{
        padding: 0 0 10px 15px; 
        text-align: left;
        cursor: pointer;
        color: rgb(116, 116, 116);
        transition: color .2s;
    }
    .responsive_menu .el-collapse-item__content>div:hover{
        color: rgb(168, 168, 168);
    }
    .responsive_menu .el-collapse{
        top: 0px;
        left: 0px;
    }
    .footer-nav-wrapper{width: 100%;}
    .nav-directory{display: none;}
    .responsive_menu{
        display: block;
        position: relative;
        margin-left: 25px;
        padding-top:30px; 
        width: 93%;
    }
    .nav-service{
        width: 100%;
        padding: 30px;
        float: left;
        text-align: left;
    }
    .nav-service .service-btn{
        float: right;
        transform: scale(.8,.8)
    }
    .footer-nav{
        padding: 0;
    }
    .footer-copyright{
        margin-top: 10px;
        width: 93%;
    }
    .footer-copyright{
        display: block;
    }
    .footer-copyright .content{text-align: left;}
    .footer-copyright .sns-content{float: left;}
}
</style>