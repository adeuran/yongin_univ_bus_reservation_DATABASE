CREATE TABLE IF NOT EXISTS `station` (
  `station_id` tinyint unsigned NOT NULL,
  `station_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `station_explain` text COLLATE utf8mb4_unicode_ci,
  `station_position` geometry NOT NULL,
  `station_image` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`station_id`),
  UNIQUE KEY `station_name_UNIQUE` (`station_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;