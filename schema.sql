CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
 /* Describe your table here.*/
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `text` CHAR(140) NULL DEFAULT NULL,
  `id_users` TINYINT NULL DEFAULT NULL,
  `id_rooms` TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `username` CHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `rooms` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `roomname` CHAR(30) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- SELECT EXISTS(SELECT * FROM users WHERE username = 'john');

-- IF SELECT EXISTS(SELECT * FROM users WHERE username = 'john') = 1 THEN
--   INSERT INTO messages (roomname, username, text) values  VALUES ('Sports','john','I am the walrus.');
-- ELSE
--   INSERT INTO users (username) values ('john');
  
-- END IF;


/* You can also create more tables, if you need them... */

/*  Execute this file from the command line by typing:
 *    mysql < schema.sql   
 *  to create the database and the tables.*/

 /*Mad username and roomname unique by:

ALTER TABLE Persons
ADD UNIQUE (P_Id)