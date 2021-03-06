/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : douban

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-11-14 14:37:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `content` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('25', '3', '1502934382', '了不起的非礼~~~');
INSERT INTO `comment` VALUES ('26', '3', '1502934482', '折，终于来到了浪漫之都巴黎。在这里，菲丽西和维克托经历了一场场瑰丽惊奇的冒险。不过');
INSERT INTO `comment` VALUES ('27', '9', '1502956293', '香港探员陈港生（成龙饰）跟踪黑道老大维克多·王（赵文瑄饰）长达十数年，为搜集他犯罪');
INSERT INTO `comment` VALUES ('28', '9', '1502956539', '');
INSERT INTO `comment` VALUES ('29', '11', '1503533874', 'dakjhao');
INSERT INTO `comment` VALUES ('30', '11', '1509927444', 'asasas');
INSERT INTO `comment` VALUES ('31', '11', '1510207838', 'adadada');
INSERT INTO `comment` VALUES ('32', '11', '1510207838', 'adadada');

-- ----------------------------
-- Table structure for `movie`
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  `performer` varchar(100) DEFAULT NULL COMMENT '演员',
  `brief` text COMMENT '简介',
  `images` varchar(200) DEFAULT NULL COMMENT '图像',
  `typeid` int(11) DEFAULT NULL,
  `score` float(11,1) DEFAULT '0.0',
  `state` int(11) DEFAULT NULL COMMENT '状态  1 正在上映 2 即将上映',
  `hot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES ('1', '李雷和韩梅梅', '2017', '张子枫/张逸杰/成梓宁/李家成/常铖/王旭东', '运动全能的中学女汉子韩梅梅，各项成绩尚可，但一提起英语就头疼得要命。\n在结束了快乐的初中生活后，韩梅梅和魏华、林涛等一起升上了高中，同时还有李雷。如今的李雷已是脱胎换骨，从一个不起眼的小男生变成了又高又帅的男神，还有一口英伦范的纯正英语。\n韩梅梅也是不知不觉地喜欢上了李雷，却迟迟不敢开口，于是古灵精怪的她制定出各种作战计划，意图攻陷李雷。\n然而，天有不测风云，一场又一场的麻烦和变故，接二连三地降落在他们身上……\n多年后，韩梅梅和李雷，还能牵手吗？', '//puui.qpic.cn/vcover_vt_pic/0/5hh6z6fc3xifo8e1500954398/220', '1', '8.4', '1', '0');
INSERT INTO `movie` VALUES ('2', '美人鱼', '2016', '邓超/罗志祥/张雨绮/林允', '白手起家的富豪刘轩（邓超 饰）新拍下了一块地皮，并联合了女强人李若兰（张雨绮 饰）使用恐怖的声纳技术驱赶鱼类，用于填海造地。人鱼一族长期居住在附近区域的海里，为了继续生存，带头大哥章鱼八哥（罗志祥 饰）派出了美人鱼珊珊（林允 饰）“色诱”刘轩，准备刺杀。没想到珊珊在卧底过程中与刘轩暗生情愫，一次次破坏暗杀计划，而李若兰却在准备一个更丧心病狂的邪恶计划……', '//puui.qpic.cn/vcover_vt_pic/0/xg95sxi4q7zc4uot1460107848.jpg/220', '1', '9.2', '1', '1');
INSERT INTO `movie` VALUES ('3', '不起的菲丽西', '2017', ' 艾丽·范宁/戴恩·德哈恩/麦迪·齐格勒/卡莉·蕾·杰普森', ' 故事发生在充满古典风情的法国。自小生活在孤儿院中的菲丽西一直有一个梦想，就是成为真正的芭蕾舞者。为了追梦，她和发明家小伙伴维克托进行了一场“逃跑计划”，费尽周折，终于来到了浪漫之都巴黎。在这里，菲丽西和维克托经历了一场场瑰丽惊奇的冒险。不过，第一次来到大城市的菲丽西并没有怯懦，她勇敢地冲破套路，不惧奇葩刁难，闹出了很多笑话却不失可爱率真。梦想忽远忽近，她和维克托的冒险也仍在继续……', '//puui.qpic.cn/vcover_vt_pic/0/vdunhhhkt45vdyp1490669046/220', '1', '9.8', '1', '0');
INSERT INTO `movie` VALUES ('4', '绝世高手', '2017', '卢正雨/郭采洁/范伟/蔡国庆/陈冲/仓田保昭/孔连顺/黄龄/杨迪/柯达/艾伦', '一个先天没有知觉，挨揍不疼却冒充高手的小混混（卢正雨 饰），一个人称女张飞的少女（郭采洁 饰），一个醉心于织毛衣的过气大师（范伟 饰），一个只会做黑暗料理的美食大亨（蔡国庆 饰），一个可以用汤操纵情绪的当代孟婆（陈冲 饰），一个身患强迫症的日本武士（仓田保昭 饰），为了一本失传的秘笈，引发了一场绝世高手的爆笑对决。\r\n         ', '//puui.qpic.cn/vcover_vt_pic/0/tn2oe8hvr9g9a0a1497855835/220', '1', '6.5', '1', '1');
INSERT INTO `movie` VALUES ('5', '我不是潘金莲', '2016', '范冰冰/郭涛/大鹏/张嘉译', '\r\n         一个普通的农村妇女李雪莲（范冰冰 饰），为了纠正一句话，与上上下下、方方面面打了十年交道。打交道的过程中，她没想到一件事变成了另一件事，接着变成了第三件事。十年过去，她没有把这句话纠正过来，但她饱尝了世间的人情冷暖，悟明白了另外一个道理。李雪莲要纠正的这句话是她前夫说的。她前夫说：你是李雪莲吗？我咋觉得你是潘金莲呢？李雪莲要告诉大家的是：我不是潘金莲。', '//puui.qpic.cn/vcover_vt_pic/0/wwx7abetdayqp93t1473751831.jpg/220', '1', '7.6', '1', '1');
INSERT INTO `movie` VALUES ('6', '西游·伏魔篇', '2017', '吴亦凡/林更新/姚晨/王丽坤/林允', '\r\n         历经千辛万苦，唐僧（吴亦凡 饰）、孙悟空（林更新 饰）、猪八戒（杨一威 饰）、沙僧（巴特尔 饰）这支取经团队朝着最终的目标持续前进，然而这一过程中他们不仅忍饥挨饿，还矛盾频生，似乎随时都有分裂的危险。尤其法师念念不忘死去的段小姐（舒淇 饰），而这件事也成为他和悟空之间矛盾和争吵的根源。在摆脱了蜘蛛精的纠缠后，师徒四人来至充满童趣的比丘国。比丘国王（包贝尔 饰）精神错乱，如同孩子般喜怒无常。国师九宫真人（姚晨 饰）将师徒迎进王宫，虽百般叮咛，却仍引出不少的乱子，甚至还揪出了藏在宫中的狡猾妖怪。 \r\n冒险仍在继续，师徒间的危机一触即发……', '//puui.qpic.cn/vcover_vt_pic/0/cgeg2g3t7b8gm6l1481535277/220', '1', '8.9', '1', '1');
INSERT INTO `movie` VALUES ('7', '从你的全世界路过', '2016', '邓超/白百何/杨洋/张天爱/岳云鹏/杜鹃/柳岩', '陈末（邓超 饰）被称为全城最贱，每天和王牌DJ小容（杜鹃 饰）针锋相对，谁也不知道他们的仇恨从何而来。陈末的两个兄弟，分别是全城最傻的猪头（岳云鹏 饰），全城最纯的茅十八（杨洋 饰），三人每天横冲直撞，以为可以自在生活，结果都面临人生最大的转折点。陈末相遇了最神秘的幺鸡（张天爱 饰），猪头打造了最惨烈的婚礼，茅十八经历了最悲伤的别离，这群人的生活一点点崩塌，往事一点点揭开。梦想，爱情，友情都离陈末远去。一个失去所有的人，已经弄丢自己的路，直到听到来自全世界的一段语音……', '//puui.qpic.cn/vcover_vt_pic/0/hrr3qneqbo22q061480583000/220', '1', '9.1', '1', '1');
INSERT INTO `movie` VALUES ('8', '一条狗的使命', '2017', '乔什·加德/布丽特·罗伯森/丹尼斯·奎德/佩吉·利普顿', '影片以汪星人的视角展现狗狗和人类的微妙情感，一只狗狗陪伴小主人长大成人，甚至为他追到了女朋友，后来它年迈死去又转世投胎变成其他性别和类型的汪，第二次轮回狗狗变成了警犬威风凛凛，再次转轮回，又成了陪伴一位单身女青年的小柯基犬。在经历了多次轮回之后，最终回到最初的主人身边。', '//puui.qpic.cn/vcover_vt_pic/0/950h5k5p7h7m2qn1492075900/220', '1', '8.5', '1', '1');
INSERT INTO `movie` VALUES ('9', '绝地逃亡', '2016', '成龙/范冰冰/约翰尼·诺克斯维尔/曾志伟/王敏德', '香港探员陈港生（成龙饰）跟踪黑道老大维克多·王（赵文瑄饰）长达十数年，为搜集他犯罪证据而被卷入一场“计中计”中，还将自己的侄女白舒（范冰冰饰）牵扯进来。在这场被中国特警、维克多·王、俄罗斯黑帮三面夹攻的“绝地逃亡”中，班尼结识了共患难的最佳拍档康纳（约翰尼·诺克斯维尔饰），一位正被维克多·王和俄国杀手追捕逃命的美国赌博高手，三人最终将怎样结束这场冒险变得扑朔迷离。', '//puui.qpic.cn/vcover_vt_pic/0/vz8j5agokp0yuglt1473066015.jpg/220', '1', '9.3', '1', '1');
INSERT INTO `movie` VALUES ('10', '王牌逗王牌', '2016', '刘德华/黄晓明/王祖蓝/胡然/欧阳娜娜', '囧探宝爷（刘德华 饰）与侠盗洛家豪（黄晓明 饰）强强联手，与世界恐怖组织抢夺“上帝种子”，所谓“上帝种子”是一种神奇的种子，无论丢在哪里，只需要一点水，就可以迅速长出参天大树。而唯恐天下不乱的恐怖组织居然拿到了这种神奇的“上帝种子”，试图改变甚至掌控这个世界。为了维护世界和平，宝爷和家豪在A梦（王祖蓝 饰）、洛家欣（欧阳娜娜 饰）等人的帮助下，冒险夺宝拯救世界的故事。', '//puui.qpic.cn/vcover_vt_pic/0/1bav7atk48laen2t1474860611.jpg/220', '1', '7.5', '1', '1');
INSERT INTO `movie` VALUES ('11', '乘风破浪', '2017', '邓超/彭于晏/赵丽颖/董子健', '2022年赛车手徐太浪（邓超饰）一直对父亲反对自己的赛车事业耿耿于怀，在向父亲证明自己的过程中，阿浪却意外的卷入了一场奇妙的冒险。在1998年的亭林镇，他结识了一群兄弟好友——身为录像厅老板的阿正（彭于晏饰）、程序员小马（董子健饰）、六一（高华阳饰）和阿正的女友小花（赵丽颖饰）。阿浪与“正太帮”好兄弟一起饮酒高歌、惩恶扬善、携手制霸亭林镇，一同闯过许多奇幻的经历后，阿浪对自己的身世有了更多的了解。', '//puui.qpic.cn/vcover_vt_pic/0/yrk9u3rwbp1gmws1482828928/220', '1', '9.4', '1', '1');
INSERT INTO `movie` VALUES ('12', '有完没完', '2017', '范伟/贾静雯/刘俊昊/宋阳/隋凯/赵英俊/范湉湉/孔连顺', '生于愚人节的老范是一个典型的草根直男，老天在他生日这天开了一个巨大的玩笑：在遭遇了一系列奇葩人物、经历了一连串悲催事件之后，他的人生意外陷入“死循环”。身处日复一日的人生困境，老范体验了千姿百态的花样人生，并且一步步突破自我，进化为让人刮目相看的“一日赢家”。', '//puui.qpic.cn/vcover_vt_pic/0/6g806tfg1d6kdzi1490596419/220', '1', '8.5', '1', '0');
INSERT INTO `movie` VALUES ('13', '捉妖记', '2015', '白百何/井柏然/姜武/金燕玲/钟汉良', '不知何年，妖界大乱。新妖王对前代势力痛下杀手，更誓要对前妖后腹中的孩子斩尽杀绝。妖后一行躲避追杀来到地处大山深处的永宁村，偏巧遇到捉妖天师霍小岚（白百何 饰）和罗刚（姜武 饰）。一番混乱过后，妖后自知气数将尽，遂将妖蛋放入永宁村保长宋天荫（井柏然 饰）的腹中保存。是夜，小岚所属的天师堂掌门人葛千户（钟汉良 饰）率领手下血洗永宁村，天荫不得已随小岚逃亡。时机成熟，萝卜妖怪胡巴降生人间。在接下来的旅途中，小岚和天荫对彼此的了解不断加深，而胡巴也终于成为他们中间最不可割舍的重要存在。\r\n战争仍在继续，人和妖的界限日渐模糊……', '//puui.qpic.cn/vcover_vt_pic/0/c17yx4mna94c9rwt1450411211.jpg/220', '1', '7.5', '1', '1');
INSERT INTO `movie` VALUES ('14', '决战食神', '2017', '葛优/谢霆锋/唐嫣/郑容和', '影片主要讲述了高天赐是广州一个小厨师，和来自法国拥有米芝莲三颗星荣誉的名厨安保罗，厨艺各有千秋，从一开始的争锋相对，到成为惺惺相惜的好友，并联手参加‘全球美食之王’大赛夺得冠军的故事。', '//puui.qpic.cn/vcover_vt_pic/0/nvylq1a8r50kksa1492158271/220', '2', '9.3', '1', '1');
INSERT INTO `movie` VALUES ('15', '危城', '2016', '刘青云/古天乐/彭于晏/吴京/袁泉/江疏影', '时值国家内战、军阀割据的乱世时代，军阀少帅曹少璘（古天乐 饰）因杀害三条人命，被普城保卫团团长杨克难（刘青云 饰) 绳之于法。可曹家财雄势大，以强权震慑居民，曹家上校张亦（吴京 饰）得悉事件后，赶来普城取人，在城中遇上多年不见师弟马锋（彭于晏 饰），马锋是位武功高强的浪人，路见不平欲拔刀相助，可是却面临正义与兄弟情之抉择。', '//puui.qpic.cn/vcover_vt_pic/0/7vb9tgbdi71z9141489560620/220', '2', '8.6', '1', '0');
INSERT INTO `movie` VALUES ('16', '杀破狼2', '2015', '吴京/张晋/托尼·贾', '香港卧底探员志杰（吴京）不惜变成瘾君子，潜伏犯罪集团侦查幕后主脑洪先生（古天乐）；直属上司兼叔父华哥（任达华）决定终止行动，杰却身份败露且人间蒸发！华违抗命令私自搜寻，辗转得悉杰已被关进泰国某监狱，遂只身前赴营救。 　　泰国警察阿猜（Tony Jaa）为筹钱医治患血癌的女儿转任狱卒，负责看管杰。杰与猜语言不通、身份对立，却竟是唯一可拯救猜女儿的骨髓捐赠者，猜必须保住杰的性命；但狱长（张晋）为确保幕后交易运作畅正常，必须铲除杰！ 　　身体虚弱的洪先生带同胞弟（恭硕良）出现，准备进行心脏移植手术自救；原来整个监狱是洪先生操控的活人体器官供应市场……', '//puui.qpic.cn/vcover_vt_pic/0/ln9dn13frbxaqjft1444912576.jpg/220', '2', '9.2', '1', '1');
INSERT INTO `movie` VALUES ('17', '亚瑟王：斗兽争霸', '2017', ' 查理·汉纳姆/裘德·洛/阿斯特丽德·伯格斯-弗瑞斯贝/杰曼·翰苏/艾丹·吉伦/艾瑞克·巴纳', '本片改编自亚瑟王圣剑的传说，剧情颠覆传统，一路探索亚瑟从市井到王座的征途。亚瑟的父亲在他小时候就惨遭杀害，亚瑟的叔叔伏提庚（裘德·洛 Jude Law 饰）篡取王位，剥夺了亚瑟（查理·汉纳姆 Charlie Hunnam 饰）的天赐之权。他浑然不知自己的身世，在城市的穷街陋巷里摸爬滚打着长大，但当他拔出石中剑，他的人生就彻底地天翻地覆了，亚瑟不得不接受自己真正的使命。', '//puui.qpic.cn/vcover_vt_pic/0/2dc9akh8b11396j1493349398/220', '2', '9.5', '1', '0');
INSERT INTO `movie` VALUES ('18', '非凡任务', '2017', '黄轩/段奕宏/郎月婷/祖峰/邢佳栋/王耀庆', '林凯（黄轩 饰）是李建国（祖峰 饰）安插在贩毒集团的卧底，他逐步渗透到“双鹰”贩毒集团后，发现幕后头目“老鹰”（段奕宏 饰）与八年前李建国作为卧底调查的贩毒集团有关，还囚禁了当时李建国的上级，最终林凯与李建国巧妙配合捣毁了整个贩毒集团。', '//puui.qpic.cn/vcover_vt_pic/0/mqn4th6zsdepxd81489564219/220', '2', '9.6', '1', '1');
INSERT INTO `movie` VALUES ('19', '速度与激情8', '2017', '范·迪塞尔/道恩·强森/查理兹·塞隆/杰森·斯坦森/米歇尔·罗德里格兹', '故事将延续上一部剧情，多米尼克与莱蒂共度蜜月，布莱恩与米娅退出了赛车界，众人的生活渐趋平淡，而查理兹·塞隆饰演的神秘女子Cipher的出现却打乱了所有平静，她引诱多米尼克走上犯罪道路，令整个队伍卷入信任与背叛的危机，生死患难的情义面临瓦解崩溃，前所未有的灾难考验着飞车家族。', '//puui.qpic.cn/vcover_vt_pic/0/l9vxrwfdjcw1q4g1488356599/220', '2', '9.4', '1', '1');
INSERT INTO `movie` VALUES ('20', '逆时营救', '2017', '杨幂/霍建华/金士杰/刘畅/张艺瀚', '单亲妈妈夏天（杨幂 饰）作为物理研究所的高级研究员，与所长共同研究出可使生物体穿越虫洞进行时间旅行的技术，当研究有了突破性进展时，儿子豆豆（张艺瀚 饰）却被神秘绑匪崔琥（霍建华 饰）绑架，为了挽救豆豆的生命，夏天冒险用未完成的粒子技术 返回1小时50分钟前，却令事情变得更加复杂，更遭遇到意想不到的困局：要去面对三个自己在时空旅行中的变异互博。而崔琥的背后故事也渐渐浮出水面……', '//puui.qpic.cn/vcover_vt_pic/0/ia928vxnnvkemp51497855449/220', '2', '8.2', '1', '1');
INSERT INTO `movie` VALUES ('21', '极速之巅', '2016', '尼古拉斯·霍尔特/菲丽希缇·琼斯/安东尼·霍普金斯/本·金斯利/马尔万·肯扎里/克雷蒙斯·施伊克', '美国小贼凯西（尼古拉斯·霍尔特 Nicholas Hoult 饰）在国内犯下不计其数的案件。为了活命，他逃到了德国，成为当地大毒枭格兰（本·金斯利 Ben Kingsley 饰）手下的毒贩，平静的生活下包裹着刀尖上舔血的惊险生活。正在此时，他的爱人朱丽叶特（菲丽希缇·琼斯 Felicity Jones 饰）被发现有严重的肾病且急需要做移植手术。平静的伪装被打破。为了支付女友昂贵的医疗费，凯西决定以生命为赌注做一单大的，却又恰巧将自己卷入以一个牵涉德国最大毒枭哈根的惊天复仇阴谋，此刻不仅仅是他自己，他女友的性命也成了整个阴谋中至关重要的一环。在德国无限速公路上凯西和杀人不眨眼的毒枭组织们展开了激烈的追逐……', '//puui.qpic.cn/vcover_vt_pic/0/td3729878sjo37v1495684288/220', '2', '9.4', '1', '1');
INSERT INTO `movie` VALUES ('22', '金刚：骷髅岛', '2017', '汤姆·希德勒斯顿/景甜/布丽·拉尔森', '上世纪70年代，一支集结了科考队员、探险家、战地摄影记者、军人的探险队，冒险前往南太平洋上的神秘岛屿——骷髅岛。他们的到来惊扰了岛上之神——史上最大金刚。经过一番惨烈的激战之后，探险队员散落在了岛屿各处。此时，队员们才意识到这次探险并不是一次单纯的科考任务，而是去探索怪兽存在的证明。 \r\n在这片与世隔绝、危险密布的丛林，无数怪异的史前生物暗藏其中，时刻危及着他们的生命。队员们还遇到了神秘的原始部落，金刚的身世和其守护岛屿的原因也被逐渐揭开，原来，恐怖阴森的骷髅岛上还蛰伏着更凶狠残暴的怪兽……', '//puui.qpic.cn/vcover_vt_pic/0/71bctb897dwx46m1497603419/220', '2', '8.4', '1', '1');
INSERT INTO `movie` VALUES ('23', '赏金猎人', '2016', '李敏镐/钟汉良/唐嫣/徐正曦/吴千语/樊少皇', '李山（李敏镐 饰）和阿Yo（钟汉良 饰）曾经同为国际刑警，后因任务失败被一同革职，当起了私人保镖。在一起看似普通的爆炸案中，两人与由凌芯（唐嫣 饰）、Swan（吴千语 饰）和宝宝（樊少皇 饰）组成的赏金三人组狭路相逢，一番冲突较量后，他们组成了专门缉捕罪犯、维护社会安宁的赏金天团，在经历了连番惊险的任务后，五人凭着各自的绝技，成功挫败了连环恐怖袭击，抓住了幕后操控的黑手。', '//puui.qpic.cn/vcover_vt_pic/0/25nf6zxerv4j4qmt1466647237.jpg/220', '2', '5.2', '1', '1');
INSERT INTO `movie` VALUES ('24', '澳门风云3', '2016', '周润发/张家辉/刘德华/张学友/李宇春/刘嘉玲/余文乐', '石一坚（周润发 饰）在女儿（童菲 饰）的婚礼上，因误用兄弟小马（张家辉 饰）的“催眠治疗”加上机器人炸弹袭击而变得精神错乱。神秘人物易天行（张学友 饰）一心想要置石一坚于死地，幸亏龙五（向华强 饰）带领儿子龙十五（向佐 饰）及时营救。“赌侠”刀仔（刘德华 饰）与赌神表妹高菲（李宇春 饰）也一起来帮助石一坚恢复记忆，众人终于知道易天行就是幕后黑手，为了调查清楚真相，石一坚与“赌神”（周润发 饰）联手，最后大战一触即发。', '//puui.qpic.cn/vcover_vt_pic/0/b40ff7kummjfp7et1452567621.jpg/220', '2', '6.7', '1', '1');
INSERT INTO `movie` VALUES ('25', '泰山归来:险战丛林', '2016', '玛格特·罗比/亚历山大·斯卡斯加德/塞缪尔·杰克逊/克里斯托弗·沃尔兹/杰曼·翰苏', '故事发生在十九世纪八十年代，自小生长在丛林之中的泰山（亚历山大·斯卡斯加德 Alexander Skarsgård 饰）早已经离开了刚果，回归了人类社会。他同心爱的珍（玛歌特·罗比 Margot Robbie 饰）结婚成家，在英国伦敦过着幸福美满的生活。 某日，被委任为商务密使的泰山回到了他的老家——刚果丛林，然而，此时的他并不知道，自己在一开始，就落入了邪恶而又狡猾的比利时军官罗姆（克里斯托弗·瓦尔兹 Christoph Waltz 饰）一手策划的阴谋之中。如此一来，不仅仅是泰山，就连珍和他的朋友们亦身处危险之中，泰山能否找回曾经矫健的身手和肆意的野性，将企图伤害他至爱之人的敌人们消灭殆尽呢？', '//puui.qpic.cn/vcover_vt_pic/0/mhlkz47d7thi2k4t1466575226.jpg/220', '2', '8.1', '1', '1');
INSERT INTO `movie` VALUES ('26', '夜闯寡妇村', '2017', '于朦胧/王李丹妮/郭艳/南笙/倪大红', '京城某医学院即将毕业的叶小妍、陈亦凡等六名大学生准备去某风景区旅行。\r\n山路崎岖，天黑雾大，车竟然闯进了山中禁地。突如其来的撞击、车前掉落的破旧稻草人，让众人陷入一片惊慌。大山一片寂静，这片黝黑之地仿佛在酝酿着什么。发动机失灵，几人只得徒步前进，殊不知等待他们的将是一场让他们终生难忘的浩劫。\r\n村中雾气缭绕，瘴气弥漫。叶小妍一行人惊奇的发现这里只有女人而无男人，而村民们躲躲闪闪的语气和冷漠的拒绝更是令人匪夷所思。同伴失踪、好友背叛、落跑男孩……盛夏酷暑，众人却感觉如坠冰窟。\r\n妖艳女人王春花的一句话点醒了他们，所有阴谋都似乎指向后山。是不顾生死拯救同伴，还是就此逃脱远离是非？困境危及中，他们毅然决然奔向后山。\r\n这个远近闻名的“寡妇村”到底隐藏着什么秘密，旅游者是重见天日还是永久的掩埋于村中，谁才是幕后真正的凶手呢？', '//puui.qpic.cn/vcover_vt_pic/0/b9qu04f8d1kt5x3t1447387564.jpg/220', '8', '0.0', '2', '0');
INSERT INTO `movie` VALUES ('27', '血狼犬', '2017', '黄宏/刘向京/孙涛', '《血狼犬》讲述了西北犬王朱永生和女儿以及爱犬蓝波之间的故事，通过以小见大的方式，描绘出人与狗之间的感人故事，同时影片也是一部讲述中国西部风土人情的现实主义题材影片，被认为是西部电影的回归之作，是新西部电影类型片发展的有益尝试，也是有效利用现代理念和技术提升西部电影表达能力，又不放弃西部电影人文精神和个性化色彩的作品。从曝光的片花来看，影片洋溢着浓郁的西部风情，还有苍凉浑厚的秦腔助阵，让人不由生出一种西部特有的孤旷雄浑之感。', '//puui.qpic.cn/vcover_vt_pic/0/d9gbdut0ycz4zl61490334242/220', '2', '0.0', '2', '1');
INSERT INTO `movie` VALUES ('28', '花腰恋歌', '2017', '李哲/季晨', '花腰傣族女大学生毕业回乡开发家乡旅游、民族工艺品傣绣、手工织布，实现人生梦想的创业故事。花腰傣少女刀曼玉（李哲 饰）大学毕业后，为响应国家号召，决定回乡创业，发扬花腰傣文化。然而阿玉的创业之路并不顺利，由于刺绣做工和技艺的问题，屡次被拒，遭遇挫败的阿玉决定暂时放弃。返乡路上，阿玉结识了盲人男青年商亮（季晨 饰），使她萌生了开发旅游的想法，于是邀请商亮同行。与商亮同时来到阿玉家乡戛洒的，还有富二代青年陈晓星（蔡俊涛 饰），他在阿玉到自家公司推销时对她一见钟情，于是一路追来。自此，几个年轻人关于友谊，关于事业，关于爱情，更是关于梦想的探索就此展开……', '//puui.qpic.cn/vcover_vt_pic/0/n4s8ju1pwdbmteo1496632408/220', '3', '0.0', '2', '0');
INSERT INTO `movie` VALUES ('29', '失恋399年', '2017', '郑文蓉/葛秋谷/孙捷/楼云飞/董向荣', '电影《失恋399年》是一部爱情喜剧穿越题材的电影，影片讲述了不务正业的李肖翰在大学毕业前夕收到了来自女友张思雅的分手通知。失恋中的李肖翰却因一股神奇的力量与女友一同穿越到了明代和清代。回到前两世的张思雅将李肖翰忘得一干二净，但李肖翰却拥有今世的记忆，一心求复合的他在女友张思雅的两世里想法设法去弥补对女友的愧疚，争取挽回爱情，同时也在寻找回到今生的办法。', '//puui.qpic.cn/vcover_vt_pic/0/7f79ntcz8ztjj511495678666/220', '3', '0.0', '2', '1');
INSERT INTO `movie` VALUES ('30', '绑架者', '2017', '白百何/黄立行/明道', '重案组警察林薇（白百何 饰）的女儿突然失踪，唯一嫌疑人杨念（黄立行 饰）却在案发当夜横遭车祸并失去记忆。在追踪线索和回忆的逃亡路上，杨念不断遭人暗杀，一心找回女儿的林薇也不惜代价对他步步紧追，重案组组长陆然（明道 饰）在关键时刻对林薇施以援手。真相一层层剥开……', '//puui.qpic.cn/vcover_vt_pic/0/gm5raidogphgm601494323746/220', '2', '0.0', '2', '1');
INSERT INTO `movie` VALUES ('31', '惊悚小说', '2017', '吕聿来/康凯/赵聪/闫飞龙/薛广民', '崔凯是一个过气的作家，失业宅在家里过着窘迫的生活。某日接到编辑胡言邀约：创作一本恐怖系列的小说。这使他重新振作起来。可接下来的创作过程并非一帆风顺，他的文笔大不如前，找不到曾经的创作激情与灵感。随着编辑的不断催促，他深深地陷入压抑与焦躁之中。他终日躲在封闭的房间里冥思苦想，怪事也从此随之而来……', '//puui.qpic.cn/vcover_vt_pic/0/a77cx5i5zild01f1490673078/220', '8', '0.0', '2', '1');
INSERT INTO `movie` VALUES ('32', '以爱为名', '2017', '王奕瑾/黄恺杰/卞庆華/钱柏渝', '大陆女生慕容碧（王奕瑾 饰）与香港男生凌志南（黄恺杰 饰）在台湾南部海滨相逢产生恋情，却因为误会而分开。多年后，前途光明的慕容碧因为业务疏失，受迫必须在限期内成功推行专案。为此，她只得答应表姐袁晓慧（钱柏渝 饰）的要求，在不违反社会道德规范之下，出卖三个东西：爱情、灵魂和身体。在此期间，凌志南因故来到北京，却意外与慕容碧不期而遇。两人是否会因为那幅载满记忆的《珍珠岛的天空》重燃爱恋，共同面对当初分手的真正答案呢？', '//puui.qpic.cn/vcover_vt_pic/0/il3he4hoevzx1jl1493976454/220', '3', '0.0', '2', '0');
INSERT INTO `movie` VALUES ('33', '哆啦A梦：大雄的南极冰冰凉大冒险', '2017', '水田山葵/大原惠美/嘉数由美/木村昂/关智一', '《哆啦A梦：大雄的南极冰天雪地大冒险》是根据日本漫画家藤子·F·不二雄创作的漫画《哆啦A梦》改编的系列动画电影的第37部作品。夏天来了，经不住大雄（大原惠美 配音）的百般纠缠，哆啦A梦（水田山葵 配音）第一次同意带着小伙伴们来到南极，并建造了专属的南极乐园。 没想到这场消夏之旅，被偶然发现的金环打断，快乐的旅程就此中止，他们来到十万年前的南极。这一次，哆啦A梦面临生死考验，地球也面临全面冻结的危险。没有了哆啦A梦，小伙伴们只能团结一心，才能拯救地球！', '//puui.qpic.cn/vcover_vt_pic/0/rxxukzqx79ae30o1494463801/220', '1', '0.0', '2', '1');
INSERT INTO `movie` VALUES ('34', '惊魂绣花鞋', '2017', '何乙轩/辉灿/刘汉兆/周昕妤', '一双绣花鞋，隐藏着一个死亡诅咒，凡是穿过绣花鞋的人都意外惨死，无一幸免。安雯（何乙轩）大病未愈，摆脱了丈夫潘航（辉灿）和医生的看护，独自逃回老家古宅生活。安雯在老宅发现了一双祖上流传并受到死亡诅咒的绣花鞋，阴差阳错之下绣花鞋穿在了她的脚上，意外开启了绣花鞋上的死亡诅咒。咒怨生效冤魂索命，盘桓在老宅之中的诡影无处不在，无法摆脱的恶灵如影随形，迫使频临崩溃的安雯做出疯狂的举动，陷入一场危机四伏的惊魂逃亡……', '//puui.qpic.cn/vcover_vt_pic/0/iqugfty2le7e8of1486977581/220', '8', '0.0', '2', '0');
INSERT INTO `movie` VALUES ('35', '怨灵宿舍之白纸女生', '2017', '谢容儿/薇拉贝儿/姚雨鑫/曲馨雅', '讲述巴洛克画院的学生雨烟（谢容儿 饰）偶然梦见自己已经离世的同学苏苏，而后陷入灵异事件之中，神秘的纸人如梦靥一般缠住雨烟，苏苏借纸人还魂复仇的传说不胫而走，雨烟遭遇的种种异象表明，是死去的苏苏在还魂复仇。深夜隐没的无面鬼，暗夜游荡的白衣邪灵，预示着死亡的浓烈气息，一个尘封多年的秘密被揭晓，而雨烟却陷入了死亡之地。', '//puui.qpic.cn/vcover_vt_pic/0/dpoqdgrfs7owpci1490167933/220', '8', '0.0', '2', '0');
INSERT INTO `movie` VALUES ('36', '乡关何处', '2017', '陈天星/江若琳/罗蓝山/高瑕', '对一个西南小山村居民生活的群像性描写，真实的展示了当代中国在经济高速发展的大背景下广大乡村的巨大变迁，深刻地反映出涌入城市的70、80后乡村青年群体在迷失家园后的“集体乡愁”和精神上漂泊所依的尴尬处境。', '//puui.qpic.cn/vcover_vt_pic/0/e5dxonf823kyl0x1496657511/220', '8', '0.0', '2', '0');
INSERT INTO `movie` VALUES ('37', '合约男女', '2017', '郑秀文/张孝全/林雪/冯文娟', '保险公司CEO叶瑾（郑秀文 饰），是众人心中不怒而威的霸道女总裁，对爱情感到绝望的她认为只有对孩子的感情才是永恒的，于是决定借精生子。在严格的层层筛选后，帅气不羁的快递员肖博（张孝全 饰）意外成为孩子父亲的最终人选。有苦难言的肖博，义无反顾地签订了“变态”合约。而此时故事才刚刚开始…', '//puui.qpic.cn/vcover_vt_pic/0/r18zt91aswyuk3w1481243368/220', '3', '0.0', '2', '0');
INSERT INTO `movie` VALUES ('38', '内心引力', '2017', '把文翰/钱小华/庄崧冽/吴永红', '这部纪实电影围绕“永不违背内心”的主题，通过2年的跟踪拍摄，讲述了7位国内独立品牌创始人关于生活、关于创业、关于挣扎的故事。他们或卑微或渺小，遭遇的境况、事业发展的阶段也不尽相同，但不论身在何种现实的境遇，在追求理想和乌托邦的道路上，他们依旧遵从自己的内心，为未知前路的事业探索，因为他们知道人生不能重来，不能庸庸碌碌地活着。\r\n影片由多位当今优秀的创业者真实出演：食材网店店主把文翰、先锋书店创始人钱小华、雕刻时光咖啡馆创始人庄崧冽、SoLife家具店创始人吴永红、加拿大班夫山地电影节中国区创始人Tina、服装品牌“例外”和公共空间“方所”的创始人毛继鸿、自由执业医生集团创始人张强。', '//puui.qpic.cn/vcover_vt_pic/0/zn81fwsm9r87msn1495844955/220', '1', '0.0', '2', '0');
INSERT INTO `movie` VALUES ('39', 'php', '2017', '李想/魏政', '是阿斯顿阿斯达是的', './public/upload/1502864548.png', '1', '0.0', '2', '0');
INSERT INTO `movie` VALUES ('40', '任务分配', '2017', '课程组', '阿斯顿阿斯顿阿斯顿阿斯顿', './public/upload/1502864873.png', '1', '0.0', null, '0');
INSERT INTO `movie` VALUES ('41', '吃什么', '2015', '张涛', 'asd asd asd afsg dfg斯蒂芬斯蒂芬适当放松地方', './public/upload/1502866307.png', '1', '9.9', '1', '0');
INSERT INTO `movie` VALUES ('42', '妈妈的朋友', '2017', '小泽', '这个是一个申请故事', '', '1', '9.8', '1', null);
INSERT INTO `movie` VALUES ('43', '妈妈的朋友', '2017', '小泽', '阿萨撒撒撒大大', './public/upload/1510295284.png', '1', '9.9', '1', null);

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '喜剧');
INSERT INTO `type` VALUES ('2', '动作');
INSERT INTO `type` VALUES ('3', '爱情');
INSERT INTO `type` VALUES ('4', '恐怖');
INSERT INTO `type` VALUES ('5', '科幻');
INSERT INTO `type` VALUES ('6', '犯罪');
INSERT INTO `type` VALUES ('7', '冒险');
INSERT INTO `type` VALUES ('8', '惊悚');
