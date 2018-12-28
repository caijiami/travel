/**
 * Created by web on 2018/11/20.
 */
$(window).on("load",function(){
    $.ajax({
        url:"http://localhost:3000/food",
        type:"get",
        dataType:"json",
        success: function(res) {
            var {carousel,food}=res;
            /*
            //美食页面轮播carousel
            var html=``;
            for(var car of carousel){
                var {cid,title,src,number,data}=car;
                html+=`<div>
                <a href="" data-in='${data}'><img src="${src}" alt=""/></a>
                </div>`
            };
            $("#gd_form").html(html);
            $("#gd_form").children(":nth-child(1)").addClass("lb2_left");
            $("#gd_form").children(":nth-child(2)").addClass("lb2_middel");
            $("#gd_form").children(":nth-child(3)").addClass("lb2_right");
            $("#gd_form").children(":nth-child(4)").addClass("lb2_none");
            */
            //美食图片专栏
            var html=``;
            for(var fd of food){
                var {eid,src,lg}=fd;
                html+=`
                <div>
                    <div class="foots">
                        <img src="${src}" alt="" data-lg="${lg}"/>
                    </div>
                    <div class="foots_mb">
                        <div class="mb_wirte">
                        暖暖的很贴心✧
                        </div>
                    </div>
                </div>`
            }
            $("#food_column").html(html);
            $("#food_column>div:eq(0)").addClass("foot_er1");
            $("#food_column>div:eq(1)").addClass("foot_er2");
            $("#food_column>div:eq(2)").addClass("foot_er3");
            $("#food_column>div:eq(3)").addClass("foot_er4");
            $("#food_column>div:eq(4)").addClass("foot_er5");
            $("#food_column>div:eq(5)").addClass("foot_er6");
            $("#food_column>div:eq(6)").addClass("foot_er7");
            $("#food_column>div:eq(7)").addClass("foot_er8");
            $("#food_column>div:eq(8)").addClass("foot_er9");
            $("#food_column>div:eq(9)").addClass("foot_er10");
            $("#food_column>div:eq(10)").addClass("foot_er11");
            $("#food_column>div:eq(11)").addClass("foot_er12");
            //jquery
            //美食图片移入事件 .foots_mb{top: -250px;opacity: 0}
            $(".foot_baba>div").hover(function(){
                $div=$(this);
                $div.children(".foots_mb").addClass("mb_cts")
            },function(){
                $div=$(this);
                $div.children(".foots_mb").removeClass("mb_cts")
            })
            //美食图片切换  foot_baba   every morning lunch supper
            var $d1=$(".foot_er1");
            var $d2=$(".foot_er2");
            var $d3=$(".foot_er3");
            var $d4=$(".foot_er4");
            var $d5=$(".foot_er5");
            var $d6=$(".foot_er6");
            var $d7=$(".foot_er7");
            var $d8=$(".foot_er8");
            var $d9=$(".foot_er9");
            var $d10=$(".foot_er10");
            var $d11=$(".foot_er11");
            var $d12=$(".foot_er12");
            $("#every").on("click",function(){
                $d1.css("transform","scale(1)");
                $d12.removeClass("cover_er1");
                $d3.css("transform","scale(1)");
                $d10.removeClass("cover_er3");
                $d5.css("transform","scale(1)");
                $d11.removeClass("cover_er5");
                $d2.css("transform","scale(1)");
                $d8.removeClass("cover_er2");
                $d4.css("transform","scale(1)");
                $d9.removeClass("cover_er4");
                $d6.css("transform","scale(1)");
                $d7.removeClass("cover_er6");
                $d10.css("transform","scale(1)");
                $d11.css("transform","scale(1)");
                $d12.css("transform","scale(1)");
            });
            $("#morning").on("click",function(){
                $("#every").click();
                $d1.css("transform","scale(0)");
                $d12.addClass("cover_er1");
                $d3.css("transform","scale(0)");
                $d10.addClass("cover_er3");
                $d5.css("transform","scale(0)");
                $d11.addClass("cover_er5");
            });
            $("#lunch").on("click",function(){
                $("#every").click();
                $d2.css("transform","scale(0)");
                $d8.addClass("cover_er2");
                $d4.css("transform","scale(0)");
                $d9.addClass("cover_er4");
                $d6.css("transform","scale(0)");
                $d7.addClass("cover_er6");
                $d10.css("transform","scale(0)");
                $d11.css("transform","scale(0)");
                $d12.css("transform","scale(0)");
            });
            $("#supper").on("click",function(){
                $("#every").click();
                $d1.css("transform","scale(0)");
                $d12.addClass("cover_er1");
                $d3.css("transform","scale(0)");
                $d10.addClass("cover_er3");
                $d5.css("transform","scale(0)");
                $d11.addClass("cover_er5");
                $d2.css("transform","scale(0)");
                $d8.addClass("cover_er2");
                $d4.css("transform","scale(0)");
                $d9.addClass("cover_er4");
                $d6.css("transform","scale(0)");
                $d7.addClass("cover_er6");
            })
        }
    })



})