<?php
require_once '../inc/functions.php';
require_once '../inc/headers.php';

try {
    $db = openDb();
    selectAsJson($db, 'select * from category'); // korjaa oikea taulun nimi
} catch (PDOException $pdoex) {
    returnError($pdoex);
};