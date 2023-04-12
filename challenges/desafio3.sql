SELECT 
    us.`name` AS pessoa_usuaria,
    COUNT(hi.song_id) AS musicas_ouvidas,
    ROUND(SUM(so.duration)/ 60, 2) AS total_minutos
FROM
    SpotifyClone.users AS us
        JOIN
    SpotifyClone.`history` AS hi ON us.id_user = hi.user_id
        JOIN
    SpotifyClone.songs AS so ON hi.song_id = so.id_song
GROUP BY us.id_user
ORDER BY us.`name`;
