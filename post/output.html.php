<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Let's try to connect? </title>
</head>
<body>
<p><a href="?addpost">Добавить статью</a></p>
<p>Публикации:</p>
    <?php foreach ($output as $item): ?>
    <blockquote>
        <p>
        <?php echo htmlspecialchars($item, ENT_QUOTES, 'UTF-8');?>
        </p>
    </blockquote>
    <?php endforeach; ?>
</body>

</html>