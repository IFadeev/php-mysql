<?php
$dsn = 'mysql:host=localhost;dbname=test_db';
$username = 'test_user_articles';
$passwd = 'V4azBSHosdBQBQHv';

if (get_magic_quotes_gpc())
{
    $process = array(&$_GET, &$_POST, &$_COOKIE, &$_REQUEST);
    while (list($key, $val) = each($process))
    {
        foreach ($val as $k => $v)
        {
            unset($process[$key][$k]);
            if (is_array($v))
            {
                $process[$key][stripslashes($k)] = $v;
                $process[] = &$process[$key][stripslashes($k)];
            }
            else
            {
                $process[$key][stripslashes($k)] = stripslashes($v);
            }
        }
    }
    unset($process);
}

try {
    $pdo = new PDO($dsn, $username, $passwd);
    $pdo-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->exec('SET NAMES utf8');
}
catch (Exception $e) {
    $error = 'Невозможно подключиться к серверу баз данных.';
    include 'error.html.php';
    exit();
}

try {
    $sql = 'SELECT id, artcle_title, LEFT(artcle_text, 50), author_name, author_email 
    FROM arcticles INNER JOIN author ON articles.author_id = author.author_id';
    $result = $pdo->query;
}
catch (Exception $e) {
    $error = 'Ошибка при извлечении даннах' . $e->getMessage();
    include 'error.html.php';
    exit();
}
foreach ($result as $row) {
    $output = array(
        'id' => $row['id'],
        'artcle_title' => $row['artcle_title'],
        'artcle_text' => $row['artcle_text'],
        'author_name' => $row['author_name'],
        'author_email' => $row['author_email']
    );
}
include 'output.html.php';
