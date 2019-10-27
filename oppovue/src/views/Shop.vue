<template>
    <div class="shop_main">
        <my-header></my-header>
        <carousel></carousel>
        <div class="shop-content-floor">
            <!-- 旗舰产品 -->
            <div class="flagship-floor">
                <div class="product-data">
                    <el-tabs type="border-card">
                        <el-tab-pane v-for="(item,index) of flagship_imgs[0]" :key="index" :style="item.bgcolor">
                            <a href="javascript:;" class="pro_tag" v-text="item.is_new"></a>
                            <span slot="label">
                                <i class="annulus" v-bind:style="item.border_color"></i>
                                <i class="circle" v-bind:style="item.color"></i>
                            </span>
                            <div class="pro-views-box">
                                <ul class="h-100 mb-0 pro-tab-content">
                                    <li class="m-0 p-0 h-100 tab-pane">
                                        <img class="w-100 h-100 bigimg" :src="'http://127.0.0.1:8000'+item.images" alt="">
                                        <div class="smimg_box">
                                            <img class="smimg leftimg" :src="'http://127.0.0.1:8000'+item.fsmimgs" alt="">
                                            <img class="smimg rightimg" :src="'http://127.0.0.1:8000'+item.ssmimgs" alt="">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="pro-model-title">
                                <div class="title-box w-100 text-white text-center ">
                                    <div class="product-title m-0 py-0">
                                        <h3 v-text="item.phone_name"></h3>
                                        <h4 v-text="item.spec"></h4>
                                    </div>
                                </div>
                            </div>
                            <p class="pro_price" v-text="item.price"></p>
                            <div class="pro_buy_btn">
                                <a href="javascript:;" v-text="item.btn"></a>
                            </div>
                        </el-tab-pane>
                    </el-tabs>
                </div>
                <div class="product-data second">
                    <el-tabs type="border-card">
                        <el-tab-pane v-for="(item,index) of flagship_imgs[1]" :key="index" :style="item.bgcolor">
                            <a href="javascript:;" class="pro_tag" v-text="item.is_new"></a>
                            <span slot="label">
                                <i class="annulus" v-bind:style="item.border_color"></i>
                                <i class="circle" v-bind:style="item.color"></i>
                            </span>
                            <div class="pro-views-box">
                                <ul class="h-100 mb-0 pro-tab-content">
                                    <li class="m-0 p-0 h-100 tab-pane">
                                        <img class="w-100 h-100 bigimg" :src="'http://127.0.0.1:8000'+item.images" alt="">
                                        <div class="smimg_box">
                                            <img class="smimg leftimg" :src="'http://127.0.0.1:8000'+item.fsmimgs" alt="">
                                            <img class="smimg rightimg" :src="'http://127.0.0.1:8000'+item.ssmimgs" alt="">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="pro-model-title" :class="item.pos">
                                <div class="title-box w-100 text-white text-center ">
                                    <div class="product-title m-0 py-0">
                                        <h3 v-text="item.phone_name"></h3>
                                        <h4 v-text="item.spec"></h4>
                                    </div>
                                </div>
                            </div>
                            <p class="pro_price" :class="item.pos" v-text="item.price"></p>
                            <div class="pro_buy_btn" :class="item.pos">
                                <a href="javascript:;" v-text="item.btn"></a>
                            </div>
                        </el-tab-pane>
                    </el-tabs>
                </div>
                <div class="product-data">
                    <el-tabs type="border-card">
                        <el-tab-pane v-for="(item,index) of flagship_imgs[2]" :key="index" :style="item.bgcolor">
                            <a href="javascript:;" class="pro_tag" v-text="item.is_new"></a>
                            <span slot="label">
                                <i class="annulus" v-bind:style="item.border_color"></i>
                                <i class="circle" v-bind:style="item.color"></i>
                            </span>
                            <div class="pro-views-box">
                                <ul class="h-100 mb-0 pro-tab-content">
                                    <li class="m-0 p-0 h-100 tab-pane">
                                        <img class="w-100 h-100 bigimg" :src="'http://127.0.0.1:8000'+item.images" alt="">
                                        <div class="smimg_box">
                                            <img class="smimg leftimg" :src="'http://127.0.0.1:8000'+item.fsmimgs" alt="">
                                            <img class="smimg rightimg" :src="'http://127.0.0.1:8000'+item.ssmimgs" alt="">
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="pro-model-title">
                                <div class="title-box w-100 text-white text-center ">
                                    <div class="product-title m-0 py-0">
                                        <h3 v-text="item.phone_name"></h3>
                                        <h4 v-text="item.spec"></h4>
                                    </div>
                                </div>
                            </div>
                            <p class="pro_price" v-text="item.price"></p>
                            <div class="pro_buy_btn">
                                <a href="javascript:;" v-text="item.btn"></a>
                            </div>
                        </el-tab-pane>
                    </el-tabs>
                </div>
            </div>
            <!-- 次推产品 -->
            <div class="main-floor">
                <div class="main-floor-box">
                    <div class="main-product-data" v-for="(it,i) of mainfloor_imgs" :key="i">
                        <div class="pro-views-box">
                            <a href="javascript:;">
                                <el-tabs type="border-card">
                                    <el-tab-pane v-for="(item,index) of mainfloor_imgs[i]" :key="index" :style="item.bgcolor">
                                        <a href="javascript:;" class="pro_tag" v-text="item.is_new" :style="item.is_new=='0' ? 'display:none':'display:block'"></a>
                                        <span slot="label">
                                            <i class="annulus" v-bind:style="item.border_color"></i>
                                            <i class="circle" v-bind:style="item.color"></i>
                                        </span>
                                        <div class="main-pro-views">
                                            <ul class="h-100 mb-0 pro-tab-content">
                                                <li class="m-0 p-0 h-100 tab-pane">
                                                    <img class="w-100" :src="'http://127.0.0.1:8000'+item.images" alt="">
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="pro-model-title">
                                            <div class="title-box w-100 text-white text-center ">
                                                <div class="product-title m-0 py-0">
                                                    <h3 v-text="item.phone_name"></h3>
                                                    <h4 v-text="item.spec"></h4>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="pro_price" v-text="item.price"></p>
                                        <div class="pro_buy_btn">
                                            <a href="javascript:;" v-text="item.btn"></a>
                                        </div>
                                    </el-tab-pane>
                                </el-tabs>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 配件 -->
            <div class="sup-parts-container">
                <p class="title">配件</p>
                <div class="sup-product-floor">
                    <div class="sup-pro-box">
                        <el-tabs type="border-card">
                            <el-tab-pane label="推荐">
                                <div class="nice-pro">
                                    <div class="supeffet-pro-views" v-for="(img,sub) of supfloor_imgs[0]" :key="sub" :class="sub==0?'sup-pro-views':''">
                                        <div class="supeffet-pro">
                                            <a href="javascript:;">
                                                <span class="product-tag" v-text="img.is_new" :style="img.is_new=='0' ? 'display:none':'display:block'"></span>
                                                
                                                <div class="img-box" :class="sub==0?'first-img':''">
                                                    <img class="w-100" :src="'http://127.0.0.1:8000'+img.fittings_pic" alt="">
                                                </div>
                                                <div class="title-box" :class="sub==0?'first-title':''">
                                                    <h4 v-text="img.fname"></h4>
                                                    <h5 v-text="img.price"></h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </el-tab-pane>
                            <el-tab-pane label="耳机">
                                <div class="nice-pro">
                                    <div class="supeffet-pro-views" v-for="(img,sub) of supfloor_imgs[1]" :key="sub" :class="sub==0?'sup-pro-views':'supeffet-pro-views'">
                                        <div class="supeffet-pro">
                                            <a href="javascript:;">
                                                <span class="product-tag" v-text="img.is_new" :style="img.is_new=='0' ? 'display:none':'display:block'"></span>
                                                
                                                <div class="img-box" :class="sub==0?'first-img':''">
                                                    <img class="w-100" :src="'http://127.0.0.1:8000'+img.fittings_pic" alt="">
                                                </div>
                                                <div class="title-box" :class="sub==0?'first-title':''">
                                                    <h4 v-text="img.fname"></h4>
                                                    <h5 v-text="img.price"></h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </el-tab-pane>
                            <el-tab-pane label="数据线/适配器">
                                <div class="nice-pro">
                                    <div class="supeffet-pro-views" v-for="(img,sub) of supfloor_imgs[2]" :key="sub" :class="sub==0?'sup-pro-views':'supeffet-pro-views'">
                                        <div class="supeffet-pro">
                                            <a href="javascript:;">
                                                <span class="product-tag" v-text="img.is_new" :style="img.is_new=='0' ? 'display:none':'display:block'"></span>
                                                
                                                <div class="img-box" :class="sub==0?'first-img':''">
                                                    <img class="w-100" :src="'http://127.0.0.1:8000'+img.fittings_pic" alt="">
                                                </div>
                                                <div class="title-box" :class="sub==0?'first-title':''">
                                                    <h4 v-text="img.fname"></h4>
                                                    <h5 v-text="img.price"></h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </el-tab-pane>
                            <el-tab-pane label="移动电源">
                                <div class="nice-pro">
                                    <div class="supeffet-pro-views" v-for="(img,sub) of supfloor_imgs[3]" :key="sub" :class="sub==0?'sup-pro-views':'supeffet-pro-views'">
                                        <div class="supeffet-pro">
                                            <a href="javascript:;">
                                                <span class="product-tag" v-text="img.is_new" :style="img.is_new=='0' ? 'display:none':'display:block'"></span>
                                                
                                                <div class="img-box" :class="sub==0?'first-img':''">
                                                    <img class="w-100" :src="'http://127.0.0.1:8000'+img.fittings_pic" alt="">
                                                </div>
                                                <div class="title-box" :class="sub==0?'first-title':''">
                                                    <h4 v-text="img.fname"></h4>
                                                    <h5 v-text="img.price"></h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </el-tab-pane>
                            <el-tab-pane label="超值套餐">
                                <div class="nice-pro">
                                    <div class="supeffet-pro-views" v-for="(img,sub) of supfloor_imgs[4]" :key="sub" :class="sub==0?'sup-pro-views':'supeffet-pro-views'">
                                        <div class="supeffet-pro">
                                            <a href="javascript:;">
                                                <span class="product-tag" v-text="img.is_new" :style="img.is_new=='0' ? 'display:none':'display:block'"></span>
                                                
                                                <div class="img-box" :class="sub==0?'first-img':''">
                                                    <img class="w-100" :src="'http://127.0.0.1:8000'+img.fittings_pic" alt="">
                                                </div>
                                                <div class="title-box" :class="sub==0?'first-title':''">
                                                    <h4 v-text="img.fname"></h4>
                                                    <h5 v-text="img.price"></h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </el-tab-pane>
                            <el-tab-pane label="保护壳">
                                <div class="nice-pro">
                                    <div class="supeffet-pro-views" v-for="(img,sub) of supfloor_imgs[5]" :key="sub" :class="sub==0?'sup-pro-views':'supeffet-pro-views'">
                                        <div class="supeffet-pro">
                                            <a href="javascript:;">
                                                <span class="product-tag" v-text="img.is_new" :style="img.is_new=='0' ? 'display:none':'display:block'"></span>
                                                
                                                <div class="img-box" :class="sub==0?'first-img':''">
                                                    <img class="w-100" :src="'http://127.0.0.1:8000'+img.fittings_pic" alt="">
                                                </div>
                                                <div class="title-box" :class="sub==0?'first-title':''">
                                                    <h4 v-text="img.fname"></h4>
                                                    <h5 v-text="img.price"></h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </el-tab-pane>
                            <el-tab-pane label="其他">
                                <div class="nice-pro">
                                    <div class="supeffet-pro-views" v-for="(img,sub) of supfloor_imgs[6]" :key="sub" :class="sub==0?'sup-pro-views':'supeffet-pro-views'">
                                        <div class="supeffet-pro">
                                            <a href="javascript:;">
                                                <span class="product-tag" v-text="img.is_new" :style="img.is_new=='0' ? 'display:none':'display:block'"></span>
                                                
                                                <div class="img-box" :class="sub==0?'first-img':''">
                                                    <img class="w-100" :src="'http://127.0.0.1:8000'+img.fittings_pic" alt="">
                                                </div>
                                                <div class="title-box" :class="sub==0?'first-title':''">
                                                    <h4 v-text="img.fname"></h4>
                                                    <h5 v-text="img.price"></h5>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </el-tab-pane>
                        </el-tabs>
                    </div>
                </div>
            </div>
            <div class="shop-footer-services">
                <div class="services-wrapper">
                    <ul class="oc-row d-flex">
                        <li class="oc-item">
                            <a href="javascript:;">
                                <img class="oc-icon" src="../../public/img/footer-ser1.png" alt="">
                                <span>1 年全国联保</span>
                            </a>
                        </li>
                        <li class="oc-item">
                            <a href="javascript:;">
                                <img class="oc-icon" src="../../public/img/footer-ser2.png" alt="">
                                <span>7 天退货保障</span>
                            </a>
                        </li>
                        <li class="oc-item">
                            <a href="javascript:;">
                                <img class="oc-icon" src="../../public/img/footer-ser3.png" alt="">
                                <span>30 天换货保障</span>
                            </a>
                        </li>
                        <li class="oc-item">
                            <a href="javascript:;">
                                <img class="oc-icon" src="../../public/img/footer-ser4.png" alt="">
                                <span>全场包邮</span>
                            </a>
                        </li>
                        <li class="oc-item">
                            <a href="javascript:;">
                                <img class="oc-icon" src="../../public/img/footer-ser5.png" alt="">
                                <span>900 家售后网点</span>
                            </a>
                        </li>
                        <li class="oc-item">
                            <a href="javascript:;">
                                <img class="oc-icon" src="../../public/img/footer-ser6.png" alt="">
                                <span>正品保障</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <my-footer></my-footer>
    </div>
