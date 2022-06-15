/* 
Query para pegar todos players argentinos
*/
SELECT *

FROM TB_PLAYERS

WHERE descCountry = 'br'
AND strftime('%Y', dtBirth) = '1992'
