set names utf8;
DROP database if exists OPPO;
create database OPPO charset=utf8;
use OPPO;

#导航条下拉菜单手机型号-图片
create table oppo_nav(
  lid int primary key auto_increment,
  nid int,
  nname varchar(32),
  npic varchar(64),
  is_new varchar(64)
);
insert into oppo_nav values(null,'1','Find X','/img/head_findx1.png','新品');
insert into oppo_nav values(null,'1','Find X 超级闪充版','/img/head_findx2.png','');
insert into oppo_nav values(null,'1','Find X 兰博基尼版','/img/head_findx3.png','');
insert into oppo_nav values(null,'2','Reno 2','/img/head_reno1.png','新品');
insert into oppo_nav values(null,'2','Reno','/img/head_reno2.png','');
insert into oppo_nav values(null,'2','Reno 10倍变焦版','/img/head_reno3.png','');
insert into oppo_nav values(null,'2','Reno Z','/img/head_reno4.png','');
insert into oppo_nav values(null,'3','R17 Pro','/img/head_r1.png','');
insert into oppo_nav values(null,'3','R17','/img/head_r2.png','');
insert into oppo_nav values(null,'3','R15 X','/img/head_r3.png','');
insert into oppo_nav values(null,'4','A9 X','/img/head_a1.png','新品');
insert into oppo_nav values(null,'4','A9','/img/head_a2.png','新品');
insert into oppo_nav values(null,'4','A7','/img/head_a3.png','');
insert into oppo_nav values(null,'4','A7 X','/img/head_a4.png','');
insert into oppo_nav values(null,'4','A5','/img/head_a5.png','');
insert into oppo_nav values(null,'5','K3','/img/head_k1.png','新品');
insert into oppo_nav values(null,'5','K1','/img/head_k2.png','');
insert into oppo_nav values(null,'6','OPPO 无线降噪耳机','/img/head_accessories1.png','新品');
insert into oppo_nav values(null,'6','高达版闪充移动电源','/img/head_accessories2.png','新品');
insert into oppo_nav values(null,'6','三脚架蓝牙自拍杆','/img/head_accessories3.png','新品');
insert into oppo_nav values(null,'6','超闪车载充电器','/img/head_accessories4.png','');
insert into oppo_nav values(null,'6','更多配件','/img/head_more_accessories.png','');

