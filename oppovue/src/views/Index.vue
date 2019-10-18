<template>
    <div>
        <my-header></my-header>
        <main class="container-fluid w-100 p-0">
            <div class="main-banner">
                <div class="banner-wrapper position-relative">
                    <div class="banner-title-wrapper">
                        <div class="banner-title">
                            <div>
                                <h2>OPPO Reno2</h2>
                                <h3>变焦四摄，远近都清晰</h3>
                            </div>
                            <div class="banner-link-btn">
                                <a href="javascript:;">了解更多</a>
                            </div>
                        </div>
                    </div>
                    <div class="banner-pic">
                        <img class="big-screen-pic" src="../../public/img/big_banner.jpg"  width="100%"/>
                        <img class="small-screen-pic" src="../../public/img/small_banner.jpg" width="100%"/>
                    </div>
                </div>
            </div>
            <div class="home-promos">
                <div class="home-promos-list row m-0 d-flex">
                    <div class="promos-item col-md-6 col-sm-12 px-0">
                        <div class="promos-detail">
                            <a class="promos-link" href="javascript:;">
                                <picture>
                                    <img src="../../public/img/index_lefttop.jpg" alt="">
                                </picture>
                                <div class="promos-title">
                                    <h1 style="color: white">K3 硬核少年</h1>
                                    <h2 style="color: white">骁龙 710 | 光感屏幕指纹</h2>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="promos-item col-md-6 col-sm-12 px-0">
                        <div class="promos-detail">
                            <a class="promos-link" href="javascript:;">
                                <picture>
                                    <img src="../../public/img/index_righttop.jpg" alt="">
                                </picture>
                                <div class="promos-title">
                                    <h1 style="color: white">Reno Z</h1>
                                    <h2 style="color: white">VOOC 3.0 | 4800 万超清像素</h2>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="promos-item col-md-6 col-sm-12 px-0">
                        <div class="promos-detail">
                            <a class="promos-link" href="javascript:;">
                                <picture>
                                    <img src="../../public/img/index_leftbottom.jpg" alt="">
                                </picture>
                                <div class="promos-title">
                                    <h1 style="color: white">OPPO 影像创作大赛</h1>
                                    <h2 style="color: white">视界之外 | SEE BEYOND</h2>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="promos-item col-md-6 col-sm-12 px-0">
                        <div class="promos-detail">
                            <a class="promos-link" href="javascript:;">
                                <picture>
                                    <img src="../../public/img/index_rightbottom.jpg" alt="">
                                </picture>
                                <div class="promos-title">
                                    <h1 style="color: white">21 天手机拍照养成计划</h1>
                                    <h2 style="color: white">用 Reno 拍下精彩世界</h2>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <my-footer></my-footer>
    </div>
</template>
<script>
export default {
    
}
</script>
<style scoped>
body{margin: 0;padding: 0}
main{position: absolute;top: 0;position: relative}
my-footer{position: absolute;top: 0}
.banner-wrapper{min-height: 320px;height: 100vh;overflow: hidden;}
.main-banner .banner-title-wrapper{position: relative;top: 0;z-index: 3;padding-top: 120px;}
.main-banner .banner-pic{overflow: hidden;}
.main-banner .banner-pic img{position: absolute;left: 50%;top: 50%;transform: translate(-50%, -50%);overflow: hidden;width: auto;height: 100%}
.banner-title{text-align: center;margin: 0 auto;display: inline-block;}
.banner-title>div>h2{font-size: 38px;margin-bottom: 2px;}
.banner-title>div>h3{font-size: 22px;}
.banner-title .banner-link-btn{padding-top: 32px;}
.banner-title .banner-link-btn a{color: #FFFFFF;background-color: #333333;border-color: #333333;display: inline-block;border: 1px solid;line-height: 38px;width: 130px;height: 40px;border-radius: 22px;margin: 0 12px;font-size: 16px;transition: color 0.35s ease,border-color 0.3s ease,background-color 0.35s ease,opacity 0.35s ease;}
.banner-title .banner-link-btn a:hover{opacity: .7;text-decoration: none;}
@media (min-width: 768px){
    .small-screen-pic{display: none}
}
@media (max-width: 767px){
    .big-screen-pic,.banner-link-btn{display: none}
}
.home-promos{position: relative;display: inline-block;width: 100%;height: 100%;overflow: hidden;}
.home-promos-list{position: relative; margin: 0 -2px !important;flex-wrap: wrap;}
.promos-item{position: relative;margin-top: 4px;overflow: hidden;width: 100%;height: auto;}
.promos-detail{height: 100%;position: relative;margin: 0 2px;overflow: hidden;}
.promos-link picture{width: 100%;height: 100%;}
.promos-link picture img{width: 100%}
.promos-title{position: absolute;display: block;top: 0;width: 100%;padding-top: 40px;text-align: center;}
.promos-title h1{line-height: 1.37;font-size: 20px;}
.promos-title h2{line-height: 1.37;font-size: 15px;margin-top: 5px;}
</style>