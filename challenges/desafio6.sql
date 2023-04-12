SELECT 
	MIN(pl.`value`) AS faturamento_minimo,
    MAX(pl.`value`) AS faturamento_maximo,
    ROUND(AVG(pl.`value`), 2) AS faturamento_medio,
    ROUND(SUM(pl.`value`), 2) AS faturamento_total
FROM
	SpotifyClone.users as us
	INNER JOIN
    SpotifyClone.plans AS pl ON us.plan_id = pl.id_plan;
    