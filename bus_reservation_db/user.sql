CREATE TABLE IF NOT EXISTS `user` (
  `user_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `user_identifier` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_password` char(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-normal 2-terminal 3-admin',
  `user_point` mediumint unsigned NOT NULL DEFAULT '0',
  `user_penalty` tinyint NOT NULL DEFAULT '0',
  `user_banned` date DEFAULT NULL,
  `user_state` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_account_id_UNIQUE` (`user_identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;