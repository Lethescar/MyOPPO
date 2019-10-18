const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/header_nav",(req,res)=>{
  // var id=req.query.id;
  var sql="SELECT * FROM oppo_nav";
  pool.query(sql,(err,result)=>{
    if(err){
      throw err;
    }else{
      res.send({code:1,msg:"查询成功",data:result});
    }
  });
})

module.exports=router;