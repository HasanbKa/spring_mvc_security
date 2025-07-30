USE `employee_directory`;

DROP TABLE IF EXISTS `authorities`;
DROP TABLE IF EXISTS `users`;

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `enabled` tinyint NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `users`
--
-- NOTE: The passwords are encrypted using BCrypt
--

INSERT INTO `users` 
VALUES 
('hasan','{bcrypt}$2a$10$AdlikcPfWzCC8YAB1I9B2e8IsNSDZKaUf9PN6QvZC2EN4AG33F5B.',1),
('ali','{bcrypt}$2a$10$3QdqBUFSX9XzGEHGRM40l.8OoPMKDFMZgEebGUlpyr93CHIJt50Aa',1),
('julian','{bcrypt}$2a$10$LR0DpbQgfqdBo0Fo8.0d9ezX1aQg7P4lCYIiL5t28OBw4pd5XsIrC',1);


--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities4_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities4_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Inserting data for table `authorities`
--

INSERT INTO `authorities` 
VALUES 
('hasan','ROLE_EMPLOYEE'),
('ali','ROLE_EMPLOYEE'),
('ali','ROLE_MANAGER'),
('julian','ROLE_EMPLOYEE'),
('julian','ROLE_MANAGER'),
('julian','ROLE_ADMIN');