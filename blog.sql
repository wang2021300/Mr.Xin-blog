/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50632
Source Host           : localhost:3306
Source Database       : mr

Target Server Type    : MYSQL
Target Server Version : 50632
File Encoding         : 65001

Date: 2017-04-11 06:47:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL COMMENT '分类Id',
  `title` varchar(40) NOT NULL COMMENT '标题',
  `content` longblob NOT NULL COMMENT '内容',
  `description` varchar(500) NOT NULL COMMENT '文章简介  用于列表显示',
  `statue` int(11) NOT NULL DEFAULT '0' COMMENT '状态 0：正常  1：不可用',
  `author` varchar(15) DEFAULT 'Coriger' COMMENT '作者',
  `createTime` datetime NOT NULL COMMENT '发表时间',
  `showCount` int(11) NOT NULL DEFAULT '0' COMMENT '浏览量',
  PRIMARY KEY (`id`),
  KEY `fk_t_article_t_category1_idx` (`categoryId`),
  CONSTRAINT `fk_t_article_t_category1` FOREIGN KEY (`categoryId`) REFERENCES `t_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES ('1', '1', '0723', 0xE9878CE99DA2E79A84E58685E5AEB9E4B88DE8A681E5A484E79086, '我的梦的是大师来开发环境那时候如果是德国进口关税的结构化看到', '0', 'jsu', '2016-07-23 08:14:16', '1');
INSERT INTO `t_article` VALUES ('2', '4', '9999', 0x554E484558284845582827E68F92E585A5626C6F62E7B1BBE59E8BE695B0E68DAEE79A84E696B9E5BC8F272929, '插入方法', '0', 'engle', '2016-07-22 16:28:16', '8');
INSERT INTO `t_article` VALUES ('3', '4', '关于获取basepath的解决方式', 0x3C703E3C62722F3E3C2F703E3C6831206C6162656C3D225469746C652063656E74657222206E616D653D22746322207374796C653D22626F726465722D626F74746F6D2D636F6C6F723A236363636363633B626F726465722D626F74746F6D2D77696474683A3270783B626F726465722D626F74746F6D2D7374796C653A736F6C69643B70616464696E673A3070782034707820307078203070783B746578742D616C69676E3A63656E7465723B6D617267696E3A3070782030707820323070783B2220636C6173733D2275655F74223E5BE6ADA4E5A484E994AEE585A5E69687E7ABA0E6A087E9A2985D3C2F68313E3C703E3C696D67207372633D22687474703A2F2F696D672E62616964752E636F6D2F68692F796F75612F795F303033342E676966222077696474683D2233303022206865696768743D223230302220626F726465723D223022206873706163653D223022207673706163653D223022207374796C653D2277696474683A33303070783B6865696768743A32303070783B666C6F61743A6C6566743B222F3EE59BBEE69687E6B7B7E68E92E696B9E6B3953C2F703E3C703E312E20E59BBEE78987E5B185E5B7A6EFBC8CE69687E5AD97E59BB4E7BB95E59BBEE78987E68E92E789883C2F703E3C703EE696B9E6B395EFBC9AE59CA8E69687E5AD97E5898DE99DA2E68F92E585A5E59BBEE78987EFBC8CE8AEBEE7BDAEE5B185E5B7A6E5AFB9E9BD90EFBC8CE784B6E5908EE58DB3E58FAFE59CA8E58FB3E8BEB9E8BE93E585A5E5A49AE8A18CE69687E69CAC3C2F703E3C703E3C62722F3E3C2F703E3C703E322E20E59BBEE78987E5B185E58FB3EFBC8CE69687E5AD97E59BB4E7BB95E59BBEE78987E68E92E789883C2F703E3C703EE696B9E6B395EFBC9AE59CA8E69687E5AD97E5898DE99DA2E68F92E585A5E59BBEE78987EFBC8CE8AEBEE7BDAEE5B185E58FB3E5AFB9E9BD90EFBC8CE784B6E5908EE58DB3E58FAFE59CA8E5B7A6E8BEB9E8BE93E585A5E5A49AE8A18CE69687E69CAC3C2F703E3C703E3C62722F3E3C2F703E3C703E332E20E59BBEE78987E5B185E4B8ADE78EAFE7BB95E68E92E789883C2F703E3C703EE696B9E6B395EFBC9AE4BAB2EFBC8CE8BF99E4B8AAE79C9FE5BF83E6B2A1E69C89E58A9EE6B395E38082E38082E380823C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E3C703E3C696D67207372633D22687474703A2F2F696D672E62616964752E636F6D2F68692F796F75612F795F303034302E676966222077696474683D2233303022206865696768743D223330302220626F726465723D223022206873706163653D223022207673706163653D223022207374796C653D2277696474683A33303070783B6865696768743A33303070783B666C6F61743A72696768743B222F3E3C2F703E3C703EE8BF98E69C89E6B2A1E69C89E4BB80E4B988E585B6E4BB96E79A84E78EAFE7BB95E696B9E5BC8FE591A2EFBC9FE8BF99E9878CE698AFE5B185E58FB3E78EAFE7BB953C2F703E3C703E3C62722F3E3C2F703E3C703EE6ACA2E8BF8EE5A4A7E5AEB6E5A49AE5A49AE5B09DE8AF95EFBC8CE4B8BA55456469746F72E68F90E4BE9BE69BB4E5A49AE9AB98E8B4A8E9878FE6A8A1E69DBFEFBC813C2F703E3C703E3C62722F3E3C2F703E3C703EE58DA0E4BD8D3C2F703E3C703E3C62722F3E3C2F703E3C703EE58DA0E4BD8D3C2F703E3C703E3C62722F3E3C2F703E3C703EE58DA0E4BD8D3C2F703E3C703E3C62722F3E3C2F703E3C703EE58DA0E4BD8D3C2F703E3C703E3C62722F3E3C2F703E3C703EE58DA0E4BD8D3C2F703E3C707265207374796C653D226261636B67726F756E642D636F6C6F723A233237323832323B636F6C6F723A236638663866323B666F6E742D66616D696C793A262333393B536F7572636520436F64652050726F262333393B3B666F6E742D73697A653A31312E3370743B223E266E6273703B6F6E636C69636B3D2671756F743B6564697441727469636C6528262333393B266C743B253D6261736550617468252667743B262333393B292671756F743B3C2F7072653E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E, '[此处键入文章标题]图文混排方法1. 图片居左，文字围绕图片排版方法：在文字前面插入图片，设置居左对齐，然后即可在右边输入多行文本2. 图片居右，文字围绕图片排版方法：在文字前面插入图片，设置居右对齐，然后即可在左边输入多行文本3. 图片居中环绕排版方法：亲，这个真心没有办法。。。还有没有什么其他的环绕方式呢？这里是居右环绕欢迎大家多多尝试，为UEditor提供更多高质量模板！占位占位占位占位占位 onclick=\"editArticle(\'<%=basePath%>\')\"', '0', 'Coriger', '2016-07-22 16:29:30', '4');
INSERT INTO `t_article` VALUES ('4', '3', ' @autowired和@Resource', 0x3C703E23E5898DE8A880230A0AE585B3E4BA8EE6B3A8E8A7A3E5928C786D6CE9858DE7BDAEE79A84E5AE98E696B9E59B9EE7AD94266E6273703B3C2F703E3C70726520636C6173733D2262727573683A6A6176613B746F6F6C6261723A66616C73653B223E417265266E6273703B616E6E6F746174696F6E73266E6273703B626574746572266E6273703B7468616E266E6273703B584D4C266E6273703B666F72266E6273703B636F6E6669677572696E67266E6273703B537072696E673F266E6273703B0A546865266E6273703B696E74726F64756374696F6E266E6273703B6F66266E6273703B616E6E6F746174696F6E2D6261736564266E6273703B636F6E66696775726174696F6E73266E6273703B726169736564266E6273703B746865266E6273703B7175657374696F6E266E6273703B6F66266E6273703B77686574686572266E6273703B74686973266E6273703B617070726F616368266E6273703B6973266E6273703B262333393B626574746572262333393B266E6273703B0A7468616E266E6273703B584D4C2E266E6273703B546865266E6273703B73686F7274266E6273703B616E73776572266E6273703B6973266E6273703B6974266E6273703B646570656E64732E266E6273703B546865266E6273703B6C6F6E67266E6273703B616E73776572266E6273703B6973266E6273703B74686174266E6273703B65616368266E6273703B617070726F616368266E6273703B686173266E6273703B697473266E6273703B70726F73266E6273703B616E64266E6273703B636F6E732C266E6273703B616E64266E6273703B0A757375616C6C79266E6273703B6974266E6273703B6973266E6273703B7570266E6273703B746F266E6273703B746865266E6273703B646576656C6F706572266E6273703B746F266E6273703B646563696465266E6273703B7768696368266E6273703B7374726174656779266E6273703B7375697473266E6273703B7468656D266E6273703B6265747465722E266E6273703B447565266E6273703B746F266E6273703B746865266E6273703B776179266E6273703B74686579266E6273703B617265266E6273703B646566696E65642C266E6273703B0A616E6E6F746174696F6E73266E6273703B70726F76696465266E6273703B61266E6273703B6C6F74266E6273703B6F66266E6273703B636F6E74657874266E6273703B696E266E6273703B7468656972266E6273703B6465636C61726174696F6E2C266E6273703B6C656164696E67266E6273703B746F266E6273703B73686F72746572266E6273703B616E64266E6273703B6D6F7265266E6273703B636F6E63697365266E6273703B636F6E66696775726174696F6E2E266E6273703B0A486F77657665722C266E6273703B584D4C266E6273703B657863656C73266E6273703B6174266E6273703B776972696E67266E6273703B7570266E6273703B636F6D706F6E656E7473266E6273703B776974686F7574266E6273703B746F756368696E67266E6273703B7468656972266E6273703B736F75726365266E6273703B636F6465266E6273703B6F72266E6273703B7265636F6D70696C696E67266E6273703B7468656D2E266E6273703B536F6D65266E6273703B0A646576656C6F70657273266E6273703B707265666572266E6273703B686176696E67266E6273703B746865266E6273703B776972696E67266E6273703B636C6F7365266E6273703B746F266E6273703B746865266E6273703B736F75726365266E6273703B7768696C65266E6273703B6F7468657273266E6273703B6172677565266E6273703B74686174266E6273703B616E6E6F7461746564266E6273703B636C6173736573266E6273703B617265266E6273703B6E6F266E6273703B6C6F6E676572266E6273703B0A504F4A4F73266E6273703B616E642C266E6273703B667572746865726D6F72652C266E6273703B74686174266E6273703B746865266E6273703B636F6E66696775726174696F6E266E6273703B6265636F6D6573266E6273703B646563656E7472616C697A6564266E6273703B616E64266E6273703B686172646572266E6273703B746F266E6273703B636F6E74726F6C2E266E6273703B4E6F266E6273703B6D6174746572266E6273703B746865266E6273703B63686F6963652C266E6273703B537072696E67266E6273703B63616E266E6273703B6163636F6D6D6F64617465266E6273703B626F7468266E6273703B7374796C6573266E6273703B616E64266E6273703B6576656E266E6273703B6D6978266E6273703B7468656D266E6273703B746F6765746865722E266E6273703B4974E2809973266E6273703B776F727468266E6273703B706F696E74696E67266E6273703B6F7574266E6273703B74686174266E6273703B7468726F756768266E6273703B697473266E6273703B4A617661436F6E666967266E6273703B6F7074696F6E2C266E6273703B537072696E67266E6273703B616C6C6F7773266E6273703B616E6E6F746174696F6E73266E6273703B746F266E6273703B6265266E6273703B75736564266E6273703B696E266E6273703B61266E6273703B6E6F6E2D696E766173697665266E6273703B7761792C266E6273703B776974686F7574266E6273703B746F756368696E67266E6273703B746865266E6273703B746172676574266E6273703B636F6D706F6E656E7473266E6273703B736F75726365266E6273703B636F6465266E6273703B616E64266E6273703B74686174266E6273703B696E266E6273703B7465726D73266E6273703B6F66266E6273703B746F6F6C696E672C266E6273703B616C6C266E6273703B636F6E66696775726174696F6E266E6273703B7374796C6573266E6273703B617265266E6273703B737570706F72746564266E6273703B6279266E6273703B746865266E6273703B537072696E67266E6273703B546F6F6C266E6273703B53756974653C2F7072653E3C703E266E6273703B23E4B8A4E7A78DE6B3A8E8A7A3E79A84E8AFB4E6988E0A2323406175746F77697265640A232323E7AE80E4BB8B0A6175746F7769726564E698AF737072696E67E5AE98E696B9E68F90E4BE9BE79A84E4B880E7A78DE8A385E9858DE696B9E5BC8FE380820A232323E4BDBFE794A8E696B9E6B3950A312EE4BDBFE794A8E59CA8E696B9E6B395E4B88A3A0A0A6060600A7075626C696320636C6173732053696D706C654D6F7669654C6973746572207B0A0A20266E6273703B20266E6273703B70726976617465204D6F76696546696E646572206D6F76696546696E6465723B0A0A20266E6273703B20266E6273703B404175746F77697265640A20266E6273703B20266E6273703B7075626C696320766F6964207365744D6F76696546696E646572284D6F76696546696E646572206D6F76696546696E64657229207B0A20266E6273703B20266E6273703B20266E6273703B20266E6273703B746869732E6D6F76696546696E646572203D206D6F76696546696E6465723B0A20266E6273703B20266E6273703B7D0A0A20266E6273703B20266E6273703B2F2F202E2E2E0A0A7D0A6060600A0A322EE4BDBFE794A8E59CA8E5AD97E6AEB5E4B88A0A0A6060600A20266E6273703B404175746F77697265640A20266E6273703B20266E6273703B70726976617465204D6F766965436174616C6F67206D6F766965436174616C6F673B0A6060600A0A232323E8AFB4E6988E0A6175746F7769726564E4B8BBE8A681E698AFE794A8627974797065E79A84E696B9E5BC8FE6B3A8E585A5E380820A0A0A2323405265736F757263650A232323E7AE80E4BB8B0A407265736F75726365E698AF6A617661E887AAE5B8A6E79A84E4B880E7A78DE8A385E9858DE696B9E5BC8FE380820A232323E4BDBFE794A8E696B9E6B3950AE4B88E406175746F7769726564E79BB8E4BCBC0A312EE68C87E5AE9A6E616D65E5B19EE680A70A0A6060600A20405265736F75726365286E616D653D2671756F743B6D794D6F76696546696E6465722671756F743B290A20266E6273703B20266E6273703B7075626C696320766F6964207365744D6F76696546696E646572284D6F76696546696E646572206D6F76696546696E64657229207B0A20266E6273703B20266E6273703B20266E6273703B20266E6273703B746869732E6D6F76696546696E646572203D206D6F76696546696E6465723B0A20266E6273703B20266E6273703B7D0A6060600A0A322EE9BB98E8AEA45BE4BDBFE794A8E9BB98E8AEA4E68F90E4BE9BE5908DE7A7B05D0A0A6060600A20405265736F757263650A20266E6273703B20266E6273703B7075626C696320766F6964207365744D6F76696546696E646572284D6F76696546696E646572206D6F76696546696E64657229207B0A20266E6273703B20266E6273703B20266E6273703B20266E6273703B746869732E6D6F76696546696E646572203D206D6F76696546696E6465723B0A20266E6273703B20266E6273703B7D0A6060600A0A232323E8AFB4E6988E0A405265736F75726365E9BB98E8AEA4E68C89E5908DE7A7B0E8BF9BE8A18CE8A385E9858DEFBC8CE5908DE7A7B0E58FAFE4BBA5E9809AE8BF876E616D65E5B19EE680A7E8BF9BE8A18CE68C87E5AE9AEFBC8CE5A682E69E9CE6B2A1E69C89E68C87E5AE9A6E616D65E5B19EE680A7EFBC8CE5BD93E6B3A8E8A7A3E58699E59CA8E5AD97E6AEB5E4B88AE697B6EFBC8CE9BB98E8AEA4E58F96E5AD97E6AEB5E5908DE8BF9BE8A18CE5908DE7A7B0E69FA5E689BEE380820A0A0A23E680BBE7BB930AE4B8A4E7A78DE696B9E5BC8FE79A84E58A9FE883BDE5A4A7E887B4E79BB8E5908CEFBC8CE9BB98E8AEA4E68EA8E88D90E4BDBFE794A8405265736F75726365E696B9E5BC8FEFBC8CE8BF99E698AF6A326565E7949FE79A84E696B9E5BC8FE38082E883BDE9998DE4BD8EE5928C737072696E67E79A84E880A6E59088E5BAA6E380820A0AE69BB4E5A49AE585B7E4BD93E8AFA6E68385E8AFB7E58F82E8A781E5AE98E696B9EFBC9A687474703A2F2F737072696E672E696F3C2F703E, '#前言#\n\n关于注解和xml配置的官方回答 Are annotations better than XML for configuring Spring? The introduction of annotation-based configurations raised the question of whether this approach is \'better\' than XML. The short answer is it depends. The long answer is that each approach has its pros and cons, and usually it is up to the developer to decide which strategy suits them better. Due to the way they are defined, annotations provide a lot of context in their declaration, leading to shorter and more concise ', '0', 'jsu_9207', '2016-07-22 16:34:52', '20');
INSERT INTO `t_article` VALUES ('5', '2', 'basePath问题', 0x3C703E3C62722F3E3C2F703E3C6831206C6162656C3D225469746C652063656E74657222206E616D653D22746322207374796C653D22626F726465722D626F74746F6D2D636F6C6F723A236363636363633B626F726465722D626F74746F6D2D77696474683A3270783B626F726465722D626F74746F6D2D7374796C653A736F6C69643B70616464696E673A3070782034707820307078203070783B746578742D616C69676E3A63656E7465723B6D617267696E3A3070782030707820323070783B223E6261736550617468E997AEE9A2983C2F68313E3C703E3C696D67207372633D22687474703A2F2F696D672E62616964752E636F6D2F68692F796F75612F795F303033342E676966222077696474683D2233303022206865696768743D223230302220626F726465723D223022206873706163653D223022207673706163653D223022207374796C653D2277696474683A33303070783B6865696768743A32303070783B666C6F61743A6C6566743B222F3EE58FAFE4BBA5E9809AE8BF876A7370E79A84E587BDE695B0E4BCA0E585A5EFBC9A3C2F703E3C707265207374796C653D226261636B67726F756E642D636F6C6F723A233237323832323B636F6C6F723A236638663866323B666F6E742D66616D696C793A262333393B536F7572636520436F64652050726F262333393B3B666F6E742D73697A653A31312E3370743B223E6564697441727469636C6528262333393B266C743B253D6261736550617468252667743B262333393B293C2F7072653E3C703EE58FAFE4BBA5E8A7A3E586B3E6B2A1E69C89E9A1B9E79BAEE5908DE5B8A6E69DA5E79A84E997AEE9A2983C2F703E3C703E322E20E59BBEE78987E5B185E58FB3EFBC8CE69687E5AD97E59BB4E7BB95E59BBEE78987E68E92E789883C2F703E3C703EE696B9E6B395EFBC9AE59CA8E69687E5AD97E5898DE99DA2E68F92E585A5E59BBEE78987EFBC8CE8AEBEE7BDAEE5B185E58FB3E5AFB9E9BD90EFBC8CE784B6E5908EE58DB3E58FAFE59CA8E5B7A6E8BEB9E8BE93E585A5E5A49AE8A18CE69687E69CAC3C2F703E3C703E3C62722F3E3C2F703E3C703E332E20E59BBEE78987E5B185E4B8ADE78EAFE7BB95E68E92E789883C2F703E3C703EE696B9E6B395EFBC9AE4BAB2EFBC8CE8BF99E4B8AAE79C9FE5BF83E6B2A1E69C89E58A9EE6B395E38082E38082E380823C2F703E3C703E3C62722F3E3C2F703E3C707265207374796C653D226261636B67726F756E642D636F6C6F723A233237323832323B636F6C6F723A236638663866323B666F6E742D66616D696C793A262333393B536F7572636520436F64652050726F262333393B3B666F6E742D73697A653A31312E3370743B2220636C6173733D2262727573683A68746D6C3B746F6F6C6261723A66616C73653B223E66756E6374696F6E266E6273703B676574526F6F74506174682829266E6273703B7B0A266E6273703B266E6273703B266E6273703B2F2FE88EB7E58F96E5BD93E5898DE7BD91E59D80EFBC8CE5A682EFBC9A266E6273703B687474703A2F2F6C6F63616C686F73743A383038302F47616D65466E67696E652F73686172652F6D65756E2E6A73700A266E6273703B266E6273703B266E6273703B766172266E6273703B63757257777750617468266E6273703B3D266E6273703B77696E646F772E646F63756D656E742E6C6F636174696F6E2E687265663B0A266E6273703B266E6273703B266E6273703B2F2FE88EB7E58F96E4B8BBE69CBAE59CB0E59D80E4B98BE5908EE79A84E79BAEE5BD95EFBC8CE5A682EFBC9A266E6273703B47616D65466E67696E652F6D65756E2E6A73700A266E6273703B266E6273703B266E6273703B766172266E6273703B706174684E616D65266E6273703B3D266E6273703B77696E646F772E646F63756D656E742E6C6F636174696F6E2E706174686E616D653B0A266E6273703B266E6273703B266E6273703B766172266E6273703B706F73266E6273703B3D266E6273703B637572577777506174682E696E6465784F6628706174684E616D65293B0A266E6273703B266E6273703B266E6273703B2F2FE88EB7E58F96E4B8BBE69CBAE59CB0E59D80EFBC8CE5A682EFBC9A266E6273703B687474703A2F2F6C6F63616C686F73743A383038300A266E6273703B266E6273703B266E6273703B766172266E6273703B6C6F63616C686F737450616874266E6273703B3D266E6273703B637572577777506174682E737562737472696E6728302C266E6273703B706F73293B0A266E6273703B266E6273703B266E6273703B2F2FE88EB7E58F96E5B8A62671756F743B2F2671756F743BE79A84E9A1B9E79BAEE5908DEFBC8CE5A682EFBC9A2F47616D65466E67696E650A266E6273703B266E6273703B266E6273703B766172266E6273703B70726F6A6563744E616D65266E6273703B3D266E6273703B706174684E616D652E737562737472696E6728302C0A266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B706174684E616D652E7375627374722831292E696E6465784F6628262333393B2F262333393B29266E6273703B20266E6273703B31293B0A266E6273703B266E6273703B266E6273703B72657475726E266E6273703B286C6F63616C686F737450616874266E6273703B20266E6273703B70726F6A6563744E616D65266E6273703B20266E6273703B2671756F743B2F2671756F743B293B0A7D3C2F7072653E3C703E3C62722F3E3C2F703E3C707265207374796C653D226261636B67726F756E642D636F6C6F723A233237323832323B636F6C6F723A236638663866323B666F6E742D66616D696C793A262333393B536F7572636520436F64652050726F262333393B3B666F6E742D73697A653A31312E3370743B223E7461674E616D65626173657061746877696E646F776C6F636174696F6E68726566266E6273703B62617365706174687461674E616D653C2F7072653E3C707265207374796C653D226261636B67726F756E642D636F6C6F723A233237323832323B636F6C6F723A236638663866323B666F6E742D66616D696C793A262333393B536F7572636520436F64652050726F262333393B3B666F6E742D73697A653A31312E3370743B223E266C743B6C692667743B266C743B61266E6273703B7469746C653D2671756F743B2671756F743B266E6273703B687265663D2671756F743B6A6176617363726970743A766F69642830292671756F743B266E6273703B6F6E636C69636B3D2671756F743B676F54616728262333393B247B7461672E7461674E616D657D262333393B2C262333393B266C743B253D6261736550617468252667743B262333393B292671756F743B2667743B247B7461672E7461674E616D657D266C743B2F612667743B266C743B2F6C692667743B3C2F7072653E3C703E3C62722F3E3C2F703E3C703EE8BF99E7A78DE696B9E5BC8FE4B88DE98082E59088E6B2A1E69C89E9A1B9E79BAEE5908DE79A84E68385E586B5E380823C2F703E3C703E3C62722F3E3C2F703E, 'basePath问题可以通过jsp的函数传入：editArticle(\'<%=basePath%>\')可以解决没有项目名带来的问题2. 图片居右，文字围绕图片排版方法：在文字前面插入图片，设置居右对齐，然后即可在左边输入多行文本3. 图片居中环绕排版方法：亲，这个真心没有办法。。。function getRootPath() {   //获取当前网址，如： http://localhost:8080/GameFngine/share/meun.jsp   var curWwwPath = window.document.location.href;   //获取主机地址之后的目录，如： GameFngine/meun.jsp   var pathName = window.document.location.pathname;   var pos = curWwwPath.indexOf(pathName);   //获取主机地址，如： http://localhost:8080   var localhostPaht = curWwwPath.substring(0, pos);  ', '0', 'engle', '2016-07-22 20:30:05', '27');
INSERT INTO `t_article` VALUES ('6', '5', '二傻子', 0x3C703E3C62722F3E3C2F703E3C70207374796C653D2277686974652D73706163653A206E6F726D616C3B223E266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B3C7370616E207374796C653D22636F6C6F723A20726762283139322C20302C2030293B20666F6E742D66616D696C793A20E6A5B7E4BD932C20E6A5B7E4BD935F4742323331322C2053696D4B61693B20666F6E742D73697A653A20323470783B223EE68891E58FAB3C7374726F6E673EE7BD97E6A182E88A9D3C2F7374726F6E673EE68891E698AFE4BA8CE582BBE5AD903C2F7370616E3E3C2F703E3C703E3C696D67207372633D22687474703A2F2F696D672E62616964752E636F6D2F68692F796F75612F795F303033342E676966222077696474683D2233303022206865696768743D223230302220626F726465723D223022206873706163653D223022207673706163653D223022207374796C653D2277696474683A33303070783B6865696768743A32303070783B666C6F61743A6C6566743B222F3EE59BBEE69687E6B7B7E68E92E696B9E6B3953C2F703E3C703E312E20E59BBEE78987E5B185E5B7A6EFBC8CE69687E5AD97E59BB4E7BB95E59BBEE78987E68E92E789883C2F703E3C703EE696B9E6B395EFBC9AE59CA8E69687E5AD97E5898DE99DA2E68F92E585A5E59BBEE78987EFBC8CE8AEBEE7BDAEE5B185E5B7A6E5AFB9E9BD90EFBC8CE784B6E5908EE58DB3E58FAFE59CA8E58FB3E8BEB9E8BE93E585A5E5A49AE8A18CE69687E69CAC3C2F703E3C703E3C62722F3E3C2F703E3C703E322E20E59BBEE78987E5B185E58FB3EFBC8CE69687E5AD97E59BB4E7BB95E59BBEE78987E68E92E789883C2F703E3C703EE696B9E6B395EFBC9AE59CA8E69687E5AD97E5898DE99DA2E68F92E585A5E59BBEE78987EFBC8CE8AEBEE7BDAEE5B185E58FB3E5AFB9E9BD90EFBC8CE784B6E5908EE58DB3E58FAFE59CA8E5B7A6E8BEB9E8BE93E585A5E5A49AE8A18CE69687E69CAC3C2F703E3C703E3C62722F3E3C2F703E3C703E332E20E59BBEE78987E5B185E4B8ADE78EAFE7BB95E68E92E789883C2F703E3C703EE696B9E6B395EFBC9AE4BAB2EFBC8CE8BF99E4B8AAE79C9FE5BF83E6B2A1E69C89E58A9EE6B395E38082E38082E380823C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E3C703E3C696D67207372633D22687474703A2F2F696D672E62616964752E636F6D2F68692F796F75612F795F303034302E676966222077696474683D2233303022206865696768743D223330302220626F726465723D223022206873706163653D223022207673706163653D223022207374796C653D2277696474683A33303070783B6865696768743A33303070783B666C6F61743A72696768743B222F3E3C2F703E3C703EE8BF98E69C89E6B2A1E69C89E4BB80E4B988E585B6E4BB96E79A84E78EAFE7BB95E696B9E5BC8FE591A2EFBC9FE8BF99E9878CE698AFE5B185E58FB3E78EAFE7BB953C2F703E3C703E3C62722F3E3C2F703E3C703EE6ACA2E8BF8EE5A4A7E5AEB6E5A49AE5A49AE5B09DE8AF95EFBC8CE4B8BA55456469746F72E68F90E4BE9BE69BB4E5A49AE9AB98E8B4A8E9878FE6A8A1E69DBFEFBC813C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E3C703E616161616161616161616161616161616161616161613C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E3C703E3C62722F3E3C2F703E, '                    我叫罗桂芝我是二傻子图文混排方法1. 图片居左，文字围绕图片排版方法：在文字前面插入图片，设置居左对齐，然后即可在右边输入多行文本2. 图片居右，文字围绕图片排版方法：在文字前面插入图片，设置居右对齐，然后即可在左边输入多行文本3. 图片居中环绕排版方法：亲，这个真心没有办法。。。还有没有什么其他的环绕方式呢？这里是居右环绕欢迎大家多多尝试，为UEditor提供更多高质量模板！aaaaaaaaaaaaaaaaaaaaaa', '0', '罗桂芝', '2016-07-23 15:35:57', '1002');
INSERT INTO `t_article` VALUES ('7', '5', '打死打伤的', 0x3C703E3C696D6720616C743D2222207372633D22687474703A2F2F696D67352E696D67746E2E6264696D672E636F6D2F69742F753D333338313533323139342C3236313236373936333326616D703B666D3D323126616D703B67703D302E6A706722207374796C653D226865696768743A32323070783B2077696474683A333931707822202F3E3C2F703E0A0A3C703E266E6273703B3C2F703E0A0A3C703E266E6273703B3C2F703E0A0A3C6872202F3E0A3C703EE8BF99E698AFE69687E69CAC3C2F703E0A, '这是文本', '0', 'Coriger', '2016-07-29 10:44:27', '2');
INSERT INTO `t_article` VALUES ('8', '6', '1234', 0x3C703E3C696D6720616C743D2222207372633D22687474703A2F2F696D67352E696D67746E2E6264696D672E636F6D2F69742F753D333338313533323139342C3236313236373936333326616D703B666D3D323126616D703B67703D302E6A706722207374796C653D226865696768743A32323070783B2077696474683A333931707822202F3E3C2F703E0A0A3C703E266E6273703B3C2F703E0A0A3C6872202F3E0A3C68313EE7AE80E4BB8B3C2F68313E0A0A3C703E776865726520313D31E585B6E5AE9EE698AFE4B880E7A78DE8A784E88C83E79A8473716CE8AFADE58FA5E4B9A6E58699E696B9E5BC8FE38082E69C89E588A9E4BA8EE68891E4BBACE5878FE5B091E68891E4BBACE59CA8E5BC80E58F91E8BF87E7A88BE4B8ADE79A84627567E380823C2F703E0A0A3C68313E3C61206E616D653D227432223E3C2F613EE6A0B8E5BF83E58685E5AEB93C2F68313E0A0A3C68323E3C61206E616D653D227433223E3C2F613EE58CBAE588AB3C2F68323E0A0A3C68333E3C61206E616D653D227434223E3C2F613EE699AEE9809AE69FA5E8AFA2E8AFADE58FA53C2F68333E0A0A3C703E73656C656374202A2066726F6D20757365723B3C2F703E0A0A3C68333E3C61206E616D653D227435223E3C2F613E776865726520E8AFADE58FA53C2F68333E0A0A3C703E73656C656374202A2066726F6D207573657220776865726520313D313B3C2F703E0A0A3C68333E3C61206E616D653D227436223E3C2F613EE8AFB4E6988E3C2F68333E0A0A3C703EE4BB8EE4B88AE99DA2E4B8A4E7A78DE8A1A8E8BEBEE696B9E5BC8FE69DA5E8AFB4EFBC8CE5B8A6E69C89776865726520313D31E79A84E8AFADE58FA5E698BEE5BE97E69BB4E58AA0E7B4AFE8B598E8808CE4B894E5A5BDE5838FE6B2A1E69C89E4BB80E4B988E4BD9CE794A8E380823C2F703E0A0A3C68323E3C61206E616D653D227437223E3C2F613EE8BF9BE4B880E6ADA5E68EA2E8AEA83C2F68323E0A0A3C703EE5BD93E68891E4BBACE98187E588B0E69C89E69DA1E4BBB6E69FA5E8AFA2E79A84E697B6E58099E6809DE88083E4B880E4B88BEFBC9A3C2F703E0A0A3C7072653E0A3C636F64653E73656C656374202A2066726F6D207573657220776865726520757365726E616D653D2671756F743B636F6E74656E742671756F743B3B3C2F636F64653E3C2F7072653E0A0A3C756C3E0A093C6C693E313C2F6C693E0A3C2F756C3E0A0A3C703EE58187E5A682757365726E616D653D26726471756F3B266C6471756F3B3B266E6273703B3C6272202F3E0AE982A3E4B988E59CA8E7BC96E5869973716CE69FA5E8AFA2E8AFADE58FA5E79A84E697B6E58099E698AFE4B88DE698AFE8A681E88083E899917768657265E79A84E997AEE9A298EFBC8CE59BA0E4B8BAE4BDA0E4B99FE4B88DE6B885E6A59AE5898DE99DA2E588B0E5BA95E69C89E6B2A1E69DA1E4BBB6E4BDBFE794A8E4BA867768657265E380823C2F703E0A0A3C703EE4BD86E698AFE4BDBFE794A8776865726520313D31EFBC8CE6AF8FE6ACA1E58FAAE8A681E58AA0616E642020E69DA1E4BBB620EFBC8CE58187E5A682E4B8BAE7A9BAE4B99FE4B88DE4BC9AE5BDB1E5938DE4B88BE4B880E69DA1E7BBA7E7BBADE4BDBFE794A8E8BF99E7A78DE696B9E5BC8FE380823C2F703E0A0A3C703EE982A3E4B988E68891E4BBACE59CA8E7BC96E58699E7A88BE5BA8FE79A84E697B6E58099E698AFE590A6E59CA8E4BDBFE794A8E58AA0E4BA86776865726520313D31E79A84E697B6E58099E69BB4E58AA0E4BEBFE588A9E591A2EFBC8CE5878FE5B091E4BA86E5BE88E5A49AE5AFB97768657265E79A84E588A4E696ADE380823C2F703E0A0A3C68313E3C61206E616D653D227438223E3C2F613EE680BBE7BB933C2F68313E0A0A3C703EE585B6E5AE9E776865726520313D3120E8BF99E4B8AAE5A78BE7BB88E68890E7AB8BE79A84E69DA1E4BBB6E5B0B1E698AFE4B8BAE4BA86E696B9E4BEBFE68891E4BBACE79A84E5BC80E58F91E38082E5878FE5B091E587BAE78EB0627567E79A84E4B880E7A78DE8A784E88C83E380823C2F703E0A, '简介where 1=1其实是一种规范的sql语句书写方式。有利于我们减少我们在开发过程中的bug。核心内容区别普通查询语句select * from user;where 语句select * from user where 1=1;说明从上面两种表达方式来说，带有where 1=1的语句显得更加累赘而且好像没有什么作用。进一步探讨当我们遇到有条件查询的时候思考一下：select * from user where username=\"content\";1假如username=”“; 那么在编写sql查询语句的时候是不是要考虑where的问题，因为你也不清楚前面到底有没条件使用了where。但是使用where 1=1，每次只要加and  条件 ，假如为空也不会影响下一条继续使用这种方式。那么我们在编写程序的时候是否在使用加了where 1=1的时候更加便利呢，减少了很多对where的判断。总结其实where 1=1 这个始终成立的条件就是为了方便我们的开发。减少出现bug的一种规范。', '0', 'Coriger', '2016-07-29 10:58:14', '2');
INSERT INTO `t_article` VALUES ('9', '5', '耶耶', 0x3C666F726D20616374696F6E3D227777772E62616964752E636F6D2220656E63747970653D226D756C7469706172742F666F726D2D64617461222069643D223122206D6574686F643D22706F737422206E616D653D22E5AE89E68E92E8A1A822207461726765743D225F626C616E6B223E68656C6C6F206D61E4BDA0E8A789E5BE97E688913C2F666F726D3E0A, 'hello ma你觉得我', '0', 'Coriger', '2016-07-30 19:09:47', '4');
INSERT INTO `t_article` VALUES ('10', '4', '这是一个秘密', 0x3C6872202F3E0A3C703EE689AFE78A8AE5AD903C2F703E0A, '扯犊子', '0', 'Coriger', '2016-07-30 21:50:07', '1');
INSERT INTO `t_article` VALUES ('11', '1', '分页测试', 0x5B6F626A6563742057696E646F775D, 'false', '0', 'Coriger', '2016-07-30 21:50:43', '1');
INSERT INTO `t_article` VALUES ('12', '4', 'hello', 0x3C68312069643D2268312D75344636307535393744223E3C61206E616D653D22E4BDA0E5A5BD2220636C6173733D227265666572656E63652D6C696E6B223E3C2F613E3C7370616E20636C6173733D226865616465722D6C696E6B206F637469636F6E206F637469636F6E2D6C696E6B223E3C2F7370616E3EE4BDA0E5A5BD3C2F68313E3C703EE68891E79A84E4B896E7958C3C2F703E0A3C68322069643D2268322D753746353775363834327535423530223E3C61206E616D653D22E7BD97E6A182E5AD902220636C6173733D227265666572656E63652D6C696E6B223E3C2F613E3C7370616E20636C6173733D226865616465722D6C696E6B206F637469636F6E206F637469636F6E2D6C696E6B223E3C2F7370616E3EE7BD97E6A182E5AD903C2F68323E3C703EE6B58BE8AF953C62723E3C636F64653E5B3D3D3D3D3D3D3D3D5D0A323031372D30342D3033203130262335383B3439262335383B313620E6989FE69C9FE4B8803C2F636F64653E3C2F703E0A, '<h1 id=\"h1-u4F60u597D\"><a name=\"你好\" class=\"reference-link\"></a><span class=\"header-link octicon octi', '0', 'Coriger', '2016-10-14 10:41:50', '5');

-- ----------------------------
-- Table structure for t_article_image
-- ----------------------------
DROP TABLE IF EXISTS `t_article_image`;
CREATE TABLE `t_article_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imageUrl` varchar(100) NOT NULL COMMENT '图片地址',
  `articleId` int(11) NOT NULL COMMENT '文章Id',
  PRIMARY KEY (`id`,`articleId`),
  KEY `fk_t_article_image_t_article_idx` (`articleId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='文章图  主要用于列表浏览';

