SELECT 
nume, 
SUM(sold) AS sold_total
FROM clienti
INNER JOIN conturi
ON clienti.id_client = conturi.id_client
GROUP BY nume  
ORDER BY sold_total DESC
LIMIT 5;