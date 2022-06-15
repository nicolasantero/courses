SELECT 
        idPlayer,
        avg(flWinner) AS winrate,
        count(distinct idLobbyGame) AS qtdLobby

FROM tb_lobby_stats_player

GROUP BY idPlayer

HAVING qtdLobby >= 10

ORDER BY winrate DESC