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
  phone_name varchar(64),								  #手机名称
	spec varchar(64),                       #规格参数
	color varchar(128),											#颜色
  border_color varchar(128),              #边框颜色
	price varchar(32),										  #价格
  btn varchar(32),                        #按钮内容
  is_new varchar(32),                     #是否为新品
	images varchar(128)                     #图片
);
insert into flagship_floor values(null,'1','OPPO Reno2','8G+128G，视频超级防抖。','background-image: linear-gradient(to right bottom, rgb(67, 124, 247), rgb(1, 20, 63))','border-color: rgb(20, 63, 155)','¥2999','立即购买','新品','/img/suppro1_1.jpg');
insert into flagship_floor values(null,'1','OPPO Reno2','8G+128G，视频超级防抖。','background-image: linear-gradient(to right bottom, rgb(127, 181, 219), rgb(44, 71, 128))','border-color: rgb(94, 137, 187)','¥2999','立即购买','新品','/img/suppro1_2.jpg');
insert into flagship_floor values(null,'1','OPPO Reno2','8G+128G，视频超级防抖。','background-image: linear-gradient(to right bottom, rgb(250, 219, 208), rgb(233, 179, 160))','border-color: rgb(235, 183, 181)','¥2999','立即购买','新品','/img/suppro1_3.jpg');
insert into flagship_floor values(null,'2','OPPO  K3','6G+64G，VOOC 3.0。','background-image: linear-gradient(to right bottom, rgb(41, 59, 158), rgb(65, 4, 55))','border-color: rgb(41, 59, 158)','¥1499','立即购买','新品','/img/suppro2_1.jpg');
insert into flagship_floor values(null,'2','OPPO  K3','8G+128G，全面屏。','background-image: linear-gradient(to right bottom, rgb(2, 85, 96), rgb(5, 10, 13))','border-color: rgb(2, 85, 96)','¥1799','立即购买','新品','/img/suppro2_2.jpg');
insert into flagship_floor values(null,'2','OPPO  K3','8G+256G，骁龙 710。','background-image: linear-gradient(to right bottom, rgb(238, 245, 255), rgb(245, 228, 212))','border-color: rgb(238, 245, 255) rgb(245, 228, 212)','¥2299','立即购买','新品','/img/suppro2_3.jpg');
insert into flagship_floor values(null,'2','OPPO  K3','8G+256G，骁龙 710。','background-image: linear-gradient(to right bottom, rgb(2, 189, 179), rgb(3, 55, 87))','border-color: rgb(2, 189, 179)','¥1799','立即购买','新品','/img/suppro2_4.jpg');
insert into flagship_floor values(null,'3','Reno 10 倍变焦版','8G+256G，全景屏。','background-image: linear-gradient(to right bottom, rgb(86, 195, 210), rgb(39, 104, 122))','border-color: rgb(0, 155, 147)','¥4299','立即购买','6期免息','/img/suppro3_1.jpg');
insert into flagship_floor values(null,'3','Reno 巴萨定制版','8G+256G，全景屏。','background-image: linear-gradient(to right bottom, rgb(20, 32, 220), rgb(175, 40, 36))','border-color: rgb(45, 56, 184)','¥4299','立即购买','新品','/img/suppro3_2.jpg');
insert into flagship_floor values(null,'3','Reno 10 倍变焦版','6G+128G，全景屏。','background-image: linear-gradient(to right bottom, rgb(169, 178, 192), rgb(36, 41, 58))','border-color: rgb(43, 48, 57)','¥3699','立即购买','6期免息','/img/suppro3_3.jpg');
insert into flagship_floor values(null,'3','Reno 10 倍变焦版','6G+256G，全景屏。','background-image: linear-gradient(to right bottom, rgb(86, 195, 210), rgb(39, 104, 122))','border-color: rgb(0, 155, 147)','¥3999','立即购买','6期免息','/img/suppro3_4.jpg');


