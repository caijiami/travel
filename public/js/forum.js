/**
 * Created by web on 2018/11/20.
 */
$(window).on("load",function(){
    $.ajax({
        url:"http://localhost:3000/forum",
        type:"get",
        dataType:"json",
        success: function(res) {
            var {carousel}=res;
            //论坛页轮播carousel
            var html=``;
            for(var car of carousel){
                var {cid,title,src,number,data}=car;
                html+=`<div class="lun_item" data-in='${data}'>
                <img src="${src}" alt=""/>
                </div>`
            };
            $("#lunbo").html(html);
            $("#lunbo>div:first-child").addClass("unfold");
        }
    })
    //轮播
    setInterval(function(){
        var $act=$(".unfold");
        var $net=$act.next();//下一个元素
        var $pro=$act.prev();//上一个元素
        $act.siblings().removeClass("out");//让元素的兄弟移除所有class out
        $act.siblings().removeClass("active");//让元素的兄弟移除所有class active
        $act.removeClass("unfold").addClass("active");//让元素移除自身展开让它收
        if($pro.length==0){     //如果上一个元素长度为0就手动选定为第四个图片
            $pro=$("#lunbo>div:last-child");
            $pro.addClass("out");
        }else{
            $pro.addClass("out");
        }
        if($net.length==0){     //如果下一个元素长度为0就手动选定为第一个图片
            $net=$("#lunbo>div:first-child");
            $net.addClass("unfold");
        }else{
            $net.addClass("unfold");
        }
    },3000)
})