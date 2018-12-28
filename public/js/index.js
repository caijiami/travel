/**
 * Created by 蔡迦密 on 2018/11/19.
 */
$(function(){
    $("#nav_right>span").mouseenter(function(){
        $("#nav_right>span>ul").show()
    });
    $("#nav_right>span").mouseleave(function(){
        $("#nav_right>span>ul").hide()
    })
});

//轮播
$(window).on("load",function(){
    $.ajax({
        url:"http://localhost:3000/index",
        type:"get",
        dataType:"json",
        success: function(res){
            var {carousel,flow,site,meal}=res;
            //首页轮播carousel
            var html=``;
            for(var car of carousel){
                var {cid,title,src,number,data}=car;
                html+=`<div class="lun_item" data-in='${data}'>
                <a href='HTML/product.html?lid=${data}'><img src="${src}" alt=""/></a>
                </div>`
            }
            var lunbo=document.getElementById("lunbo");
            lunbo.innerHTML=html;
            lunbo.firstElementChild.classList.add("unfold");
            //首页待办事项列表
            var html=``;
            for(var flo of flow){
                var {fid,caption,title,src}=flo;
                html+=`
                <div class="col-lg-4 col-md-12">
                 <div class="plan_div">
                    <p><img src="${src}" alt="" class="plan_img1"/></p>
                    <p class="plans_p2">${caption}</p>
                    <p class="pb-5">${title}</p>
                 </div>
                </div>`
            }
            $("#flow").html(html);
            $("#flow>div:eq(0)").addClass("plan_left");
            $("#flow>div:eq(1)").addClass("plan_center");
            $("#flow>div:eq(2)").addClass("plan_right");
            $("#flow>div:eq(3)").addClass("plan_left");
            $("#flow>div:eq(4)").addClass("plan_center");
            $("#flow>div:eq(5)").addClass("plan_right");
            //首页热门地点
            var html=``;
            for(var sit of site){
                var {sid,caption,title,src,data}=sit;
                html+=`
                    <div class="col-md-12 col-lg-5 place">
                        <div class="border p-3 media bg-light reverX">
                            <img src="${src}"
                        class="mr-3  img-fluid"/>
                            <div class="media-body align-self-center">
                                <h3>${caption}</h3>
                                <p>${title}</p>
                                <p><a href="HTML/product.html?lid=${data}" class="btn btn-outline-info btn-lg" 
                                data-in='${data}'>立即探索</a></p>
                            </div>
                        </div>
                </div>`
            }
            $("#section_4>div:nth-child(2)").html(html);
            //首页热门旅游套餐
                //左边
            var html=``;
            var mea1=meal.slice(0,6);
            for(var mea of mea1){
                var {mid,place,price,data}=mea;
                html+=`<p class="d-flex justify-content-between mt-4">
                ${place}<a href="HTML/product.html?lid=${data}" class="btn btn-light font-weight-bold" data-in='${data}'>${price}</a>
                </p>`
            }
            $("#prices>div.plan_left>div.taocan").append(html);
                //中间
            var html=``;
            var mea2=meal.slice(6,12);
            for(var mea of mea2){
                var {mid,place,price,data}=mea;
                html+=`<p class="d-flex justify-content-between mt-4">
                    ${place}<a href="HTML/product.html?lid=${data}" class="btn btn-light font-weight-bold" data-in='${data}'>${price}</a>
                </p>`
            }
            $("#prices>div.plan_center>div.taocan").append(html);
                //右边
            var html=``;
            var mea3=meal.slice(12,18);
            for(var mea of mea3){
                var {mid,place,price,data}=mea;
                html+=`<p class="d-flex justify-content-between mt-4">
                    ${place}<a href="HTML/product.html?lid=${data}" class="btn btn-light font-weight-bold" data-in='${data}'>${price}</a>
                </p>`
            }
            $("#prices>div.plan_right>div.taocan").append(html);
        }
    });




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