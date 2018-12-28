/**
 * Created by web on 2018/11/20.
 */
const express=require("express");
const pool=require("../pool.js");
var router=express.Router();

router.get("/",function(req,res){
    var lid=req.query.lid;
    var all={
        product:[/*商品列表 */]
    };
    var sql="select * from lv_product where lid=?";
    pool.query(sql,[lid],function(err,result){
        if(err) console.log(err);
        all.product=result;
        res.send(all);
    })
})

module.exports=router;