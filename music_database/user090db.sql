/*
Navicat MySQL Data Transfer

Source Server         : yinyue
Source Server Version : 80018
Source Host           : 124.71.228.59:3306
Source Database       : user090db

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2021-06-27 22:20:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `singer_id` int(11) unsigned NOT NULL,
  `album_releasedTime` date NOT NULL,
  `album_intro` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `s_s2` (`singer_id`),
  KEY `album_releasedTime` (`album_releasedTime`),
  CONSTRAINT `s_s2` FOREIGN KEY (`singer_id`) REFERENCES `singer` (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('5', '梦幻丽莎发廊', '8', '2016-12-09', '清新的小镇乐曲');
INSERT INTO `album` VALUES ('133', '明天过后', '1', '2018-12-26', null);
INSERT INTO `album` VALUES ('134', '爱，不解释', '1', '2018-12-26', null);
INSERT INTO `album` VALUES ('135', '再爱我一回', '1', '2018-12-26', null);
INSERT INTO `album` VALUES ('136', '中国新声代第二季 第', '1', '2018-12-26', null);
INSERT INTO `album` VALUES ('137', '穿越三部曲', '1', '2018-12-27', null);
INSERT INTO `album` VALUES ('138', '拾', '1', '2018-12-27', null);
INSERT INTO `album` VALUES ('139', '魔杰座', '2', '2018-12-27', null);
INSERT INTO `album` VALUES ('142', '床边故事', '2', '2018-12-30', null);
INSERT INTO `album` VALUES ('143', '十二新作', '2', '2018-12-30', null);
INSERT INTO `album` VALUES ('144', '范特西', '2', '2018-12-30', null);
INSERT INTO `album` VALUES ('145', '依然范特西', '2', '2018-12-30', null);
INSERT INTO `album` VALUES ('146', '我很忙', '2', '2018-12-30', null);
INSERT INTO `album` VALUES ('147', '跨时代', '2', '2018-12-30', null);
INSERT INTO `album` VALUES ('148', '七里香', '2', '2018-12-30', null);
INSERT INTO `album` VALUES ('149', '叶惠美', '2', '2018-12-30', null);
INSERT INTO `album` VALUES ('150', 'Blossom', '3', '2018-12-30', null);
INSERT INTO `album` VALUES ('151', 'The 1st El', '4', '2018-12-30', null);
INSERT INTO `album` VALUES ('152', 'Stranger U', '4', '2018-12-30', null);
INSERT INTO `album` VALUES ('153', '不想放手', '4', '2018-12-30', null);
INSERT INTO `album` VALUES ('154', 'Xposed', '5', '2018-12-30', null);
INSERT INTO `album` VALUES ('155', '龙卷风', '5', '2018-12-30', null);
INSERT INTO `album` VALUES ('156', 'The First ', '6', '2018-12-30', null);
INSERT INTO `album` VALUES ('157', 'Highlight', '6', '2018-12-30', null);
INSERT INTO `album` VALUES ('158', 'Bye Bye Lo', '6', '2018-12-30', null);
INSERT INTO `album` VALUES ('159', 'Here I am', '7', '2018-12-30', null);
INSERT INTO `album` VALUES ('160', '봄날의 소나기', '7', '2018-12-30', null);
INSERT INTO `album` VALUES ('161', 'Once Upon ', '8', '2019-03-19', null);
INSERT INTO `album` VALUES ('162', 'Per un Pug', '8', '2019-03-19', null);
INSERT INTO `album` VALUES ('163', '和自己对话 From', '9', '2019-03-19', null);
INSERT INTO `album` VALUES ('164', 'JJ陆', '9', '2019-03-19', null);
INSERT INTO `album` VALUES ('165', '十八般武艺', '10', '2019-03-19', null);
INSERT INTO `album` VALUES ('166', 'Life After', '11', '2019-03-19', null);
INSERT INTO `album` VALUES ('167', 'Sofía', '27', '2019-06-02', null);
INSERT INTO `album` VALUES ('168', 'El Mismo S', '27', '2019-06-02', null);
INSERT INTO `album` VALUES ('169', 'The Good, ', '8', '2019-03-19', null);
INSERT INTO `album` VALUES ('170', 'My Love', '13', '2019-04-25', null);
INSERT INTO `album` VALUES ('171', '耳朵', '12', '2019-06-02', null);
INSERT INTO `album` VALUES ('172', '盖世英雄', '10', '2019-06-02', null);
INSERT INTO `album` VALUES ('173', '陪你度过漫长岁月', '4', '2019-06-02', null);
INSERT INTO `album` VALUES ('174', '国王与乞丐', '16', '2019-06-02', null);
INSERT INTO `album` VALUES ('175', '护花使者', '18', '2019-06-02', null);
INSERT INTO `album` VALUES ('176', '经典金曲', '18', '2019-06-02', null);
INSERT INTO `album` VALUES ('177', '模特', '12', '2019-06-02', null);
INSERT INTO `album` VALUES ('178', '李荣浩', '12', '2019-06-02', null);
INSERT INTO `album` VALUES ('179', '昨天今天明天', '16', '2019-06-01', null);
INSERT INTO `album` VALUES ('180', '那时的我们', '23', '2019-06-02', null);
INSERT INTO `album` VALUES ('181', '无问', '23', '2019-06-02', null);
INSERT INTO `album` VALUES ('182', '一吻之间', '19', '2019-06-01', null);
INSERT INTO `album` VALUES ('183', '微微一笑很倾城', '19', '2019-06-02', null);
INSERT INTO `album` VALUES ('184', '我乐意', '14', '2019-06-02', null);
INSERT INTO `album` VALUES ('185', 'CHAT-SHIRE', '20', '2019-06-02', null);
INSERT INTO `album` VALUES ('186', 'CHAT-드림하이 ', '20', '2019-06-02', null);
INSERT INTO `album` VALUES ('187', '밴드 고맙삼다', '21', '2019-06-01', null);
INSERT INTO `album` VALUES ('188', '当爱已成往事', '15', '2019-06-02', null);
INSERT INTO `album` VALUES ('189', '想你', '15', '2019-06-02', null);
INSERT INTO `album` VALUES ('190', '倩女幽魂', '15', '2019-06-02', null);
INSERT INTO `album` VALUES ('191', '最冷一天', '15', '2019-06-02', null);
INSERT INTO `album` VALUES ('192', '小幸运', '13', '2019-06-02', null);
INSERT INTO `album` VALUES ('193', '你就不要想起我', '13', '2019-06-02', null);
INSERT INTO `album` VALUES ('194', '神的孩子都在跳舞', '30', '2019-06-02', null);
INSERT INTO `album` VALUES ('195', '如果我们不曾相遇', '30', '2019-06-02', null);
INSERT INTO `album` VALUES ('196', '倔强', '30', '2019-06-02', null);
INSERT INTO `album` VALUES ('197', 'Lose Yours', '11', '2019-06-02', null);
INSERT INTO `album` VALUES ('198', 'When I\'m G', '11', '2019-06-02', null);
INSERT INTO `album` VALUES ('199', '平凡之路', '17', '2019-06-02', null);
INSERT INTO `album` VALUES ('200', '白桦林', '17', '2019-06-02', null);
INSERT INTO `album` VALUES ('201', '光辉岁月', '31', '2019-06-02', null);
INSERT INTO `album` VALUES ('202', '无悔这一生', '31', '2019-06-02', null);
INSERT INTO `album` VALUES ('203', '真的爱你', '31', '2019-06-02', null);
INSERT INTO `album` VALUES ('204', '唯一', '10', '2019-06-02', null);
INSERT INTO `album` VALUES ('205', '一千年以后', '9', '2019-06-02', null);
INSERT INTO `album` VALUES ('206', '江南', '9', '2019-06-02', null);
INSERT INTO `album` VALUES ('207', '学不会', '9', '2019-06-02', null);
INSERT INTO `album` VALUES ('208', '醉赤壁', '9', '2019-06-02', null);
INSERT INTO `album` VALUES ('209', 'night', '40', '2019-06-02', null);
INSERT INTO `album` VALUES ('210', 'River Flow', '39', '2019-06-02', null);
INSERT INTO `album` VALUES ('211', 'G小调的巴赫', '38', '2019-06-02', null);
INSERT INTO `album` VALUES ('212', '忘记时间', '24', '2019-06-02', null);
INSERT INTO `album` VALUES ('213', '逍遥叹', '24', '2019-06-02', null);
INSERT INTO `album` VALUES ('214', '六月的雨', '24', '2019-06-02', null);
INSERT INTO `album` VALUES ('215', '天后', '25', '2019-06-02', null);
INSERT INTO `album` VALUES ('216', '匆匆那年', '26', '2019-06-02', null);
INSERT INTO `album` VALUES ('217', '红豆', '26', '2019-06-02', null);
INSERT INTO `album` VALUES ('218', 'The Childr', '32', '2019-06-02', null);
INSERT INTO `album` VALUES ('219', 'Perfect Ti', '33', '2019-06-02', null);
INSERT INTO `album` VALUES ('220', 'Zoosters B', '34', '2019-06-02', null);
INSERT INTO `album` VALUES ('221', 'Oh!', '35', '2019-06-02', null);
INSERT INTO `album` VALUES ('222', '冰雪奇缘', '36', '2019-06-02', null);
INSERT INTO `album` VALUES ('223', 'I Am Piano', '37', '2019-06-02', null);
INSERT INTO `album` VALUES ('224', 'Until You', '38', '2019-06-02', null);
INSERT INTO `album` VALUES ('225', 'My Heart W', '28', '2019-06-02', null);
INSERT INTO `album` VALUES ('226', '疯狂的法老', '39', '2019-06-03', null);
INSERT INTO `album` VALUES ('227', 'aloha heja', '40', '2019-06-03', null);
INSERT INTO `album` VALUES ('228', '侠风', '29', '2019-06-03', null);
INSERT INTO `album` VALUES ('229', '嬉戏', '29', '2019-06-03', null);
INSERT INTO `album` VALUES ('230', 'Falling Cr', '43', '2019-06-03', null);
INSERT INTO `album` VALUES ('231', 'Change of ', '40', '2019-06-03', null);
INSERT INTO `album` VALUES ('232', 'Darlin', '40', '2019-06-03', null);
INSERT INTO `album` VALUES ('233', '太极乐', '29', '2019-06-03', null);
INSERT INTO `album` VALUES ('234', 'Stupid', '41', '2019-06-03', null);
INSERT INTO `album` VALUES ('235', 'Undo', '42', '2019-06-03', null);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `plist_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`plist_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('3', '1');

-- ----------------------------
-- Table structure for include
-- ----------------------------
DROP TABLE IF EXISTS `include`;
CREATE TABLE `include` (
  `plist_id` int(11) unsigned NOT NULL,
  `song_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`plist_id`,`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of include
-- ----------------------------
INSERT INTO `include` VALUES ('1', '19');
INSERT INTO `include` VALUES ('1', '114');
INSERT INTO `include` VALUES ('9', '102');

-- ----------------------------
-- Table structure for plist
-- ----------------------------
DROP TABLE IF EXISTS `plist`;
CREATE TABLE `plist` (
  `plist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `plist_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `plist_type` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `plist_intro` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`plist_id`),
  UNIQUE KEY `plist_name` (`plist_name`),
  KEY `p_u` (`user_id`),
  CONSTRAINT `p_u` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of plist
-- ----------------------------
INSERT INTO `plist` VALUES ('1', '喜欢', '1', '摇滚', null);
INSERT INTO `plist` VALUES ('2', '2021年度歌单', '2', '其它', '2021最喜欢的10首歌');
INSERT INTO `plist` VALUES ('3', 'v家经典歌曲', '3', '其它', '初音未来代表作');
INSERT INTO `plist` VALUES ('4', 'maimai', '3', 'ACG', '音游歌曲');
INSERT INTO `plist` VALUES ('5', '蓄池', '1', '杂', '所有');
INSERT INTO `plist` VALUES ('6', 'gedan', '3', '其它', '一个歌单');
INSERT INTO `plist` VALUES ('8', 'xind ', '1', '杂', '五');
INSERT INTO `plist` VALUES ('9', '肥宅快乐水', '1', '随便听听', '');
INSERT INTO `plist` VALUES ('10', '突选之子', '8', '流行', '');

-- ----------------------------
-- Table structure for singer
-- ----------------------------
DROP TABLE IF EXISTS `singer`;
CREATE TABLE `singer` (
  `singer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `singer_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `singer_intro` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of singer
-- ----------------------------
INSERT INTO `singer` VALUES ('1', '张杰', '华语歌坛新生代领军人物，偶像与实力兼具的超人气天王。2004年出道至今，已发行9张高品质唱片，唱片销量称冠内地群雄。2008年以来举办过9场爆满的个人演唱会，在各大权威音乐奖项中先后21次获得“最受欢迎男歌手”称号，2012年度中国TOP排行榜内地最佳男歌手，2010年在韩国M-net亚洲音乐大赏(MAMA)上获得“亚洲之星”（Best Asian Artist）大奖，影响力触及海外。');
INSERT INTO `singer` VALUES ('2', '周杰伦', '著名歌手，音乐人，词曲创作人，编曲及制作人，MV及电影导演。新世纪华语歌坛领军人物，中国风歌曲始祖，被时代周刊誉为“亚洲猫王”，是2000年后亚洲流行乐坛最具革命性与指标性的创作歌手，亚洲销量超过3100万张，有“亚洲流行天王”之称，开启华语乐坛“R&B时代”与“流行乐中国风”的先河，周杰伦的出现打破了亚洲流行乐坛长年停滞不前的局面，为亚洲流行乐坛翻开了新的一页，是华语乐坛真正把R&B提升到主流高度的人物，引领华语乐坛革命整十年，改写了华语乐坛的流行方向。');
INSERT INTO `singer` VALUES ('3', '林允儿', '1990年5月30日出生于韩国首尔永登浦区，韩国女歌手、演员、主持人，女子演唱团体少女时代成员之一。2002年，林允儿参加韩国SM娱乐有限公司的选秀而进入SM公司成为旗下练习生。2007年8月5日，以演唱团体少女时代成员身份正式出道。2008年主演情感剧《你是我的命运》获得第45届韩国百想艺术大赏电视剧类最佳新人女演员奖和人气女演员奖。2009年主演励志爱情剧《乞丐变王子》...');
INSERT INTO `singer` VALUES ('4', '陈奕迅', '著名实力派粤语流行音乐歌手、演员，香港演艺人协会副会长之一，曾被美国《时代杂志》形容为影响香港乐坛风格的人物，同时也是继许冠杰、张学友之后第三个获得“歌神”称号的香港男歌手。同时他也是继张学友后另一个在台湾获得成功的香港歌手，在2003年他成为了第二个拿到台湾金曲奖“最佳国语男演唱人”的香港歌手。陈奕迅曾被《时代》杂志形容为影响香港乐坛风格的人物。2010年，陈奕迅入选全球华人音乐殿堂华语金曲奖“30年经典评选”，成为1990年代出道歌手唯一代表。');
INSERT INTO `singer` VALUES ('5', 'G.E.M.邓紫棋', '成长于一个音乐世家，其母亲为上海音乐学院声乐系毕业生，外婆教唱歌，舅父拉小提琴，外公在乐团吹色士风。在家人的熏陶下，自小便热爱音乐，喜爱唱歌，与音乐结下不解之缘。G.E.M.在5岁的时候已经开始尝试作曲及填词，13岁完成了8级钢琴。G.E.M.在小学时期就读位于太子道西的中华基督教会协和小学上午校，为2003年的毕业生，同时亦为校内诗歌班成员。其英文名G.E.M.是Get Everybody Moving的缩写，象徵著她希望透过音乐让大家动起来的梦想。');
INSERT INTO `singer` VALUES ('6', '梁耀燮', 'Yang Yo Seop，1990年01月05日出生于韩国首尔，韩国歌手、演员、主持人，男子组合BEAST成员。 2009年10月16日以BEAST团员身份出道，发行首张迷你专辑《Beast Is The B2ST》。2010年11月23日发行首张日语专辑《BEAST-Japan Premium Edition》。2012年11月26日推出首张个人Solo迷你专辑《The First Collage》，凭主打歌《咖啡因》获得KBS音乐银行一位、Mnet M! Countdown 一位。');
INSERT INTO `singer` VALUES ('7', '艺声', '韩国著名男子团体Super Junior成员之一。2001年参加Starlight Casting System Casting，获得SM BEST选拔大赛歌唱赛第一名。经过长达5年的练习生训练，于2005年11月6日以Super Junior的身份正式出道。有着“艺术般声音”的他，被冠以“艺声”这个名号，是队中公认唱功最好的成员之一，因深沉、富有磁性且感情丰富的嗓音而在队里担当主唱。曾表演音乐剧、为多部电视剧演唱OST。值得一提的是，他也是朱一丹女士的疯狂追求者之一。');
INSERT INTO `singer` VALUES ('8', 'Ennio Morricone', '埃尼欧·莫里科内，意大利作曲家，生于罗马，曾为超过500部的电影电视写过配乐。2007年他获得奥斯卡终身成就奖，成为第二位获此殊荣的作曲家。他获得两次格莱美奖，两次金球奖，五次英国电影和电视艺术学院奖等多项音乐奖项。');
INSERT INTO `singer` VALUES ('9', '林俊杰', '著名男歌手，作曲人、作词人、音乐制作人，偶像与实力兼具。林俊杰出生于新加坡的一个音乐世家。在父母的引导下，4岁就开始学习古典钢琴，不善言辞的他由此发现了另一种与人沟通的语言。小时候的林俊杰把哥哥林俊峰当作偶像，跟随哥哥的步伐做任何事，直到接触流行音乐后，便爱上创作这一条路。2003年以专辑《乐行者》出道，2004年一曲《江南》红遍两岸三地，凭借其健康的形象，迷人的声线，出众的唱功，卓越的才华，迅速成为华语流行乐坛的领军人物之一，迄今为止共创作数百首音乐作品，唱片销量在全亚洲逾1000万张。');
INSERT INTO `singer` VALUES ('10', '王力宏', '中国著名流行歌手、词曲创作音乐人；亚洲华语流行乐坛最具代表性的创作、偶像、实力派音乐偶像巨星。1995年发行首张专辑《情敌贝多芬》在台湾出道，亦是金曲奖中最年轻的封王者，其唱片总销量在全亚洲已超过2500万张。从改编歌曲《龙的传人》融合西方电子节奏和东方旋律的华人中式嘻哈风，再到为华语流行乐注入新元素，进一步将其推向全世界。超高唱片销量便可以证明力宏的影响力毋庸置疑的强。况且身为金曲奖常客，3次接受CNN电视台访问。首创Chinked-out曲风，将中国风推向世界。');
INSERT INTO `singer` VALUES ('11', 'Eminem', '埃米纳姆（Eminem）是美国的一名说唱歌手。其风格类型为：Hardcore Rap（硬核说唱）。埃米纳姆最大的突破就是证明白人也能介入到黑人一统天下的说唱（RAP）界中，而且获得巨大的成功。同时他的叛逆不仅长期以来深受美国青少年喜爱，也让他在舆论中始终遭到抨击。Eminem获得的奖杯总数窜至历史第三位，居麦当娜和皮特-加布里埃尔之后。');
INSERT INTO `singer` VALUES ('12', '李荣浩', '李荣浩，1985年7月11日生于蚌埠，中国流行音乐制作人、歌手、吉他手。曾为众多艺人创作歌曲以及担任制作人，也曾为多部电影与多款电子游戏制作音乐。2013年9月17日发行个人首张原创专辑《模特》，凭借这张专辑入围第25届金曲奖最佳国语男歌手奖、最佳新人奖、最佳专辑制作人、最佳国语专辑、最佳作词奖等五项大奖提名，成为最大黑马，实现了从制作人到歌手的华丽转身。');
INSERT INTO `singer` VALUES ('13', '田馥甄', '艺名Hebe，台湾知名女艺人，女子演唱团体S.H.E组合成员，出生于台湾新竹县新丰乡，于2000年参加“宇宙2000实力美少女争霸战”选秀活动，并于同年与宇宙唱片（华研唱片前身）签约培训，接着在隔年与Selina、Ella组成S.H.E，并于2001年9月11日发行S.H.E首张专辑《女生宿舍》正式出道。2010年下半年，S.H.E正式迈向“单飞不解散”阶段，接着同年9月3日，使用本名“田馥甄”推出首张个人专辑《To Hebe》');
INSERT INTO `singer` VALUES ('14', '许嵩', '著名作词人、作曲人、唱片制作人、歌手。内地独立音乐之标杆人物，有音乐鬼才之称。2009年独立出版首张词曲全创作专辑《自定义》，2010年独立出版第二张词曲全创作专辑《寻雾启示》，两度掀起讨论热潮，一跃成为内地互联网讨论度最高的独立音乐人。2011年加盟海蝶音乐，推出第三张词曲全创作专辑《苏格拉没有底》，发行首月即在大陆地区摘下唱片销量榜冠军，轰动全国媒体，并拉开全国巡回签售及歌迷见面会。');
INSERT INTO `singer` VALUES ('15', '张国荣', '张国荣是一位在全球华人社会和亚洲地区具有影响力的著名歌手、演员和音乐人；大中华区乐坛和影坛巨星；演艺圈多栖发展最成功的代表之一。张国荣是香港乐坛的殿堂级歌手之一，曾获得香港乐坛最高荣誉金针奖；他是第一位享誉韩国乐坛的华人歌手，亦是华语唱片在韩国销量纪录保持者。他通晓词曲创作，曾担任过MTV导演、唱片监制、电影编剧、电影监制。他于1991年当选香港电影金像奖影帝。。。');
INSERT INTO `singer` VALUES ('16', '杨宗纬', '大学时期参加台湾歌唱选秀节目《超级星光大道》获选为第一届“人气王”。比赛的时候，杨宗纬歌声阳刚而细腻，富含感情，辨识度高，感染力强，以演唱抒情歌曲见长，选曲跨越性别界线，无论是男女歌手的抒情歌曲，经过他重新诠释之后，常常都可以得到不输原唱或甚至超越原唱的评价。出道后屡创多项记录，包括发行首张专辑，便以新人之姿登上台北小巨蛋举办个人演唱会。。。');
INSERT INTO `singer` VALUES ('17', '朴树', '中国大陆歌手，音乐人。1996年10月正式成为“麦田音乐”签约歌手，为简略笔划而定艺名朴树。首支单曲《火车开往冬天》，96年底推出后成绩斐然。99年1月，推出首张个人专辑《我去两千年》。99年12月与华纳唱片正式签订唱片合约，成为其亚太区旗下的第一位内地歌手，其首张专辑《我去两千年》将由华纳重新混录和拍摄最新单曲录影带后，于2000年上半年在海外隆重上市。代表作品：《那些花儿》，《白桦林》，《生如夏花》。主要成就：中歌榜最佳新人奖，最受欢迎男歌手，年度最佳制作人奖。');
INSERT INTO `singer` VALUES ('18', '李克勤', '中国香港很有影响力的粤语流行曲歌手与演员。1985年凭《雾之恋》夺得“十九区业余歌唱大赛”冠军而晋身乐坛。曾于2002、2003和2005年度《十大劲歌金曲颁奖典礼》中三度夺得「最受欢迎男歌手」，于2003年度《叱吒乐坛流行榜颁奖典礼》上获得「叱吒乐坛我最喜爱的男歌手」，并于《第二十七届十大中文金曲颁奖典礼》(2004年度)上夺得「最优秀流行男歌手大奖」，2010年度音乐先锋榜颁奖礼 ── 20家电台联颁亚太歌手奖。');
INSERT INTO `singer` VALUES ('19', '张碧晨', '1989年9月10日出生于中国天津，中国女歌手。 2013年，张碧晨以韩国女子组合“Sunny days ”出道，并获得“K-POP ”世界庆典“最优秀奖”。2014年7月，张碧晨参加第三季《中国好声音》，以一首《她说》进入那英组，并于10月7日以一首《时间去哪儿了》荣获第三季《中国好声音》全国总冠军，成为《中国好声音》首位女冠军。');
INSERT INTO `singer` VALUES ('20', 'IU', '李知恩 (IU)，1993年5月16日出生于韩国首尔特别市，韩国女歌手、演员、主持人。2008年以一首《迷儿》正式出道，历经一年的练习生生涯。2011年以一首《好日子》在韩国走红，随后于2011年末推出正规二辑《Last Fantasy》 PK记录74次，AK约90次。2013年IU发行正规三辑《MODERN TIMES》再次获得关注。2012年~2015年分别位列韩国福布斯名人榜第三、第八、第十和第十四位。2015年，发行迷你专辑《CHAT-SHIRE》');
INSERT INTO `singer` VALUES ('21', '金泰妍', '金泰妍(김태연/ Kim Tae-yeon/金泰耎)，艺名太妍(태연/TaeYeon)，1989年3月9日出生于韩国全罗北道全州市，韩国女歌手、主持人，女子演唱团体少女时代成员之一。2004年在第八届SM青少年选拔大赛歌王中夺得第一名，进入韩国SM娱乐有限公司开始练习生生涯。2007年8月以演唱团体少女时代成员身份正式出道。2008年为韩国KBS电视台电视剧《快刀洪吉童》演唱主题曲《如果》；同年12月凭借歌曲《听得见吗》获得第23届韩国金唱片大奖人气奖 。');
INSERT INTO `singer` VALUES ('23', '毛不易', '原名王维家，1994年10月1日出生于黑龙江省齐齐哈尔市泰来县，中国内地流行乐男歌手，毕业于杭州师范大学护理专业。');
INSERT INTO `singer` VALUES ('24', '胡歌', '中国著名男演员、歌手，有“古装王子”的美称。2005年毕业于上海戏剧学院01级表演系本科，在电视连续剧《仙剑奇侠传》中成功塑造了豪爽深情的“李逍遥”而成名，他还为此剧唱插曲《六月的雨》《逍遥叹》等。胡歌主演过多部广为人知的影视剧，多部电视剧打破电视台收视记录。其人擅长摄影，文采飞扬，志做导演，频唱影视剧歌曲。2013年，主演的话剧《如梦之梦》和《永远的尹雪艳》登上舞台。');
INSERT INTO `singer` VALUES ('25', '陈势安', '陈势安（1984年6月4日－）为马来西亚籍的西马男歌手，出生于槟城州威省大山脚，出道前是个化妆师。2011年发行个人第三张专辑《再爱一遍，天后陈势安》。');
INSERT INTO `singer` VALUES ('26', '王菲', '中国著名女歌手、演员。是继邓丽君后大中华地区成就最高、影响力最大的华语女歌手。以其极具辨识度的天籁空灵般嗓音，在华语歌坛创造了属于她自己的时代。她是首位登上美国《时代周刊》封面并接受CNN专访的华语歌手。她是身价最高，演唱会上座率最高，演唱会票房累计最高的华语女歌手。王菲北京出生。1987年放弃厦门大学生物系的录取跟随父母移居香港，并拜师戴思聪学习声乐，1989年签约新艺宝唱片公司并发行了第一张个人专辑，从此正式步入乐坛，曾使用艺名王靖雯。');
INSERT INTO `singer` VALUES ('27', 'Álvaro Soler', '全名是Álvaro Tauchert Soler，是一位新晋西班牙歌手，流行音乐作曲家。出生于1991年，西班牙巴塞罗纳。');
INSERT INTO `singer` VALUES ('28', 'Celine Dion', '1980年，12岁的席琳·迪翁步入歌坛，15岁时推出首支法文单曲，1990年，推出首张英文专辑《UNISON》。1996年为美国亚特兰大奥运会演唱了主题曲《The Power of The Dream》。1997年为电影《泰坦尼克号》献唱片尾曲《My Heart Will Go On》，并获得第70届奥斯卡最佳电影歌曲奖。');
INSERT INTO `singer` VALUES ('29', '胡伟立', '中国音乐家协会会员、中国电影家协会会员、中国电影音乐学会特约理事、香港作曲家作词家协会（CASH）会员、香港弦乐教师协会理事、香港艺术家联盟会员、香港电影戏剧总会会员。主要作品有《神州行组曲》、《北国风云》、《C大调中胡协奏曲》等大型合奏曲。');
INSERT INTO `singer` VALUES ('30', '五月天', '五月天（Mayday），中国台湾摇滚乐团，由温尚翊（怪兽）、陈信宏（阿信）、石锦航（石头）、蔡升晏（玛莎）、刘谚明（冠佑）五位成员组成。\n乐团前身为“So Band”乐团，在1997年3月29日更名为“五月天”。');
INSERT INTO `singer` VALUES ('31', 'Beyond', '中国香港摇滚乐队，由黄家驹、黄贯中、黄家强、叶世荣组成。');
INSERT INTO `singer` VALUES ('32', 'Ramin Djawadi', '德籍伊朗作曲家，为电影和电视剧担任管弦配乐作曲家，因曾获得格莱美奖提名而逐渐为人所熟知。');
INSERT INTO `singer` VALUES ('33', '小林未郁', '日本女钢琴家、歌手。');
INSERT INTO `singer` VALUES ('34', 'Various Artists', '暂无介绍');
INSERT INTO `singer` VALUES ('35', '少女时代', '少女时代（Girls\' Generation）是韩国SM娱乐有限公司于2007年推出的女子流行演唱团体，由金泰妍、郑秀妍、李顺圭、黄美英、金孝渊、权俞利、崔秀英、林允儿和徐珠贤9人组成，现以5人形式进行演艺活动。');
INSERT INTO `singer` VALUES ('36', 'The Piano Guys', 'The Piano Guys直译为“钢琴男孩儿”，台湾翻译成“酷音乐团”。apple music在中国区上架后，有译“钢琴达人”。作为Neo-classical目前的代表性乐团之一，初衷是创造出能够激励人们的音乐和视频，想将自己的音乐带给这个世界。The Piano Guys改编的古典音乐融合自然、过渡流畅，MV拍摄优美大气、富于想象力。');
INSERT INTO `singer` VALUES ('37', 'Peter Broderick', '是美国音乐家和作曲家，来自俄勒冈州的卡尔顿。他以自己的名义发布的独奏材料，成为了Efterklang的成员之一，并与多个乐团合作创作，作为一个自由音乐家演奏。');
INSERT INTO `singer` VALUES ('38', 'Shayne Ward', '2005年，肖恩·沃德因获得英国歌唱选秀节目《The X Factor》年度总冠军而成名 [1]  。赛后，签约索尼旗下公司Syco Music，并发行单曲《That\'s my goal》，以超过31.3万张的销售成绩创下英国唱片单曲首日畅销纪录第三名和英国单日付费下载次数最多的单曲吉尼斯纪录。');
INSERT INTO `singer` VALUES ('39', 'Yiruma', '李闰珉出生于韩国首尔，在英国长大，曾就学于英国伦敦\'The Purcell School\' 特别音乐学校，后来毕业于 \'King\'s College London\' ，主修作曲。');
INSERT INTO `singer` VALUES ('40', 'Josh Ritter', 'Josh Ritter (born October 21, 1976) is an American singer-songwriter, guitarist and author who performs and records with The Royal City Band.');
INSERT INTO `singer` VALUES ('41', 'Tone Damli Aaberge', 'Tone Damli Aaberge/Tone Damli，是位来自挪威的年轻女歌手。当她才17岁的时候，曾参加了2005年那届挪威偶像。可惜她在比赛中获得亚军，屈居于Jorun Stiansen之后。她是2009年欧洲电视网歌唱大赛里的总决赛选手，她演唱了一首\"Butterflies\"，可惜最后也只得到亚军，屈居于Alexander Rybak之后');
INSERT INTO `singer` VALUES ('42', 'Sanna Nielsen', 'Sanna Nielsen（仙娜·尼利森）出生于1984年11月27日，瑞典音乐才女，早在她12岁时就发行了其个人的第一张专辑，并且取得了相当不错的成绩，之前她一直是发行瑞典语的专辑和单曲，《Stronger》是她08年的新专，也是她第一张英文专辑，整张专的旋律给人很美很大气的感觉。');
INSERT INTO `singer` VALUES ('43', 'Jessica', '郑秀妍（Jessica Jung），1989年4月18日出生于美国加利福尼亚州旧金山市，歌手、演员、设计师。2000年，郑秀妍回国探亲时被韩国SM娱乐有限公司发掘，成为其旗下练习生。2007年8月，以演唱团体少女时代成员身份正式出道，是组合里训练时间最长的成员。2009年，首次在音乐剧《金发尤物》中担任主角“艾莉·伍兹”。2012年，首次以演员身份参演《暴力罗曼史》。');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song` (
  `song_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `song_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `singer_id` int(11) unsigned NOT NULL,
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '中国',
  `song_type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `song_releaseTime` date NOT NULL,
  `album_id` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `collect_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`song_id`),
  KEY `s_s` (`singer_id`),
  CONSTRAINT `s_s` FOREIGN KEY (`singer_id`) REFERENCES `singer` (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES ('1', '张杰-仰望星空', '1', '中国四川', '明天过后', '2018-12-26', '133', '0');
INSERT INTO `song` VALUES ('2', '张杰-他不懂', '1', '中国四川', '爱，不解释', '2018-12-26', '134', '0');
INSERT INTO `song` VALUES ('3', '张杰-天下', '1', '中国四川', '明天过后', '2018-12-26', '133', '0');
INSERT INTO `song` VALUES ('4', '张杰-如果爱', '1', '中国四川', '再爱我一回', '2018-12-26', '135', '0');
INSERT INTO `song` VALUES ('5', '张杰-逆战', '1', '中国四川', '中国新声代第二季 第', '2018-12-26', '136', '0');
INSERT INTO `song` VALUES ('6', '张杰-逆态度', '1', '中国四川', '中国新声代第二季 第', '2018-12-26', '136', '0');
INSERT INTO `song` VALUES ('7', '张杰-何必在一起', '1', '中国四川', '穿越三部曲', '2018-12-27', '137', '0');
INSERT INTO `song` VALUES ('8', '张杰-剑心', '1', '中国四川', '拾', '2018-12-27', '138', '0');
INSERT INTO `song` VALUES ('9', '周杰伦-稻香', '2', '中国台湾', '魔杰座', '2018-12-27', '139', '0');
INSERT INTO `song` VALUES ('10', '周杰伦&潘儿-夜的第七章', '2', '中国台湾', '依然范特西', '2018-12-27', '145', '0');
INSERT INTO `song` VALUES ('11', '周杰伦-告白气球', '2', '中国台湾', '床边故事', '2018-12-27', '142', '0');
INSERT INTO `song` VALUES ('12', '周杰伦-夜曲', '2', '中国台湾', '床边故事', '2018-12-30', '142', '0');
INSERT INTO `song` VALUES ('13', '周杰伦-红尘客栈', '2', '中国台湾', '十二新作', '2018-12-30', '143', '0');
INSERT INTO `song` VALUES ('14', '周杰伦-开不了口', '2', '中国台湾', '范特西', '2018-12-30', '144', '0');
INSERT INTO `song` VALUES ('15', '周杰伦-菊花台', '2', '中国台湾', '依然范特西', '2018-12-30', '145', '0');
INSERT INTO `song` VALUES ('16', '周杰伦-牛仔很忙', '2', '中国台湾', '我很忙', '2018-12-30', '146', '0');
INSERT INTO `song` VALUES ('17', '周杰伦-烟花易冷', '2', '中国台湾', '跨时代', '2018-12-30', '147', '0');
INSERT INTO `song` VALUES ('18', '周杰伦-听妈妈的话', '2', '中国台湾', '依然范特西', '2018-12-30', '145', '0');
INSERT INTO `song` VALUES ('19', '周杰伦-七里香', '2', '中国台湾', '七里香', '2018-12-30', '148', '1');
INSERT INTO `song` VALUES ('20', '周杰伦-晴天', '2', '中国台湾', '叶惠美', '2018-12-30', '149', '0');
INSERT INTO `song` VALUES ('21', '林允儿-月亮代表我的心', '3', '韩国', 'Blossom', '2018-12-30', '150', '0');
INSERT INTO `song` VALUES ('22', '林允儿-小幸运', '3', '韩国', 'Blossom', '2018-12-30', '150', '0');
INSERT INTO `song` VALUES ('23', '林允儿-红豆', '3', '韩国', 'Blossom', '2018-12-30', '150', '0');
INSERT INTO `song` VALUES ('24', '陈奕迅-红玫瑰', '4', '中国香港', 'The 1st El', '2018-12-30', '151', '0');
INSERT INTO `song` VALUES ('25', '陈奕迅 + 王菲-因为爱情', '4', '中国香港', 'Stranger U', '2018-12-30', '152', '0');
INSERT INTO `song` VALUES ('26', '陈奕迅-不要说话', '4', '中国香港', '不想放手', '2018-12-30', '153', '0');
INSERT INTO `song` VALUES ('27', 'G.E.M.邓紫棋-泡沫', '5', '中国上海', 'Xposed', '2018-12-30', '154', '0');
INSERT INTO `song` VALUES ('28', 'G.E.M.邓紫棋-龙卷风', '5', '中国上海', '龙卷风', '2018-12-30', '155', '0');
INSERT INTO `song` VALUES ('29', 'G.E.M.邓紫棋-夜空中最亮的星', '5', '中国上海', '龙卷风', '2018-12-30', '155', '0');
INSERT INTO `song` VALUES ('30', '梁耀燮-Shadow (그림자)', '6', '韩国', 'The First ', '2018-12-30', '156', '0');
INSERT INTO `song` VALUES ('31', '梁耀燮-리본(Ribbon)', '6', '韩国', 'Highlight', '2018-12-30', '157', '0');
INSERT INTO `song` VALUES ('32', '梁耀燮-Bye Bye Love', '6', '韩国', 'Bye Bye Lo', '2018-12-30', '158', '0');
INSERT INTO `song` VALUES ('33', '艺声-문 열어봐 (Here', '7', '韩国', 'Here I am', '2018-12-30', '159', '0');
INSERT INTO `song` VALUES ('34', '艺声-春天的阵雨 (Paper Umbr', '7', '韩国', '봄날의 소나기', '2018-12-30', '160', '0');
INSERT INTO `song` VALUES ('35', '艺声 + 灿烈-어떤 말로ᄃ', '7', '韩国', '봄날의 소나기', '2018-12-30', '160', '0');
INSERT INTO `song` VALUES ('36', 'Ennio Morricone-Once', '8', '意大利', 'Once Upon ', '2019-03-19', '161', '0');
INSERT INTO `song` VALUES ('37', 'Ennio Morricone-Tito', '8', '意大利', 'Per un Pug', '2019-03-19', '162', '0');
INSERT INTO `song` VALUES ('38', '林俊杰-关键词', '9', '新加坡', '和自己对话 From', '2019-03-19', '163', '0');
INSERT INTO `song` VALUES ('39', '林俊杰-期待爱', '9', '新加坡', 'JJ陆', '2019-03-19', '164', '0');
INSERT INTO `song` VALUES ('40', '王力宏-需要人陪', '10', '美国', '十八般武艺', '2019-03-19', '165', '0');
INSERT INTO `song` VALUES ('41', 'Eminem-Love The Way ', '11', '美国', 'Life After', '2019-03-19', '166', '0');
INSERT INTO `song` VALUES ('42', 'Álvaro Soler-Sofía', '27', '西班牙', 'Sofía', '2019-06-02', '167', '0');
INSERT INTO `song` VALUES ('43', 'Álvaro Soler-El Mis', '27', '西班牙', 'El Mismo S', '2019-06-02', '168', '0');
INSERT INTO `song` VALUES ('44', 'Ennio Morricone-Il B', '8', '意大利', 'The Good, ', '2019-03-19', '169', '0');
INSERT INTO `song` VALUES ('45', '田馥甄-魔鬼中的天使', '13', '中国台湾', 'My Love', '2019-04-25', '170', '0');
INSERT INTO `song` VALUES ('46', '李荣浩 - 年少有为', '12', '中国安徽', '耳朵', '2019-06-02', '171', '0');
INSERT INTO `song` VALUES ('47', '王力宏-大城小爱', '10', '美国', '盖世英雄', '2019-06-02', '172', '0');
INSERT INTO `song` VALUES ('48', '陈奕迅-陪你度过漫长岁月', '4', '中国香港', '陪你度过漫长岁月', '2019-06-02', '173', '0');
INSERT INTO `song` VALUES ('49', '华晨宇 + 杨宗纬-国王与乞丐', '16', '中国台湾', '国王与乞丐', '2019-06-02', '174', '0');
INSERT INTO `song` VALUES ('50', '李克勤-护花使者', '18', '中国香港', '护花使者', '2019-06-02', '175', '0');
INSERT INTO `song` VALUES ('51', '李克勤-月半小夜曲', '18', '中国香港', '经典金曲', '2019-06-02', '176', '0');
INSERT INTO `song` VALUES ('52', '李克勤-K歌之王', '18', '中国香港', '经典金曲', '2019-06-02', '176', '0');
INSERT INTO `song` VALUES ('53', '李荣浩-李白', '12', '中国安徽', '模特', '2019-06-02', '177', '0');
INSERT INTO `song` VALUES ('54', '李荣浩-作曲家', '12', '中国安徽', '李荣浩', '2019-06-02', '178', '0');
INSERT INTO `song` VALUES ('55', '杨宗纬-多余', '16', '中国台湾', '昨天今天明天', '2019-06-01', '179', '0');
INSERT INTO `song` VALUES ('56', '毛不易-那时的我们', '23', '中国黑龙江', '那时的我们', '2019-06-02', '180', '0');
INSERT INTO `song` VALUES ('57', '毛不易-无问', '23', '中国黑龙江', '无问', '2019-06-02', '181', '0');
INSERT INTO `song` VALUES ('58', '张碧晨-一吻之间', '19', '中国天津', '一吻之间', '2019-06-01', '182', '0');
INSERT INTO `song` VALUES ('59', '张碧晨-下一秒', '19', '中国天津', '微微一笑很倾城', '2019-06-02', '183', '0');
INSERT INTO `song` VALUES ('60', '许嵩-我乐意', '14', '中国安徽', '我乐意', '2019-06-02', '184', '0');
INSERT INTO `song` VALUES ('61', 'IU-Twenty-three (二十三', '20', '韩国', 'CHAT-SHIRE', '2019-06-02', '185', '0');
INSERT INTO `song` VALUES ('62', 'IU-Someday', '20', '韩国', 'CHAT-드림하이 ', '2019-06-02', '186', '0');
INSERT INTO `song` VALUES ('63', '金泰妍-제주도의 푸른 ᄇ', '21', '韩国', '밴드 고맙삼다', '2019-06-01', '187', '0');
INSERT INTO `song` VALUES ('64', '张国荣-当爱已成往事', '15', '中国香港', '当爱已成往事', '2019-06-02', '188', '0');
INSERT INTO `song` VALUES ('65', '张国荣-想你', '15', '中国香港', '想你', '2019-06-02', '189', '0');
INSERT INTO `song` VALUES ('67', '张国荣-倩女幽魂', '15', '中国香港', '倩女幽魂', '2019-06-02', '190', '0');
INSERT INTO `song` VALUES ('68', '张国荣-最冷一天', '15', '中国香港', '最冷一天', '2019-06-02', '191', '0');
INSERT INTO `song` VALUES ('69', '田馥甄-小幸运', '13', '中国台湾', '小幸运', '2019-06-02', '192', '0');
INSERT INTO `song` VALUES ('70', '田馥甄-你就不要想起我', '13', '中国台湾', '你就不要想起我', '2019-06-02', '193', '0');
INSERT INTO `song` VALUES ('71', '五月天-孙悟空', '30', '中国台湾', '神的孩子都在跳舞', '2019-06-02', '194', '0');
INSERT INTO `song` VALUES ('72', '五月天-如果我们不曾相遇', '30', '中国台湾', '如果我们不曾相遇', '2019-06-02', '195', '0');
INSERT INTO `song` VALUES ('73', '五月天-倔强', '30', '中国台湾', '倔强', '2019-06-02', '196', '0');
INSERT INTO `song` VALUES ('74', 'Eminem-Lose Yourself', '11', '美国', 'Lose Yours', '2019-06-02', '197', '0');
INSERT INTO `song` VALUES ('75', 'Eminem-When I\'m Gone', '11', '美国', 'When I\'m G', '2019-06-02', '198', '0');
INSERT INTO `song` VALUES ('76', '朴树-平凡之路', '17', '中国江苏', '平凡之路', '2019-06-02', '199', '0');
INSERT INTO `song` VALUES ('77', '朴树-白桦林', '17', '中国江苏', '白桦林', '2019-06-02', '200', '0');
INSERT INTO `song` VALUES ('78', 'Beyond-光辉岁月', '31', '中国香港', '光辉岁月', '2019-06-02', '201', '0');
INSERT INTO `song` VALUES ('79', 'Beyond-无悔这一生', '31', '中国香港', '无悔这一生', '2019-06-02', '202', '0');
INSERT INTO `song` VALUES ('80', 'Beyond-真的爱你', '31', '中国香港', '真的爱你', '2019-06-02', '203', '0');
INSERT INTO `song` VALUES ('81', '王力宏-唯一', '10', '美国', '唯一', '2019-06-02', '204', '0');
INSERT INTO `song` VALUES ('82', '林俊杰-一千年以后', '9', '新加坡', '一千年以后', '2019-06-02', '205', '0');
INSERT INTO `song` VALUES ('83', '林俊杰-江南', '9', '新加坡', '江南', '2019-06-02', '206', '0');
INSERT INTO `song` VALUES ('84', '林俊杰-学不会', '9', '新加坡', '学不会', '2019-06-02', '207', '0');
INSERT INTO `song` VALUES ('85', '林俊杰-醉赤壁', '9', '新加坡', '醉赤壁', '2019-06-02', '208', '0');
INSERT INTO `song` VALUES ('86', 'a_hisa - night', '40', '美国', 'night', '2019-06-02', '209', '0');
INSERT INTO `song` VALUES ('87', 'Yiruma - River Flows', '39', '韩国', 'River Flow', '2019-06-02', '210', '0');
INSERT INTO `song` VALUES ('88', 'Vince Zhang - G小调的巴赫', '38', '英国', 'G小调的巴赫', '2019-06-02', '211', '0');
INSERT INTO `song` VALUES ('89', '胡歌-忘记时间', '24', '中国上海', '忘记时间', '2019-06-02', '212', '0');
INSERT INTO `song` VALUES ('90', '胡歌-逍遥叹', '24', '中国上海', '逍遥叹', '2019-06-02', '213', '0');
INSERT INTO `song` VALUES ('91', '胡歌-六月的雨', '24', '中国上海', '六月的雨', '2019-06-02', '214', '0');
INSERT INTO `song` VALUES ('92', '陈势安-天后', '25', '马来西亚', '天后', '2019-06-02', '215', '0');
INSERT INTO `song` VALUES ('93', '王菲-匆匆那年', '26', '中国北京', '匆匆那年', '2019-06-02', '216', '0');
INSERT INTO `song` VALUES ('94', '王菲-红豆', '26', '中国北京', '红豆', '2019-06-02', '217', '0');
INSERT INTO `song` VALUES ('95', 'Ramin Djawadi-The Ch', '32', '德国', 'The Childr', '2019-06-02', '218', '0');
INSERT INTO `song` VALUES ('96', '小林未郁-Perfect Time', '33', '日本', 'Perfect Ti', '2019-06-02', '219', '0');
INSERT INTO `song` VALUES ('97', 'Various Artists-Soun', '34', '', 'Zoosters B', '2019-06-02', '220', '0');
INSERT INTO `song` VALUES ('98', '少女时代 - Oh!', '35', '韩国', 'Oh!', '2019-06-02', '221', '0');
INSERT INTO `song` VALUES ('99', 'The Piano Guys-Let I', '36', '美国', '冰雪奇缘', '2019-06-02', '222', '0');
INSERT INTO `song` VALUES ('100', 'Peter Broderick - I ', '37', '美国', 'I Am Piano', '2019-06-02', '223', '0');
INSERT INTO `song` VALUES ('101', 'Shayne Ward-Until Yo', '38', '英国', 'Until You', '2019-06-02', '224', '0');
INSERT INTO `song` VALUES ('102', 'Celine Dion-My Heart', '28', '加拿大', 'My Heart W', '2019-06-02', '225', '1');
INSERT INTO `song` VALUES ('103', '倪椤 - 疯狂的法老', '39', '韩国', '疯狂的法老', '2019-06-03', '226', '0');
INSERT INTO `song` VALUES ('104', '群星 - aloha heja he', '40', '美国', 'aloha heja', '2019-06-03', '227', '0');
INSERT INTO `song` VALUES ('105', '胡伟立 - 侠风', '29', '中国江苏', '侠风', '2019-06-03', '228', '0');
INSERT INTO `song` VALUES ('106', '胡伟立 - 嬉戏', '29', '中国江苏', '嬉戏', '2019-06-03', '229', '0');
INSERT INTO `song` VALUES ('107', 'Jessica - Falling Cr', '43', '韩国', 'Falling Cr', '2019-06-03', '230', '0');
INSERT INTO `song` VALUES ('108', 'Josh Ritter - Change', '40', '美国', 'Change of ', '2019-06-03', '231', '0');
INSERT INTO `song` VALUES ('109', 'Josh Ritter - Darlin', '40', '美国', 'Darlin', '2019-06-03', '232', '0');
INSERT INTO `song` VALUES ('110', '胡伟立 - 太极乐', '29', '中国江苏', '太极乐', '2019-06-03', '233', '0');
INSERT INTO `song` VALUES ('112', 'Tone Damli Aaberge -', '41', '挪威', 'Stupid', '2019-06-03', '234', '0');
INSERT INTO `song` VALUES ('113', 'Sanna Nielsen-Undo', '42', '瑞典', 'Undo', '2019-06-03', '235', '0');
INSERT INTO `song` VALUES ('114', '梦幻丽莎发廊', '8', '中国内地', '民谣', '2016-12-09', '5', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `user_name` varchar(20) COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户名',
  `user_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'u' COMMENT '用户类型',
  `phone` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lbj', 'm', '123456', '管理员MM');
INSERT INTO `user` VALUES ('2', 'lht', 'u', '234567', 'vip用户');
INSERT INTO `user` VALUES ('3', 'zyy', 'u', '345678', '普通用户2');
INSERT INTO `user` VALUES ('4', 'fdsdf', 'u', '3423432', null);
INSERT INTO `user` VALUES ('7', 'ttz', 'u', '15397102722', null);
INSERT INTO `user` VALUES ('8', '突突', 'u', '15397102722', '可爱小狗');

-- ----------------------------
-- View structure for vw_songrank
-- ----------------------------
DROP VIEW IF EXISTS `vw_songrank`;
CREATE ALGORITHM=UNDEFINED DEFINER=`DB_USER090`@`%` SQL SECURITY DEFINER VIEW `vw_songrank` AS select `a`.`song_name` AS `song_name`,`b`.`singer_name` AS `singer_name`,`a`.`collect_count` AS `collect_count` from (`song` `a` left join `singer` `b` on((`a`.`singer_id` = `b`.`singer_id`))) order by `a`.`collect_count` desc limit 10 ;

-- ----------------------------
-- View structure for vw_wholesong
-- ----------------------------
DROP VIEW IF EXISTS `vw_wholesong`;
CREATE ALGORITHM=UNDEFINED DEFINER=`DB_USER090`@`%` SQL SECURITY DEFINER VIEW `vw_wholesong` AS select `a`.`song_id` AS `song_id`,`a`.`song_name` AS `song_name`,`b`.`singer_name` AS `singer_name`,`a`.`song_type` AS `song_type`,`a`.`region` AS `region`,`c`.`album_name` AS `album`,`c`.`album_id` AS `albumid` from ((`song` `a` left join `singer` `b` on((`a`.`singer_id` = `b`.`singer_id`))) left join `album` `c` on((`a`.`album_id` = `c`.`album_id`))) ;
DROP TRIGGER IF EXISTS `T_COLLECTCOUNT`;
DELIMITER ;;
CREATE TRIGGER `T_COLLECTCOUNT` AFTER INSERT ON `include` FOR EACH ROW BEGIN
	UPDATE song SET collect_count=collect_count+1 WHERE song.song_id = NEW.song_id;
END
;;
DELIMITER ;
