<?php
$dsn = 'mysql:host=localhost;dbname=test_db';
$username = 'test_user_artcls';
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

if (isset($_GET['addpost'])) {
    include '../addpost/form.html.php';
    exit();
}
try {
    $pdo = new PDO($dsn, $username, $passwd);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->exec('SET NAMES "utf8"');
}
catch (PDOException $e)
{
    $error = 'Невозможно подключиться к серверу баз данных.';
    include 'error.html.php';
    exit();
}
if (isset($_POST['text'])) {
    try {
        $sql = 'INSERT INTO articles SET
                 id = NULL,
                 artcle_title = :artcltitle,
                 artcle_text = :text,
                 categoria_id = :ctgr,
                 post_date = NOW(),
                 views = "0" ';
        $s = $pdo->prepare($sql);
        $s->bindValue(':artcltitle', $_POST['artcltitle'], PDO::PARAM_STR);
        $s->bindValue(':text',  $_POST['text'], PDO::PARAM_STR);
        $s->bindValue(':ctgr', $_POST['ctgr'], PDO::PARAM_INT);
        $s->execute();
    }
    catch (PDOException $e) {
        $error = $e->getMessage();
        include 'error.html.php';
        exit();
    }
}
try {
    $sql = 'SELECT id, post_date, artcle_title, artcle_text, author_name, author_email 
    FROM articles INNER JOIN author ON articles.author_id = author.author_id';
    $result = $pdo->query($sql);
}
catch (PDOException $e) {
    $error = 'Ошибка при извлечении даннах' . '<br>' . $e->getMessage();
    include 'error.html.php';
    exit();
}
foreach ($result as $row) {
    $output[] = array(
        'id' => $row['id'],
        'post_date' => $row['post_date'],
        'artcle_title' => $row['artcle_title'],
        'artcle_text' => $row['artcle_text'],
        'author_name' => $row['author_name'],
        'author_email' => $row['author_email']
    );
}
include 'output.html.php';

