/**
 * Created by 蔡迦密 on 2018/10/28.
 */
const express=require("express");
const pool=require("../pool.js");
var router=express.Router();

//注册  开始
router.post("/reg",function(req,res){
    var obj=req.body;
    var $uname=obj.uname;
    var $phone=obj.phone;
    var $email=obj.email;
    var $upwd=obj.upwd;
    var $hobby=obj.hobby;
    if(!$uname){
        res.send("用户名不能为空");
        return;
    }
    if(!$phone){
        res.send("电话不能为空");
        return;
    }
    if(!$email){
        res.send("邮箱不能为空");
        return;
    }
    if(!$upwd){
        res.send("密码不能为空");
        return;
    }
    if(!$hobby){
        $hobby=null;
    }
    pool.query("insert into lv_user values(?,?,?,?,?)",[$uname,$phone,$email,$upwd,$hobby],function(err,result){
        if(err){throw err}
        if(result.affectedRows>0){
            res.send("1")
        }else{
            res.send("0")
        }
    })
});

//姓名验证  开始
router.get("/reg_name",function(req,res){
    var obj=req.query;
    var $uname=obj.uname;
    pool.query("select * from lv_user where uname=?",$uname,function(err,result){
        if(result.length>0){
            res.send("1")
        }else{
            res.send("0")
        }
    })

})
//姓名验证  结束
//手机号验证  开始
router.get("/reg_phone",function(req,res){
    var obj=req.query;
    var $phone=obj.phone;
    pool.query("select * from lv_user where phone=?",$phone,function(err,result){
        if(result.length>0){
            res.send("1")
        }else{
            res.send("0")
        }
    })

})
//手机号验证  结束

//邮箱号验证  开始
router.get("/reg_email",function(req,res){
    var obj=req.query;
    var $email=obj.email;
    pool.query("select * from lv_user where email=?",$email,function(err,result){
        if(result.length>0){
            res.send("1")
        }else{
            res.send("0")
        }
    })

})
//邮箱号验证  结束



//注册  结束

//登陆  开始
router.post("/login",function(req,res){
    var obj=req.body;
    var $uname=obj.uname;
    var $upwd=obj.upwd;
    if(!$uname){
        res.send("用户名不能为空");
        return;
    }
    if(!$upwd){
        res.send("密码不能为空");
        return;
    }
    pool.query("select * from lv_user where uname=? and upwd=?",[$uname,$upwd],function(err,result){
        if(err){throw err}
        if(result.length>0){
            res.send("1")
        }else{
            res.send("0")
        }
    })
});
//登陆结束
module.exports=router;