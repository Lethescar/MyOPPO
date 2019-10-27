<template>
    <div>
        <my-header></my-header>
        <section class="container-fluid m-0 p-0 pt60 bg-white">
            <div class="buy-container">
                <div class="buy-products-info">
                    <div class="buy-products-wrapper">
                        <div class="pi-navigation d-flex justify-content-between">
                            <span class="pi-nav-model">Reno</span>
                            <div class="pi-nav-list">
                                <a href="#" class="ml-2">概览</a>
                                <a href="#" class="ml-2">技术规格</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pi-details position-relative">
                    <div class="product-gallery">
                        <template>
                            <el-tabs @tab-click="handleClick" :tab-position="tabPosition" style="height: 680px;">
                                <el-tab-pane v-for="(img,sub) of pro_imgs" :key="sub">
                                    <span slot="label"><img :src="'http://127.0.0.1:8000'+img.buy_sm" alt=""></span>
                                    <img :src="'http://127.0.0.1:8000'+img.buy_lg" alt="">
                                </el-tab-pane>
                                <!-- <el-tab-pane label="配置管理" name="second">配置管理</el-tab-pane>
                                <el-tab-pane label="角色管理" name="third">角色管理</el-tab-pane>
                                <el-tab-pane label="定时任务补偿" name="fourth">定时任务补偿</el-tab-pane> -->
                            </el-tabs>
                        </template>
                    </div>
                    <div class="product-details w-100">
                        <div class="details-title">
                            <p class="product-name">Reno 6G+256G 珊瑚橙  </p>
                            <p class="product-text font-weight-bold">
                                <span style="color:#f79a47" >【直降200 | 加赠Reno保护壳，颜色随机发放 | 限时12期免息】</span>全景屏，4800万超清像素、支持NFC、VOOC 3.0。<a href="#" style="color:#f79a47" class="underline">Reno Z热卖中 >>></a>
                            </p>
                            <div>
                                <p class="product-price">
                                    <span class="font-weight-normal">￥</span>
                                    2799.00
                                    <span class="line-through">￥2999</span>
                                </p>
                            </div>
                            <div class="product-support">
                                <p>商品支持：
                                    <a class="ps-icon ps-iconfont-ohuabeipay font-weight-bold" href="" style="cursor: default;">花呗分期 12 期免息</a>
                                    <a class="ps-icon ps-icon-recycle font-weight-bold" href="">以旧换新</a>
                                </p>
                                <span class="ps-icon ps-iconfont-jsd mr-0"></span>
                                <span class="font-weight-bold">门店送货上门<a class="ps-icon ps-iconfont-doubt mr-0" href="#"></a></span>
                            </div>
                        </div>
                        <div class="config-list">
                            <div class="product-config">
                                <p class="config-name">颜色</p>
                                <div class="btn-list d-flex">
                                    <div class="bl-radio">
                                        <a href="javascript:;" class="swatch">
                                            <i class="radio-color" style="background-color: rgb(226, 125, 243); background-image: linear-gradient(to right bottom, rgb(226, 125, 243), rgb(122, 33, 137));"></i>
                                            <span class="radio-text">星云紫</span>
                                        </a>
                                    </div>
                                    <div class="bl-radio">
                                        <a href="javascript:;" class="swatch">
                                            <i class="radio-color" style="background-color: rgb(169, 178, 192); background-image: linear-gradient(to right bottom, rgb(169, 178, 192), rgb(36, 41, 58));"></i>
                                            <span class="radio-text">极夜黑</span>
                                        </a>
                                    </div>
                                    <div class="bl-radio">
                                        <a href="javascript:;" class="swatch">
                                            <i class="radio-color" style="background-color: rgb(243, 131, 76); background-image: linear-gradient(to right bottom, rgb(243, 131, 76), rgb(240, 87, 47));"></i>
                                            <span class="radio-text">珊瑚橙</span>
                                        </a>
                                    </div>
                                    <div class="bl-radio">
                                        <a href="javascript:;" class="swatch">
                                            <i class="radio-color" style="background-color: rgb(255, 236, 216); background-image: linear-gradient(to right bottom, rgb(255, 236, 216), rgb(226, 189, 156));"></i>
                                            <span class="radio-text">薄雾粉</span>
                                        </a>
                                    </div>
                                    <div class="bl-radio">
                                        <a href="javascript:;" class="swatch">
                                            <i class="radio-color" style="background-color: rgb(86, 195, 210); background-image: linear-gradient(to right bottom, rgb(86, 195, 210), rgb(39, 104, 122));"></i>
                                            <span class="radio-text">雾海绿</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-config">
                                <p class="config-name">配置</p>
                                <div class="btn-list d-flex">
                                    <div class="bl-radio">
                                        <a href="javascript:;" class="swatch"></a>
                                        <span class="radio-text">6G+128G</span>
                                    </div>
                                    <div class="bl-radio">
                                        <a href="javascript:;" class="swatch"></a>
                                        <span class="radio-text">6G+256G</span>
                                    </div>
                                    <div class="bl-radio">
                                        <a href="javascript:;" class="swatch"></a>
                                        <span class="radio-text">8G+128G</span>
                                    </div>
                                </div>
                            </div>
                            <div class="product-config">
                                <p class="config-name">赠品</p>
                                <div class="gift-list row p-0 m-0">
                                    <div class="gift-item col-4 px-0 complimentary">
                                        <a href="">
                                            <picture>
                                                <img src="../../public/images/201811230211235bf7a4d3b1090.png" alt="">
                                            </picture>
                                        </a>
                                        <p class="mb-0">蓝牙音箱 N6</p>
                                    </div>
                                </div>
                            </div>
                            <div class="product-config">
                                <p class="config-name">加价购</p>
                                <div class="package-list row p-0 m-0 position-relative">
                                    <div class="package-swiper-container">
                                        <div class="package-swiper-wrapper d-flex">
                                            <div class="package-swiper-item col-3">
                                                <a href="javascript:;">
                                                    <picture>
                                                        <img src="../../public/images/201904101004085cad500850166.png" alt=""/>
                                                    </picture>
                                                </a>
                                                <p>硅胶保护壳</p>
                                                <div>
                                                    <i class="radio-btn-input"></i>
                                                    <span class="package-price">￥34</span>
                                                    <span class="package-original">￥39</span>
                                                </div>
                                            </div>
                                            <div class="package-swiper-item col-3">
                                                <a href="javascript:;">
                                                    <picture>
                                                        <img src="../../public/images/201809180509565ba0c6c0ed25e.png" alt=""/>
                                                    </picture>
                                                </a>
                                                <p>硅胶保护壳</p>
                                                <div>
                                                    <i class="radio-btn-input"></i>
                                                    <span class="package-price">￥45</span>
                                                    <span class="package-original">￥49</span>
                                                </div>
                                            </div>
                                            <div class="package-swiper-item col-3">
                                                <a href="javascript:;">
                                                    <picture>
                                                        <img src="../../public/images/201904190404255cb9875d4e6d4.png" alt=""/>
                                                    </picture>
                                                </a>
                                                <p>硅胶保护壳</p>
                                                <div>
                                                    <i class="radio-btn-input"></i>
                                                    <span class="package-price">￥89</span>
                                                    <span class="package-original">￥129</span>
                                                </div>
                                            </div>
                                            <div class="package-swiper-item col-3">
                                                <a href="javascript:;">
                                                    <picture>
                                                        <img src="../../public/images/201903200503515c920bcf9c6b0.png" alt=""/>
                                                    </picture>
                                                </a>
                                                <p>硅胶保护壳</p>
                                                <div>
                                                    <i class="radio-btn-input"></i>
                                                    <span class="package-price">￥118</span>
                                                    <span class="package-original">￥128</span>
                                                </div>
                                            </div>
                                            <div class="package-swiper-item col-3">
                                                <a href="javascript:;">
                                                    <picture>
                                                        <img src="../../public/images/201904100904135cad4cc5cb51d.png" alt=""/>
                                                    </picture>
                                                </a>
                                                <p>硅胶保护壳</p>
                                                <div>
                                                    <i class="radio-btn-input"></i>
                                                    <span class="package-price">￥34</span>
                                                    <span class="package-original">￥39</span>
                                                </div>
                                            </div>
                                            <div class="package-swiper-item col-3">
                                                <a href="javascript:;">
                                                    <picture>
                                                        <img src="../../public/images/201904101004225cad4fda46c35.png" alt=""/>
                                                    </picture>
                                                </a>
                                                <p>硅胶保护壳</p>
                                                <div>
                                                    <i class="radio-btn-input"></i>
                                                    <span class="package-price">￥34</span>
                                                    <span class="package-original">￥39</span>
                                                </div>
                                            </div>
                                            <div class="package-swiper-item col-3">
                                                <a href="javascript:;">
                                                    <picture>
                                                        <img src="../../public/images/201906130806005d023ac02ee34.png" alt=""/>
                                                    </picture>
                                                </a>
                                                <p>硅胶保护壳</p>
                                                <div>
                                                    <i class="radio-btn-input"></i>
                                                    <span class="package-price">￥89</span>
                                                    <span class="package-original">￥119</span>
                                                </div>
                                            </div>
                                            <div class="package-swiper-item col-3">
                                                <a href="javascript:;">
                                                    <picture>
                                                        <img src="../../public/images/201905240305265ce7a026809cb.png" alt=""/>
                                                    </picture>
                                                </a>
                                                <p>硅胶保护壳</p>
                                                <div>
                                                    <i class="radio-btn-input"></i>
                                                    <span class="package-price">￥239</span>
                                                    <span class="package-original">￥279</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="prevbtn position-absolute"></div>
                                    <div class="nextbtn position-absolute"></div>
                                </div>
                            </div>
                            <div class="product-config">
                                <p class="config-name">花呗分期</p>
                                <div class="btn-list d-flex row p-0 m-0">
                                    <div class="col-4 pr-10">
                                        <div class="bl-radio paymethod-radio position-relative">
                                            <div>
                                                <p>¥933 x 3 期</p>
                                                <p class="fee">手续费 ¥0 / 期</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4 pr-10">
                                        <div class="bl-radio paymethod-radio position-relative">
                                            <div>
                                                <p>¥466.5 x 6 期</p>
                                                <p class="fee">手续费 ¥0 / 期</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-4 p-0">
                                        <div class="bl-radio paymethod-radio position-relative">
                                            <div>
                                                <p>¥233.25 x 12 期</p>
                                                <p class="fee">手续费 ¥0 / 期</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-config">
                                <p class="config-name">选择数量</p>
                                <div class="config-input-number">
                                    <div class="number-input">
                                        <input type="text" value="1"/>
                                    </div>
                                    <i class="number-minus"></i>
                                    <i class="number-add"></i>
                                </div>
                            </div>
                        </div>
                        <div class="buying-button">
                            <div class="buying-btn-list">
                                <div class="ordinary-btn d-flex">
                                    <a href="javascript:;" class="oc-btn btn-lesser">加入购物车</a>
                                    <a href="javascript:;" class="oc-btn btn-master">立即购买</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="packing-list">
                <div class="products-wrapper">
                    <div class="packing-details">
                        <a href="#">
                            <picture>
                                <img src="../../public/images/201907080507305d23084ada485.jpg" alt=""/>
                            </picture>
                        </a>
                        <picture>
                            <img src="../../public/images/201907080507415d230819dd92c.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805175cee81add5176.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805205cee81b0d17f4.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805235cee81b39734b.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805265cee81b6945ac.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805295cee81b9b9caa.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805325cee81bc78bc3.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805355cee81bf63789.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805385cee81c241574.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805425cee81c63fc8c.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805455cee81c98118e.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805505cee81ce302c3.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805125cee81e43a4dd.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805145cee81e6de4c0.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805175cee81e9c986b.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805235cee81ef6fea8.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805255cee81f1da62c.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805305cee81f6765c9.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805345cee81fa81d6b.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290805405cee82000176b.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290905355cee8273e920f.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201906200206465d0b2a32139da.jpg" alt=""/>
                        </picture>
                        <picture>
                            <img src="../../public/images/201905290905385cee8276c6106.jpg" alt=""/>
                        </picture>
                    </div>
                </div>
            </div>
        </section>
        <my-footer></my-footer>
    </div>
