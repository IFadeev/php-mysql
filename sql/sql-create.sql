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
VALUES ('NULL', 'Ñomputer science');

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
artcle_title = "Ëèòåðàòóðíàÿ ìåòàôîðà: íàïèñàíèå êîäà",
artcle_text = "Ñàìàÿ ïðèìèòèâíàÿ ìåòàôîðà, îïèñûâàþùàÿ ðàçðàáîòêó ÏÎ, áåðåò íà÷àëî â âû#
ðàæåíèè «íàïèñàíèå êîäà». Ñîãëàñíî ëèòåðàòóðíîé ìåòàôîðå ðàçðàáîòêà ïðîãðàì#
ìû ïîõîæà íà íàïèñàíèå ïèñüìà: âû ñàäèòåñü çà ñòîë, áåðåòå áóìàãó, ïåðî è ïè#
øåòå ïèñüìî ñ íà÷àëà äî êîíöà. Ýòî íå òðåáóåò íèêàêîãî ôîðìàëüíîãî ïëàíèðî#
âàíèÿ, à ìûñëè, âûðàæàåìûå â ïèñüìå, ôîðìóëèðóþòñÿ àâòîðîì ïî õîäó äåëà.
Íà ýòîé ìåòàôîðå îñíîâàíû è ìíîãèå äðóãèå èäåè. Äæîí Áåíòëè (Jon Bentley)
ãîâîðèò, ÷òî ïðîãðàììèñò äîëæåí áûòü ñïîñîáåí ñåñòü ó êàìèíà ñî ñòàêàíîì áðåí#
äè, õîðîøåé ñèãàðîé, îõîòíè÷üåé ñîáàêîé ó íîã è «ñôîðìóëèðîâàòü ïðîãðàììó»
ïîäîáíî òîìó, êàê ïèñàòåëè ñîçäàþò ðîìàíû. Áðàéàí Êåðíèãàí è Ô. Äæ. Ïëîäæåð
íàçâàëè ñâîþ êíèãó î ñòèëå ïðîãðàììèðîâàíèÿ «The Elements of Programming Style»
(Kernighan and Plauger, 1978), îáûãðûâàÿ íàçâàíèå êíèãè î ëèòåðàòóðíîì ñòèëå
«The Elements of Style» (Strunk and White, 2000). Ïðîãðàììèñòû ÷àñòî ãîâîðÿò îá
«óäîáî÷èòàåìîñòè ïðîãðàììû».
Èíäèâèäóàëüíóþ ðàáîòó íàä íåáîëüøèìè ïðîåêòàìè ìåòàôîðà íàïèñà#
íèÿ ïèñüìà õàðàêòåðèçóåò äîâîëüíî òî÷íî, íî â öåëîì îíà îïèñûâàåò
ðàçðàáîòêó ÏÎ íåïîëíî è íåàäåêâàòíî. Ïèñüìà è ðîìàíû îáû÷íî ïðèíàä#
ëåæàò ïåðó îäíîãî ÷åëîâåêà, òîãäà êàê íàä ïðîãðàììàìè îáû÷íî ðàáîòàþò ãðóïïû
ëþäåé ñ ðàçíûìè ñôåðàìè îòâåòñòâåííîñòè. Çàêîí÷èâ ïèñàòü ïèñüìî, âû çàïå÷àòû#
âàåòå åãî â êîíâåðò è îòïðàâëÿåòå. Ñ ýòîãî ìîìåíòà èçìåíèòü âû åãî íå ìîæåòå, è
ïèñüìî âî âñåõ îòíîøåíèÿõ ÿâëÿåòñÿ çàâåðøåííûì. Èçìåíèòü ÏÎ íå òàê óæ òðóäíî,
è âðÿä ëè ðàáîòó íàä íèì ìîæíî êîãäà#íèáóäü ïðèçíàòü çàêîí÷åííîé. Èç îáùåãî
îáúåìà ðàáîòû íàä òèïè÷íîé ïðîãðàììíîé ñèñòåìîé äâå òðåòè îáû÷íî âûïîëíÿ#
þòñÿ ïîñëå âûïóñêà ïåðâîé âåðñèè ïðîãðàììû, à èíîãäà ýòà öèôðà äîñòèãàåò öåëûõ
90 % (Pigoski, 1997). Â ëèòåðàòóðå ïîîùðÿåòñÿ îðèãèíàëüíîñòü. Ïðè êîíñòðóèðîâà#
íèè ÏÎ îðèãèíàëüíûé ïîäõîä ÷àñòî îêàçûâàåòñÿ ìåíåå ýôôåêòèâíûì, ÷åì ïîâòîð#
íîå èñïîëüçîâàíèå èäåé, êîäà è òåñòîâ èç ïðåäûäóùèõ ïðîåêòîâ. Ñëîâîì, ïðîöåññ
ðàçðàáîòêè ÏÎ, ñîîòâåòñòâóþùèé ëèòåðàòóðíîé ìåòàôîðå, ÿâëÿåòñÿ ñëèøêîì ïðî#
ñòûì è æåñòêèì, ÷òîáû áûòü ïîëåçíûì.",
author_id = "2",
category_id = "4",
post_date = NOW(),
views = "0";
