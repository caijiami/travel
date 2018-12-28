/**
 * Created by web on 2018/11/20.
 */
$(window).on("load",function(){
    $.ajax({
        url:"http://localhost:3000/hotHotel",
        type:"get",
        dataType:"json",
        success: function(res) {
            var {hotel,star}=res;
            // 星级酒店图标
            var html=``;
            for(var st of star){
                html+=`<li><a href="${st.href}"><img src="${st.src}" alt=""/><p>${st.caption}</p></a></li>`
            };
            $("#brand").html(html);
            //一楼酒店图
            var html=``;
            var hot1=hotel.slice(0,6);
            for(var hot of hot1){
                var {hid,caption,title,src,data}=hot;
                html+=`
                    <div class="col-lg-4 col-md-12 hotel animated">
                    <div class="position-relative hotel_div">
                    <a href="product.html?lid=${data}">
                    <img src="${src}" alt="" class="w-100"/>
                    </a>
                    </div>
                    <span class="hotel_sp sp_bg1">${caption}</span>
                    <p class="hotel_p">${title}</p>
                    <a href="product.html?lid=${data}" class="hotel_a" data-in='${data}'>查看酒店   ></a>
                    </div>`
            }
            $("#hot_one").html(html);
            //二楼酒店图
            var html=``;
            var hot2=hotel.slice(6,12);
            for(var hot of hot2){
                var {hid,caption,title,src,data}=hot;
                html+=`
            <div class="col-lg-4 col-md-12 hotel animated">
                <div class="position-relative hotel_div">
                <a href="product.html?lid=${data}">
                <img src="${src}" alt="" class="w-100"/>
                </a>
                </div>
                <span class="hotel_sp sp_bg2">${caption}</span>
                <p class="hotel_p">${title}</p>
                <a href="product.html?lid=${data}" class="hotel_a" data-in='${data}'>查看酒店   ></a>
                </div>`
            }
            $("#hot_two").html(html);
            //三楼酒店图
            var html=``;
            var hot3=hotel.slice(12,18);
            for(var hot of hot3){
                var {hid,caption,title,src,data}=hot;
                html+=`
            <div class="col-lg-4 col-md-12 hotel animated">
                <div class="position-relative hotel_div">
                <a href="product.html?lid=${data}">
                <img src="${src}" alt="" class="w-100"/>
                </a>
                </div>
                <span class="hotel_sp sp_bg3">${caption}</span>
                <p class="hotel_p">${title}</p>
                <a href="product.html?lid=${data}" class="hotel_a" data-in='${data}'>查看酒店   ></a>
                </div>`
            }
            $("#hot_swe").html(html);
            //四楼酒店图
            var html=``;
            var hot4=hotel.slice(18,24);
            for(var hot of hot4){
                var {hid,caption,title,src,data}=hot;
                html+=`
            <div class="col-lg-4 col-md-12 hotel animated">
                <div class="position-relative hotel_div">
                <a href="product.html?lid=${data}">
                <img src="${src}" alt="" class="w-100"/>
                </a>
                </div>
                <span class="hotel_sp sp_bg4">${caption}</span>
                <p class="hotel_p">${title}</p>
                <a href="product.html?lid=${data}" class="hotel_a" data-in='${data}'>查看酒店   ></a>
                </div>`
            }
            $("#hot_for").html(html);
            //五楼酒店图
            var html=``;
            var hot5=hotel.slice(24,30);
            for(var hot of hot5){
                var {hid,caption,title,src,data}=hot;
                html+=`
            <div class="col-lg-4 col-md-12 hotel animated">
                <div class="position-relative hotel_div">
                <a href="product.html?lid=${data}">
                <img src="${src}" alt="" class="w-100"/>
                </a>
                </div>
                <span class="hotel_sp sp_bg5">${caption}</span>
                <p class="hotel_p">${title}</p>
                <a href="product.html?lid=${data}" class="hotel_a" data-in='${data}'>查看酒店   ></a>
                </div>`
            }
            $("#hot_five").html(html);
            //六楼酒店图
            var html=``;
            var hot6=hotel.slice(30,36);
            for(var hot of hot6){
                var {hid,caption,title,src,data}=hot;
                html+=`
            <div class="col-lg-4 col-md-12 hotel animated">
                <div class="position-relative hotel_div">
                <a href="product.html?lid=${data}">
                <img src="${src}" alt="" class="w-100"/>
                </a>
                </div>
                <span class="hotel_sp sp_bg6">${caption}</span>
                <p class="hotel_p">${title}</p>
                <a href="product.html?lid=${data}" class="hotel_a" data-in='${data}'>查看酒店   ></a>
                </div>`
            }
            $("#hot_six").html(html);

        }
    })
})