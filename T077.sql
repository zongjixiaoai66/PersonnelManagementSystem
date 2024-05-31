/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t077`;
CREATE DATABASE IF NOT EXISTS `t077` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t077`;

DROP TABLE IF EXISTS `bumenxinxi`;
CREATE TABLE IF NOT EXISTS `bumenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bumen` varchar(200) NOT NULL COMMENT '部门',
  `xiangqing` longtext COMMENT '详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618823981747 DEFAULT CHARSET=utf8mb3 COMMENT='部门信息';

DELETE FROM `bumenxinxi`;
INSERT INTO `bumenxinxi` (`id`, `addtime`, `bumen`, `xiangqing`) VALUES
	(12, '2021-04-19 09:11:49', '财务部', '<p>详情2</p>'),
	(13, '2021-04-19 09:11:49', '部门3', '详情3'),
	(14, '2021-04-19 09:11:49', '部门4', '详情4'),
	(15, '2021-04-19 09:11:49', '部门5', '详情5'),
	(16, '2021-04-19 09:11:49', '财务部', '<p>详情6</p>'),
	(1618823638863, '2021-04-19 09:13:58', '生产部', NULL);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot9v464/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot9v464/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot9v464/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `jiabanjilu`;
CREATE TABLE IF NOT EXISTS `jiabanjilu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangongzhanghao` varchar(200) NOT NULL COMMENT '员工账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `jiaban` varchar(200) DEFAULT NULL COMMENT '加班',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618825552967 DEFAULT CHARSET=utf8mb3 COMMENT='加班记录';

DELETE FROM `jiabanjilu`;
INSERT INTO `jiabanjilu` (`id`, `addtime`, `yuangongzhanghao`, `mima`, `xingming`, `bumen`, `jiaban`, `shijian`, `beizhu`) VALUES
	(62, '2021-04-19 09:11:49', '员工账号2', '密码2', '姓名2', '部门2', '加班2', '2021-04-19 17:11:49', '备注2'),
	(63, '2021-04-19 09:11:49', '员工账号3', '密码3', '姓名3', '部门3', '加班3', '2021-04-19 17:11:49', '备注3'),
	(64, '2021-04-19 09:11:49', '员工账号4', '密码4', '姓名4', '部门4', '加班4', '2021-04-19 17:11:49', '备注4'),
	(65, '2021-04-19 09:11:49', '001', '001', '刘凯', '生产部', '3小时', '2021-04-19 17:11:49', '备注5'),
	(66, '2021-04-19 09:11:49', '员工账号6', '密码6', '姓名6', '部门6', '加班6', '2021-04-19 17:11:49', '备注6'),
	(1618823773885, '2021-04-19 09:16:13', '001', '001', '刘凯', '生产部', '2小时', '2021-04-19 17:16:09', NULL),
	(1618825344539, '2021-04-19 09:42:24', '002', '002', '刘真 ', '财务部', '5小时', '2021-04-19 17:11:49', '备注1'),
	(1618825552966, '2021-04-19 09:45:52', '009', NULL, '张震', '财务部', NULL, '2021-04-19 17:11:49', '备注1');

DROP TABLE IF EXISTS `kaoqinxinxi`;
CREATE TABLE IF NOT EXISTS `kaoqinxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kaoqin` varchar(200) DEFAULT NULL COMMENT '考勤',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='考勤信息';

DELETE FROM `kaoqinxinxi`;
INSERT INTO `kaoqinxinxi` (`id`, `addtime`, `kaoqin`, `shijian`, `beizhu`) VALUES
	(31, '2021-04-19 09:11:49', '考勤1', '2021-04-19 17:11:49', '备注1'),
	(32, '2021-04-19 09:11:49', '考勤2', '2021-04-19 17:11:49', '备注2'),
	(33, '2021-04-19 09:11:49', '考勤3', '2021-04-19 17:11:49', '备注3'),
	(34, '2021-04-19 09:11:49', '考勤4', '2021-04-19 17:11:49', '备注4'),
	(35, '2021-04-19 09:11:49', '考勤5', '2021-04-19 17:11:49', '备注5'),
	(36, '2021-04-19 09:11:49', '考勤6', '2021-04-19 17:11:49', '备注6');

DROP TABLE IF EXISTS `shangbanjilu`;
CREATE TABLE IF NOT EXISTS `shangbanjilu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangongzhanghao` varchar(200) DEFAULT NULL COMMENT '员工账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `shangban` varchar(200) DEFAULT NULL COMMENT '上班',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618825533803 DEFAULT CHARSET=utf8mb3 COMMENT='上班记录';

