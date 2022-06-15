SELECT idPlayer,
    descCountry,
    CASE
        WHEN descCountry = 'br' THEN 'hu3hu3hu3'
        WHEN descCountry IN ('ar', 'pe', 'uy', 'py', 'cl', 'bo') THEN 'manito'
        WHEN descCountry IN ('na', 'ca') THEN 'na'
        ELSE 'outros'
    END AS nacionalidade
FROM TB_PLAYERS
    /* cl
     br
     ar
     pe
     uy
     py
     ca
     pt
     us
     bo
     sv
     cr
     ec */