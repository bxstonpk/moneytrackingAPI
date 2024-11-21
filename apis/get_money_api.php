<?php

// API for getting money
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json; charset=UTF-8");

// include database and object files
require_once './../models/money.php';
require_once './../connectDB.php';

// instantiate database and money object
$connectDB = new ConnectDB();
$money = new Money($connectDB->createConnectionDB());

// get posted data
$data = json_decode(file_get_contents("php://input"));

$result = $money->getMoney($data->userId);

if($result){
    $resultData = array();
    $resultArray = array(
        "message" => "1",
        "moneyDetail" => $result['moneyDetail'],
        "moneyDate" => $result['moneyDate'],
        "moneyInOut" => $result['moneyInOut'],
        "moneyType" => $result['moneyType'],
        "userId" => $result['userId'],
    );
    array_push($resultData, $resultArray);
    echo json_encode($resultData);
} else {
    $resultData = array();
    $resultArray = array(
        "message" => "0",
    );
    array_push($resultData, $resultArray);
    echo json_encode($resultData);
}