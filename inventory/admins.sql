SHOW DATABASES;
CREATE TABLE admins (
    adminID INT(11) NOT NULL AUTO_INCREMENT,
    emailAddress VARCHAR(255) NOT NULL UNIQUE,
    password CHAR(64) NOT NULL,
    firstName VARCHAR(60) NOT NULL,
    lastName VARCHAR(60) NOT NULL,
    PRIMARY KEY(adminID)
);

SHOW TABLES;
SHOW CREATE TABLE admins;

DESCRIBE admins;
INSERT INTO admins(emailAddress,password,firstName,lastName) VALUES ('taylor@guitarshop.com',SHA2('myLOngP@ssword',256),'Taylor','Swift');
SELECT * FROM admins;
SELECT emailAddress, firstName FROM admins ORDER BY firstName;
INSERT INTO admins(emailAddress,password,firstName,lastName) VALUES ('jimy@guitarshop.com',SHA2('jjkjnjnjj',256),'Jimmy','Hendrix');
SELECT * from admins;

DELETE FROM admins where emailAddress='jimy@guitarshop.com';

INSERT INTO admins(emailAddress,password,firstName,lastName) VALUES ('jimy@guitarshop.com',SHA2('jjkjnjnjj',256),'Jimmy','Hendrix');

SELECT * from admins;

update admins set `emailAddress`='taylorswift@guiarshop.com' where `adminID`=2;
SELECT * from admins;
update admins set `emailAddress`='taylorswift@guiarshop.com' where `adminID`=1;
update admins set `emailAddress`='jimmyhendrix@guiarshop.com' where `adminID`=2;
select * from admins;