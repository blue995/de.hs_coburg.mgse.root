DROP USER 'mgse_user'@'localhost';
DROP DATABASE IF EXISTS mgse_user_db;
CREATE DATABASE mgse_user_db;
CREATE USER 'mgse_user'@'localhost' IDENTIFIED BY 'ageofempires3';
GRANT ALL PRIVILEGES ON mgse_user_db.* TO 'mgse_user'@'localhost';
