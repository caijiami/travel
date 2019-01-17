/**
 * Created by web on 2018/11/20.
 */
const express=require("express");
const pool=require("../pool.js");
var router=express.Router();

router.get("/",function(req,res){
    var all={
        carousel:[/*放轮播图四个对象*/]
    };
    var sql="select * from lv_carousel where number=2";
    pool.query(sql,function(err,result){
        if(err) console.log(err);
        all.carousel=result;
        res.send(all);
    })
})

module.exports=router;