const express=require("express");
const router=express.Router();
const pool=require("../pool");


router.get("/reg",(req,res)=>{
	//1、获取get请求的数据
	var obj = req.query;
	console.log(obj);
	if(!obj.unickname){
		res.send({code:401,msg:"账号不能为空"});
		return;
	}
	if(!obj.upwd){
		res.send({code:402,msg:"账号不能为空"});
		return;
	}
	//3、执行SQL语句
	var sql="insert into OPPO_user set ? ";
	pool.query(sql,[obj],(err,result)=>{
		if (err)
		{
			throw err;
		}
		//console.log(result);
		//如果插入成功
		if (result.affectedRows>0)
		{
			res.send({code:200,msg:'注册成功'});
		}
	});
});

//2、用户登录
router.get("/login",(req,res)=>{
	//6.1:接收网页传递数据 用户名和密码
	var u = req.query.uname;
	var p = req.query.upwd;
	//6.2:创建sql
	var sql = "SELECT uid FROM OPPO_user WHERE unickname = ? AND upwd = ?";
	//6.3:执行sql语句并且获取返回结果
	pool.query(sql,[u,p],(err,result)=>{
	 //6.4:判断登录是否成功
	 if(err)throw err;
	 //6.5:将结果返回网页
	 if(result.length==0){
		console.log(result);
	   res.send({code:-1,msg:"用户名或密码有误"})
	 }else{
	   //获取当前登录用户id
	  //  result=[{uid:2}]
	   var id=result[0].uid;
	   //将用户id保存session对象中
	  //  uid当前登录：用户凭证
	   req.session.uid=id;
	   console.log(req.session)
	   res.send({code:1,msg:1});
	 }
	});
  })
  
// 判断是否登录
router.get("/islogin",(req,res)=>{
    //接收参数
	var uid=req.session.uid;
	console.log(req.session);
	// 获取登录的用户名
    pool.query('select user_name from OPPO_user where uid=?',[uid],(err,result)=>{
		if(err) throw err;
		console.log(result);
		if(result.length>0){
			res.send({code:1,msg:'login suc',data:result});
		}else{
			res.send({code:-1,msg:'login err'});
		}
    })
})
// 验证用户名是否重复
router.get('/vali',(req,res)=>{
	var unickname = req.query.unickname;
	console.log(unickname);
    var sql = 'SELECT * FROM OPPO_user WHERE unickname = ?'
    pool.query(sql,[unickname],(err,result)=>{
		if(err) throw err;
		console.log(result);
        if(result.length>0){
			res.send({code:0,msg:"用户名已被占用"})
        }else{
            res.send({code:1,msg:"用户名可以使用"})
        }
    })
})
module.exports=router;