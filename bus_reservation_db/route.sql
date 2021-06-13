CREATE TABLE IF NOT EXISTS `route` (
  `route_id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `route_term_state` enum('termweek','termweekend','vacationweek','vacationweekend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_price` smallint unsigned NOT NULL,
  `route_keep` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;