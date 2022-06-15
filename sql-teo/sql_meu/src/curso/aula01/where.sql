SELECT idPlayer,
       dtBirth

FROM TB_PLAYERS
WHERE descCountry = 'ar'
AND dtBirth IS NOT NULL