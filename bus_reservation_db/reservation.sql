CREATE TABLE IF NOT EXISTS `reservation` (
  `reservation_id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` mediumint unsigned NOT NULL,
  `user_id` smallint unsigned NOT NULL,
  `reservation_time` timestamp NOT NULL,
  `reservation_seat` tinyint NOT NULL,
  `reservation_board` tinyint NOT NULL DEFAULT '0',
  `reservation_canceltime` datetime DEFAULT NULL,
  PRIMARY KEY (`reservation_id`),
  KEY `fk_reservation_schedule_idx` (`schedule_id`),
  KEY `fk_reservation_user_idx` (`user_id`),
  CONSTRAINT `fk_reservation_schedule` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_reservation_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;