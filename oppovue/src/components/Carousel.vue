<template>
<section>
  <div id="demo" class="carousel" :style="{width:innerWidth+'px'}" @mouseenter="stop" @mouseleave="start">
      <!--1.轮播图片-->
    <div class="carousel-inner" :class="ulClass" :style="ulStyle">
      <div v-for="(img,i) of imgs" :key="i" class="carousel-item" :style="{width:innerWidth+'px'}">
        <router-link :to="img.link_to">
          <img :src="'http://127.0.0.1:8000'+img.pic_src" class="bigpic" :style="{width:innerWidth+'px'}"/>
          <img :src="'http://127.0.0.1:8000'+img.smpic_src" class="smallpic" :style="{width:innerWidth+'px'}"/>
        </router-link>
        <div class="pro_box">
          <h2 :to="img.link_to" v-text="img.title" v-bind:style=" (i==5) ? 'color:#000' : 'color:#fff'"></h2>
          <h3 :to="img.link_to" v-text="img.smalltitle" v-bind:style=" (i==5) ? 'color:#666' : 'color:#fff'"></h3>
          <div class="buy_btn" :class="(i==5)?'green_btn':''">
            <a href="javascript:;" v-text="img.btn" ></a>
          </div>
        </div>
      </div>
      <div class="carousel-item" :style="{width:innerWidth+'px'}">
        <router-link :to="imgs[0].link_to">
          <img :src="imgs[0].pic_src" :style="{width:innerWidth+'px'}"/>
        </router-link>
      </div>
    </div>
    <!--3.轮播指示符-->
    <ul class="carousel-indicators">
        <li v-for="(img,idx) of imgs" :key="idx" :class="idx==i?'active':''" @click="moveTo(idx)"></li>
    </ul>
  </div>
</section>
</template>
<script>
export default {
  data(){
    return {
      title_second:0,
      num:0,
      innerWidth:window.innerWidth,
      ulClass:{ hasTrans:true },
      i:0,
      imgs:[],
      canClick:true,
      timer:null
    }
  },
  created(){
    window.addEventListener("resize",()=>{
      this.innerWidth=window.innerWidth;
    })
    this.start();
    this.get_imgs();
  },
  methods:{
    get_imgs(){
      var url="http://localhost:8000/shop/carousel_img";
      (async ()=>{
          var result=await this.axios.get(
              url,
          );
          this.imgs=result.data.data;
      })();
    },
    stop(){
      clearInterval(this.timer);
    },
    start(){
      this.timer=setInterval(()=>{
        this.move(1);
      },5000)
    },
    move(i){
      if(this.canClick){
        this.canClick=false;
        if(i==-1&&this.i==0){
          this.ulClass.hasTrans=false;
          setTimeout(()=>{
            this.i=this.imgs.length;
            setTimeout(()=>{
              this.ulClass.hasTrans=true;
              this.i+=i;
              setTimeout(()=>{
                this.canClick=true;
              },200)
            },50)
          },50)
        }else if(i==1&&this.i==this.imgs.length-1){
          this.i+=i;
          setTimeout(()=>{
            this.ulClass.hasTrans=false;
            setTimeout(()=>{
              this.i=0;
              setTimeout(()=>{
                this.ulClass.hasTrans=true;
                setTimeout(()=>{
                  this.canClick=true;
                })
              },50)
            },50)
          },200)
        }else{
          this.i+=i;
          setTimeout(()=>{
            this.canClick=true;
          },300)
        }
      }
    },
    moveTo(i){
      if(this.canClick){
        this.i=i;
        this.canClick=false;
        setTimeout(()=>{
          this.canClick=true;
        },300)
      }
    },
  },
  computed:{
    ulStyle(){
      var width=this.innerWidth*(this.imgs.length+1)+"px";
      var marginLeft=-this.i*this.innerWidth+"px";  
      return { width, marginLeft }
    }
  }
}
</script>
<style>
  section>.carousel{
    /* margin-top:60px; */
    overflow:hidden;
  }
  section>.carousel:after{
    content:"";
    display:block;
    clear:both;
  }
   section>.carousel>.carousel-inner.hasTrans{
     transition:all .8s ease-out;
   }
  section>.carousel>.carousel-inner>.carousel-item{
    display:block;
    float:left;
  }
  section>.carousel>.carousel-inner>.carousel-item .pro_box{
    position: absolute;
    top: 50%;
    right: 20%;
    transform: translate(0%,-50%);
  }
  section>.carousel>.carousel-inner>.carousel-item .pro_box h2{
    color: #fff;
    font-size: 50px;
    margin-bottom: 20px;
  }
  section>.carousel>.carousel-inner>.carousel-item .pro_box h3{
    color: #fff;
    font-weight: normal;
    margin-bottom: 20px;
  }
  /*重写指示符的样式*/
  .carousel-indicators{
    bottom:80px;
    z-index: 2;
  }
  .carousel-indicators li{
    width:10px;height:10px;
    background-color:#a1a1a1;
    margin-left:6px;
    margin-right:6px;
    border-radius: 50%;
    top:60px;
  }
  .carousel-indicators>li:hover, .carousel-indicators>li.active{
    transform:scale(1.3)
  }
  .buy_btn a{
    color: #333;
    text-decoration: none;
    background-color: #fff;
    position: relative;
    display: inline-block;
    overflow: hidden;
    text-align: center;
    border: 1px transparent solid;
    line-height: 34px;
    width: 130px;
    height: 36px;
    border-radius: 22px;
    margin: 0 12px;
    font-size: 18px;
    transition: color 0.35s ease,border-color 0.3s ease,background-color 0.35s ease;
  }
  .buy_btn a:hover{
    background-color: #c9c9c9;
  }
  .green_btn a{
    color: #fff;
    background-color: #05B570;
  }
  .green_btn a:hover{
    background-color: rgb(4, 150, 91);
  }
  .smallpic{display: none;}
  @media (max-width: 1440px){
    section>.carousel>.carousel-inner>.carousel-item .pro_box h2{
      font-size: 40px;
      margin-bottom: 16px;
    }
    section>.carousel>.carousel-inner>.carousel-item .pro_box h3{
      font-size: 20px;
      margin-bottom: 15px;
    }
    section>.carousel>.carousel-inner>.carousel-item .pro_box{
      right: 10%;
    }
  }
  @media (max-width: 768px){
    .bigpic{display: none;}
    .smallpic{display: block;}
    section>.carousel>.carousel-inner>.carousel-item .pro_box{
      position: absolute;
      top: 20%;
      right: 50%;
      transform: translate(50%,0%);
    }
    section>.carousel>.carousel-inner>.carousel-item .pro_box h2{
      color: #fff;
      font-size: 28px;
      margin-bottom: 12px;
    }
    section>.carousel>.carousel-inner>.carousel-item .pro_box h3{
      color: #fff;
      font-weight: normal;
      font-size: 16px;
      margin-bottom: 10px;
    }
    .buy_btn a{
      display: none;
    }
  }
</style>


