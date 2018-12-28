$(window).on("load",function(){
    //console.log(location.search);
    if(location.search.indexOf("lid=")!=-1){
        var lid=location.search.split("=")[1];
    }
    $.ajax({
        url:"http://localhost:3000/product",
        type:"get",
        data:{lid},
        dataType:"json",
        success: function(res) {
            //console.log(res);
            var product=res.product[0];
            //console.log(product);

            //动态加载商品
            var pimg=$("#map .img_hid");
            pimg[0].innerHTML=`<img src="${product.xl}" alt="" class="img_opc"/>`;
            pimg[1].innerHTML=`<img src="${product.lg}" alt="" class="img_opc"/>`;
            pimg[2].innerHTML=`<img src="${product.md}" alt="" class="img_opc"/>`;
            pimg[3].innerHTML=`<img src="${product.sm}" alt="" class="img_opc"/>`;
            pimg[4].innerHTML=`<img src="${product.xs}" alt="" class="img_opc"/>`;
            var addr=$("#addr");
            var html=`<h5>${product.addr}</h5>
                <h2 class="mt-3"><b>${product.pname}</b></h2>
                <p class="details_p mt-3 border-bottom pb-5">
                        <span><img src="../img/product/woshi.png" alt="" class="ml-0"/></span>${product.pbeds}间卧室
                        <span><img src="../img/product/chuang.png" alt=""/></span>${product.bed}张床
                        <span><img src="../img/product/cesuo.png" alt=""/></span>${product.lav}间卫生间
                        <span><img src="../img/product/renyuan.png" alt=""/></span>最多住${product.pnumb}人
                </p>`
            $(html).prependTo(addr);
            var html=`<p>${product.title}<br/><br/> <span>更多达人推荐</span></p>`
            addr.next().html(html);
            $("#details>div.map>p:nth-child(2)").html(`${product.addr}`)
            $("#shopping>div:first-child>b.price").html(`${product.price}`)

            //图片高亮变大
            $("div.img_hid img.img_opc").hover(function(){
                $img=$(this);
                $("#map img.img_opc").css("opacity","0.5");
                $img.css("transform","scale(1.2)");
                $img.css("opacity","1");
            },function(){
                $img=$(this);
                $("#map img.img_opc").css("opacity","1");
                $img.css("transform","scale(1)");
            })

        }
    })
})