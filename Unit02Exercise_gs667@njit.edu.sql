CREATE TABLE golfers

  (golferid int primary key,

  name varchar(100),

  address varchar(200),

  phone varchar(20));

INSERT INTO golfers VALUES

  (100, 'Rich', '123 Main St.', '555-1234');

Query OK, 1 row affected (0.08 sec)

INSERT INTO golfers VALUES

  (101, 'Barbara', '123 Main St.', '555-5678');
INSERT INTO golfers VALUES

  (102, 'Meher', '156 Warren St', '555-6678');

Query OK, 1 row affected (0.08 sec)

INSERT INTO golfers VALUES

  (103, 'Karan', '182 Warren St', '555-9999');
Select * from golfers;
CREATE TABLE games

  (gameid int auto_increment primary key,

  golferid int,

  score int);
INSERT INTO games (golferid, score) VALUES (100, 110);

Query OK, 1 row affected (0.10 sec)

INSERT INTO games (golferid, score) VALUES (100, 115);

Query OK, 1 row affected (0.08 sec)

INSERT INTO games (golferid, score) VALUES (100, 105);

Query OK, 1 row affected (0.05 sec)

INSERT INTO games (golferid, score) VALUES (101, 110);

Query OK, 1 row affected (0.11 sec)

INSERT INTO games (golferid, score) VALUES (101, 112);

Query OK, 1 row affected (0.06 sec)

INSERT INTO games (golferid, score) VALUES (101, 130);
INSERT INTO games (golferid, score) VALUES (102, 108);

Query OK, 1 row affected (0.10 sec)

INSERT INTO games (golferid, score) VALUES (102, 120);

Query OK, 1 row affected (0.08 sec)

INSERT INTO games (golferid, score) VALUES (102, 105);

Query OK, 1 row affected (0.05 sec)

INSERT INTO games (golferid, score) VALUES (103, 107);

Query OK, 1 row affected (0.11 sec)

INSERT INTO games (golferid, score) VALUES (103, 112);

Query OK, 1 row affected (0.06 sec)

INSERT INTO games (golferid, score) VALUES (103, 120);
SELECT * FROM games;
SELECT golferid, name FROM golfers ORDER BY name

SELECT COUNT(score) AS games, AVG(score) AS average FROM games WHERE golferid = 102

SELECT COUNT(score) AS games, AVG(score) AS average FROM games WHERE golferid = 103