#旗舰机
create table flagship_floor(
  fid int primary key auto_increment,			#手机编号
  family_id int,													#所属手机型号
  pos varchar(32),                        #文字位置 
  phone_name varchar(64),								  #手机名称
	spec varchar(64),                       #规格参数
	color varchar(256),											#颜色
  bgcolor varchar(256),
  border_color varchar(256),              #边框颜色
	price varchar(32),										  #价格
  btn varchar(32),                        #按钮内容
  is_new varchar(32),                     #是否为新品
	images varchar(128),                     #图片
  fsmimgs varchar(128), 
  ssmimgs varchar(128) 
);
insert into flagship_floor values(null,'1','left','OPPO Reno2','8G+128G，视频超级防抖。','background-image: linear-gradient(to right bottom, rgb(67, 124, 247), rgb(1, 20, 63))','background-color: rgb(100, 181, 255)','border-color: rgb(20, 63, 155)','¥2999','立即购买','新品','/img/suppro1_1.jpg','/img/smsuppro11.png','/img/smsuppro111.png');
insert into flagship_floor values(null,'1','left','OPPO Reno2','8G+128G，视频超级防抖。','background-image: linear-gradient(to right bottom, rgb(127, 181, 219), rgb(44, 71, 128))','background-color: rgb(156, 206, 249)','border-color: rgb(94, 137, 187)','¥2999','立即购买','新品','/img/suppro1_2.jpg','/img/smsuppro12.png','/img/smsuppro122.png');
insert into flagship_floor values(null,'1','left','OPPO Reno2','8G+128G，视频超级防抖。','background-image: linear-gradient(to right bottom, rgb(250, 219, 208), rgb(233, 179, 160))','background-color: rgb(235, 183, 181)','border-color: rgb(235, 183, 181)','¥2999','立即购买','新品','/img/suppro1_3.jpg','/img/smsuppro13.png','/img/smsuppro133.png');
insert into flagship_floor values(null,'2','right','OPPO  K3','6G+64G，VOOC 3.0。','background-image: linear-gradient(to right bottom, rgb(41, 59, 158), rgb(65, 4, 55))','background-color: rgb(41, 59, 158,0.68)','border-color: rgb(41, 59, 158)','¥1499','立即购买','新品','/img/suppro2_1.jpg','/img/smsuppro21.png','/img/smsuppro211.png');
insert into flagship_floor values(null,'2','right','OPPO  K3','8G+128G，全面屏。','background-image: linear-gradient(to right bottom, rgb(2, 85, 96), rgb(5, 10, 13))','background-color: rgb(2, 85, 96,0.68)','border-color: rgb(2, 85, 96)','¥1799','立即购买','新品','/img/suppro2_2.jpg','/img/smsuppro22.png','/img/smsuppro222.png');
insert into flagship_floor values(null,'2','right','OPPO  K3','8G+256G，骁龙 710。','background-image: linear-gradient(to right bottom, rgb(2, 189, 179), rgb(3, 55, 87))','background-color: rgb(2, 189, 179,0.68)','border-color: rgb(2, 189, 179)','¥1799','立即购买','新品','/img/suppro2_4.jpg','/img/smsuppro23.png','/img/smsuppro233.png');
insert into flagship_floor values(null,'3','left','Reno 10 倍变焦版','8G+256G，全景屏。','background-image: linear-gradient(to right bottom, rgb(86, 195, 210), rgb(39, 104, 122))','background-color: rgb(0, 155, 147,0.68)','border-color: rgb(0, 155, 147)','¥4299','立即购买','6期免息','/img/suppro3_1.jpg','/img/smsuppro31.png','/img/smsuppro311.png');
insert into flagship_floor values(null,'3','left','Reno 巴萨定制版','8G+256G，全景屏。','background-image: linear-gradient(to right bottom, rgb(20, 32, 220), rgb(175, 40, 36))','background-color: rgb(45, 56, 184,0.68)','border-color: rgb(45, 56, 184)','¥4299','立即购买','新品','/img/suppro3_2.jpg','/img/smsuppro32.png','/img/smsuppro322.png');
insert into flagship_floor values(null,'3','left','Reno 10 倍变焦版','6G+128G，全景屏。','background-image: linear-gradient(to right bottom, rgb(169, 178, 192), rgb(36, 41, 58))','background-color: rgb(43, 48, 57,0.68)','border-color: rgb(43, 48, 57)','¥3699','立即购买','6期免息','/img/suppro3_3.jpg','/img/smsuppro33.png','/img/smsuppro333.png');
insert into flagship_floor values(null,'3','left','Reno 10 倍变焦版','6G+256G，全景屏。','background-image: linear-gradient(to right bottom, rgb(86, 195, 210), rgb(39, 104, 122))','background-color: rgb(0, 155, 147,0.68)','border-color: rgb(0, 155, 147)','¥3999','立即购买','6期免息','/img/suppro3_4.jpg','/img/smsuppro34.png','/img/smsuppro344.png');

