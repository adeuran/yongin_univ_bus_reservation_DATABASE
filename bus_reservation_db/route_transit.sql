CREATE TABLE IF NOT EXISTS `route_transit` (
  `route_id` smallint unsigned NOT NULL,
  `sation_id` tinyint unsigned NOT NULL,
  `transit_time` time NOT NULL,
  PRIMARY KEY (`route_id`,`sation_id`),
  KEY `tk_routetransit_station_idx` (`sation_id`),
  CONSTRAINT `fk_routetransit_route` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_routetransit_station` FOREIGN KEY (`sation_id`) REFERENCES `station` (`station_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;