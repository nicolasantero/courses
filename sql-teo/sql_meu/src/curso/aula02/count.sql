SELECT count(*),
       count(DISTINCT idPlayer) as qtPlayers,
       count(DISTINCT descCountry) as qtCountry

FROM TB_PLAYERS
