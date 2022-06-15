-- Qual mapa mais jogado pelos argentinos

SELECT  
        t2.descCountry,
        t1.descMapName,
        count(DISTINCT t1.idLobbyGame)
        

FROM tb_lobby_stats_player as t1

LEFT JOIN tb_players as t2
ON t1.idPlayer = t2.idPlayer

WHERE t2.descCountry in ('ar')

GROUP BY t1.descMapName

ORDER BY count(DISTINCT t1.idLobbyGame) desc



LIMIT 100

