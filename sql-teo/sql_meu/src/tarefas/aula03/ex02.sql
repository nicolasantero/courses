-- de qual o pais é o jogador com maior taxa de hs

SELECT  t1.idPlayer,
        t1.idLobbyGame,

        t2.descCountry,
        AVG(100.0 * t1.qtHs/t1.qtKill) as taxAvgHs,
        sum(t1.qtKill),
        COUNT(DISTINCT t1.idLobbyGame) 

FROM tb_lobby_stats_player as t1

LEFT JOIN tb_players as t2
ON t1.idPlayer = t2.idPlayer

GROUP BY t1.idPlayer, t2.descCountry

HAVING COUNT(DISTINCT t1.idLobbyGame) > 5

ORDER BY AVG(100.0 * t1.qtHs/t1.qtKill) DESC

LIMIT 100