DELETE FROM `shangbanjilu`;
INSERT INTO `shangbanjilu` (`id`, `addtime`, `yuangongzhanghao`, `mima`, `xingming`, `bumen`, `shangban`, `shijian`, `beizhu`) VALUES
	(41, '2021-04-19 09:11:49', '员工账号1', '密码1', '姓名1', '部门1', '上班1', '2021-04-19 17:11:49', '备注1'),
	(43, '2021-04-19 09:11:49', '员工账号3', '密码3', '姓名3', '部门3', '上班3', '2021-04-19 17:11:49', '备注3'),
	(44, '2021-04-19 09:11:49', '员工账号4', '密码4', '姓名4', '部门4', '上班4', '2021-04-19 17:11:49', '备注4'),
	(45, '2021-04-19 09:11:49', '员工账号5', '密码5', '姓名5', '部门5', '上班5', '2021-04-19 17:11:49', '备注5'),
	(46, '2021-04-19 09:11:49', '员工账号6', '密码6', '姓名6', '部门6', '上班6', '2021-04-19 17:11:49', '备注6'),
	(1618823766224, '2021-04-19 09:16:05', '001', '001', '刘凯', '生产部', NULL, '2021-04-19 17:15:59', '上班'),
	(1618824078043, '2021-04-19 09:21:17', '001', '001', '刘凯', '生产部', NULL, '2021-04-19 17:11:49', '备注1'),
	(1618825257812, '2021-04-19 09:40:57', '002', '002', '刘真 ', '财务部', NULL, '2021-04-19 17:11:49', '备注1'),
	(1618825533802, '2021-04-19 09:45:33', '009', NULL, '张震', '财务部', NULL, '2021-04-19 17:11:49', '备注1');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', '426t2xi7t8ujkxvqkckaq9wr0qd2dfza', '2021-04-19 09:13:50', '2024-02-09 02:14:22'),
	(2, 1618823615657, '001', 'yuangongxinxi', '员工信息', 'm73mws3g194ikv12mmbxcx9tg8hwxuze', '2021-04-19 09:16:49', '2021-04-19 10:16:50'),
	(3, 1618825462398, '009', 'yuangongxinxi', '员工信息', '65c540teu5z6vc5o56bh12874g6ml89p', '2021-04-19 09:45:10', '2021-04-19 10:47:49'),
	(4, 21, '员工信息1', 'yuangongxinxi', '员工信息', '8ek7qamx39n5gqqkqvv03xsbnqt9rf14', '2024-02-09 01:13:25', '2024-02-09 02:15:30');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-19 09:11:49');

DROP TABLE IF EXISTS `xiabanjilu`;
CREATE TABLE IF NOT EXISTS `xiabanjilu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangongzhanghao` varchar(200) NOT NULL COMMENT '员工账号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `xiaban` varchar(200) DEFAULT NULL COMMENT '下班',
  `shijian` datetime DEFAULT NULL COMMENT '时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618825541208 DEFAULT CHARSET=utf8mb3 COMMENT='下班记录';

DELETE FROM `xiabanjilu`;
INSERT INTO `xiabanjilu` (`id`, `addtime`, `yuangongzhanghao`, `mima`, `xingming`, `bumen`, `xiaban`, `shijian`, `beizhu`) VALUES
	(51, '2021-04-19 09:11:49', '员工账号1', '密码1', '姓名1', '部门1', '下班1', '2021-04-19 17:11:49', '备注1'),
	(52, '2021-04-19 09:11:49', '员工账号2', '密码2', '姓名2', '部门2', '下班2', '2021-04-19 17:11:49', '备注2'),
	(53, '2021-04-19 09:11:49', '员工账号3', '密码3', '姓名3', '部门3', '下班3', '2021-04-19 17:11:49', '备注3'),
	(54, '2021-04-19 09:11:49', '员工账号4', '密码4', '姓名4', '部门4', '下班4', '2021-04-19 17:11:49', '备注4'),
	(1618824122954, '2021-04-19 09:22:02', '001', '001', '刘凯', '生产部', NULL, '2021-04-19 17:21:57', '下班'),
	(1618825265248, '2021-04-19 09:41:04', '002', '002', '刘真 ', '财务部', NULL, '2021-04-19 17:11:49', '备注1'),
	(1618825541207, '2021-04-19 09:45:40', '009', NULL, '张震', '财务部', NULL, '2021-04-19 17:11:49', '备注1');