#手机资料
create table OPPO_phone(
  pid int primary key auto_increment,			#手机编号
  family_id int,													#所属手机型号
  phone_name varchar(64),								  #手机名称
	spec varchar(64),                       #规格参数
	color varchar(64),											#颜色
	price decimal(8,2),										  #价格
	images varchar(128)                     #图片
);
insert into OPPO_phone values(1,1,'OPPO K3','6G+64G,VOOC 3.0','星云紫',1599,'images/k31.jpg');
insert into OPPO_phone values(2,1,'OPPO K3','6G+64G,VOOC 3.0','秘境黑',1599,'images/k32.jpg');
insert into OPPO_phone values(3,1,'OPPO K3','6G+64G,VOOC 3.0','晨曦白',1599,'images/k33.jpg');
insert into OPPO_phone values(4,2,'Reno 10','6G+128G,全景屏','极夜黑',3999,'images/Reno 101.jpg');
insert into OPPO_phone values(5,2,'Reno 10','6G+128G,全景屏','雾海绿',3999,'images/Reno 102.jpg');
insert into OPPO_phone values(6,2,'Reno 10','6G+128G,全景屏','薄雾粉',3999,'images/Reno 103.jpg');
insert into OPPO_phone values(7,3,'OPPO Reno','6G+256G,VOOC 3.0','珊瑚橙',2999,'images/OPPO Reno1.jpg');
insert into OPPO_phone values(8,3,'OPPO Reno','6G+256G,VOOC 3.0','灵感版',2999,'images/OPPO Reno2.jpg');
insert into OPPO_phone values(9,3,'OPPO Reno','6G+256G,VOOC 3.0','雾海绿',2999,'images/OPPO Reno3.jpg');
insert into OPPO_phone values(10,3,'OPPO Reno','6G+256G,VOOC 3.0','星云紫',2999,'images/OPPO Reno4.jpg');
insert into OPPO_phone values(11,3,'OPPO Reno','6G+256G,VOOC 3.0','薄雾粉',2999,'images/OPPO Reno5.jpg');
insert into OPPO_phone values(12,4,'Reno Z','6G+256G,VOOC 3.0','珊瑚橙',2499,'images/Reno Z1.jpg');
insert into OPPO_phone values(13,4,'Reno Z','6G+256G,VOOC 3.0','珠贝白',2499,'images/Reno Z2.jpg');
insert into OPPO_phone values(14,4,'Reno Z','6G+256G,VOOC 3.0','极夜黑',2499,'images/Reno Z3.jpg');
insert into OPPO_phone values(15,4,'Reno Z','6G+256G,VOOC 3.0','星辰紫',2499,'images/Reno Z4.jpg');
insert into OPPO_phone values(16,5,'A9','4G+128G|4020mAh大电池','萤石紫',1399,'images/A91.jpg');
insert into OPPO_phone values(17,5,'A9','4G+128G|4020mAh大电池','冰玉白',1399,'images/A92.jpg');
insert into OPPO_phone values(18,5,'A9','4G+128G|4020mAh大电池','云母绿',1399,'images/A93.jpg');
insert into OPPO_phone values(19,6,'A9x','4800万像素|VOOC 3.0','冰玉白',1999,'images/A9x1.jpg');
insert into OPPO_phone values(20,6,'A9x','4800万像素|VOOC 3.0','曜石黑',1999,'images/A9x2.jpg');
insert into OPPO_phone values(21,7,'K1','6G+64G|骁龙660','摩卡红',1399,'images/K11.jpg');
insert into OPPO_phone values(22,7,'K1','6G+64G|骁龙660','墨玉黑',1399,'images/K12.jpg');
insert into OPPO_phone values(23,7,'K1','6G+64G|骁龙660','银光绿',1399,'images/K13.jpg');
insert into OPPO_phone values(24,7,'K1','6G+64G|骁龙660','梵星蓝',1399,'images/K14.jpg');
insert into OPPO_phone values(25,8,'R17','8G+128G|水滴屏','霓光紫',2499,'images/R171.jpg');
insert into OPPO_phone values(26,8,'R17','8G+128G|水滴屏','流光蓝',2499,'images/R172.jpg');
insert into OPPO_phone values(27,8,'R17','8G+128G|水滴屏','雾光渐变色',2499,'images/R173.jpg');
insert into OPPO_phone values(28,9,'R15x','6G+128G|光感屏幕指纹','冰萃银',1999,'images/R15x1.jpg');
insert into OPPO_phone values(29,9,'R15x','6G+128G|光感屏幕指纹','星云渐变',1999,'images/R15x2.jpg');
insert into OPPO_phone values(30,10,'A5','4G+64G|强悍续航','珊瑚红',1199,'images/A51.jpg');
insert into OPPO_phone values(31,10,'A5','4G+64G|强悍续航','幻境蓝',1199,'images/A52.jpg');
insert into OPPO_phone values(32,10,'A5','4G+64G|强悍续航','幻境粉',1199,'images/A53.jpg');
insert into OPPO_phone values(33,11,'R17 Pro','6G+128G|超强夜拍','雾光渐变色',2699,'images/R17 Pro1.jpg');
insert into OPPO_phone values(34,11,'R17 Pro','6G+128G|超强夜拍','凝光绿',2699,'images/R17 Pro2.jpg');
insert into OPPO_phone values(35,11,'R17 Pro','6G+128G|超强夜拍','王者定制版',2699,'images/R17 Pro3.jpg');
insert into OPPO_phone values(36,12,'Find X','8G+128G|曲面全景屏','冰珀蓝',4999,'images/Find X1.jpg');
insert into OPPO_phone values(37,12,'Find X','8G+128G|曲面全景屏','碳纤黑',4999,'images/Find X2.jpg');
insert into OPPO_phone values(38,12,'Find X','8G+128G|曲面全景屏','波尔多红',4999,'images/Find X3.jpg');
insert into OPPO_phone values(39,13,'A7','4G+64G|3D凝光机身','琥珀金',1499,'images/A71.jpg');
insert into OPPO_phone values(40,13,'A7','4G+64G|3D凝光机身','清新粉',1499,'images/A72.jpg');
insert into OPPO_phone values(41,13,'A7','4G+64G|3D凝光机身','湖光绿',1499,'images/A73.jpg');

