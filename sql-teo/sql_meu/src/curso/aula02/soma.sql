SELECT sum(flFacebook) as totalFb,
       sum(flTwitter) as totalTwitter,
       sum(flTwitch) as totalTwitch
FROM TB_PLAYERS
