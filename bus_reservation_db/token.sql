CREATE TABLE IF NOT EXISTS `token` (
  `token_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` smallint unsigned NOT NULL,
  `token_token` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_issued` date NOT NULL COMMENT 'issued Date',
  PRIMARY KEY (`token_id`),
  UNIQUE KEY `token_token` (`token_token`),
  KEY `fk_user_token` (`user_id`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;