#次推机
create table main_floor(
  mid int primary key auto_increment,			#手机编号
  family_id int,													#所属手机型号
  phone_name varchar(64),								  #手机名称
	spec varchar(64),                       #规格参数
	color varchar(256),											#颜色
  border_color varchar(256),              #边框颜色
	price varchar(32),										  #价格
  is_new varchar(32),                     #是否为新品
	images varchar(128)                     #图片
);
insert into main_floor values(null,'1','Reno 10倍变焦版','骁龙855丨60倍数码变焦','background-image: linear-gradient(to right bottom, rgb(86, 195, 210), rgb(39, 104, 122))','border-color: rgb(86, 195, 210)','¥4299','直降500','/img/main_floor1_1.jpg');
insert into main_floor values(null,'1','Reno 10倍变焦版','骁龙855丨60倍数码变焦','background-image: linear-gradient(to right bottom, rgb(169, 178, 192), rgb(36, 41, 58))','border-color: rgb(169, 178, 192)','¥3699','直降300','/img/main_floor1_2.jpg');
insert into main_floor values(null,'1','Reno 10倍变焦版','骁龙855丨60倍数码变焦',' background-image: linear-gradient(to right bottom, rgb(20, 32, 220), rgb(175, 40, 36))','border-color: rgb(20, 32, 220) rgb(175, 40, 36)','¥4299','限量版','/img/main_floor1_3.jpg');
insert into main_floor values(null,'2','OPPO Reno','全景屏，VOOC3.0。','background-image: linear-gradient(to right bottom, rgb(226, 125, 243), rgb(122, 33, 137))','border-color: rgb(129, 72, 166)','¥2199','直降400','/img/main_floor2_1.jpg');
insert into main_floor values(null,'2','OPPO Reno','全景屏，VOOC3.0。','background-image: linear-gradient(to right bottom, rgb(169, 178, 192), rgb(36, 41, 58))','border-color: rgb(43, 48, 57)','¥2199','直降400','/img/main_floor2_2.jpg');
insert into main_floor values(null,'2','OPPO Reno','全景屏，VOOC3.0。','background-image: linear-gradient(to right bottom, rgb(243, 131, 76), rgb(240, 87, 47))','border-color: rgb(235, 77, 34)','¥2499','直降300','/img/main_floor2_3.jpg');
insert into main_floor values(null,'2','OPPO Reno','全景屏，VOOC3.0。','background-image: linear-gradient(to right bottom, rgb(86, 195, 210), rgb(39, 104, 122))','border-color: rgb(0, 155, 147)','¥2799','直降200','/img/main_floor2_4.jpg');
insert into main_floor values(null,'2','OPPO Reno','全景屏，VOOC3.0。','background-image: linear-gradient(to right bottom, rgb(255, 236, 216), rgb(226, 189, 156))','border-color: rgb(235, 183, 181)','¥2799','直降200','/img/main_floor2_5.jpg');
insert into main_floor values(null,'3','Reno Z','6G+256G | VOOC 3.0。','background-image: linear-gradient(to right bottom, rgb(243, 131, 76), rgb(240, 87, 47))','border-color: rgb(227, 104, 73)','¥2299','0','/img/main_floor3_1.jpg');
insert into main_floor values(null,'3','Reno Z','6G+256G | VOOC 3.0。','background-image: linear-gradient(to right bottom, rgb(245, 225, 215), rgb(219, 228, 237))','border-color: rgb(245, 225, 215)','¥2299','0','/img/main_floor3_2.jpg');
insert into main_floor values(null,'3','Reno Z','8G+128G | 支持NFC。','background-image: linear-gradient(to right bottom, rgb(16, 32, 54), rgb(67, 79, 96))','border-color: rgb(16, 32, 54)','¥2299','0','/img/main_floor3_3.jpg');
insert into main_floor values(null,'3','Reno Z','8G+128G | 支持NFC。','background-image: linear-gradient(to right bottom, rgb(44, 61, 160), rgb(99, 27, 136))','border-color: rgb(44, 61, 160)','¥2299','0','/img/main_floor3_4.jpg');
insert into main_floor values(null,'4','Reno2 Z','8G+128G | 4800万夜拍四摄','background-image: linear-gradient(to right bottom, rgb(218, 234, 239), rgb(193, 233, 251))','border-color: rgb(218, 234, 239)','¥2499','新品','/img/main_floor4_1.jpg');
insert into main_floor values(null,'4','Reno2 Z','8G+128G | 4800万夜拍四摄','background-image: linear-gradient(to right bottom, rgb(67, 124, 247), rgb(1, 20, 63))','border-color: rgb(67, 124, 247)','¥2499','新品','/img/main_floor4_2.jpg');
insert into main_floor values(null,'5','OPPO K3','8G+128G | VOOC 3.0','background-image: linear-gradient(to right bottom, rgb(41, 59, 158), rgb(65, 4, 55))','border-color: rgb(41, 59, 158)','¥1799','爆品','/img/main_floor5_1.jpg');
insert into main_floor values(null,'5','OPPO K3','8G+128G | VOOC 3.0','background-image: linear-gradient(to right bottom, rgb(238, 245, 255), rgb(245, 228, 212))','border-color: rgb(238, 245, 255)','¥1799','爆品','/img/main_floor5_2.jpg');
insert into main_floor values(null,'5','OPPO K3','8G+128G | VOOC 3.0','background-image: linear-gradient(to right bottom, rgb(2, 85, 96), rgb(5, 10, 13))','border-color: rgb(2, 85, 96)','¥1799','爆品','/img/main_floor5_3.jpg');
insert into main_floor values(null,'6','A11x','8G+128G丨5000mAh大电池','background-image: linear-gradient(to right bottom, rgb(74, 123, 246), rgb(42, 26, 143))','border-color: rgb(74, 123, 246)','¥1799','新品','/img/main_floor6_1.jpg');
insert into main_floor values(null,'6','A11x','8G+128G丨5000mAh大电池','background-image: linear-gradient(to right bottom, rgb(94, 200, 225), rgb(1, 48, 73))','border-color: rgb(94, 200, 225)','¥1799','新品','/img/main_floor6_2.jpg');
insert into main_floor values(null,'7','A9x','4800万像素 | VOOC 3.0','background-image: linear-gradient(to right bottom, rgb(222, 248, 245), rgb(180, 203, 200))','border-color: rgb(222, 248, 245)','¥1799','3期免息','/img/main_floor7_1.jpg');
insert into main_floor values(null,'7','A9x','4800万像素 | VOOC 3.0','background-image: linear-gradient(to right bottom, rgb(169, 178, 192), rgb(36, 41, 58))','border-color: rgb(169, 178, 192)','¥1799','3期免息','/img/main_floor7_2.jpg');
insert into main_floor values(null,'7','A9x','4800万像素 | VOOC 3.0','background-image: linear-gradient(to right bottom, rgb(144, 243, 237), rgb(37, 142, 169))','border-color: rgb(43, 222, 223)','¥1799','新配色','/img/main_floor7_3.jpg');
insert into main_floor values(null,'8','A11','4G+128G丨5000mAh','background-image: linear-gradient(to right bottom, rgb(94, 200, 225), rgb(1, 48, 73))','border-color: rgb(94, 200, 225) rgb(1, 48, 73)','¥1499','0','/img/main_floor8_1.jpg');
insert into main_floor values(null,'8','A11','4G+128G丨5000mAh','background-image: linear-gradient(to right bottom, rgb(242, 239, 240), rgb(228, 239, 244))','border-color: rgb(242, 239, 240) rgb(228, 239, 244)','¥1499','0','/img/main_floor8_2.jpg');


