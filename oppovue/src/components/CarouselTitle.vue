<template>
<section>
  <div id="demo" class="carousel" :style="{width:innerWidth+'px'}" @mouseenter="stop" @mouseleave="start">
      <!--1.轮播图片-->
    <div class="carousel-inner" :class="ulClass" :style="ulStyle">
      <div v-for="(img,i) of imgs" :key="i" class="carousel-item" :style="{width:innerWidth+'px'}">
        <router-link :to="img.to" v-text="img.title"></router-link>
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
      imgs:[
        {
          src:"/img/shop1.jpg",
          title:"《Ghost Mane》| STARR J与恶魔一起住在Dark Castle",
          to:"javascript:;"
        },
        { 
          src:"/img/shop2.jpg",
          title:"赐我们一首比“情歌而已”更值得唱的歌 声音碎片第三支预热单曲《送流水》首发",
          to:"javascript:;"
        },
        { 
          src:"/img/shop3.jpg",
          title:"我眼里只有一个3号他永远昂着头 | 黄旭全新单曲《低位》致敬韦德",
          to:"javascript:;"
        },
        { 
          src:"/img/shop4.jpg",
          title:"彭坦春晓携女率性玩音乐 Modern Sky Kids厂牌汇聚亲子市场新能量",
          to:"javascript:;"
        },
      ],
      canClick:true,
      timer:null
    }
  },
  created(){
    window.addEventListener("resize",()=>{
      this.innerWidth=window.innerWidth;
    })
    this.start();
  },
  methods:{
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
  /*重写指示符的样式*/
  .carousel-indicators{
    bottom:80px;
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
  .shop_pro_title{
    position: absolute;
    left: 65%;
    top: 50%;
    display: none;
    transition: left .2s;
  }
  .shop_pro_title_move{
    display: block;
    left:55%;
  }
</style>


