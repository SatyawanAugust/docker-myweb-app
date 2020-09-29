<?php

$db_host = "mysql";
$db_user = "cilsykuasaiuser";
$db_pass = "cilsykuasaipassword";
$db_name = "dbkuasai";

try {    
    //create PDO connection 
    $db = new PDO("mysql:host=$db_host;dbname=$db_name", $db_user, $db_pass);
} catch(PDOException $e) {
    //show error
    die("Terjadi masalah: " . $e->getMessage());
}
