CREATE TABLE IF NOT EXISTS `bustype` (
  `bustype_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `bustype_capacity` tinyint NOT NULL,
  `bustype_title` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`bustype_id`),
  UNIQUE KEY `bustype_title_UNIQUE` (`bustype_title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;