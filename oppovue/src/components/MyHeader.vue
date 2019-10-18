<template>
    <header class="header-container">
        <div class="header-nav position-relative">
            <div class="nav-logo">
                <a href="javascript:;">
                    <img src="../../public/img/oppo.png" alt="">
                </a>
            </div>
            <div class="header-nav-menu"  @click="changeicon()">
                <a href="javascript:;" class="nav-menu">
                    <b v-bind:class="count==1?'openmenu':''"><em v-bind:class="count==1?'line':''"></em></b>
                </a>
            </div>
            <div class="nav_title">
                <el-menu class="el-menu-demo" mode="horizontal" @select="handleSelect">
                    <el-submenu index="1">
                        <template slot="title">Find系列</template>
                        <div class="d-flex m_center">
                            <el-menu-item index="1-1" v-for="(item,items) in nav1" :key="items">
                                <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                                <h3 v-text="item.nname"></h3>
                                <p class="navpro-tag" v-text="item.is_new"></p>
                            </el-menu-item>
                        </div>
                    </el-submenu>
                    <el-submenu index="2">
                        <template slot="title">Reno系列</template>
                        <div class="d-flex m_center">
                            <el-menu-item index="2-1" v-for="(item,items) in nav2" :key="items">
                                <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                                <h3 v-text="item.nname"></h3>
                                <p class="navpro-tag" v-text="item.is_new"></p>
                            </el-menu-item>
                        </div>
                    </el-submenu>
                    <el-submenu index="3">
                        <template slot="title">R系列</template>
                        <div class="d-flex m_center">
                            <el-menu-item index="3-1" v-for="(item,items) in nav3" :key="items">
                                <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                                <h3 v-text="item.nname"></h3>
                                <p class="navpro-tag" v-text="item.is_new"></p>
                            </el-menu-item>
                        </div>
                    </el-submenu>
                    <el-submenu index="4">
                        <template slot="title">A系列</template>
                        <div class="d-flex m_center">
                            <el-menu-item index="4-1" v-for="(item,items) in nav4" :key="items">
                                <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                                <h3 v-text="item.nname"></h3>
                                <p class="navpro-tag" v-text="item.is_new"></p>
                            </el-menu-item>
                        </div>
                    </el-submenu>
                    <el-submenu index="5">
                        <template slot="title">K系列</template>
                        <div class="d-flex m_center">
                            <el-menu-item index="5-1" v-for="(item,items) in nav5" :key="items">
                                <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                                <h3 v-text="item.nname"></h3>
                                <p class="navpro-tag" v-text="item.is_new"></p>
                            </el-menu-item>
                        </div>
                    </el-submenu>
                    <el-submenu index="6">
                        <template slot="title">配件</template>
                        <div class="d-flex m_center">
                            <el-menu-item index="6-1" v-for="(item,items) in nav6" :key="items">
                                <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                                <h3 v-text="item.nname"></h3>
                                <p class="navpro-tag" v-text="item.is_new"></p>
                            </el-menu-item>
                        </div>
                    </el-submenu>
                    <el-menu-item index="7">服务</el-menu-item>
                    <el-menu-item index="8">商城</el-menu-item>
                </el-menu>
            </div>
            <div class="nav-bag">
                <el-row>
                    <el-col :span="12">
                        <el-dropdown trigger="click" placement="bottom">
                            <span class="el-dropdown-link">
                                <img src="../../public/img/shopping_bag.png" alt="">
                            </span>
                            <el-dropdown-menu slot="dropdown">
                                <el-dropdown-item>
                                    <img src="../../public/img/shopping_trolley.png" alt="">
                                    购物车
                                </el-dropdown-item>
                                <el-dropdown-item>
                                    <img src="../../public/img/personal_center.png" alt="">
                                    个人中心
                                </el-dropdown-item>
                                <el-dropdown-item>
                                    <img src="../../public/img/register.png" alt="">
                                    登录
                                </el-dropdown-item>
                            </el-dropdown-menu>
                        </el-dropdown>
                    </el-col>
                </el-row>
            </div>
        </div>
        <div class="nav-menu-list" v-bind:class="count==0?'menulist':''">
            <el-collapse v-model="activeName" accordion>
                <el-collapse-item title="Find 系列" name="1">
                    <div class="menu-list-item" v-for="(item,items) in nav1" :key="items">
                        <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                        <h3 v-text="item.nname"></h3>
                        <p class="navpro-tag" v-text="item.is_new"></p>
                    </div>
                </el-collapse-item>
                <el-collapse-item title="Reno系列" name="2">
                    <div class="menu-list-item" v-for="(item,items) in nav2" :key="items">
                        <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                        <h3 v-text="item.nname"></h3>
                        <p class="navpro-tag" v-text="item.is_new"></p>
                    </div>
                </el-collapse-item>
                <el-collapse-item title="R系列" name="3">
                    <div class="menu-list-item" v-for="(item,items) in nav3" :key="items">
                        <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                        <h3 v-text="item.nname"></h3>
                        <p class="navpro-tag" v-text="item.is_new"></p>
                    </div>
                </el-collapse-item>
                <el-collapse-item title="A系列" name="4">
                    <div class="menu-list-item" v-for="(item,items) in nav4" :key="items">
                        <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                        <h3 v-text="item.nname"></h3>
                        <p class="navpro-tag" v-text="item.is_new"></p>
                    </div>
                </el-collapse-item>
                <el-collapse-item title="K系列" name="5">
                    <div class="menu-list-item" v-for="(item,items) in nav5" :key="items">
                        <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                        <h3 v-text="item.nname"></h3>
                        <p class="navpro-tag" v-text="item.is_new"></p>
                    </div>
                </el-collapse-item>
                <el-collapse-item title="配件" name="6">
                    <div class="menu-list-item" v-for="(item,items) in nav6" :key="items">
                        <img :src="'http://127.0.0.1:8000'+item.npic" alt="">
                        <h3 v-text="item.nname"></h3>
                        <p class="navpro-tag" v-text="item.is_new"></p>
                    </div>
                </el-collapse-item>
                <div class="list-item"><a href="javascript:;">服务</a></div>
                <div class="list-item last-item"><a href="javascript:;">商城</a></div>
            </el-collapse>
        </div>
    </header>
