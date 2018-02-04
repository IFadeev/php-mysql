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


� ��������� ����� ����� ����� � PHP. ���� ��������� ������ �� �������������:

�� ������ ������������ PHP 4 ���� ����� � ����� ������� �� ������ ����. ������ ������� ���������� ������ ������ ����� � ����� ����������� ������. ���������� �� ChangeLog � �� �������, ��� ���������� ������������� ������;
� PHP ����� ������ ����� �����, � �� ������ ������ ������ ������ ������. ��, �� ������ ������ ������ ���, ��� � � ����� ������ �����. ������, ����� �� ������������� ���������, ��� �������� PHP �������, �� ��������� ������ ����� ������������ � ���������������� ���. ���� �� ������� � ������� �����������, �� ���������� ���������� �� ����������� ����������: Laravel, Symfony � � ������ PHP ���� ���������. PHP ����� ������� �����������, �������� �������� ���������������� �����������. �� �������� ����� �� ����� ������� ���������� ������.


INSERT INTO TABLE articles SET
id = NULL,
artcle_title = "����� ����������� � PHP � ����� �� �� �� ������",
artcle_text = "� ��������� ����� ����� ����� � PHP. ���� ��������� ������ �� �������������:
�� ������ ������������ PHP 4 ���� ����� � ����� ������� �� ������ ����. ������ ������� ���������� ������ ������ ����� � ����� ����������� ������. ���������� �� ChangeLog � �� �������, ��� ���������� ������������� ������;
� PHP ����� ������ ����� �����, � �� ������ ������ ������ ������ ������. ��, �� ������ ������ ������ ���, ��� � � ����� ������ �����. ������, ����� �� ������������� ���������, ��� �������� PHP �������, �� ��������� ������ ����� ������������ � ���������������� ���. ���� �� ������� � ������� �����������, �� ���������� ���������� �� ����������� ����������: Laravel, Symfony � � ������ PHP ���� ���������. PHP ����� ������� �����������, �������� �������� ���������������� �����������. �� �������� ����� �� ����� ������� ���������� ������.",
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
 ���������
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
 �����������������
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
