<?php

class Money{
    public $connectDB;
    public $message;

    public $meneyId;
    public $moneyDetail;
    public $moneyDate;
    public $moneyInOut;
    public $moneyType;
    public $userId;

    public function __construct($connectDB){
        $this->connectDB = $connectDB;
    }

    public function getMoney($userId){
        $strSql = "SELECT * FROM money_tb WHERE userId = :userId ORDER BY moneyDate DESC";

        $userId = intval(htmlspecialchars(strip_tags($userId)));

        $stmt = $this->connectDB->prepare($strSql);

        $stmt->bindParam(":userId", $userId);

        $stmt->execute();
        return $stmt;
    }

    public function insertMoney($moneyDetail, $moneyDate, $moneyInOut, $moneyType, $userId){
        $strSql = 'INSERT INTO money_tb (moneyDetail, moneyDate, moneyInOut, moneyType, userId) VALUES (:moneyDetail, :moneyDate, :moneyInOut, :moneyType, :userId)';

        $moneyDetail = htmlspecialchars(strip_tags($moneyDetail));
        $moneyDate = htmlspecialchars(strip_tags($moneyDate));
        $moneyInOut = htmlspecialchars(strip_tags($moneyInOut));
        $moneyType = htmlspecialchars(strip_tags($moneyType));
        $userId = htmlspecialchars(strip_tags($userId));

        $stmt = $this->connectDB->prepare($strSql);

        $stmt->bindParam(':moneyDetail', $moneyDetail);
        $stmt->bindParam(':moneyDate', $moneyDate);
        $stmt->bindParam(':moneyInOut', $moneyInOut);
        $stmt->bindParam(':moneyType', $moneyType);
        $stmt->bindParam(':userId', $userId);

        if($stmt->execute()){
            return true;
        } else {
            return false;
        }
    }
}