-- Calculate and return the count of albums each band has in the database.
-- Include Artist name and album count into the result.
-- Name the result columns as "Artist" and "Album count".

SELECT
    artist.name AS artist_name,
    COUNT(album.artist_id) AS album_count
FROM
    album
JOIN
    artist ON album.artist_id = artist.id
GROUP BY
    artist.id,
    artist.name;