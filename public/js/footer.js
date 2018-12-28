/**
 * Created by web on 2018/11/21.
 */
$(function(){
    $("<link rel='stylesheet' href='../css/footer.css'>").appendTo("head");
    $.ajax({//“Ï≤Ω
        url:"footer.html",
        type:"get",
        success:function(res){
            //res->html∆¨∂Œ
            $(res).replaceAll("#footer");
            //********************
        }
    })

});