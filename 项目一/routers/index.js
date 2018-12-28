/**
 * Created by 蔡迦密 on 2018/11/19.
 */
const express=require("express");
const pool=require("../pool.js");
var router=express.Router();

router.get("/",function(req,res){
    var all={
        carousel:[/*放轮播图四个对象*/],
        flow:[/*放待办流程六个对象*/],
        site:[/*热门地点四个对象*/],
        meal:[/*底部套餐18个对象*/]
    };
    var sql="select * from lv_carousel where number=1";
    pool.query(sql,function(err,result){
        if(err) console.log(err);
        all.carousel=result;
        var sql="select * from lv_flow";
        pool.query(sql,function(err,result){
            if(err) console.log(err);
            all.flow=result;
            var sql="select * from lv_site";
            pool.query(sql,function(err,result){
                if(err) console.log(err);
                all.site=result;
                var sql="select * from lv_meal";
                pool.query(sql,function(err,result){
                    if(err) console.log(err);
                    all.meal=result;
                    res.send(all);
                })
            })
        })
    })
});

module.exports=router;