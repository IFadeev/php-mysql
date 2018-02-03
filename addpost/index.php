 <?php
 $dsn = 'mysql:host=localhost;dbname=test_bd';
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
     include 'form.html.php';
     exit();
 }
 try
 {
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
     if (isset($_POST['addtext'])) {
         try {
             $sql = 'INSERT INTO articles SET 
                 id = NULL,
                 artcle_title = :artcltitle,
                 artcle_text = :text,
                 categoria_id = :ctgr,
                 post_date = NOW(),
                 views = "0" ';
             $s = $pdo->prepare($sql);
             $s->bindValue(':artcl-title', $_POST['artcltitle']);
             $s->bindValue(':text',  $_POST['text']);
             $s->bindValue(':ctgr', $_POST['ctgr']);
             $s->execute();
             }
             catch (PDOException $e) {
             $error = $e->getMessage();
             include 'error.html.php';
             exit();
         }
         header('Location: .');
         exit();
     }
 try {
     $sql = 'SELECT * FROM `articles`';
     $result = $pdo->query($sql);
 }
 catch (PDOException $e) {
     $error = "There's no connection to DB" . '<br>' .
         $e->getMessage();
     include 'error.html.php';
     exit();
 }
 foreach ($result as $row) {
     $output[] = $row['post_date'];
     $output[] = $row['artcle_title'];
     $output[] = $row['artcle_text'];
 }

 include 'output.html.php';
