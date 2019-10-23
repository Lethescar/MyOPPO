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

router.get("/flagship_floor",(req,res)=>{
  var sql="SELECT * FROM flagship_floor";
  pool.query(sql,(err,result)=>{
    if(err){
      throw err;
    }else{
      res.send({code:1,msg:"查询成功",data:result});
    }
  });
})

router.get("/main_floor",(req,res)=>{
  var sql="SELECT * FROM main_floor";
  pool.query(sql,(err,result)=>{
    if(err){
      throw err;
    }else{
      res.send({code:1,msg:"查询成功",data:result});
    }
  });
})

router.get("/sup_floor",(req,res)=>{
  var sql="SELECT * FROM OPPO_fittings";
  pool.query(sql,(err,result)=>{
    if(err){
      throw err;
    }else{
      res.send({code:1,msg:"查询成功",data:result});
    }
  });
})

module.exports=router;