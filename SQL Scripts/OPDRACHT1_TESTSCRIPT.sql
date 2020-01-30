--OPDRACHT 1 E

--GOEDE QUERIES
INSERT INTO Customer
VALUES('k@k.nl','achternaam1','voornaam1','PayPal','12345670','Normal',
'2018-12-12',NULL,'coolperson1','1237456','Netherlands','M','1989-02-19')

INSERT INTO Movie
VALUES(8,'Avengers: Age of Ultron', 141, 'When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, 
things go horribly wrong and its up to Earths mightiest heroes to stop the villainous Ultron from enacting his terrible plan.', 2015, 'https://www.imdb.com/title/tt2395427/?ref_=nv_sr_3',
NULL, 9, 'https://www.youtube.com/watch?v=tmeOjFno6Do')

INSERT INTO WatchHistory
VALUES(17,'a.facilisis@Aeneaneget.edu','2010-12-01','2.50','1')

INSERT INTO Contract
VALUES('Premium','12.99','20')

--SLECHTE QUERIES
INSERT INTO Customer
VALUES('k@k.nl','achternaam1','voornaam1','PayPal','12345670','Normal',
'2018-12-12',NULL,'coolperson1','1237456','Netherlands','C','1989-02-19')

INSERT INTO Movie
VALUES(8,'Avengers: Age of Ultron', 141, 'When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, 
things go horribly wrong and its up to Earths mightiest heroes to stop the villainous Ultron from enacting his terrible plan.', 2030, 'https://www.imdb.com/title/tt2395427/?ref_=nv_sr_3',
NULL, 9, 'https://www.youtube.com/watch?v=tmeOjFno6Do')

INSERT INTO WatchHistory
VALUES(15,'a.facilisis@Aeneaneget.edu','2018-12-31','2.50','1')

INSERT INTO Contract
VALUES('Pro','-1','-1')