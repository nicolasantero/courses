
-- qual mapa mais jogado? 

SELECT descMapName,
       count(DISTINCT idLobbyGame) as qtdPartidas,
       count(*) as qtdPartidasPlayer

FROM TB_LOBBY_STATS_PLAYER

GROUP BY descMapName

ORDER BY count(DISTINCT idLobbyGame) desc


