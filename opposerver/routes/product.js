const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/product",(req,res)=>{
	var sql="SELECT * FROM OPPO_phone_pic";
	pool.query(sql,(err,result)=>{
		if (err)
		{
			throw err;
		}else
		{
			res.send({code:1,msg:"查询成功",data:result});
		}
	});
});
module.exports=router;