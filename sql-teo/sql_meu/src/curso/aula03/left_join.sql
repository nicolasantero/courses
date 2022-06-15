SELECT t1.idPlayer,
        t1.descCountry,
        t2.idLobbyGame,
        t2.qtKill,
        t2.descMapName

FROM TB_PLAYERS AS t1

LEFT JOIN tb_lobby_stats_player AS t2
ON t1.idPlayer = t2.idPlayer
