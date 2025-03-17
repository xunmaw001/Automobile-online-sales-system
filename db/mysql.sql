DROP DATABASE IF EXISTS jspHacDz;

CREATE DATABASE jspHacDz default character set utf8mb4 collate utf8mb4_general_ci;

USE jspHacDz;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`zhanghao` varchar(200)  UNIQUE   COMMENT '账号',
	`mima` varchar(200)    COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`chushengnianyue` date    COMMENT '出生年月',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`dianziyouxiang` varchar(200)    COMMENT '电子邮箱',
	`shenfenzhenghao` varchar(200)    COMMENT '身份证号',
	`shouhuodizhi` varchar(200)    COMMENT '收货地址',
	`gerenzhaopian` varchar(200)    COMMENT '个人照片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(zhanghao,mima,xingming,xingbie,chushengnianyue,lianxidianhua,dianziyouxiang,shenfenzhenghao,shouhuodizhi,gerenzhaopian) VALUES('用户1','123456','姓名1','男',CURRENT_TIMESTAMP,'020-89819991','773890001@qq.com','440300199101010001','收货地址1','yonghu_gerenzhaopian1');
INSERT INTO yonghu(zhanghao,mima,xingming,xingbie,chushengnianyue,lianxidianhua,dianziyouxiang,shenfenzhenghao,shouhuodizhi,gerenzhaopian) VALUES('用户2','123456','姓名2','男',CURRENT_TIMESTAMP,'020-89819992','773890002@qq.com','440300199202020002','收货地址2','yonghu_gerenzhaopian2');
INSERT INTO yonghu(zhanghao,mima,xingming,xingbie,chushengnianyue,lianxidianhua,dianziyouxiang,shenfenzhenghao,shouhuodizhi,gerenzhaopian) VALUES('用户3','123456','姓名3','男',CURRENT_TIMESTAMP,'020-89819993','773890003@qq.com','440300199303030003','收货地址3','yonghu_gerenzhaopian3');


DROP TABLE IF EXISTS `cheliangxinxi`;

CREATE TABLE `cheliangxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`cheliangbianhao` varchar(200)  UNIQUE   COMMENT '车辆编号',
	`cheliangmingcheng` varchar(200)    COMMENT '车辆名称',
	`cheliangpinpai` varchar(200)    COMMENT '车辆品牌',
	`cheliangleixing` varchar(200)    COMMENT '车辆类型',
	`qichetupian` varchar(200)    COMMENT '汽车图片',
	`cheliangyanse` varchar(200)    COMMENT '车辆颜色',
	`huandangfangshi` varchar(200)    COMMENT '换挡方式',
	`cheliangtianchuang` varchar(200)    COMMENT '车辆天窗',
	`chezuo` varchar(200)    COMMENT '车座',
	`qichepailiang` varchar(200)    COMMENT '汽车排量',
	`cheliangjiage` int    COMMENT '车辆价格',
	`cheliangkucun` int    COMMENT '车辆库存',
	`cheliangxiangqing` longtext    COMMENT '车辆详情',
	`thumbsupnum` int   default '0' COMMENT '赞',
	`crazilynum` int   default '0' COMMENT '踩',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆信息';

INSERT INTO cheliangxinxi(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,qichetupian,cheliangyanse,huandangfangshi,cheliangtianchuang,chezuo,qichepailiang,cheliangjiage,cheliangkucun,cheliangxiangqing,thumbsupnum,crazilynum) VALUES('车辆编号1','车辆名称1','车辆品牌1','车辆类型1','cheliangxinxi_qichetupian1','车辆颜色1','自动挡','无天窗','两座','汽车排量1',1,1,'车辆详情1',1,1);
INSERT INTO cheliangxinxi(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,qichetupian,cheliangyanse,huandangfangshi,cheliangtianchuang,chezuo,qichepailiang,cheliangjiage,cheliangkucun,cheliangxiangqing,thumbsupnum,crazilynum) VALUES('车辆编号2','车辆名称2','车辆品牌2','车辆类型2','cheliangxinxi_qichetupian2','车辆颜色2','自动挡','无天窗','两座','汽车排量2',2,2,'车辆详情2',2,2);
INSERT INTO cheliangxinxi(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,qichetupian,cheliangyanse,huandangfangshi,cheliangtianchuang,chezuo,qichepailiang,cheliangjiage,cheliangkucun,cheliangxiangqing,thumbsupnum,crazilynum) VALUES('车辆编号3','车辆名称3','车辆品牌3','车辆类型3','cheliangxinxi_qichetupian3','车辆颜色3','自动挡','无天窗','两座','汽车排量3',3,3,'车辆详情3',3,3);


DROP TABLE IF EXISTS `qichepinpai`;

CREATE TABLE `qichepinpai` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`cheliangpinpai` varchar(200)    COMMENT '车辆品牌',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='汽车品牌';

INSERT INTO qichepinpai(cheliangpinpai) VALUES('车辆品牌1');
INSERT INTO qichepinpai(cheliangpinpai) VALUES('车辆品牌2');
INSERT INTO qichepinpai(cheliangpinpai) VALUES('车辆品牌3');


DROP TABLE IF EXISTS `qicheleixing`;

CREATE TABLE `qicheleixing` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`cheliangleixing` varchar(200)    COMMENT '车辆类型',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='汽车类型';

INSERT INTO qicheleixing(cheliangleixing) VALUES('车辆类型1');
INSERT INTO qicheleixing(cheliangleixing) VALUES('车辆类型2');
INSERT INTO qicheleixing(cheliangleixing) VALUES('车辆类型3');


DROP TABLE IF EXISTS `qicheyanse`;

CREATE TABLE `qicheyanse` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`cheliangyanse` varchar(200)    COMMENT '车辆颜色',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='汽车颜色';

INSERT INTO qicheyanse(cheliangyanse) VALUES('车辆颜色1');
INSERT INTO qicheyanse(cheliangyanse) VALUES('车辆颜色2');
INSERT INTO qicheyanse(cheliangyanse) VALUES('车辆颜色3');


DROP TABLE IF EXISTS `rukujilu`;

CREATE TABLE `rukujilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`cheliangbianhao` varchar(200)    COMMENT '车辆编号',
	`cheliangmingcheng` varchar(200)    COMMENT '车辆名称',
	`cheliangpinpai` varchar(200)    COMMENT '车辆品牌',
	`cheliangleixing` varchar(200)    COMMENT '车辆类型',
	`cheliangyanse` varchar(200)    COMMENT '车辆颜色',
	`cheliangkucun` int    COMMENT '车辆库存',
	`dengjiriqi` datetime    COMMENT '登记日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='入库记录';

