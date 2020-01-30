--INSERT SCRIPT OPDRACHT 1 F
INSERT INTO Genre 
VALUES('Action',''),
('Adventure',''),
('SciFi','')

--THE MATRIX
INSERT INTO Movie
VALUES(1,'The Matrix', 136, 'A computer hacker learns from mysterious rebels about the true nature of 
his reality and his role in the war against its controllers.', 1999, 'https://www.imdb.com/title/tt0133093/mediaviewer/rm525547776?ref_=tt_ov_i',
NULL, 10, 'https://www.youtube.com/watch?v=m8e-FF8MsqU');

INSERT INTO Person
VALUES(1, 'Reeves','Keanu','M'),
(2, 'Fishburne', 'Laurence','M'),
(3, 'Moss','Carrie-Anne','F'),
(4,'Wachowski','Lana','F'),
(5,'Wachowski','Lilly','F');

INSERT INTO Movie_Cast
VALUES(1, 1, 'Neo'),
(1,2,'Morpheus'),
(1,3,'Trinity');

INSERT INTO Movie_Directors
VALUES(1,4),
	(1,5);

INSERT INTO Movie_Genre
VALUES(1,'Action')

--THE MATRIX RELOADED

INSERT INTO Movie
VALUES(2,'The Matrix Reloaded', 138, 'Following the events of The Matrix (1999),
 Neo and the rebel leaders estimate they have 72 hours until 250,000 probes discover Zion and destroy it and its inhabitants. 
 Neo must decide how he can save Trinity from a dark fate in his dreams.', 2003, 'https://www.imdb.com/title/tt0234215/?ref_=nv_sr_1',
1, 15, 'https://www.youtube.com/watch?v=HVrGMnk5E_M');

INSERT INTO Movie_Cast
VALUES(2, 1, 'Neo'),
(2,2,'Morpheus'),
(2,3,'Trinity');

INSERT INTO Movie_Directors
VALUES(2,4),
	(2,5);


INSERT INTO Movie_Genre
VALUES(2,'Action')

--OPDRACHT F II
INSERT INTO Movie
VALUES(3,'Iron Man', 126, 'After being held captive in an Afghan cave, billionaire engineer 
Tony Stark creates a unique weaponized suit of armor to fight evil.', 2008, 'https://www.imdb.com/title/tt0371746/?ref_=nv_sr_1',
NULL, 9, 'https://www.youtube.com/watch?v=8hYlB38asDY'),
(4,'Iron Man 2', 124, 'With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health 
and a vengeful mad man with ties to his fathers legacy.', 2010, 'https://www.imdb.com/title/tt1228705/?ref_=nv_sr_1',
3, 15, 'https://www.youtube.com/watch?v=wKtcmiifycU'),
(5,'Iron Man 3', 124, 'When Tony Starks world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.', 2010, 'https://www.imdb.com/title/tt1228705/?ref_=nv_sr_1',
4, 15, 'https://www.youtube.com/watch?v=ze8_tUsfVj0'),
(6,'Avengers', 143, 'Earths mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous 
Loki and his alien army from enslaving humanity.', 2012, 'https://www.imdb.com/title/tt0848228/?ref_=nv_sr_4',
4, 15, 'https://www.youtube.com/watch?v=a-7MWYqicC0'),
(7,'Avengers: Infinity War', 149, 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful 
Thanos before his blitz of devastation and ruin puts an end to the universe.', 2018, 'https://www.imdb.com/title/tt4154756/?ref_=nv_sr_1',
4, 15, 'https://www.youtube.com/watch?v=m2uqb2bt_bs');


INSERT INTO Person
VALUES(6, 'Favreau','Jon','M'),
(7, 'Downey Jr.','Robert','M'),
(8, 'Rourke','Mickey','M'),
(9, 'Black','Shane','M'),
(10, 'Pearce','Guy','M'),
(11, 'Whedon','Joss','M'),
(12, 'Evans','Chris','M'),
(13, 'Johansson','Scarlett','F'),
(14, 'Russo','Anthony','M'),
(15, 'Russo','Joe','M'),
(16, 'Hemsworth','Chris','M'),
(17, 'Ruffalo','Mark','M'),
(18, 'Paltrow','Gwyneth','F');

INSERT INTO Movie_Cast
VALUES(3, 7, 'Tony Stark'),
(3, 18, 'Pepper Pots'),
(4, 7, 'Tony Stark'),
(4, 8, 'Pepper Pots'),
(5, 7, 'Tony Stark'),
(5, 10, 'Aldrich Killian'),
(6, 12, 'Steve Rogers'),
(6, 13, 'Natasha Romanoff'),
(7, 16, 'Thor Odinson'),
(7, 17, 'Bruce Banner')

INSERT INTO Movie_Directors
VALUES(3,6),
(4,6),
(5,9),
(6,11),
(7,14),
(7,15)


