<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

try {
    $db = openDb();
    $sql = "select * from product";
    $query = $db->query($sql);
    $product = $query->fetchAll(PDO::FETCH_ASSOC);

    header('HTTP/1.1 200 OK');
    echo json_encode($product, JSON_PRETTY_PRINT);
} catch(PDOException $pdoex) {
    returnError($pdoex);
}