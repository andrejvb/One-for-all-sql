SELECT 
	ar.`name` AS artista,
    al.`name` AS album,
    COUNT(fo.user_id) AS pessoas_seguidoras
FROM
	SpotifyClone.artists AS ar
    INNER JOIN 
    SpotifyClone.following_artist AS fo ON ar.id_artist = fo.artist_id
    INNER JOIN
    SpotifyClone.albums AS al ON al.artist_id = fo.artist_id
GROUP BY ar.`name`, al.`name`
ORDER BY COUNT(fo.user_id) DESC, ar.`name`, al.`name`;
    