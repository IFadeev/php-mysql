<?php

$dsn = 'mysql:host=localhost;dbname=test_bd';
$username = 'test_user_artcls';
$passwd = 'V4azBSHosdBQBQHv';

try {
    $pdo = new PDO($dsn, $username, $passwd);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->exec('SET NAMES "utf8"');
}
catch (PDOException $e) {
    $error = "There's no the connection to DB" . '<br>' .
        $e->getMessage();
    include 'error.html.php';
    exit();
}
try {
    $sql = 'SELECT id FROM `articles`';
    $result = $pdo->query($sql);
}
catch (PDOException $e) {
    $error = "There's no the connection to DB" . '<br>' .
        $e->getMessage();
    include 'error.html.php';
    exit();
}
while ($row = $result->fetch()) {
    $output[] = $row['id'];
}
include 'output.html.php';