</template>
<script>
export default {
    data() {
        return {
            activeName: '',
            navlist:[],
            count:1,
        }
    },
    methods: {
        handleSelect(key, keyPath) {
            console.log(key, keyPath);
        },
        get_header_nav(){
            var url="http://localhost:8000/index/header_nav";
            (async ()=>{
                var result=await this.axios.get(
                    url,
                );
                this.navlist=result.data.data;
                console.log(this.navlist);
            })();
        },
        changeicon(){
            if(this.count==0){
                this.count=1;
                return;
            }
            if (this.count==1) {
                this.count=0;
                return;
            }
        },
    },
    computed: {
		nav1: function () {
			return this.navlist.slice(0, 3)
		},
		nav2: function () {
			return this.navlist.slice(3, 7)
		},
		nav3: function () {
			return this.navlist.slice(7, 10)
		},
		nav4: function () {
			return this.navlist.slice(10, 15)
		},
		nav5: function () {
			return this.navlist.slice(15, 17)
        },
        nav6: function () {
			return this.navlist.slice(17, 22)
		},
	},
    created() {
        this.get_header_nav();
        this.changeicon();
    },
}
</script>

<style>
header {width:100%;font-size: 14px;background-color: transparent;position: absolute;z-index: 9;}
a{color:#333;text-decoration: none;transition: opacity 0.3s ease,color 0.35s ease;}
/* 导航栏 */
.header-container .nav_title{width: 79%;height: 60px;margin: auto;}
.header-container .el-menu{background-color: transparent;}
.header-container .el-menu.el-menu--horizontal{width: 100%;display: flex;justify-content: center;z-index: 999 !important;}
.el-menu.el-menu--horizontal{border-bottom: none !important;}
.header-container .el-menu--horizontal>.el-menu-item.is-active {border-bottom: 0;color: #303133;}
.header-container .el-menu::after, .el-menu::before {display: none;content: "";}
.header-container .el-menu--horizontal>.el-submenu .el-submenu__icon-arrow {margin-left: 0px;}
.header-container .el-icon-arrow-down:before{display: none;}
.el-menu--horizontal{left: 0 !important;width: 100%;top: 0 !important;z-index: 5 !important;}
.header-container .el-menu-item:hover {background-color: transparent !important;}
.header-container .el-submenu__title{transition: none;}
.header-container .el-menu--horizontal>.el-submenu .el-submenu__title{color: #333;}
.header-container .el-menu--horizontal>.el-menu-item{color: #333;}
.header-container .el-menu--horizontal>.el-submenu .el-submenu__title:hover{color: #909399;}
.header-container .el-menu--horizontal>.el-menu-item:hover{color: #909399;}
.el-menu--popup{box-shadow: 0px 20vh 0 100vh rgba(0,0,0,.1) !important;}
.el-menu--horizontal .el-menu--popup{height: 330px;overflow: hidden;}
.el-menu--horizontal>.el-submenu .el-submenu__title:hover {background-color: transparent !important;}
.header-nav{width: 1200px;margin: 0 auto;}
.nav-item{line-height: 60px;z-index: 5;padding: 0 25px;}
.nav-item a:hover{opacity: .6;}
.show-item{position: relative;z-index: 5;}
.el-menu--horizontal>.el-submenu.is-active .el-submenu__title{border-bottom: 0 !important;}
.el-submenu.is-active .el-submenu__title{border-bottom: 0;}
/* logo */
.nav-logo{padding: 0 10px !important;position: absolute;left: 0;height: 20px;width: 126px;line-height: 60px;z-index: 999;}
.nav-logo a img{height: 100%;}
.nav-logo a:hover{opacity: 1;}
/* 购物袋 */
.nav-bag{padding: 0 10px !important;position: absolute;right: 0;top:0; height: 24px;line-height: 60px;z-index: 999;}
.el-dropdown-link{cursor: pointer;}
.el-dropdown-link img{width: 24px;}
/* 购物袋下拉 */
.el-dropdown-menu{width: 270px;height: 180px;}
.el-popper{margin: 0 !important;}
.el-dropdown-menu__item{padding: 12px 0 !important;margin: 0 28px !important;line-height: 28px !important;color: #333;opacity: 1;transition: opacity .5s ease !important;font-weight: bold;}
.el-dropdown-menu__item:hover{opacity: .6 !important;color: #333 !important;}
.el-dropdown-menu__item img{width: 20px;margin: -4px 20px 0 10px;}
/* 下拉框 */
.m_center{width: 100%;margin: 87px auto 0 auto;justify-content: center;height: 230px;}
.el-menu-item img{width: 155px;}
.el-menu-item h3{font-size: 16px;color: #333;font-weight: normal;line-height: 18px;transition: color 0.35s ease;margin-top: 10px;}
.el-menu-item h3:hover{color: #909399;}
.el-menu-item p{text-align: center;font-size: 14px;color: #1BC9BE;font-weight: normal;line-height: 20px;transition: opacity 0.35s ease;}
.el-menu-item p:hover{opacity: .6;}
.el-menu--horizontal .el-menu .el-menu-item, .el-menu--horizontal .el-menu .el-submenu__title{height: 100% !important;width: 195px; text-align: center;}
.el-menu--popup-bottom-start{margin-top: 0 !important;}
/* 响应式 */
.header-nav-menu{position: absolute;top:0;z-index: 5;}
.header-nav-menu .nav-menu{padding: 0 10px;height: 100%;display: flex;color: #333;}
.header-nav-menu .nav-menu b{position: relative;width: 18px;height: 12px;display: inline-block;top: 50%;transform: translate(0,-50%)}
.header-nav-menu .nav-menu b::before{top: 0;width: 100%;background-color: #1a1a1a;height: 1px;position: absolute;left: 0;transition: transform .5s;}
.header-nav-menu .nav-menu b em{width: 72.22%;position: absolute;left: 0;height: 1px;background-color: #1a1a1a;transition: opacity .5s;}
.header-nav-menu .nav-menu b::after{bottom: 0;width: 100%;background-color: #1a1a1a;height: 1px;position: absolute;left: 0;transition: transform .5s;}
.openmenu::before{transform: matrix(0.70711, 0.70711, -0.70711, 0.70711, 0, 5.3);}
.openmenu::after{transform: matrix(0.70711, -0.70711, 0.70711, 0.70711, 0, -6);}
.line{opacity: 0 !important;}
.menulist{display: none;}
.el-collapse{position: relative; top: 60px;left: 40px; width: 90%;}
.list-item{text-align: left;height: 48px;line-height: 48px;border-bottom: 1px solid #EBEEF5;cursor: pointer;background-color: #fff;}
.list-item a{text-decoration: none;}
.list-item a:hover{color: #303133;}
.last-item{border: 0px;}
/* .menulist{} */
@media (max-width: 1260px) {
    .header-nav{
        width: auto;
        margin: 0 30px;
    }
}
@media (max-width: 768px) {
    .nav-logo{
        left: 50%;
        transform: translate(-50%,0%);
    }
    .header-container .nav_title{
        display: none;
    }
    .header-nav{
        margin: 0;
        max-height: 44px;
    }
    .header-nav-menu{
        left: 5px;
        display: block;
        height: 60px;
    }
    .header-nav-menu .nav-menu b::before{
        display: inline-block;
        content: '';
    }
    .header-nav-menu .nav-menu b::after{
        display: inline-block;
        content: '';
    }
    .header-nav-menu .nav-menu b em{
        display: inline-block;
        transition-delay: .1s;
        content: '';
        top: 50%;
        margin-top: -1px;
    }
    .el-dropdown-menu{
        width: 100%;
        box-shadow: 0px 20vh 0 100vh rgba(0, 0, 0, 0.2) !important;
    }
    .nav-menu-list{
        position: relative;
        background-color: #fff;
        height: 100vh;
    }
    .menu-list-item{
        position: relative;
        height: 95px;
    }
    .menu-list-item img{
        padding-top:10px; 
        width: 70px;
        position: absolute;
        left: 0;
    }
    .menu-list-item h3{
        cursor: pointer;
        font-size: 14px;
        color: #333;
        font-weight: normal;
        position: absolute;
        right: 50px;
        top: 50%;
        transform: translate(0,-50%);
        display: inline-block;
        width: 170px;
    }
    .menu-list-item p{
        cursor: pointer;
        font-size: 13px;
        display: inline-block;
        width: 170px;
        font-size: 14px;
        color: #1BC9BE;
        font-weight: normal;
        position: absolute;
        right: 50px;
        top: 55px;
    }
    .menu-list-item h3:hover{opacity: .8;}
    .menu-list-item p:hover{opacity: .6;}
}
</style>