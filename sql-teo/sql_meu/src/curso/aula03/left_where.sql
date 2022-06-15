SELECT t2.descMapName,
        count(DISTINCT t2.idLobbyGame) as qtdPartidas
FROM tb_players AS t1
        LEFT JOIN tb_lobby_stats_player as t2 ON t1.idPlayer = t2.idPlayer
WHERE t1.descCountry = 'br'
GROUP BY t2.descMapName
ORDER BY count(DISTINCT t2.idLobbyGame) DESC