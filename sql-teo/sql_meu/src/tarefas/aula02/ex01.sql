SELECT idPlayer,
       avg(100.0 * qtHs / qtKill) as txHs

FROM TB_LOBBY_STATS_PLAYER

GROUP BY idPlayer

ORDER BY avg(100.0 * qtHs / qtKill) DESC
