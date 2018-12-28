SET NAMES UTF8;
DROP DATABASE IF EXISTS lv;
CREATE DATABASE lv CHARSET=UTF8;
USE lv;
-- 用户数据库   user
CREATE TABLE lv_user(
    uname VARCHAR(10) PRIMARY KEY,
    phone INT,
    email VARCHAR(16),
    upwd VARCHAR(16),
    hobby VARCHAR(80)
);
-- 轮播数据库   carousel
CREATE TABLE lv_carousel(
    cid INT,
    title VARCHAR(48),
    src VARCHAR(100),
    number INT,
    data VARCHAR(30)
);
INSERT INTO lv_carousel VALUES
(1,'暂无','img/index/lunbo1.jpg',1,'1'),
(2,'暂无','img/index/lunbo2.jpg',1,'2'),
(3,'暂无','img/index/lunbo3.jpg',1,'3'),
(4,'暂无','img/index/lunbo4.jpg',1,'4'),
(5,'暂无','../img/forum/lunbo1.jpg',2,''),
(6,'暂无','../img/forum/lunbo2.jpg',2,''),
(7,'暂无','../img/forum/lunbo3.jpg',2,''),
(8,'暂无','../img/forum/lunbo4.jpg',2,''),
(9,'暂无','../img/food/foodlb1.jpg',3,''),
(10,'暂无','../img/food/foodlb2.jpg',3,''),
(11,'暂无','../img/food/foodlb3.jpg',3,''),
(12,'暂无','../img/food/foodlb4.jpg',3,''),
(13,'暂无','../img/design/lunbo1.jpg',4,''),
(14,'暂无','../img/design/lunbo2.jpg',4,''),
(15,'暂无','../img/design/lunbo3.jpg',4,''),
(16,'暂无','../img/design/domlb1.jpg',4,''),
(17,'暂无','../img/design/domlb2.jpg',4,''),
(18,'暂无','../img/design/domlb3.jpg',4,''),
(19,'暂无','../img/design/domlb4.jpg',4,'');
-- 用户待办流程列表  flow
CREATE TABLE lv_flow(
    fid INT,
    caption VARCHAR(48),
    title VARCHAR(100),
    src VARCHAR(100)
);
INSERT INTO lv_flow VALUES
(1,'签证','签证是一个国家的出入境管理机构 <br/>（例如移民局或其驻外使领馆） ','img/index/icon1.png'),
(2,'订酒店','酒店是提供安全、舒适，向消费者<br/>提供短期的休息或睡眠的房间的商业机构。<br/>星级酒店值得信赖 ','img/index/icon2.png'),
(3,'订机票','即订购机票的人需要向航空公司或代理售票点<br/>提供乘机人的真实姓名和身份证号码、<br/>护照号码才能订到机票。 ','img/index/icon3.png'),
(4,'购物','购物是一件很开心的事情，简单来说<br/>就是人们购买各种各样物品的行为或方式，<br/>物品包括实物和虚拟物品。 ','img/index/icon4.png'),
(5,'运动','人在运动的过程当中，身体的结构会随着运动<br/>而变化，可以加强了自身的体质，<br/>促进新陈代谢 ','img/index/icon5.png'),
(6,'品尝','美食达到色、香、味、形、美的和谐统一，<br/>给人以精神和物质高度统一的<br/>特殊享受。 ','img/index/icon6.png');
-- 热门地点   site
CREATE TABLE lv_site(
    sid INT,
    caption VARCHAR(48),
    title VARCHAR(100),
    src VARCHAR(100),
    data VARCHAR(100)
);
INSERT INTO lv_site VALUES
(1,'伦敦','在其中心矗立着雄伟的国会大厦，标志性的“大本钟”钟楼和英国君主加冕的威斯敏斯特大教堂。','img/index/location1.jpg','5'),
(2,'纽约','曼哈顿的核心是人口稠密的自治市镇，是世界上主要的商业，金融和文化中心之一','img/index/location2.jpg','6'),
(3,'巴黎','艾菲尔铁塔和哥特式圣母院大教堂，该市以其咖啡馆文化和Rue du Faubourg Saint-Honoré设计师精品店而闻名','img/index/location3.jpg','7'),
(4,'香港','香港也是一个主要的购物目的地，以定制裁缝和庙街夜市而闻名。','img/index/location4.jpg','8');
-- 套餐  meal
CREATE TABLE lv_meal(
    mid INT,
    place VARCHAR(24),
    price VARCHAR(30),
    data VARCHAR(100)
);
INSERT INTO lv_meal VALUES
(1,'纽约','2936RMB','9'),
(2,'马尔代夫','313RMB','10'),
(3,'斯里兰卡','311RMB','11'),
(4,'尼泊尔','313RMB','12'),
(5,'伦敦','293RMB','13'),
(6,'新加坡','888RMB','14'),
(7,'越南','2888RMB','15'),
(8,'孟加拉国','122RMB','16'),
(9,'印度','340RMB','17'),
(10,'黎巴嫩','598RMB','18'),
(11,'黎巴嫩','1980RMB','19'),
(12,'挪威','1288RMB','20'),
(13,'丹麦','1788RMB','21'),
(14,'阿富汗','417RMB','22'),
(15,'泰国','378RMB','23'),
(16,'马来西亚','614RMB','24'),
(17,'荷兰','1258RMB','25'),
(18,'罗马尼亚','288RMB','26');
--酒店  hotel
CREATE TABLE lv_hotel(
    hid INT,
    caption VARCHAR(48),
    title VARCHAR(100),
    src VARCHAR(100),
    data VARCHAR(100)
);
INSERT INTO lv_hotel VALUES
(1,'苏州南林饭店','必须强烈推荐了，苏州老城最好的园林五星酒店，很有风格，价格也不贵。','../img/hotHotel/1L1.jpg','27'),
(2,'罗莱夏朵-杭州湖边邨酒店','新开张的酒店，离西湖超近，是一个民国时期的历史老建筑，很有味道，喜欢！','../img/hotHotel/1L2.jpg','28'),
(3,'扬州长乐客栈主题文化酒','住在园林之中，感觉很好。尤其是在节假日，这里就成了你的私家园林。','../img/hotHotel/1L3.jpg','29'),
(4,'北京建国饭店','房间很干净，而且整个酒店就跟花园似的，特别安静。床也舒服。','../img/hotHotel/1L4.jpg','30'),
(5,'上海四季百果园境庐度假','结庐在人境，而无车马喧。问君何能尔？心远地自偏。采菊东篱下。','../img/hotHotel/1L5.jpg','31'),
(6,'南京高淳区花涧堂官溪人','座落在景色怡人的中山陵景区，毗邻四方城和海底世界','../img/hotHotel/1L6.jpg','32'),
(7,'漫心酒店(北京前门四合院','四合院幽静雅致，阳光明媚，闹中取静,管家式服务无微不至。','../img/hotHotel/2L1.jpg','33'),
(8,'广州九龙湖公主酒店','酒店太棒了，欧陆风情小镇式以及城堡式设计建造，很有异国风情的味道！','../img/hotHotel/2L2.jpg','34'),
(9,'拉萨香格里拉大酒店','酒店设施非常好，酒店地理位置也很不错，值得体验一下。','../img/hotHotel/2L3.jpg','35'),
(10,'大理古城花漫秀园酒店','客栈酒店从园林布局就给人眼前一亮的感觉，大气有庭苑纵深的感觉','../img/hotHotel/2L4.jpg','36'),
(11,'深圳摩登克斯酒店','不错，房间宽敞。装修时尚，床也舒服。购物方便，下次还会住 。','../img/hotHotel/2L5.jpg','37'),
(12,'上海外滩悦榕庄','位于北外滩，倚枕黄浦江畔，喧嚣都市中的绿洲，北外滩世外桃源般的度假体验。','../img/hotHotel/2L6.jpg','38'),
(13,'北京蓝亭国际青年旅舍','还不错，房间虽然小，但是设备齐全，干净整洁，也很温暖','../img/hotHotel/3L1.jpg','39'),
(14,'桂林逸思·青都青年旅舍 ','老板不仅推荐好吃的，而且给的旅行景点建议也很全面，重要是不厌其烦。','../img/hotHotel/3L2.jpg','40'),
(15,'丽江白沙那里国际青年旅','环境超好，服务超好绝对是白沙住宿的重要选项我还要来,这次时间短了','../img/hotHotel/3L3.jpg','41'),
(16,'国际青年旅舍南京新街口','交通地段还不错，离朝天宫很近，周围很多小餐馆，吃饭很方便。','../img/hotHotel/3L4.jpg','42'),
(17,'厦门格兰荟庭院咖啡客栈','住了四天了，又续了三天！房间很给力！干净卫生安静！','../img/hotHotel/3L5.jpg','43'),
(18,'深圳LnB青年旅舍','LnB更像是一扇窗户，让你了解更多的旅途经历和故事,让你的朋友遍天下','../img/hotHotel/3L6.jpg','44'),
(19,'杭州一色客栈','客栈在杭州西湖区一个很幽静的地方，木质结构给人很文艺的感觉。','../img/hotHotel/4L1.jpg','45'),
(20,'厦门栖城度假艺术酒店 ','老板人超级好，给我们介绍的餐厅很好吃，还帮忙做攻略。','../img/hotHotel/4L2.jpg','46'),
(21,'丽江悦景客栈','客栈位于古城区子云巷，客栈旁边是一条小河，环境清雅静谧，交通便利。','../img/hotHotel/4L3.jpg','47'),
(22,'大理古城云水间客栈','设施和照片一样 实木家具 很有古城的感觉 店家很热情 推荐','../img/hotHotel/4L4.jpg','48'),
(23,'阳朔金鼎酒店','很不错 位置超级好的，顶楼花园这是漂亮 好喜欢啊…','../img/hotHotel/4L5.jpg','49'),
(24,'北京山里寒舍度假村','环境不错，适合运动，吃得也不错，大人孩子都很喜欢。','../img/hotHotel/4L6.jpg','50'),
(25,'幸运卡塔泳池别墅酒店','紧邻宁静的卡塔海滩，热带绿地中的豪华住宿，拥有宏伟的室外游泳池。','../img/hotHotel/5L1.jpg','51'),
(26,'济州岛新罗酒店','位于中文旅游区的海边，一家豪华的酒店，胡锦涛、奥巴马等人都曾入住过。','../img/hotHotel/5L2.jpg','52'),
(27,'卡加尼莫酒店','酒店位于乌布市中心，离皇宫很近，服务水平很高，无可挑剔。','../img/hotHotel/5L3.jpg','53'),
(28,'暹罗海岸酒店','酒店距离芭堤雅步行街非常近，晚上非常热闹，小附近吃的东西很多。','../img/hotHotel/5L4.jpg','54'),
(29,'思拉瓦迪泳池温泉度假村','可以俯瞰暹罗湾。超美的悬崖海景，加上极具格调的建筑风格。','../img/hotHotel/5L5.jpg','55'),
(30,'马尔代夫克哈瓦岛安纳塔','酒店坐落于芭环礁的中心地带，整个岛上的人不多，很原始。','../img/hotHotel/5L6.jpg','56'),
(31,'罗托鲁阿假日酒店','酒店距离毛利文化村很近，很有民族气息，距离著名的温泉胜地也不算太远。','../img/hotHotel/6L1.jpg','57'),
(32,'釜山诺富特大使酒店','海云台近在咫尺，酒店后面的市场非常方便。先进的设施。','../img/hotHotel/6L2.jpg','58'),
(33,'兵卫向阳阁酒店','酒店在著名的有马温泉镇最高点，酒店有三大温泉浴场。','../img/hotHotel/6L3.jpg','59'),
(34,'有马景观酒店','坐落在神户有马温泉，可以让你享受到全方位的SPA放松。','../img/hotHotel/6L4.jpg','60'),
(35,'三宫车站酒店','交通非常方便，就在神户市中心，而且就建在车站里，去哪里都很方便。','../img/hotHotel/6L5.jpg','61'),
(36,'农西酒店','酒店自带的虚心厅温泉（Hurshimchung），是韩国最大的温泉洗浴中心。','../img/hotHotel/6L6.jpg','62');

