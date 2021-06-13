CREATE TABLE IF NOT EXISTS `schedule` (
  `schedule_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `schedule_date` date NOT NULL,
  `bus_id` tinyint unsigned NOT NULL,
  `route_id` smallint unsigned NOT NULL,
  `schedule_state` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`schedule_id`),
  KEY `fk_schedule_route_idx` (`route_id`),
  CONSTRAINT `fk_schedule_route` FOREIGN KEY (`route_id`) REFERENCES `route` (`route_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;