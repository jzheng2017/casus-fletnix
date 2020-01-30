--CREATE SCRIPT
CREATE TABLE Category(
category_id int primary key,
category varchar(50) NOT NULL
)
CREATE TABLE Award(
Award_name varchar(50) NOT NULL,
Year int NOT NULL,
Country varchar(50) NOT NULL,
category_id int,
PRIMARY KEY(award_name, year, country, category_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (Country) REFERENCES Country(country_name)
)
CREATE TABLE Nominations(
category_id int NOT NULL,
movie_id int NOT NULL,
person_id int NOT NULL,
status varchar(50) NOT NULL
PRIMARY KEY(category_id,movie_id, person_id),
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
FOREIGN KEY (person_id) REFERENCES person(person_id)
)


--INSERT SCRIPT
INSERT INTO Category
VALUES
(1,'Best Film Editing'),
(2,'Best Sound Effect Editing'),
(3,'Best Visual Effect'),
(4,'Best Sound'),
(5,'Best Cinematography'),
(6,'Best Production Design'),
(7,'Best Editing')

INSERT INTO Award
VALUES
('Academy Awards', 2000, 'The Netherlands',1),
('Academy Awards', 2000, 'The Netherlands',2),
('Academy Awards', 2000, 'The Netherlands',3),
('BAFTA Awards', 2000, 'New Zealand',4),
('BAFTA Awards', 2000, 'New Zealand',5),
('BAFTA Awards', 2000, 'New Zealand',6),
('BAFTA Awards', 2000, 'New Zealand',7)
DELETE FROM Nominations
INSERT INTO Nominations
VALUES
(1,207992,450813, 'Won'),
(1,160492, 176884, 'Nominated'),
(1,160492, 930001, 'Nominated'),
(1,160492, 68042, 'Nominated'),
(1,303564, 54796, 'Nominated'),
(2,112290, 351397, 'Nominated'),
(2,112290, 930002, 'Nominated'),
(2,207992, 930003, 'Won'),
(2,313474, 165453, 'Nominated'),
(3,313474, 351981, 'Nominated'),
(3,313474, 191712, 'Nominated'),
(3,207992, 930004, 'Won'),
(3,207992, 540853, 'Won'),
(3,207992, 930005, 'Won'),
(3,207992, 930006, 'Won'),
(4,207992, 930007, 'Won'),
(4,207992, 930008, 'Won'),
(4,207992, 930009, 'Won'),
(4,207992, 930010, 'Won'),
(4,207992, 930011, 'Won'),
(4,313474, 165453, 'Nominated'),
(4,313474, 930012, 'Nominated'),
(4,13789, 930013, 'Nominated'),
(5,207992, 930014, 'Nominated'),
(5,13789, 930015, 'Won'),
(6,207992, 464716, 'Nominated'),
(6,304862, 303143, 'Won'),
(7,207992, 550813, 'Nominated'),
(7,13789, 930016, 'Won'),
(7,13789, 283753, 'Won')
