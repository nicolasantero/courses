WITH tb_subs as (
        SELECT idPlayer,
                case when idMedal = 1 then 'Premium' else 'Plus' end SubType

        FROM tb_players_medalha

        WHERE idMedal in ('1','3')
        AND flActive = 1

        GROUP BY 1,2
),

tb_winrate AS ( 
        SELECT t1.idPlayer,
                AVG(t1.flWinner) as winrate
        
        FROM tb_lobby_stats_player as t1

        GROUP BY t1.idPlayer
),

tb_subs_stats as (

        SELECT t1.*,
        COALESCE(t2.SubType, 'Nao sub') as SubType
        FROM tb_winrate as t1

        LEFT JOIN tb_subs as t2
        ON t1.idPlayer = t2.idPlayer
)

SELECT SubType,
        avg(winrate) as avgWinrate

FROM tb_subs_stats

GROUP BY SubType