#购买页手机图片
create TABLE OPPO_phone_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,				   #图片编号
  phone_name varchar(64),															   #手机名称
  buy_lg VARCHAR(128),                         #购买界面大图路径
  buy_sm VARCHAR(128)                          #购买界面小图路径
);
insert into OPPO_phone_pic values('null','Reno','/img/pro_reno_bigimg1.png','/img/pro_reno_smallimg1.png');
insert into OPPO_phone_pic values('null','Reno','/img/pro_reno_bigimg2.png','/img/pro_reno_smallimg2.png');
insert into OPPO_phone_pic values('null','Reno','/img/pro_reno_bigimg3.png','/img/pro_reno_smallimg3.png');
insert into OPPO_phone_pic values('null','Reno','/img/pro_reno_bigimg4.png','/img/pro_reno_smallimg4.png');

#手机购买规格
create TABLE OPPO_phone_spec(
  sid INT PRIMARY KEY AUTO_INCREMENT,				   #规格编号
  phone_name varchar(64),															 #手机名称
  big_title varchar(128),
  small_title varchar(256),
  color_title varchar(128),
  color varchar(128),                           #颜色
  color_name varchar(32),                       #颜色名称
  spec varchar(256),                            #规格参数
  new_price varchar(32),                        #价格
  old_price varchar(32)
);
insert into OPPO_phone_spec values('null','Reno','Reno 6G+128G 珊瑚橙','全景屏，4800万超清像素、支持NFC、VOOC 3.0。','Reno Z热卖中 >>>','background-image: linear-gradient(to right bottom, rgb(243, 131, 76), rgb(240, 87, 47))','珊瑚橙','6G+128G','￥2499.00  ','￥2799');
insert into OPPO_phone_spec values('null','Reno','Reno 6G+256G 珊瑚橙','全景屏，4800万超清像素、支持NFC、VOOC 3.0。','Reno Z热卖中 >>>','background-image: linear-gradient(to right bottom, rgb(243, 131, 76), rgb(240, 87, 47))','珊瑚橙','6G+256G','￥2799.00  ','￥2999');
insert into OPPO_phone_spec values('null','Reno','Reno 8G+128G 珊瑚橙','全景屏，4800万超清像素、支持NFC、VOOC 3.0。','Reno Z热卖中 >>>','background-image: linear-gradient(to right bottom, rgb(243, 131, 76), rgb(240, 87, 47))','珊瑚橙','8G+128G','￥2799.00  ','￥2999');