</template>
<script>
export default {
    data() {
        return {
            pro_imgs:[],
            tabPosition: 'bottom'
        }
    },
    methods: {
        getpro_imgs(){
            var url="product/product";
            (async ()=>{
                var result=await this.axios.get(
                    url,
                );
                this.pro_imgs=result.data.data;
                console.log(this.pro_imgs);
            })();
        },
        handleClick(tab, event) {
            console.log(tab, event);
        }
    },
    created() {
        this.getpro_imgs();
    },
}
</script>
<style>
a{color: #333;}
img{width: 100%;}
/****导航下方****/
.pt60{padding-top: 60px !important;}
.buy-container{border-top: 1px solid #e5e5e5;}
.buy-container:after{content:"";display: table;}
.buy-products-wrapper{max-width: 1200px;margin: auto;}
.pi-navigation{height: 58px;border-bottom: 1px solid #e5e5e5;line-height: 58px;}
.pi-nav-model{font-size: 15px;}
.pi-nav-list a{font-size: 13px;color: #666;text-decoration: none;transition:opacity 0.3s ease;}
.pi-nav-list a:hover{opacity: .6}
.pi-details{max-width: 1200px;margin: auto;min-height: 800px;}
.pi-details::after{content: "";display: block;clear: both;}
/*左侧*/
.product-gallery{float: left; width: 560px;padding-top: 60px;padding-left: 40px;box-sizing: content-box !important;height: auto;}
.product-gallery .el-tabs__nav-wrap::after{background-color: transparent;}
.product-gallery .el-tabs__nav-wrap{display: flex;justify-content: center;}
.product-gallery .el-tabs__active-bar{display: none;}
.product-gallery .el-tabs__item{height: 80px;width: 80px;margin: 10px;}
/*底部*/
.pic-stage{position: relative;margin-top: 40px;}
.pic-list>li{position:relative; display: inline-block;width: 80px;height: 80px;margin: 0 15px;cursor: pointer;opacity: .4;transition: opacity 0.3s ease;}
.pic-list>li:hover{opacity: 1;}
.current{opacity: 1 !important;}
.pic-list>li>picture>img{width: auto;height: 100%;vertical-align: middle;}
.pic-bar{position: absolute;width: 45px;height: 2px;left: 0;bottom: 0;right: 0;background-color: #b7b7b7;border-radius: 1px;}
/*右侧*/
.product-details{float:right;text-align: left; max-width: 492px;padding-top: 80px;padding-left: 68px;padding-right: 40px;background-color: #fff;right: 0;box-sizing: content-box !important;}
.details-title{border-bottom: 1px solid #EDEDED;}
.product-name{color: #333;font-size: 22px;line-height: 39px;margin-bottom: 7px;}
.product-text{display: inline-block;color: #666;font-size: 14px;line-height: 22px;margin-bottom: 12px;}
.underline{text-decoration: underline;}
.product-price{font-size: 26px;line-height: 30px;margin-bottom: 20px;}
.line-through{color: #A0A0A0;font-size: 21px;text-decoration: line-through;}
/*商品支持*/
.config-list{padding-bottom: 30px;border-bottom: 1px solid #EDEDED;}
.product-support{margin-bottom: 30px !important;}
.product-support p{display: inline;}
.product-support a:hover{color: #333;text-decoration: none}
.ps-icon{margin-right: 10px;}
.ps-icon:before{position: relative;top:3px;padding-right: 4px;}
.ps-iconfont-ohuabeipay:before{content: url("../../public/images/huabei.png");}
.ps-icon-recycle:before{content: url("../../public/images/huanxin.png");}
.ps-iconfont-jsd:before{content: url("../../public/images/songhuo.png");}
.ps-iconfont-doubt:before{content: url("../../public/images/zhuyi.png");margin-left: 2px;}
/*规格颜色*/
.config-name {font-size: 14px;line-height: 14px;color: #666;margin-top: 30px;margin-bottom: 20px;}
.btn-list{margin: -10px;flex-wrap: wrap;}
.bl-radio{margin: 10px;border: 1px solid #dce1e4;   display: inline-block;transition: border-color 0.3s ease;width: 236px;height: 44px;border-radius: 4px;text-align: center;cursor: pointer;}
.bl-radio:hover{border-color: #81cdb1;}
.swatch:hover{text-decoration: none;}
.radio-color{position: relative;display: inline-block;vertical-align: middle;margin-top: -5px;margin-right: 10px;border-radius: 50%;width: 16px;height: 16px;}
.radio-text{position: relative;line-height: 42px;font-size: 16px;color: #333;}
/* 赠品 */
.gift-list{background-color: #fcfcfc;}
.gift-item{text-align: center;padding-top: 24px;}
.gift-item a{display: inline-block;width: 42px;height: 42px;margin-bottom: 16px;}
.gift-item a img{width: auto;height: 100%;vertical-align: middle;}
.gift-item p{color: #666;font-size: 14px;line-height: 14px;}
.complimentary{height: 90px; box-sizing: content-box !important;}
/*加价购*/
.package-list{background-color: #fcfcfc;}
.package-swiper-container{margin: 0 26px;width: 100%;overflow: hidden;}
.package-swiper-item{text-align: center;padding: 26px 0 30px;}
.package-swiper-item>a{display: inline-block;width: 66px;height: 66px;margin-bottom: 16px;}
.package-swiper-item>p{color: #999;font-size: 12px;line-height: 12px;padding: 0 12px;margin-bottom: 8px;}
.package-swiper-item>a>picture>img{width: auto;height: 100%;vertical-align: middle;}
.radio-btn-input{width: 15px;height: 15px;display: inline-block;line-height: 23px;border: #dce1e4 1px solid;border-radius: 12px;vertical-align: bottom;}
.package-price,.package-original{font-size: 12px;line-height: 15px;vertical-align: bottom;cursor: pointer;}
.package-original{color: #b7b7b7;text-decoration: line-through;}
.prevbtn,.nextbtn{display: inline-block;border-top: 2px solid;border-right: 2px solid;width: 12px;height: 12px;top: 55px;cursor: pointer;}
.prevbtn{transform: rotate(-135deg);left: 28px;}
.nextbtn{transform: rotate(45deg);right: 28px;}
/*花呗分期*/
.paymethod-radio{height: 62px;margin: 0;width: 100%;}
.paymethod-radio div{position:absolute;left:50%; top:50%; transform:translate(-50%,-50%);display: inline-table;}
.paymethod-radio p{font-size: 12px;line-height:12px;margin: 0;padding: 0;}
.fee{padding-top: 7px !important;color: #FF763D;}
.pr-10{padding: 0 10px 0 0 !important;}
/*购买数量*/
.config-input-number{position: relative;display: inline-block;border: 1px solid #dce1e4;width: 196px;height: 44px;overflow: hidden;}
.number-input{position: absolute;height: 100%;left: 0;top: 0;margin: 0;overflow: hidden;}
.number-input>input{text-align: center;border: none;width: 100%;height: 100%;font-size: 16px;padding: 11px 23px;line-height: 1;}
.number-minus,.number-add{position: absolute;width: 70px;height: 42px;cursor: pointer}
.number-minus:after{content: '';position: absolute;display: inline-block;width: 12px;height: 2px;background: #666;left: 50%;margin-left: -6px;top: 50%;margin-top: -1px;}
.number-add{right: 0}
.number-add:before{content: '';position: absolute;display: inline-block;width: 2px;height: 12px;background: #666;left: 50%;margin-left: -1px;top: 50%;margin-top: -6px;}
.number-add:after{content: '';position: absolute;display: inline-block;width: 12px;height: 2px;background: #666;left: 50%;margin-left: -6px;top: 50%;margin-top: -1px;}
/*购买按钮*/
.buying-button{padding: 50px 0;}
.ordinary-btn>a:hover{color:#666;text-decoration: none;opacity: .8}
.ordinary-btn>.btn-master:hover{color:#fff;text-decoration: none;}
.oc-btn{margin: 20px;width: 196px;height: 60px;line-height: 60px;text-align: center;border-radius: 5px;}
.btn-lesser{color: #666;background-color: #F4F4F4;font-size: 16px;transition:all .3s ease}
.btn-master{color: #fff;background-color: #05B570;font-size: 16px;transition:all .3s ease}
/*========详情========*/
.packing-list{width: 100%;padding-top: 40px;padding-bottom: 94px;background-color: #f5f5f5;}
.packing-list .products-wrapper{width: 1200px !important;height: auto;margin: 0 auto;}
.packing-list .products-wrapper .packing-details{padding: 30px 22px;background: #fff;}
.products-wrapper .packing-details a picture img{width: 100%;height: auto;}
.products-wrapper .packing-details picture img{width: 100%;height: auto;}
</style>