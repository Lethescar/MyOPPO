const express=require("express")
const router=express.Router();
const pool=require("../pool")

router.get("/carousel_img",(req,res)=>{
  var sql="SELECT * FROM shopping_mall_focus";
  pool.query(sql,(err,result)=>{
    if(err){
      throw err;
    }else{
      res.send({code:1,msg:"查询成功",data:result});
    }
  });
})

module.exports=router;