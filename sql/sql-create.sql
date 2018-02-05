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
artcle_title = "Литературная метафора: написание кода",
artcle_text = "Самая примитивная метафора, описывающая разработку ПО, берет начало в вы#
ражении «написание кода». Согласно литературной метафоре разработка програм#
мы похожа на написание письма: вы садитесь за стол, берете бумагу, перо и пи#
шете письмо с начала до конца. Это не требует никакого формального планиро#
вания, а мысли, выражаемые в письме, формулируются автором по ходу дела.
На этой метафоре основаны и многие другие идеи. Джон Бентли (Jon Bentley)
говорит, что программист должен быть способен сесть у камина со стаканом брен#
ди, хорошей сигарой, охотничьей собакой у ног и «сформулировать программу»
подобно тому, как писатели создают романы. Брайан Керниган и Ф. Дж. Плоджер
назвали свою книгу о стиле программирования «The Elements of Programming Style»
(Kernighan and Plauger, 1978), обыгрывая название книги о литературном стиле
«The Elements of Style» (Strunk and White, 2000). Программисты часто говорят об
«удобочитаемости программы».
Индивидуальную работу над небольшими проектами метафора написа#
ния письма характеризует довольно точно, но в целом она описывает
разработку ПО неполно и неадекватно. Письма и романы обычно принад#
лежат перу одного человека, тогда как над программами обычно работают группы
людей с разными сферами ответственности. Закончив писать письмо, вы запечаты#
ваете его в конверт и отправляете. С этого момента изменить вы его не можете, и
письмо во всех отношениях является завершенным. Изменить ПО не так уж трудно,
и вряд ли работу над ним можно когда#нибудь признать законченной. Из общего
объема работы над типичной программной системой две трети обычно выполня#
ются после выпуска первой версии программы, а иногда эта цифра достигает целых
90 % (Pigoski, 1997). В литературе поощряется оригинальность. При конструирова#
нии ПО оригинальный подход часто оказывается менее эффективным, чем повтор#
ное использование идей, кода и тестов из предыдущих проектов. Словом, процесс
разработки ПО, соответствующий литературной метафоре, является слишком про#
стым и жестким, чтобы быть полезным.",
author_id = "2",
category_id = "4",
post_date = NOW(),
views = "0";