#手机购买赠品
create TABLE OPPO_phone_complimentary(
  cid INT PRIMARY KEY AUTO_INCREMENT,				   #赠品编号
  complimentary varchar(128),															 #赠品名称
  img varchar(128)
);
insert into OPPO_phone_complimentary values(null,'蓝牙音箱 N6','/img/complimentary1.png');


#手机购买界面图片
create table OPPO_spcdetails_pic(
	did int primary key auto_increment,						#手机购买界面图片编号
	phone_name INT,															    #手机名称
	detials_pic varchar(128)                      #详情图片
);
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details1.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details2.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details3.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details4.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details5.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details6.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details7.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details8.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details9.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details10.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details11.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details12.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details13.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details14.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details15.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details16.jpg');
insert into OPPO_spcdetails_pic values(null,'Reno','img/reno_details17.jpg');

#配件编号
create table OPPO_fittings(
	fid int primary key auto_increment,						#配件编号
  sortid int,                                   #分类编号
  sortname varchar(64),                         #分类名称
	fname varchar(64),														#配件名称
	price varchar(32),																#价格
  is_new varchar(32),
	fittings_pic varchar(128)											#配件图片
);
insert into OPPO_fittings values('null',1,'推荐','无线降噪耳机','¥599','新品预售','/img/sup_recommend1.jpg');
insert into OPPO_fittings values('null',1,'推荐','O-Fresh 立体声耳机','¥129','0','/img/sup_recommend2.png');
insert into OPPO_fittings values('null',1,'推荐','三脚架蓝牙自拍杆','¥119','0','/img/sup_recommend3.png');
insert into OPPO_fittings values('null',1,'推荐','超级闪充车载充电器','¥199','0','/img/sup_recommend4.png');
insert into OPPO_fittings values('null',1,'推荐','闪充电源适配器','¥79','0','/img/sup_recommend6.png');
insert into OPPO_fittings values('null',1,'推荐','半入耳式耳机','¥59','0','/img/sup_recommend7.png');
insert into OPPO_fittings values('null',2,'耳机','无线降噪耳机','¥599','0','/img/sup_earphone1.jpg');
insert into OPPO_fittings values('null',2,'耳机','O-Free 无线耳机','¥499','0','/img/sup_earphone2.png');
insert into OPPO_fittings values('null',2,'耳机','O-Fresh 立体声耳机','¥129','0','/img/sup_recommend2.png');
insert into OPPO_fittings values('null',2,'耳机','半入耳式耳机','¥59','0','/img/sup_recommend7.png');
insert into OPPO_fittings values('null',2,'耳机','半入耳式耳机','¥69','0','/img/sup_earphone3.png');
insert into OPPO_fittings values('null',3,'数据线/适配器','闪充 USB 数据线','¥29','0','/img/sup_data_wire1.jpg');
insert into OPPO_fittings values('null',3,'数据线/适配器','超级闪充车载充电器','¥199','0','/img/sup_recommend4.png');
insert into OPPO_fittings values('null',3,'数据线/适配器','超级闪充数据线','¥89','0','/img/sup_data_wire3.png');
insert into OPPO_fittings values('null',3,'数据线/适配器','超级闪充数据线','¥89','0','/img/sup_data_wire3.png');
insert into OPPO_fittings values('null',3,'数据线/适配器','超级闪充电源适配器','¥199','0','/img/sup_data_wire4.png');
insert into OPPO_fittings values('null',3,'数据线/适配器','闪充电源适配器','¥79','0','/img/sup_data_wire5.png');
insert into OPPO_fittings values('null',4,'移动电源','VOOC 闪充移动电源','¥299','0','/img/sup_power_source1.jpg');
insert into OPPO_fittings values('null',4,'移动电源','10000mAh 移动电源','¥49','0','/img/sup_power_source2.png');
insert into OPPO_fittings values('null',4,'移动电源','VOOC 闪充移动电源','¥279','0','/img/sup_power_source3.png');
insert into OPPO_fittings values('null',4,'移动电源','超级闪充移动电源','¥379','0','/img/sup_power_source4.png');
insert into OPPO_fittings values('null',5,'超值套餐','闪充 USB 套装','¥108','立减10元','/img/sup_suit1.jpg');
insert into OPPO_fittings values('null',5,'超值套餐','闪充Type-C套装','¥128','立减10元','/img/sup_suit2.png');
insert into OPPO_fittings values('null',5,'超值套餐','普通充电套装','¥48','立减5元','/img/sup_suit4.png');
insert into OPPO_fittings values('null',5,'超值套餐','超闪充电套装','¥288','立减29元','/img/sup_suit3.png');
insert into OPPO_fittings values('null',5,'超值套餐','超闪车载闪充套装','¥288','立省29元','/img/sup_suit5.png');
insert into OPPO_fittings values('null',5,'超值套餐','Type-C车载闪充套装','¥229','立省19元','/img/sup_suit6.png');
insert into OPPO_fittings values('null',5,'超值套餐','USB车载闪充套装','¥218','立省10元','/img/sup_suit7.png');
insert into OPPO_fittings values('null',6,'保护壳','Reno2 保护壳','¥59','0','/img/sup_case1.jpg');
insert into OPPO_fittings values('null',6,'保护壳','K3 保护壳','¥19','0','/img/sup_case2.png');
insert into OPPO_fittings values('null',6,'保护壳','Reno 保护壳','¥39','0','/img/sup_case3.png');
insert into OPPO_fittings values('null',6,'保护壳','R17 Pro 保护壳','¥99','0','/img/sup_case4.png');
insert into OPPO_fittings values('null',6,'保护壳','Find X 皮质保护壳','¥99','0','/img/sup_case5.png');
insert into OPPO_fittings values('null',6,'保护壳','R17 保护壳','¥99','0','/img/sup_case6.png');
insert into OPPO_fittings values('null',7,'其他','游戏手柄 C1','¥299','新品预约','/img/sup_other1.jpg');
insert into OPPO_fittings values('null',7,'其他','三脚架蓝牙自拍杆','¥119','0','/img/sup_recommend3.png');
insert into OPPO_fittings values('null',7,'其他','转接头','¥19','0','/img/sup_other2.png');
insert into OPPO_fittings values('null',7,'其他','耳机转接头','¥29','0','/img/sup_other3.png');



