<?php
// API for checking user login
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

$result = $user->checkLogin($data->userName, $data->userPassword);

if($result){
    $resultData = array();
    $resultArray = array(
        "message" => '1',
        "userId" => $userId,
        "userFullName" => $userFullName,
        "userBirthDate" => $userBirthDate,
        "userName" => $userName,
        "userImage" => $userImage
    );
    array_push($resultData, $resultArray);
    echo json_encode($resultData);
} else {
    $resultData = array();
    $resultArray = array(
        "message" => '0',
    );
    array_push($resultData, $resultArray);
    echo json_encode($resultData);
}