#手机图片
create TABLE OPPO_phone_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,				   #图片编号
  phone_id INT,															   #手机编号
  buy_lg VARCHAR(128),                         #购买界面大图路径
  buy_sm VARCHAR(128)                          #购买界面小图路径
);
insert into OPPO_phone_pic values(1,1,'images/lgk31.jpg','images/smk311.jpg');
insert into OPPO_phone_pic values(2,1,'images/lgk31.jpg','images/smk312.jpg');
insert into OPPO_phone_pic values(3,1,'images/lgk31.jpg','images/smk313.jpg');
insert into OPPO_phone_pic values(4,1,'images/lgk31.jpg','images/smk314.jpg');
insert into OPPO_phone_pic values(5,1,'images/lgk32.jpg','images/smk321.jpg');
insert into OPPO_phone_pic values(6,1,'images/lgk32.jpg','images/smk322.jpg');
insert into OPPO_phone_pic values(7,1,'images/lgk32.jpg','images/smk323.jpg');
insert into OPPO_phone_pic values(8,1,'images/lgk32.jpg','images/smk324.jpg');
insert into OPPO_phone_pic values(9,1,'images/lgk33.jpg','images/smk331.jpg');
insert into OPPO_phone_pic values(10,1,'images/lgk33.jpg','images/smk331.jpg');
insert into OPPO_phone_pic values(11,1,'images/lgk33.jpg','images/smk331.jpg');
insert into OPPO_phone_pic values(12,1,'images/lgk33.jpg','images/smk331.jpg');
insert into OPPO_phone_pic values(13,2,'images/lgReno 101.jpg','images/smReno 1011.jpg');
insert into OPPO_phone_pic values(14,2,'images/lgReno 101.jpg','images/smReno 1012.jpg');
insert into OPPO_phone_pic values(15,2,'images/lgReno 101.jpg','images/smReno 1013.jpg');
insert into OPPO_phone_pic values(16,2,'images/lgReno 101.jpg','images/smReno 1014.jpg');
insert into OPPO_phone_pic values(17,2,'images/lgReno 102.jpg','images/smReno 1021.jpg');
insert into OPPO_phone_pic values(18,2,'images/lgReno 102.jpg','images/smReno 1022.jpg');
insert into OPPO_phone_pic values(19,2,'images/lgReno 102.jpg','images/smReno 1023.jpg');
insert into OPPO_phone_pic values(20,2,'images/lgReno 102.jpg','images/smReno 1024.jpg');
insert into OPPO_phone_pic values(21,2,'images/lgReno 103.jpg','images/smReno 1031.jpg');
insert into OPPO_phone_pic values(22,2,'images/lgReno 103.jpg','images/smReno 1032.jpg');
insert into OPPO_phone_pic values(23,2,'images/lgReno 103.jpg','images/smReno 1033.jpg');
insert into OPPO_phone_pic values(24,2,'images/lgReno 103.jpg','images/smReno 1034.jpg');
insert into OPPO_phone_pic values(25,3,'images/lgOPPO Reno1.jpg','images/smOPPO Reno11.jpg');
insert into OPPO_phone_pic values(26,3,'images/lgOPPO Reno1.jpg','images/smOPPO Reno12.jpg');
insert into OPPO_phone_pic values(27,3,'images/lgOPPO Reno1.jpg','images/smOPPO Reno13.jpg');
insert into OPPO_phone_pic values(28,3,'images/lgOPPO Reno1.jpg','images/smOPPO Reno14.jpg');
insert into OPPO_phone_pic values(29,3,'images/lgOPPO Reno2.jpg','images/smOPPO Reno21.jpg');
insert into OPPO_phone_pic values(30,3,'images/lgOPPO Reno2.jpg','images/smOPPO Reno22.jpg');
insert into OPPO_phone_pic values(31,3,'images/lgOPPO Reno2.jpg','images/smOPPO Reno23.jpg');
insert into OPPO_phone_pic values(32,3,'images/lgOPPO Reno2.jpg','images/smOPPO Reno24.jpg');
insert into OPPO_phone_pic values(33,3,'images/lgOPPO Reno3.jpg','images/smOPPO Reno31.jpg');
insert into OPPO_phone_pic values(34,3,'images/lgOPPO Reno3.jpg','images/smOPPO Reno32.jpg');
insert into OPPO_phone_pic values(35,3,'images/lgOPPO Reno3.jpg','images/smOPPO Reno33.jpg');
insert into OPPO_phone_pic values(36,3,'images/lgOPPO Reno3.jpg','images/smOPPO Reno34.jpg');
insert into OPPO_phone_pic values(37,3,'images/lgOPPO Reno4.jpg','images/smOPPO Reno41.jpg');
insert into OPPO_phone_pic values(38,3,'images/lgOPPO Reno4.jpg','images/smOPPO Reno42.jpg');
insert into OPPO_phone_pic values(39,3,'images/lgOPPO Reno4.jpg','images/smOPPO Reno43.jpg');
insert into OPPO_phone_pic values(40,3,'images/lgOPPO Reno4.jpg','images/smOPPO Reno44.jpg');
insert into OPPO_phone_pic values(41,3,'images/lgOPPO Reno5.jpg','images/smOPPO Reno51.jpg');
insert into OPPO_phone_pic values(42,3,'images/lgOPPO Reno5.jpg','images/smOPPO Reno52.jpg');
insert into OPPO_phone_pic values(43,3,'images/lgOPPO Reno5.jpg','images/smOPPO Reno53.jpg');
insert into OPPO_phone_pic values(44,3,'images/lgOPPO Reno5.jpg','images/smOPPO Reno54.jpg');
insert into OPPO_phone_pic values(45,4,'images/lgReno Z1.jpg','images/smReno Z11.jpg');
insert into OPPO_phone_pic values(46,4,'images/lgReno Z1.jpg','images/smReno Z12.jpg');
insert into OPPO_phone_pic values(47,4,'images/lgReno Z1.jpg','images/smReno Z13.jpg');
insert into OPPO_phone_pic values(48,4,'images/lgReno Z1.jpg','images/smReno Z14.jpg');
insert into OPPO_phone_pic values(49,4,'images/lgReno Z2.jpg','images/smReno Z21.jpg');
insert into OPPO_phone_pic values(50,4,'images/lgReno Z2.jpg','images/smReno Z22.jpg');
insert into OPPO_phone_pic values(51,4,'images/lgReno Z2.jpg','images/smReno Z23.jpg');
insert into OPPO_phone_pic values(52,4,'images/lgReno Z2.jpg','images/smReno Z24.jpg');
insert into OPPO_phone_pic values(53,4,'images/lgReno Z3.jpg','images/smReno Z31.jpg');
insert into OPPO_phone_pic values(54,4,'images/lgReno Z3.jpg','images/smReno Z32.jpg');
insert into OPPO_phone_pic values(55,4,'images/lgReno Z3.jpg','images/smReno Z33.jpg');
insert into OPPO_phone_pic values(56,4,'images/lgReno Z3.jpg','images/smReno Z34.jpg');
insert into OPPO_phone_pic values(57,4,'images/lgReno Z4.jpg','images/smReno Z41.jpg');
insert into OPPO_phone_pic values(58,4,'images/lgReno Z4.jpg','images/smReno Z42.jpg');
insert into OPPO_phone_pic values(59,4,'images/lgReno Z4.jpg','images/smReno Z43.jpg');
insert into OPPO_phone_pic values(60,4,'images/lgReno Z4.jpg','images/smReno Z44.jpg');
insert into OPPO_phone_pic values(61,5,'images/lgA91.jpg','images/smA911.jpg');
insert into OPPO_phone_pic values(62,5,'images/lgA91.jpg','images/smA912.jpg');
insert into OPPO_phone_pic values(63,5,'images/lgA91.jpg','images/smA913.jpg');
insert into OPPO_phone_pic values(64,5,'images/lgA91.jpg','images/smA914.jpg');
insert into OPPO_phone_pic values(65,5,'images/lgA92.jpg','images/smA921.jpg');
insert into OPPO_phone_pic values(66,5,'images/lgA92.jpg','images/smA922.jpg');
insert into OPPO_phone_pic values(67,5,'images/lgA92.jpg','images/smA923.jpg');
insert into OPPO_phone_pic values(68,5,'images/lgA92.jpg','images/smA924.jpg');
insert into OPPO_phone_pic values(69,5,'images/lgA93.jpg','images/smA931.jpg');
insert into OPPO_phone_pic values(70,5,'images/lgA93.jpg','images/smA932.jpg');
insert into OPPO_phone_pic values(71,5,'images/lgA93.jpg','images/smA933.jpg');
insert into OPPO_phone_pic values(72,5,'images/lgA93.jpg','images/smA934.jpg');
insert into OPPO_phone_pic values(73,6,'images/lgA9x1.jpg','images/smA9x11.jpg');
insert into OPPO_phone_pic values(74,6,'images/lgA9x1.jpg','images/smA9x12.jpg');
insert into OPPO_phone_pic values(75,6,'images/lgA9x1.jpg','images/smA9x13.jpg');
insert into OPPO_phone_pic values(76,6,'images/lgA9x1.jpg','images/smA9x14.jpg');
insert into OPPO_phone_pic values(77,6,'images/lgA9x2.jpg','images/smA9x21.jpg');
insert into OPPO_phone_pic values(78,6,'images/lgA9x2.jpg','images/smA9x22.jpg');
insert into OPPO_phone_pic values(79,6,'images/lgA9x2.jpg','images/smA9x23.jpg');
insert into OPPO_phone_pic values(80,6,'images/lgA9x2.jpg','images/smA9x24.jpg');
insert into OPPO_phone_pic values(81,7,'images/lgK11.jpg','images/smK111.jpg');
insert into OPPO_phone_pic values(82,7,'images/lgK11.jpg','images/smK112.jpg');
insert into OPPO_phone_pic values(83,7,'images/lgK11.jpg','images/smK113.jpg');
insert into OPPO_phone_pic values(84,7,'images/lgK11.jpg','images/smK114.jpg');
insert into OPPO_phone_pic values(85,7,'images/lgK12.jpg','images/smK121.jpg');
insert into OPPO_phone_pic values(86,7,'images/lgK12.jpg','images/smK122.jpg');
insert into OPPO_phone_pic values(87,7,'images/lgK12.jpg','images/smK123.jpg');
insert into OPPO_phone_pic values(88,7,'images/lgK12.jpg','images/smK124.jpg');
insert into OPPO_phone_pic values(89,7,'images/lgK13.jpg','images/smK131.jpg');
insert into OPPO_phone_pic values(90,7,'images/lgK13.jpg','images/smK132.jpg');
insert into OPPO_phone_pic values(91,7,'images/lgK13.jpg','images/smK133.jpg');
insert into OPPO_phone_pic values(92,7,'images/lgK13.jpg','images/smK134.jpg');
insert into OPPO_phone_pic values(93,7,'images/lgK14.jpg','images/smK141.jpg');
insert into OPPO_phone_pic values(94,7,'images/lgK14.jpg','images/smK142.jpg');
insert into OPPO_phone_pic values(95,7,'images/lgK14.jpg','images/smK143.jpg');
insert into OPPO_phone_pic values(96,7,'images/lgK14.jpg','images/smK144.jpg');
insert into OPPO_phone_pic values(97,8,'images/lgR171.jpg','images/smR1711.jpg');
insert into OPPO_phone_pic values(98,8,'images/lgR171.jpg','images/smR1712.jpg');
insert into OPPO_phone_pic values(99,8,'images/lgR171.jpg','images/smR1713.jpg');
insert into OPPO_phone_pic values(100,8,'images/lgR171.jpg','images/smR1714.jpg');
insert into OPPO_phone_pic values(101,8,'images/lgR172.jpg','images/smR1721.jpg');
insert into OPPO_phone_pic values(102,8,'images/lgR172.jpg','images/smR1722.jpg');
insert into OPPO_phone_pic values(103,8,'images/lgR172.jpg','images/smR1723.jpg');
insert into OPPO_phone_pic values(104,8,'images/lgR172.jpg','images/smR1724.jpg');
insert into OPPO_phone_pic values(105,8,'images/lgR173.jpg','images/smR1731.jpg');
insert into OPPO_phone_pic values(106,8,'images/lgR173.jpg','images/smR1732.jpg');
insert into OPPO_phone_pic values(107,8,'images/lgR173.jpg','images/smR1733.jpg');
insert into OPPO_phone_pic values(108,8,'images/lgR173.jpg','images/smR1734.jpg');
insert into OPPO_phone_pic values(109,9,'images/lgR15x1.jpg','images/smR15x11.jpg');
insert into OPPO_phone_pic values(110,9,'images/lgR15x1.jpg','images/smR15x12.jpg');
insert into OPPO_phone_pic values(111,9,'images/lgR15x1.jpg','images/smR15x13.jpg');
insert into OPPO_phone_pic values(112,9,'images/lgR15x1.jpg','images/smR15x14.jpg');
insert into OPPO_phone_pic values(113,9,'images/lgR15x2.jpg','images/smR15x21.jpg');
insert into OPPO_phone_pic values(114,9,'images/lgR15x2.jpg','images/smR15x22.jpg');
insert into OPPO_phone_pic values(115,9,'images/lgR15x2.jpg','images/smR15x23.jpg');
insert into OPPO_phone_pic values(116,9,'images/lgR15x2.jpg','images/smR15x24.jpg');
insert into OPPO_phone_pic values(117,10,'images/lgA51.jpg','images/smA511.jpg');
insert into OPPO_phone_pic values(118,10,'images/lgA51.jpg','images/smA512.jpg');
insert into OPPO_phone_pic values(119,10,'images/lgA51.jpg','images/smA513.jpg');
insert into OPPO_phone_pic values(120,10,'images/lgA51.jpg','images/smA514.jpg');
insert into OPPO_phone_pic values(121,10,'images/lgA52.jpg','images/smA521.jpg');
insert into OPPO_phone_pic values(122,10,'images/lgA52.jpg','images/smA522.jpg');
insert into OPPO_phone_pic values(123,10,'images/lgA52.jpg','images/smA523.jpg');
insert into OPPO_phone_pic values(124,10,'images/lgA52.jpg','images/smA524.jpg');
insert into OPPO_phone_pic values(125,10,'images/lgA53.jpg','images/smA531.jpg');
insert into OPPO_phone_pic values(126,10,'images/lgA53.jpg','images/smA532.jpg');
insert into OPPO_phone_pic values(127,10,'images/lgA53.jpg','images/smA533.jpg');
insert into OPPO_phone_pic values(128,10,'images/lgA53.jpg','images/smA534.jpg');
insert into OPPO_phone_pic values(129,11,'images/lgR17 Pro1.jpg','images/smR17 Pro11.jpg');
insert into OPPO_phone_pic values(130,11,'images/lgR17 Pro1.jpg','images/smR17 Pro12.jpg');
insert into OPPO_phone_pic values(131,11,'images/lgR17 Pro1.jpg','images/smR17 Pro13.jpg');
insert into OPPO_phone_pic values(132,11,'images/lgR17 Pro1.jpg','images/smR17 Pro14.jpg');
insert into OPPO_phone_pic values(133,11,'images/lgR17 Pro2.jpg','images/smR17 Pro21.jpg');
insert into OPPO_phone_pic values(134,11,'images/lgR17 Pro2.jpg','images/smR17 Pro22.jpg');
insert into OPPO_phone_pic values(135,11,'images/lgR17 Pro2.jpg','images/smR17 Pro23.jpg');
insert into OPPO_phone_pic values(136,11,'images/lgR17 Pro2.jpg','images/smR17 Pro24.jpg');
insert into OPPO_phone_pic values(137,11,'images/lgR17 Pro3.jpg','images/smR17 Pro31.jpg');
insert into OPPO_phone_pic values(138,11,'images/lgR17 Pro3.jpg','images/smR17 Pro32.jpg');
insert into OPPO_phone_pic values(139,11,'images/lgR17 Pro3.jpg','images/smR17 Pro33.jpg');
insert into OPPO_phone_pic values(140,11,'images/lgR17 Pro3.jpg','images/smR17 Pro34.jpg');
insert into OPPO_phone_pic values(141,12,'images/lgFind X1.jpg','images/smFind X11.jpg');
insert into OPPO_phone_pic values(142,12,'images/lgFind X1.jpg','images/smFind X12.jpg');
insert into OPPO_phone_pic values(143,12,'images/lgFind X1.jpg','images/smFind X13.jpg');
insert into OPPO_phone_pic values(144,12,'images/lgFind X1.jpg','images/smFind X14.jpg');
insert into OPPO_phone_pic values(145,12,'images/lgFind X2.jpg','images/smFind X21.jpg');
insert into OPPO_phone_pic values(146,12,'images/lgFind X2.jpg','images/smFind X22.jpg');
insert into OPPO_phone_pic values(147,12,'images/lgFind X2.jpg','images/smFind X23.jpg');
insert into OPPO_phone_pic values(148,12,'images/lgFind X2.jpg','images/smFind X24.jpg');
insert into OPPO_phone_pic values(149,12,'images/lgFind X3.jpg','images/smFind X31.jpg');
insert into OPPO_phone_pic values(150,12,'images/lgFind X3.jpg','images/smFind X32.jpg');
insert into OPPO_phone_pic values(151,12,'images/lgFind X3.jpg','images/smFind X33.jpg');
insert into OPPO_phone_pic values(152,12,'images/lgFind X3.jpg','images/smFind X34.jpg');
insert into OPPO_phone_pic values(153,13,'images/lgA71.jpg','images/smA711.jpg');
insert into OPPO_phone_pic values(154,13,'images/lgA71.jpg','images/smA712.jpg');
insert into OPPO_phone_pic values(155,13,'images/lgA71.jpg','images/smA713.jpg');
insert into OPPO_phone_pic values(156,13,'images/lgA71.jpg','images/smA714.jpg');
insert into OPPO_phone_pic values(157,13,'images/lgA72.jpg','images/smA721.jpg');
insert into OPPO_phone_pic values(158,13,'images/lgA72.jpg','images/smA722.jpg');
insert into OPPO_phone_pic values(159,13,'images/lgA72.jpg','images/smA723.jpg');
insert into OPPO_phone_pic values(160,13,'images/lgA72.jpg','images/smA724.jpg');
insert into OPPO_phone_pic values(161,13,'images/lgA73.jpg','images/smA731.jpg');
insert into OPPO_phone_pic values(162,13,'images/lgA73.jpg','images/smA732.jpg');
insert into OPPO_phone_pic values(163,13,'images/lgA73.jpg','images/smA733.jpg');
insert into OPPO_phone_pic values(164,13,'images/lgA73.jpg','images/smA734.jpg');

