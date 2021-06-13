CREATE TABLE IF NOT EXISTS `bank` (
  `bank_id` smallint(3) unsigned zerofill NOT NULL,
  `bank_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='a list of banks';