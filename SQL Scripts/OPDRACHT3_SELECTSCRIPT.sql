--OPDRACHT 3
--A
SELECT title, publication_year, genre_name
FROM Movie, movie_genre
WHERE movie.movie_id = Movie_Genre.movie_id
ORDER BY genre_name
--B
SELECT *
FROM Movie
WHERE publication_year BETWEEN 1990 AND 2010
--C
SELECT lastname, firstname, subscription_start
FROM Customer
WHERE subscription_end IS NULL
--D
SELECT m.movie_id, m.title, p.firstname, p.lastname, mc.role
FROM Movie as m, Movie_Cast as mc, Person as p
WHERE m.movie_id = mc.movie_id AND mc.person_id = p.person_id AND m.publication_year = '1991' AND m.title LIKE '%Terminator%'
--E
SELECT m.title, m.publication_year
FROM Movie as m, Movie_Cast as mc, Person as p
WHERE m.movie_id = mc.movie_id AND mc.person_id = p.person_id AND p.firstname = 'Arnold' AND p.lastname = 'Schwarzenegger'
--F
CREATE VIEW openstaande_kosten AS
SELECT lastname, firstname, price
FROM Customer, WatchHistory
WHERE Customer.customer_mail_address = WatchHistory.customer_mail_address AND invoiced = 0
GO
SELECT * FROM openstaande_kosten

--G
CREATE VIEW MinstBekeken AS
SELECT TOP 100 title, COUNT(title) AS 'number of times watched'
FROM WatchHistory, movie
WHERE movie.movie_id = WatchHistory.movie_id
GROUP BY title
ORDER BY 2
GO
SELECT * FROM MinstBekeken
--H
CREATE VIEW MeestBekeken AS
SELECT title, publication_year, COUNT(title) AS 'number of times watched'
FROM WatchHistory, movie
WHERE movie.movie_id = WatchHistory.movie_id
GROUP BY title, publication_year
HAVING COUNT(title) > 0
GO
SELECT * FROM MeestBekeken ORDER BY 3 DESC
--I
SELECT title, publication_year
FROM Movie, Movie_Genre
WHERE movie.movie_id = Movie_Genre.movie_id 
GROUP BY title, publication_year
HAVING COUNT(movie_genre.movie_id) > 8
--J
SELECT DISTINCT firstname, lastname
FROM Movie as m, Movie_Cast as mc, Movie_Genre as mg, Person as p
WHERE m.movie_id = mc.movie_id AND mc.movie_id = mg.movie_id AND mc.person_id = p.person_id AND mg.genre_name IN ('Horror', 'Family') AND p.gender = 'F'
--K
SELECT firstname, lastname, COUNT(md.person_id) as 'amount of movies'
FROM Person p, Movie_Director md, Movie m
WHERE m.movie_id = md.movie_id AND md.person_id = p.person_id
GROUP BY firstname, lastname
ORDER BY 3 DESC
--L
CREATE VIEW PercentageGenres AS
SELECT genre_name, COUNT(genre_name) * 100 / (SELECT COUNT(genre_name) FROM Movie_Genre)as 'Percentage'
FROM Movie_Genre
GROUP BY genre_name
GO
SELECT * FROM PercentageGenres ORDER BY 2 DESC
--M
create view v_gemmideldperdag
as
select w.customer_mail_address, CAST(COUNT(W.watch_date) AS float)/CAST(DATEDIFF(day, C.subscription_start, GETDATE()) AS float) AS films_per_dag
from WatchHistory W inner join Customer C ON W.customer_mail_address=C.customer_mail_address
group by W.customer_mail_address, C.subscription_start

select * 
from v_gemmideldperdag
where films_per_dag > 0.5