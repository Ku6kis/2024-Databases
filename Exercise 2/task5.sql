-- Fetch artist name and their albums. Include albums without artist information in the
-- result set.
-- Include artist's name, albums name and release year to the result.

SELECT
    artist.name as name,
    album.name as album_name,
    album.year as album_year
FROM
    artist
RIGHT JOIN
    album ON album.artist_id = artist.id;