--星级酒店  star
CREATE TABLE lv_star(
    tid INT,
    caption VARCHAR(48),
    src VARCHAR(100),
    href VARCHAR(100)
);
INSERT INTO lv_star VALUES
(1,"万达","../img/hotHotel/logo1.jpg","https://www.wandahotels.com/"),
(2,"七天连锁","../img/hotHotel/logo2.jpg","http://www.7daysinn.cn/"),
(3,"如家快捷","../img/hotHotel/logo3.jpg","http://www.bthhotels.com/"),
(4,"速8酒店","../img/hotHotel/logo4.jpg","http://www.super8.com.cn/"),
(5,"希尔顿","../img/hotHotel/logo5.jpg","http://www.hilton.com.cn/zh-cn/"),
(6,"香格里拉","../img/hotHotel/logo6.jpg","https://www.shangri-la.com/cn/"),
(7,"皇冠假日","../img/hotHotel/logo7.jpg","https://www.ihg.com/crowneplaza/hotels/cn/zh/reservation"),
(8,"凯悦","../img/hotHotel/logo8.jpg","https://www.hyatt.com/zh-CN/home/"),
(9,"维也纳","../img/hotHotel/logo9.jpg","http://www.wyn88.com/"),
(10,"万豪酒店","../img/hotHotel/logo10.jpg","https://www.marriott.com.cn/"),
(11,"布丁酒店","../img/hotHotel/logo11.jpg","http://www.podinns.com/"),
(12,"格林豪泰","../img/hotHotel/logo12.jpg","http://www.998.com/shtml/99/zh/index.html");

