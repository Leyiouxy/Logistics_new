/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : logistics

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2024-06-08 11:23:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` varchar(50) NOT NULL DEFAULT '0' COMMENT '主键',
  `plate_number` varchar(10) DEFAULT NULL COMMENT '车牌',
  `brand` varchar(255) DEFAULT NULL COMMENT '车品牌',
  `type` char(1) DEFAULT NULL COMMENT '0:轻型货车，1：中型货车；2重型货车',
  `amount` float(11,2) DEFAULT NULL COMMENT '载货量：吨',
  `state` char(1) DEFAULT '0' COMMENT '状态:0:未安排，1:已安排，2：已发车',
  `address` varchar(255) DEFAULT NULL COMMENT '车辆所在地',
  `jd` varchar(255) DEFAULT NULL COMMENT '精度',
  `wd` varchar(255) DEFAULT NULL COMMENT '纬度',
  `del_flag` decimal(1,0) DEFAULT '0' COMMENT '软删除',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('019fc64632369e9abec43887f7345291', '苏A2312', '捷达', '1', '25.00', '1', '玄武区', '118.80441604930856', '32.05475637691764', '0', '2024-04-11 11:47:02', '1', '2024-04-24 22:59:44', '1');
INSERT INTO `car` VALUES ('33509f8e0c379e9d94ad30fb8563009e', '苏A1234', '大众', '0', '10.00', '1', '鼓楼区', '118.77651468016865', '32.07240500757083', '0', '2024-04-11 10:32:56', '1', '2024-04-24 22:57:56', '1');
INSERT INTO `car` VALUES ('6d5c97c2eadca3321dd9431f7a6b4b86', '苏A1111', '五菱', '2', '90.00', '0', '江苏省南京市栖霞区文苑路1号', '118.91668276855411', '32.112189397026164', '0', '2024-04-11 19:32:08', '1', '2024-04-29 08:19:07', '1');
INSERT INTO `car` VALUES ('ac53d538a4c40c693e4d36334be0a461', '苏B8976', '福田', '0', '20.00', '0', '江苏省南京市栖霞区环园路与九乡河西路交汇处', '118.94981362322036', '32.11830753736312', '0', '2024-06-05 23:21:40', '1', '2024-06-05 23:22:25', '1');
INSERT INTO `car` VALUES ('b834359b79ad4cc2ea197c61257f364e', '苏A0989', '比亚迪', '1', '60.00', '0', '江苏省南京市江宁区双龙大道1688号', '118.82717731432038', '31.938144191921122', '0', '2024-04-11 00:15:13', '1', '2024-06-05 23:18:33', '1');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` varchar(50) NOT NULL DEFAULT '0' COMMENT '主键',
  `name` varchar(255) DEFAULT NULL COMMENT '货物名',
  `inventory` int(11) DEFAULT '0' COMMENT '库存',
  `unit` varchar(10) NOT NULL COMMENT '单位',
  `price` decimal(11,2) DEFAULT NULL COMMENT '价格',
  `del_flag` int(1) DEFAULT '0' COMMENT '软删除',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('03f99370da40d8206d880ac2bae38114', '桃子', '20', '盒', '78.00', '0', '2024-06-05 23:24:23', '1', '2024-06-05 23:24:35', '1');