</template>
<script>
export default {
    data() {
        return {
            flagship_imgs:[],
            mainfloor_imgs:[],
            supfloor_imgs:[]
        }
    },
    methods: {
        get_flagship(){
            this.flagship_imgs=[];
            var url="http://localhost:8000/shop/flagship_floor";
            (async ()=>{
                var result=await this.axios.get(
                    url,
                );
                var all_img=result.data.data;
                var flagship_img1=[];
                var flagship_img2=[];
                var flagship_img3=[];
                for (var key of all_img) {
                    // console.log(key.family_id)
                    if (key.family_id==1) {
                        flagship_img1.push(key);
                    }else if(key.family_id==2){
                        flagship_img2.push(key);
                    }else{
                        flagship_img3.push(key);
                    }
                }
                this.flagship_imgs.push(flagship_img1);
                this.flagship_imgs.push(flagship_img2);
                this.flagship_imgs.push(flagship_img3);
            })();
        },
        get_mainfloor(){
            this.mainfloor_imgs=[];
            var url="http://localhost:8000/shop/main_floor";
            (async ()=>{
                var result=await this.axios.get(
                    url,
                );
                var all_img=result.data.data;
                var mainfloor_img1=[];
                var mainfloor_img2=[];
                var mainfloor_img3=[];
                var mainfloor_img4=[];
                var mainfloor_img5=[];
                var mainfloor_img6=[];
                var mainfloor_img7=[];
                var mainfloor_img8=[];
                for (var key of all_img) {
                    // console.log(key.family_id)
                    if (key.family_id==1) {
                        mainfloor_img1.push(key);
                    }else if(key.family_id==2){
                        mainfloor_img2.push(key);
                    }else if(key.family_id==3){
                        mainfloor_img3.push(key);
                    }else if(key.family_id==4){
                        mainfloor_img4.push(key);
                    }else if(key.family_id==5){
                        mainfloor_img5.push(key);
                    }else if(key.family_id==6){
                        mainfloor_img6.push(key);
                    }else if(key.family_id==7){
                        mainfloor_img7.push(key);
                    }else{
                        mainfloor_img8.push(key);
                    }
                }
                this.mainfloor_imgs.push(mainfloor_img1);
                this.mainfloor_imgs.push(mainfloor_img2);
                this.mainfloor_imgs.push(mainfloor_img3);
                this.mainfloor_imgs.push(mainfloor_img4);
                this.mainfloor_imgs.push(mainfloor_img5);
                this.mainfloor_imgs.push(mainfloor_img6);
                this.mainfloor_imgs.push(mainfloor_img7);
                this.mainfloor_imgs.push(mainfloor_img8);
            })();
        },
        get_supfloor(){
            this.supfloor_imgs=[];
            var url="http://localhost:8000/shop/sup_floor";
            (async ()=>{
                var result=await this.axios.get(
                    url,
                );
                var all_img=result.data.data;
                var supfloor_img1=[];
                var supfloor_img2=[];
                var supfloor_img3=[];
                var supfloor_img4=[];
                var supfloor_img5=[];
                var supfloor_img6=[];
                var supfloor_img7=[];
                var supfloor_img8=[];
                for (var key of all_img) {
                    // console.log(key.family_id)
                    if (key.sortid==1) {
                        supfloor_img1.push(key);
                    }else if(key.sortid==2){
                        supfloor_img2.push(key);
                    }else if(key.sortid==3){
                        supfloor_img3.push(key);
                    }else if(key.sortid==4){
                        supfloor_img4.push(key);
                    }else if(key.sortid==5){
                        supfloor_img5.push(key);
                    }else if(key.sortid==6){
                        supfloor_img6.push(key);
                    }else if(key.sortid==7){
                        supfloor_img7.push(key);
                    }
                }
                this.supfloor_imgs.push(supfloor_img1);
                this.supfloor_imgs.push(supfloor_img2);
                this.supfloor_imgs.push(supfloor_img3);
                this.supfloor_imgs.push(supfloor_img4);
                this.supfloor_imgs.push(supfloor_img5);
                this.supfloor_imgs.push(supfloor_img6);
                this.supfloor_imgs.push(supfloor_img7);
                // console.log(this.supfloor_imgs);
            })();
        }
    },
    created() {
        this.get_flagship();
        this.get_mainfloor();
        this.get_supfloor();
    },
}
</script>
<style>
    .shop_main{background-color: #f4f4f4;}
    ul{padding: 0;}
    /* 导航 */
    .shop_main .nav-logo a img{position: relative;top: -48px;border-right: 18px solid transparent;filter: drop-shadow(0px 48px #d3d3d3);}
    .shop_main .nav-bag img{position: relative;top: -48px;border-right: 0px solid transparent;filter: drop-shadow(0px 48px #d3d3d3);}
    .shop_main .header-container .el-menu--horizontal>.el-menu-item{color: #d3d3d3;}
    .shop_main .header-container .el-menu--horizontal>.el-menu-item:hover{color: #a8a8a8;}
    .shop_main .el-menu--horizontal>.el-submenu .el-submenu__title{color: #d3d3d3 !important;}
    .shop_main .el-menu--horizontal>.el-submenu .el-submenu__title:hover {color: #a8a8a8 !important;}
    .shop_main .header-nav-menu .nav-menu b::before{background-color: #d3d3d3;}
    .shop_main .header-nav-menu .nav-menu b::after{background-color: #d3d3d3;}
    .shop_main .header-nav-menu .nav-menu b em{background-color: #d3d3d3;}
    /* 产品 */
    .shop-content-floor{
        padding-top: 50px;
    }
    /* 旗舰产品 */
    .flagship-floor{
        width: 1200px;
        margin: 0 auto;
    }
    .product-data{
        position: relative;
        height: 650px;
        margin-bottom:50px; 
    }
    .flagship-floor .product-data .pro-views-box{
        height: 650px;
        position: relative;
    }
    .pro-tab-content{list-style: none;}
    .pro-model-title{position: absolute;top: 30%;transform: translate(0,-50%);color: #000;width: 50%;}
    .product-title h3,h4{color:#333;}
    .product-title h3{font-size: 25px;font-weight: normal;}
    .product-title h4{font-size: 36px;font-weight: normal;}
    .smimg{display: none;}
    .bigimg{display: block;}
    /* 商品标签 */
    .pro_tag{
        color: #00c678;
        border: 1px solid #00c678;
        background-color: rgba(0,198,120,0.15);
        position: absolute;
        left: 40px;
        top: 40px;
        width: 77px;
        height: 28px;
        line-height: 28px;
        border-radius: 3px;
        font-size: 14px;
        text-align: center;
        z-index: 8;
        display: inline-block;
    }
    .product-data .pro_price{
        width: 50%;
        font-weight: bold;
        font-size: 30px;
        position: absolute;
        bottom:35%;
        left: 0%;
    }
    .product-data .pro_buy_btn{
        width: 50%;
        left: 0;
        bottom: 30%;
        position: absolute;
    }
    .product-data .pro_buy_btn a{
        width: 148px;
        height: 44px;
        border-radius: 22px;
        line-height: 42px;
        margin-top: 16px;
        font-size: 18px;
        border: 1px transparent solid;
        color: #fff;
        background-color: #05B570;
        display: inline-block;
        margin-bottom: 0;
        text-align: center;
        vertical-align: middle;
        transition: background-color 0.35s ease;
        text-decoration: none;
    }
    .product-data .pro_buy_btn a:hover{
        background-color: rgb(5, 150, 92);
    }
    .right{right: 0 !important;left:inherit !important;}
    /* 颜色按钮 */
    .shop_main .el-tabs--border-card>.el-tabs__header{position: absolute;width: 50%;top: 40%;}
    .shop_main .el-tabs--border-card{border: none;background:none;}
    .shop_main .el-tabs--border-card>.el-tabs__content{padding: 0;}
    .shop_main .el-tabs--top.el-tabs--border-card>.el-tabs__header .el-tabs__item:last-child{padding: 0;}
    .shop_main .el-tabs--border-card>.el-tabs__header .el-tabs__item.is-active{background-color: transparent;border-right: none;border-left: none;}
    .shop_main .el-tabs--border-card>.el-tabs__header{background-color: transparent;border-bottom: none;}
    .shop_main .el-tabs__item{padding: 10px;}
    .shop_main .el-tabs--top.el-tabs--border-card>.el-tabs__header .el-tabs__item:nth-child(2){padding: 10px !important;}
    .shop_main .el-tabs--top.el-tabs--border-card>.el-tabs__header .el-tabs__item:last-child{padding: 10px;}
    .shop_main .el-tabs--border-card>.el-tabs__header .el-tabs__item{border: none;}
    .shop_main .el-tabs__item{line-height: normal;}
    .shop_main .el-tabs__item span{width: 20px;height: 20px;display: block}
    .shop_main .el-tabs__item.is-active span .annulus{border: 3px solid;width: 28px;height: 28px;display: block;border-radius: 50%;position: absolute;left: 4px;top: 4px;}
    .shop_main .el-tabs__item span .circle{width: 16px;height: 16px;display: block;border-radius: 50%;}
    .shop_main .el-tabs__content{overflow: initial;}
    .shop_main .el-tabs__nav{position: relative;left: 50%;transform: translate(-50%,0%) !important;}
    .shop_main .second .el-tabs--border-card>.el-tabs__header{right: 0;}
    .shop_main .second p{color: #fff;}
    .shop_main .second h3{color: #fff;}
    .shop_main .second h4{color: #fff;}
    .smimg_box{display: flex;width: 473px;height: 330px;position: absolute;left: 50%;top: 18%;transform: translate(-50%,0);cursor: pointer;}
    .leftimg{height: 100%;position: absolute;left: 50px;}
    .rightimg{height: 100%;position: absolute;right: 50px;transition: right .4s}
    .rightimg:hover{right: 40px;}
    /* 响应式 */
    @media (max-width: 1440px){
        .flagship-floor{
            width: 900px;
        }
        .product-data{
            height: 480px;
        }
        .flagship-floor .product-data .pro-views-box{
            height: 480px;
        }
        .product-title h4{
            font-size: 32px;
        }
        .product-title h3{
            font-size: 22px;
        }
        .product-data{
            margin-bottom: 20px;
        }
        .main-floor{
            width: 914px !important;
        }
        .main-floor .main-product-data{
            margin-bottom: 20px !important;
        }
        .main-floor .pro-views-box{
            margin: 0 10px !important;
        }
        .main-floor{margin-top: 50px !important;}
    }
    @media (max-width: 768px){
        /* 头部内边距 */
        .shop-content-floor{
            padding-top: 0;
        }
        .product-data{
            margin-bottom: 0;
        }
        .smimg{display: block;}
        .bigimg{display: none;}
        .flagship-floor{
            width: 100%;
        }
        .pro_tag{
            top: 20px;
            left: 20px;
        }
        .product-data .pro_buy_btn{
            display: none;
        }
        .pro-model-title{
            left: 50%;
            top: 5%;
            width: 100%;
            transform: translate(-50%,0)
        }
        .shop_main .el-tabs--border-card>.el-tabs__header{
            top: 80%;
            width: 100%;
        }
        .product-data .pro_price{
            width: 100%;
            bottom: -1%;
            font-weight: 100;
        }
        .second .pro-model-title{
            transform: translate(0,0)
        }
        .second .right{
            left: unset !important;
            right: unset !important;
        }
    }

    /* 次推产品 */
    .main-floor{
        width: 1200px;
        margin: auto;
        margin-top: 100px;
    }
    .main-floor-box{
        margin: -20px;
        display: flex;
        flex-wrap: wrap;
    }
    .main-product-data{
        width: 50%;
        /* height: 780px; */
    }
    .main-floor .pro-views-box {
        position: relative;
        height: 740px;
        margin: 0 20px;
        background-color: #fff;
    }
    .main-floor .el-tabs--border-card{
        height: 100%;
    }
    .main-floor .pro-model-title{width: 100%;}
    .main-floor a:hover{text-decoration: none;color: #333;}
    .main-floor a p{
        font-size: 30px;
        position: absolute;
        bottom: 2%;
        width: 100%;
    }
    .main-floor .el-tabs--border-card>.el-tabs__content{height: 100%;}
    /* 图片 */
    .main-pro-views{
        position: absolute;
        top: 10%;
    }
    /* 标题 */
    .main-floor .pro-model-title{
        bottom:6%;
        top:unset;
    }
    /* 颜色按钮 */
    .main-floor .el-tabs--border-card>.el-tabs__header {
        width: 100%;
        bottom: 26%;
        top: unset;
    }
    /* 字体大小 */
    .main-floor .product-title h3{font-size: 36px;}
    .main-floor .product-title h4{font-size: 20px;}

    .main-floor .main-product-data{margin-bottom: 40px;}

    /* 阴影 */
    .main-floor .el-tabs--border-card{
        box-shadow: none;
        transition: box-shadow .2s;
    }
    .main-floor .el-tabs--border-card:hover{
        box-shadow: 0px 0px 20px 3px rgba(0,0,0,.12), 0 0 20px 11px rgba(0,0,0,.04);
    }


    /* 响应式  次推 */
     @media (max-width: 1440px){
        .main-floor{
            width: 914px;
        }
        .main-floor .main-product-data{
            margin-bottom: 20px;
        }
        .main-floor .pro-views-box{
            margin: 0 10px;
            height: 580px;
        }
        .main-floor{margin-top: 50px;}
        .main-floor .product-title h3{
            font-size: 22px;
            font-weight: bold;
        }
        .main-floor .product-title h4{
            font-size: 15px;
        }
    }
    @media (max-width: 768px){
        .main-floor{
            width: 100% !important;
        }
        .main-floor .pro-views-box{
            height: 540px;
            margin: 4px 15px;
        }
        .main-floor .main-product-data{
            width: 100%;
        }
        .main-pro-views{
            width: 100%;
        }
        .main-floor .tab-pane img{
            height: 240px;
            width: auto !important;
        }
        .main-floor .el-tabs--border-card>.el-tabs__header{
            bottom: 34%;
        }
        .main-floor .pro-model-title{
            bottom: 17%;
        }
        .main-floor .product-title h3{
            font-size: 30px;
            font-weight: bold;
        }
        .main-floor .product-title h4{
            font-size: 22px;
        }
    }

    /* 配件 */
    .sup-parts-container .el-tabs--border-card{
        height: 100%;
        position: relative;
    }
    .sup-parts-container .el-tabs--border-card>.el-tabs__header{
        width: auto;
        top: unset;
        right: 0;
        position: relative;
    }
    .sup-parts-container{
        width: 1200px;
        margin: auto;
        position: relative;
    }
    .sup-parts-container .el-tabs--border-card>.el-tabs__header .el-tabs__item.is-active{
        background-color: #fff;
        border-radius: 25px;
    }
    .sup-parts-container .el-tabs--border-card>.el-tabs__content{
        position: relative;
        top:-6px;
        /* margin: 20px; */
        width: 100%;
    }
    .sup-parts-container .el-tabs--border-card>.el-tabs__header .el-tabs__item{
        padding: 0 22px !important;
        line-height: 41px;
        margin: 20px;
        font-weight: bold;
    }
    .sup-parts-container .el-tabs--top.el-tabs--border-card>.el-tabs__header .el-tabs__item:nth-child(2){
        padding: 0 22px !important;
    }
    .sup-parts-container .el-tabs--border-card>.el-tabs__header .el-tabs__item:not(.is-disabled):hover{
        color: #06B570;
    }
    .sup-parts-container .el-tabs--border-card>.el-tabs__header .el-tabs__item.is-active{
        color: #06B570;
    }

    /* 首推产品盒子大小 */
    .sup-product-floor{
        width: 1200px;
        height: 100%;
    }
    .sup-pro-box{
        margin: -20px;
        height: 100%;
    }
    .nice-pro{
        flex-wrap: wrap;
        display: flex;
    }
    .sup-pro-views{
        /* margin: 20px; */
        height:440px;
        width: 50% !important;
        position: relative;
        display: block;
        /* background-color: #fff; */
    }
    .supeffet-pro-views{
        width: 25%;
        height: 440px;
    }
    .sup-pro,.supeffet-pro{
        overflow: hidden;
        height: 400px;
        margin: 20px;
        background: #fff;
    }
    .sup-parts-container .el-tabs--border-card{
        box-shadow: none;
    }
    .sup-parts-container .product-tag{
        color: #00c678;
        border: 1px solid #00c678;
        background-color: rgba(0,198,120,0.15);
        position: absolute;
        left: 40px;
        top: 40px;
        width: 77px;
        height: 28px;
        line-height: 28px;
        border-radius: 3px;
        font-size: 14px;
        text-align: center;
        z-index: 9;
        display: inline-block;
    }
    .sup-parts-container .title-box{
        display: inline-block;
        top: 82%;
        position: relative;
        text-align: center;
        color: #333;
        z-index: 1;
        margin-top: 56px;
    }
    .sup-parts-container .title-box h4{
        font-size: 20px;
    }
    .sup-parts-container .first-title h4{
        font-size: 24px;
    }
    .sup-parts-container .first-img img{
        margin-top: 0; 
    }
    .sup-parts-container .first-title{
        position: absolute;
        width: 50%;
        left: 0%;
        top: 50%;
        margin-top: 0;
        transform: translate(0,-50%);
    }
    .sup-parts-container a:hover{text-decoration: none;color: #333;}
    .img-box{
        text-align: center;
        margin: 0;
    }
    .img-box img{
        margin-top: 50px;
    }
    .sup-parts-container .title{
        font-size: 26px;
        position: absolute;
        left: 0;
        top:27px;
        display: block;
    }
    .sup-parts-container .el-tabs__nav{transform: translate(0,0) !important;left: unset;}
    .sup-parts-container .el-tabs--border-card>.el-tabs__header{right: 0;}
    .sup-parts-container .el-tabs__nav{float: right;}
    /* 响应式 */
    @media (max-width: 1440px){
        .sup-parts-container{
            width: 914px;
        }
        .sup-product-floor{
            width: 914px;
        }
        .sup-pro, .supeffet-pro {
            margin: 10px;
        }
        .sup-parts-container .el-tabs--border-card>.el-tabs__header{
            top: 8px;
        }
    }
    @media (max-width: 768px){
        .sup-parts-container .title{
            display: none;
        }
        .title-box h5{display: none;}
        .sup-parts-container .el-tabs--border-card>.el-tabs__header .el-tabs__item{
            margin: 20px 10px;
        }
        .sup-parts-container{
            width: 100%;
        }
        .sup-product-floor{
            width: 100%;
        }
        .supeffet-pro-views{
            width: 50%;
        }
        .sup-pro-views{
            width: 100% !important;
        }
        .supeffet-pro-views{
            height: 280px;
        }
        .sup-pro, .supeffet-pro{
            height: 270px;
            margin: 5px;
        }
        .img-box img{
            width: 50% !important;
        }
        .sup-parts-container .title-box{
            margin-top:45px;
        }
        .sup-parts-container .first-title{
            margin-top: 0;
        }
        .sup-parts-container .el-tabs__nav{
            float: left;
            padding-left: 30px;
        }
    }

    /* 底部 */
    .shop-footer-services{
        height: 205px;
        width: 100%;
        margin-top: 80px;
        background: #fff;
        
    }
    .services-wrapper{
        height: 100%;
        position: relative;
        width: 1200px;
        margin: 0 auto;
        border-bottom: 1px solid rgba(153,153,153,0.4);
        background: #fff;
    }
    .services-wrapper a{text-decoration: none;color: #333;}
    .services-wrapper a:hover{color: #aaaaaa}
    .services-wrapper .oc-row{
        list-style: none;
        justify-content: center;
        padding-top: 50px;
    }
    .services-wrapper li{
        margin: 0 30px;
    }
    .services-wrapper li i{
        display: inline-block;
        width: 100%;
        height: 100%;
    }
    .oc-icon{width: 60px;}
    .services-wrapper span{display: block;margin-top: 20px;}
    /* 响应式 */
    @media (max-width: 1024px){
        .services-wrapper{
            width: 100%;
        }
        .oc-icon{width: 38%;}
        .services-wrapper span{font-size: 14px;}
        .services-wrapper li{
            margin: 0 20px;
        }
    }
    @media (max-width: 768px) {
        .services-wrapper li{
           width: 50%;
           margin: 20px 0;
        }
        .services-wrapper .oc-row{
            flex-wrap: wrap;
        }
        .shop-footer-services{
            height: 100%;
        }
        .oc-icon{width: 20%;}
        .services-wrapper span{font-size: 22px;}
    }
</style>