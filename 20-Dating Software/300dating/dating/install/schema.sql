-- ----------------------------
-- Table structure for app_lang
-- ----------------------------
DROP TABLE IF EXISTS `app_lang`;
CREATE TABLE `app_lang` (
  `id` int(9) NOT NULL,
  `lang_id` int(9) NOT NULL DEFAULT '1',
  `text` text NOT NULL,
  PRIMARY KEY (`id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app_lang
-- ----------------------------
INSERT INTO `app_lang` VALUES ('0', '1', 'Hey');
INSERT INTO `app_lang` VALUES ('1', '1', 'Upload from the library');
INSERT INTO `app_lang` VALUES ('2', '1', 'Cancel');
INSERT INTO `app_lang` VALUES ('3', '1', 'Please selected profile photo');
INSERT INTO `app_lang` VALUES ('4', '1', 'Please fill all the fields');
INSERT INTO `app_lang` VALUES ('5', '1', 'Please put a valid email');
INSERT INTO `app_lang` VALUES ('6', '1', 'Please choose your birthday');
INSERT INTO `app_lang` VALUES ('7', '1', 'Nothing found, try choosing a new location.');
INSERT INTO `app_lang` VALUES ('8', '1', 'Searching people..');
INSERT INTO `app_lang` VALUES ('9', '1', 'Super like ');
INSERT INTO `app_lang` VALUES ('10', '1', 'Visitors');
INSERT INTO `app_lang` VALUES ('11', '1', 'Matches');
INSERT INTO `app_lang` VALUES ('12', '1', 'You cant chat with');
INSERT INTO `app_lang` VALUES ('13', '1', 'is blocking you and you are not able to send message');
INSERT INTO `app_lang` VALUES ('14', '1', 'User actions');
INSERT INTO `app_lang` VALUES ('15', '1', 'Open profile');
INSERT INTO `app_lang` VALUES ('16', '1', 'Delete conversation');
INSERT INTO `app_lang` VALUES ('17', '1', 'Block');
INSERT INTO `app_lang` VALUES ('18', '1', 'Are you sure you want to block');
INSERT INTO `app_lang` VALUES ('19', '1', 'Have fun with our awesome discover game');
INSERT INTO `app_lang` VALUES ('20', '1', 'Discover baes closer to you and connect instantly');
INSERT INTO `app_lang` VALUES ('21', '1', 'Directly chat with anyone no need to match');
INSERT INTO `app_lang` VALUES ('22', '1', 'Connect with people around you');
INSERT INTO `app_lang` VALUES ('23', '1', 'Join our community');
INSERT INTO `app_lang` VALUES ('24', '1', 'Dont have account?');
INSERT INTO `app_lang` VALUES ('25', '1', 'Sign up now');
INSERT INTO `app_lang` VALUES ('26', '1', 'Next');
INSERT INTO `app_lang` VALUES ('27', '1', 'Already have account?');
INSERT INTO `app_lang` VALUES ('28', '1', 'A last question befote complete the registration, what do you want to meet');
INSERT INTO `app_lang` VALUES ('29', '1', 'Select what you would like to meet, you can choose one or both genders');
INSERT INTO `app_lang` VALUES ('30', '1', 'Creating your account');
INSERT INTO `app_lang` VALUES ('31', '1', 'please tell us a bit more about you');
INSERT INTO `app_lang` VALUES ('32', '1', 'Wich day you born?');
INSERT INTO `app_lang` VALUES ('33', '1', 'Are you man or woman');
INSERT INTO `app_lang` VALUES ('34', '1', 'DISLIKE');
INSERT INTO `app_lang` VALUES ('35', '1', 'LIKE');
INSERT INTO `app_lang` VALUES ('36', '1', 'Online now');
INSERT INTO `app_lang` VALUES ('37', '1', 'INSTALL APP AND GET ');
INSERT INTO `app_lang` VALUES ('38', '1', 'CREDITS');
INSERT INTO `app_lang` VALUES ('39', '1', 'Liked you');
INSERT INTO `app_lang` VALUES ('40', '1', 'Settings');
INSERT INTO `app_lang` VALUES ('41', '1', 'GET PREMIUM ACCESS!');
INSERT INTO `app_lang` VALUES ('42', '1', 'Logout');
INSERT INTO `app_lang` VALUES ('43', '1', 'Recover password');
INSERT INTO `app_lang` VALUES ('44', '1', 'Not now');
INSERT INTO `app_lang` VALUES ('45', '1', 'Buy more daily chat');
INSERT INTO `app_lang` VALUES ('46', '1', 'Get ');
INSERT INTO `app_lang` VALUES ('47', '1', 'new daily chats for ');
INSERT INTO `app_lang` VALUES ('48', '1', 'Credits');
INSERT INTO `app_lang` VALUES ('49', '1', 'Send gifts');
INSERT INTO `app_lang` VALUES ('50', '1', 'Get more attention with our awesome gifts');
INSERT INTO `app_lang` VALUES ('51', '1', 'Unlock private photos');
INSERT INTO `app_lang` VALUES ('52', '1', 'Get acces to the private photos of any profile!');
INSERT INTO `app_lang` VALUES ('53', '1', 'Credits packages');
INSERT INTO `app_lang` VALUES ('54', '1', 'Payment method');
INSERT INTO `app_lang` VALUES ('55', '1', 'Credit card');
INSERT INTO `app_lang` VALUES ('56', '1', 'Daily chat');
INSERT INTO `app_lang` VALUES ('57', '1', 'Connect with more people is the clue for a good start');
INSERT INTO `app_lang` VALUES ('58', '1', 'Access to all private photos');
INSERT INTO `app_lang` VALUES ('59', '1', 'See the private photo of all users without asking for  permission');
INSERT INTO `app_lang` VALUES ('60', '1', 'Start videocalls');
INSERT INTO `app_lang` VALUES ('61', '1', 'We only all low to  our  premium useres to do multiplatform videocalls, what are you waiting for?');
INSERT INTO `app_lang` VALUES ('62', '1', 'See who liked you');
INSERT INTO `app_lang` VALUES ('63', '1', 'Dont wait for the match , see who  is liking  you instlantly');
INSERT INTO `app_lang` VALUES ('64', '1', 'See who visited you');
INSERT INTO `app_lang` VALUES ('65', '1', 'Check anytime who is viewing your profile and start  a conversation');
INSERT INTO `app_lang` VALUES ('66', '1', 'Premium badge');
INSERT INTO `app_lang` VALUES ('67', '1', 'Be different, be unique with our premium badge for you');
INSERT INTO `app_lang` VALUES ('68', '1', 'Premium packages');
INSERT INTO `app_lang` VALUES ('69', '1', 'Days');
INSERT INTO `app_lang` VALUES ('70', '1', 'You have no matches yet');
INSERT INTO `app_lang` VALUES ('71', '1', 'You dont have likes yet');
INSERT INTO `app_lang` VALUES ('72', '1', 'You have not liked anyone yet');
INSERT INTO `app_lang` VALUES ('73', '1', 'Play our encounter game');
INSERT INTO `app_lang` VALUES ('74', '1', 'Users liked you!');
INSERT INTO `app_lang` VALUES ('75', '1', 'Get premium for see who liked your profile');
INSERT INTO `app_lang` VALUES ('76', '1', 'Get premium');
INSERT INTO `app_lang` VALUES ('77', '1', 'My fans');
INSERT INTO `app_lang` VALUES ('78', '1', 'My Matches');
INSERT INTO `app_lang` VALUES ('79', '1', 'My likes');
INSERT INTO `app_lang` VALUES ('80', '1', 'Noone visited your profile yet');
INSERT INTO `app_lang` VALUES ('81', '1', 'Users visited your profile');
INSERT INTO `app_lang` VALUES ('82', '1', 'Get premium for see who is looking at yout profile');
INSERT INTO `app_lang` VALUES ('83', '1', 'Done');
INSERT INTO `app_lang` VALUES ('84', '1', 'Discovery settings');
INSERT INTO `app_lang` VALUES ('85', '1', 'Location');
INSERT INTO `app_lang` VALUES ('86', '1', 'Maximum Distance');
INSERT INTO `app_lang` VALUES ('87', '1', 'All the city');
INSERT INTO `app_lang` VALUES ('88', '1', 'All the country');
INSERT INTO `app_lang` VALUES ('89', '1', 'All the world');
INSERT INTO `app_lang` VALUES ('90', '1', 'Gender');
INSERT INTO `app_lang` VALUES ('91', '1', 'Age range');
INSERT INTO `app_lang` VALUES ('92', '1', 'Online users');
INSERT INTO `app_lang` VALUES ('93', '1', 'Notifications');
INSERT INTO `app_lang` VALUES ('94', '1', 'New Matches');
INSERT INTO `app_lang` VALUES ('95', '1', 'Message Likes');
INSERT INTO `app_lang` VALUES ('96', '1', 'Messages');
INSERT INTO `app_lang` VALUES ('97', '1', 'Visits');
INSERT INTO `app_lang` VALUES ('98', '1', 'Legal');
INSERT INTO `app_lang` VALUES ('99', '1', 'Help and Support');
INSERT INTO `app_lang` VALUES ('100', '1', 'Privacy Policy');
INSERT INTO `app_lang` VALUES ('101', '1', 'Terms of Service');
INSERT INTO `app_lang` VALUES ('102', '1', 'Sent you a gift');
INSERT INTO `app_lang` VALUES ('103', '1', 'Recent');
INSERT INTO `app_lang` VALUES ('104', '1', 'Unread');
INSERT INTO `app_lang` VALUES ('105', '1', 'Contacts');
INSERT INTO `app_lang` VALUES ('106', '1', 'Load');
INSERT INTO `app_lang` VALUES ('107', '1', 'message more');
INSERT INTO `app_lang` VALUES ('108', '1', 'Sent this gift to');
INSERT INTO `app_lang` VALUES ('109', '1', 'This gift cost');
INSERT INTO `app_lang` VALUES ('110', '1', 'Send');
INSERT INTO `app_lang` VALUES ('111', '1', 'Search a GIF...');
INSERT INTO `app_lang` VALUES ('112', '1', 'You have reached the max daily chat');
INSERT INTO `app_lang` VALUES ('113', '1', 'You have reached the max daily conversation allowed please buy more with credits or get extra');
INSERT INTO `app_lang` VALUES ('114', '1', 'Buy more daily chat');
INSERT INTO `app_lang` VALUES ('115', '1', 'You have reached the max daily conversation allowed please buy more with credits');
INSERT INTO `app_lang` VALUES ('116', '1', 'Show our self to everyone');
INSERT INTO `app_lang` VALUES ('117', '1', '\r\nEnd search result');
INSERT INTO `app_lang` VALUES ('118', '1', '\r\nPlease broaden your search filter to get more results.');
INSERT INTO `app_lang` VALUES ('119', '1', 'Get seen by everyone');
INSERT INTO `app_lang` VALUES ('120', '1', 'Add yourself to the spotlight and get seen by everyone');
INSERT INTO `app_lang` VALUES ('121', '1', 'This service cost');
INSERT INTO `app_lang` VALUES ('122', '1', 'Add to spotlight');
INSERT INTO `app_lang` VALUES ('123', '1', 'Edit info');
INSERT INTO `app_lang` VALUES ('124', '1', 'Extended info');
INSERT INTO `app_lang` VALUES ('125', '1', 'This user dont have a bio message');
INSERT INTO `app_lang` VALUES ('126', '1', 'Lives in');
INSERT INTO `app_lang` VALUES ('127', '1', 'Visited you');
INSERT INTO `app_lang` VALUES ('128', '1', 'You have sent a gif');
INSERT INTO `app_lang` VALUES ('129', '1', 'sent you a gif');
INSERT INTO `app_lang` VALUES ('130', '1', 'You have sent a photo');
INSERT INTO `app_lang` VALUES ('131', '1', 'sent you a photo');
INSERT INTO `app_lang` VALUES ('132', '1', 'few seconds');
INSERT INTO `app_lang` VALUES ('133', '1', 'seconds');
INSERT INTO `app_lang` VALUES ('134', '1', 'hour');
INSERT INTO `app_lang` VALUES ('135', '1', 'hours');
INSERT INTO `app_lang` VALUES ('136', '1', 'day');
INSERT INTO `app_lang` VALUES ('137', '1', 'days');
INSERT INTO `app_lang` VALUES ('138', '1', 'month');
INSERT INTO `app_lang` VALUES ('139', '1', 'months');
INSERT INTO `app_lang` VALUES ('140', '1', 'year');
INSERT INTO `app_lang` VALUES ('141', '1', 'years');
INSERT INTO `app_lang` VALUES ('142', '1', 'Its a match!');
INSERT INTO `app_lang` VALUES ('143', '1', 'You and ');
INSERT INTO `app_lang` VALUES ('144', '1', 'have liked each other');
INSERT INTO `app_lang` VALUES ('145', '1', 'Send message');
INSERT INTO `app_lang` VALUES ('146', '1', 'Keep playing');
INSERT INTO `app_lang` VALUES ('147', '1', 'Meet new people');
INSERT INTO `app_lang` VALUES ('148', '1', 'Find, connect and chat with new people, its already close by.');
INSERT INTO `app_lang` VALUES ('149', '1', 'Email');
INSERT INTO `app_lang` VALUES ('150', '1', 'Password');
INSERT INTO `app_lang` VALUES ('151', '1', 'Enter');
INSERT INTO `app_lang` VALUES ('152', '1', 'Recover');
INSERT INTO `app_lang` VALUES ('153', '1', 'Create new account');
INSERT INTO `app_lang` VALUES ('154', '1', 'Forget password?');
INSERT INTO `app_lang` VALUES ('155', '1', 'Login your account');
INSERT INTO `app_lang` VALUES ('156', '1', 'Privacy');
INSERT INTO `app_lang` VALUES ('157', '1', 'Conditions');
INSERT INTO `app_lang` VALUES ('158', '1', 'Name');
INSERT INTO `app_lang` VALUES ('159', '1', 'Connect with facebook');
INSERT INTO `app_lang` VALUES ('160', '1', 'Will you take the first step?');
INSERT INTO `app_lang` VALUES ('161', '1', 'Send a gift');
INSERT INTO `app_lang` VALUES ('162', '1', 'Expand your search');
INSERT INTO `app_lang` VALUES ('163', '1', 'Sorry, no one fits your preferences');
INSERT INTO `app_lang` VALUES ('164', '1', 'Search for people of other ages');
INSERT INTO `app_lang` VALUES ('165', '1', 'Change your preferences');
INSERT INTO `app_lang` VALUES ('166', '1', 'Current location');
INSERT INTO `app_lang` VALUES ('167', '1', 'Gifts');
INSERT INTO `app_lang` VALUES ('168', '1', 'Score');
INSERT INTO `app_lang` VALUES ('169', '1', 'Send a gift and start to chat');
INSERT INTO `app_lang` VALUES ('170', '1', 'About me');
INSERT INTO `app_lang` VALUES ('171', '1', 'out of');
INSERT INTO `app_lang` VALUES ('172', '1', 'people liked here');
INSERT INTO `app_lang` VALUES ('173', '1', 'Smoking');
INSERT INTO `app_lang` VALUES ('174', '1', 'I am here to');
INSERT INTO `app_lang` VALUES ('175', '1', 'Make new friends');
INSERT INTO `app_lang` VALUES ('176', '1', 'Relationship');
INSERT INTO `app_lang` VALUES ('177', '1', 'Sexual orientation');
INSERT INTO `app_lang` VALUES ('178', '1', 'Appearance');
INSERT INTO `app_lang` VALUES ('179', '1', 'Living');
INSERT INTO `app_lang` VALUES ('180', '1', 'Drink');
INSERT INTO `app_lang` VALUES ('181', '1', 'I speak');
INSERT INTO `app_lang` VALUES ('182', '1', 'Profile verification');
INSERT INTO `app_lang` VALUES ('183', '1', 'Verified');
INSERT INTO `app_lang` VALUES ('184', '1', 'Block or Report');
INSERT INTO `app_lang` VALUES ('185', '1', 'Ops');
INSERT INTO `app_lang` VALUES ('186', '1', 'Something went wrong. We are doing everything to fix it and should be up and running soon');
INSERT INTO `app_lang` VALUES ('187', '1', 'Refresh');
INSERT INTO `app_lang` VALUES ('188', '1', 'Mesagges');
INSERT INTO `app_lang` VALUES ('189', '1', 'Too many messages? Receive only messages from verified users');
INSERT INTO `app_lang` VALUES ('190', '1', 'Activate');
INSERT INTO `app_lang` VALUES ('191', '1', 'No thanks\r\n');
INSERT INTO `app_lang` VALUES ('192', '1', 'All');
INSERT INTO `app_lang` VALUES ('193', '1', 'Not read');
INSERT INTO `app_lang` VALUES ('194', '1', 'Online');
INSERT INTO `app_lang` VALUES ('195', '1', 'Highlight in ');
INSERT INTO `app_lang` VALUES ('196', '1', 'Increase your chances');
INSERT INTO `app_lang` VALUES ('197', '1', 'Make the girls see you more in Encounters');
INSERT INTO `app_lang` VALUES ('198', '1', 'Put your profile in the top of the search results and make them see you more in');
INSERT INTO `app_lang` VALUES ('199', '1', 'Rise up');
INSERT INTO `app_lang` VALUES ('200', '1', 'Super Powers');
INSERT INTO `app_lang` VALUES ('201', '1', 'Popularity');
INSERT INTO `app_lang` VALUES ('202', '1', 'Low');
INSERT INTO `app_lang` VALUES ('203', '1', 'Credits');
INSERT INTO `app_lang` VALUES ('204', '1', 'Add me here');
INSERT INTO `app_lang` VALUES ('205', '1', 'Get seen by millions');
INSERT INTO `app_lang` VALUES ('206', '1', 'Encounters');
INSERT INTO `app_lang` VALUES ('207', '1', 'People Nearby');
INSERT INTO `app_lang` VALUES ('208', '1', 'Price');
INSERT INTO `app_lang` VALUES ('209', '1', 'Is writing');
INSERT INTO `app_lang` VALUES ('210', '1', 'Send gift to');
INSERT INTO `app_lang` VALUES ('211', '1', 'Wait until you respond or highlight with a gift');
INSERT INTO `app_lang` VALUES ('212', '1', 'Break the ice and ask');
INSERT INTO `app_lang` VALUES ('213', '1', 'who likes');
INSERT INTO `app_lang` VALUES ('214', '1', 'Delivered');
INSERT INTO `app_lang` VALUES ('215', '1', 'Read');
INSERT INTO `app_lang` VALUES ('216', '1', 'Last connection\r\n');
INSERT INTO `app_lang` VALUES ('217', '1', 'Add photos');
INSERT INTO `app_lang` VALUES ('218', '1', 'Very low');
INSERT INTO `app_lang` VALUES ('219', '1', 'Age');
INSERT INTO `app_lang` VALUES ('220', '1', 'Bio');
INSERT INTO `app_lang` VALUES ('221', '1', 'Upload Images');
INSERT INTO `app_lang` VALUES ('222', '1', 'Put the Spotlight on you!');
INSERT INTO `app_lang` VALUES ('223', '1', 'Put your best profile photo in the Spotlight so thousands of women will notice you straight away.');
INSERT INTO `app_lang` VALUES ('224', '1', 'Get featured!');
INSERT INTO `app_lang` VALUES ('225', '1', 'Give your inbox a liftoff!');
INSERT INTO `app_lang` VALUES ('226', '1', 'Boosting your profile will get people scrambling to start a conversation with you! Each Boost is optimised to give you a days worth of activity in a 15 minute burst.');
INSERT INTO `app_lang` VALUES ('227', '1', 'Put the Spotlight on you!');
INSERT INTO `app_lang` VALUES ('228', '1', 'Put your best profile photo in the Spotlight so thousands of women will notice you straight away.');
INSERT INTO `app_lang` VALUES ('229', '1', 'First place is for winners!');
INSERT INTO `app_lang` VALUES ('230', '1', 'A lot of people are looking for you. The best and easiest way to get noticed is by putting yourself First in Search. Thats 24 hours of staying at the top of the search results!');
INSERT INTO `app_lang` VALUES ('231', '1', 'Get seen 100 times in Discover!');
INSERT INTO `app_lang` VALUES ('232', '1', 'Want to know a really easy way to get new matches fast? We can feature you 100 times in Discover,\r\nso others can easily find you!');
INSERT INTO `app_lang` VALUES ('233', '1', 'Put yourself first!');
INSERT INTO `app_lang` VALUES ('234', '1', 'Get seen 100 times in Discover!');
INSERT INTO `app_lang` VALUES ('235', '1', 'Get seen 100x in Discover');
INSERT INTO `app_lang` VALUES ('236', '1', 'Share!');
INSERT INTO `app_lang` VALUES ('237', '1', 'Share profile');
INSERT INTO `app_lang` VALUES ('238', '1', 'Photos');
INSERT INTO `app_lang` VALUES ('239', '1', 'Current location');
INSERT INTO `app_lang` VALUES ('240', '1', 'Discover game');
INSERT INTO `app_lang` VALUES ('241', '1', 'Have fun with our awesome discover game, directly chat with anyone');
INSERT INTO `app_lang` VALUES ('242', '1', 'Meet people nearby');
INSERT INTO `app_lang` VALUES ('243', '1', 'Meet fun people living in your city, or from any place around the world');
INSERT INTO `app_lang` VALUES ('244', '1', 'Together is better');
INSERT INTO `app_lang` VALUES ('245', '1', 'Messages, favorites, views and people that likes you, All in the same place.');
INSERT INTO `app_lang` VALUES ('246', '1', 'Register');
INSERT INTO `app_lang` VALUES ('247', '1', 'No');
INSERT INTO `app_lang` VALUES ('248', '1', 'Yes');
INSERT INTO `app_lang` VALUES ('249', '1', 'Offline');
INSERT INTO `app_lang` VALUES ('252', '1', 'Has view your profile, take a look!');
INSERT INTO `app_lang` VALUES ('253', '1', 'Has Liked your profile, thats encouraging!');
INSERT INTO `app_lang` VALUES ('254', '1', 'Someone likes you!');
INSERT INTO `app_lang` VALUES ('255', '1', 'Become premium for find out who is');
INSERT INTO `app_lang` VALUES ('256', '1', 'Likes you, check out ');
INSERT INTO `app_lang` VALUES ('257', '1', 'profile to see if you like too');
INSERT INTO `app_lang` VALUES ('258', '1', 'You are..');
INSERT INTO `app_lang` VALUES ('259', '1', 'You are looking for..');

-- ----------------------------
-- Table structure for blocked_photos
-- ----------------------------
DROP TABLE IF EXISTS `blocked_photos`;
CREATE TABLE `blocked_photos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `u1` int(9) NOT NULL,
  `u2` int(9) NOT NULL,
  PRIMARY KEY (`id`,`u1`,`u2`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blocked_photos
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `s_id` int(9) NOT NULL,
  `r_id` int(9) NOT NULL,
  `message` text NOT NULL,
  `time` varchar(100) NOT NULL,
  `seen` int(1) NOT NULL DEFAULT '0',
  `notification` int(1) NOT NULL DEFAULT '0',
  `photo` int(1) NOT NULL DEFAULT '0',
  `access` int(1) NOT NULL DEFAULT '0',
  `fake` int(1) DEFAULT '0',
  `online_day` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `SID` (`s_id`) USING BTREE,
  KEY `RID` (`r_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat
-- ----------------------------

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `name` varchar(200) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(800) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `videocall` varchar(100) NOT NULL,
  `fb_app_id` varchar(300) NOT NULL,
  `fb_app_secret` varchar(300) NOT NULL,
  `theme` varchar(200) NOT NULL,
  `logo` varchar(400) NOT NULL,
  `ads` text NOT NULL,
  `photo_review` int(1) DEFAULT '0',
  `paypal` varchar(100) DEFAULT NULL,
  `paygol` varchar(100) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `ads2` text,
  `email` varchar(100) DEFAULT NULL,
  `terms` longtext,
  `privacy` longtext,
  `theme_mobile` varchar(100) DEFAULT NULL,
  `theme_landing` varchar(100) DEFAULT NULL,
  `theme_email` varchar(100) DEFAULT NULL,
  `email_verification` int(1) DEFAULT '0',
  `free_credits` int(9) DEFAULT '0',
  `free_premium` int(9) DEFAULT '0',
  `s3` varchar(200) DEFAULT NULL,
  `s3_key` varchar(200) DEFAULT NULL,
  `stripe_pub` varchar(200) DEFAULT NULL,
  `stripe_secret` varchar(200) DEFAULT NULL,
  `fortumo_service` varchar(200) DEFAULT NULL,
  `fortumo_secret` varchar(200) DEFAULT NULL,
  `twitter_key` varchar(200) DEFAULT NULL,
  `twitter_secret` varchar(200) DEFAULT NULL,
  `instagram_key` varchar(200) DEFAULT NULL,
  `instagram_secret` varchar(200) DEFAULT NULL,
  `google_key` varchar(200) DEFAULT NULL,
  `google_secret` varchar(200) DEFAULT NULL,
  `s3_bucket` varchar(200) DEFAULT NULL,
  `css` longtext,
  `js` longtext,
  `google_maps` varchar(200) DEFAULT NULL,
  `version` varchar(200) DEFAULT NULL,
  `logo_landing` varchar(200) DEFAULT NULL,
  `main_color` varchar(200) DEFAULT NULL,
  `visit_back` int(3) DEFAULT '7',
  `like_back` int(3) DEFAULT '1',
  `client` varchar(200) DEFAULT NULL,
  `fAI` varchar(255) DEFAULT NULL,
  `fapi` varchar(255) DEFAULT NULL,
  `fcountry` varchar(255) DEFAULT NULL,
  `pusher_id` varchar(200) DEFAULT '0',
  `mobile_site` varchar(200) DEFAULT '',
  `popular_user` int(11) DEFAULT NULL,
  `pusher_key` varchar(200) DEFAULT NULL,
  `pusher_secret` varchar(200) DEFAULT NULL,
  `app_ios` varchar(200) DEFAULT NULL,
  `app_android` varchar(200) DEFAULT NULL,
  `wm` longtext,
  `fapiKey` varchar(200) DEFAULT NULL,
  `ads3` text,
  `fAiChance` int(3) DEFAULT NULL,
  `dc` varchar(100) DEFAULT NULL,
  `fEngage` varchar(199) DEFAULT NULL,
  `fEngageTime` int(11) DEFAULT NULL,
  `fEngageLimit` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('Dating', ' Meet new people around you', 'Meet beatiful girls and boys in your area', 'videocalls,friends,twitter,chat,meet,people,friends,facebook,instagram', '1', 'demopds.herokuapp.com', '', '', 'default', 'themes/default/images/logo.png', '<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n<!-- belloo footer -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:inline-block;width:728px;height:90px\"\r\n     data-ad-client=\"ca-pub-4088683558391542\"\r\n     data-ad-slot=\"2660689456\"></ins>\r\n<script>\r\n(adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '1', 'xohansosa@gmail.com', '333314', 'USD', '<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n<!-- 160x600 -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:inline-block;width:160px;height:600px\"\r\n     data-ad-client=\"ca-pub-4088683558391542\"\r\n     data-ad-slot=\"4672662552\"></ins>\r\n<script>\r\n(adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', 'no-reply@lloo.date', 'Your site terms here , this spaace allow html code', 'Your site privacy here , this spaace allow html code', 'mobile', 'landing1', 'email', '0', '50', '0', '', '', null, '', '', '', '', '', '', '', '', '', '', '<!-- add your custom css here -->\r\n<style>\r\n\r\n\r\n</style>', '<!-- add your custom js here  (Google analytics, FB pixel etc )-->\r\n<script>\r\n\r\n</script>', 'AIzaSyAOooWSdjbbXT7-3MkMx2dDlfk-m0T-4Y0', '2.0', 'themes/default/images/logo.png', '#FF192C', '100', '30', 'ATO', 'No', 'No', 'United states', '381524', '/mobile', '100', 'b0b15fcac140c816ccbe', '4c5e530f74f2343f8f58', 'd', null, 'Welcome , have fun meeting new people in our site!', 'CC6hgG-9UK2wLTqxwX-Mheh9FKw', '<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n                <!-- 200 x 200 -->\r\n                <ins class=\"adsbygoogle\"\r\n                     style=\"display:inline-block;width:200px;height:200px\"\r\n                     data-ad-client=\"ca-pub-4088683558391542\"\r\n                     data-ad-slot=\"4639036754\"></ins>\r\n<script>\r\n(adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', '30', 'KM', 'Yes', '10', '100');

-- ----------------------------
-- Table structure for config_accounts
-- ----------------------------
DROP TABLE IF EXISTS `config_accounts`;
CREATE TABLE `config_accounts` (
  `type` int(1) NOT NULL,
  `chat` int(9) NOT NULL,
  `videocall` int(1) NOT NULL,
  `private` int(1) NOT NULL,
  `visits` int(1) DEFAULT NULL,
  `fans` int(1) DEFAULT NULL,
  `mobile_ads` int(1) DEFAULT NULL,
  `likes` int(5) DEFAULT NULL,
  `slikes` int(5) DEFAULT NULL,
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_accounts
-- ----------------------------
INSERT INTO `config_accounts` VALUES ('1', '3', '1', '0', '0', '0', '1', '50', '1');
INSERT INTO `config_accounts` VALUES ('2', '50', '1', '1', '1', '1', '0', '5000', '10');

-- ----------------------------
-- Table structure for config_app
-- ----------------------------
DROP TABLE IF EXISTS `config_app`;
CREATE TABLE `config_app` (
  `first_color` varchar(200) DEFAULT NULL,
  `second_color` varchar(200) DEFAULT NULL,
  `logo_login` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `ads` longtext,
  `ads2` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_app
-- ----------------------------
INSERT INTO `config_app` VALUES ('', '', 'themes/default/images/logo.png', 'themes/default/images/logo.png', null, null);

-- ----------------------------
-- Table structure for config_credits
-- ----------------------------
DROP TABLE IF EXISTS `config_credits`;
CREATE TABLE `config_credits` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `credits` int(9) NOT NULL,
  `price` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_credits
-- ----------------------------
INSERT INTO `config_credits` VALUES ('1', '500', '3.99');
INSERT INTO `config_credits` VALUES ('2', '1000', '6.99');
INSERT INTO `config_credits` VALUES ('3', '3000', '12.99');
INSERT INTO `config_credits` VALUES ('4', '5000', '24.99');
INSERT INTO `config_credits` VALUES ('5', '10000', '44.99');

-- ----------------------------
-- Table structure for config_email
-- ----------------------------
DROP TABLE IF EXISTS `config_email`;
CREATE TABLE `config_email` (
  `host` varchar(100) NOT NULL DEFAULT '',
  `port` int(9) DEFAULT NULL,
  `user` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`host`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_email
-- ----------------------------
INSERT INTO `config_email` VALUES ('', '0', '', '');

-- ----------------------------
-- Table structure for config_genders
-- ----------------------------
DROP TABLE IF EXISTS `config_genders`;
CREATE TABLE `config_genders` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `lang_id` int(2) NOT NULL,
  `sex` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of config_genders
-- ----------------------------
INSERT INTO `config_genders` VALUES ('1', 'Male', '1', '1');
INSERT INTO `config_genders` VALUES ('1', 'Hombre', '2', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '3', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '4', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '5', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '6', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '7', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '8', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '9', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '10', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '11', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '12', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '13', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '14', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '15', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '16', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '17', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '18', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '19', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '20', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '21', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '22', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '23', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '24', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '25', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '26', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '27', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '28', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '29', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '30', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '31', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '32', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '33', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '34', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '35', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '36', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '37', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '38', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '39', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '40', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '41', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '42', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '43', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '44', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '45', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '46', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '47', '1');
INSERT INTO `config_genders` VALUES ('1', 'Male', '48', '1');
INSERT INTO `config_genders` VALUES ('2', 'Female', '1', '2');
INSERT INTO `config_genders` VALUES ('2', 'Mujer', '2', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '3', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '4', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '5', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '6', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '7', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '8', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '9', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '10', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '11', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '12', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '13', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '14', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '15', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '16', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '17', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '18', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '19', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '20', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '21', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '22', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '23', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '24', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '25', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '26', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '27', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '28', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '29', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '30', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '31', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '32', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '33', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '34', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '35', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '36', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '37', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '38', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '39', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '40', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '41', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '42', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '43', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '44', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '45', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '46', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '47', '2');
INSERT INTO `config_genders` VALUES ('2', 'Female', '48', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '1', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbiana', '2', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '3', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '4', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '5', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '6', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '7', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '8', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '9', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '10', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '11', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '12', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '13', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '14', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '15', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '16', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '17', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '18', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '19', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '20', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '21', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '22', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '23', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '24', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '25', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '26', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '27', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '28', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '29', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '30', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '31', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '32', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '33', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '34', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '35', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '36', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '37', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '38', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '39', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '40', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '41', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '42', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '43', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '44', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '45', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '46', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '47', '2');
INSERT INTO `config_genders` VALUES ('3', 'Lesbian', '48', '2');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '1', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '2', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '3', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '4', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '5', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '6', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '7', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '8', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '9', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '10', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '11', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '12', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '13', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '14', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '15', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '16', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '17', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '18', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '19', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '20', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '21', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '22', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '23', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '24', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '25', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '26', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '27', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '28', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '29', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '30', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '31', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '32', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '33', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '34', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '35', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '36', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '37', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '38', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '39', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '40', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '41', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '42', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '43', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '44', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '45', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '46', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '47', '1');
INSERT INTO `config_genders` VALUES ('4', 'Gay', '48', '1');

-- ----------------------------
-- Table structure for config_premium
-- ----------------------------
DROP TABLE IF EXISTS `config_premium`;
CREATE TABLE `config_premium` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `days` int(9) NOT NULL,
  `price` int(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_premium
-- ----------------------------
INSERT INTO `config_premium` VALUES ('1', '30', '9');
INSERT INTO `config_premium` VALUES ('2', '90', '25');
INSERT INTO `config_premium` VALUES ('3', '180', '40');

-- ----------------------------
-- Table structure for config_prices
-- ----------------------------
DROP TABLE IF EXISTS `config_prices`;
CREATE TABLE `config_prices` (
  `private` int(9) NOT NULL,
  `spotlight` int(9) NOT NULL,
  `chat` int(9) NOT NULL,
  `boost` int(9) NOT NULL,
  `first` int(9) DEFAULT NULL,
  `discover` int(9) DEFAULT NULL,
  PRIMARY KEY (`private`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_prices
-- ----------------------------
INSERT INTO `config_prices` VALUES ('200', '300', '250', '200', '350', '300');

-- ----------------------------
-- Table structure for config_profile_answers
-- ----------------------------
DROP TABLE IF EXISTS `config_profile_answers`;
CREATE TABLE `config_profile_answers` (
  `id` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `lang_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`qid`,`lang_id`),
  UNIQUE KEY `KEY` (`id`,`qid`,`lang_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of config_profile_answers
-- ----------------------------
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '1');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '1');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '1');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '1');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '1');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '1');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '1');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '1');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '1');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '1');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '1');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '1');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '1');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '1');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '1');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '1');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '1');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '1');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '1');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '1');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '1');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '1');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '1');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '1');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'En una relacion', '2');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '3');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '4');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '5');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '6');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '7');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '8');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '9');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '10');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '11');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '12');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '13');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '14');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '15');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '16');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '17');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '18');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '19');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '20');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '21');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '22');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '23');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '24');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '25');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '26');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '27');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '28');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '29');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '30');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '31');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '32');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '33');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '34');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '35');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '36');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '37');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '38');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '39');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '40');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '41');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '42');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '43');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '44');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '45');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '46');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '47');
INSERT INTO `config_profile_answers` VALUES ('2', '1', 'Taken', '48');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Soltero', '2');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '3');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '4');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '5');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '6');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '7');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '8');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '9');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '10');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '11');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '12');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '13');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '14');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '15');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '16');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '17');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '18');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '19');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '20');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '21');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '22');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '23');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '24');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '25');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '26');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '27');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '28');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '29');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '30');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '31');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '32');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '33');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '34');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '35');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '36');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '37');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '38');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '39');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '40');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '41');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '42');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '43');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '44');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '45');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '46');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '47');
INSERT INTO `config_profile_answers` VALUES ('1', '1', 'Single', '48');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Relacion abierta', '2');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '3');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '4');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '5');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '6');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '7');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '8');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '9');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '10');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '11');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '12');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '13');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '14');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '15');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '16');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '17');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '18');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '19');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '20');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '21');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '22');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '23');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '24');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '25');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '26');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '27');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '28');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '29');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '30');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '31');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '32');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '33');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '34');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '35');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '36');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '37');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '38');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '39');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '40');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '41');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '42');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '43');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '44');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '45');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '46');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '47');
INSERT INTO `config_profile_answers` VALUES ('3', '1', 'Open', '48');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '2');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '48');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '47');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '46');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '45');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '44');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '43');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '42');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '41');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '40');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '39');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '38');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '37');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '36');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '35');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '34');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '33');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '32');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '31');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '30');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '29');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '28');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '27');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '26');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '25');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '24');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '23');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '22');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '21');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '20');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '19');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '18');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '17');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '16');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '15');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '14');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '13');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '12');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '11');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '10');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '9');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '8');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '7');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '6');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '5');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '4');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '3');
INSERT INTO `config_profile_answers` VALUES ('2', '2', 'Open-Minded', '2');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '3');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '4');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '5');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '6');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '7');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '8');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '9');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '10');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '11');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '12');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '13');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '14');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '15');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '16');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '17');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '18');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '19');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '20');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '21');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '22');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '23');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '24');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '25');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '26');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '27');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '28');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '29');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '30');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '31');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '32');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '33');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '34');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '35');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '36');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '37');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '38');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '39');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '40');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '41');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '42');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '43');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '44');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '45');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '46');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '47');
INSERT INTO `config_profile_answers` VALUES ('4', '2', 'Bisexual', '48');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '2');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '3');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '4');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '5');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '6');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '7');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '8');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '9');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '10');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '11');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '12');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '13');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '14');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '15');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '16');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '17');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '18');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '19');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '20');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '21');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '22');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '23');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '24');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '25');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '26');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '27');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '28');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '29');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '30');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '31');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '32');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '33');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '34');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '35');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '36');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '37');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '38');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '39');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '40');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '41');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '42');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '43');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '44');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '45');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '46');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '47');
INSERT INTO `config_profile_answers` VALUES ('3', '2', 'Straight', '48');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '2');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '3');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '4');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '5');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '6');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '7');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '8');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '9');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '10');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '11');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '12');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '13');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '14');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '15');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '16');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '17');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '18');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '19');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '20');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '21');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '22');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '23');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '24');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '25');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '26');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '27');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '28');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '29');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '30');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '31');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '32');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '33');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '34');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '35');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '36');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '37');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '38');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '39');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '40');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '41');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '42');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '43');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '44');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '45');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '46');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '47');
INSERT INTO `config_profile_answers` VALUES ('1', '2', 'Gay', '48');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '2');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '3');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '4');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '5');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '6');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '7');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '8');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '9');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '10');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '11');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '12');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '13');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '14');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '15');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '16');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '17');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '18');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '19');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '20');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '21');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '22');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '23');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '24');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '25');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '26');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '27');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '28');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '29');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '30');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '31');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '32');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '33');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '34');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '35');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '36');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '37');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '38');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '39');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '40');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '41');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '42');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '43');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '44');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '45');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '46');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '47');
INSERT INTO `config_profile_answers` VALUES ('2', '5', 'Black', '48');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '2');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '3');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '4');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '5');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '6');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '7');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '8');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '9');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '10');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '11');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '12');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '13');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '14');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '15');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '16');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '17');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '18');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '19');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '20');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '21');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '22');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '23');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '24');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '25');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '26');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '27');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '28');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '29');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '30');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '31');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '32');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '33');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '34');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '35');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '36');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '37');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '38');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '39');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '40');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '41');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '42');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '43');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '44');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '45');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '46');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '47');
INSERT INTO `config_profile_answers` VALUES ('3', '5', 'White', '48');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '2');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '3');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '4');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '5');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '6');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '7');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '8');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '9');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '10');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '11');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '12');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '13');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '14');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '15');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '16');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '17');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '18');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '19');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '20');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '21');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '22');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '23');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '24');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '25');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '26');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '27');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '28');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '29');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '30');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '31');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '32');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '33');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '34');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '35');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '36');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '37');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '38');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '39');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '40');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '41');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '42');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '43');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '44');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '45');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '46');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '47');
INSERT INTO `config_profile_answers` VALUES ('5', '5', 'Hispanic / Latin', '48');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '2');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '3');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '4');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '5');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '6');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '7');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '8');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '9');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '10');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '11');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '12');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '13');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '14');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '15');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '16');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '17');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '18');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '19');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '20');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '21');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '22');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '23');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '24');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '25');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '26');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '27');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '28');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '29');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '30');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '31');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '32');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '33');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '34');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '35');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '36');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '37');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '38');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '39');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '40');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '41');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '42');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '43');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '44');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '45');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '46');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '47');
INSERT INTO `config_profile_answers` VALUES ('1', '5', 'Asian', '48');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '2');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '3');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '4');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '5');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '6');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '7');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '8');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '9');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '10');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '11');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '12');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '13');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '14');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '15');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '16');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '17');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '18');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '19');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '20');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '21');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '22');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '23');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '24');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '25');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '26');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '27');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '28');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '29');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '30');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '31');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '32');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '33');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '34');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '35');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '36');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '37');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '38');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '39');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '40');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '41');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '42');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '43');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '44');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '45');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '46');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '47');
INSERT INTO `config_profile_answers` VALUES ('6', '5', 'Indian', '48');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '2');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '3');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '4');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '5');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '6');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '7');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '8');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '9');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '10');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '11');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '12');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '13');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '14');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '15');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '16');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '17');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '18');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '19');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '20');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '21');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '22');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '23');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '24');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '25');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '26');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '27');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '28');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '29');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '30');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '31');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '32');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '33');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '34');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '35');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '36');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '37');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '38');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '39');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '40');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '41');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '42');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '43');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '44');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '45');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '46');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '47');
INSERT INTO `config_profile_answers` VALUES ('7', '5', 'Other', '48');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '2');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '3');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '4');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '5');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '6');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '7');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '8');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '9');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '10');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '11');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '12');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '13');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '14');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '15');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '16');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '17');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '18');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '19');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '20');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '21');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '22');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '23');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '24');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '25');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '26');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '27');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '28');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '29');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '30');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '31');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '32');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '33');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '34');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '35');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '36');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '37');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '38');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '39');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '40');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '41');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '42');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '43');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '44');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '45');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '46');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '47');
INSERT INTO `config_profile_answers` VALUES ('4', '5', 'Native American', '48');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '2');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '3');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '4');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '5');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '6');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '7');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '8');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '9');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '10');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '11');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '12');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '13');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '14');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '15');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '16');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '17');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '18');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '19');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '20');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '21');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '22');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '23');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '24');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '25');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '26');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '27');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '28');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '29');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '30');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '31');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '32');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '33');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '34');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '35');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '36');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '37');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '38');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '39');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '40');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '41');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '42');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '43');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '44');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '45');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '46');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '47');
INSERT INTO `config_profile_answers` VALUES ('2', '6', 'Athletic', '48');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '2');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '3');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '4');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '5');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '6');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '7');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '8');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '9');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '10');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '11');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '12');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '13');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '14');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '15');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '16');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '17');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '18');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '19');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '20');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '21');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '22');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '23');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '24');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '25');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '26');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '27');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '28');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '29');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '30');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '31');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '32');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '33');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '34');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '35');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '36');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '37');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '38');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '39');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '40');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '41');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '42');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '43');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '44');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '45');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '46');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '47');
INSERT INTO `config_profile_answers` VALUES ('1', '6', 'Slim', '48');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '2');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '3');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '4');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '5');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '6');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '7');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '8');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '9');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '10');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '11');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '12');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '13');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '14');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '15');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '16');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '17');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '18');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '19');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '20');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '21');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '22');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '23');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '24');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '25');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '26');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '27');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '28');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '29');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '30');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '31');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '32');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '33');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '34');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '35');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '36');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '37');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '38');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '39');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '40');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '41');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '42');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '43');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '44');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '45');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '46');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '47');
INSERT INTO `config_profile_answers` VALUES ('3', '6', 'Curvy', '48');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '2');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '3');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '4');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '5');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '6');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '7');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '8');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '9');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '10');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '11');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '12');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '13');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '14');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '15');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '16');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '17');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '18');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '19');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '20');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '21');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '22');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '23');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '24');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '25');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '26');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '27');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '28');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '29');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '30');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '31');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '32');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '33');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '34');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '35');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '36');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '37');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '38');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '39');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '40');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '41');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '42');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '43');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '44');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '45');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '46');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '47');
INSERT INTO `config_profile_answers` VALUES ('4', '6', 'Heavy', '48');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '2');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '3');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '4');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '5');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '6');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '7');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '8');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '9');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '10');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '11');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '12');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '13');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '14');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '15');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '16');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '17');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '18');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '19');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '20');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '21');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '22');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '23');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '24');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '25');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '26');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '27');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '28');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '29');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '30');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '31');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '32');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '33');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '34');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '35');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '36');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '37');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '38');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '39');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '40');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '41');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '42');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '43');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '44');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '45');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '46');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '47');
INSERT INTO `config_profile_answers` VALUES ('1', '7', 'Alone', '48');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '2');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '3');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '4');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '5');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '6');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '7');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '8');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '9');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '10');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '11');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '12');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '13');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '14');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '15');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '16');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '17');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '18');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '19');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '20');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '21');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '22');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '23');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '24');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '25');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '26');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '27');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '28');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '29');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '30');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '31');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '32');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '33');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '34');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '35');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '36');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '37');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '38');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '39');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '40');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '41');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '42');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '43');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '44');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '45');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '46');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '47');
INSERT INTO `config_profile_answers` VALUES ('2', '7', 'With parents', '48');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '2');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '3');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '4');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '5');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '6');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '7');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '8');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '9');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '10');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '11');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '12');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '13');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '14');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '15');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '16');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '17');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '18');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '19');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '20');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '21');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '22');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '23');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '24');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '25');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '26');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '27');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '28');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '29');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '30');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '31');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '32');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '33');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '34');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '35');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '36');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '37');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '38');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '39');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '40');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '41');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '42');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '43');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '44');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '45');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '46');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '47');
INSERT INTO `config_profile_answers` VALUES ('3', '7', 'With partner', '48');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '2');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '3');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '4');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '5');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '6');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '7');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '8');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '9');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '10');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '11');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '12');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '13');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '14');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '15');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '16');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '17');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '18');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '19');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '20');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '21');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '22');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '23');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '24');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '25');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '26');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '27');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '28');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '29');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '30');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '31');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '32');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '33');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '34');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '35');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '36');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '37');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '38');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '39');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '40');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '41');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '42');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '43');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '44');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '45');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '46');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '47');
INSERT INTO `config_profile_answers` VALUES ('4', '7', 'Student house', '48');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '2');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '3');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '4');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '5');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '6');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '7');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '8');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '9');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '10');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '11');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '12');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '13');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '14');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '15');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '16');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '17');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '18');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '19');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '20');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '21');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '22');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '23');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '24');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '25');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '26');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '27');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '28');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '29');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '30');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '31');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '32');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '33');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '34');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '35');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '36');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '37');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '38');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '39');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '40');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '41');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '42');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '43');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '44');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '45');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '46');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '47');
INSERT INTO `config_profile_answers` VALUES ('1', '8', 'Yes', '48');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '2');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '3');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '4');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '5');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '6');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '7');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '8');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '9');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '10');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '11');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '12');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '13');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '14');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '15');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '16');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '17');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '18');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '19');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '20');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '21');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '22');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '23');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '24');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '25');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '26');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '27');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '28');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '29');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '30');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '31');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '32');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '33');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '34');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '35');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '36');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '37');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '38');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '39');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '40');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '41');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '42');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '43');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '44');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '45');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '46');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '47');
INSERT INTO `config_profile_answers` VALUES ('2', '8', 'No', '48');

-- ----------------------------
-- Table structure for config_profile_questions
-- ----------------------------
DROP TABLE IF EXISTS `config_profile_questions`;
CREATE TABLE `config_profile_questions` (
  `id` int(11) NOT NULL,
  `question` varchar(200) DEFAULT NULL,
  `lang_id` int(11) NOT NULL,
  `method` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of config_profile_questions
-- ----------------------------
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '1', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relacion:', '2', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '3', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '4', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '5', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '6', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '7', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '8', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '9', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '10', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '11', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '12', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '13', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '14', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '15', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '16', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '17', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '18', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '19', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '20', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '21', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '22', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '23', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '24', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '25', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '26', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '27', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '28', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '29', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '30', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '31', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '32', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '33', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '34', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '35', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '36', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '37', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '38', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '39', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '40', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '41', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '42', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '43', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '44', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '45', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '46', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '47', 'select');
INSERT INTO `config_profile_questions` VALUES ('1', 'Relationship:', '48', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '1', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexualidad:', '2', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '3', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '4', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '5', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '6', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '7', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '8', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '9', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '10', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '11', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '12', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '13', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '14', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '15', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '16', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '17', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '18', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '19', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '20', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '21', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '22', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '23', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '24', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '25', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '26', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '27', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '28', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '29', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '30', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '31', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '32', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '33', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '34', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '35', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '36', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '37', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '38', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '39', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '40', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '41', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '42', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '43', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '44', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '45', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '46', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '47', 'select');
INSERT INTO `config_profile_questions` VALUES ('2', 'Sexuality:', '48', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '1', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '2', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '3', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '4', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '5', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '6', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '7', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '8', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '9', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '10', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '11', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '12', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '13', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '14', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '15', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '16', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '17', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '18', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '19', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '20', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '21', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '22', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '23', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '24', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '25', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '26', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '27', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '28', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '29', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '30', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '31', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '32', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '33', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '34', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '35', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '36', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '37', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '38', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '39', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '40', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '41', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '42', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '43', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '44', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '45', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '46', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '47', 'select');
INSERT INTO `config_profile_questions` VALUES ('5', 'Ethnicity:', '48', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '1', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '2', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '3', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '4', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '5', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '6', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '7', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '8', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '9', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '10', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '11', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '12', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '13', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '14', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '15', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '16', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '17', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '18', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '19', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '20', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '21', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '22', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '23', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '24', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '25', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '26', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '27', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '28', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '29', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '30', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '31', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '32', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '33', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '34', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '35', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '36', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '37', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '38', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '39', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '40', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '41', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '42', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '43', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '44', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '45', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '46', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '47', 'select');
INSERT INTO `config_profile_questions` VALUES ('6', 'Body Type:', '48', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '1', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '2', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '3', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '4', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '5', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '6', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '7', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '8', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '9', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '10', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '11', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '12', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '13', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '14', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '15', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '16', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '17', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '18', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '19', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '20', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '21', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '22', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '23', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '24', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '25', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '26', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '27', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '28', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '29', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '30', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '31', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '32', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '33', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '34', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '35', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '36', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '37', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '38', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '39', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '40', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '41', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '42', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '43', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '44', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '45', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '46', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '47', 'select');
INSERT INTO `config_profile_questions` VALUES ('7', 'Living:', '48', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '1', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '2', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '3', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '4', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '5', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '6', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '7', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '8', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '9', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '10', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '11', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '12', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '13', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '14', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '15', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '16', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '17', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '18', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '19', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '20', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '21', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '22', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '23', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '24', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '25', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '26', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '27', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '28', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '29', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '30', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '31', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '32', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '33', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '34', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '35', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '36', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '37', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '38', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '39', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '40', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '41', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '42', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '43', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '44', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '45', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '46', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '47', 'select');
INSERT INTO `config_profile_questions` VALUES ('8', 'Smoke:', '48', 'select');

-- ----------------------------
-- Table structure for config_themes
-- ----------------------------
DROP TABLE IF EXISTS `config_themes`;
CREATE TABLE `config_themes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT NULL,
  `folder` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `screenshot` varchar(200) DEFAULT NULL,
  `has_settings` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_themes
-- ----------------------------
INSERT INTO `config_themes` VALUES ('6', '1', 'old', 'Web theme - 2017', 'themes/old/images/old.jpeg', '0');
INSERT INTO `config_themes` VALUES ('1', '1', 'default', 'Web theme 1 - 2018', 'themes/default/images/default.jpg', '1');
INSERT INTO `config_themes` VALUES ('3', '2', 'landing1', 'Landing 1- 2018', 'themes/landing1/img/landing1.jpeg', '1');
INSERT INTO `config_themes` VALUES ('4', '2', 'landing', 'Landing - 2017', 'themes/landing/images/landing.jpeg', '0');
INSERT INTO `config_themes` VALUES ('5', '3', 'mobile', 'Mobile Theme 1 - 2018', 'mobile/mobile.jpg', '0');

-- ----------------------------
-- Table structure for email_lang
-- ----------------------------
DROP TABLE IF EXISTS `email_lang`;
CREATE TABLE `email_lang` (
  `id` int(9) NOT NULL,
  `lang_id` int(9) NOT NULL DEFAULT '1',
  `text` text NOT NULL,
  `theme_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email_lang
-- ----------------------------
INSERT INTO `email_lang` VALUES ('1', '1', 'Send them a message', null);
INSERT INTO `email_lang` VALUES ('2', '1', 'Send them a message before anyone else', null);
INSERT INTO `email_lang` VALUES ('3', '1', 'Start chatting', null);
INSERT INTO `email_lang` VALUES ('4', '1', 'App Store', null);
INSERT INTO `email_lang` VALUES ('5', '1', 'Google Play', null);
INSERT INTO `email_lang` VALUES ('6', '1', 'Follow us', null);
INSERT INTO `email_lang` VALUES ('7', '1', 'Its a match', null);
INSERT INTO `email_lang` VALUES ('8', '1', 'match. Take a look at his profile or tell him something and break the ice.', null);
INSERT INTO `email_lang` VALUES ('9', '1', 'Find out who it is\r\n', null);
INSERT INTO `email_lang` VALUES ('10', '1', 'New profile visit on ', null);
INSERT INTO `email_lang` VALUES ('11', '1', '\r\njust visited your profile. Look at yours and meet her.', null);
INSERT INTO `email_lang` VALUES ('12', '1', 'View profile and photos\r\n', null);
INSERT INTO `email_lang` VALUES ('13', '1', 'Back to', null);
INSERT INTO `email_lang` VALUES ('14', '1', ' have you forgotten your password? Do not worry, click below and get access to your account', null);
INSERT INTO `email_lang` VALUES ('15', '1', 'Login now', null);
INSERT INTO `email_lang` VALUES ('16', '1', 'This email is part of the process for creating a new password. If you do not want to change your password, ignore this email and log in to your account using your current password.', null);
INSERT INTO `email_lang` VALUES ('17', '1', 'contact you', null);
INSERT INTO `email_lang` VALUES ('18', '1', 'you have a message from', null);
INSERT INTO `email_lang` VALUES ('19', '1', 'What are you waiting to read it?', null);
INSERT INTO `email_lang` VALUES ('20', '1', 'Find out what he said', null);
INSERT INTO `email_lang` VALUES ('21', '1', '\r\nJust one last thing', null);
INSERT INTO `email_lang` VALUES ('22', '1', 'To complete your registration and start using ', null);
INSERT INTO `email_lang` VALUES ('23', '1', 'simply click on the link.', null);
INSERT INTO `email_lang` VALUES ('24', '1', 'Complete your registration', null);
INSERT INTO `email_lang` VALUES ('25', '1', 'This email is part of our sign-up process. If you didn\'t want to join', null);
INSERT INTO `email_lang` VALUES ('26', '1', 'simply ignore this email and youâ€™ll be removed.', null);
INSERT INTO `email_lang` VALUES ('27', '1', '\r\nWelcome to', null);
INSERT INTO `email_lang` VALUES ('28', '1', 'There are many girls around you wishing to meet you.', null);
INSERT INTO `email_lang` VALUES ('29', '1', 'Discover it\r\n', null);
INSERT INTO `email_lang` VALUES ('30', '1', 'Your connection details', null);
INSERT INTO `email_lang` VALUES ('31', '1', 'Your user', null);
INSERT INTO `email_lang` VALUES ('32', '1', 'Your password\r\n', null);
INSERT INTO `email_lang` VALUES ('33', '1', 'Record your connection data.', null);
INSERT INTO `email_lang` VALUES ('34', '1', 'How to meet even more people:', null);
INSERT INTO `email_lang` VALUES ('35', '1', 'Add Photos\r\n', null);
INSERT INTO `email_lang` VALUES ('36', '1', 'There is nothing like a photo to show the world how you are', null);
INSERT INTO `email_lang` VALUES ('37', '1', 'Edit your profile\r\n', null);
INSERT INTO `email_lang` VALUES ('38', '1', 'Tell more about yourself to others by adding a description or stating your interests.', null);
INSERT INTO `email_lang` VALUES ('39', '1', 'Find friends\r\n', null);
INSERT INTO `email_lang` VALUES ('40', '1', 'Certainly some of your friends are already on ', null);
INSERT INTO `email_lang` VALUES ('41', '1', 'likes you very much , take a look and find out if you like too', null);
INSERT INTO `email_lang` VALUES ('42', '1', 'New like on ', null);
INSERT INTO `email_lang` VALUES ('43', '1', 'You and', null);
INSERT INTO `email_lang` VALUES ('44', '1', 'Is new and lives in your city', null);

-- ----------------------------
-- Table structure for emails
-- ----------------------------
DROP TABLE IF EXISTS `emails`;
CREATE TABLE `emails` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `type` int(1) DEFAULT NULL,
  `uid` int(9) DEFAULT NULL,
  `code` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emails
-- ----------------------------

-- ----------------------------
-- Table structure for gifts
-- ----------------------------
DROP TABLE IF EXISTS `gifts`;
CREATE TABLE `gifts` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `gift` varchar(50) NOT NULL,
  `price` int(5) NOT NULL DEFAULT '0',
  `icon` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gifts
-- ----------------------------
INSERT INTO `gifts` VALUES ('1', 'Treasure', '50', '1.png');
INSERT INTO `gifts` VALUES ('2', 'Cake', '150', '2.png');
INSERT INTO `gifts` VALUES ('3', 'Wine', '200', '3.png');
INSERT INTO `gifts` VALUES ('4', 'Flowers ', '250', '4.png');
INSERT INTO `gifts` VALUES ('5', 'Present', '200', '5.png');
INSERT INTO `gifts` VALUES ('6', 'Heart candy', '50', '6.png');
INSERT INTO `gifts` VALUES ('7', 'kiss', '100', '7.png');
INSERT INTO `gifts` VALUES ('8', 'beer', '150', '8.png');
INSERT INTO `gifts` VALUES ('10', 'cup', '250', '10.png');
INSERT INTO `gifts` VALUES ('11', 'flower', '100', '11.png');
INSERT INTO `gifts` VALUES ('12', 'crown', '1500', '12.png');
INSERT INTO `gifts` VALUES ('13', 'hearts', '250', '13.png');
INSERT INTO `gifts` VALUES ('14', 'hear candy 2', '200', '14.png');
INSERT INTO `gifts` VALUES ('15', 'champagne', '25', '15.png');
INSERT INTO `gifts` VALUES ('16', 'coffe', '25', '16.png');
INSERT INTO `gifts` VALUES ('17', 'cupido', '50', '17.png');
INSERT INTO `gifts` VALUES ('18', 'flowers 3', '500', '18.png');
INSERT INTO `gifts` VALUES ('19', 'dairy love', '25', '19.png');
INSERT INTO `gifts` VALUES ('20', 'handcops', '500', '20.png');
INSERT INTO `gifts` VALUES ('21', 'heart', '25', '21.png');
INSERT INTO `gifts` VALUES ('22', 'heart 2', '25', '22.png');
INSERT INTO `gifts` VALUES ('23', 'heart 3', '150', '23.png');
INSERT INTO `gifts` VALUES ('24', 'ring', '1000', '24.png');
INSERT INTO `gifts` VALUES ('25', 'bear', '250', '26.png');

-- ----------------------------
-- Table structure for interest
-- ----------------------------
DROP TABLE IF EXISTS `interest`;
CREATE TABLE `interest` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `count` int(9) DEFAULT '1',
  PRIMARY KEY (`id`,`name`),
  UNIQUE KEY `KEY` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interest
-- ----------------------------

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `prefix` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `visible` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES ('1', 'en', 'English', '1');

-- ----------------------------
-- Table structure for photos
-- ----------------------------
DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `pid` int(9) NOT NULL,
  `cid` int(9) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photos
-- ----------------------------

-- ----------------------------
-- Table structure for photos_likes
-- ----------------------------
DROP TABLE IF EXISTS `photos_likes`;
CREATE TABLE `photos_likes` (
  `id` int(9) NOT NULL,
  `pid` int(9) NOT NULL,
  `uid` int(9) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`,`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of photos_likes
-- ----------------------------

-- ----------------------------
-- Table structure for plugins
-- ----------------------------
DROP TABLE IF EXISTS `plugins`;
CREATE TABLE `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `core_file` varchar(200) DEFAULT NULL,
  `css_file` varchar(200) DEFAULT NULL,
  `js_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of plugins
-- ----------------------------
INSERT INTO `plugins` VALUES ('1', 'Lindoo', 'lindoo_core', null, 'lindoo');
INSERT INTO `plugins` VALUES ('2', 'App', 'app_core', null, null);

-- ----------------------------
-- Table structure for reports
-- ----------------------------
DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `reported` int(9) DEFAULT NULL,
  `reported_by` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=127 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of reports
-- ----------------------------

-- ----------------------------
-- Table structure for site_lang
-- ----------------------------
DROP TABLE IF EXISTS `site_lang`;
CREATE TABLE `site_lang` (
  `id` int(9) NOT NULL,
  `lang_id` int(9) NOT NULL DEFAULT '1',
  `text` text NOT NULL,
  `theme_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_lang
-- ----------------------------
INSERT INTO `site_lang` VALUES ('0', '1', 'meet new people!', '1');
INSERT INTO `site_lang` VALUES ('1', '1', 'Login', '1');
INSERT INTO `site_lang` VALUES ('2', '1', 'Welcome to the fastest growing place to meet new people', null);
INSERT INTO `site_lang` VALUES ('3', '1', 'For now our site works only for Desktop users', null);
INSERT INTO `site_lang` VALUES ('4', '1', 'Please visit us from your laptop or PC', null);
INSERT INTO `site_lang` VALUES ('5', '1', 'Soon we will have our phone apps online', null);
INSERT INTO `site_lang` VALUES ('6', '1', 'SOON AVAILABLE', null);
INSERT INTO `site_lang` VALUES ('7', '1', 'Connect with ', null);
INSERT INTO `site_lang` VALUES ('8', '1', 'Create your account', null);
INSERT INTO `site_lang` VALUES ('9', '1', 'Welcome back', null);
INSERT INTO `site_lang` VALUES ('10', '1', 'Your email', '1');
INSERT INTO `site_lang` VALUES ('11', '1', 'Your password', '1');
INSERT INTO `site_lang` VALUES ('12', '1', 'do you forget your password?', '1');
INSERT INTO `site_lang` VALUES ('13', '1', 'Login now', '1');
INSERT INTO `site_lang` VALUES ('14', '1', 'Password recover', '1');
INSERT INTO `site_lang` VALUES ('15', '1', 'Recover password', '1');
INSERT INTO `site_lang` VALUES ('16', '1', 'Chat', null);
INSERT INTO `site_lang` VALUES ('17', '1', 'Powerfull private chat for meet new friends, you can send emoticons and private photos to anyone.', null);
INSERT INTO `site_lang` VALUES ('18', '1', 'Video Chat', null);
INSERT INTO `site_lang` VALUES ('19', '1', 'You can make quality videocalls for free to anyone, without limits of call duration, just enjoy seeing the person who is chatting with you', null);
INSERT INTO `site_lang` VALUES ('20', '1', 'People nearby', null);
INSERT INTO `site_lang` VALUES ('21', '1', 'We wont show your exact location, but you will be able to find people nearby who like the same things you do.', '1');
INSERT INTO `site_lang` VALUES ('22', '1', 'Matches', null);
INSERT INTO `site_lang` VALUES ('23', '1', 'Play our popular Discover game and get matched with other users. Its a great way to break the ice and chat to new people.', null);
INSERT INTO `site_lang` VALUES ('24', '1', 'Become a member now', null);
INSERT INTO `site_lang` VALUES ('25', '1', 'Join the worlds bestest community for meeting new people!.', null);
INSERT INTO `site_lang` VALUES ('26', '1', 'Name', null);
INSERT INTO `site_lang` VALUES ('27', '1', 'Your name or nickname', null);
INSERT INTO `site_lang` VALUES ('28', '1', 'Email', null);
INSERT INTO `site_lang` VALUES ('29', '1', 'Password', null);
INSERT INTO `site_lang` VALUES ('30', '1', 'Birthday', null);
INSERT INTO `site_lang` VALUES ('31', '1', 'Please select', null);
INSERT INTO `site_lang` VALUES ('32', '1', 'City', null);
INSERT INTO `site_lang` VALUES ('33', '1', 'Where do you live?', null);
INSERT INTO `site_lang` VALUES ('34', '1', 'Gender', null);
INSERT INTO `site_lang` VALUES ('35', '1', 'Male', null);
INSERT INTO `site_lang` VALUES ('36', '1', 'Female', null);
INSERT INTO `site_lang` VALUES ('37', '1', 'Im here to', null);
INSERT INTO `site_lang` VALUES ('38', '1', 'Meet girls', null);
INSERT INTO `site_lang` VALUES ('39', '1', 'Meet boys', null);
INSERT INTO `site_lang` VALUES ('40', '1', 'Meet boys and girls', null);
INSERT INTO `site_lang` VALUES ('41', '1', 'up', null);
INSERT INTO `site_lang` VALUES ('42', '1', 'By continuing, you are confirming that you have read and agree to our', null);
INSERT INTO `site_lang` VALUES ('43', '1', 'Terms and Conditions', '1');
INSERT INTO `site_lang` VALUES ('44', '1', 'and', '1');
INSERT INTO `site_lang` VALUES ('45', '1', 'Privacy Policy', '1');
INSERT INTO `site_lang` VALUES ('46', '1', 'Profile', null);
INSERT INTO `site_lang` VALUES ('47', '1', 'Settings', null);
INSERT INTO `site_lang` VALUES ('48', '1', 'Logout', null);
INSERT INTO `site_lang` VALUES ('49', '1', 'Meet new people', null);
INSERT INTO `site_lang` VALUES ('50', '1', 'Discover', null);
INSERT INTO `site_lang` VALUES ('51', '1', 'Matches', null);
INSERT INTO `site_lang` VALUES ('52', '1', 'Most populars', null);
INSERT INTO `site_lang` VALUES ('53', '1', 'Fans', null);
INSERT INTO `site_lang` VALUES ('54', '1', 'Manage photos', null);
INSERT INTO `site_lang` VALUES ('55', '1', 'Settings', null);
INSERT INTO `site_lang` VALUES ('56', '1', 'All', null);
INSERT INTO `site_lang` VALUES ('57', '1', 'Fans', null);
INSERT INTO `site_lang` VALUES ('58', '1', 'Conversations', null);
INSERT INTO `site_lang` VALUES ('59', '1', 'Online now', null);
INSERT INTO `site_lang` VALUES ('60', '1', 'New messages', null);
INSERT INTO `site_lang` VALUES ('61', '1', 'Who to like', null);
INSERT INTO `site_lang` VALUES ('62', '1', 'Terms', null);
INSERT INTO `site_lang` VALUES ('63', '1', 'Privacy', null);
INSERT INTO `site_lang` VALUES ('64', '1', 'Contact', null);
INSERT INTO `site_lang` VALUES ('65', '1', 'Manage your photos', null);
INSERT INTO `site_lang` VALUES ('66', '1', 'All Photos', null);
INSERT INTO `site_lang` VALUES ('67', '1', 'Public Photos', null);
INSERT INTO `site_lang` VALUES ('68', '1', 'Private Photos', null);
INSERT INTO `site_lang` VALUES ('69', '1', 'Add your photos', null);
INSERT INTO `site_lang` VALUES ('70', '1', 'add photos', null);
INSERT INTO `site_lang` VALUES ('71', '1', 'Add yourself to the Spotlight', null);
INSERT INTO `site_lang` VALUES ('72', '1', 'Pick the photo you want to show in the Spotlight, cost ', null);
INSERT INTO `site_lang` VALUES ('73', '1', ' Credits', null);
INSERT INTO `site_lang` VALUES ('74', '1', 'Add photo', null);
INSERT INTO `site_lang` VALUES ('75', '1', 'Send gift to ', null);
INSERT INTO `site_lang` VALUES ('76', '1', 'Pick the gift you want to send to ', null);
INSERT INTO `site_lang` VALUES ('77', '1', 'Send gift', null);
INSERT INTO `site_lang` VALUES ('78', '1', 'Buy credits / Upgrade account', null);
INSERT INTO `site_lang` VALUES ('79', '1', 'Select credits package', null);
INSERT INTO `site_lang` VALUES ('80', '1', 'Select payment method', null);
INSERT INTO `site_lang` VALUES ('81', '1', 'Pay with', null);
INSERT INTO `site_lang` VALUES ('82', '1', 'Pay with', null);
INSERT INTO `site_lang` VALUES ('83', '1', 'Buy credits', null);
INSERT INTO `site_lang` VALUES ('84', '1', 'Premium Account Features', null);
INSERT INTO `site_lang` VALUES ('85', '1', 'new chats per day', null);
INSERT INTO `site_lang` VALUES ('86', '1', 'Unlimited videocalls', null);
INSERT INTO `site_lang` VALUES ('87', '1', 'Unblock all private photos', null);
INSERT INTO `site_lang` VALUES ('88', '1', 'Premium user badge', null);
INSERT INTO `site_lang` VALUES ('89', '1', 'Write text here', null);
INSERT INTO `site_lang` VALUES ('90', '1', 'Send', null);
INSERT INTO `site_lang` VALUES ('91', '1', 'Chat', null);
INSERT INTO `site_lang` VALUES ('92', '1', 'you have reached the limit of new daily conversations', null);
INSERT INTO `site_lang` VALUES ('93', '1', 'To continue chatting', null);
INSERT INTO `site_lang` VALUES ('94', '1', 'Buy', null);
INSERT INTO `site_lang` VALUES ('95', '1', 'more daily conversation', null);
INSERT INTO `site_lang` VALUES ('96', '1', 'or', null);
INSERT INTO `site_lang` VALUES ('97', '1', 'Upgrade your account to Premium', null);
INSERT INTO `site_lang` VALUES ('98', '1', 'and get up to', null);
INSERT INTO `site_lang` VALUES ('99', '1', 'daily conversations', null);
INSERT INTO `site_lang` VALUES ('100', '1', 'or wait until tomorrow for continue meeting people', null);
INSERT INTO `site_lang` VALUES ('101', '1', 'People who likes me', null);
INSERT INTO `site_lang` VALUES ('102', '1', 'Privacy Policy', null);
INSERT INTO `site_lang` VALUES ('103', '1', 'Terms of Use', null);
INSERT INTO `site_lang` VALUES ('104', '1', 'Please complete your profile before start in ', null);
INSERT INTO `site_lang` VALUES ('105', '1', 'My matches', null);
INSERT INTO `site_lang` VALUES ('106', '1', 'Filter Search', null);
INSERT INTO `site_lang` VALUES ('107', '1', 'All users', null);
INSERT INTO `site_lang` VALUES ('108', '1', 'Online now', null);
INSERT INTO `site_lang` VALUES ('109', '1', 'Show me', null);
INSERT INTO `site_lang` VALUES ('110', '1', 'Girls', null);
INSERT INTO `site_lang` VALUES ('111', '1', 'Boys', null);
INSERT INTO `site_lang` VALUES ('112', '1', 'Both', null);
INSERT INTO `site_lang` VALUES ('113', '1', 'who are between', null);
INSERT INTO `site_lang` VALUES ('114', '1', 'in a radius of', null);
INSERT INTO `site_lang` VALUES ('115', '1', 'World', null);
INSERT INTO `site_lang` VALUES ('116', '1', 'Most popular users', null);
INSERT INTO `site_lang` VALUES ('117', '1', 'About ', null);
INSERT INTO `site_lang` VALUES ('118', '1', 'Personal info', null);
INSERT INTO `site_lang` VALUES ('119', '1', 'years old', null);
INSERT INTO `site_lang` VALUES ('120', '1', 'Only boys', null);
INSERT INTO `site_lang` VALUES ('121', '1', 'Only girls', null);
INSERT INTO `site_lang` VALUES ('122', '1', 'boys and girls', null);
INSERT INTO `site_lang` VALUES ('123', '1', 'Credits successfully added to your account', null);
INSERT INTO `site_lang` VALUES ('124', '1', 'Now you have', null);
INSERT INTO `site_lang` VALUES ('125', '1', 'Ask permission to', null);
INSERT INTO `site_lang` VALUES ('126', '1', 'Unblock private photos', null);
INSERT INTO `site_lang` VALUES ('127', '1', 'Personal', null);
INSERT INTO `site_lang` VALUES ('128', '1', 'Credits', null);
INSERT INTO `site_lang` VALUES ('129', '1', 'Verify', null);
INSERT INTO `site_lang` VALUES ('130', '1', 'Change password', null);
INSERT INTO `site_lang` VALUES ('131', '1', 'Delete', null);
INSERT INTO `site_lang` VALUES ('132', '1', 'Personal information', null);
INSERT INTO `site_lang` VALUES ('133', '1', 'You can edit your profile information bellow', null);
INSERT INTO `site_lang` VALUES ('134', '1', 'Site language', null);
INSERT INTO `site_lang` VALUES ('135', '1', 'Update profile', null);
INSERT INTO `site_lang` VALUES ('136', '1', 'Verify account', null);
INSERT INTO `site_lang` VALUES ('137', '1', 'For verify your account , connect with your facebook account', null);
INSERT INTO `site_lang` VALUES ('138', '1', 'Connect with Facebook', null);
INSERT INTO `site_lang` VALUES ('139', '1', 'You are account is already verified', null);
INSERT INTO `site_lang` VALUES ('140', '1', 'Buy credits for send Gifs and Unblock private photos', null);
INSERT INTO `site_lang` VALUES ('141', '1', 'Account type', null);
INSERT INTO `site_lang` VALUES ('142', '1', 'Current credits', null);
INSERT INTO `site_lang` VALUES ('143', '1', 'Add credits', null);
INSERT INTO `site_lang` VALUES ('144', '1', 'Upgrade to premium account', null);
INSERT INTO `site_lang` VALUES ('145', '1', 'Change password', null);
INSERT INTO `site_lang` VALUES ('146', '1', 'You can change your current password bellow', null);
INSERT INTO `site_lang` VALUES ('147', '1', 'New password', null);
INSERT INTO `site_lang` VALUES ('148', '1', 'Profile desactivation', null);
INSERT INTO `site_lang` VALUES ('149', '1', 'After delete your profile, some of your data will be lost without recovery.', null);
INSERT INTO `site_lang` VALUES ('150', '1', 'Delete profile', null);
INSERT INTO `site_lang` VALUES ('152', '1', 'Verified', null);
INSERT INTO `site_lang` VALUES ('151', '1', 'Online now', null);
INSERT INTO `site_lang` VALUES ('153', '1', 'Nothing found', null);
INSERT INTO `site_lang` VALUES ('154', '1', 'people found', null);
INSERT INTO `site_lang` VALUES ('155', '1', 'No popular users near you', null);
INSERT INTO `site_lang` VALUES ('156', '1', 'You dont have any fans yet', null);
INSERT INTO `site_lang` VALUES ('157', '1', 'You dont have matches yet', null);
INSERT INTO `site_lang` VALUES ('158', '1', 'January', null);
INSERT INTO `site_lang` VALUES ('159', '1', 'February', null);
INSERT INTO `site_lang` VALUES ('160', '1', 'March', null);
INSERT INTO `site_lang` VALUES ('161', '1', 'April', null);
INSERT INTO `site_lang` VALUES ('162', '1', 'May', null);
INSERT INTO `site_lang` VALUES ('163', '1', 'June', null);
INSERT INTO `site_lang` VALUES ('164', '1', 'July', null);
INSERT INTO `site_lang` VALUES ('165', '1', 'August', null);
INSERT INTO `site_lang` VALUES ('166', '1', 'September', null);
INSERT INTO `site_lang` VALUES ('167', '1', 'October', null);
INSERT INTO `site_lang` VALUES ('168', '1', 'November', null);
INSERT INTO `site_lang` VALUES ('169', '1', 'December', null);
INSERT INTO `site_lang` VALUES ('170', '1', 'Buy', null);
INSERT INTO `site_lang` VALUES ('171', '1', ' Premium', null);
INSERT INTO `site_lang` VALUES ('172', '1', 'persons more like this', null);
INSERT INTO `site_lang` VALUES ('173', '1', 'like this', null);
INSERT INTO `site_lang` VALUES ('174', '1', 'Hello, can i have access to your private photos ?', null);
INSERT INTO `site_lang` VALUES ('175', '1', 'Yes', null);
INSERT INTO `site_lang` VALUES ('176', '1', 'No', null);
INSERT INTO `site_lang` VALUES ('177', '1', 'Hi', null);
INSERT INTO `site_lang` VALUES ('178', '1', 'If you dont remember your password, click the link below to set a new one:', null);
INSERT INTO `site_lang` VALUES ('179', '1', 'Login to my account', null);
INSERT INTO `site_lang` VALUES ('180', '1', 'Password recover', null);
INSERT INTO `site_lang` VALUES ('181', '1', 'Invalid email format', null);
INSERT INTO `site_lang` VALUES ('182', '1', 'Please fill all the inputs', null);
INSERT INTO `site_lang` VALUES ('183', '1', 'Email dont exist', null);
INSERT INTO `site_lang` VALUES ('184', '1', 'Wrong password', null);
INSERT INTO `site_lang` VALUES ('185', '1', 'Add a valid date', null);
INSERT INTO `site_lang` VALUES ('186', '1', 'Choose city from the autocomplete', null);
INSERT INTO `site_lang` VALUES ('187', '1', 'Password too short', null);
INSERT INTO `site_lang` VALUES ('188', '1', 'Email already exist, try another', null);
INSERT INTO `site_lang` VALUES ('189', '1', 'Yes, you can see my private photos', null);
INSERT INTO `site_lang` VALUES ('190', '1', 'No, i cant show you my private photos', null);
INSERT INTO `site_lang` VALUES ('191', '1', 'Buy private photos permission', null);
INSERT INTO `site_lang` VALUES ('192', '1', 'Get access to', null);
INSERT INTO `site_lang` VALUES ('193', '1', 'private photos for ', null);
INSERT INTO `site_lang` VALUES ('194', '1', 'Get access', null);
INSERT INTO `site_lang` VALUES ('195', '1', 'No thanks', null);
INSERT INTO `site_lang` VALUES ('196', '1', 'Please, select a payment method', null);
INSERT INTO `site_lang` VALUES ('197', '1', 'Please, select 1 photo', null);
INSERT INTO `site_lang` VALUES ('198', '1', 'Please, select 1 gift', null);
INSERT INTO `site_lang` VALUES ('199', '1', 'You dont have enought credits for send the gift', null);
INSERT INTO `site_lang` VALUES ('200', '1', 'Expand daily limitation ', null);
INSERT INTO `site_lang` VALUES ('201', '1', 'more daily conversation, cost ', null);
INSERT INTO `site_lang` VALUES ('202', '1', 'Yes, buy it!', null);
INSERT INTO `site_lang` VALUES ('203', '1', 'Information updated successfully', null);
INSERT INTO `site_lang` VALUES ('204', '1', 'Account termination', null);
INSERT INTO `site_lang` VALUES ('205', '1', 'Your data will be lost without recovery, continue?', null);
INSERT INTO `site_lang` VALUES ('206', '1', 'Yes, delete it!', null);
INSERT INTO `site_lang` VALUES ('207', '1', 'is in another videocall , you cant call now', null);
INSERT INTO `site_lang` VALUES ('208', '1', 'is offline, try again when your friend is online', null);
INSERT INTO `site_lang` VALUES ('209', '1', 'Please allow access to your Webcam.', null);
INSERT INTO `site_lang` VALUES ('210', '1', 'You are already in a videocall, you have to end the other call before start another', null);
INSERT INTO `site_lang` VALUES ('211', '1', 'Only premium users can make videocalls', null);
INSERT INTO `site_lang` VALUES ('212', '1', 'Impossible to make a call!', null);
INSERT INTO `site_lang` VALUES ('213', '1', 'You cant make videocall because you dont have webcam', null);
INSERT INTO `site_lang` VALUES ('214', '1', 'Too long wait', null);
INSERT INTO `site_lang` VALUES ('215', '1', 'Seems that your friend do not have webcam or he is not available', null);
INSERT INTO `site_lang` VALUES ('216', '1', 'End call', null);
INSERT INTO `site_lang` VALUES ('217', '1', 'Wait more', null);
INSERT INTO `site_lang` VALUES ('380', '1', 'Welcome to', '1');
INSERT INTO `site_lang` VALUES ('378', '1', 'Please save your connection information in a safe place', null);
INSERT INTO `site_lang` VALUES ('379', '1', 'Go to', null);
INSERT INTO `site_lang` VALUES ('377', '1', 'Password', null);
INSERT INTO `site_lang` VALUES ('376', '1', 'E-mail', null);
INSERT INTO `site_lang` VALUES ('375', '1', 'Here are your connection details', null);
INSERT INTO `site_lang` VALUES ('374', '1', 'Start meeting new people now', null);
INSERT INTO `site_lang` VALUES ('373', '1', 'More than 1 million people have joined $site_name You probably want to know some of them.', null);
INSERT INTO `site_lang` VALUES ('372', '1', 'Add photos and complete your profile', null);
INSERT INTO `site_lang` VALUES ('371', '1', 'Nobody is going to fall in love with a blank page. The more information you get, the more chances to find that special someone!', null);
INSERT INTO `site_lang` VALUES ('370', '1', 'Meet new people', null);
INSERT INTO `site_lang` VALUES ('369', '1', 'you can meet people instantly', null);
INSERT INTO `site_lang` VALUES ('368', '1', 'In', null);
INSERT INTO `site_lang` VALUES ('367', '1', 'people in your area wants to know you', null);
INSERT INTO `site_lang` VALUES ('366', '1', 'Newsflash', null);
INSERT INTO `site_lang` VALUES ('363', '1', 'Here are a few tips', null);
INSERT INTO `site_lang` VALUES ('364', '1', 'Now you are a new member of', null);
INSERT INTO `site_lang` VALUES ('365', '1', 'Verify your account', null);
INSERT INTO `site_lang` VALUES ('362', '1', 'Well done, now you are in', null);
INSERT INTO `site_lang` VALUES ('356', '1', 'Have fun!', null);
INSERT INTO `site_lang` VALUES ('357', '1', 'is new and lives closer to you', null);
INSERT INTO `site_lang` VALUES ('358', '1', 'is new at', null);
INSERT INTO `site_lang` VALUES ('359', '1', 'and lives closer to you', null);
INSERT INTO `site_lang` VALUES ('360', '1', 'Check out the profile', null);
INSERT INTO `site_lang` VALUES ('361', '1', 'Welcome', null);
INSERT INTO `site_lang` VALUES ('355', '1', 'Respond to', null);
INSERT INTO `site_lang` VALUES ('350', '1', 'Its a match!', null);
INSERT INTO `site_lang` VALUES ('351', '1', 'thinks the feeling is mutual', null);
INSERT INTO `site_lang` VALUES ('352', '1', 'Go and say something to', null);
INSERT INTO `site_lang` VALUES ('353', '1', 'New message from', null);
INSERT INTO `site_lang` VALUES ('354', '1', 'you have a new message from', null);
INSERT INTO `site_lang` VALUES ('349', '1', 'You have a match at', null);
INSERT INTO `site_lang` VALUES ('348', '1', 'if you forgot your password, click on the link below to get a new', null);
INSERT INTO `site_lang` VALUES ('0', '2', 'Â¡Conocer gente nueva!', null);
INSERT INTO `site_lang` VALUES ('1', '2', 'Iniciar sesiÃ³n', null);
INSERT INTO `site_lang` VALUES ('2', '2', 'Bienvenido al lugar de mayor crecimiento para conocer gente nueva', null);
INSERT INTO `site_lang` VALUES ('3', '2', 'Por ahora, nuestro sitio funciona solo para usuarios de escritorio', null);
INSERT INTO `site_lang` VALUES ('347', '1', 'Choose a new password', null);
INSERT INTO `site_lang` VALUES ('346', '1', 'Unsubscribe', null);
INSERT INTO `site_lang` VALUES ('345', '1', 'You received this notice because you registered as', null);
INSERT INTO `site_lang` VALUES ('344', '1', 'Find out if you also like', null);
INSERT INTO `site_lang` VALUES ('343', '1', 'has seen you in discover and likes. The feeling is mutual?', null);
INSERT INTO `site_lang` VALUES ('342', '1', 'likes you and wants to chat in', null);
INSERT INTO `site_lang` VALUES ('339', '1', ' of ', null);
INSERT INTO `site_lang` VALUES ('337', '1', 'is calling you..', null);
INSERT INTO `site_lang` VALUES ('338', '1', 'Photos of ', null);
INSERT INTO `site_lang` VALUES ('336', '1', 'Password successfully changed', null);
INSERT INTO `site_lang` VALUES ('331', '1', 'username', null);
INSERT INTO `site_lang` VALUES ('332', '1', 'days of Premium', null);
INSERT INTO `site_lang` VALUES ('333', '1', 'Wrong', null);
INSERT INTO `site_lang` VALUES ('334', '1', 'Spotlight', null);
INSERT INTO `site_lang` VALUES ('335', '1', 'Service cost', null);
INSERT INTO `site_lang` VALUES ('323', '1', 'years old and im from', null);
INSERT INTO `site_lang` VALUES ('324', '1', 'We sended you a email for verify your account', null);
INSERT INTO `site_lang` VALUES ('325', '1', 'is blocking you or you blocked him, you cant chat with him sorry', null);
INSERT INTO `site_lang` VALUES ('326', '1', 'Report and block', null);
INSERT INTO `site_lang` VALUES ('327', '1', 'Are you sure you want to report', null);
INSERT INTO `site_lang` VALUES ('328', '1', 'Press backspace key for smart return to the meeting section.', null);
INSERT INTO `site_lang` VALUES ('329', '1', 'Write your instagram username', null);
INSERT INTO `site_lang` VALUES ('330', '1', 'You need to write your username!', null);
INSERT INTO `site_lang` VALUES ('321', '1', 'Please add a profile photo', null);
INSERT INTO `site_lang` VALUES ('322', '1', 'Hi, im', null);
INSERT INTO `site_lang` VALUES ('320', '1', 'Please verify your account, check your email', null);
INSERT INTO `site_lang` VALUES ('317', '1', 'minutes', null);
INSERT INTO `site_lang` VALUES ('318', '1', 'seconds', null);
INSERT INTO `site_lang` VALUES ('319', '1', 'ago', null);
INSERT INTO `site_lang` VALUES ('446', '1', 'Wait for a reply, or get', null);
INSERT INTO `site_lang` VALUES ('316', '1', 'hours', null);
INSERT INTO `site_lang` VALUES ('313', '1', 'years', null);
INSERT INTO `site_lang` VALUES ('314', '1', 'months', null);
INSERT INTO `site_lang` VALUES ('308', '1', 'month', null);
INSERT INTO `site_lang` VALUES ('309', '1', 'day', null);
INSERT INTO `site_lang` VALUES ('310', '1', 'hour', null);
INSERT INTO `site_lang` VALUES ('311', '1', 'minute', null);
INSERT INTO `site_lang` VALUES ('312', '1', 'second', null);
INSERT INTO `site_lang` VALUES ('305', '1', 'Credits for $', null);
INSERT INTO `site_lang` VALUES ('306', '1', '0 seconds', null);
INSERT INTO `site_lang` VALUES ('307', '1', 'year', null);
INSERT INTO `site_lang` VALUES ('301', '1', 'You dont have any visit yet', null);
INSERT INTO `site_lang` VALUES ('302', '1', 'visited', null);
INSERT INTO `site_lang` VALUES ('303', '1', 'You do not like anyone', null);
INSERT INTO `site_lang` VALUES ('304', '1', 'Cost', null);
INSERT INTO `site_lang` VALUES ('299', '1', 'Dislike', null);
INSERT INTO `site_lang` VALUES ('300', '1', 'AGE', null);
INSERT INTO `site_lang` VALUES ('297', '1', 'Messages', null);
INSERT INTO `site_lang` VALUES ('298', '1', 'Like', null);
INSERT INTO `site_lang` VALUES ('293', '1', 'people visited your profile for see them', null);
INSERT INTO `site_lang` VALUES ('294', '1', 'Upgrade your account to premium', null);
INSERT INTO `site_lang` VALUES ('295', '1', 'My likes', null);
INSERT INTO `site_lang` VALUES ('296', '1', 'people liked you, for see them', null);
INSERT INTO `site_lang` VALUES ('290', '1', 'Private photo', null);
INSERT INTO `site_lang` VALUES ('291', '1', 'Public photo', null);
INSERT INTO `site_lang` VALUES ('292', '1', 'Delete', null);
INSERT INTO `site_lang` VALUES ('283', '1', 'Add', null);
INSERT INTO `site_lang` VALUES ('284', '1', 'Photos', null);
INSERT INTO `site_lang` VALUES ('285', '1', 'Credits', null);
INSERT INTO `site_lang` VALUES ('286', '1', 'Visits', null);
INSERT INTO `site_lang` VALUES ('287', '1', 'Add me here', null);
INSERT INTO `site_lang` VALUES ('288', '1', 'get seen by millions', null);
INSERT INTO `site_lang` VALUES ('289', '1', 'Set as profile', null);
INSERT INTO `site_lang` VALUES ('281', '1', 'Private photos', null);
INSERT INTO `site_lang` VALUES ('282', '1', 'Add from ', null);
INSERT INTO `site_lang` VALUES ('273', '1', 'Month', null);
INSERT INTO `site_lang` VALUES ('274', '1', 'Year', null);
INSERT INTO `site_lang` VALUES ('275', '1', 'Please wait', null);
INSERT INTO `site_lang` VALUES ('276', '1', 'Interests', null);
INSERT INTO `site_lang` VALUES ('277', '1', 'Report', null);
INSERT INTO `site_lang` VALUES ('278', '1', 'Fans', null);
INSERT INTO `site_lang` VALUES ('279', '1', 'No data', null);
INSERT INTO `site_lang` VALUES ('280', '1', 'Public Photos', null);
INSERT INTO `site_lang` VALUES ('265', '1', 'I own a car', null);
INSERT INTO `site_lang` VALUES ('266', '1', 'I own a motorbike', null);
INSERT INTO `site_lang` VALUES ('267', '1', 'None', null);
INSERT INTO `site_lang` VALUES ('268', '1', 'When someone likes me', null);
INSERT INTO `site_lang` VALUES ('269', '1', 'When i get a match', null);
INSERT INTO `site_lang` VALUES ('270', '1', 'When new users near me join in', null);
INSERT INTO `site_lang` VALUES ('271', '1', 'When someone send me a message', null);
INSERT INTO `site_lang` VALUES ('272', '1', 'Day', null);
INSERT INTO `site_lang` VALUES ('261', '1', 'Sometimes', null);
INSERT INTO `site_lang` VALUES ('262', '1', 'Drink', null);
INSERT INTO `site_lang` VALUES ('263', '1', 'Transport', null);
INSERT INTO `site_lang` VALUES ('264', '1', 'Parents car', null);
INSERT INTO `site_lang` VALUES ('250', '1', 'Heavy set', null);
INSERT INTO `site_lang` VALUES ('251', '1', 'Curvy', null);
INSERT INTO `site_lang` VALUES ('252', '1', 'Living', null);
INSERT INTO `site_lang` VALUES ('253', '1', 'With parents', null);
INSERT INTO `site_lang` VALUES ('254', '1', 'With housemate', null);
INSERT INTO `site_lang` VALUES ('255', '1', 'Student dormitory', null);
INSERT INTO `site_lang` VALUES ('256', '1', 'With partner', null);
INSERT INTO `site_lang` VALUES ('257', '1', 'Alone', null);
INSERT INTO `site_lang` VALUES ('258', '1', 'Smoke', null);
INSERT INTO `site_lang` VALUES ('259', '1', 'Yes', null);
INSERT INTO `site_lang` VALUES ('260', '1', 'No', null);
INSERT INTO `site_lang` VALUES ('244', '1', 'Indian', null);
INSERT INTO `site_lang` VALUES ('245', '1', 'Other', null);
INSERT INTO `site_lang` VALUES ('246', '1', 'Body type', null);
INSERT INTO `site_lang` VALUES ('247', '1', 'Slim', null);
INSERT INTO `site_lang` VALUES ('248', '1', 'Average', null);
INSERT INTO `site_lang` VALUES ('249', '1', 'Athletic', null);
INSERT INTO `site_lang` VALUES ('241', '1', 'Native American', null);
INSERT INTO `site_lang` VALUES ('242', '1', 'Hispanic/latin', null);
INSERT INTO `site_lang` VALUES ('243', '1', 'Pacific Islander', null);
INSERT INTO `site_lang` VALUES ('232', '1', 'Height', null);
INSERT INTO `site_lang` VALUES ('233', '1', 'less than', null);
INSERT INTO `site_lang` VALUES ('234', '1', 'more than', null);
INSERT INTO `site_lang` VALUES ('235', '1', 'Weight', null);
INSERT INTO `site_lang` VALUES ('236', '1', 'Ethnicity', null);
INSERT INTO `site_lang` VALUES ('237', '1', 'Asian', null);
INSERT INTO `site_lang` VALUES ('238', '1', 'Middle Eastern', null);
INSERT INTO `site_lang` VALUES ('239', '1', 'Black', null);
INSERT INTO `site_lang` VALUES ('240', '1', 'White', null);
INSERT INTO `site_lang` VALUES ('230', '1', 'Straight', null);
INSERT INTO `site_lang` VALUES ('231', '1', 'Bisexual', null);
INSERT INTO `site_lang` VALUES ('221', '1', 'Notifications', null);
INSERT INTO `site_lang` VALUES ('222', '1', 'Extended info (optional)', null);
INSERT INTO `site_lang` VALUES ('223', '1', 'Relationship', null);
INSERT INTO `site_lang` VALUES ('224', '1', 'Single', null);
INSERT INTO `site_lang` VALUES ('225', '1', 'Taken', null);
INSERT INTO `site_lang` VALUES ('226', '1', 'Open', null);
INSERT INTO `site_lang` VALUES ('227', '1', 'Sexuality', null);
INSERT INTO `site_lang` VALUES ('228', '1', 'Gay', null);
INSERT INTO `site_lang` VALUES ('229', '1', 'Open-minded', null);
INSERT INTO `site_lang` VALUES ('220', '1', 'UPGRADE', null);
INSERT INTO `site_lang` VALUES ('218', '1', 'until', null);
INSERT INTO `site_lang` VALUES ('219', '1', 'Basic', null);
INSERT INTO `site_lang` VALUES ('397', '1', 'Age', null);
INSERT INTO `site_lang` VALUES ('396', '1', 'All the country', null);
INSERT INTO `site_lang` VALUES ('395', '1', 'All the world', null);
INSERT INTO `site_lang` VALUES ('394', '1', 'I want', null);
INSERT INTO `site_lang` VALUES ('393', '1', 'application', null);
INSERT INTO `site_lang` VALUES ('392', '1', 'Download our free applications', null);
INSERT INTO `site_lang` VALUES ('391', '1', 'All the city', null);
INSERT INTO `site_lang` VALUES ('390', '1', 'Have a date', null);
INSERT INTO `site_lang` VALUES ('389', '1', 'Chat with someone', null);
INSERT INTO `site_lang` VALUES ('388', '1', 'Make new friends', null);
INSERT INTO `site_lang` VALUES ('387', '1', 'Where?', null);
INSERT INTO `site_lang` VALUES ('386', '1', 'Cancel', null);
INSERT INTO `site_lang` VALUES ('385', '1', 'Update', null);
INSERT INTO `site_lang` VALUES ('398', '1', 'Popularity', null);
INSERT INTO `site_lang` VALUES ('399', '1', 'bOost', null);
INSERT INTO `site_lang` VALUES ('400', '1', ' Upload photos to your profile ', null);
INSERT INTO `site_lang` VALUES ('401', '1', 'Upload photos from', null);
INSERT INTO `site_lang` VALUES ('402', '1', 'We accept photos in JPG and PNG format.', null);
INSERT INTO `site_lang` VALUES ('403', '1', 'Files do not exceed 128 MB.', null);
INSERT INTO `site_lang` VALUES ('404', '1', 'Verify your email', null);
INSERT INTO `site_lang` VALUES ('405', '1', 'We sent you an email to', null);
INSERT INTO `site_lang` VALUES ('406', '1', 'for verify your account to meet other verified people', null);
INSERT INTO `site_lang` VALUES ('408', '1', 'Help us put a stop to the catfishers!', null);
INSERT INTO `site_lang` VALUES ('409', '1', 'You are signed in as', null);
INSERT INTO `site_lang` VALUES ('410', '1', 'Sign out', null);
INSERT INTO `site_lang` VALUES ('411', '1', 'Instant Highlights', null);
INSERT INTO `site_lang` VALUES ('413', '1', 'Put your photo in the foreground and make Fernanda, Tamara Mendina y 25.178 girls see you in your area', null);
INSERT INTO `site_lang` VALUES ('414', '1', 'Get seen by more people!', null);
INSERT INTO `site_lang` VALUES ('415', '1', 'Rise up to first place in People nearby and get visitors like Vanesa, Anna and 15,616 other people in your area', null);
INSERT INTO `site_lang` VALUES ('416', '1', 'Rise up', null);
INSERT INTO `site_lang` VALUES ('417', '1', 'Congratulations', null);
INSERT INTO `site_lang` VALUES ('418', '1', 'You have earned an award:', null);
INSERT INTO `site_lang` VALUES ('419', '1', 'The most active people', null);
INSERT INTO `site_lang` VALUES ('420', '1', 'on ', null);
INSERT INTO `site_lang` VALUES ('421', '1', 'Activate your award', null);
INSERT INTO `site_lang` VALUES ('422', '1', 'Try Super Powers for free! ', null);
INSERT INTO `site_lang` VALUES ('423', '1', ' To say thanks for joining us, we are giving you free ', null);
INSERT INTO `site_lang` VALUES ('424', '1', 'See the guys who liked you, instantly.', null);
INSERT INTO `site_lang` VALUES ('425', '1', 'Find out who added you as a Favorite.', null);
INSERT INTO `site_lang` VALUES ('426', '1', '...and much more!', null);
INSERT INTO `site_lang` VALUES ('427', '1', 'Got it', null);
INSERT INTO `site_lang` VALUES ('428', '1', 'Want to be notified in your browser when someone likes you?', null);
INSERT INTO `site_lang` VALUES ('429', '1', 'Ok', null);
INSERT INTO `site_lang` VALUES ('430', '1', 'Skip', null);
INSERT INTO `site_lang` VALUES ('431', '1', 'Highlights\r\n', null);
INSERT INTO `site_lang` VALUES ('432', '1', 'Increase your popularity and access special features other guys simply dont have', null);
INSERT INTO `site_lang` VALUES ('433', '1', 'Activate Super Powers', null);
INSERT INTO `site_lang` VALUES ('434', '1', 'Download our free applications\r\n', null);
INSERT INTO `site_lang` VALUES ('435', '1', 'Iphone application', null);
INSERT INTO `site_lang` VALUES ('436', '1', 'Android application', null);
INSERT INTO `site_lang` VALUES ('437', '1', 'Condition of uses', null);
INSERT INTO `site_lang` VALUES ('438', '1', 'Premium', null);
INSERT INTO `site_lang` VALUES ('439', '1', 'Verified', null);
INSERT INTO `site_lang` VALUES ('440', '1', 'Popular', null);
INSERT INTO `site_lang` VALUES ('441', '1', 'Online now', null);
INSERT INTO `site_lang` VALUES ('442', '1', 'Didnt get a reply?', null);
INSERT INTO `site_lang` VALUES ('443', '1', 'Highlight your message and put it at the top of her list', null);
INSERT INTO `site_lang` VALUES ('444', '1', 'Highlight', null);
INSERT INTO `site_lang` VALUES ('445', '1', 'is writing', null);
INSERT INTO `site_lang` VALUES ('447', '1', ' attention with a gift', null);
INSERT INTO `site_lang` VALUES ('448', '1', 'Unlock now', null);
INSERT INTO `site_lang` VALUES ('449', '1', 'Become premium', null);
INSERT INTO `site_lang` VALUES ('450', '1', 'new people liked you. unlock them now', null);
INSERT INTO `site_lang` VALUES ('451', '1', 'Become premium for see who likes you and get super powers in ', null);
INSERT INTO `site_lang` VALUES ('452', '1', 'Become premium', null);
INSERT INTO `site_lang` VALUES ('453', '1', 'Increase your popularity and access special features other guys simply dont have', null);
INSERT INTO `site_lang` VALUES ('454', '1', 'Ubication', null);
INSERT INTO `site_lang` VALUES ('455', '1', 'Discover how close you are to', null);
INSERT INTO `site_lang` VALUES ('456', '1', 'Show in the map', null);
INSERT INTO `site_lang` VALUES ('457', '1', ' wants', null);
INSERT INTO `site_lang` VALUES ('458', '1', 'Wants to chat', null);
INSERT INTO `site_lang` VALUES ('459', '1', 'Languages', null);
INSERT INTO `site_lang` VALUES ('460', '1', 'Puntuation', null);
INSERT INTO `site_lang` VALUES ('461', '1', 'people', null);
INSERT INTO `site_lang` VALUES ('462', '1', ' likes to ', null);
INSERT INTO `site_lang` VALUES ('463', '1', 'Gifts', null);
INSERT INTO `site_lang` VALUES ('464', '1', 'Get', null);
INSERT INTO `site_lang` VALUES ('465', '1', 'Last connection', null);
INSERT INTO `site_lang` VALUES ('466', '1', 'Chat now', null);
INSERT INTO `site_lang` VALUES ('467', '1', 'Your message has been sent\r\n', null);
INSERT INTO `site_lang` VALUES ('468', '1', 'Start a conversation with\r\n', null);
INSERT INTO `site_lang` VALUES ('470', '1', 'Location', null);
INSERT INTO `site_lang` VALUES ('471', '1', 'want to chat\r\n', null);
INSERT INTO `site_lang` VALUES ('472', '1', 'Add private', null);
INSERT INTO `site_lang` VALUES ('473', '1', 'Increase', null);
INSERT INTO `site_lang` VALUES ('474', '1', 'Super Powers', null);
INSERT INTO `site_lang` VALUES ('475', '1', 'Start a conversation with\r\n', null);
INSERT INTO `site_lang` VALUES ('476', '1', 'Meet more people with ', null);
INSERT INTO `site_lang` VALUES ('477', '1', 'Go to the top and make more people see your profile', null);
INSERT INTO `site_lang` VALUES ('478', '1', 'Make more girls vote for you by showing your photo on meetings', null);
INSERT INTO `site_lang` VALUES ('479', '1', ' get seen by all the girls of ', null);
INSERT INTO `site_lang` VALUES ('480', '1', 'Send stickers in your messages ', null);
INSERT INTO `site_lang` VALUES ('481', '1', 'Send the perfect gift to ', null);
INSERT INTO `site_lang` VALUES ('482', '1', 'that girl you like', null);
INSERT INTO `site_lang` VALUES ('483', '1', 'Show that you are online', null);
INSERT INTO `site_lang` VALUES ('484', '1', 'Super Powers activated till ', null);
INSERT INTO `site_lang` VALUES ('485', '1', 'Activate your Super Powers', null);
INSERT INTO `site_lang` VALUES ('486', '1', 'Activate now', null);
INSERT INTO `site_lang` VALUES ('487', '1', 'Email me when someone likes me', null);
INSERT INTO `site_lang` VALUES ('488', '1', 'Email me when i get a match', null);
INSERT INTO `site_lang` VALUES ('489', '1', 'Email me when new users near join in', null);
INSERT INTO `site_lang` VALUES ('490', '1', 'Email me when someone send me a message', null);
INSERT INTO `site_lang` VALUES ('491', '1', 'people visited your profile for see them upgrade your account to premium', null);
INSERT INTO `site_lang` VALUES ('492', '1', 'Become premium for see your visitors and get super powers in', null);
INSERT INTO `site_lang` VALUES ('493', '1', 'Access the', null);
INSERT INTO `site_lang` VALUES ('494', '1', 'girls who liked you', null);
INSERT INTO `site_lang` VALUES ('495', '1', 'instantly', null);
INSERT INTO `site_lang` VALUES ('496', '1', 'Be the first to chat to', null);
INSERT INTO `site_lang` VALUES ('497', '1', 'popular users', null);
INSERT INTO `site_lang` VALUES ('498', '1', 'Increase your visibility', null);
INSERT INTO `site_lang` VALUES ('499', '1', 'Be able to start a videocall in the site', null);
INSERT INTO `site_lang` VALUES ('500', '1', 'Have your messages read first by all your contacts', null);
INSERT INTO `site_lang` VALUES ('501', '1', 'View other users profiles invisibly without anyone knowing', null);
INSERT INTO `site_lang` VALUES ('502', '1', 'Start great conversation with more people per day', null);
INSERT INTO `site_lang` VALUES ('503', '1', 'Your popularity ', null);
INSERT INTO `site_lang` VALUES ('504', '1', 'Low', null);
INSERT INTO `site_lang` VALUES ('505', '1', 'Want to get seen by more people in', null);
INSERT INTO `site_lang` VALUES ('506', '1', 'Here is how', null);
INSERT INTO `site_lang` VALUES ('507', '1', 'Rise up in People nearby', null);
INSERT INTO `site_lang` VALUES ('508', '1', 'Rise up to first place and get new visitors', null);
INSERT INTO `site_lang` VALUES ('509', '1', 'Rise up to number one', null);
INSERT INTO `site_lang` VALUES ('510', '1', 'Add shows in Encounters', null);
INSERT INTO `site_lang` VALUES ('511', '1', 'Be shown to hundreds more people in Encounters, and', null);
INSERT INTO `site_lang` VALUES ('512', '1', 'get more fans', null);
INSERT INTO `site_lang` VALUES ('513', '1', 'Add extra shows', null);
INSERT INTO `site_lang` VALUES ('514', '1', 'Get featured now', null);
INSERT INTO `site_lang` VALUES ('515', '1', 'Your popularity promote your best photo, so lots of new people in', null);
INSERT INTO `site_lang` VALUES ('516', '1', 'will see it', null);
INSERT INTO `site_lang` VALUES ('517', '1', 'Lets go', null);
INSERT INTO `site_lang` VALUES ('518', '1', 'Get the', null);
INSERT INTO `site_lang` VALUES ('519', '1', 'Mobile app and get seen more in search results in your area', null);
INSERT INTO `site_lang` VALUES ('520', '1', 'Download iOS', null);
INSERT INTO `site_lang` VALUES ('521', '1', 'Download Android', null);
INSERT INTO `site_lang` VALUES ('522', '1', 'Get noticed by putting your best face forward. Upload your best photos now', null);
INSERT INTO `site_lang` VALUES ('523', '1', 'Upload more photos', null);
INSERT INTO `site_lang` VALUES ('524', '1', 'We are glad to have created an account at', null);
INSERT INTO `site_lang` VALUES ('525', '1', 'to help you have more success we give you', null);
INSERT INTO `site_lang` VALUES ('526', '1', 'Get seen 100 times in Discover!', null);
INSERT INTO `site_lang` VALUES ('527', '1', 'Want to know a really easy way to get new matches fast? We can feature you 100 times in Discover, so others can easily find you!', null);
INSERT INTO `site_lang` VALUES ('528', '1', 'Delete conversation', null);
INSERT INTO `site_lang` VALUES ('384', '1', 'Ok, i understand', null);
INSERT INTO `site_lang` VALUES ('383', '1', 'must like you for start a videocall', null);
INSERT INTO `site_lang` VALUES ('382', '1', 'dont like you', null);
INSERT INTO `site_lang` VALUES ('381', '1', 'calling...', null);
INSERT INTO `site_lang` VALUES ('529', '1', 'I am', null);
INSERT INTO `site_lang` VALUES ('530', '1', 'I wanna meet', null);
INSERT INTO `site_lang` VALUES ('531', '1', 'Show me everybody', null);
INSERT INTO `site_lang` VALUES ('532', '1', 'has read your message', null);
INSERT INTO `site_lang` VALUES ('533', '1', 'has not read your message yet', null);
INSERT INTO `site_lang` VALUES ('1000', '1', 'Do you already have an account?', null);
INSERT INTO `site_lang` VALUES ('1001', '1', 'Enter', null);
INSERT INTO `site_lang` VALUES ('1002', '1', 'is a social discovery website for meeting new people', null);
INSERT INTO `site_lang` VALUES ('1003', '1', 'Millions of people from all over the world are having fun and making new friends every day', null);
INSERT INTO `site_lang` VALUES ('1004', '1', 'Its faster with social networks', null);
INSERT INTO `site_lang` VALUES ('1005', '1', 'Join in!', null);
INSERT INTO `site_lang` VALUES ('1006', '1', 'A nice opportunity to make both friendly and romantic connections with real people.', null);
INSERT INTO `site_lang` VALUES ('1007', '1', 'network users', null);
INSERT INTO `site_lang` VALUES ('1008', '1', 'Easy to make new friends', null);
INSERT INTO `site_lang` VALUES ('1009', '1', 'Play our popular Discovery game and get matched with other users. \"Like\" is a great way to break the ice and chat with new people.', null);
INSERT INTO `site_lang` VALUES ('1010', '1', 'Interesting people nearby', null);
INSERT INTO `site_lang` VALUES ('1011', '1', 'Find remarkable people on your city map, get in touch and have a great time together!', null);
INSERT INTO `site_lang` VALUES ('1012', '1', 'Stay in touch wherever you go with our apps', null);
INSERT INTO `site_lang` VALUES ('1013', '1', 'The application is free to download', null);
INSERT INTO `site_lang` VALUES ('1014', '1', '', null);
INSERT INTO `site_lang` VALUES ('1015', '1', '', null);
INSERT INTO `site_lang` VALUES ('1016', '1', '', null);
INSERT INTO `site_lang` VALUES ('1017', '1', '', null);
INSERT INTO `site_lang` VALUES ('1018', '1', '', null);
INSERT INTO `site_lang` VALUES ('1019', '1', '', null);
INSERT INTO `site_lang` VALUES ('1020', '1', '', null);
INSERT INTO `site_lang` VALUES ('534', '1', 'Latest messages', null);
INSERT INTO `site_lang` VALUES ('535', '1', 'Online friends', null);

-- ----------------------------
-- Table structure for spotlight
-- ----------------------------
DROP TABLE IF EXISTS `spotlight`;
CREATE TABLE `spotlight` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `u_id` int(9) NOT NULL,
  `time` varchar(100) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `photo` varchar(300) NOT NULL,
  `lang` int(3) NOT NULL,
  `country` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12328 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of spotlight
-- ----------------------------

-- ----------------------------
-- Table structure for theme_settings
-- ----------------------------
DROP TABLE IF EXISTS `theme_settings`;
CREATE TABLE `theme_settings` (
  `theme` varchar(200) NOT NULL,
  `setting` varchar(200) NOT NULL,
  `setting_val` varchar(200) DEFAULT NULL,
  `title` text,
  `info` text,
  PRIMARY KEY (`theme`,`setting`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of theme_settings
-- ----------------------------
INSERT INTO `theme_settings` VALUES ('default', 'menu_background', '#fff', 'Menu background ', 'Menu background color (top header)');
INSERT INTO `theme_settings` VALUES ('default', 'menu_font_color', '#111', 'Menu font color', 'Menu font color (top header)');
INSERT INTO `theme_settings` VALUES ('default', 'body_background', '#eee', 'Body background', 'Main color of the left and right body section');
INSERT INTO `theme_settings` VALUES ('landing1', 'background_image', 'themes/landing1/img/bg.jpg', 'Background image', 'Top image background');
INSERT INTO `theme_settings` VALUES ('landing1', 'background_color', '#fff', 'Background color', 'Background color of all the landing theme');
INSERT INTO `theme_settings` VALUES ('landing1', 'font_color', '#333', 'Font color', 'Font color of all the landing theme');
INSERT INTO `theme_settings` VALUES ('default', 'card_design', 'card3', 'Card Design for Meet Section', 'You can choose from 3 different card design');

-- ----------------------------
-- Table structure for themes
-- ----------------------------
DROP TABLE IF EXISTS `themes`;
CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of themes
-- ----------------------------
INSERT INTO `themes` VALUES ('1', 'front', '1');
INSERT INTO `themes` VALUES ('2', 'landing', '2');
INSERT INTO `themes` VALUES ('3', 'email', '3');
INSERT INTO `themes` VALUES ('4', 'mobile', '4');
INSERT INTO `themes` VALUES ('5', 'landing1', '2');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `age` int(3) NOT NULL,
  `birthday` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `gender` int(1) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `credits` int(9) NOT NULL DEFAULT '0',
  `premium` int(9) NOT NULL DEFAULT '0',
  `last_access` varchar(100) NOT NULL DEFAULT '0',
  `app_id` varchar(300) NOT NULL DEFAULT '0',
  `facebook_id` varchar(100) NOT NULL DEFAULT '0',
  `looking` int(1) NOT NULL,
  `verified` int(1) NOT NULL DEFAULT '0',
  `popular` int(9) NOT NULL DEFAULT '0',
  `lang` int(3) NOT NULL DEFAULT '1',
  `admin` int(9) NOT NULL DEFAULT '0',
  `fake` int(1) DEFAULT '0',
  `online_day` int(1) NOT NULL,
  `join_date` varchar(100) DEFAULT NULL,
  `s_age` varchar(10) DEFAULT '',
  `s_gender` int(1) DEFAULT NULL,
  `s_radious` int(9) DEFAULT '20000',
  `sexy` int(9) DEFAULT '0',
  `total` int(9) DEFAULT '0',
  `bio` longtext,
  `meet` int(5) DEFAULT '0',
  `discover` int(5) DEFAULT '0',
  `twitter_id` varchar(200) DEFAULT NULL,
  `google_id` varchar(200) DEFAULT NULL,
  `instagram_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `USER` (`id`,`age`,`gender`) USING BTREE,
  KEY `EMAIL` (`email`) USING BTREE,
  KEY `GEO` (`lat`,`lng`) USING BTREE,
  KEY `CITY` (`city`) USING BTREE,
  KEY `COUNTRY` (`country`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Admin', 'admin@admin.com', '$1$5hUKHngR$aXfKBOo3xnjwX9aOeK47B0', '35', 'April 29, 1981', 'Los Angeles', 'Estados Unidos', '1', '34.0522342', '-118.2436849', '100', '0', '1492410086', '0', '0', '2', '1', '0', '1', '1', '0', '0', '04/17/2017', '18,30', '2', '20000', '0', '0', 'Hey its the admin!', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for users_blocks
-- ----------------------------
DROP TABLE IF EXISTS `users_blocks`;
CREATE TABLE `users_blocks` (
  `uid1` int(9) NOT NULL,
  `uid2` int(9) NOT NULL,
  PRIMARY KEY (`uid1`,`uid2`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of users_blocks
-- ----------------------------

-- ----------------------------
-- Table structure for users_chat
-- ----------------------------
DROP TABLE IF EXISTS `users_chat`;
CREATE TABLE `users_chat` (
  `uid` int(9) NOT NULL,
  `date` varchar(100) NOT NULL,
  `count` int(9) NOT NULL,
  `last_chat` varchar(50) NOT NULL,
  PRIMARY KEY (`date`,`uid`),
  UNIQUE KEY `KEY` (`date`,`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_chat
-- ----------------------------

-- ----------------------------
-- Table structure for users_extended
-- ----------------------------
DROP TABLE IF EXISTS `users_extended`;
CREATE TABLE `users_extended` (
  `uid` int(9) NOT NULL,
  `field1` longtext,
  `field2` longtext,
  `field3` longtext,
  `field4` varchar(100) DEFAULT NULL,
  `field5` varchar(100) DEFAULT NULL,
  `field6` varchar(100) DEFAULT NULL,
  `field7` varchar(100) DEFAULT NULL,
  `field8` varchar(100) DEFAULT NULL,
  `field9` varchar(100) DEFAULT NULL,
  `field10` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_extended
-- ----------------------------

-- ----------------------------
-- Table structure for users_gift
-- ----------------------------
DROP TABLE IF EXISTS `users_gift`;
CREATE TABLE `users_gift` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `s_id` int(9) DEFAULT NULL,
  `r_id` int(9) DEFAULT NULL,
  `g_id` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_gift
-- ----------------------------

-- ----------------------------
-- Table structure for users_interest
-- ----------------------------
DROP TABLE IF EXISTS `users_interest`;
CREATE TABLE `users_interest` (
  `i_id` int(9) NOT NULL,
  `u_id` int(9) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`i_id`,`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_interest
-- ----------------------------

-- ----------------------------
-- Table structure for users_likes
-- ----------------------------
DROP TABLE IF EXISTS `users_likes`;
CREATE TABLE `users_likes` (
  `u1` int(11) NOT NULL,
  `u2` int(11) NOT NULL,
  `love` int(1) NOT NULL,
  `time` varchar(20) NOT NULL,
  `notification` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`u1`,`u2`),
  UNIQUE KEY `KEY` (`u1`,`u2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_likes
-- ----------------------------

-- ----------------------------
-- Table structure for users_notifications
-- ----------------------------
DROP TABLE IF EXISTS `users_notifications`;
CREATE TABLE `users_notifications` (
  `uid` int(9) NOT NULL,
  `visit` int(1) DEFAULT '1',
  `match_m` int(1) DEFAULT '1',
  `fan` int(1) DEFAULT '1',
  `near_me` int(1) DEFAULT '1',
  `message` int(1) DEFAULT '1',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_notifications
-- ----------------------------

-- ----------------------------
-- Table structure for users_photos
-- ----------------------------
DROP TABLE IF EXISTS `users_photos`;
CREATE TABLE `users_photos` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `u_id` int(9) NOT NULL,
  `photo` varchar(250) NOT NULL,
  `desc` text NOT NULL,
  `approved` int(1) NOT NULL DEFAULT '1',
  `blocked` int(1) NOT NULL DEFAULT '0',
  `thumb` varchar(250) NOT NULL,
  `profile` int(1) NOT NULL DEFAULT '0',
  `private` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `PHOTO` (`photo`) USING BTREE,
  KEY `PROFILE` (`id`,`profile`) USING BTREE,
  KEY `USER` (`u_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=70984 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_photos
-- ----------------------------

-- ----------------------------
-- Table structure for users_premium
-- ----------------------------
DROP TABLE IF EXISTS `users_premium`;
CREATE TABLE `users_premium` (
  `uid` int(9) NOT NULL,
  `premium` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_premium
-- ----------------------------

-- ----------------------------
-- Table structure for users_profile_questions
-- ----------------------------
DROP TABLE IF EXISTS `users_profile_questions`;
CREATE TABLE `users_profile_questions` (
  `uid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `answer` text,
  PRIMARY KEY (`uid`,`qid`),
  UNIQUE KEY `KEY` (`uid`,`qid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_profile_questions
-- ----------------------------

-- ----------------------------
-- Table structure for users_videocall
-- ----------------------------
DROP TABLE IF EXISTS `users_videocall`;
CREATE TABLE `users_videocall` (
  `u_id` int(9) NOT NULL,
  `peer_id` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_videocall
-- ----------------------------

-- ----------------------------
-- Table structure for users_visits
-- ----------------------------
DROP TABLE IF EXISTS `users_visits`;
CREATE TABLE `users_visits` (
  `u1` int(11) NOT NULL,
  `u2` int(11) NOT NULL,
  `timeago` varchar(100) NOT NULL,
  `notification` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`u1`,`u2`),
  UNIQUE KEY `KEY` (`u1`,`u2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_visits
-- ----------------------------

-- ----------------------------
-- Table structure for videocall
-- ----------------------------
DROP TABLE IF EXISTS `videocall`;
CREATE TABLE `videocall` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `c_id` int(9) NOT NULL,
  `r_id` int(9) NOT NULL,
  `time` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videocall
-- ----------------------------
