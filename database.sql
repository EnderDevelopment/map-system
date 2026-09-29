CREATE TABLE IF NOT EXISTS `map_system` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `player_id` int(11) NOT NULL,
    `map_name` varchar(255) NOT NULL,
    `blip_id` int(11) NOT NULL,
    `blip_color` int(11) NOT NULL,
    `blip_scale` float NOT NULL,
    PRIMARY KEY (`id`)
);

INSERT INTO `map_system` (`player_id`, `map_name`, `blip_id`, `blip_color`, `blip_scale`) VALUES
(1, 'Default Map', 1, 2, 1.0);