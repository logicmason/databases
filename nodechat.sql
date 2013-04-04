



-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
-- 
-- ---

DROP TABLE IF EXISTS `users`;
    
CREATE TABLE `users` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `username` CHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'messages'
-- 
-- ---

DROP TABLE IF EXISTS `messages`;
    
CREATE TABLE `messages` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `text` CHAR(140) NULL DEFAULT NULL,
  `id_users` TINYINT NULL DEFAULT NULL,
  `id_rooms` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'rooms'
-- 
-- ---

DROP TABLE IF EXISTS `rooms`;
    
CREATE TABLE `rooms` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `roomname` CHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (id_rooms) REFERENCES `rooms` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `rooms` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `users` (`id`,`username`) VALUES
-- ('','');
-- INSERT INTO `messages` (`id`,`text`,`id_users`,`id_rooms`) VALUES
-- ('','','','');
-- INSERT INTO `rooms` (`id`,`roomname`) VALUES
-- ('','');

