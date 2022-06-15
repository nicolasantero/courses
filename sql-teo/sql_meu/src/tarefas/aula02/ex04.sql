/* dap = daily active player */
-- qual o historico dap?
SELECT 
       DATE(dtCreatedAt) as dtDap,
       count(DISTINCT idPlayer) as Dap

FROM TB_LOBBY_STATS_PLAYER

GROUP BY DATE(dtCreatedAt)

ORDER BY DATE(dtCreatedAt)
