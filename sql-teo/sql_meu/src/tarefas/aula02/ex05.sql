/* dap = daily active player */
-- Qual dia de maior dap

SELECT 
       DATE(dtCreatedAt) as dtDap,
       count(DISTINCT idPlayer) as dap

FROM TB_LOBBY_STATS_PLAYER

GROUP BY dtDap

ORDER BY dap DESC
