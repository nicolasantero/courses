-- Qual taxa de hs da tribo, usando subquery
WITH tb_tribo AS (
        SELECT t1.idPlayer,
                max(1) as flTribo

        FROM tb_players_medalha as t1

        WHERE t1.idMedal in ('8', '37')
        AND t1.flActive = 1

        GROUP BY t1.idPlayer
),

tb_hs AS(
        SELECT t1.idPlayer,
                AVG(100.0 * t1.qtHs / t1.qtKill) as txHs
        FROM tb_lobby_stats_player as t1
        group BY t1.idPlayer
),

tb_join_hs_tribo as (
        
        SELECT t1.*,
                COALESCE(t2.flTribo, 0) as flTribo

        FROM tb_hs as t1

        LEFT JOIN  tb_tribo as t2
        ON t1.idPlayer = t2.idPlayer
)

SELECT flTribo,
        AVG(txHs) as avgTxHs

FROM tb_join_hs_tribo

GROUP BY flTribo