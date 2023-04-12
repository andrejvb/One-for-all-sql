SELECT 
    COUNT(DISTINCT so.`name`) AS cancoes,
    COUNT(DISTINCT ar.`name`) AS artistas,
    COUNT(DISTINCT al.`name`) AS albuns
FROM
    SpotifyClone.songs AS so
        JOIN
    SpotifyClone.albums AS al ON so.album_id = al.id_album
        JOIN
    SpotifyClone.artists AS ar ON ar.id_artist = al.artist_id;
    