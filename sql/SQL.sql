log:  'test_user_artcls'@'%
pass: V4azBSHosdBQBQHv

CREATE TABLE customers(
  id INT(11) NOT NULL,
  name VARCHAR(255) DEFAULT NULL,
  city VARCHAR(255) DEFAULT NULL,
  notes VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB;
 
CREATE TABLE jobs(
  id INT(11) DEFAULT NULL,
  customer_id INT(11) DEFAULT NULL,
  about VARCHAR(255) DEFAULT NULL,
  INDEX FK_jobs_customers_id (customer_id),
  CONSTRAINT FK_jobs_customers_id FOREIGN KEY (customer_id) REFERENCES customers (id)
)
ENGINE = INNODB;

ALTER TABLE categoria_name 
ADD CONSTRAINT FK_categoria_articles FOREIGN KEY (categoria_id) REFERENCES articles (categoria_id)
ALTER TABLE categoria_name DROP FOREIGN KEY FK_categoria_articles;`


В интернете очень много мифов о PHP. Есть несколько причин их возникновения:

вы начали использовать PHP 4 года назад и потом перешли на другой язык. Теперь странно сравнивать старую версию языка с любым современным языком. Посмотрите на ChangeLog — вы увидите, что изменилось действительно многое;
в PHP очень низкий порог входа, и вы можете быстро начать решать задачи. Да, вы можете писать плохой код, как и в любом другом языке. Однако, когда вы действительно понимаете, как работает PHP изнутри, вы начинаете писать более качественный и производительный код. Если вы знакомы с базовым синтаксисом, то рекомендую посмотреть на современные фреймворки: Laravel, Symfony — и узнать PHP чуть подробнее. PHP очень активно развивается, обладает огромным профессиональным сообществом. Он является одним из самых быстрых скриптовых языков.


INSERT INTO TABLE articles SET
id = NULL,
artcle_title = "Какие перспективы у PHP и стоит ли на нём писать",
artcle_text = "В интернете очень много мифов о PHP. Есть несколько причин их возникновения:
вы начали использовать PHP 4 года назад и потом перешли на другой язык. Теперь странно сравнивать старую версию языка с любым современным языком. Посмотрите на ChangeLog — вы увидите, что изменилось действительно многое;
в PHP очень низкий порог входа, и вы можете быстро начать решать задачи. Да, вы можете писать плохой код, как и в любом другом языке. Однако, когда вы действительно понимаете, как работает PHP изнутри, вы начинаете писать более качественный и производительный код. Если вы знакомы с базовым синтаксисом, то рекомендую посмотреть на современные фреймворки: Laravel, Symfony — и узнать PHP чуть подробнее. PHP очень активно развивается, обладает огромным профессиональным сообществом. Он является одним из самых быстрых скриптовых языков.",
categoria_id = "3",
post_date = "2018-01-31 17:50:00",
views = "0"


ALTER TABLE `articles` 
ADD CONSTRAINT FK_categoria_articles FOREIGN KEY (`categoria_id`) REFERENCES `categoria_name`(`categoria_id`) 
ON DELETE RESTRICT ON UPDATE RESTRICT;


 SELECT
 INSERT
 UPDATE
 DELETE
 FILE
 Структура
 CREATE
 ALTER
 INDEX
 DROP
 CREATE TEMPORARY TABLES
 SHOW VIEW
 CREATE ROUTINE
 ALTER ROUTINE
 EXECUTE
 CREATE VIEW
 EVENT
 TRIGGER
 Администрирование
 GRANT
 SUPER
 PROCESS
 RELOAD
 SHUTDOWN
 SHOW DATABASES
 LOCK TABLES
 REFERENCES
 REPLICATION CLIENT
 REPLICATION SLAVE
 CREATE USER


CREATE USER 'test_user_artcls'@'%' IDENTIFIED WITH mysql_native_password;GRANT USAGE ON *.* TO 'test_user_artcls'@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;SET PASSWORD FOR 'test_user_artcls'@'%' = '***';GRANT ALL PRIVILEGES ON `test_bd`.* TO 'test_user_artcls'@'%';
