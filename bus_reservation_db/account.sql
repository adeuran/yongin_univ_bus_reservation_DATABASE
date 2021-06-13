CREATE TABLE IF NOT EXISTS `account` (
  `account_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `account_number` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_id` smallint(3) unsigned zerofill NOT NULL,
  `account_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_expire` date DEFAULT NULL,
  `account_type` enum('user','virtual') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`account_id`),
  KEY `bank_id_idx` (`bank_id`),
  CONSTRAINT `fk_account_bank` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`bank_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;