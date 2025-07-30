USE `employee_directory`;

DROP TABLE IF EXISTS `roles`;
DROP TABLE IF EXISTS `members`;

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user_id` varchar(50) NOT NULL,
  `pw` char(68) NOT NULL,
  `active` tinyint NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `members`
--
-- NOTE: The passwords are encrypted using BCrypt
--

INSERT INTO `members`
VALUES
('hasan','{bcrypt}$2a$10$AdlikcPfWzCC8YAB1I9B2e8IsNSDZKaUf9PN6QvZC2EN4AG33F5B.',1),
('ali','{bcrypt}$2a$10$3QdqBUFSX9XzGEHGRM40l.8OoPMKDFMZgEebGUlpyr93CHIJt50Aa',1),
('julian','{bcrypt}$2a$10$LR0DpbQgfqdBo0Fo8.0d9ezX1aQg7P4lCYIiL5t28OBw4pd5XsIrC',1);


--
-- Table structure for table `authorities`
--

CREATE TABLE `roles` (
  `user_id` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  UNIQUE KEY `authorities5_idx_1` (`user_id`,`role`),
  CONSTRAINT `authorities5_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `members` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `roles`
--

INSERT INTO `roles`
VALUES
('hasan','ROLE_EMPLOYEE'),
('ali','ROLE_EMPLOYEE'),
('ali','ROLE_MANAGER'),
('julian','ROLE_EMPLOYEE'),
('julian','ROLE_MANAGER'),
('julian','ROLE_ADMIN');