#用户注册信息
create table OPPO_user(
	uid int primary key auto_increment,						#用户编号
	unickname varchar(32),												#用户名
	upwd varchar(32),															#密码
	email varchar(64),														#邮箱
	phone varchar(16),														#手机号

	avatar varchar(128),													#头像图片地址
	user_name varchar(32),                        #用户名
	sex int																				#性别   0-女  1-男
);
insert into OPPO_user values(1, 'beibei', '123456', 'beibei@qq.com', '17812345678', 'img', '贝贝', 0);
insert into OPPO_user values(2, 'jingjing', '123456', 'jingjing@qq.com', '17812345678', 'img', '晶晶', 1);
insert into OPPO_user values(3, 'huanhuan', '123456', 'huanhuan@qq.com', '17812345678', 'img', '欢欢', 1);
insert into OPPO_user values(4, 'yingying', '123456', 'yingying@qq.com', '17812345678', 'img', '迎迎', 1);
insert into OPPO_user values(5, 'nini', '123456', 'nini@qq.com', '17812345678', 'img', '妮妮', 0);
insert into OPPO_user values(6, 'nuannuan', 'cgh0429', '1546188440@qq.com', '17863273297', 'img', '成高函', 0);

#收货地址信息
create table OPPO_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,           #地址编号
  user_id INT,																	#用户编号
  receiver VARCHAR(16),													#收件人姓名
  province VARCHAR(16),													#省
  city VARCHAR(16),															#市
  county VARCHAR(16),														#县
  address VARCHAR(128),													#详细地址
  cellphone VARCHAR(16),												#手机号
  postcode CHAR(6),															#邮编
  tag VARCHAR(16),															#标签名

  is_default BOOLEAN														#是否为当前用户的默认收货地址
);

