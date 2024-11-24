<?php

class ConnectDB{
    private $hostDB = '127.0.0.1';
    private $userDB = 'root';
    private $passwordDB = "";
    private $dbName = "money_tracking_db";

    public $connectDB;

    public function createConnectionDB()
    {
        $this->connectDB = null;

        try {
            $this->connectDB = new PDO(
                "mysql:host=$this->hostDB; dbname=$this->dbName",
                $this->userDB,
                $this->passwordDB
            );
            $this->connectDB->exec('set names utf8');
        } catch (PDOException $e) {
            echo 'Connection error: ' . $e->getMessage();
        }

        return $this->connectDB;
    }
}
