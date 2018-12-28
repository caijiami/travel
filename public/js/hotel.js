/**
 * Created by web on 2018/11/20.
 */
$(window).on("load",function(){
    $.ajax({
        url:"http://localhost:3000/hotel",
        type:"get",
        dataType:"json",
        success: function(res) {

        }
    })
})