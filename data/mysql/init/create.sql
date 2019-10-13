CREATE DATABASE IF NOT EXISTS `gradi`;
CREATE DATABASE IF NOT EXISTS `gradi_test`;
CREATE USER 'gradi'@'localhost' IDENTIFIED BY 'gradi';

GRANT ALL PRIVILEGES ON gradi.* TO 'gradi'@'%';
GRANT ALL PRIVILEGES ON gradi.* TO 'gradi'@'localhost';
GRANT ALL PRIVILEGES ON gradi_test.* TO 'gradi'@'localhost';
GRANT ALL PRIVILEGES ON gradi_test.* TO 'gradi'@'%';
-- GRANT ALL ON *.* TO 'gradi_test'@'%';
