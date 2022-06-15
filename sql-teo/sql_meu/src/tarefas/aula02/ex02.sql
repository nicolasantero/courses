SELECT descCountry,
       count(*) AS qtdLinhas,
       count(DISTINCT idPlayer) as qtdPlayers
FROM TB_PLAYERS

GROUP BY descCountry

ORDER BY count(DISTINCT idPlayer) DESC
