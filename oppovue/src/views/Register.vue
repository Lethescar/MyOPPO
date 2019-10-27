<template>
    <div>
        <div class="reg_header">
            <div class="header_wrap">
                <div class="header_link">
                    <a href="javascript:;">OPPO 官网</a>
                    <a href="javascript:;">ColorOS</a>
                    <a href="javascript:;">云服务</a>
                </div>
                <div class="header_right">
                    <a href="javascript:;" class="header_faq">帮助中心</a>
                    <el-dropdown>
                        <span class="el-dropdown-link">
                            简体中文<i class="el-icon-arrow-down el-icon--right"></i>
                        </span>
                        <el-dropdown-menu slot="dropdown">
                            <el-dropdown-item>简体中文</el-dropdown-item>
                            <el-dropdown-item>繁體中文</el-dropdown-item>
                            <el-dropdown-item>English</el-dropdown-item>
                        </el-dropdown-menu>
                    </el-dropdown>
                </div>
            </div>
        </div>
        <div class="reg_box">
            <div class="box_header">
                <div class="box_header_logo"></div>
                <p>登录 OPPO 帐号可享受更多的服务</p>
            </div>
            <div class="box_content">
                <div class="index_content">
                    <div class="tab">
                        <div class="tab_item">账号注册</div>
                    </div>
                    <div class="reg_info">
                        <el-input placeholder="请输入账号" v-model="uname" @blur="unameVali"></el-input>
                        <el-input type="password" v-model="upwd" placeholder="请输入密码"></el-input>
                        <div class="voice_btn">
                            <span class="forgetpwd">密码由6-16位数字，字母或符号组成，至少包含两个字符</span>
                        </div>
                    </div>
                    <div class="passlogin">
                        <a class="primary_btn reg_btn" @click="reg">注册</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <p>© 2005 - 2019 OPPO 版权所有 粤ICP备14056724号-2 联系方式：4001-666-888</p>
        </div>
    </div>
</template>
<script>
export default {
data() {
    return {
        visible: true,
        input: '',
        uname:'',
        upwd:'',
        islogin:0,
    }
  },
  methods: {
        unameVali(){
            var url="user/vali";
            var name=this.uname;
            var obj={unickname:name};
            this.axios.get(url,{params:obj}).then(res=>{
                console.log(res);
                var code=res.data.code;
                if (code==0) {
                    this.$message({
                        showClose: true,
                        message: '用户名已经存在',
                        type: 'error'
                    });
                }
                if (code==1) {
                    this.$message({
                        showClose: true,
                        message: '用户名可用',
                        type: 'success'
                    });
                }
            });
        },
        reg(){
            var name=this.uname;
            var pwd=this.upwd;
            console.log(name+":"+pwd);
            var reg=/^[a-z0-9]{3,12}$/i;
            if (!reg.test(name)) {
                this.$message({
                    showClose: true,
                    message: '用户名格式不正确',
                    type: 'warning'
                });
            } 
            if (!reg.test(pwd)) 
            {
                this.$message({
                    showClose: true,
                    message: '密码格式不正确',
                    type: 'warning'
                });
            } 
            var url="user/reg";
            var obj={unickname:name,upwd:pwd};
            this.axios.get(url,{params:obj}).then(res=>{
                console.log(res);
                
                if (res.data.code==200) {
                    setTimeout(() => {
                        this.$router.push("/login")
                    }, 3000);
                    this.$message({
                        showClose: true,
                        message: '注册成功,自动跳转...',
                        type: 'success'
                    });
                } 
            });
        },
    },
    created() {

    },
    updated() {
        
    },
}
</script>
<style>
a{text-decoration: none;}
a:hover{text-decoration: none;}
.reg_header{
    background: transparent;
    position: relative;
    display: block;
    width: 100%;
    height: 78px;
    line-height: 78px;
    padding: 0 65px;
    font-size: 16px;
}
.header_wrap{
    width: 100%;
    height: 100%;
}
.header_link{
    float: left;
}
.header_link a{
    height: 78px;
    line-height: 78px;
    font-size: 14px;
    color: #7f7f7f;
    margin-right: 27px;
}
.header_right{
    text-align: center;
    float: right;
    position: relative;
    color: #7f7f7f;
    font-size: 14px;
}
.header_faq{
    color: #7f7f7f!important;
    font-size: 14px;
    margin-right: 27px;
    cursor: pointer;
}
.header_right .el-dropdown{
    color: #7f7f7f;
}

.reg_box{
    background: transparent;
    min-height: calc(100vh - 220px);
    position: relative;
    height: auto;
    margin-top: 0;
    width: 960px;
    margin: 0 auto 44px;
}
.box_header{
    height: 100px;
    text-align: center;
}
.box_header_logo{
    margin: 45px auto 15px;
    height: 25px;
    background: url(../../public/img/oppo.png) no-repeat 50%;
    background-size: contain;
}
.box_header p{
    font-size: 13px;
    color: #000;
    text-align: center;
    letter-spacing: 0;
}
.index_content{
    width: 380px;
    position: relative;
    border-radius: 8px;
    min-height: 375px;
    margin: 0 auto;
    background: #fff;
    padding-top: 50px;
}
.tab{
    font-weight: 500;
    margin: 0 auto 30px;
    width: 320px;
    color: #000;
    text-align: center;
}
.tab_item{
    font-size: 26px;
    line-height: 37px;
    display: block;
    color: #000;
    position: relative;
}

.reg_info .el-input__inner{
    margin: 10px 10px 10px 0;
    border: 0;
    height: 55px;
    background-color: #f7f7f7;
}
.reg_info .el-input__icon{
    height: 45%;
    margin-top: 17px;
}
.icon-show{
    content: url(../../public/img/show.png);
}
.icon-hide{
    content: url(../../public/img/hide.png);
}
.reg_info .el-form-item__content{
    margin: 0;
}
.reg_info .voice_btn{
    position: relative;
    overflow: hidden;
    width: 100%;
    margin-top: 9px;
    padding-left: 10px;
}
span.forgetpwd {
    cursor: pointer;
    color: rgba(0,0,0,.6);
    float: left;
    font-size: 12px;
}
.passlogin{
    margin-top: 26px;
    display: block;
}
.primary_btn{
    width: 300px;
    cursor: pointer;
    margin: 9px auto;
    background-color: #2ad181;
    position: relative;
    display: block;
    height: 48px;
    line-height: 48px;
    text-align: center;
    border: none;
    border-radius: 9px;
    font-size: 15px;
    color: #fff !important;
    transition: color .2s;
}
.reg_btn{
    width: 100px;
}
.primary_btn:hover{
    background-color: #4ad893;
}
.linkContainer{
    width: 300px;
    margin: 6px auto 0;
    padding-bottom: 26px;
    text-align: right;
    display: flex;
    justify-content: space-between;
}
.link{
    font-size: 12px;
    color: #2ad181;
}
.privacy {
    float: left;
    text-align: center;
    color: #6d6d6d;
}
.footer{
    position: relative;
    text-align: center;
    margin-bottom: 20px;
    margin-top: 57px;
}
.footer p{
    font-size: 12px;
    color: #9e9e9e
}
</style>