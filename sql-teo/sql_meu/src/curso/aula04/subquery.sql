-- quantas medalhas distintas um player tem?
SELECT 
        AVG(qtDistMedalha) as avgQtMedalha,
        MIN(qtDistMedalha),
        MAX(qtDistMedalha)

FROM(
    SELECT idPlayer,
        count(DISTINCT idMedal) as qtDistMedalha

    FROM tb_players_medalha

    WHERE flActive = 1

    GROUP BY idPlayer

    ORDER BY count(DISTINCT idMedal) DESC
)