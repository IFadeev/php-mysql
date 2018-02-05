CREATE DATABASE forstudy
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;


CREATE TABLE category (
category_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(255)
)
DEFAULT CHARACTER SET utf8 ENGINE = InnoDB;

CREATE TABLE author (
author_id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(255) NOT NULL,
author_email VARCHAR(255) NOT NULL
)
DEFAULT CHARACTER SET utf8 ENGINE = InnoDB;

CREATE TABLE articles ( 
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY, 
artcle_title VARCHAR(255) NOT NULL , 
artcle_text TEXT NOT NULL , 
author_id INT(11) NOT NULL,
category_id INT(11) NOT NULL , 
post_date DATETIME NOT NULL , 
views INT(11) NOT NULL,
CONSTRAINT FK_articles_category FOREIGN KEY (category_id) REFERENCES category (category_id),
CONSTRAINT FK_articles_author FOREIGN KEY (author_id) REFERENCES author(author_id)
) 
DEFAULT CHARACTER SET utf8 ENGINE = InnoDB;

INSERT INTO category (category_id, category_name) 
VALUES ('NULL', 'PHP');

INSERT INTO category (category_id, category_name) 
VALUES ('NULL', 'Python');

INSERT INTO category (category_id, category_name) 
VALUES ('NULL', 'Java');

INSERT INTO category (category_id, category_name) 
VALUES ('NULL', 'Сomputer science');

INSERT INTO author (author_id, author_name, author_email) 
VALUES ('NULL', 'Matt Zandstra', 'Matt@gmail.com');

INSERT INTO author (author_id, author_name, author_email) 
VALUES ('NULL', 'Steven McConnell', 'St.McConnell@gmail.com');

INSERT INTO articles SET
id = NULL,
artcle_title = "Working with Methods",
artcle_text = "Just as properties allow your objects to store data, methods allow your objects to perform tasks. Methods are
special functions declared within a class. As you might expect, a method declaration resembles a function
declaration. The function keyword precedes a method name, followed by an optional list of argument
variables in parentheses. The method body is enclosed by braces:
 public function myMethod($argument, $another)
 {
 // ...
 }
Unlike functions, methods must be declared in the body of a class. They can also accept a number of
qualifiers, including a visibility keyword. Like properties, methods can be declared public, protected, or
private. By declaring a method public, you ensure that it can be invoked from outside of the current object.
If you omit the visibility keyword in your method declaration, the method will be declared public implicitly.
It is considered good practice, however, to declare visibility explicitly for all methods (I will return to method
modifiers later in the chapter.",
author_id = "1",
category_id = "1",
post_date = NOW(),
views = "0";

INSERT INTO articles SET
id = NULL,
artcle_title = "Безопасный рефакторинг",
artcle_text = "Рефакторинг — эффективный способ повышения качества
кода. Но, как и все эффективные инструменты, при невер#
ном использовании он может причинить вред. Несколько
простых советов помогут предотвратить неверное приме#
нение рефакторинга.
Сохраняйте первоначальный код Перед началом рефак#
торинга убедитесь, что вы сможете вернуться к коду, с ко#
торого начинаете. Сохраните код в системе управления вер#
сиями или скопируйте корректные файлы в резервный ка#
талог.
Стремитесь ограничить объем отдельных видов рефакторинга Некото#
рые виды рефакторинга масштабнее других, к тому же не всегда можно точно ска#
зать, что именно составляет «один вид рефакторинга». Чтобы четко представлять
все следствия вносимых изменений, не раздувайте виды рефакторинга. Примеры
соблюдения этого принципа см. в книге «Refactoring» (Fowler, 1999).",
author_id = "2",
category_id = "4",
post_date = NOW(),
views = "0";
DEFAULT CHARACTER SET utf8;
