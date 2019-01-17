/**
 * Created by web on 2018/11/20.
 */
const express=require("express");
const pool=require("../pool.js");
var router=express.Router();

router.get("/",function(req,res){
    var all={
        hotel:[/*酒店图片*/],
        starL:[/*星级酒店*/]
    };
    var sql="select * from lv_hotel";
    pool.query(sql,function(err,result){
        if(err) console.log(err);
        all.hotel=result;
        var sql="select * from lv_star";
        pool.query(sql,function(err,result){
            if(err) console.log(err);
            all.star=result;
            res.send(all);
        })
    })
})

module.exports=router;