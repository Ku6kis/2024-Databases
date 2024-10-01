-- Fetch album and track information for the artist "Iron Maiden".
-- Select Album name, album year, track name, track number and track length to the result.
-- Sort the result primarily by album name and secondarily by track number.

SELECT
    album.name AS album_name,
    album.year AS album_year,
    track.name AS track_name,
    track.track_number AS track_number,
    track.length AS track_length
FROM
    album
JOIN
    artist ON album.artist_id = artist.id
JOIN
    track ON track.album_id = album.id
WHERE
    artist.name = 'Iron Maiden'
ORDER BY
    album.name,
    track.track_number;