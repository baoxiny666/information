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