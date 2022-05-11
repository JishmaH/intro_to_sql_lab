-- Find all the matches from 2017.

SELECT * FROM matches WHERE season = 2017;

-- Find all the matches featuring Barcelona.

SELECT * FROM matches WHERE hometeam = 'Barcelona';

-- What are the names of the Scottish divisions included?

SELECT name FROM divisions WHERE country = 'Scotland';

-- Find the division code for the Bundesliga. Use that code to find out how many matches Freiburg have played in the Bundesliga since the data started being collected.

SELECT division_code FROM divisions WHERE name = "Bundesliga"; 
-- SELECT COUNT(*) FROM awayteam = 'Freiburg' WHERE hometeam = 'Bundesliga'

-- Find the unique names of the teams which include the word "City" in their name (as entered in the database)

SELECT DISTINCT name FROM matches WHERE hometeam AND awayteam LIKE '&City&';

-- Have Huddersfield played Swansea in the period covered?
SELECT * FROM matches WHERE (hometeam = 'Swansea' AND awayteam = 'Huddersfield');