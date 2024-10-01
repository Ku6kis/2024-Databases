-- Fetch all the albums which are released between 1990 and 2000 (including both years).
-- Sort the result in descending order by the release year.

SELECT * FROM album WHERE year > 1989 AND year < 2001 ORDER BY year DESC;