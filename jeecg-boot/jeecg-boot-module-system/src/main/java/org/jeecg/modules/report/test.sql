DROP TABLE IF EXISTS `rpt_ad_daily`;
CREATE TABLE `rpt_ad_daily` (
  `id` varchar(32) NOT NULL COMMENT '主键id',
  `dt` varchar(32) default NULL COMMENT '日期',
  `hour` varchar(32) default NULL COMMENT '小时',
  `adcode`  bigint(20) default NULL COMMENT '广告位',
  `request_num` bigint(20) default NULL COMMENT '请求',
  `fill_num` bigint(20) default NULL COMMENT '填充',
  `dispatch_num` bigint(20) default NULL COMMENT '下发',
  `exposure_num` bigint(20) default NULL COMMENT '曝光',
  `dau` bigint(20) default NULL COMMENT '广告日活',
  `click_num` bigint(20) default NULL COMMENT '点击',
  `download_num` bigint(20) default NULL COMMENT '下载',
  `finish_download_num` bigint(20) default NULL COMMENT '下载完成',
  `install_num` bigint(20) default NULL COMMENT '安装',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自有广告日报';

--dt,hour,adcode,request_num,fill_num,dispatch_num,exposure_num,dau,click_num,download_num,finish_download_num,install_num

INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','00',0,8088510,2662449,2376736,1286885,210021,72472,26845,18849,5665);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','01',0,5031030,1338645,1181325,637942,124150,37602,9712,7148,2193);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','02',0,3846502,972094,852131,446874,94692,27898,6814,4961,1529);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','03',0,3603907,948326,832497,428207,94478,28267,6364,4610,1474);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','04',0,4559681,1338598,1197203,590183,135676,39528,7663,5549,1727);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','05',0,8327299,2567222,2325020,1135932,266962,72568,14361,10243,3141);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','06',0,12330227,4007458,3679085,1780565,409934,105833,24247,17284,5065);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','07',0,12189877,3806271,3488757,1688841,404139,89466,21629,15455,4661);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','08',0,11014200,3019098,2745505,1362451,328871,73552,17609,12594,4021);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','09',0,10799751,4731697,4337750,1909273,339763,91780,14412,10179,3359);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','10',0,11475041,5140059,4719435,2199451,374667,97617,18906,12884,3621);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','11',0,12275680,5509202,5116645,2296111,424556,107100,26914,18207,5078);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','12',0,14765257,7222301,6745677,3095886,501007,151338,32704,22084,6373);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','13',0,13307373,5983587,5542846,2659195,428179,130382,32813,22787,6688);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','14',0,11662011,5529431,5105560,2396795,369003,140446,30063,20614,6414);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','15',0,11774090,5319622,4885833,2325436,367270,117865,27354,18887,5777);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','16',0,11568696,5079014,4664941,2231230,365877,112226,30518,20488,5687);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','17',0,12552897,5489174,5043475,2414509,406346,111243,30214,20279,6060);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','18',0,14262004,6386526,5807153,2751288,464367,133863,39365,26085,7138);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','19',0,17631157,6859919,6284094,3168967,536598,167957,50141,34073,10366);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','20',0,22684572,8061264,7465626,3913567,636303,235101,76823,51964,15568);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','21',0,24780829,7634045,6996520,3820541,656677,236645,77918,53268,16989);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','22',0,20100375,5751912,5248561,2949414,487747,188120,58416,41324,13790);
INSERT INTO `rpt_ad_daily` VALUES (replace(uuid(),'-',''),'20190429','23',0,13020283,3272268,2849439,1624944,289458,99542,31137,22455,7998);

CREATE TABLE `rpt_ad_demo_daily` (
  `dt` varchar(32) NOT NULL COMMENT '日期',
  `hour` varchar(32) NOT NULL COMMENT '小时',
  `adcode`  bigint(20) default NULL COMMENT '广告位',
  `request_num` bigint(20) default NULL COMMENT '请求',
  `fill_num` bigint(20) default NULL COMMENT '填充',
  `dispatch_num` bigint(20) default NULL COMMENT '下发',
  `exposure_num` bigint(20) default NULL COMMENT '曝光',
  `dau` bigint(20) default NULL COMMENT '广告日活',
  `click_num` bigint(20) default NULL COMMENT '点击',
  `download_num` bigint(20) default NULL COMMENT '下载',
  `finish_download_num` bigint(20) default NULL COMMENT '下载完成',
  `install_num` bigint(20) default NULL COMMENT '安装',
  PRIMARY KEY  (`dt`,`hour`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='自有广告日报';

INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','00',0,8088510,2662449,2376736,1286885,210021,72472,26845,18849,5665);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','01',0,5031030,1338645,1181325,637942,124150,37602,9712,7148,2193);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','02',0,3846502,972094,852131,446874,94692,27898,6814,4961,1529);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','03',0,3603907,948326,832497,428207,94478,28267,6364,4610,1474);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','04',0,4559681,1338598,1197203,590183,135676,39528,7663,5549,1727);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','05',0,8327299,2567222,2325020,1135932,266962,72568,14361,10243,3141);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','06',0,12330227,4007458,3679085,1780565,409934,105833,24247,17284,5065);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','07',0,12189877,3806271,3488757,1688841,404139,89466,21629,15455,4661);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','08',0,11014200,3019098,2745505,1362451,328871,73552,17609,12594,4021);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','09',0,10799751,4731697,4337750,1909273,339763,91780,14412,10179,3359);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','10',0,11475041,5140059,4719435,2199451,374667,97617,18906,12884,3621);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','11',0,12275680,5509202,5116645,2296111,424556,107100,26914,18207,5078);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','12',0,14765257,7222301,6745677,3095886,501007,151338,32704,22084,6373);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','13',0,13307373,5983587,5542846,2659195,428179,130382,32813,22787,6688);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','14',0,11662011,5529431,5105560,2396795,369003,140446,30063,20614,6414);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','15',0,11774090,5319622,4885833,2325436,367270,117865,27354,18887,5777);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','16',0,11568696,5079014,4664941,2231230,365877,112226,30518,20488,5687);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','17',0,12552897,5489174,5043475,2414509,406346,111243,30214,20279,6060);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','18',0,14262004,6386526,5807153,2751288,464367,133863,39365,26085,7138);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','19',0,17631157,6859919,6284094,3168967,536598,167957,50141,34073,10366);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','20',0,22684572,8061264,7465626,3913567,636303,235101,76823,51964,15568);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','21',0,24780829,7634045,6996520,3820541,656677,236645,77918,53268,16989);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','22',0,20100375,5751912,5248561,2949414,487747,188120,58416,41324,13790);
INSERT INTO `rpt_ad_demo_daily` VALUES ('20190429','23',0,13020283,3272268,2849439,1624944,289458,99542,31137,22455,7998);