/* 
 */
SELECT *
FROM TB_LOBBY_STATS_PLAYER
WHERE round(100.0 * qtHs / qtKill, 2) > 50.0