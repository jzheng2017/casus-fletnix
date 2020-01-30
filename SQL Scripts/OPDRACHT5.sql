--B 
--1
CREATE VIEW OmzetPerPeriode AS
SELECT MONTH(watch_date) AS MONTH, YEAR(watch_date) as YEAR, genre_name, country_name, invoiced
FROM Watchhistory w, Customer c, Movie_Genre mg
WHERE w.customer_mail_address = c.customer_mail_address and w.movie_id = mg.movie_id

--2
CREATE VIEW SubscriptionCountry AS
SELECT contract_type, country_name, YEAR(subscription_start) AS YEAR
FROM Customer

--3
DROP VIEW [ContractPeriod]
CREATE VIEW ContractPeriod AS
SELECT contract_type, YEAR(subscription_start) AS YEAR, CAST(
             CASE 
                  WHEN subscription_end IS NOT NULL
                     THEN 1 
                  ELSE 0 
             END AS bit) as 'Actieve abonnee'
FROM Customer
GROUP BY YEAR

--4
DROP VIEW AgeCustomers
CREATE VIEW AgeCustomers AS
SELECT CAST(
             CASE 
                  WHEN DATEDIFF(year,birth_date, GETDATE()) BETWEEN 25 AND 50
                     THEN '25-50'
                  ELSE '50+'
             END AS Varchar) as 'Leeftijdgroep', YEAR(subscription_start) AS Subscription_start
FROM Customer
WHERE subscription_end IS NOT NULL