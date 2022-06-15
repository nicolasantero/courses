SELECT descCountry,
       count(*) AS qtLinhas,
       count(DISTINCT idPlayer) AS qtPlayers,
       count(DISTINCT descCountry) AS qtCountry,
       avg(DATE('now') - DATE(dtBirth)) AS idade,
       sum(flFacebook) AS totalFb,
       sum(flTwitter) AS totalTwitter,
       sum(flTwitch) AS totalTwitch
FROM TB_PLAYERS

GROUP BY descCountry
ORDER BY idade