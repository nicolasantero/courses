SELECT
       avg(date('now') - date(dtBirth)) as idade
FROM TB_PLAYERS