INSERT INTO `goods` VALUES ('219dab7fdc3d0ca5a9b6d5d2728c9b44', '菠萝', '13', '箱', '70.00', '0', '2024-04-26 19:36:13', '1', null, null);
INSERT INTO `goods` VALUES ('321be708e2a3f8696a6aa0511a6749ba', '橘子', '28', '箱', '35.00', '0', '2024-04-17 14:47:41', '1', '2024-04-26 13:59:19', '1');
INSERT INTO `goods` VALUES ('4fd5f4718fa7f7a78b5ea3b8cae20a42', '果冻橙', '42', '箱', '45.00', '0', '2023-04-17 14:43:27', '1', '2024-04-26 13:59:54', '1');
INSERT INTO `goods` VALUES ('60b02aeb8f9bbdc574a11ee33f9eb204', '西瓜', '9', '个', '22.00', '0', '2024-04-17 14:46:55', '1', '2024-04-26 13:59:37', '1');
INSERT INTO `goods` VALUES ('6ea496e6d5a8b8450f1728af8550e8b2', '梨子', '44', '箱', '46.00', '0', '2024-04-17 14:44:28', '1', '2024-04-24 23:05:45', '1');
INSERT INTO `goods` VALUES ('75f4e9bcdf8a2fbeeead925a2531e551', '榴莲', '29', '个', '168.00', '0', '2024-04-17 14:46:48', '1', '2024-04-24 23:04:24', '1');
INSERT INTO `goods` VALUES ('a65e8261da10296e0805826fe9752f32', '蓝莓', '28', '盒', '25.00', '0', '2024-04-17 14:43:43', '1', '2024-04-24 23:02:23', '1');
INSERT INTO `goods` VALUES ('ac7d88eb3ce25646e5045beaedba2bd6', '火龙果', '35', '箱', '56.00', '0', '2024-04-17 14:46:15', '1', '2024-04-24 23:04:57', '1');
INSERT INTO `goods` VALUES ('ad1eb6b4f5e0c9586dba2e7c5eea5c23', '哈密瓜', '16', '箱', '50.00', '0', '2024-04-26 19:35:49', '1', null, null);
INSERT INTO `goods` VALUES ('c2185ecb63739b58984ce875207af0e8', '苹果', '67', '箱', '25.00', '0', '2024-04-17 00:16:04', '1', '2024-04-26 13:59:27', '1');
INSERT INTO `goods` VALUES ('f67e80e39f45a0a791eda72b8f0f9a6c', '柠檬', '17', '盒', '40.00', '0', '2024-04-17 14:46:02', '1', '2024-04-24 23:05:15', '1');
INSERT INTO `goods` VALUES ('fb30626d0140f833709344aaed94d446', '香蕉', '35', '箱', '40.00', '0', '2024-04-17 14:47:11', '1', '2024-04-24 23:03:48', '1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `pid` varchar(50) DEFAULT '0' COMMENT '父id',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名',
  `sort` int(11) DEFAULT NULL COMMENT '排序吗',
  `end` int(11) DEFAULT '0' COMMENT '是否是最后节点',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='菜单表';

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('03841c43b79fc16b09939d82c3b0b6c4', '13a703c4d72ec9688ce24f3668567fa2', '/order/list.html', '订单列表', '1', '1');
INSERT INTO `menu` VALUES ('1', '0', '', '系统管理', '1', '0');
INSERT INTO `menu` VALUES ('13a703c4d72ec9688ce24f3668567fa2', '0', '', '订单管理', '4', '0');
INSERT INTO `menu` VALUES ('2', '1', '/system/menu.html', '菜单管理', '2', '1');
INSERT INTO `menu` VALUES ('3', '1', '/system/role.html', '权限管理', '1', '1');
INSERT INTO `menu` VALUES ('59b5196e226617b8378bcaafff8351b9', '5a46262817543a8d5898b7466f918a18', '/distribution/odlOrder.html', '历史订单', '3', '1');
INSERT INTO `menu` VALUES ('5a46262817543a8d5898b7466f918a18', '0', '', '配送管理', '5', '0');
INSERT INTO `menu` VALUES ('65973b451b872f5785322d2e95039bca', '0', '', '仓库管理', '3', '0');
INSERT INTO `menu` VALUES ('756cad357f7151d670486aabf9784346', '65973b451b872f5785322d2e95039bca', '/warehouse/goods.html', '货物信息管理', '2', '1');
INSERT INTO `menu` VALUES ('78504c518f2fd703bf35ea97415761ca', '5a46262817543a8d5898b7466f918a18', '/distribution/planCar.html', '车辆安排', '1', '1');
INSERT INTO `menu` VALUES ('82a3f32473d553134f9490376a2e1068', '88772299913848330d8b1c577d5c8113', '/user/info.html', '用户列表', '1', '1');
INSERT INTO `menu` VALUES ('88772299913848330d8b1c577d5c8113', '0', '', '用户管理', '2', '0');
INSERT INTO `menu` VALUES ('a3c7f98a239100f09ee6d657ee9909f2', '5a46262817543a8d5898b7466f918a18', '/distribution/delivery.html', '发货', '2', '1');
INSERT INTO `menu` VALUES ('c4c5120f9cc4054cbf62cb6afc524cee', '65973b451b872f5785322d2e95039bca', '/warehouse/car.html', '配送车辆管理', '1', '1');
INSERT INTO `menu` VALUES ('e5bacd6481e6bc4569f27bd22b9de7d9', '5a46262817543a8d5898b7466f918a18', '/distribution/demo.html', '算法演示', '4', '1');

-- ----------------------------
-- Table structure for menu_role
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `role_id` varchar(50) DEFAULT NULL COMMENT '权限id',
  `menu_id` varchar(50) DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='权限菜单表';

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES ('07721733db6144def82c363ba5f5156c', '3', '13a703c4d72ec9688ce24f3668567fa2');
INSERT INTO `menu_role` VALUES ('0c930764d0f4a1ccf148148a945fb40b', '1', '3');
INSERT INTO `menu_role` VALUES ('11a4aef188c73249fd7ec3b87d3c5066', '1', '03841c43b79fc16b09939d82c3b0b6c4');
INSERT INTO `menu_role` VALUES ('19b3da1d6f07783a0499f20f3cae8d85', '35e5fdea58079db5e681a1e0466dd9bc', '88772299913848330d8b1c577d5c8113');
INSERT INTO `menu_role` VALUES ('24bc67a5d526630c64dae0c173b97004', '2', 'c4c5120f9cc4054cbf62cb6afc524cee');
INSERT INTO `menu_role` VALUES ('29f2963ca54a41702590cd3118235d38', '3', '03841c43b79fc16b09939d82c3b0b6c4');
INSERT INTO `menu_role` VALUES ('385ee75e52a77c89507e0ff393ab6c70', '1', 'a3c7f98a239100f09ee6d657ee9909f2');
INSERT INTO `menu_role` VALUES ('3dc2a95d9f31dbe9cebddf86a1c1a8e0', '35e5fdea58079db5e681a1e0466dd9bc', '13a703c4d72ec9688ce24f3668567fa2');
INSERT INTO `menu_role` VALUES ('41eeb43ee1f5d84243179309e61727df', '1', '13a703c4d72ec9688ce24f3668567fa2');
INSERT INTO `menu_role` VALUES ('4cc8dd78949be667a0cbbca63a1d60e5', '1', '88772299913848330d8b1c577d5c8113');
INSERT INTO `menu_role` VALUES ('4e5d198a3781d081cd07052caca68a08', '1', '59b5196e226617b8378bcaafff8351b9');
INSERT INTO `menu_role` VALUES ('50f945b34e7d49e50af82747ae2d0360', '2', '65973b451b872f5785322d2e95039bca');
INSERT INTO `menu_role` VALUES ('5c4db2a946dc3d7f85b4fc1dd0e142ef', '2', '13a703c4d72ec9688ce24f3668567fa2');
INSERT INTO `menu_role` VALUES ('7886ab30fe1ad2d98fbd9f4b516b206c', '35e5fdea58079db5e681a1e0466dd9bc', '03841c43b79fc16b09939d82c3b0b6c4');
INSERT INTO `menu_role` VALUES ('795a836f62ecdd39773c13b8470d064c', '1', '82a3f32473d553134f9490376a2e1068');
INSERT INTO `menu_role` VALUES ('7e9bfce8a4e3722e7cff62c92133720e', '1', '2');
INSERT INTO `menu_role` VALUES ('815b5dcccc6e02c60e7ad0ef149ebb2d', '1', '65973b451b872f5785322d2e95039bca');
INSERT INTO `menu_role` VALUES ('85f2457e7047f00a9bbb44312b2c1686', '1', '756cad357f7151d670486aabf9784346');
INSERT INTO `menu_role` VALUES ('86671bed7ed9d22b27c71a17a0b0a695', '2', '756cad357f7151d670486aabf9784346');
INSERT INTO `menu_role` VALUES ('8d7b7f41c9976e908072ebca0f742556', '1', '78504c518f2fd703bf35ea97415761ca');
INSERT INTO `menu_role` VALUES ('9a356b9791a940e841a5310cb71032d7', '1', '1');
INSERT INTO `menu_role` VALUES ('a11feaf7caf7fc6785ec0c04726cc90c', '2', '03841c43b79fc16b09939d82c3b0b6c4');
INSERT INTO `menu_role` VALUES ('ac148917fdcea583ecd4b4badb5f0e93', '35e5fdea58079db5e681a1e0466dd9bc', '82a3f32473d553134f9490376a2e1068');
INSERT INTO `menu_role` VALUES ('b01fd41dd769566b62bd0397cbe02789', '3', '5a46262817543a8d5898b7466f918a18');
INSERT INTO `menu_role` VALUES ('c0b92ec26dfcd8a014cdbbe83a68ae03', '3', '78504c518f2fd703bf35ea97415761ca');
INSERT INTO `menu_role` VALUES ('c5a529144dcb9285bd93545dd29dff7b', '3', '59b5196e226617b8378bcaafff8351b9');
INSERT INTO `menu_role` VALUES ('d793b6adffa9674d9761e30f67cdcc61', '1', 'c4c5120f9cc4054cbf62cb6afc524cee');
INSERT INTO `menu_role` VALUES ('d83766c60040acc30a3ac76701b42a32', '1', '5a46262817543a8d5898b7466f918a18');
INSERT INTO `menu_role` VALUES ('df1da3a14785bc3a0b8edd692070c2ce', '3', 'a3c7f98a239100f09ee6d657ee9909f2');
INSERT INTO `menu_role` VALUES ('e553ac8ea1656df104ef73e3a4e53d9d', '1', 'e5bacd6481e6bc4569f27bd22b9de7d9');
INSERT INTO `menu_role` VALUES ('fc9b982ec9a9918476a213b5b3890b43', '3', 'e5bacd6481e6bc4569f27bd22b9de7d9');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` varchar(50) NOT NULL DEFAULT '0' COMMENT '主键',
  `buyers_name` varchar(255) DEFAULT NULL COMMENT '买家姓名',
  `buyers_phone` varchar(11) DEFAULT NULL COMMENT '买家电话',
  `buyers_address` varchar(255) DEFAULT NULL COMMENT '买家地址',
  `jd` varchar(255) NOT NULL COMMENT '精度',
  `wd` varchar(255) DEFAULT NULL COMMENT '维度',
  `total_amount` decimal(11,2) DEFAULT NULL COMMENT '总金额',
  `state` char(1) DEFAULT NULL COMMENT '状态：0:未发货，1：已发货',
  `car_id` varchar(50) DEFAULT NULL COMMENT '安排的车辆id',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  `fh_date` datetime DEFAULT NULL COMMENT '发货时间',
  `fh_user` varchar(255) DEFAULT NULL COMMENT '发货人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('13c5308d50992b299443702f04e781f7', '张三', '12259928818', '江苏省南京市栖霞区文苑路9号', '118.93728387830609', '32.11982292132023', '1880.00', '1', 'b834359b79ad4cc2ea197c61257f364e', '2024-04-20 00:41:47', '1', '2024-04-25 23:03:02', '1', '2024-04-25 23:19:08', '1');
INSERT INTO `order` VALUES ('15b532647b966a9c5f08b4f26b8caf76', '小橙', '17638174693', '双清路', '116.33944533839397', '40.002336770893685', '556.00', '0', null, '2024-06-05 23:28:31', '1', null, null, null, null);
INSERT INTO `order` VALUES ('180111bfa532597415fb7c370c784cb3', '喜羊羊', '15256376482', '江苏省盐城市大丰区恒北新村南', '120.49117328844926', '33.16088306622135', '514.00', '0', null, '2024-04-26 14:11:04', '1', null, null, null, null);
INSERT INTO `order` VALUES ('180ef1c15990ee2aa2a79142935d019a', '小红', '16527635747', '江苏省盐城市大丰区大中街道幸福西大街8号凰家御庭二期东门15-106号爱享生活便利店', '120.45842268650537', '33.20696225573617', '672.00', '0', null, '2024-06-05 23:26:39', '1', null, null, null, null);
INSERT INTO `order` VALUES ('577b19c185365d3f377ba51b452a44c5', '美羊羊', '14624543436', '江苏南京市仙林大学城文苑路3号', '118.92868278270916', '32.11514396437463', '2888.00', '0', '019fc64632369e9abec43887f7345291', '2024-04-26 14:12:25', '1', '2024-04-26 19:37:00', '1', null, '');
INSERT INTO `order` VALUES ('717bf4b99104303ed22a6ed9e4694003', '小一', '12455642365', '江苏省南京市栖霞区文苑路9号', '118.93728387830609', '32.11982292132023', '212.00', '1', '019fc64632369e9abec43887f7345291', '2024-04-29 08:20:37', '1', null, '', '2024-04-29 08:21:41', '1');
INSERT INTO `order` VALUES ('c578bf81ff6be721d7fd77e49d5c5cf2', '小张', '15637615376', '江苏省南京市栖霞区文苑路9号', '118.93728387830609', '32.11982292132023', '240.00', '1', '019fc64632369e9abec43887f7345291', '2024-04-26 20:35:02', '1', null, '', '2024-04-26 20:36:01', '1');
INSERT INTO `order` VALUES ('eb5661efead86b3d41605a01c844441d', '沸羊羊', '15725356337', '江苏省南京市栖霞区文苑路9号', '118.93728387830609', '32.11982292132023', '1300.00', '1', '019fc64632369e9abec43887f7345291', '2024-04-26 19:42:31', '1', null, '', '2024-04-26 19:44:19', '1');
INSERT INTO `order` VALUES ('fe4531131b6071f6dceeb54a6bd55a1a', '懒羊羊', '15726786876', '江苏省南京市栖霞区文苑路1号', '118.91668276855411', '32.112189397026164', '820.00', '1', '019fc64632369e9abec43887f7345291', '2024-04-26 14:13:24', '1', null, '', '2024-04-26 14:14:53', '1');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` varchar(50) NOT NULL DEFAULT '0' COMMENT '主键',
  `goods_id` varchar(50) DEFAULT NULL COMMENT '商品id',
  `order_id` varchar(50) DEFAULT NULL COMMENT '订单编号',
  `number` int(11) DEFAULT NULL COMMENT '商品数量',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('10bc0ab9d73bcb55515d216347af8af0', 'a65e8261da10296e0805826fe9752f32', '180111bfa532597415fb7c370c784cb3', '10', '2024-04-26 14:11:04', '1', null, null);
INSERT INTO `order_detail` VALUES ('17bd1f37339c0c7af593c1932760a8ae', '219dab7fdc3d0ca5a9b6d5d2728c9b44', 'eb5661efead86b3d41605a01c844441d', '10', '2024-04-26 19:42:31', '1', null, null);
INSERT INTO `order_detail` VALUES ('359c1c4e4e42d7b19240acf0feb4e414', '6ea496e6d5a8b8450f1728af8550e8b2', '180ef1c15990ee2aa2a79142935d019a', '12', '2024-06-05 23:26:39', '1', null, null);
INSERT INTO `order_detail` VALUES ('58b2857bff84f425bd03bf37470b2db6', 'c2185ecb63739b58984ce875207af0e8', '1437a1e9efc771a7301e73ac504b1235', '11', '2024-04-20 00:17:23', '1', null, null);
INSERT INTO `order_detail` VALUES ('5e9face795340ac4d38ec68a84dea4e0', '321be708e2a3f8696a6aa0511a6749ba', '15b532647b966a9c5f08b4f26b8caf76', '14', '2024-06-05 23:28:31', '1', null, null);
INSERT INTO `order_detail` VALUES ('697202d322ee896637d6cb42729a1d0c', 'f67e80e39f45a0a791eda72b8f0f9a6c', '180ef1c15990ee2aa2a79142935d019a', '3', '2024-06-05 23:26:39', '1', null, null);
INSERT INTO `order_detail` VALUES ('70cb4d976ecc005f336fd73375cb08a0', 'ac7d88eb3ce25646e5045beaedba2bd6', '577b19c185365d3f377ba51b452a44c5', '13', '2024-04-26 19:37:01', '1', null, null);
INSERT INTO `order_detail` VALUES ('726243ad42db444a8047ee870b922016', 'f67e80e39f45a0a791eda72b8f0f9a6c', '577b19c185365d3f377ba51b452a44c5', '10', '2024-04-26 19:37:01', '1', null, null);
INSERT INTO `order_detail` VALUES ('84509c7f73a478679a775fd9a7366e87', 'f67e80e39f45a0a791eda72b8f0f9a6c', '81954eca0a3568242be0b2f14783e611', '44', '2024-04-20 17:08:56', '1', null, null);
INSERT INTO `order_detail` VALUES ('a2e2953a9670f82012d2a0a0b88173d3', '60b02aeb8f9bbdc574a11ee33f9eb204', '1437a1e9efc771a7301e73ac504b1235', '11', '2024-04-20 00:17:23', '1', null, null);
INSERT INTO `order_detail` VALUES ('a48d1f30bc4520af504a13e78d281449', '60b02aeb8f9bbdc574a11ee33f9eb204', '81954eca0a3568242be0b2f14783e611', '22', '2024-04-20 17:08:56', '1', null, null);
INSERT INTO `order_detail` VALUES ('a4da89592b3655e8d9d838bae35fdc41', 'ac7d88eb3ce25646e5045beaedba2bd6', '81954eca0a3568242be0b2f14783e611', '33', '2024-04-20 17:08:56', '1', null, null);
INSERT INTO `order_detail` VALUES ('a6af80d24a4fe3354fd2f91d4851282d', '60b02aeb8f9bbdc574a11ee33f9eb204', 'fe4531131b6071f6dceeb54a6bd55a1a', '22', '2024-04-26 14:13:24', '1', null, null);
INSERT INTO `order_detail` VALUES ('b11b689cf020f727a373dc8e8ed8b12b', 'ad1eb6b4f5e0c9586dba2e7c5eea5c23', 'c578bf81ff6be721d7fd77e49d5c5cf2', '2', '2024-04-26 20:35:02', '1', null, null);
INSERT INTO `order_detail` VALUES ('b4e54f1f4f04f35219589a11fe679ebf', '75f4e9bcdf8a2fbeeead925a2531e551', '577b19c185365d3f377ba51b452a44c5', '5', '2024-04-26 19:37:01', '1', null, null);
INSERT INTO `order_detail` VALUES ('ba73a61e6eaf2bb286510b8fe3bf35fa', 'bcb967bff5b97b303f19ab700661b925', '81954eca0a3568242be0b2f14783e611', '11', '2024-04-20 17:08:56', '1', null, null);
INSERT INTO `order_detail` VALUES ('bbc6d280ef4247a21e50726c78f6873d', '75f4e9bcdf8a2fbeeead925a2531e551', '717bf4b99104303ed22a6ed9e4694003', '1', '2024-04-29 08:20:37', '1', null, null);
INSERT INTO `order_detail` VALUES ('c30aea5ce737e54ee637d1c5e16a5ad7', '6ea496e6d5a8b8450f1728af8550e8b2', '577b19c185365d3f377ba51b452a44c5', '20', '2024-04-26 19:37:01', '1', null, null);
INSERT INTO `order_detail` VALUES ('c622b953c5951bba22a1e71f39441cab', '75f4e9bcdf8a2fbeeead925a2531e551', 'fe4531131b6071f6dceeb54a6bd55a1a', '2', '2024-04-26 14:13:24', '1', null, null);
INSERT INTO `order_detail` VALUES ('c7fa1d00ca0f6b90ef967a7c393b83d1', '60b02aeb8f9bbdc574a11ee33f9eb204', '180111bfa532597415fb7c370c784cb3', '12', '2024-04-26 14:11:04', '1', null, null);
INSERT INTO `order_detail` VALUES ('ca74679136b0550abf162aa93de37461', 'c2185ecb63739b58984ce875207af0e8', '13c5308d50992b299443702f04e781f7', '36', '2024-04-25 23:03:02', '1', null, null);
INSERT INTO `order_detail` VALUES ('cda7c6b3a3d8b38642eb1da5e84ac7ce', 'fb30626d0140f833709344aaed94d446', '81954eca0a3568242be0b2f14783e611', '11', '2024-04-20 17:08:56', '1', null, null);
INSERT INTO `order_detail` VALUES ('d81b0de0d82679ba987e3690f09b6a77', '321be708e2a3f8696a6aa0511a6749ba', '13c5308d50992b299443702f04e781f7', '28', '2024-04-25 23:03:02', '1', null, null);
INSERT INTO `order_detail` VALUES ('db9ab92094b11aa08fd0990e51615165', '321be708e2a3f8696a6aa0511a6749ba', '81954eca0a3568242be0b2f14783e611', '1', '2024-04-20 17:08:56', '1', null, null);
INSERT INTO `order_detail` VALUES ('e6109ccb6562a93a9a7d91776db56474', '60b02aeb8f9bbdc574a11ee33f9eb204', '717bf4b99104303ed22a6ed9e4694003', '2', '2024-04-29 08:20:37', '1', null, null);
INSERT INTO `order_detail` VALUES ('ea972b6df6339bc261f811aecad37bc7', 'ad1eb6b4f5e0c9586dba2e7c5eea5c23', 'eb5661efead86b3d41605a01c844441d', '12', '2024-04-26 19:42:31', '1', null, null);
INSERT INTO `order_detail` VALUES ('f0b8fad25ce7dd5ede261088004157f4', '60b02aeb8f9bbdc574a11ee33f9eb204', '15b532647b966a9c5f08b4f26b8caf76', '3', '2024-06-05 23:28:31', '1', null, null);
INSERT INTO `order_detail` VALUES ('fe3ac2d2e1a557ca337902539927da40', '219dab7fdc3d0ca5a9b6d5d2728c9b44', 'c578bf81ff6be721d7fd77e49d5c5cf2', '2', '2024-04-26 20:35:02', '1', null, null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '权限名',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `type` int(1) DEFAULT NULL COMMENT '0:系统类，1：自定义类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='权限表';

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', '2024-04-03 20:36:19', '0');
INSERT INTO `role` VALUES ('2', '调货员', '2024-04-03 11:42:17', '0');
INSERT INTO `role` VALUES ('3', '配送员', '2024-04-03 16:47:27', '0');
INSERT INTO `role` VALUES ('35e5fdea58079db5e681a1e0466dd9bc', '测试', '2024-04-04 00:12:17', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `name` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `username` varchar(50) DEFAULT NULL COMMENT '用户帐号',
  `password` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `role` varchar(50) DEFAULT NULL COMMENT '用户角色',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '管理员1', 'admin1', '123456', '1', '2024-04-06 11:42:25');
INSERT INTO `user` VALUES ('1c44486910a0baaf8a143d279e9374a2', 'momo', 'momo', '123', '35e5fdea58079db5e681a1e0466dd9bc', '2024-04-06 00:13:02');
INSERT INTO `user` VALUES ('750b829b0584f1ecc9a265cc4a7b9b66', '小李', 'xiaoli', '123', '2', '2024-04-07 13:48:33');
INSERT INTO `user` VALUES ('794b0cfde68b9492aa54ccc5b3b64557', '小张', 'xiaozhang', '123', '3', '2024-04-08 17:08:25');
INSERT INTO `user` VALUES ('cb840eec246e3096048d1b9c136e5c00', '管理员2', 'admin2', '123', '1', '2024-04-26 13:49:11');
INSERT INTO `user` VALUES ('f289c4f3741556ad588f3b90e2940986', '小王', 'xiaowang', '123', '3', '2024-04-26 13:50:00');
