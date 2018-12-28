/**
 * Created by 蔡迦密 on 2018/11/18.
 */


$(function(){
    $("<link rel='stylesheet' href='../css/header.css'>").appendTo("head");
    $.ajax({//异步
        url:"header.html",
        type:"get",
        success:function(res){
            //res->html片段
            $(res).replaceAll("#header");
            //********************
            $("#nav_right>span").mouseenter(function(){
                $("#nav_right>span>ul").show()
            });
            $("#nav_right>span").mouseleave(function(){
                $("#nav_right>span>ul").hide()
            })
        }
    })

});


