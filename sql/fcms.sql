/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : fcms

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-10-03 16:39:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `article_type`
-- ----------------------------
DROP TABLE IF EXISTS `article_type`;
CREATE TABLE `article_type` (
  `id` int(11) NOT NULL COMMENT '文章类别ID',
  `article_type` varchar(255) NOT NULL COMMENT '文章分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_type
-- ----------------------------
INSERT INTO `article_type` VALUES ('1', '兴趣');
INSERT INTO `article_type` VALUES ('2', '情感');
INSERT INTO `article_type` VALUES ('3', '电影');
INSERT INTO `article_type` VALUES ('4', '摄影');
INSERT INTO `article_type` VALUES ('5', '运动');
INSERT INTO `article_type` VALUES ('6', '前端');
INSERT INTO `article_type` VALUES ('7', '后端');
INSERT INTO `article_type` VALUES ('8', '运维');
INSERT INTO `article_type` VALUES ('9', '数据');
INSERT INTO `article_type` VALUES ('10', '架构');
INSERT INTO `article_type` VALUES ('11', '移动');
INSERT INTO `article_type` VALUES ('12', '智能');
INSERT INTO `article_type` VALUES ('13', '资讯');
INSERT INTO `article_type` VALUES ('14', '项目');
INSERT INTO `article_type` VALUES ('15', '其它');

-- ----------------------------
-- Table structure for `auth_code`
-- ----------------------------
DROP TABLE IF EXISTS `auth_code`;
CREATE TABLE `auth_code` (
  `id` varchar(33) NOT NULL,
  `expireAt` bigint(20) NOT NULL,
  `accountId` int(11) NOT NULL,
  `type` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_code
-- ----------------------------
INSERT INTO `auth_code` VALUES ('1417d20ec7e74060accc2eb7d60cea56', '1538483078847', '3', '0');
INSERT INTO `auth_code` VALUES ('25ea607e0ee0435295c513ceaba936a9', '1538403442540', '9', '0');
INSERT INTO `auth_code` VALUES ('2b1d96ba59e24bd6bb720ad34d901a21', '1538400757264', '7', '0');
INSERT INTO `auth_code` VALUES ('4222a374ed8945c7ac32460288867dcd', '1538551522973', '1', '1');
INSERT INTO `auth_code` VALUES ('5816431282d84ea2b5cadc37af2a8125', '1504084414732', '2', '0');
INSERT INTO `auth_code` VALUES ('866f38977adf4df693d908a68eb21bca', '1538465298109', '2', '0');
INSERT INTO `auth_code` VALUES ('b2c1e07ff1974330a1fd9413663b6f81', '1538401315181', '8', '0');
INSERT INTO `auth_code` VALUES ('c3c04e89325043c88e562d81771752d8', '1538397343175', '6', '1');

-- ----------------------------
-- Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `friendId` int(11) NOT NULL COMMENT '朋友ID',
  `createAt` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`userId`,`friendId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend
-- ----------------------------
INSERT INTO `friend` VALUES ('6', '1', '2018-10-01 16:19:00');

-- ----------------------------
-- Table structure for `friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `friend_link`;
CREATE TABLE `friend_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `logo` varchar(255) DEFAULT NULL COMMENT '友情链接logo',
  `site_name` varchar(255) NOT NULL COMMENT '网站名',
  `url` varchar(255) NOT NULL COMMENT '网站url',
  `sort` int(11) DEFAULT NULL COMMENT '顺序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friend_link
-- ----------------------------
INSERT INTO `friend_link` VALUES ('1', '/assets/images/MB.png', 'Aurora', 'https://liuzhaopo.club', null);
INSERT INTO `friend_link` VALUES ('2', '/upload/九师兄1.jpg', '九师兄', 'https://me.csdn.net/qq_21383435', null);
INSERT INTO `friend_link` VALUES ('4', '/upload/泰山不老生1.png', '泰山不老生 ', 'https://me.csdn.net/beliefer', null);
INSERT INTO `friend_link` VALUES ('5', '/upload/董可伦1.jpg', '伦少', 'https://dongkelun.com/', null);

-- ----------------------------
-- Table structure for `like_message_log`
-- ----------------------------
DROP TABLE IF EXISTS `like_message_log`;
CREATE TABLE `like_message_log` (
  `accountId` int(11) NOT NULL,
  `refType` int(11) NOT NULL,
  `refId` int(11) NOT NULL,
  `createAt` datetime NOT NULL COMMENT 'creatAt用于未来清除该表中时间比较久远的记录',
  PRIMARY KEY (`accountId`,`refType`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用于保存点赞的记录，用于记录点赞后发布过系统消息，保障只发一次';

-- ----------------------------
-- Records of like_message_log
-- ----------------------------
INSERT INTO `like_message_log` VALUES ('6', '1', '98', '2018-10-01 16:18:03');
INSERT INTO `like_message_log` VALUES ('6', '1', '99', '2018-10-01 18:11:10');

-- ----------------------------
-- Table structure for `login_log`
-- ----------------------------
DROP TABLE IF EXISTS `login_log`;
CREATE TABLE `login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `accountId` int(11) NOT NULL,
  `loginAt` datetime NOT NULL,
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login_log
-- ----------------------------
INSERT INTO `login_log` VALUES ('134', '1', '2018-10-01 16:07:22', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('135', '6', '2018-10-01 16:17:47', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('136', '1', '2018-10-01 16:19:54', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('137', '6', '2018-10-01 16:33:55', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('138', '1', '2018-10-01 16:34:15', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('139', '1', '2018-10-01 16:40:14', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('140', '1', '2018-10-01 16:49:22', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('141', '1', '2018-10-01 17:00:24', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('142', '1', '2018-10-01 17:07:12', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('143', '1', '2018-10-01 17:11:22', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('144', '1', '2018-10-01 17:16:52', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('145', '1', '2018-10-01 17:22:34', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('146', '1', '2018-10-01 17:23:45', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('147', '1', '2018-10-01 17:24:18', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('148', '1', '2018-10-01 17:24:47', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('149', '1', '2018-10-01 17:25:34', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('150', '1', '2018-10-01 17:26:09', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('151', '1', '2018-10-01 17:26:29', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('152', '1', '2018-10-01 17:27:42', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('153', '1', '2018-10-01 18:04:39', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('154', '1', '2018-10-01 18:10:10', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('155', '6', '2018-10-01 18:11:04', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('156', '1', '2018-10-01 18:11:34', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('157', '1', '2018-10-01 18:30:40', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('158', '1', '2018-10-01 18:34:05', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('159', '1', '2018-10-01 18:36:41', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('160', '1', '2018-10-01 18:46:18', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('161', '1', '2018-10-01 18:50:01', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('162', '1', '2018-10-01 20:30:46', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('163', '1', '2018-10-01 20:40:37', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('164', '1', '2018-10-01 20:41:36', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('165', '1', '2018-10-01 21:16:49', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('166', '1', '2018-10-02 14:27:10', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('167', '1', '2018-10-02 17:08:39', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('168', '1', '2018-10-02 23:42:55', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('169', '1', '2018-10-02 23:54:46', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('170', '1', '2018-10-02 23:55:29', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('171', '1', '2018-10-03 00:03:43', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('172', '1', '2018-10-03 14:22:49', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('173', '1', '2018-10-03 14:24:46', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('174', '1', '2018-10-03 14:25:49', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('175', '1', '2018-10-03 14:26:03', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('176', '1', '2018-10-03 16:37:21', '0:0:0:0:0:0:0:1');
INSERT INTO `login_log` VALUES ('177', '1', '2018-10-03 16:38:10', '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(18) DEFAULT NULL,
  `target` varchar(18) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '文章', '_self', 'blog', '0', '0');
INSERT INTO `menu` VALUES ('2', '视频', '_self', 'video', '0', '0');
INSERT INTO `menu` VALUES ('3', '问答', '_self', 'ask', '0', '0');
INSERT INTO `menu` VALUES ('4', '发现', '_self', 'tags', '0', '0');
INSERT INTO `menu` VALUES ('5', '走廊', '_self', 'gallery', '0', '0');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL COMMENT '消息的主人',
  `friend` int(11) NOT NULL COMMENT '对方的ID',
  `sender` int(11) NOT NULL COMMENT '发送者',
  `receiver` int(11) NOT NULL COMMENT '接收者',
  `type` tinyint(2) NOT NULL COMMENT '0：普通消息，1：系统消息',
  `content` text NOT NULL,
  `createAt` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', '6', '6', '1', '1', '<a href=\"/user/6\" target=\"_blank\" class=\"at-me\">@demo</a> 刚刚赞了你的文章：<a href=\"/view/article/98\" target=\"_blank\">KVM介绍</a>，目前被赞次数为：1', '2018-10-01 16:18:03');
INSERT INTO `message` VALUES ('2', '1', '6', '6', '1', '1', '<a href=\"/user/6\" target=\"_blank\" class=\"at-me\">@demo</a> 刚刚回复了你的文章：<a href=\"/view/article/98\" target=\"_blank\" style=\"color:#0cb366\">KVM介绍</a>', '2018-10-01 16:18:41');
INSERT INTO `message` VALUES ('3', '1', '6', '6', '1', '0', '测试私信...', '2018-10-01 16:19:17');
INSERT INTO `message` VALUES ('4', '6', '1', '6', '1', '0', '测试私信...', '2018-10-01 16:19:17');
INSERT INTO `message` VALUES ('5', '1', '6', '6', '1', '1', '<a href=\"/user/6\" target=\"_blank\" class=\"at-me\">@demo</a> 刚刚赞了你的文章：<a href=\"/view/video/99\" target=\"_blank\">很累，但是不知道因为什么累？</a>，目前被赞次数为：1', '2018-10-01 18:11:11');
INSERT INTO `message` VALUES ('6', '1', '6', '6', '1', '1', '<a href=\"/user/6\" target=\"_blank\" class=\"at-me\">@demo</a> 刚刚回复了你的文章：<a href=\"/view/video/99\" target=\"_blank\" style=\"color:#0cb366\">很累，但是不知道因为什么累？</a>', '2018-10-01 18:11:20');

-- ----------------------------
-- Table structure for `news_feed`
-- ----------------------------
DROP TABLE IF EXISTS `news_feed`;
CREATE TABLE `news_feed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) NOT NULL COMMENT '动态创建者',
  `refType` tinyint(2) NOT NULL COMMENT '动态引用类型',
  `refId` int(11) NOT NULL DEFAULT '0' COMMENT '动态引用所关联的 id',
  `refParentType` tinyint(2) NOT NULL DEFAULT '0' COMMENT 'reply所属的贴子类型, 与type 字段填的值一样',
  `refParentId` int(11) NOT NULL DEFAULT '0',
  `createAt` datetime NOT NULL COMMENT '动态创建时间',
  PRIMARY KEY (`id`),
  KEY `refId` (`refId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news_feed
-- ----------------------------
INSERT INTO `news_feed` VALUES ('21', '1', '1', '98', '0', '0', '2018-10-01 16:13:49');
INSERT INTO `news_feed` VALUES ('22', '6', '2', '4', '0', '0', '2018-10-01 16:18:41');
INSERT INTO `news_feed` VALUES ('24', '6', '2', '5', '0', '0', '2018-10-01 18:11:20');

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '发布内容ID',
  `userId` int(11) NOT NULL COMMENT '作者',
  `comments` int(11) DEFAULT '0' COMMENT '评论数',
  `content` longtext NOT NULL COMMENT '内容',
  `createAt` datetime NOT NULL COMMENT '创建时间',
  `images` text COMMENT '图片',
  `tags` varchar(255) DEFAULT NULL COMMENT '标签',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `views` int(11) NOT NULL DEFAULT '0' COMMENT '浏览数',
  `likeCount` int(11) NOT NULL DEFAULT '0' COMMENT '点赞数',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '状态，1表示发布，0表示草稿，2表示锁定',
  `summary` varchar(255) DEFAULT NULL COMMENT '摘要',
  `post_type` int(11) NOT NULL COMMENT '发布的类型，比如文章，图片，视频等',
  `last_images` varchar(255) DEFAULT NULL COMMENT '最后一张图片',
  `video` varchar(255) DEFAULT NULL COMMENT '视频地址',
  `article_type` int(11) DEFAULT NULL COMMENT '文章分类，可为空，发布文章时才需要选择分类',
  `privacy` int(11) DEFAULT NULL COMMENT '权限，0表示公开，1表示不公开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('98', '1', '1', '<blockquote><p>虚拟化是云计算的基础。简单的说，虚拟化使得在一台物理的服务器上可以跑多台虚拟机，虚拟机共享物理机的 CPU、内存、IO \n硬件资源，但逻辑上虚拟机之间是相互隔离的。物理机我们一般称为宿主机（Host），宿主机上面的虚拟机称为客户机（Guest）。其中，KVM 全称是\n 基于内核的虚拟机（Kernel-based Virtual Machine），它是一个 Linux 的一个内核模块，该内核模块使得 Linux\n 变成了一个 Hypervisor。</p></blockquote><h2 id=\"KVM-架构\"><strong><span style=\"font-size: 24px;\"><br/></span></strong></h2><h2 id=\"KVM-架构\"><a href=\"https://liuzhaopo.club/2018/09/09/KVM%E4%BB%8B%E7%BB%8D/#KVM-%E6%9E%B6%E6%9E%84\" class=\"headerlink\" title=\"KVM 架构\"></a><strong><span style=\"font-size: 24px;\">【KVM 架构】</span></strong></h2><p>KVM\n 是基于虚拟化扩展（Intel VT 或者 AMD-V）的 X86 硬件的开源的 Linux 原生的全虚拟化解决方案。KVM \n中，虚拟机被实现为常规的 Linux 进程，由标准 Linux 调度程序进行调度；虚机的每个虚拟 CPU 被实现为一个常规的 Linux \n进程。这使得 KMV 能够使用 Linux 内核的已有功能。<br/> &nbsp;但是，KVM 本身不执行任何硬件模拟，需要客户空间程序通过 /dev/kvm 接口设置一个客户机虚拟服务器的地址空间，向它提供模拟的 I/O，并将它的视频显示映射回宿主的显示屏。目前这个应用程序是 QEMU。</p><p>Linux 上的用户空间、内核空间和虚机：</p><p><br/></p><p><span style=\"font-size: 20px;\">Guest：</span>客户机系统，包括CPU（vCPU）、内存、驱动（Console、网卡、I/O 设备驱动等），被 KVM 置于一种受限制的 CPU 模式下运行。<br/>KVM：运行在内核空间，提供CPU 和内存的虚级化，以及客户机的 I/O 拦截。Guest 的 I/O 被 KVM 拦截后，交给 QEMU 处理。</p><p><br/><span style=\"font-size: 20px;\">QEMU：</span>修改过的为 KVM 虚机使用的 QEMU 代码，运行在用户空间，提供硬件 I/O 虚拟化，通过 IOCTL /dev/kvm 设备和 KVM 交互。<br/>KVM 是实现拦截虚机的 I/O 请求的原理：</p><p>现代 CPU 本身了对特殊指令的截获和重定向的硬件支持，甚至新的硬件会提供额外的资源来帮助软件实现对关键硬件资源的虚拟化从而提高性能。以 \nX86 平台为例，支持虚拟化技术的 CPU &nbsp;带有特别优化过的指令集来控制虚拟化过程。通过这些指令集，VMM \n很容易将客户机置于一种受限制的模式下运行，一旦客户机视图访问物理资源，硬件会暂停客户机的运行，将控制权交回给 VMM 处理。VMM \n还可以利用硬件的虚级化增强机制，将客户机在受限模式下对一些特定资源的访问，完全由硬件重定向到 VMM \n指定的虚拟资源，整个过程不需要暂停客户机的运行和 VMM \n的参与。由于虚拟化硬件提供全新的架构，支持操作系统直接在上面运行，无需进行二进制转换，减少了相关的性能开销，极大简化了VMM的设计，使得VMM性能更加强大。从\n 2005 年开始，Intel 在其处理器产品线中推广 Intel Virtualization Technology 即 IntelVT \n技术。</p><p><br/></p><p><span style=\"font-size: 20px;\">QEMU-KVM：</span><br/> &nbsp;其实 QEMU 原本不是 KVM \n的一部分，它自己就是一个纯软件实现的虚拟化系统，所以其性能低下。但是，QEMU 代码中包含整套的虚拟机实现，包括处理器虚拟化，内存虚拟化，以及 \nKVM需要使用到的虚拟设备模拟（网卡、显卡、存储控制器和硬盘等）。 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 为了简化代码，KVM 在 QEMU \n的基础上做了修改。VM 运行期间，QEMU 会通过 KVM 模块提供的系统调用进入内核，由 KVM \n负责将虚拟机置于处理的特殊模式运行。遇到虚机进行 I/O 操作，KVM 会从上次的系统调用出口处返回 QEMU，由 QEMU \n来负责解析和模拟这些设备。 &nbsp; &nbsp; &nbsp; 从 QEMU 的角度看，也可以说是 QEMU 使用了 KVM \n模块的虚拟化功能，为自己的虚机提供了硬件虚拟化加速。除此以外，虚机的配置和创建、虚机运行说依赖的虚拟设备、虚机运行时的用户环境和交互，以及一些虚机的特定技术比如动态迁移，都是\n QEMU 自己实现的。</p><p><br/></p><p><span style=\"font-size: 24px;\"><strong><br/></strong></span></p><p><span style=\"font-size: 24px;\"><strong>【<strong style=\"white-space: normal;\"><span style=\"font-size: 24px;\">KVM</span></strong>】</strong></span></p><p>KVM 内核模块在运行时按需加载进入内核空间运行。KVM 本身不执行任何设备模拟，需要 QEMU 通过 /dev/kvm \n接口设置一个 GUEST OS 的地址空间，向它提供模拟的 I/O 设备，并将它的视频显示映射回宿主机的显示屏。它是KVM \n虚机的核心部分，其主要功能是初始化 CPU 硬件，打开虚拟化模式，然后将虚拟客户机运行在虚拟机模式下，并对虚机的运行提供一定的支持。以在 \nIntel 上运行为例，KVM 模块被加载的时候，<br/>它：</p><ul class=\" list-paddingleft-2\"><li><p>首先初始化内部的数据结构；</p></li><li><p>做好准备后，KVM 模块检测当前的 CPU，然后打开 CPU 控制及存取 CR4 的虚拟化模式开关，并通过执行 <em> </em> * VMXON 指令将宿主操作系统置于虚拟化模式的根模式；</p></li><li><p>最后，KVM 模块创建特殊设备文件 /dev/kvm 并等待来自用户空间的指令。</p></li></ul><p>接下来的虚机的创建和运行将是 QEMU 和 KVM 相互配合的过程。两者的通信接口主要是一系列针对特殊设备文件 dev/kvm 的 \nIOCTL 调用。其中最重要的是创建虚机。它可以理解成KVM 为了某个特定的虚机创建对应的内核数据结构，同时，KVM \n返回一个文件句柄来代表所创建的虚机。</p><p>针对该句柄的调用可以对虚机做相应地管理，比如创建用户空间虚拟地址和客户机物理地址、真实物理地址之间的映射关系，再比如创建多个 \nvCPU。KVM 为每一个 vCPU 生成对应的文件句柄，对其相应地 IOCTL \n调用，就可以对vCPU进行管理。其中最重要的就是“执行虚拟处理器”。通过它，虚机在 KVM \n的支持下，被置于虚拟化模式的非根模式下，开始执行二进制指令。在非根模式下，所有敏感的二进制指令都被CPU捕捉到，CPU \n在保存现场之后自动切换到根模式，由 KVM 决定如何处理。</p><p>除了 CPU 的虚拟化，内存虚拟化也由 KVM 实现。实际上，内存虚拟化往往是一个虚机实现中最复杂的部分。CPU 中的内存管理单元 MMU\n 是通过页表的形式将程序运行的虚拟地址转换成实际物理地址。在虚拟机模式下，MMU \n的页表则必须在一次查询的时候完成两次地址转换。因为除了将客户机程序的虚拟地址转换了客户机的物理地址外，还要将客户机物理地址转化成真实物理地址。</p><h2 id=\"KVM功能\"><strong><span style=\"font-size: 24px;\"><br/></span></strong></h2><h2 id=\"KVM功能\"><a href=\"https://liuzhaopo.club/2018/09/09/KVM%E4%BB%8B%E7%BB%8D/#KVM%E5%8A%9F%E8%83%BD\" class=\"headerlink\" title=\"KVM功能\"></a><strong><span style=\"font-size: 24px;\">【KVM功能】</span></strong></h2><p>KVM 所支持的功能包括：</p><ul class=\" list-paddingleft-2\"><li><p>支持CPU 和 memory 超分（Overcommit）</p></li><li><p>支持半虚拟化I/O （virtio）</p></li><li><p>支持热插拔 （cpu，块设备、网络设备等）</p></li><li><p>支持对称多处理（Symmetric Multi-Processing，缩写为 SMP ）</p></li><li><p>支持实时迁移（Live Migration）</p></li><li><p>支持 PCI 设备直接分配和 单根I/O 虚拟化 （SR-IOV）</p></li><li><p>支持 内核同页合并 （KSM ）</p></li><li><p>支持 NUMA （Non-Uniform Memory Access，非一致存储访问结构 ）</p></li></ul><h2 id=\"KVM工具\"><strong><span style=\"font-size: 24px;\"><br/></span></strong></h2><h2 id=\"KVM工具\"><a href=\"https://liuzhaopo.club/2018/09/09/KVM%E4%BB%8B%E7%BB%8D/#KVM%E5%B7%A5%E5%85%B7\" class=\"headerlink\" title=\"KVM工具\"></a><strong><span style=\"font-size: 24px;\">【KVM工具】</span></strong></h2><ul class=\" list-paddingleft-2\"><li><p>libvirt：操作和管理KVM虚机的虚拟化 API，使用 C 语言编写，可以由 Python,Ruby, Perl, PHP, Java 等语言调用。可以操作包括 KVM，vmware，XEN，Hyper-v, LXC 等 Hypervisor。</p></li><li><p>Virsh：基于 libvirt 的 命令行工具 （CLI）</p></li><li><p>Virt-Manager：基于 libvirt 的 GUI 工具</p></li><li><p>virt-v2v：虚机格式迁移工具</p></li><li><p>virt-* 工具：包括 Virt-install （创建KVM虚机的命令行工具）， Virt-viewer （连接到虚机屏幕的工具），Virt-clone（虚机克隆工具），virt-top 等</p></li><li><p>sVirt：安全工具</p></li></ul><p><br/></p>', '2018-10-01 16:13:49', null, 'KVM,虚拟化', 'KVM介绍', '6', '1', '0', '虚拟化是云计算的基础。简单的说，虚拟化使得在一台物理的服务器上可以跑多台虚拟机，虚拟机共享物理机的 CPU、内存、IO \n硬件资源，但逻辑上虚拟机之间是相互隔离的。物理机我们一般称为宿主机（Host），宿主机上面的虚拟机称为客户机（Guest）。其中，KVM 全称是\n 基于内核的虚拟机（Kernel-based Virtual Machine），它是一个 Linux 的一个内核模块，该内核模块使得', '1', null, null, '1', '0');

-- ----------------------------
-- Table structure for `posts_comment`
-- ----------------------------
DROP TABLE IF EXISTS `posts_comment`;
CREATE TABLE `posts_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `userId` int(11) NOT NULL COMMENT '作者Id',
  `content` text NOT NULL COMMENT '评论内容',
  `createAt` datetime NOT NULL COMMENT '创建时间',
  `postId` int(11) NOT NULL COMMENT 'POST的ID',
  `toId` int(11) DEFAULT NULL COMMENT '要回复的评论的id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts_comment
-- ----------------------------
INSERT INTO `posts_comment` VALUES ('4', '6', '测试...', '2018-10-01 16:18:40', '98', null);
INSERT INTO `posts_comment` VALUES ('5', '6', '测试...', '2018-10-01 18:11:20', '99', null);

-- ----------------------------
-- Table structure for `posts_like`
-- ----------------------------
DROP TABLE IF EXISTS `posts_like`;
CREATE TABLE `posts_like` (
  `userId` int(11) NOT NULL COMMENT '点赞用户ID',
  `refId` int(11) NOT NULL COMMENT '点赞关联表ID,这里统一为posts的ID',
  `createAt` datetime NOT NULL COMMENT '点赞时间',
  PRIMARY KEY (`userId`,`refId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts_like
-- ----------------------------
INSERT INTO `posts_like` VALUES ('6', '98', '2018-10-01 16:18:03');
INSERT INTO `posts_like` VALUES ('6', '99', '2018-10-01 18:11:10');

-- ----------------------------
-- Table structure for `post_type`
-- ----------------------------
DROP TABLE IF EXISTS `post_type`;
CREATE TABLE `post_type` (
  `id` int(11) NOT NULL COMMENT 'post_type的ID',
  `post_type` varchar(255) NOT NULL COMMENT 'post_type类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post_type
-- ----------------------------
INSERT INTO `post_type` VALUES ('1', '文章');
INSERT INTO `post_type` VALUES ('2', '视频');
INSERT INTO `post_type` VALUES ('3', '图片');
INSERT INTO `post_type` VALUES ('4', '问答');

-- ----------------------------
-- Table structure for `refer_me`
-- ----------------------------
DROP TABLE IF EXISTS `refer_me`;
CREATE TABLE `refer_me` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referAccountId` int(11) NOT NULL COMMENT '接收者账号id',
  `newsFeedId` int(11) NOT NULL COMMENT 'newsFeedId',
  `type` tinyint(2) NOT NULL COMMENT '@我、评论我等等的refer类型',
  `createAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of refer_me
-- ----------------------------

-- ----------------------------
-- Table structure for `remind`
-- ----------------------------
DROP TABLE IF EXISTS `remind`;
CREATE TABLE `remind` (
  `accountId` int(11) NOT NULL COMMENT '用户账号id，必须手动指定，不自增',
  `referMe` int(11) NOT NULL DEFAULT '0' COMMENT '提到我的消息条数',
  `message` int(11) NOT NULL DEFAULT '0' COMMENT '私信条数',
  `fans` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝增加个数',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of remind
-- ----------------------------
INSERT INTO `remind` VALUES ('1', '0', '0', '0');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for `sensitive_words`
-- ----------------------------
DROP TABLE IF EXISTS `sensitive_words`;
CREATE TABLE `sensitive_words` (
  `id` int(11) NOT NULL,
  `word` varchar(32) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `word_pinyin` varchar(60) NOT NULL COMMENT '敏感词',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sensitive_words
-- ----------------------------

-- ----------------------------
-- Table structure for `session`
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` varchar(33) NOT NULL,
  `accountId` int(11) NOT NULL,
  `expireAt` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('0cc2d9e9e80c418fa218144834c26e09', '1', '1633163890571');
INSERT INTO `session` VALUES ('185b862b2e3b4b2b991d33aaf6a98d83', '1', '1633155949001');
INSERT INTO `session` VALUES ('24967a8daab541c98e7f0b1ebc13238c', '1', '1632990855167');
INSERT INTO `session` VALUES ('36a2dcbc38a243dba1646590fa4fdd59', '1', '1633103729505');
INSERT INTO `session` VALUES ('3b135f37ab6549bd98d9e2eab11b49cf', '1', '1633079319883');
INSERT INTO `session` VALUES ('3d4fee5e3cb34713b0aee592cd2c55af', '1', '1632998778580');
INSERT INTO `session` VALUES ('9db12db5b0f04fc092fa4ef8c60d43d0', '1', '1633104223597');
INSERT INTO `session` VALUES ('d1437dba9a0a4f97ad8bfd87cf377f6c', '1', '1633155886655');

-- ----------------------------
-- Table structure for `site_info`
-- ----------------------------
DROP TABLE IF EXISTS `site_info`;
CREATE TABLE `site_info` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '网站标题',
  `description` text COMMENT '网站描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键词',
  `logo` varchar(255) DEFAULT NULL COMMENT '网站logo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_info
-- ----------------------------
INSERT INTO `site_info` VALUES ('1', 'Lewis社区', 'Lewis官网', 'Java、大数据、人工智能、Linux运维、项目资源、视频资源、科技新闻、生活趣事、文章随笔、运动赛事...', '/upload/logo/GitHub1.1.png');

-- ----------------------------
-- Table structure for `tags`
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) NOT NULL COMMENT '标签名',
  `posts` int(11) DEFAULT '0' COMMENT '发表数',
  `locked` int(11) DEFAULT '0' COMMENT '是否锁定，0表示不锁定，1表示锁定',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('1', 'KVM', '1', '0');
INSERT INTO `tags` VALUES ('2', '虚拟化', '1', '0');

-- ----------------------------
-- Table structure for `upload_counter`
-- ----------------------------
DROP TABLE IF EXISTS `upload_counter`;
CREATE TABLE `upload_counter` (
  `uploadType` varchar(50) NOT NULL,
  `counter` int(11) NOT NULL,
  `descr` varchar(50) NOT NULL,
  PRIMARY KEY (`uploadType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of upload_counter
-- ----------------------------
INSERT INTO `upload_counter` VALUES ('article', '11', '记录article模块上传图片，用于生成相对路径');
INSERT INTO `upload_counter` VALUES ('blog', '70', '记录blog模块上传图片的总数量，用于生成相对路径');
INSERT INTO `upload_counter` VALUES ('gallery', '0', '记录gallery模块上传图片的总数量，用于生成相对路径');
INSERT INTO `upload_counter` VALUES ('share', '202', '记录share模块上传图片的总数量，用于生成相对路径');
INSERT INTO `upload_counter` VALUES ('video', '311', '记录video模块上传图片的总数量，用于生成相对路径');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `email` varchar(255) NOT NULL COMMENT '用户邮箱',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `salt` varchar(255) NOT NULL COMMENT '盐值',
  `nickName` varchar(255) NOT NULL COMMENT '昵称',
  `userName` varchar(255) NOT NULL COMMENT '用户名',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `gender` int(11) DEFAULT NULL COMMENT '性别',
  `roleId` int(11) DEFAULT NULL COMMENT '角色ID',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `signature` varchar(255) DEFAULT NULL COMMENT '签名',
  `createAt` datetime NOT NULL COMMENT '创建时间',
  `status` int(11) DEFAULT NULL COMMENT '用户状态',
  `ip` varchar(255) NOT NULL COMMENT '注册IP',
  `likeCount` int(11) DEFAULT '0' COMMENT '获赞数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '760613041@qq.com', 'fc6ef34d1d6260d18497b2526a6986b9442f9a5d629ca26a5179a84ac4b38c2e', 'rxqhznXtnF42PXKdA2RjQDR8mU_KdF1n', 'Lewis', 'Lewis', '/upload/avatar/0/1.jpg', null, '1', null, 'Want, want, line is clear, as if nothing could shake his.', '2017-08-30 16:17:13', '1', '0:0:0:0:0:0:0:1', '2');
INSERT INTO `user` VALUES ('3', '468242427@qq.com', 'adf563ca64996303e2b42b194cb57a00d5188f538ae71159d5eb2a9865b142d1', 'ypkTiAN8hsy8W1u1NxPLclnw5dPZ_cT9', 'demo', 'demo', '/assets/images/avatar/default.jpg', null, '2', null, null, '2018-10-02 19:24:38', '0', '0:0:0:0:0:0:0:1', '0');

-- ----------------------------
-- Table structure for `users_open_oauth`
-- ----------------------------
DROP TABLE IF EXISTS `users_open_oauth`;
CREATE TABLE `users_open_oauth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_token` varchar(255) DEFAULT NULL,
  `expire_in` varchar(255) DEFAULT NULL,
  `oauth_code` varchar(255) DEFAULT NULL,
  `oauth_type` int(11) DEFAULT NULL,
  `oauth_user_id` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_open_oauth
-- ----------------------------

