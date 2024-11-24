<?php

class User{
    public $connectDB;
    public $message;

    public $userId;
    public $userFullName;
    public $userBirthDate;
    public $userName;
    public $userPassword;
    public $userImage;

    public function __construct($connectDB){
        $this->connectDB = $connectDB;
    }

    public function checkLogin($userName, $userPassword){
        $strSql = 'SELECT * FROM user_tb WHERE userName = :userName';

        $userName = htmlspecialchars(strip_tags($userName));

        $stmt = $this->connectDB->prepare($strSql);

        $stmt->bindParam(':userName', $userName);

        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);

        if($result['userPassword'] == $userPassword){
            return $result;
        } else {
            return false;
        }
    }

    public function registerUser($userFullName, $userBirthDate, $userName, $userPassword, $userImage){
        $strSql = 'INSERT INTO user_tb (userFullName, userBirthDate, userName, userPassword, userImage) VALUES (:userFullName, :userBirthDate, :userName, :userPassword, :userImage)';

        $userFullName = htmlspecialchars(strip_tags($userFullName));
        $userBirthDate = htmlspecialchars(strip_tags($userBirthDate));
        $userName = htmlspecialchars(strip_tags($userName));
        $userPassword = htmlspecialchars(strip_tags($userPassword));
        $userImage = htmlspecialchars(strip_tags($userImage));

        $stmt = $this->connectDB->prepare($strSql);

        $stmt->bindParam(':userFullName', $userFullName);
        $stmt->bindParam(':userBirthDate', $userBirthDate);
        $stmt->bindParam(':userName', $userName);
        $stmt->bindParam(':userPassword', $userPassword);
        $stmt->bindParam(':userImage', $userImage);

        if($stmt->execute()){
            return true;
        } else {
            return false;
        }
    }
}