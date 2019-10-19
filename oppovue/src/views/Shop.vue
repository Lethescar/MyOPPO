<template>
    <div class="shop_main">
        <my-header></my-header>
        <carousel></carousel>
        <div class="shop-content-floor">
            <!-- 旗舰产品 -->
            <div class="flagship-floor">
                <div class="product-data">
                    <div class="pro-views-box">
                        <div class="h-100 mb-0 tab-content">
                            <div class="m-0 p-0 h-100 tab-pane">
                                <img class="w-100 h-100" src="" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style>
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
        height: 660px;
        margin-bottom:50px; 
    }
    .flagship-floor .product-data .pro-views-box{
        height: 650px;
        margin: 10px;
        position: relative;
    }
</style>