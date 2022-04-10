<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

$uri = parse_url(filter_input(INPUT_SERVER, 'PATH_INFO'),PHP_URL_PATH);
$parameters = explode('/',$uri);
$product_id = $parameters[1];

try {
    $db = openDb();
    $sql = "select * from product where id = $product_id";
    $query = $db->query($sql);
    $product = $query->fetch(PDO::FETCH_ASSOC);

    header('HTTP/1.1 200 OK');
    echo json_encode(array("product" => $product), JSON_PRETTY_PRINT);
} catch(PDOException $pdoex) {
    returnError($pdoex);
}