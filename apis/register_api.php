<?php

// API for user registration
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json; charset=UTF-8");

// include database and object files
require_once './../models/user.php';
require_once './../connectDB.php';

// instantiate database and user object
$connectDB = new ConnectDB();
$user = new User($connectDB->createConnectionDB());

// get posted data
$data = json_decode(file_get_contents("php://input"));

$result = $user->registerUser($data->userFullName, $data->userBirthDate, $data->userName, $data->userPassword, $data->userImage);

switch ($result) {
    case true:
        $resultData = array();
        $resultArray = array(
            "message" => "1",
        );
        array_push($resultData, $resultArray);
        echo json_encode($resultData);
        break;
    case false:
        $resultData = array();
        $resultArray = array(
            "message" => "0",
        );
        array_push($resultData, $resultArray);
        echo json_encode($resultData);
        break;
}
