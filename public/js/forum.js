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
            //��̳ҳ�ֲ�carousel
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
    //�ֲ�
    setInterval(function(){
        var $act=$(".unfold");
        var $net=$act.next();//��һ��Ԫ��
        var $pro=$act.prev();//��һ��Ԫ��
        $act.siblings().removeClass("out");//��Ԫ�ص��ֵ��Ƴ�����class out
        $act.siblings().removeClass("active");//��Ԫ�ص��ֵ��Ƴ�����class active
        $act.removeClass("unfold").addClass("active");//��Ԫ���Ƴ�����չ��������
        if($pro.length==0){     //�����һ��Ԫ�س���Ϊ0���ֶ�ѡ��Ϊ���ĸ�ͼƬ
            $pro=$("#lunbo>div:last-child");
            $pro.addClass("out");
        }else{
            $pro.addClass("out");
        }
        if($net.length==0){     //�����һ��Ԫ�س���Ϊ0���ֶ�ѡ��Ϊ��һ��ͼƬ
            $net=$("#lunbo>div:first-child");
            $net.addClass("unfold");
        }else{
            $net.addClass("unfold");
        }
    },3000)
})