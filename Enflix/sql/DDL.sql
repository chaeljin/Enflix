DROP TABLE users cascade constraint;

DROP TABLE payment cascade constraint;

DROP TABLE movie cascade constraint;

CREATE TABLE users (
	name 				VARCHAR2(20) PRIMARY KEY,
	pw					VARCHAR2(50) NOT NULL,
	age					NUMBER(19,4) NOT NULL,
	phone				VARCHAR2(20) NOT NULL,
	card				NUMBER(19,4) NOT NULL,
	email				VARCHAR2(20) NOT NULL
);

CREATE TABLE payment (
	card 				NUMBER(19,4) PRIMARY KEY,
	payment_date		VARCHAR2(20) NOT NULL,
	rating				VARCHAR2(20) NOT NULL
);

CREATE TABLE movie (
	name 				VARCHAR2(200) PRIMARY KEY,
	genre				VARCHAR2(50) NOT NULL,
	director			VARCHAR2(100) NOT NULL,
	age					NUMBER(19,4) NOT NULL,
	rating				VARCHAR2(20) NOT NULL
);

ALTER TABLE users ADD FOREIGN KEY (card) REFERENCES payment  (card);
