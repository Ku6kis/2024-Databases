-- Fetch all the tracks which name starts with the word "The" and are at least one minute long.
-- Sort the result primarily in ascending order by the name and secondarily
-- in ascending order by the length.

SELECT * FROM track WHERE name LIKE "The %" and length > "00:00:59" ORDER BY name, length;