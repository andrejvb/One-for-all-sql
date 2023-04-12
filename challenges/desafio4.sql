SELECT 
    us.`name` AS pessoa_usuaria,
	IF(MAX(YEAR(hi.reproduction_date)) < 2021, 'Inativa', 'Ativa') AS status_pessoa_usuaria
    FROM SpotifyClone.users AS us
    INNER JOIN
    SpotifyClone.`history` as hi ON us.id_user = hi.user_id
GROUP BY us.id_user
ORDER BY us.`name`;
