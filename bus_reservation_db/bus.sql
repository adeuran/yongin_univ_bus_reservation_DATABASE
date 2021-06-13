CREATE TABLE IF NOT EXISTS `bus` (
  `bus_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `bus_plate` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bus_state` enum('normal','repair','nomoreuse','scrapped') COLLATE utf8mb4_unicode_ci NOT NULL,
  `bustype_id` tinyint unsigned NOT NULL,
  PRIMARY KEY (`bus_id`),
  KEY `fk_bus_bustype_idx` (`bustype_id`),
  CONSTRAINT `fk_bus_bustype` FOREIGN KEY (`bustype_id`) REFERENCES `bustype` (`bustype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;