INSERT INTO rukujilu(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,cheliangkucun,dengjiriqi) VALUES('车辆编号1','车辆名称1','车辆品牌1','车辆类型1','车辆颜色1',1,CURRENT_TIMESTAMP);
INSERT INTO rukujilu(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,cheliangkucun,dengjiriqi) VALUES('车辆编号2','车辆名称2','车辆品牌2','车辆类型2','车辆颜色2',2,CURRENT_TIMESTAMP);
INSERT INTO rukujilu(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,cheliangkucun,dengjiriqi) VALUES('车辆编号3','车辆名称3','车辆品牌3','车辆类型3','车辆颜色3',3,CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `chukujilu`;

CREATE TABLE `chukujilu` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`cheliangbianhao` varchar(200)    COMMENT '车辆编号',
	`cheliangmingcheng` varchar(200)    COMMENT '车辆名称',
	`cheliangpinpai` varchar(200)    COMMENT '车辆品牌',
	`cheliangleixing` varchar(200)    COMMENT '车辆类型',
	`cheliangyanse` varchar(200)    COMMENT '车辆颜色',
	`cheliangkucun` int    COMMENT '车辆库存',
	`dengjiriqi` datetime    COMMENT '登记日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出库记录';

INSERT INTO chukujilu(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,cheliangkucun,dengjiriqi) VALUES('车辆编号1','车辆名称1','车辆品牌1','车辆类型1','车辆颜色1',1,CURRENT_TIMESTAMP);
INSERT INTO chukujilu(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,cheliangkucun,dengjiriqi) VALUES('车辆编号2','车辆名称2','车辆品牌2','车辆类型2','车辆颜色2',2,CURRENT_TIMESTAMP);
INSERT INTO chukujilu(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,cheliangkucun,dengjiriqi) VALUES('车辆编号3','车辆名称3','车辆品牌3','车辆类型3','车辆颜色3',3,CURRENT_TIMESTAMP);


DROP TABLE IF EXISTS `chelianggoumai`;

CREATE TABLE `chelianggoumai` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`cheliangbianhao` varchar(200)    COMMENT '车辆编号',
	`cheliangmingcheng` varchar(200)    COMMENT '车辆名称',
	`cheliangpinpai` varchar(200)    COMMENT '车辆品牌',
	`cheliangleixing` varchar(200)    COMMENT '车辆类型',
	`cheliangyanse` varchar(200)    COMMENT '车辆颜色',
	`huandangfangshi` varchar(200)    COMMENT '换挡方式',
	`cheliangtianchuang` varchar(200)    COMMENT '车辆天窗',
	`qichepailiang` varchar(200)    COMMENT '汽车排量',
	`chezuo` varchar(200)    COMMENT '车座',
	`cheliangjiage` varchar(200)    COMMENT '车辆价格',
	`dinggoushuliang` int    COMMENT '订购数量',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`zhanghao` varchar(200)    COMMENT '账号',
	`xingming` varchar(200)    COMMENT '姓名',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`shouhuodizhi` varchar(200)    COMMENT '收货地址',
	`dinggoushijian` datetime    COMMENT '订购时间',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆购买';

INSERT INTO chelianggoumai(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,huandangfangshi,cheliangtianchuang,qichepailiang,chezuo,cheliangjiage,dinggoushuliang,shifujine,zhanghao,xingming,lianxidianhua,shouhuodizhi,dinggoushijian,sfsh,shhf,ispay) VALUES('车辆编号1','车辆名称1','车辆品牌1','车辆类型1','车辆颜色1','换挡方式1','车辆天窗1','汽车排量1','车座1','车辆价格1',1,'实付金额1','账号1','姓名1','联系电话1','收货地址1',CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO chelianggoumai(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,huandangfangshi,cheliangtianchuang,qichepailiang,chezuo,cheliangjiage,dinggoushuliang,shifujine,zhanghao,xingming,lianxidianhua,shouhuodizhi,dinggoushijian,sfsh,shhf,ispay) VALUES('车辆编号2','车辆名称2','车辆品牌2','车辆类型2','车辆颜色2','换挡方式2','车辆天窗2','汽车排量2','车座2','车辆价格2',2,'实付金额2','账号2','姓名2','联系电话2','收货地址2',CURRENT_TIMESTAMP,'否','','未支付');
INSERT INTO chelianggoumai(cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,huandangfangshi,cheliangtianchuang,qichepailiang,chezuo,cheliangjiage,dinggoushuliang,shifujine,zhanghao,xingming,lianxidianhua,shouhuodizhi,dinggoushijian,sfsh,shhf,ispay) VALUES('车辆编号3','车辆名称3','车辆品牌3','车辆类型3','车辆颜色3','换挡方式3','车辆天窗3','汽车排量3','车座3','车辆价格3',3,'实付金额3','账号3','姓名3','联系电话3','收货地址3',CURRENT_TIMESTAMP,'否','','未支付');


DROP TABLE IF EXISTS `yunshushoufei`;

CREATE TABLE `yunshushoufei` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`zhanghao` varchar(200)    COMMENT '账号',
	`xingming` varchar(200)    COMMENT '姓名',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`shouhuodizhi` varchar(200)    COMMENT '收货地址',
	`cheliangbianhao` varchar(200)    COMMENT '车辆编号',
	`cheliangmingcheng` varchar(200)    COMMENT '车辆名称',
	`cheliangpinpai` varchar(200)    COMMENT '车辆品牌',
	`cheliangleixing` varchar(200)    COMMENT '车辆类型',
	`cheliangyanse` varchar(200)    COMMENT '车辆颜色',
	`huandangfangshi` varchar(200)    COMMENT '换挡方式',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`yujisongda` date    COMMENT '预计送达',
	`yunshufeiyong` int    COMMENT '运输费用',
	`dengjiriqi` datetime    COMMENT '登记日期',
	`ispay` varchar(200)   default '未支付' COMMENT '是否支付',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='运输收费';

INSERT INTO yunshushoufei(zhanghao,xingming,lianxidianhua,shouhuodizhi,cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,huandangfangshi,shifujine,yujisongda,yunshufeiyong,dengjiriqi,ispay) VALUES('账号1','姓名1','联系电话1','收货地址1','车辆编号1','车辆名称1','车辆品牌1','车辆类型1','车辆颜色1','换挡方式1','实付金额1',CURRENT_TIMESTAMP,1,CURRENT_TIMESTAMP,'未支付');
INSERT INTO yunshushoufei(zhanghao,xingming,lianxidianhua,shouhuodizhi,cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,huandangfangshi,shifujine,yujisongda,yunshufeiyong,dengjiriqi,ispay) VALUES('账号2','姓名2','联系电话2','收货地址2','车辆编号2','车辆名称2','车辆品牌2','车辆类型2','车辆颜色2','换挡方式2','实付金额2',CURRENT_TIMESTAMP,2,CURRENT_TIMESTAMP,'未支付');
INSERT INTO yunshushoufei(zhanghao,xingming,lianxidianhua,shouhuodizhi,cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,huandangfangshi,shifujine,yujisongda,yunshufeiyong,dengjiriqi,ispay) VALUES('账号3','姓名3','联系电话3','收货地址3','车辆编号3','车辆名称3','车辆品牌3','车辆类型3','车辆颜色3','换挡方式3','实付金额3',CURRENT_TIMESTAMP,3,CURRENT_TIMESTAMP,'未支付');


DROP TABLE IF EXISTS `dingdanzhuangtai`;

CREATE TABLE `dingdanzhuangtai` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`zhanghao` varchar(200)    COMMENT '账号',
	`xingming` varchar(200)    COMMENT '姓名',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`shouhuodizhi` varchar(200)    COMMENT '收货地址',
	`cheliangbianhao` varchar(200)    COMMENT '车辆编号',
	`cheliangmingcheng` varchar(200)    COMMENT '车辆名称',
	`cheliangpinpai` varchar(200)    COMMENT '车辆品牌',
	`cheliangleixing` varchar(200)    COMMENT '车辆类型',
	`cheliangyanse` varchar(200)    COMMENT '车辆颜色',
	`huandangfangshi` varchar(200)    COMMENT '换挡方式',
	`shifujine` varchar(200)    COMMENT '实付金额',
	`yunshufeiyong` varchar(200)    COMMENT '运输费用',
	`yujisongda` varchar(200)    COMMENT '预计送达',
	`dingdanzhuangtai` varchar(200)    COMMENT '订单状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单状态';

INSERT INTO dingdanzhuangtai(zhanghao,xingming,lianxidianhua,shouhuodizhi,cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,huandangfangshi,shifujine,yunshufeiyong,yujisongda,dingdanzhuangtai) VALUES('账号1','姓名1','联系电话1','收货地址1','车辆编号1','车辆名称1','车辆品牌1','车辆类型1','车辆颜色1','换挡方式1','实付金额1','运输费用1','预计送达1','未发货');
INSERT INTO dingdanzhuangtai(zhanghao,xingming,lianxidianhua,shouhuodizhi,cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,huandangfangshi,shifujine,yunshufeiyong,yujisongda,dingdanzhuangtai) VALUES('账号2','姓名2','联系电话2','收货地址2','车辆编号2','车辆名称2','车辆品牌2','车辆类型2','车辆颜色2','换挡方式2','实付金额2','运输费用2','预计送达2','未发货');
INSERT INTO dingdanzhuangtai(zhanghao,xingming,lianxidianhua,shouhuodizhi,cheliangbianhao,cheliangmingcheng,cheliangpinpai,cheliangleixing,cheliangyanse,huandangfangshi,shifujine,yunshufeiyong,yujisongda,dingdanzhuangtai) VALUES('账号3','姓名3','联系电话3','收货地址3','车辆编号3','车辆名称3','车辆品牌3','车辆类型3','车辆颜色3','换挡方式3','实付金额3','运输费用3','预计送达3','未发货');


DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(1,1,'表名1','收藏名称1','storeup_picture1');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(2,2,'表名2','收藏名称2','storeup_picture2');
INSERT INTO storeup(userid,refid,tablename,name,picture) VALUES(3,3,'表名3','收藏名称3','storeup_picture3');


DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

INSERT INTO news(title,picture,content) VALUES('标题1','news_picture1','内容1');
INSERT INTO news(title,picture,content) VALUES('标题2','news_picture2','内容2');
INSERT INTO news(title,picture,content) VALUES('标题3','news_picture3','内容3');


DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`userid` bigint NOT NULL   COMMENT '留言人id',
	`username` varchar(200)    COMMENT '留言人用户名',
	`content` longtext NOT NULL   COMMENT '留言内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

INSERT INTO messages(userid,username,content,reply) VALUES(1,'留言人用户名1','留言内容1','回复内容1');
INSERT INTO messages(userid,username,content,reply) VALUES(2,'留言人用户名2','留言内容2','回复内容2');
INSERT INTO messages(userid,username,content,reply) VALUES(3,'留言人用户名3','留言内容3','回复内容3');


DROP TABLE IF EXISTS `discusscheliangxinxi`;

CREATE TABLE `discusscheliangxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT,
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`content` varchar(200) NOT NULL   COMMENT '评论内容',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆信息评论表';

INSERT INTO discusscheliangxinxi(refid,content,userid) VALUES(1,'评论内容1',1);
INSERT INTO discusscheliangxinxi(refid,content,userid) VALUES(2,'评论内容2',2);
INSERT INTO discusscheliangxinxi(refid,content,userid) VALUES(3,'评论内容3',3);



DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name) values(1,'picture1');
insert into config(id,name) values(2,'picture2');
insert into config(id,name) values(3,'picture3');
insert into config(id,name) values(4,'picture4');
insert into config(id,name) values(5,'picture5');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT,
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

