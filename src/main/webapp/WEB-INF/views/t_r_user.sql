CREATE TABLE `t_r_user` (
  `uno` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(1000) DEFAULT NULL,
  `upassword` varchar(1000) DEFAULT NULL,
  `username` varchar(1000) DEFAULT NULL,
  `tianbsj` datetime(6) DEFAULT NULL,
  `uuidindex` varchar(1000) DEFAULT NULL,
  `company` varchar(1000) DEFAULT NULL,
  `companyid` varchar(100) DEFAULT NULL,
	`companybase` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`uno`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

commit;



INSERT INTO `t_r_user`(`uno`, `uname`, `upassword`, `username`, `tianbsj`, `uuidindex`, `company`, `companyid`, `companybase`) VALUES (1, 'admin', '39596dfee3b2b8409147bff7d9a6269b', '超级管理员', '2020-10-19 15:19:14.000000', 'de424d6fc69b4d67a82f95e22aa695ea1603091869474', '天钢联合特钢有限公司', '530', null);




CREATE DATABASE IF NOT EXISTS tianglhtg 
DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

create user 'ini'@'localhost' identified by 'ini';


grant all privileges on tianglhtg.* to 'ini'@'%' identified by 'ini';  







/*
 Navicat Premium Data Transfer

 Source Server         : 质保书系统
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : tianglhtg

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 23/11/2020 17:00:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_r_user
-- ----------------------------
DROP TABLE IF EXISTS `t_r_user`;
CREATE TABLE `t_r_user`  (
  `uno` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `upassword` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tianbsj` datetime(6) NULL DEFAULT NULL,
  `uuidindex` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `companyid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `companybase` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_r_user
-- ----------------------------
INSERT INTO `t_r_user` VALUES (1, 'admin', '39596dfee3b2b8409147bff7d9a6269b', '超级管理员', '2020-11-23 16:03:41.000000', 'de424d6fc69b4d67a82f95e22aa695ea1603091869474', '天钢联合特钢有限公司', '0', 'MA==');
INSERT INTO `t_r_user` VALUES (64, 'tjflsm', 'e10adc3949ba59abbe56e057f20f883e', '丰隆商贸', '2020-11-23 16:08:02.000000', '85886fac4b3442caa45cfaa1c9977e051606118882961', '天津市丰隆商贸有限公司', '468', 'NDY4');
INSERT INTO `t_r_user` VALUES (65, 'hsjhzg', 'e10adc3949ba59abbe56e057f20f883e', '京华制管', '2020-11-23 16:09:15.000000', '1d11da0580804085af05641411fe8a2d1606118955812', '衡水京华制管有限公司', '249', 'MjQ5');
INSERT INTO `t_r_user` VALUES (66, 'tjzhdm', 'e10adc3949ba59abbe56e057f20f883e', '智恒达', '2020-11-23 16:10:15.000000', '44379d439e79484888904041e2ed11251606119015767', '天津市智恒达商贸有限公司', '271', 'Mjcx');
INSERT INTO `t_r_user` VALUES (67, 'tjztgg', 'e10adc3949ba59abbe56e057f20f883e', '中通钢管', '2020-11-23 16:10:37.000000', 'df5468a611534b0a8bb7e46fe16a56f41606119037830', '天津市中通钢管有限公司', '270', 'Mjcw');
INSERT INTO `t_r_user` VALUES (68, 'tjxrl', 'e10adc3949ba59abbe56e057f20f883e', '兴瑞利', '2020-11-23 16:11:04.000000', '3e1d7e381ab7447d8130bd4aadc75b061606119064101', '天津兴瑞利贸易有限公司', '1001', 'MTAwMQ==');
INSERT INTO `t_r_user` VALUES (69, 'tjrybagj', 'e10adc3949ba59abbe56e057f20f883e', '仁翼博爱', '2020-11-23 16:11:34.000000', '7d06df53d7c44af3bfc934f08e451d2e1606119094802', '天津市仁翼博爱国际商贸有限公司', '1503', 'MTUwMw==');
INSERT INTO `t_r_user` VALUES (70, 'tjlfzg', 'e10adc3949ba59abbe56e057f20f883e', '飞龙制管', '2020-11-23 16:12:40.000000', '792347206094491680fcb2b6346c85fd1606119160408', '天津市飞龙制管有限公司', '268', 'MjY4');
INSERT INTO `t_r_user` VALUES (71, 'tjcygm', 'e10adc3949ba59abbe56e057f20f883e', '呈宇工贸', '2020-11-23 16:13:08.000000', 'b78585a9840c47588f77942b2d7a00fb1606119188735', '天津市呈宇工贸有限公司', '250', 'MjUw');
INSERT INTO `t_r_user` VALUES (72, 'tjblgm', 'e10adc3949ba59abbe56e057f20f883e', '宝来工贸', '2020-11-23 16:13:42.000000', 'd181c960cc28442c80307eac4dc733d71606119222771', '天津市宝来工贸有限公司', '1142', 'MTE0Mg==');
INSERT INTO `t_r_user` VALUES (73, 'tjjcgdsy', 'e10adc3949ba59abbe56e057f20f883e', '君诚管道', '2020-11-23 16:14:08.000000', '3e977fdd51704a8dac8fd54ec80907221606119248906', '天津君诚管道实业集团有限公司', '1189', 'MTE4OQ==');
INSERT INTO `t_r_user` VALUES (74, 'tjbygg', 'e10adc3949ba59abbe56e057f20f883e', '博宇钢管', '2020-11-23 16:15:08.000000', '17e21980d3ef4375a07456b7e54ea6cf1606119308374', '天津博宇钢管有限公司', '1133', 'MTEzMw==');
INSERT INTO `t_r_user` VALUES (75, 'tjytdrgg', 'e10adc3949ba59abbe56e057f20f883e', '源泰德润', '2020-11-23 16:15:33.000000', '6294729b146d4da4bc6c13ca7b0d47951606119333752', '天津源泰德润钢管制造集团有限公司', '248', 'MjQ4');
INSERT INTO `t_r_user` VALUES (76, 'tjyhjxkj', 'e10adc3949ba59abbe56e057f20f883e', '源宏聚兴', '2020-11-23 16:15:56.000000', 'd17ce11017804550a439789d5cef6ef11606119356080', '天津市源宏聚兴科技股份有限公司', '1553', 'MTU1Mw==');
INSERT INTO `t_r_user` VALUES (77, 'tjhysssm', 'e10adc3949ba59abbe56e057f20f883e', '宏宇盛世', '2020-11-23 16:16:18.000000', '97793aff15174800bd1fb911162ef94e1606119378249', '天津市宏宇盛世商贸有限公司', '1200', 'MTIwMA==');
INSERT INTO `t_r_user` VALUES (78, 'tjhwgg', 'e10adc3949ba59abbe56e057f20f883e', '华旺钢管', '2020-11-23 16:16:49.000000', 'faa3026414514587bdfa7165d8cf51d01606119409432', '天津市华旺钢管制造有限公司', '1559', 'MTU1OQ==');
INSERT INTO `t_r_user` VALUES (79, 'zsztjt', 'e10adc3949ba59abbe56e057f20f883e', '浙商中拓', '2020-11-23 16:17:10.000000', '0874c945b32548a98e46d3f95b46a8e71606119430983', '浙商中拓集团股份有限公司', '1614', 'MTYxNA==');
INSERT INTO `t_r_user` VALUES (80, 'tjzhjygj', 'e10adc3949ba59abbe56e057f20f883e', '中和建业', '2020-11-23 16:17:40.000000', '29d2ca0217df4540991f3b390b4007a31606119460147', '天津中和建业国际贸易有限公司', '1713', 'MTcxMw==');
INSERT INTO `t_r_user` VALUES (81, 'bzjhjszp', 'e10adc3949ba59abbe56e057f20f883e', '霸州京华', '2020-11-23 16:18:03.000000', 'c178df6906804926a34374d05db7c89c1606119483051', '霸州市京华金属制品有限公司', '1092', 'MTA5Mg==');
INSERT INTO `t_r_user` VALUES (82, 'bzsfzhmgg', 'e10adc3949ba59abbe56e057f20f883e', '胜芳华贸', '2020-11-23 16:18:25.000000', '88af39d0f1f145c59bc6e4684d6fa82f1606119505140', '霸州市胜芳镇华贸钢管有限公司', '2053', 'MjA1Mw==');
INSERT INTO `t_r_user` VALUES (83, 'hnsdtyqzj', 'e10adc3949ba59abbe56e057f20f883e', '神雕通用', '2020-11-23 16:18:48.000000', 'd1a62de7e5a64b0e846abf96f28a130c1606119528261', '河南神雕通用起重机有限公司', '2637', 'MjYzNw==');
INSERT INTO `t_r_user` VALUES (84, 'tjdxlfgj', 'e10adc3949ba59abbe56e057f20f883e', '鼎信利丰', '2020-11-23 16:19:16.000000', '2b565d02016f4fefbe5f1492cd12c2361606119556536', '鼎信利丰（天津）国际贸易有限公司', '2098', 'MjA5OA==');
INSERT INTO `t_r_user` VALUES (85, 'bzyfdgzg', 'e10adc3949ba59abbe56e057f20f883e', '永发带钢', '2020-11-23 16:19:53.000000', '360110f45558442a841dc277d38106fb1606119593993', '霸州市永发带钢制管有限公司', '1084', 'MTA4NA==');
INSERT INTO `t_r_user` VALUES (86, 'kstfmjt', 'e10adc3949ba59abbe56e057f20f883e', '凯斯特阀门', '2020-11-23 16:20:13.000000', 'da899370c7654d6babf60329ebc4519f1606119613514', '凯斯特阀门集团有限公司', '1060', 'MTA2MA==');
INSERT INTO `t_r_user` VALUES (87, 'tjsdbsgtsy', 'e10adc3949ba59abbe56e057f20f883e', '晟达宝盛', '2020-11-23 16:20:31.000000', 'a02ba78c5dcc42fabdd677e343a5d7241606119631916', '天津市晟达宝盛钢铁实业有限公司', '2524', 'MjUyNA==');
INSERT INTO `t_r_user` VALUES (88, 'tjblfgg', 'e10adc3949ba59abbe56e057f20f883e', '宝利丰', '2020-11-23 16:20:54.000000', '098ad6041307480499e284d5d03da2341606119654208', '宝利丰（天津）钢管有限公司', '2117', 'MjExNw==');
INSERT INTO `t_r_user` VALUES (89, 'tjshwl', 'e10adc3949ba59abbe56e057f20f883e', '深航物流', '2020-11-23 16:21:10.000000', 'cdc42d60420944feb71153cc6eeaefb41606119670077', '天津深航物流有限公司', '2523', 'MjUyMw==');
INSERT INTO `t_r_user` VALUES (90, 'bzzfjszp', 'e10adc3949ba59abbe56e057f20f883e', '众丰金属', '2020-11-23 16:21:28.000000', '75ececfa470844d9b46ac610943a6a131606119688126', '霸州市众丰金属制品有限公司', '1833', 'MTgzMw==');
INSERT INTO `t_r_user` VALUES (91, 'bzyxjszp', 'e10adc3949ba59abbe56e057f20f883e', '义鑫金属', '2020-11-23 16:21:44.000000', '3cd7d6c31b164683a2ceeca746402fd51606119704525', '霸州市义鑫金属制品有限公司', '1665', 'MTY2NQ==');
INSERT INTO `t_r_user` VALUES (92, 'bzxzhxjszp', 'e10adc3949ba59abbe56e057f20f883e', '辛章宏兴', '2020-11-23 16:22:01.000000', '1f2116c1416c456ca1158a42428ba8841606119721784', '霸州市辛章宏兴金属制品有限公司', '1658', 'MTY1OA==');
INSERT INTO `t_r_user` VALUES (93, 'tjgmjck', 'e10adc3949ba59abbe56e057f20f883e', '冠满进出口', '2020-11-23 16:22:22.000000', '0e73043252004c4f8fb4bd5cb554c2b71606119742226', '天津市冠满进出口有限公司', '1690', 'MTY5MA==');
INSERT INTO `t_r_user` VALUES (94, 'bzhtjszp', 'e10adc3949ba59abbe56e057f20f883e', '泓泰金属', '2020-11-23 16:22:43.000000', '588c3e8179e143bf91889db128dcc50b1606119763685', '霸州市泓泰金属制品有限公司', '808', 'ODA4');
INSERT INTO `t_r_user` VALUES (95, 'bzztgm', 'e10adc3949ba59abbe56e057f20f883e', '中天工贸', '2020-11-23 16:23:00.000000', 'a6aaedced040423f82dfaa8cdd5c5e3f1606119780207', '霸州市中天工贸有限公司', '1891', 'MTg5MQ==');
INSERT INTO `t_r_user` VALUES (96, 'bzqyzg', 'e10adc3949ba59abbe56e057f20f883e', '庆远制管', '2020-11-23 16:23:16.000000', '74e6f2ae38b34e3ebb040f4bb1817e5a1606119796352', '霸州市庆远制管有限公司', '1056', 'MTA1Ng==');
INSERT INTO `t_r_user` VALUES (97, 'bzxhgg', 'e10adc3949ba59abbe56e057f20f883e', '新华钢管', '2020-11-23 16:23:33.000000', 'c7e310ac9855459ebd8501bc0cf4055e1606119813501', '霸州市新华钢管有限公司', '263', 'MjYz');
INSERT INTO `t_r_user` VALUES (98, 'bzgybljj', 'e10adc3949ba59abbe56e057f20f883e', '广轶玻璃', '2020-11-23 16:23:49.000000', '620b812cc484455980500505a3bb571f1606119829056', '霸州市广轶玻璃家具有限公司', '1080', 'MTA4MA==');
INSERT INTO `t_r_user` VALUES (99, 'tjlxskj', 'e10adc3949ba59abbe56e057f20f883e', '隆兴晟', '2020-11-23 16:24:09.000000', '7f1f91c78d534ed7be6174e644ad82321606119849350', '天津隆兴晟科技有限公司', '1575', 'MTU3NQ==');
INSERT INTO `t_r_user` VALUES (100, 'nbzjzy', 'e10adc3949ba59abbe56e057f20f883e', '宁波中基', '2020-11-23 16:24:28.000000', 'af814412451b449382c530a5ae5481bb1606119868511', '宁波中基资源有限公司', '2532', 'MjUzMg==');
INSERT INTO `t_r_user` VALUES (101, 'tjxyhdjszp', 'e10adc3949ba59abbe56e057f20f883e', '兴远恒达', '2020-11-23 16:24:47.000000', '232da04207b045ea9076e7b745efd5c01606119887296', '天津兴远恒达金属制品有限公司', '1654', 'MTY1NA==');
INSERT INTO `t_r_user` VALUES (102, 'jybtsy', 'e10adc3949ba59abbe56e057f20f883e', '揭阳宝太', '2020-11-23 16:25:30.000000', 'ace72118451549dab60f5640be04b68a1606119930429', '揭阳市宝太实业有限公司', '1513', 'MTUxMw==');
INSERT INTO `t_r_user` VALUES (103, 'bzjrsy', 'e10adc3949ba59abbe56e057f20f883e', '霸州捷润', '2020-11-23 16:25:54.000000', 'd192bff1c85b4802ad11005ca58b00e01606119954483', '霸州市捷润实业有限公司', '1408', 'MTQwOA==');
INSERT INTO `t_r_user` VALUES (104, 'lfxtzg', 'e10adc3949ba59abbe56e057f20f883e', '廊坊鑫钛', '2020-11-23 16:26:13.000000', '5b6c3a69244f467d8065ace74bdd7f661606119973395', '廊坊鑫钛制管有限公司', '1082', 'MTA4Mg==');
INSERT INTO `t_r_user` VALUES (105, 'tsdygjmy', 'e10adc3949ba59abbe56e057f20f883e', '唐山达越', '2020-11-23 16:26:29.000000', '6ec79111fce545f1ae46052539e84a141606119989023', '唐山达越国际贸易有限公司', '2641', 'MjY0MQ==');
INSERT INTO `t_r_user` VALUES (106, 'bzxgzgzg', 'e10adc3949ba59abbe56e057f20f883e', '星光轧钢', '2020-11-23 16:26:47.000000', '043840b8ab4345318f3539c03841358e1606120007542', '霸州市星光轧钢制管有限公司', '1187', 'MTE4Nw==');
INSERT INTO `t_r_user` VALUES (107, 'waxhtjs', 'e10adc3949ba59abbe56e057f20f883e', '文安宏泰', '2020-11-23 16:27:05.000000', 'ffb8d274657f486483800d1b147fe4e71606120025824', '文安县宏泰金属制品厂', '1116', 'MTExNg==');
INSERT INTO `t_r_user` VALUES (108, 'tjldggjt', 'e10adc3949ba59abbe56e057f20f883e', '利达钢管', '2020-11-23 16:27:19.000000', 'f7b0d1152ec645f79e0d384874d68b181606120039758', '天津市利达钢管集团有限公司', '506', 'NTA2');
INSERT INTO `t_r_user` VALUES (109, 'yigongsi', 'e10adc3949ba59abbe56e057f20f883e', '一公司', '2020-11-23 16:31:50.000000', '47f15a663e6e40a1bf137bd71b8a70e41606120310406', '天津物产友发实业发展有限公司(一公司)', '1007', 'MTAwNw==');
INSERT INTO `t_r_user` VALUES (110, 'ergongsi', 'e10adc3949ba59abbe56e057f20f883e', '二公司', '2020-11-23 16:35:23.000000', 'b8e9a7fb00db43ac9b794432542deb281606120523995', '天津物产友发实业发展有限公司(二公司)', '1008', 'MTAwOA==');
INSERT INTO `t_r_user` VALUES (111, 'handanyoufa', 'e10adc3949ba59abbe56e057f20f883e', '邯郸友发', '2020-11-23 16:37:05.000000', '36206130aa8c4f42ac94bf6085accf5b1606120625310', '天津物产友发实业发展有限公司(邯郸友发)', '1063', 'MTA2Mw==');
INSERT INTO `t_r_user` VALUES (112, 'zhengyuan', 'e10adc3949ba59abbe56e057f20f883e', '正元', '2020-11-23 16:38:19.000000', '9569c8070d3e49f6a4e6d53f9a31aab71606120699493', '天津物产友发实业发展有限公司(正元)', '1095', 'MTA5NQ==');
INSERT INTO `t_r_user` VALUES (113, 'tangshanyoufa', 'e10adc3949ba59abbe56e057f20f883e', '唐山友发', '2020-11-23 16:39:32.000000', 'b64c682b97614509be9322e5183f122e1606120772664', '天津物产友发实业发展有限公司(唐山友发)', '1094', 'MTA5NA==');
INSERT INTO `t_r_user` VALUES (114, 'caigongzhuang', 'e10adc3949ba59abbe56e057f20f883e', '蔡公庄', '2020-11-23 16:40:42.000000', '7bd50b89b2a64f46afe6be82e4bbba061606120842056', '天津物产友发实业发展有限公司(蔡公庄)', '1009', 'MTAwOQ==');
INSERT INTO `t_r_user` VALUES (115, 'baiyidao', 'e10adc3949ba59abbe56e057f20f883e', '百亿道', '2020-11-23 16:41:42.000000', '0200afdf26354cb993549c2f3bce565c1606120902451', '天津物产友发实业发展有限公司(百亿道)', '1010', 'MTAxMA==');
INSERT INTO `t_r_user` VALUES (116, 'youfa', 'e10adc3949ba59abbe56e057f20f883e', '天津物产友发', '2020-11-23 16:42:33.000000', 'ee4f1b1aaf1e421fa5df2196526d21c11606120953908', '天津物产友发实业发展有限公司', '530', 'NTMw');

SET FOREIGN_KEY_CHECKS = 1;