-- ----------------------------
-- Records of t_article_image
-- ----------------------------
INSERT INTO `t_article_image` VALUES ('1', 'http://7xwuej.com1.z0.glb.clouddn.com/a1.jpg', '1');
INSERT INTO `t_article_image` VALUES ('2', 'http://7xwuej.com1.z0.glb.clouddn.com/a2.jpg', '2');
INSERT INTO `t_article_image` VALUES ('3', 'http://7xwuej.com1.z0.glb.clouddn.com/a3.jpg', '3');
INSERT INTO `t_article_image` VALUES ('4', 'http://7xwuej.com1.z0.glb.clouddn.com/a4.jpg', '4');
INSERT INTO `t_article_image` VALUES ('5', 'http://7xwuej.com1.z0.glb.clouddn.com/a5.jpg', '5');
INSERT INTO `t_article_image` VALUES ('6', 'http://7xwuej.com1.z0.glb.clouddn.com/a6.jpg', '6');
INSERT INTO `t_article_image` VALUES ('14', 'http://7xwuej.com1.z0.glb.clouddn.com/a7.jpg', '7');
INSERT INTO `t_article_image` VALUES ('16', 'http://7xwuej.com1.z0.glb.clouddn.com/a8.jpg', '8');

-- ----------------------------
-- Table structure for t_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_article_tag`;
CREATE TABLE `t_article_tag` (
  `articleId` int(11) NOT NULL COMMENT '文章Id',
  `tagId` int(11) NOT NULL COMMENT '标签Id',
  PRIMARY KEY (`articleId`,`tagId`),
  KEY `fk_t_article_has_t_tag_t_tag1_idx` (`tagId`),
  KEY `fk_t_article_has_t_tag_t_article1_idx` (`articleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章标签中间表';

