WITH solduri_client AS (
    SELECT
        clienti.nume,
        SUM(conturi.sold) AS sold_total
    FROM clienti
    INNER JOIN conturi
    ON clienti.id_client = conturi.id_client
    GROUP BY clienti.id_client, clienti.nume
),
segmentare AS (
SELECT
nume, 
sold_total,
CASE 
WHEN sold_total >= 50000 THEN 'PREMIUM'
WHEN sold_total >= 20000 THEN 'STANDARD'
ELSE 'BASIC'
END AS categorie 
FROM solduri_client
)
SELECT
categorie,
COUNT(*) AS total_clienti,
SUM(sold_total) AS sold_total_segment,
ROUND(AVG(sold_total), 2) AS sold_mediu_segment
FROM segmentare
GROUP BY categorie
ORDER BY sold_total_segment DESC;