CREATE DATABASE money_tracking_db
    DEFAULT CHARACTER SET = 'utf8mb4';

CREATE TABLE user_tb(  
    userId INT PRIMARY KEY AUTO_INCREMENT,
    userFullName VARCHAR(100) NOT NULL,
    userBirthDate VARCHAR(100) NOT NULL,
    userName VARCHAR(50) NOT NULL,
    userPassword VARCHAR(50) NOT NULL,
    userImage VARCHAR(100) NOT NULL
);

CREATE TABLE money_tb(
    moneyId INT PRIMARY KEY AUTO_INCREMENT,
    moneyDetail VARCHAR(100) NOT NULL,
    moneyDate VARCHAR(100) NOT NULL,
    moneyInOut DOUBLE NOT NULL,
    moneyType INT NOT NULL,
    userId INT NOT NULL,
    FOREIGN KEY (userId) REFERENCES user_tb(userId)
);