-- ----------------------------
-- Records of t_article_tag
-- ----------------------------
INSERT INTO `t_article_tag` VALUES ('3', '1');
INSERT INTO `t_article_tag` VALUES ('7', '3');
INSERT INTO `t_article_tag` VALUES ('8', '3');
INSERT INTO `t_article_tag` VALUES ('4', '4');
INSERT INTO `t_article_tag` VALUES ('5', '4');
INSERT INTO `t_article_tag` VALUES ('12', '4');
INSERT INTO `t_article_tag` VALUES ('9', '7');
INSERT INTO `t_article_tag` VALUES ('10', '7');
INSERT INTO `t_article_tag` VALUES ('6', '8');
INSERT INTO `t_article_tag` VALUES ('7', '8');
INSERT INTO `t_article_tag` VALUES ('11', '9');

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(20) NOT NULL COMMENT '分类名称  唯一',
  `iconClass` varchar(45) NOT NULL COMMENT '图标样式',
  `aliasName` varchar(20) NOT NULL COMMENT '别名  唯一  比如新闻 就用News 代替  栏目Id不显示在url中',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序 （0-10）',
  PRIMARY KEY (`id`),
  UNIQUE KEY `aliasName_UNIQUE` (`aliasName`),
  UNIQUE KEY `categoryName_UNIQUE` (`categoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='分类表  只支持一级分类  如果需要分多个层次 用标签来协助实现';

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('1', '技术专栏', 'aa', 'technology', '1');
INSERT INTO `t_category` VALUES ('2', '情感生活', 'aa', 'emotion', '2');
INSERT INTO `t_category` VALUES ('3', '体育竞技', 'bb', 'physical', '4');
INSERT INTO `t_category` VALUES ('4', '生活发现', 'cc', 'life', '6');
INSERT INTO `t_category` VALUES ('5', '傻子罗桂芝', 'lgz', 'doubi', '7');
INSERT INTO `t_category` VALUES ('6', '这是个问题', 'question', 'qs', '5');
INSERT INTO `t_category` VALUES ('7', '一二三四', '1234', '1234', '8');
INSERT INTO `t_category` VALUES ('8', '111', '1', '1', '1');
INSERT INTO `t_category` VALUES ('9', '11', '111', '1111', '1111');
INSERT INTO `t_category` VALUES ('10', '1111', '111', '111', '1111');
INSERT INTO `t_category` VALUES ('16', '111111', '1111', '11111', '1111111');

-- ----------------------------
-- Table structure for t_friend
-- ----------------------------
DROP TABLE IF EXISTS `t_friend`;
CREATE TABLE `t_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteName` varchar(15) NOT NULL COMMENT '站点名',
  `siteUrl` varchar(45) NOT NULL COMMENT '站点地址',
  `siteDesc` varchar(45) NOT NULL COMMENT '站点描述  简单备注下 ',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='合作伙伴';

-- ----------------------------
-- Records of t_friend
-- ----------------------------
INSERT INTO `t_friend` VALUES ('1', '吉首大学', 'www.jsu.edu.cn', '吉首大学官网', '0');
INSERT INTO `t_friend` VALUES ('2', 'CSDN', 'blog.csdn.net/jsu_9207', '我的博客', '2');
INSERT INTO `t_friend` VALUES ('3', 'github', 'https://github.com/', 'github官网', '3');
INSERT INTO `t_friend` VALUES ('4', '开源中国', 'https://git.oschina.net/', '码云官网', '4');

-- ----------------------------
-- Table structure for t_manager
-- ----------------------------
DROP TABLE IF EXISTS `t_manager`;
CREATE TABLE `t_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) NOT NULL COMMENT '用户名',
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manager
-- ----------------------------
INSERT INTO `t_manager` VALUES ('1', 'root', '63A9F0EA7BB98050796B649E85481845');
INSERT INTO `t_manager` VALUES ('2', 'luoguizhi', '61D2A3C5322CE551A8A83283210D739F');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagName` varchar(25) NOT NULL COMMENT '标签名称  唯一',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagName_UNIQUE` (`tagName`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES ('9', 'eee');
INSERT INTO `t_tag` VALUES ('8', 'go');
INSERT INTO `t_tag` VALUES ('3', 'java开发');
INSERT INTO `t_tag` VALUES ('2', 'PHP开发');
INSERT INTO `t_tag` VALUES ('4', 'web开发');
INSERT INTO `t_tag` VALUES ('5', '数据库开发');
INSERT INTO `t_tag` VALUES ('6', '文档记录');
INSERT INTO `t_tag` VALUES ('10', '测试专用1');
INSERT INTO `t_tag` VALUES ('19', '测试专用10');
INSERT INTO `t_tag` VALUES ('20', '测试专用11');
INSERT INTO `t_tag` VALUES ('21', '测试专用12');
INSERT INTO `t_tag` VALUES ('11', '测试专用2');
INSERT INTO `t_tag` VALUES ('12', '测试专用3');
INSERT INTO `t_tag` VALUES ('13', '测试专用4');
INSERT INTO `t_tag` VALUES ('14', '测试专用5');
INSERT INTO `t_tag` VALUES ('15', '测试专用6');
INSERT INTO `t_tag` VALUES ('16', '测试专用7');
INSERT INTO `t_tag` VALUES ('17', '测试专用8');
INSERT INTO `t_tag` VALUES ('18', '测试专用9');
INSERT INTO `t_tag` VALUES ('1', '游戏开发');
INSERT INTO `t_tag` VALUES ('7', '缓存机制');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(20) DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('zhangsan', '15');
INSERT INTO `user` VALUES ('lisi', '17');
INSERT INTO `user` VALUES ('wangwu', '19');
INSERT INTO `user` VALUES ('mazi', '22');
INSERT INTO `user` VALUES ('test', '100');