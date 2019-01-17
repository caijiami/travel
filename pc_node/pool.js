/**
 * Created by 蔡迦密 on 2018/10/28.
 */
const mysql=require("mysql");
var pool=mysql.createPool({
    host:"127.0.0.1",
    port:"3306",
    user:"root",
    password:"",
    database:"lv",
    connectionLimit:15
});
module.exports=pool;
