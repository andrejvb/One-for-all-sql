SELECT 
	so.`name` AS cancao, COUNT(so.id_song) AS reproducoes
FROM
	 SpotifyClone.songs AS so
     INNER JOIN
      SpotifyClone.`history` AS hi ON so.id_song = hi.song_id
GROUP BY so.id_song
ORDER BY reproducoes DESC, so.`name`
LIMIT 2;