#手机购买界面图片
create table OPPO_spcdetails_pic(
	did int primary key auto_increment,						#手机购买界面图片编号
	phone_id INT,															    #手机编号
	detials_pic varchar(128)                      #详情图片
);
insert into OPPO_spcdetails_pic values(null,1,'images/K3111.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K3112.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K3113.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K3114.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K3115.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K3116.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K3117.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K3118.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K3119.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K31110.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K31111.jpg');
insert into OPPO_spcdetails_pic values(null,1,'images/K31112.jpg');

#配件编号
create table OPPO_fittings(
	fid int primary key auto_increment,						#配件编号
	fname varchar(64),														#配件名称
	price decimal,																#价格
	fittings_pic varchar(128)											#配件图片
);
insert into OPPO_fittings values(1,'VOOC闪充移动电源',279,'images/201905230205515ce640afbb487.jpg');
insert into OPPO_fittings values(2,'O-Fresh 立体声耳机',129,'images/201811050311245bdfeca470d5d.png');
insert into OPPO_fittings values(3,'三脚架蓝牙自拍杆',119,'images/201906110406415cff63e1a7d10.png');
insert into OPPO_fittings values(4,'超闪车载充电器',199,'images/201904091104025cac14c6d2c24.png');
insert into OPPO_fittings values(5,'闪充USB数据线',29,'images/201901240801455c49aa55eedce.png');
insert into OPPO_fittings values(6,'闪充电源适配器',79,'images/201902191002405c6b6384b707f.png');
insert into OPPO_fittings values(7,'半入耳式耳机',59,'images/201905230205595ce640033bd16.png');

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
