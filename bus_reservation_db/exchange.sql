CREATE TABLE IF NOT EXISTS `exchange` (
  `exchange_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` smallint unsigned NOT NULL,
  `user_id` smallint unsigned NOT NULL,
  `exchange_time` datetime DEFAULT NULL,
  `exchange_price` mediumint unsigned NOT NULL,
  `exchange_type` enum('deposit','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_state` enum('progress','success','wrongamount','fail') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'progress',
  PRIMARY KEY (`exchange_id`),
  KEY `account_id_idx` (`account_id`),
  KEY `user_id_idx` (`user_id`),
  CONSTRAINT `fk_exchange_account` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_exchange_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;