--美食  food
CREATE TABLE lv_food(
    eid INT,
    src VARCHAR(100),
    lg VARCHAR(100)
);
INSERT INTO lv_food VALUES
(1,'../img/food/01-small.jpg','../img/food/01-large.jpg'),
(2,'../img/food/02-small.jpg','../img/food/02-large.jpg'),
(3,'../img/food/03-small.jpg','../img/food/03-large.jpg'),
(4,'../img/food/04-small.jpg','../img/food/04-large.jpg'),
(5,'../img/food/05-small.jpg','../img/food/05-large.jpg'),
(6,'../img/food/06-small.jpg','../img/food/06-large.jpg'),
(7,'../img/food/07-small.jpg','../img/food/07-large.jpg'),
(8,'../img/food/08-small.jpg','../img/food/08-large.jpg'),
(9,'../img/food/09-small.jpg','../img/food/09-large.jpg'),
(10,'../img/food/10-small.jpg','../img/food/10-large.jpg'),
(11,'../img/food/11-small.jpg','../img/food/11-large.jpg'),
(12,'../img/food/12-small.jpg','../img/food/12-large.jpg');



--商品  product 
--五张图 addr地区 pname名称 pbeds卧室数量 bed床数量 lav卫生间数量 pnumb人数数量
CREATE TABLE lv_product(
    lid INT,
    xs VARCHAR(100),
    sm VARCHAR(100),
    md VARCHAR(100),
    lg VARCHAR(100),
    xl VARCHAR(100),
    addr VARCHAR(100),  
    pname VARCHAR(100),
    pbeds INT,
    bed INT,
    lav INT,
    pnumb INT,
    title VARCHAR(300),
    price INT
);
INSERT INTO lv_product VALUES
(1,'../img/product/xs1.jpg','../img/product/sm1.jpg','../img/product/md1.jpg','../img/product/lg1.jpg','../img/product/xl1.jpg','三亚市','无敌海景家庭房',1,2,1,4,'公寓位于美丽三亚湾,与椰梦长廊隔路相望,坐拥三亚湾绮丽海景,俯瞰壮丽的三亚湾海景东岛和西岛,这里阳光灿烂､海水湛蓝､椰林婆娑､无论是情侣度假,亲子旅游和家庭出游,三亚清凉海景度假公寓愿成为您三亚浪漫之旅的快乐驿站｡公寓以中高楼层海景房为主,落地窗无敌海景,主题装修风格,超大居室空间,私密完备配套､优雅贴心服务,独享悠然欢度纯休闲假日时光,小区配套设施完善,小区内有百益超市,商场:靠近明珠广场,南国… ',388),
(2,'../img/product/xs2.jpg','../img/product/sm2.jpg','../img/product/md2.jpg','../img/product/lg2.jpg','../img/product/xl2.jpg','三亚市','地中海风情无敌海景二房一厅(金秋大促 2 )+3晚起接机送游泳停车票',2,2,1,4,'酒店紧邻十里椰梦长廊,临海而居,在这里您可以尽情体会椰风海韵,观潮起潮落,和家人一起欣赏日落｡酒店交通非常便利,位于各大景区的中心,是到各景点及购物点的中转站｡酒店位于美丽椰梦长廊旁,穿过小区花园门口就是天然海滩浴场,步行不到50米｡还有往返于天涯海角大东海和亚龙湾的双层观光巴士,以及可直达春园海鲜广场和第一农贸市场的7路公交车,票价1-8元/人｡附近有第三农贸市场｡晚上7点之后,顺着海边的滨海路…',488),
(3,'../img/product/xs3.jpg','../img/product/sm3.jpg','../img/product/md3.jpg','../img/product/lg3.jpg','../img/product/xl3.jpg','曼谷·帕特万 ','地理位置便利,1 分钟可达 BTS 空铁,提供 WiFi',1,1,1,2,'这间舒适的房间坐落在新公寓楼“EDITOR”的 17 楼,位于泰国曼谷拍凤裕庭路,距离可通往各处的 BTS Sapankwa 站约有 1 至 2 分钟的路程｡Paragon Mall 购物中心,素坤逸中心｡亦可便捷前往机场和交通中心',588),
(4,'../img/product/xs4.jpg','../img/product/sm4.jpg','../img/product/md4.jpg','../img/product/lg4.jpg','../img/product/xl4.jpg','曼谷·挽拍区','网红天空泳池sky pool.高层景观房.楼下就是7-11.大皇宫,周末市场十分钟就到.配套完善｡',1,1,1,2,'41层顶楼的网红天空泳池,俯瞰整个曼谷,夜景尤为迷人｡抖音最火的曼谷天空泳池,距离大皇宫､乍都乍周末市场十几分钟车程｡
楼下7-11超市,晚上有小吃夜市距离也很近｡本地区游客很少,地道泰国小吃非常多,消费低廉(均价7元左右 (Website hidden by Airbnb) 泰国小众文艺青年聚集地CHANG.CHUI(摄影爱好者打卡地)只需要10分钟车程就可到达｡
…',688),
(5,'../img/product/xs5.jpg','../img/product/sm5.jpg','../img/product/md5.jpg','../img/product/lg5.jpg','../img/product/xl5.jpg','伦敦 · 整套公寓 ','Family Friendly Central London Flat',2,7,2,11,'位于伦敦不伦瑞克市中心的最佳中心位置,位于罗素广场的中心,其中包括许多商店,餐厅和咖啡馆｡',524),
(6,'../img/product/xs6.jpg','../img/product/sm6.jpg','../img/product/md6.jpg','../img/product/lg6.jpg','../img/product/xl6.jpg','纽约 ','Sunny, Modern room in East Village!',1,1,1,2,'这间干净而舒适的客房位于东村,享有曼哈顿市中心的壮丽景色,距离汤普金斯广场公园仅有一个街区｡我总是很高兴与客人分享空间!谢谢参观｡',324),
(7,'../img/product/xs7.jpg','../img/product/sm7.jpg','../img/product/md7.jpg','../img/product/lg7.jpg','../img/product/xl7.jpg','巴黎 ','Cosy studio in the heart of Paris',1,1,1,2,'我们也许从未相识，但希望我的房源能让旅行中的你卸去疲惫，像在自己家一样温暖舒适。',888),
(8,'../img/product/xs8.jpg','../img/product/sm8.jpg','../img/product/md8.jpg','../img/product/lg8.jpg','../img/product/xl8.jpg','香港（中国） · 整套公寓 ','New & cosy modern 1BR 4pax 1min walk MTR',1,2,1,4,'我的宽敞公寓于2017年6月新近装修,现代风格,位于尖沙咀和约旦之间的地铁站(地铁)前,位于一个安全而安静的建筑内｡周围环绕着购物商场,美味的餐厅和美味的街头美食｡ 我的大楼里有电梯,所以如果你有行李就不用担心! ♡将我的工作室添加到心愿单♡',682),
(9,'../img/product/xs9.jpg','../img/product/sm9.jpg','../img/product/md9.jpg','../img/product/lg9.jpg','../img/product/xl9.jpg','纽约 · 整套公寓 ','Luxury 2 Bedroom Empire Loft',2,3,2,4,'这个2卧室阁楼的壮丽与只有少数其他物业相比｡帝国大厦毗邻建筑物的私人屋顶将让您感到敬畏｡ 经典的曼哈顿阁楼与14英尺(4.3米)的天花板,很少存在了｡由顶级室内设计师设计,并采用顶级饰面和家俱装饰｡',2936),
(10,'../img/product/xs10.jpg','../img/product/sm10.jpg','../img/product/md10.jpg','../img/product/lg10.jpg','../img/product/xl10.jpg','马尔代夫·马富施','Equator Dream',1,2,1,2,'青翠的蓝色泻湖和银色的白色沙滩,茂密的绿色椰子树,使游客更加独特｡赤道海滩酒店是寻求安慰和舒适的客人的绝佳去处｡感受当地和当地生活',313),
(11,'../img/product/xs11.jpg','../img/product/sm11.jpg','../img/product/md11.jpg','../img/product/lg11.jpg','../img/product/xl11.jpg','斯里兰卡 ','Boutique Villa with a Pool',1,1,1,2,'一卧室别墅步行距离(1.5英里)到康提湖｡周围环绕着美丽的热带花园｡您可以沉浸在私人游泳池中,或在休息室或露台上阅读您的假日文学作品｡美味的早餐免费提供｡真正的天堂｡ 如果这个房产不可用,请随时查看我们的新房产(以防万一已经预订),请点击我的个人资料进行访问｡',311),
(12,'../img/product/xs12.jpg','../img/product/sm12.jpg','../img/product/md12.jpg','../img/product/lg12.jpg','../img/product/xl12.jpg','尼泊尔·帕坦(PATAN)','Courtyard Cottage 50m from Patan Durbar Square!',1,1,1,3,'美丽的小独立屋,坐落在距离金庙和杜巴广场仅几米之遥的庭院中 - 这个地方非常适合在文化中沉浸在令人惊叹的古老帕坦,享受完全的舒适:一楼是带超级的客厅舒适的沙发,矮桌,电视和大玻璃窗｡在您房子的第一层是带AC和阳台+浴室的卧室 - 厨房和洗衣机都在院子里｡欢迎您随意使用它;',313),
(13,'../img/product/xs13.jpg','../img/product/sm13.jpg','../img/product/md13.jpg','../img/product/lg13.jpg','../img/product/xl13.jpg','伦敦','Hoxton/Shoreditch with City Views',1,1,1,2,'我们温馨的客房位于Shoreditch繁华的心脏地带,距离酒吧,咖啡馆和购物场所仅有几步之遥｡快速连接到伦敦市中心,从城市步行距离｡古怪的明亮的室内设计｡留在一个轻松友好的夫妇,他们的标准狮子狗小狗(一般好,因为她的头发不会过敏)｡',293),
(14,'../img/product/xs14.jpg','../img/product/sm14.jpg','../img/product/md14.jpg','../img/product/lg14.jpg','../img/product/xl14.jpg','新加坡','金海湾高级公寓/ 1分钟碧桂园/5分钟新加坡/10分钟乐',3,4,2,9,'金海湾5星级公寓,37楼天台式健身房｡无尽式的泳池,篮球场｡森严的保安系统,4层式的保安关卡,来给你安全的夜晚｡不需要匆忙的来登记,自行登记手册会会在前一天简讯给你｡',888),
(15,'../img/product/xs15.jpg','../img/product/sm15.jpg','../img/product/md15.jpg','../img/product/lg15.jpg','../img/product/xl15.jpg','越南·会安市(TP. HỘI AN) ','Green Areca Villa',6,16,6,16,'绿色Areca别墅是一个设备齐全的度假胜地,具有最好的服务质量｡特别是位于越南的农村｡游客可以来这里放松身心,体验当地居民的现实生活｡',2888),
(16,'../img/product/xs16.jpg','../img/product/sm16.jpg','../img/product/md16.jpg','../img/product/lg16.jpg','../img/product/xl16.jpg','孟加拉共和國达卡','☆ Contemporary Serviced Apartment - Midtown',1,1,1,2,'这是一间现代,时尚,舒适且安全的服务式公寓,适合寻求短期和长期度假或工作旅行的客人入住｡酒店提供新鲜的床单,毛巾,洗衣房,早餐(应要求提供)和每日家政服务,为您提供五星级的服务｡设备齐全的厨房,宽敞的起居空间,超快的WiFi,机场接机(应要求提供)以及带浴室和大露台的非常私人和舒适的带连接浴室的客房｡',122),
(17,'../img/product/xs17.jpg','../img/product/sm17.jpg','../img/product/md17.jpg','../img/product/lg17.jpg','../img/product/xl17.jpg','印度','CENTRALLY LOCATED HIP STUDIO!',1,1,1,4,'这间现代化的新近装修的870平方英尺的工作室位于Jayamahal市中心,坐落在俯瞰树木的露台上｡设施包括户外厨房,无线网络,家庭影院和交流｡隐私,和平和宁静在城市的中间｡',340),
(18,'../img/product/xs18.jpg','../img/product/sm18.jpg','../img/product/md18.jpg','../img/product/lg18.jpg','../img/product/xl18.jpg','黎巴嫩','Gemmayze Bright Rooftop and Dreamy Terrace',1,1,1,2,'一座安静的巢穴,坐落在一座典型的1960年代贝鲁特(Gemiray)建筑内｡这个舒适的屋顶提供三个私人露台和一个温暖的装修内部,拥有可笑的自然光线｡',598),
(19,'../img/product/xs19.jpg','../img/product/sm19.jpg','../img/product/md19.jpg','../img/product/lg19.jpg','../img/product/xl19.jpg','杭州','『拾时·光』拾起几缕光阴,编织成美好回忆｡',2,2,1,4,'杭州,将自然与都市完美融合的地方,心生欢喜｡从沪来杭十年,在青芝坞深处寻到被青山茶园环抱的园区,能住在此是我的幸运!念念不忘,必有回响~~',1980),
(20,'../img/product/xs20.jpg','../img/product/sm20.jpg','../img/product/md20.jpg','../img/product/lg20.jpg','../img/product/xl20.jpg','挪威','Exclusive residential neighborhood',3,5,1,8,'美丽的装修公寓在一个漂亮和安静的社区与三间卧室和非常宽敞的客厅和厨房｡位于市中心的步行距离,音乐厅,火车站和DNB竞技场等等｡你自己的停车位就在你的门外｡',1288),
(21,'../img/product/xs21.jpg','../img/product/sm21.jpg','../img/product/md21.jpg','../img/product/lg21.jpg','../img/product/xl21.jpg','丹麦','Centralt placeret UNIK lejlighed',4,7,1,7,'这间公寓适合热爱艺术和美学的人士｡大美丽的明亮的房间,个性和良好的机会,在家里感觉｡位于中心位置｡仅几米,地铁,购物和Gl｡ Kongevej,有很好的购物和咖啡生活｡如果您需要超过6人,请填写｡',1788),
(22,'../img/product/xs22.jpg','../img/product/sm22.jpg','../img/product/md22.jpg','../img/product/lg22.jpg','../img/product/xl22.jpg','阿富汗','Luxury apartment#82 with extraordinary facilities',2,3,1,4,'这是一个设施齐全,豪华和似是而非的公寓,位于阿富汗(喀布尔)的高级区域｡从喀布尔国际机场到安萨里塔免费接送',417),
(23,'../img/product/xs23.jpg','../img/product/sm23.jpg','../img/product/md23.jpg','../img/product/lg23.jpg','../img/product/xl23.jpg','泰国','白色微风池1BD公寓',1,1,1,2,'一间卧室的公寓配有一张特大号床,浴室,厨房和带拉出式沙发的用餐/起居区｡从卧室直接通往仅与另外两间公寓共用的游泳池｡',378),
(24,'../img/product/xs24.jpg','../img/product/sm24.jpg','../img/product/md24.jpg','../img/product/lg24.jpg','../img/product/xl24.jpg','马来西亚','日出无敌全海景',1,2,2,4,'位于Karpal Singh Drive,距离机场20分钟路程,距离市中心有5分钟的路程｡这是一间豪华的复式公寓,配有超高的天花板和窗户,为您提供乔治城和港湾的全景｡有2间卧室配有3张大号床,可以舒适地安放6位成人｡',614),
(25,'../img/product/xs25.jpg','../img/product/sm25.jpg','../img/product/md25.jpg','../img/product/lg25.jpg','../img/product/xl25.jpg','荷兰','豪华独立的船屋',1,1,1,2,'我们家族船上的独立工作室非常私人,装备精良｡一个巨大的太阳甲板,完美的海港景色,吊床和免费自行车,增添了你的自由和放松｡在中央车站望远镜的东部港区,您的“远离家乡”是中央,但如此平静!阅读评论...',1258),
(26,'../img/product/xs26.jpg','../img/product/sm26.jpg','../img/product/md26.jpg','../img/product/lg26.jpg','../img/product/xl26.jpg','罗马尼亚','★美景,露台和200米海滩',1,1,1,2,'公寓位于Mamaia中心,距离黑海的沙滩仅有200米,提供带露台的空调住宿｡ 公寓设有大露台,享有Siutghiol Lake湖的壮丽景色｡每天晚上,您都可以享受美丽的夕阳｡ 靠近迷你市场,餐馆,药店,海滩酒吧和巴士站｡',288),
(27,'../img/product/xs27.jpg','../img/product/sm27.jpg','../img/product/md27.jpg','../img/product/lg27.jpg','../img/product/xl27.jpg','苏州 ','双层公寓16楼 地铁直达苏州站 ',1,1,1,2,'在苏州生活了许多年 对这个城市熟悉而充满感情 提供力所能及的 旅行路线 当地特色的活动体验以及餐饮建议 收集了lonely planet苏州部分的电子书 希望能把这个城市独特的少为人知的美好细节分享给大…',238),
(28,'../img/product/xs28.jpg','../img/product/sm28.jpg','../img/product/md28.jpg','../img/product/lg28.jpg','../img/product/xl28.jpg','杭州市','浙大紫金港西溪湿地三墩地铁站画室房',1,1,1,2,'Neal,伦敦读书毕业后便回杭州定居, speak English and glad to receive foreign visitors,乐于与往来的伙伴分享故事｡
致力于为在城市间奔波的小伙伴打造舒适､自由有归属感的居住地｡',148),
(29,'../img/product/xs29.jpg','../img/product/sm29.jpg','../img/product/md29.jpg','../img/product/lg29.jpg','../img/product/xl29.jpg','扬州市','"借时光"-京华城靠近车站高端社区电梯三居室设计师自宅',3,4,2,7,'【BANBAN】——一个设计师为扬州打造的最酷民宿品牌!我的“斑斑音乐沙龙”是扬州精酿啤酒最多的酒吧,房客入住期间去喝酒打八折!还可能遇到其他入住BANBAN民宿的客人哦!
如果入住日期不适合,还可以点击我的头像,查看我的其他房子,都是超级高性价比｡',335),
(30,'../img/product/xs30.jpg','../img/product/sm30.jpg','../img/product/md30.jpg','../img/product/lg30.jpg','../img/product/xl30.jpg','北京','托斯卡纳色调 夜景超美',1,1,1,2,'适合情侣､独自旅行的冒险家､商务旅行者､毛茸茸的伙伴(宠物)｡这里你可以享受酒店的便利､家的温馨､咖啡馆的文艺､高档餐厅的夜景｡
如果您是情侣或是想给另一半一个惊喜,…',398),
(31,'../img/product/xs31.jpg','../img/product/sm31.jpg','../img/product/md31.jpg','../img/product/lg31.jpg','../img/product/xl31.jpg','上海','拥天井花园､私人影院',1,1,1,2,'华丽的私人设施齐全的特大号床套房位于新的定制住宅中｡靠近美丽的白石滩,餐厅,酒吧,咖啡厅和日落散步长廊｡这间套房位于这间景观的街道上｡水景图片来自家庭的上层,以显示附近的水｡',388),
(32,'../img/product/xs32.jpg','../img/product/sm32.jpg','../img/product/md32.jpg','../img/product/lg32.jpg','../img/product/xl32.jpg','南京','你今天真好看&最适合弹钢琴的房间',1,1,1,2,'南京民宿之“你今天真好看”
',188),
(33,'../img/product/xs33.jpg','../img/product/sm33.jpg','../img/product/md33.jpg','../img/product/lg33.jpg','../img/product/xl33.jpg','北京','紧邻地铁,闹中取静!',1,2,2,4,'观鼓楼､钟楼和二环内四合院的最佳位置!房间是两居室里的主卧,位于北京市西城区,交通十分便利,在二环内,周边区域范围涵盖京城内各主要景点(南锣鼓巷/烟袋斜街/后海/雍和宫/簋街)步行3分钟即可到达地铁2号线/8号线鼓楼大街地铁站,无论出差､旅行､长居都是绝佳之选｡',488),
(34,'../img/product/xs34.jpg','../img/product/sm34.jpg','../img/product/md34.jpg','../img/product/lg34.jpg','../img/product/xl34.jpg','广州','榻榻米双人床无敌夜景房',1,1,1,2,'房源内有一只小猫｡位于广州CBD地段,离地铁站步行仅五分钟的距离,倚靠着珠江,与广州塔小蛮腰隔江相望｡临近美国､智利､意大利､等多国大使馆｡',216),
(35,'../img/product/xs35.jpg','../img/product/sm35.jpg','../img/product/md35.jpg','../img/product/lg35.jpg','../img/product/xl35.jpg','拉萨市','拉萨罗布林卡布达拉宫附近',1,2,2,4,'距离罗布林卡,拉萨博物馆,尼泊尔大使馆五分钟步行路程,步行20分钟可到达布达拉宫,独立卫生间,24小时热水,客栈二楼公共书吧,上千本拉萨相关文化的各种书籍,免费取阅,三楼风转咖啡馆,咖啡很棒,四楼客栈酒吧',488),
(36,'../img/product/xs36.jpg','../img/product/sm36.jpg','../img/product/md36.jpg','../img/product/lg36.jpg','../img/product/xl36.jpg','大理','大理双廊洱海畔望月之浪漫情侣海景露台大床房',1,1,1,2,'苍山洱海古镇全景一览无余,房间装修精致,晚上露台上还以小酌两杯,观星望月,很是惬意,露台拍照也很漂亮哟,距离海边南诏风情岛和玉几岛等核心游玩区域步行10分钟左右｡',388),
(37,'../img/product/xs37.jpg','../img/product/sm37.jpg','../img/product/md37.jpg','../img/product/lg37.jpg','../img/product/xl37.jpg','深圳','Loire花房',1,1,1,2,'房子是以单间的形式日租的 房间是一米五的双人床,复式,两个卧室共享客厅和卫生间浴室,位于深圳福田新洲,距离福田口岸2.4公里,距离购物公园cocopark1.3公里,距离车公庙2.3公里,楼下有很多小吃｡',188),
(38,'../img/product/xs38.jpg','../img/product/sm38.jpg','../img/product/md38.jpg','../img/product/lg38.jpg','../img/product/xl38.jpg','上海','临江星空房网红ins风,近地铁',2,4,1,6,'网红ins风格设计在这间强烈未来感的江景房中;它用优雅､流畅的设计语言,表达了夸张､豪迈的想象｡漂亮到你拍照停不下来｡游艇轮渡漂浮在来去间,我希望能让全世界的旅客都能以极低的代价体验魔都的顶级魅力,因为最美的不是风景而是人｡',269),
(39,'../img/product/xs39.jpg','../img/product/sm39.jpg','../img/product/md39.jpg','../img/product/lg39.jpg','../img/product/xl39.jpg','北京','南锣鼓巷 鼓楼 西单',1,1,1,2,'实为偷闲,能在繁忙都市中找到安静一隅,放空､晒太阳､读书､喝茶(PS:把自己想象成太阳能电池,能量满满)｡为这个愿望,去了大理､丽江､厦门,但终究离不开北京｡胡同的感觉,别的城市无法模仿｡嬉笑､闲谈､叮铃铃的自行车铃儿､飞过的鸽群传下的哨声,来自这些被称作“胡同”的地方｡',330),
(40,'../img/product/xs40.jpg','../img/product/sm40.jpg','../img/product/md40.jpg','../img/product/lg40.jpg','../img/product/xl40.jpg','桂林','古色古香,富有浪漫情调的',1,1,1,2,'客栈位于美丽的七星公园旁边,对面为天然漓江浴场,步行五分钟即可到达漓江边戏水,步行十分钟即可到达桂林市中心｡',146),
(41,'../img/product/xs41.jpg','../img/product/sm41.jpg','../img/product/md41.jpg','../img/product/lg41.jpg','../img/product/xl41.jpg','丽江','《北京青年》拍摄地+免古维不用交门票送地图',1,1,1,2,'我们客栈的名字是一句法语,意为这就是生活,是一句在欧美相当流行的词汇,它表明了一种生活的态度,舒适快乐的生活,沐浴在束河明媚的阳光下,总有一种让人情不自禁的遐想,享受这里的一切,这就是生活,这就是我们客栈想带给您的美丽生活｡',268),
(42,'../img/product/xs42.jpg','../img/product/sm42.jpg','../img/product/md42.jpg','../img/product/lg42.jpg','../img/product/xl42.jpg','南京','南京新街口',1,2,1,4,'周边各大商场､美食街区､旅游景点繁多,距离夫子庙､老门东､总统府､中山陵､大屠杀等景点亦很近,出行极为方便,多路公交,地铁通达｡小屋为房主自主房,因不常回来住,择日出租,故小屋跟其他旅馆式的二手房东房源不同,带有强烈的房主个人色彩｡小屋为上下两层的小跃层,适合两､三个朋友来宁旅游短住,是真正意义上的民宿,感受南京生活的…',198),
(43,'../img/product/xs43.jpg','../img/product/sm43.jpg','../img/product/md43.jpg','../img/product/lg43.jpg','../img/product/xl43.jpg','厦门','环岛路临湖',1,1,1,2,'由于厦门政策,我们无法接待外籍,新疆,港澳台的房客,非常抱歉｡限住两人,1.8m大床,独立卫浴,干湿分离,室内有空调,热水器､电视､WIFI､桌椅,一次性洗漱用品,烧水壶,拖鞋,水杯｡走廊有自助饮水机｡',188),
(44,'../img/product/xs44.jpg','../img/product/sm44.jpg','../img/product/md44.jpg','../img/product/lg44.jpg','../img/product/xl44.jpg','深圳','深圳福田区 迷你新居 北欧简约风',1,1,1,2,'我有一间屋,可以慰风尘在外行走,你对居住有什么期待?我是一个重度旅行爱好者｡旅行是世界上最美妙的事情之一｡',266),
(45,'../img/product/xs45.jpg','../img/product/sm45.jpg','../img/product/md45.jpg','../img/product/lg45.jpg','../img/product/xl45.jpg','杭州','西湖零距离､南宋御街与河坊街',1,2,1,4,'屋里可以看到西湖和宝石山,房屋位于杭州距离西湖最近的高层公寓,步行10分钟到西湖､7分钟龙翔桥地铁站,全城吃喝玩乐最佳地点｡上面是1.5米宽的睡床,下面是一张2米宽的真皮双人靠背大床｡',388),
(46,'../img/product/xs46.jpg','../img/product/sm46.jpg','../img/product/md46.jpg','../img/product/lg46.jpg','../img/product/xl46.jpg','厦门','Amoyer爱梦浪 ',1,1,1,2,'房源出门就是可以望得到海的商业街中山路,位于中山路西段是中山路最繁华的区段,三分钟可以走到海边,交通方便有多路公交可快捷到达沙坡尾和厦大｡房间在我家二楼,虽然是老房子二楼房间是全新装修的,全新家电包括带烘干洗衣机,液晶电视和空调｡',236),
(47,'../img/product/xs47.jpg','../img/product/sm47.jpg','../img/product/md47.jpg','../img/product/lg47.jpg','../img/product/xl47.jpg','丽江','日式园景大床',1,1,1,2,'客栈内的所有房间和花园,都是客人自己设计的,就像回到家一样｡',208),
(48,'../img/product/xs48.jpg','../img/product/sm48.jpg','../img/product/md48.jpg','../img/product/lg48.jpg','../img/product/xl48.jpg','大理白族自治州','大理古城苍山舒适观景大床房',1,1,1,2,'周围环境静谧幽雅,山清水秀,是休闲､度假的理想之地｡客栈四楼是休闲赏景的最佳位置,面朝洱海,背靠苍山,早晨可看日出,让你体验不一样的大理之旅｡ 位置:900米左右即可到大理古城苍山门,最近公交车站:三月街站和人民路口站｡',198),
(49,'../img/product/xs49.jpg','../img/product/sm49.jpg','../img/product/md49.jpg','../img/product/lg49.jpg','../img/product/xl49.jpg','桂林市','观景大床房',1,1,1,2,'一房一院客栈位于美丽的阳朔县石板桥村21号,龙头山码头附近,依山傍江｡附近有太极武校,有兴趣可以学习一下太极,距离漓江500米,距离西街2公里,步行需要25到30分钟,开车7分左右的车程｡',128),
(50,'../img/product/xs50.jpg','../img/product/sm50.jpg','../img/product/md50.jpg','../img/product/lg50.jpg','../img/product/xl50.jpg','北京','步行天安门5床 中式度假',3,5,2,9,'楼上有3间卧室,大卧室配置里1.5米双人床,床下还有一张同尺寸的拖床;中卧室有一张1.35米双人床垫;小卧室是大卧室中的一个小套间,无窗,面积较小,有一张0.9米的单人床｡客厅中有一张1.5米宽的中…',870),
(51,'../img/product/xs51.jpg','../img/product/sm51.jpg','../img/product/md51.jpg','../img/product/lg51.jpg','../img/product/xl51.jpg','迈阿密海滩','威尼斯岛别墅',4,6,4,10,'有4间卧室,4间浴室,一个大客厅,用餐区,一个大厨房,2个露台,1个游泳池,1个花园,1个车库,1个驱动器的方式2辆车｡',8975),
(52,'../img/product/xs52.jpg','../img/product/sm52.jpg','../img/product/md52.jpg','../img/product/lg52.jpg','../img/product/xl52.jpg','济州岛','济州海景 美丽楼层',2,2,3,6,'离济州机场坐车有10分钟的距离，拥有美丽海景的庭院, 是olle N 拥有简约的设计､干净利落的内部结构､爱尔兰式厨房的魅力之地｡',769),
(53,'../img/product/xs53.jpg','../img/product/sm53.jpg','../img/product/md53.jpg','../img/product/lg53.jpg','../img/product/xl53.jpg','科罗纳多','享有德尔海滩景观',1,1,1,2,'我们也许从未相识，但希望我的房源能让旅行中的你卸去疲惫，像在自己家一样温暖舒适。',1732),
(54,'../img/product/xs54.jpg','../img/product/sm54.jpg','../img/product/md54.jpg','../img/product/lg54.jpg','../img/product/xl54.jpg','芭堤雅','4床泳池别墅',4,4,3,10,'郁郁葱葱,绿色和宁静的4卧室泳池别墅底层公寓,可容纳8-10位客人,位于度假村,距离曼谷(167公里)约2小时,距华欣15分钟｡宽敞的空间超过200平方米｡地区位于私人海滩度假胜地｡便利店7-11距离酒店仅有数百米(位于通往酒店的小巷前)｡',1688),
(55,'../img/product/xs55.jpg','../img/product/sm55.jpg','../img/product/md55.jpg','../img/product/lg55.jpg','../img/product/xl55.jpg','思拉瓦迪','靠近海滩',1,1,1,2,'我们宽敞的现代客房位于拉迈地区的黄金地段｡这个地方的概念是舒适,隐私和安宁,以确保您在这个美丽的岛屿逗留期间的放松｡您可以赤脚走过距离海滩仅75米的海滩｡',211),
(56,'../img/product/xs56.jpg','../img/product/sm56.jpg','../img/product/md56.jpg','../img/product/lg56.jpg','../img/product/xl56.jpg','马尔代夫','海滩别墅',1,1,1,4,'酒店是一座“全园”酒店,展示了3栋别墅,由各种开花和非开花植物装饰｡酒店毗邻海滩,您可以在花园区欣赏海滩的舒缓音乐,周围环绕着大自然｡ 酒店设有一间厨房,为您提供各种美食的菜单｡ 我们的私人比基尼海滩距离酒店仅有10秒｡',411),
(57,'../img/product/xs57.jpg','../img/product/sm57.jpg','../img/product/md57.jpg','../img/product/lg57.jpg','../img/product/xl57.jpg','毛利','舒适安全',2,3,1,4,'您的家人或朋友探索罗托鲁瓦中心景点或探索许多旅游和活动中的一些｡我们有灵活性,将第二间卧室设置为两张长单人床,或者组合成一张超级特大号床｡适合儿童,独立旅行者或其他夫妇｡请在预订时通知我们您的要求｡',622),
(58,'../img/product/xs58.jpg','../img/product/sm58.jpg','../img/product/md58.jpg','../img/product/lg58.jpg','../img/product/xl58.jpg','釜山','笑声不变的地方',1,1,1,2,'旅馆是一个无休止的笑声和青春的空间｡ 距釜山站不到2分钟步行路程,交通十分便利｡',199),
(59,'../img/product/xs59.jpg','../img/product/sm59.jpg','../img/product/md59.jpg','../img/product/lg59.jpg','../img/product/xl59.jpg','马温泉镇','托帕斯湖',2,2,2,4,'如果钓鱼,划船,划船,徒步旅行,冬季滑雪,附近的温泉或只是放松,那么您将会喜欢内华达州Topaz湖的小红屋!我们的单身故事,两间卧室/两间浴室位于内华达州Topaz湖的心脏地带｡距离太浩湖滑雪胜地,赌场和娱乐只需一个小时｡',689),
(60,'../img/product/xs60.jpg','../img/product/sm60.jpg','../img/product/md60.jpg','../img/product/lg60.jpg','../img/product/xl60.jpg','日本','有马温泉元汤古泉阁 ',1,1,1,2,'被大自然包围,同时享受有马名汤的旅馆',1042),
(61,'../img/product/xs61.jpg','../img/product/sm61.jpg','../img/product/md61.jpg','../img/product/lg61.jpg','../img/product/xl61.jpg','日本','三宫的心脏',2,4,1,5,'神户在最中心｡离三宫站只有步行 4 分钟的步程｡漂亮的欧式建筑｡可容纳 4 名成人｡从咖啡机到电吹风,我们为您精心配备了各种日用品｡
带上您的孩子｡我们有个大阳台,他们一定会喜欢',552),
(62,'../img/product/xs62.jpg','../img/product/sm62.jpg','../img/product/md62.jpg','../img/product/lg62.jpg','../img/product/xl62.jpg','韩国','虚心厅温泉',1,2,1,2,'酒店自带的虚心厅温泉（Hurshimchung），是韩国最大的温泉洗浴中心',322);