<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add post!</title>
    <style>
        div {
            margin: 10px;
        }
    </style>
</head>
<body>
<form action="?" method="post">
    <div>
        <label for ="artcltitle">Название статьи:</label>
        <input type="text" name="artcltitle" id="artcltitle" placeholder="Название статьи">
    </div>
    <div>
        <label for="ctgr">Категория</label>
        <select name="ctgr" id="ctgr">
            <option value="1">PHP</option>
            <option value="2">Python</option>
            <option value="3">Java</option>
            <option value="4">Computer science</option>
        </select>
        <label for="author">Автор</label>
        <select name="author" id="author">
            <option value="1">Matt Zandstra</option>
            <option value="2">Steven McConnell</option>
        </select>
    </div>
    <div>
        <label for ="addtext"></label>
        <textarea name="text" id="addtext" rows="7" cols="50" placeholder="Введите текст"></textarea>
    </div>
    <div>
        <input type="submit" value="Добавить">
    </div>
</form>
</body>
</html>