#购物车条目
create table OPPO_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,						#购物车条目
  user_id INT,																	#用户编号
  product_id INT,																#商品编号
  count INT,																		#购买数量
  is_checked BOOLEAN														#是否已勾选，确定购买
);

#用户订单
create table OPPO_order(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,																	#用户编号
  address_id INT,																#地址编号
  status INT,																		#订单状态  1-等待付款  2-等待发货  3-运输中  4-已签收  5-已取消
  order_time BIGINT,														#下单时间
  pay_time BIGINT,															#付款时间
  deliver_time BIGINT,													#发货时间
  received_time BIGINT													#签收时间
);

#用户订单详情
create table OPPO_order_detail(
  did INT PRIMARY KEY AUTO_INCREMENT,           #用户订单详情编号
  order_id INT,																	#订单编号
  product_id INT,																#产品编号
  count INT																			#购买数量
);

#首页导航背景图
create table homePage_bbg_pic(
	bid int primary key auto_increment,						#导航背景图编号
	images varchar(128),													#图片地址
	title varchar(64)                             #图片标题
);
insert into homePage_bbg_pic values(1,'images/background1.jpg','Reno Z');

#首页用图
create table homePage_pic(
	pid int primary key auto_increment,						#首页用图编号
	images varchar(128),													#图片地址
	title varchar(64)                             #图片标题
);
insert into homePage_pic values(1,'images/homePage1.jpg','Reno 活力橙现');
insert into homePage_pic values(2,'images/homePage2.jpg','K3 硬核少年');
insert into homePage_pic values(3,'images/homePage3.jpg','OPPO 影像创业大赛');
insert into homePage_pic values(4,'images/homePage4.jpg','618 硬核到底');

#商城页面轮播图片
create table shopping_mall_focus(
	fid int primary key auto_increment,						#图片编号
	pic_src varchar(128),															#图片地址
  smpic_src varchar(128),
	title varchar(64), 														#图片标题
  smalltitle varchar(64),                       #小标题
  btn varchar(32),                              #按钮内容
	link_to varchar(128)								  					#图片链接地址
);
insert into shopping_mall_focus values(1,'/img/shop1.jpg','/img/small_shop1.jpg','Reno Ace','65W 超级闪充，骁龙855 Plus。','立即抢购','javascript:;');
insert into shopping_mall_focus values(2,'/img/shop2.jpg','/img/small_shop2.jpg','OPPO K5','6400 万四摄，VOOC 闪充 4.0。','立即抢购','javascript:;');
insert into shopping_mall_focus values(3,'/img/shop3.jpg','/img/small_shop3.jpg','OPPO 无线降噪耳机','高达定制版正式开售，赠收纳盒。','立即抢购','javascript:;');
insert into shopping_mall_focus values(4,'/img/shop4.jpg','/img/small_shop4.jpg','','','','');
insert into shopping_mall_focus values(5,'/img/shop5.jpg','/img/small_shop5.jpg','OPPO 配件馆','新品上市，全场最高直降 50 元。','立即购买','javascript:;');
insert into shopping_mall_focus values(6,'/img/shop6.jpg','/img/small_shop6.jpg','OPPO A11','5000mAh 大电池，1200 万超清四摄。','立即购买','javascript:;');