INSERT INTO Movie_Genre
VALUES(3,'Action'),
(4,'Action'),
(5,'Action'),
(6,'Action'),
(7,'Action')


--OPDRAHCT F III
INSERT INTO Contract
VALUES('Normal','9.99','10')

INSERT INTO Payment
VALUES('MasterCard')

INSERT INTO Country
VALUES('Netherlands')

INSERT INTO Customer
VALUES('a@a.nl','achternaam1','voornaam1','MasterCard','12345670','Normal',
'2018-12-12',NULL,'coolperson1','1237456','Netherlands','M','1989-02-19'),
('b@b.nl','achternaam2','voornaam2','MasterCard','12345671','Normal',
'2018-12-12',NULL,'coolperson2','1323456','Netherlands','M','1989-02-19'),
('c@c.nl','achternaam3','voornaam3','MasterCard','12345672','Normal',
'2018-12-12',NULL,'coolperson3','1234756','Netherlands','M','1989-02-19'),
('d@d.nl','achternaam4','voornaam4','MasterCard','12345673','Normal',
'2018-12-12',NULL,'coolperson4','1223456','Netherlands','F','1989-02-19'),
('e@e.nl','achternaam5','voornaam5','MasterCard','12345674','Normal',
'2018-12-12',NULL,'coolperson5','1234656','Netherlands','M','1989-02-19'),
('f@f.nl','achternaam6','voornaam6','MasterCard','12345675','Normal',
'2018-12-12',NULL,'coolperson6','1234516','Netherlands','M','1989-02-19'),
('g@g.nl','achternaam7','voornaam7','MasterCard','12345267','Normal',
'2018-12-12',NULL,'coolperson7','1231456','Netherlands','F','1989-02-19'),
('h@h.nl','achternaam8','voornaam8','MasterCard','1234567','Normal',
'2018-12-12',NULL,'coolperson8','12356456','Netherlands','M','1989-02-19'),
('i@i.nl','achternaam9','voornaam9','MasterCard','1234567','Normal',
'2018-12-12',NULL,'coolperson9','1231456','Netherlands','M','1989-02-19'),
('j@j.nl','achternaam10','voornaam10','MasterCard','1234567','Normal',
'2018-12-12',NULL,'coolperson10','12346356','Netherlands','F','1989-02-19')

INSERT INTO WatchHistory
VALUES(1,'a@a.nl','2018-12-31','2.50','1'),
(1,'b@b.nl','2018-12-31','2.50','1'),
(1,'c@c.nl','2018-12-31','2.50','0'),
(1,'d@d.nl','2018-12-31','2.50','1'),
(1,'e@e.nl','2018-12-31','2.50','0'),
(1,'f@f.nl','2018-12-31','2.50','1'),
(1,'g@g.nl','2018-12-31','2.50','0'),
(1,'h@h.nl','2018-12-31','2.50','1'),
(1,'i@i.nl','2018-12-31','2.50','0'),
(1,'j@j.nl','2018-12-31','2.50','1'),
(2,'a@a.nl','2018-12-31','3.50','1'),
(3,'a@a.nl','2018-12-31','1.50','1'),
(4,'a@a.nl','2018-12-31','4.50','1'),
(2,'b@b.nl','2018-12-31','3.50','1'),
(3,'b@b.nl','2018-12-31','1.50','1'),
(4,'b@b.nl','2018-12-31','4.50','1'),
(2,'c@c.nl','2018-12-31','3.50','1'),
(3,'c@c.nl','2018-12-31','1.50','1'),
(4,'c@c.nl','2018-12-31','4.50','1'),
(2,'d@d.nl','2018-12-31','3.50','1'),
(3,'d@d.nl','2018-12-31','1.50','1'),
(4,'d@d.nl','2018-12-31','4.50','1'),
(2,'e@e.nl','2018-12-31','3.50','1'),
(3,'e@e.nl','2018-12-31','1.50','1'),
(4,'e@e.nl','2018-12-31','4.50','1'),
(2,'f@f.nl','2018-12-31','3.50','1'),
(3,'f@f.nl','2018-12-31','1.50','1'),
(4,'f@f.nl','2018-12-31','4.50','1'),
(2,'g@g.nl','2018-12-31','3.50','1'),
(3,'g@g.nl','2018-12-31','1.50','1'),
(4,'g@g.nl','2018-12-31','4.50','1'),
(2,'h@h.nl','2018-12-31','3.50','1'),
(3,'h@h.nl','2018-12-31','1.50','1'),
(4,'h@h.nl','2018-12-31','4.50','1'),
(2,'i@i.nl','2018-12-31','3.50','1'),
(3,'i@i.nl','2018-12-31','1.50','1'),
(4,'i@i.nl','2018-12-31','4.50','1'),
(2,'j@j.nl','2018-12-31','3.50','1'),
(3,'j@j.nl','2018-12-31','1.50','1'),
(4,'j@j.nl','2018-12-31','4.50','1')