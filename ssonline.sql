/*
Navicat MySQL Data Transfer

Source Server         : django
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : ssonline

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2018-04-15 23:19:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', 'root');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES ('1', '1', '1');
INSERT INTO `auth_group_permissions` VALUES ('2', '1', '2');
INSERT INTO `auth_group_permissions` VALUES ('3', '1', '3');
INSERT INTO `auth_group_permissions` VALUES ('4', '1', '4');
INSERT INTO `auth_group_permissions` VALUES ('5', '1', '5');
INSERT INTO `auth_group_permissions` VALUES ('6', '1', '6');
INSERT INTO `auth_group_permissions` VALUES ('7', '1', '7');
INSERT INTO `auth_group_permissions` VALUES ('8', '1', '8');
INSERT INTO `auth_group_permissions` VALUES ('9', '1', '9');
INSERT INTO `auth_group_permissions` VALUES ('10', '1', '10');
INSERT INTO `auth_group_permissions` VALUES ('11', '1', '11');
INSERT INTO `auth_group_permissions` VALUES ('12', '1', '12');
INSERT INTO `auth_group_permissions` VALUES ('13', '1', '13');
INSERT INTO `auth_group_permissions` VALUES ('14', '1', '14');
INSERT INTO `auth_group_permissions` VALUES ('15', '1', '15');
INSERT INTO `auth_group_permissions` VALUES ('16', '1', '16');
INSERT INTO `auth_group_permissions` VALUES ('17', '1', '17');
INSERT INTO `auth_group_permissions` VALUES ('18', '1', '18');
INSERT INTO `auth_group_permissions` VALUES ('19', '1', '19');
INSERT INTO `auth_group_permissions` VALUES ('20', '1', '20');
INSERT INTO `auth_group_permissions` VALUES ('21', '1', '21');
INSERT INTO `auth_group_permissions` VALUES ('22', '1', '22');
INSERT INTO `auth_group_permissions` VALUES ('23', '1', '23');
INSERT INTO `auth_group_permissions` VALUES ('24', '1', '24');
INSERT INTO `auth_group_permissions` VALUES ('25', '1', '25');
INSERT INTO `auth_group_permissions` VALUES ('26', '1', '26');
INSERT INTO `auth_group_permissions` VALUES ('27', '1', '27');
INSERT INTO `auth_group_permissions` VALUES ('28', '1', '28');
INSERT INTO `auth_group_permissions` VALUES ('29', '1', '29');
INSERT INTO `auth_group_permissions` VALUES ('30', '1', '30');
INSERT INTO `auth_group_permissions` VALUES ('31', '1', '31');
INSERT INTO `auth_group_permissions` VALUES ('32', '1', '32');
INSERT INTO `auth_group_permissions` VALUES ('33', '1', '33');
INSERT INTO `auth_group_permissions` VALUES ('34', '1', '34');
INSERT INTO `auth_group_permissions` VALUES ('35', '1', '35');
INSERT INTO `auth_group_permissions` VALUES ('36', '1', '36');
INSERT INTO `auth_group_permissions` VALUES ('37', '1', '37');
INSERT INTO `auth_group_permissions` VALUES ('38', '1', '38');
INSERT INTO `auth_group_permissions` VALUES ('39', '1', '39');
INSERT INTO `auth_group_permissions` VALUES ('40', '1', '40');
INSERT INTO `auth_group_permissions` VALUES ('41', '1', '41');
INSERT INTO `auth_group_permissions` VALUES ('42', '1', '42');
INSERT INTO `auth_group_permissions` VALUES ('43', '1', '43');
INSERT INTO `auth_group_permissions` VALUES ('44', '1', '44');
INSERT INTO `auth_group_permissions` VALUES ('45', '1', '45');
INSERT INTO `auth_group_permissions` VALUES ('46', '1', '46');
INSERT INTO `auth_group_permissions` VALUES ('47', '1', '47');
INSERT INTO `auth_group_permissions` VALUES ('48', '1', '48');
INSERT INTO `auth_group_permissions` VALUES ('49', '1', '49');
INSERT INTO `auth_group_permissions` VALUES ('50', '1', '50');
INSERT INTO `auth_group_permissions` VALUES ('51', '1', '51');
INSERT INTO `auth_group_permissions` VALUES ('52', '1', '52');
INSERT INTO `auth_group_permissions` VALUES ('53', '1', '53');
INSERT INTO `auth_group_permissions` VALUES ('54', '1', '54');
INSERT INTO `auth_group_permissions` VALUES ('55', '1', '55');
INSERT INTO `auth_group_permissions` VALUES ('56', '1', '56');
INSERT INTO `auth_group_permissions` VALUES ('57', '1', '57');
INSERT INTO `auth_group_permissions` VALUES ('58', '1', '58');
INSERT INTO `auth_group_permissions` VALUES ('59', '1', '59');
INSERT INTO `auth_group_permissions` VALUES ('60', '1', '60');

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add permission', '1', 'add_permission');
INSERT INTO `auth_permission` VALUES ('2', 'Can change permission', '1', 'change_permission');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete permission', '1', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('4', 'Can add group', '2', 'add_group');
INSERT INTO `auth_permission` VALUES ('5', 'Can change group', '2', 'change_group');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete group', '2', 'delete_group');
INSERT INTO `auth_permission` VALUES ('7', 'Can add content type', '3', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('8', 'Can change content type', '3', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete content type', '3', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('10', 'Can add 用户信息', '4', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('11', 'Can change 用户信息', '4', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete 用户信息', '4', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('13', 'Can add log entry', '5', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('14', 'Can change log entry', '5', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete log entry', '5', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add 轮播图', '7', 'add_banner');
INSERT INTO `auth_permission` VALUES ('20', 'Can change 轮播图', '7', 'change_banner');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete 轮播图', '7', 'delete_banner');
INSERT INTO `auth_permission` VALUES ('22', 'Can add 邮箱验证', '8', 'add_emailverifycode');
INSERT INTO `auth_permission` VALUES ('23', 'Can change 邮箱验证', '8', 'change_emailverifycode');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete 邮箱验证', '8', 'delete_emailverifycode');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 课程信息', '9', 'add_course');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 课程信息', '9', 'change_course');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 课程信息', '9', 'delete_course');
INSERT INTO `auth_permission` VALUES ('28', 'Can add 课程资源', '10', 'add_courseresource');
INSERT INTO `auth_permission` VALUES ('29', 'Can change 课程资源', '10', 'change_courseresource');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete 课程资源', '10', 'delete_courseresource');
INSERT INTO `auth_permission` VALUES ('31', 'Can add 章节', '11', 'add_lesson');
INSERT INTO `auth_permission` VALUES ('32', 'Can change 章节', '11', 'change_lesson');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete 章节', '11', 'delete_lesson');
INSERT INTO `auth_permission` VALUES ('34', 'Can add 视频', '12', 'add_video');
INSERT INTO `auth_permission` VALUES ('35', 'Can change 视频', '12', 'change_video');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete 视频', '12', 'delete_video');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 城市信息', '13', 'add_citydict');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 城市信息', '13', 'change_citydict');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 城市信息', '13', 'delete_citydict');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 课程机构', '14', 'add_courseorg');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 课程机构', '14', 'change_courseorg');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 课程机构', '14', 'delete_courseorg');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 授课教师', '15', 'add_teacher');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 授课教师', '15', 'change_teacher');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 授课教师', '15', 'delete_teacher');
INSERT INTO `auth_permission` VALUES ('46', 'Can add 用户评论', '16', 'add_coursecomments');
INSERT INTO `auth_permission` VALUES ('47', 'Can change 用户评论', '16', 'change_coursecomments');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete 用户评论', '16', 'delete_coursecomments');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 用户咨询', '17', 'add_userask');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 用户咨询', '17', 'change_userask');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 用户咨询', '17', 'delete_userask');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 用户课程', '18', 'add_usercourse');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 用户课程', '18', 'change_usercourse');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 用户课程', '18', 'delete_usercourse');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 用户收藏', '19', 'add_userfavorite');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 用户收藏', '19', 'change_userfavorite');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 用户收藏', '19', 'delete_userfavorite');
INSERT INTO `auth_permission` VALUES ('58', 'Can add 用户消息', '20', 'add_usermessage');
INSERT INTO `auth_permission` VALUES ('59', 'Can change 用户消息', '20', 'change_usermessage');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete 用户消息', '20', 'delete_usermessage');
INSERT INTO `auth_permission` VALUES ('61', 'Can view log entry', '5', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('62', 'Can view group', '2', 'view_group');
INSERT INTO `auth_permission` VALUES ('63', 'Can view permission', '1', 'view_permission');
INSERT INTO `auth_permission` VALUES ('64', 'Can view content type', '3', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('65', 'Can view 课程信息', '9', 'view_course');
INSERT INTO `auth_permission` VALUES ('66', 'Can view 课程资源', '10', 'view_courseresource');
INSERT INTO `auth_permission` VALUES ('67', 'Can view 章节', '11', 'view_lesson');
INSERT INTO `auth_permission` VALUES ('68', 'Can view 视频', '12', 'view_video');
INSERT INTO `auth_permission` VALUES ('69', 'Can view 用户评论', '16', 'view_coursecomments');
INSERT INTO `auth_permission` VALUES ('70', 'Can view 用户咨询', '17', 'view_userask');
INSERT INTO `auth_permission` VALUES ('71', 'Can view 用户课程', '18', 'view_usercourse');
INSERT INTO `auth_permission` VALUES ('72', 'Can view 用户收藏', '19', 'view_userfavorite');
INSERT INTO `auth_permission` VALUES ('73', 'Can view 用户消息', '20', 'view_usermessage');
INSERT INTO `auth_permission` VALUES ('74', 'Can view 城市信息', '13', 'view_citydict');
INSERT INTO `auth_permission` VALUES ('75', 'Can view 课程机构', '14', 'view_courseorg');
INSERT INTO `auth_permission` VALUES ('76', 'Can view 授课教师', '15', 'view_teacher');
INSERT INTO `auth_permission` VALUES ('77', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('78', 'Can view 轮播图', '7', 'view_banner');
INSERT INTO `auth_permission` VALUES ('79', 'Can view 邮箱验证', '8', 'view_emailverifycode');
INSERT INTO `auth_permission` VALUES ('80', 'Can view 用户信息', '4', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('81', 'Can add Bookmark', '21', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('82', 'Can change Bookmark', '21', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('83', 'Can delete Bookmark', '21', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('84', 'Can add User Setting', '22', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('85', 'Can change User Setting', '22', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('86', 'Can delete User Setting', '22', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('87', 'Can add User Widget', '23', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('88', 'Can change User Widget', '23', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('89', 'Can delete User Widget', '23', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('90', 'Can add log entry', '24', 'add_log');
INSERT INTO `auth_permission` VALUES ('91', 'Can change log entry', '24', 'change_log');
INSERT INTO `auth_permission` VALUES ('92', 'Can delete log entry', '24', 'delete_log');
INSERT INTO `auth_permission` VALUES ('93', 'Can view Bookmark', '21', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('94', 'Can view log entry', '24', 'view_log');
INSERT INTO `auth_permission` VALUES ('95', 'Can view User Setting', '22', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('96', 'Can view User Widget', '23', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('97', 'Can add captcha store', '25', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('98', 'Can change captcha store', '25', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('99', 'Can delete captcha store', '25', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('100', 'Can view captcha store', '25', 'view_captchastore');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('14', 'VIJS', 'vijs', 'f9dfaa0654b4f66c89344be70b64e1b5d7a45333', '2018-03-29 23:01:07');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `desc` varchar(150) NOT NULL,
  `degree` varchar(10) NOT NULL,
  `students` int(11) NOT NULL,
  `learn_time` int(11) NOT NULL,
  `fov_nums` int(11) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `add_time` datetime NOT NULL,
  `course_org_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_course_course_org_id_4d2c4aab_fk_organizat` (`course_org_id`),
  KEY `courses_course_teacher_id_846fa526_fk_organization_teacher_id` (`teacher_id`),
  CONSTRAINT `courses_course_course_org_id_4d2c4aab_fk_organizat` FOREIGN KEY (`course_org_id`) REFERENCES `organization_courseorg` (`id`),
  CONSTRAINT `courses_course_teacher_id_846fa526_fk_organization_teacher_id` FOREIGN KEY (`teacher_id`) REFERENCES `organization_teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES ('1', 'Django入门', '详细的入门教程', 'cj', '0', '300', '0', '0', 'courses/2018/03/001_LYF.jpg', '详细的入门教程', '2018-03-04 09:05:00', null, null);
INSERT INTO `courses_course` VALUES ('2', 'python基础', 'python基础', 'cj', '100', '100', '10', '1000', 'courses/2018/04/ti219a4502.jpg', 'python基础', '2018-04-09 22:22:00', '1', '2');
INSERT INTO `courses_course` VALUES ('3', 'python进阶', 'python进阶', 'zj', '0', '0', '0', '0', 'courses/2018/04/ti219a4502_llorTVV.jpg', 'python进阶', '2018-04-09 22:23:00', '1', '2');
INSERT INTO `courses_course` VALUES ('4', 'python 高级编程', 'python 高级编程', 'gj', '0', '0', '0', '0', 'courses/2018/04/ti219a4502_wafUI9l.jpg', 'python 高级编程', '2018-04-09 22:23:00', '1', '2');
INSERT INTO `courses_course` VALUES ('5', '前端入门', '前端入门', 'cj', '100', '100', '100', '100', 'courses/2018/04/001_LYF.jpg', '前端入门', '2018-04-11 22:54:00', '1', '1');

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `download` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_courseresource_course_id_5eba1332_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_courseresource_course_id_5eba1332_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES ('1', 'project', 'course/resource/2018/03/超震的宇宙演化全过程.mp4', '2018-03-04 09:09:00', '1');

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_lesson_course_id_16bc4882_fk_courses_course_id` (`course_id`),
  CONSTRAINT `courses_lesson_course_id_16bc4882_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES ('1', '第一节', '2018-03-04 09:07:00', '1');

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `lesson_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` (`lesson_id`),
  CONSTRAINT `courses_video_lesson_id_59f2396e_fk_courses_lesson_id` FOREIGN KEY (`lesson_id`) REFERENCES `courses_lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES ('1', 'Django安装', '2018-03-04 09:09:00', '1');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-03-01 20:06:53', '1', 'root', '1', '[{\"added\": {}}]', '2', '1');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('5', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('1', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('25', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('3', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('9', 'courses', 'course');
INSERT INTO `django_content_type` VALUES ('10', 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES ('11', 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES ('12', 'courses', 'video');
INSERT INTO `django_content_type` VALUES ('16', 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES ('17', 'operation', 'userask');
INSERT INTO `django_content_type` VALUES ('18', 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES ('19', 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES ('20', 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES ('13', 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES ('14', 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES ('15', 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'users', 'banner');
INSERT INTO `django_content_type` VALUES ('8', 'users', 'emailverifycode');
INSERT INTO `django_content_type` VALUES ('4', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('21', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('24', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('22', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('23', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('11', 'users', '0001_initial', '2018-02-27 01:53:20');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0001_initial', '2018-02-28 13:18:01');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0002_logentry_remove_auto_add', '2018-02-28 13:18:01');
INSERT INTO `django_migrations` VALUES ('14', 'courses', '0001_initial', '2018-02-28 13:18:01');
INSERT INTO `django_migrations` VALUES ('15', 'operation', '0001_initial', '2018-02-28 13:18:02');
INSERT INTO `django_migrations` VALUES ('16', 'organization', '0001_initial', '2018-02-28 13:18:02');
INSERT INTO `django_migrations` VALUES ('17', 'sessions', '0001_initial', '2018-02-28 13:18:02');
INSERT INTO `django_migrations` VALUES ('18', 'users', '0002_auto_20180228_2117', '2018-02-28 13:18:02');
INSERT INTO `django_migrations` VALUES ('19', 'xadmin', '0001_initial', '2018-03-03 13:21:55');
INSERT INTO `django_migrations` VALUES ('20', 'xadmin', '0002_log', '2018-03-03 13:21:55');
INSERT INTO `django_migrations` VALUES ('21', 'xadmin', '0003_auto_20160715_0100', '2018-03-03 13:21:56');
INSERT INTO `django_migrations` VALUES ('22', 'captcha', '0001_initial', '2018-03-29 22:09:36');
INSERT INTO `django_migrations` VALUES ('23', 'organization', '0002_courseorg_category', '2018-04-05 12:23:18');
INSERT INTO `django_migrations` VALUES ('24', 'organization', '0003_courseorg_study_nums', '2018-04-07 22:10:42');
INSERT INTO `django_migrations` VALUES ('25', 'organization', '0004_courseorg_course_nums', '2018-04-07 22:20:55');
INSERT INTO `django_migrations` VALUES ('26', 'courses', '0002_auto_20180326_1005', '2018-04-09 22:18:33');
INSERT INTO `django_migrations` VALUES ('27', 'courses', '0003_auto_20180409_2218', '2018-04-09 22:18:33');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` (`course_id`),
  KEY `operation_coursecomm_user_id_f5ff70b3_fk_users_use` (`user_id`),
  CONSTRAINT `operation_coursecomments_course_id_c88f1b6a_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_coursecomm_user_id_f5ff70b3_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES ('1', 'YJob', '18812345678', 'Django入门', '2018-03-04 17:04:00');
INSERT INTO `operation_userask` VALUES ('2', '林某某', '18812345678', '96培训-我爱学习', '2018-04-08 21:50:34');
INSERT INTO `operation_userask` VALUES ('3', '林某某', '18812345678', '96培训-我爱学习', '2018-04-08 21:50:42');
INSERT INTO `operation_userask` VALUES ('4', '林某某', '18812345678', '96培训-我爱学习', '2018-04-08 21:51:13');
INSERT INTO `operation_userask` VALUES ('6', '林某某', '18812345678', '966', '2018-04-08 22:27:36');
INSERT INTO `operation_userask` VALUES ('9', '林仁宇', '18876330709', 'Django入门', '2018-04-08 22:30:22');
INSERT INTO `operation_userask` VALUES ('10', '林仁宇', '18812345678', 'Django入门', '2018-04-08 22:30:36');
INSERT INTO `operation_userask` VALUES ('11', '林仁宇', '18965206458', 'Django入门', '2018-04-08 22:32:51');
INSERT INTO `operation_userask` VALUES ('12', '林仁宇', '18812345678', 'Django入门', '2018-04-08 22:33:20');
INSERT INTO `operation_userask` VALUES ('13', '林仁宇', '18812345678', 'Django入门1', '2018-04-08 22:55:24');
INSERT INTO `operation_userask` VALUES ('14', '林仁宇', '18876330709', 'Django入门', '2018-04-09 20:31:54');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` (`course_id`),
  KEY `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_usercourse_course_id_9f1eab2e_fk_courses_course_id` FOREIGN KEY (`course_id`) REFERENCES `courses_course` (`id`),
  CONSTRAINT `operation_usercourse_user_id_835fe81a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `operation_userfavorite_user_id_ad46a6af_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES ('3', '1', '2', '2018-04-15 20:04:08', '1');

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` varchar(200) DEFAULT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES ('1', '漳州', '花好月圆的城市', '2018-03-04 17:04:00');
INSERT INTO `organization_citydict` VALUES ('2', '北京', '首都', '2018-04-05 12:17:00');
INSERT INTO `organization_citydict` VALUES ('3', '上海', '魔都', '2018-04-05 12:17:00');
INSERT INTO `organization_citydict` VALUES ('4', '广州', '羊城', '2018-04-05 12:17:00');
INSERT INTO `organization_citydict` VALUES ('5', '深圳', '鹏城', '2018-04-05 12:17:00');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `desc` longtext NOT NULL,
  `address` varchar(200) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fov_nums` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `add_time` datetime NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(10) NOT NULL,
  `study_nums` int(11) NOT NULL,
  `course_nums` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_courseo_city_id_4a842f85_fk_organizat` (`city_id`),
  CONSTRAINT `organization_courseo_city_id_4a842f85_fk_organizat` FOREIGN KEY (`city_id`) REFERENCES `organization_citydict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES ('1', '96培训', '96培训', '芗城区96号大楼', '100', '0', 'org/2018/03/001_LYF.jpg', '2018-03-04 17:06:00', '1', 'pxjg', '100', '0');
INSERT INTO `organization_courseorg` VALUES ('2', '慕课网', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。', 'XX路XX号', '0', '0', 'org/2018/04/002_LYF.jpg', '2018-04-05 12:23:00', '2', 'pxjg', '0', '5');
INSERT INTO `organization_courseorg` VALUES ('3', '慕课网1', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。', 'XX路XX号', '0', '0', 'org/2018/04/002_LYF_uPLyK68.jpg', '2018-04-05 12:26:00', '2', 'pxjg', '0', '4');
INSERT INTO `organization_courseorg` VALUES ('4', '慕课网3', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。', 'XX路XX号', '0', '0', 'org/2018/04/002_LYF_9Pmze2B.jpg', '2018-04-05 12:26:00', '3', 'gx', '0', '2');
INSERT INTO `organization_courseorg` VALUES ('5', '慕课网4', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。', 'XX路XX号', '0', '0', 'org/2018/04/005_Car.jpg', '2018-04-05 12:27:00', '4', 'gr', '0', '3');
INSERT INTO `organization_courseorg` VALUES ('6', '慕课网5', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。', 'XX路XX号', '0', '0', 'org/2018/04/002_LYF_SAGIUVE.jpg', '2018-04-05 12:27:00', '5', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('7', '慕课网6', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。', 'XX路XX号', '0', '0', 'org/2018/04/001_LYF.jpg', '2018-04-05 12:28:00', '2', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('8', '慕课网7', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。', 'XX路XX号', '0', '0', 'org/2018/04/004_LYF.jpg', '2018-04-05 12:28:00', '3', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('9', '慕课8', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。', 'XX路XX号', '0', '0', 'org/2018/04/003_LYF.jpg', '2018-04-05 12:29:00', '2', 'pxjg', '0', '0');
INSERT INTO `organization_courseorg` VALUES ('10', '慕课9', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。', 'XX路XX号', '90', '0', 'org/2018/04/002_LYF_VI5mqz9.jpg', '2018-04-05 12:29:00', '2', 'pxjg', '90', '0');
INSERT INTO `organization_courseorg` VALUES ('11', '慕课10', '慕课网是垂直的互联网IT技能免费学习网站。以独家视频教程、在线编程工具、学习计划、问答社区为核心特色。在这里，你可以找到最好的互联网技术牛人，也可以通过免费的在线公开视频课程学习国内领先的互联网IT技术。', 'XX路XX号', '89', '0', 'org/2018/04/002_LYF_qdHi0cM.jpg', '2018-04-05 12:29:00', '2', 'pxjg', '76', '0');

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `work_years` int(11) NOT NULL,
  `work_position` varchar(20) NOT NULL,
  `points` varchar(100) NOT NULL,
  `fov_nums` int(11) NOT NULL,
  `click_nums` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `add_time` datetime NOT NULL,
  `org_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `organization_teacher_org_id_cd000a1a_fk_organizat` (`org_id`),
  CONSTRAINT `organization_teacher_org_id_cd000a1a_fk_organizat` FOREIGN KEY (`org_id`) REFERENCES `organization_courseorg` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES ('1', 'Write', '28', '1', '技术员', '活泼、开朗', '0', '0', 'teacher/2018/03/009_蜡笔小新.png', '2018-03-04 17:08:00', '1');
INSERT INTO `organization_teacher` VALUES ('2', 'YJob', '28', '3', '技术负责', '活泼开朗', '10', '200', 'teacher/2018/04/009_蜡笔小新.png', '2018-04-09 22:19:00', '2');
INSERT INTO `organization_teacher` VALUES ('3', 'YJob', '28', '3', '技术负责', '活泼开朗', '0', '0', 'teacher/2018/04/006.jpg', '2018-04-09 22:20:00', '3');

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `url` varchar(200) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES ('3', '宣传', 'banner/2018/03/003_LYF.jpg', 'http://www.youku.com', '1', '2018-03-04 09:27:00');

-- ----------------------------
-- Table structure for users_emailverifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifycode`;
CREATE TABLE `users_emailverifycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `send_type` varchar(10) NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_emailverifycode
-- ----------------------------
INSERT INTO `users_emailverifycode` VALUES ('1', '7789', '472830294@qq.com', 'register', '2018-03-03 17:00:00');
INSERT INTO `users_emailverifycode` VALUES ('2', 'o8Eno5CLhxa5CIFt', '617693357@qq.com', 'register', '2018-03-29 23:00:20');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  `nick_name` varchar(50) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(5) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$36000$h8bGmikpFh4y$E6FfWezxposxf/m1M9eibi1XSDdud/yLDv4tNhgps6c=', '2018-04-05 09:26:30', '1', 'YJob', '', '', '472830294@qq.com', '1', '1', '2018-02-28 13:35:59', '', null, '1', '', null, 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('4', 'pbkdf2_sha256$36000$8teZ9xZenHUD$1FrhBvv+vSVsacnCbrkwi+VNrbntDjvOmxYUperIqjY=', '2018-03-29 23:05:39', '0', '617693357@qq.com', '', '', '617693357@qq.com', '0', '1', '2018-03-29 23:00:20', '', null, '1', '', null, 'image/default.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2018-03-03 17:01:00', '127.0.0.1', '1', '472830294@qq.com(7789)', 'create', '已添加。', '8', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2018-03-04 09:05:10', '127.0.0.1', '1', 'Banner object', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2018-03-04 09:06:47', '127.0.0.1', '1', 'Django入门', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2018-03-04 09:07:42', '127.0.0.1', '1', 'Lesson object', 'create', '已添加。', '11', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2018-03-04 09:09:32', '127.0.0.1', '1', 'Video object', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2018-03-04 09:10:03', '127.0.0.1', '1', 'CourseResource object', 'create', '已添加。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2018-03-04 09:19:52', '127.0.0.1', null, '', 'delete', '批量删除 1 个 轮播图', null, '1');
INSERT INTO `xadmin_log` VALUES ('8', '2018-03-04 09:20:16', '127.0.0.1', '2', 'Banner object', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2018-03-04 09:27:11', '127.0.0.1', null, '', 'delete', '批量删除 1 个 轮播图', null, '1');
INSERT INTO `xadmin_log` VALUES ('10', '2018-03-04 09:28:04', '127.0.0.1', '3', '宣传', 'create', '已添加。', '7', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2018-03-04 09:28:36', '127.0.0.1', '1', 'Django入门', 'change', '修改 image', '9', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2018-03-04 17:04:30', '127.0.0.1', '1', 'UserAsk object', 'create', '已添加。', '17', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2018-03-04 17:05:07', '127.0.0.1', '1', 'CityDict object', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2018-03-04 17:06:50', '127.0.0.1', '1', 'CourseOrg object', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2018-03-04 17:08:53', '127.0.0.1', '1', 'Teacher object', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2018-04-05 12:17:32', '127.0.0.1', '2', '北京', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2018-04-05 12:17:43', '127.0.0.1', '3', '上海', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2018-04-05 12:17:50', '127.0.0.1', '4', '广州', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2018-04-05 12:18:03', '127.0.0.1', '5', '深圳', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2018-04-05 12:25:29', '127.0.0.1', '2', '慕课网', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2018-04-05 12:26:47', '127.0.0.1', '3', '慕课网1', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2018-04-05 12:27:20', '127.0.0.1', '4', '慕课网3', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2018-04-05 12:27:41', '127.0.0.1', '5', '慕课网4', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2018-04-05 12:28:02', '127.0.0.1', '6', '慕课网5', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2018-04-05 12:28:25', '127.0.0.1', '7', '慕课网6', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2018-04-05 12:28:53', '127.0.0.1', '8', '慕课网7', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2018-04-05 12:29:29', '127.0.0.1', '9', '慕课8', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2018-04-05 12:29:49', '127.0.0.1', '10', '慕课9', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2018-04-05 12:30:06', '127.0.0.1', '11', '慕课10', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2018-04-09 22:20:25', '127.0.0.1', '2', 'Teacher object', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2018-04-09 22:20:48', '127.0.0.1', '3', 'Teacher object', 'create', '已添加。', '15', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2018-04-09 22:23:14', '127.0.0.1', '2', 'python基础', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2018-04-09 22:23:48', '127.0.0.1', '3', 'python进阶', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2018-04-09 22:24:16', '127.0.0.1', '4', 'python 高级编程', 'create', '已添加。', '9', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2018-04-11 22:54:51', '127.0.0.1', '5', '前端入门', 'create', '已添加。', '9', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');
INSERT INTO `xadmin_usersettings` VALUES ('2', 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
