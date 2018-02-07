<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Let's try to connect? </title>
</head>
<body>
<p><a href="?addpost">Добавить статью</a></p>
<p>Публикации:</p>
<?php foreach ($output as $data): ?>
    <form action="?deletepost" method="post">
        <blockquote>
            <?php echo '<p>'. htmlspecialchars($data['post_date'], ENT_QUOTES, 'utf-8') .'</p>';
                  echo '<p>'. htmlspecialchars($data['artcle_title'], ENT_QUOTES, 'utf-8') .'</p>' ?>
            <p> Автор: <a href="mailto:<?php echo htmlspecialchars($data['author_email'],
                    ENT_QUOTES, 'utf-8');?>">
                    <?php echo htmlspecialchars($data['author_name'], ENT_QUOTES, 'utf-8');?></a>
            </p>
            <?php echo '<p>'. htmlspecialchars($data['artcle_text'], ENT_QUOTES, 'utf-8') .'</p>'?>
            <input type="hidden" name="id" value="<?php echo $data['id'];?>">
            <input type="submit" value="Удалить cтатью">
        </blockquote>
    </form>
<?php endforeach;?>
</body>
</html>
