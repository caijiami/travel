/**
 * Created by 蔡迦密 on 2018/10/28.
 */
//导入模块
const express=require("express");
const bodyParser=require("body-parser");
const cors=require("cors");
//引入路由文件
const userRouter=require("./routers/user");
const index=require("./routers/index");
const forum=require("./routers/forum.js");
const hotHotel=require("./routers/hotHotel.js");
const food=require("./routers/food.js");
const hotel=require("./routers/hotel.js");
const product=require("./routers/product.js");
var app=express();
app.listen(3000,function(){
    console.log("创建服务器成功")
});
app.use(bodyParser.urlencoded({
    extended:false
}));
app.use(express.static("public"));
app.use(cors({
    orgin:"http://127.0.0.1:5500"
}));

//路由挂载
app.use("/user",userRouter);
app.use("/index",index);
app.use("/forum",forum);
app.use("/hotHotel",hotHotel);
app.use("/food",food);
app.use("/hotel",hotel);
app.use("/product",product);
