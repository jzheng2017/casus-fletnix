/* CREATE SCRIPT*/
CREATE TABLE [Contract](
contract_type varchar(10) PRIMARY KEY,
price_per_month numeric(5,2) NOT NULL,
discount_percentage numeric(2) NOT NULL
);

CREATE TABLE Customer(
customer_mail_address varchar(255) PRIMARY KEY,
lastname varchar(50) NOT NULL,
firstname varchar(50) NOT NULL,
payment_method varchar(10) NOT NULL,
payment_card_number varchar(30) NOT NULL,
contract_type varchar(10) NOT NULL,
subscription_start date NOT NULL,
subscription_end date NULL,
user_name varchar(50) NOT NULL,
password varchar(50) NOT NULL,
country_name varchar(50) NOT NULL,
gender char(1) NULL,
birth_date date NULL
);


CREATE TABLE WatchHistory(
movie_id int PRIMARY KEY,
customer_mail_address varchar(255) NOT NULL,
watch_date date NOT NULL,
price numeric(5,2) NOT NULL,
invoiced bit NOT NULL
);

CREATE TABLE Country(
country_name varchar(50) PRIMARY KEY
);
CREATE TABLE Payment(
payment_method varchar(10) PRIMARY KEY
);

CREATE TABLE Movie(
movie_id int PRIMARY KEY,
title varchar(255) NOT NULL,
duration int NULL,
description varchar(255) NULL,
publication_year int NULL,
cover_image varchar(255) NULL,
previous_part int NULL,
price numeric(5,2) NOT NULL,
URL varchar(255) NULL
);

CREATE TABLE Movie_Cast(
movie_id int,
person_id int,
role varchar(255),
PRIMARY KEY (movie_id, person_id, role)
);

CREATE TABLE Movie_Genre(
movie_id int,
genre_name varchar(255)
PRIMARY KEY(movie_id, genre_name)
);

CREATE TABLE Genre(
genre_name varchar(255) PRIMARY KEY,
description varchar(255) NULL
);

CREATE TABLE Person(
person_id int PRIMARY KEY,
lastname varchar(50) NOT  NULL,
firstname varchar(50) NOT NULL,
gender char(1) NULL,
);

CREATE TABLE Movie_Director(
movie_id int,
person_id int,
PRIMARY KEY(movie_id, person_id)
);

/* CONSTRAINTS*/

ALTER TABLE Customer
ADD FOREIGN KEY (payment_method) REFERENCES Payment(contract_type) ON UPDATE CASCADE ON DELETE RESTRICT