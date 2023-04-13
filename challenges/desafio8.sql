SELECT 
	ar.`name` AS artista,
    al.`name` AS album
FROM
	SpotifyClone.artists AS ar
    INNER JOIN 
    SpotifyClone.albums AS al ON ar.id_artist = al.artist_id
WHERE 
	ar.`name` = 'Elis Regina'
ORDER BY al.`name`;    
