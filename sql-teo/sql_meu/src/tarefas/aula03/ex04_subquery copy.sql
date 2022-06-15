-- Qual taxa de hs da tribo, usando subquery

SELECT flTribo,
        AVG(txHs) AS avgTxHs

FROM(

        SELECT 
                t1.idPlayer,
                t1.qtKill,
                t1.qtHs,
                100.0 * t1.qtHs / t1.qtKill as TxHs,
                COALESCE(t2.flTribo, 0) as flTribo

        FROM tb_lobby_stats_player as t1

        LEFT JOIN(

                SELECT t1.idPlayer,
                        max(1) as flTribo

                FROM tb_players_medalha as t1

                WHERE t1.idMedal in ('8', '37')
                AND t1.flActive = 1

                GROUP BY t1.idPlayer
        ) AS t2
        ON t1.idPlayer = t2.idPlayer
)

GROUP BY flTribo
