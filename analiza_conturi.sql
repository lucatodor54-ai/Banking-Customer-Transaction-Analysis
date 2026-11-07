SELECT 
tip_cont,
COUNT(*) AS total_conturi,
ROUND(AVG(sold), 2) AS sold_mediu,
SUM(sold) AS sold_total
FROM conturi
GROUP BY tip_cont
ORDER BY sold_total DESC;