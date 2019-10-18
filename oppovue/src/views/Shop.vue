<template>
    <div class="shop_main">
        <my-header></my-header>
        <carousel></carousel>
        
    </div>
</template>
<script>
export default {
    
}
</script>
<style>
    .shop_main .nav-logo a img{position: relative;top: -48px;border-right: 18px solid transparent;filter: drop-shadow(0px 48px #d3d3d3);}
    .shop_main .nav-bag img{position: relative;top: -48px;border-right: 0px solid transparent;filter: drop-shadow(0px 48px #d3d3d3);}
    .shop_main .header-container .el-menu--horizontal>.el-menu-item{color: #d3d3d3;}
    .shop_main .header-container .el-menu--horizontal>.el-menu-item:hover{color: #a8a8a8;}
    .shop_main .el-menu--horizontal>.el-submenu .el-submenu__title{color: #d3d3d3 !important;}
    .shop_main .el-menu--horizontal>.el-submenu .el-submenu__title:hover {color: #a8a8a8 !important;}
    .shop_main .header-nav-menu .nav-menu b::before{background-color: #d3d3d3;}
    .shop_main .header-nav-menu .nav-menu b::after{background-color: #d3d3d3;}
    .shop_main .header-nav-menu .nav-menu b em{background-color: #d3d3d3;}
</style>