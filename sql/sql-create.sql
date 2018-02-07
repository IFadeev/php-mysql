CREATE DATABASE test_db
  DEFAULT CHARACTER SET utf8
  DEFAULT COLLATE utf8_general_ci;
  
CREATE USER 'test_user_artcls'@'localhost' IDENTIFIED WITH mysql_native_password;
GRANT USAGE ON *.* TO 'test_user_artcls'@'localhost' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
SET PASSWORD FOR 'test_user_artcls'@'localhost' = '***';
GRANT ALL PRIVILEGES ON `test_db`.* TO 'test_user_artcls'@'localhost';

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
VALUES ('NULL', 'Computer science');

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
artcle_title = "Fudging Lookup Keys",
artcle_text = "In each of the three previous examples, you could use the data to key into the table
directly. That is, you could use messageID as a key without alteration, as you could use
month in the days-per-month example and gender, maritalStatus, and smokingStatus in
the insurance rates example.
You’d always like to key into a table directly because it’s simple and fast. Sometimes,
however, the data isn’t cooperative. In the insurance rates example, age wasn’t well
behaved. The original logic had one rate for people under 18, individual rates for ages 18 
through 65, and one rate for people over 65. This meant that for ages 0 through 17
and 66 and over, you couldn’t use the age to key directly into a table that stored only
one set of rates for several ages.",
author_id = "2",
category_id = "4",
post_date = NOW(),
views = "0";

INSERT INTO articles SET
id = NULL,
artcle_title = "A Programming Foundation: Structured Programming",
artcle_text = "The term “structured programming” originated in a landmark paper, “Structured Programming,”
presented by Edsger Dijkstra at the 1969 NATO conference on software
engineering (Dijkstra 1969). By the time structured programming came and went, the
term “structured” had been applied to every software-development activity, including
structured analysis, structured design, and structured goofing off. The various structured
methodologies weren’t joined by any common thread except that they were all
created at a time when the word “structured” gave them extra cachet.
The core of structured programming is the simple idea that a program should use
only one-in, one-out control constructs (also called single-entry, single-exit control
constructs). A one-in, one-out control construct is a block of code that has only one
place it can start and only one place it can end. It has no other entries or exits. Structured
programming isn’t the same as structured, top-down design. It applies only at
the detailed coding level.
A structured program progresses in an orderly, disciplined way, rather than jumping
around unpredictably. You can read it from top to bottom, and it executes in much the
same way. Less disciplined approaches result in source code that provides a less
meaningful, less readable picture of how a program executes in the machine. Less
readability means less understanding and, ultimately, lower program quality.
The central concepts of structured programming are still useful today and apply to
considerations in using break, continue, throw, catch, return, and other topics. ",
author_id = "2",
category_id = "4",
post_date = NOW(),
views = "0";
