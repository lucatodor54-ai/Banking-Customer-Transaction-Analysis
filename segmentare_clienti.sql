WITH solduri_client AS (
SELECT 
clienti.nume,
SUM(conturi.sold) AS sold_total
FROM clienti
INNER JOIN conturi
ON clienti.id_client = conturi.id_client
GROUP BY clienti.id_client, clienti.nume 
)
SELECT 
nume,
sold_total,
CASE
WHEN sold_total >= 50000 THEN 'PREMIUM'
WHEN sold_total >= 20000 THEN 'STANDARD'
ELSE 'BASIC'
END AS categorie 
FROM solduri_client
ORDER BY sold_total DESC;