DROP TABLE IF EXISTS `yuangongxinchou`;
CREATE TABLE IF NOT EXISTS `yuangongxinchou` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangongzhanghao` varchar(200) NOT NULL COMMENT '员工账号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `bumen` varchar(200) NOT NULL COMMENT '部门',
  `jibengongzi` int DEFAULT NULL COMMENT '基本工资',
  `quanqinjiang` int DEFAULT NULL COMMENT '全勤奖',
  `ticheng` float DEFAULT NULL COMMENT '提成',
  `jiabangongzi` float DEFAULT NULL COMMENT '加班工资',
  `qingjia` float DEFAULT NULL COMMENT '请假',
  `chidao` float DEFAULT NULL COMMENT '迟到',
  `xinchou` float DEFAULT NULL COMMENT '薪酬',
  `xinchounianyue` varchar(200) DEFAULT NULL COMMENT '薪酬年月',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618825622748 DEFAULT CHARSET=utf8mb3 COMMENT='员工薪酬';

DELETE FROM `yuangongxinchou`;
INSERT INTO `yuangongxinchou` (`id`, `addtime`, `yuangongzhanghao`, `xingming`, `bumen`, `jibengongzi`, `quanqinjiang`, `ticheng`, `jiabangongzi`, `qingjia`, `chidao`, `xinchou`, `xinchounianyue`, `beizhu`, `ispay`) VALUES
	(71, '2021-04-19 09:11:49', '员工账号1', '姓名1', '部门1', 1, 1, 1, 1, 1, 1, 1, '薪酬年月1', '备注1', '未支付'),
	(72, '2021-04-19 09:11:49', '员工账号2', '姓名2', '部门2', 2, 2, 2, 2, 2, 2, 2, '薪酬年月2', '备注2', '未支付'),
	(73, '2021-04-19 09:11:49', '员工账号3', '姓名3', '部门3', 3, 3, 3, 3, 3, 3, 3, '薪酬年月3', '备注3', '未支付'),
	(74, '2021-04-19 09:11:49', '员工账号4', '姓名4', '部门4', 4, 4, 4, 4, 4, 4, 4, '薪酬年月4', '备注4', '未支付'),
	(75, '2021-04-19 09:11:49', '员工账号5', '姓名5', '部门5', 5, 5, 5, 5, 5, 5, 5, '薪酬年月5', '备注5', '未支付'),
	(1618825399833, '2021-04-19 09:43:19', '002', '刘真 ', '财务部', 3000, 100, 100, 3000, 100, 0, 6100, '202002', NULL, '未支付'),
	(1618825597338, '2021-04-19 09:46:36', '009', '张震', '财务部', 3000, 100, 0, 3200, 100, 0, 6200, '202002', NULL, '已支付'),
	(1618825622747, '2021-04-19 09:47:01', '009', '张震', '财务部', 3000, 300, 100, 2500, 0, 0, 5900, '202003', NULL, '已支付');

DROP TABLE IF EXISTS `yuangongxinxi`;
CREATE TABLE IF NOT EXISTS `yuangongxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangongzhanghao` varchar(200) NOT NULL COMMENT '员工账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `bumen` varchar(200) DEFAULT NULL COMMENT '部门',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618825462399 DEFAULT CHARSET=utf8mb3 COMMENT='员工信息';

DELETE FROM `yuangongxinxi`;
INSERT INTO `yuangongxinxi` (`id`, `addtime`, `yuangongzhanghao`, `mima`, `xingming`, `bumen`, `xingbie`, `shouji`, `jiatingzhuzhi`, `zhaopian`, `sfsh`, `shhf`) VALUES
	(21, '2021-04-19 09:11:49', '员工信息1', '123456', '姓名1', '部门1', '男', '13823888881', '家庭住址1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(22, '2021-04-19 09:11:49', '员工信息2', '123456', '姓名2', '部门2', '男', '13823888882', '家庭住址2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(23, '2021-04-19 09:11:49', '员工信息3', '123456', '姓名3', '部门3', '男', '13823888883', '家庭住址3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(24, '2021-04-19 09:11:49', '员工信息4', '123456', '姓名4', '部门4', '男', '13823888884', '家庭住址4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(25, '2021-04-19 09:11:49', '员工信息5', '123456', '姓名5', '部门5', '男', '13823888885', '家庭住址5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(26, '2021-04-19 09:11:49', '员工信息6', '123456', '姓名6', '部门6', '男', '13823888886', '家庭住址6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', ''),
	(1618823685746, '2021-04-19 09:14:45', '002', '002', '刘真 ', '财务部', '男', '16936363632', '广东', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', NULL),
	(1618823953569, '2021-04-19 09:19:13', '003', '003', '刘正', '财务部', '男', '13596369636', '广东', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '否', NULL),
	(1618824019989, '2021-04-19 09:20:19', '008', '008', '李振', '财务部', '男', '13665655656', '广东', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', NULL),
	(1618825201598, '2021-04-19 09:40:01', '007', '007', '林武', '财务部', '男', '13456989778', '广东', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', NULL),
	(1618825462398, '2021-04-19 09:44:22', '009', '009', '张震', '财务部', '男', '13569855858', '广东', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '是', NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
