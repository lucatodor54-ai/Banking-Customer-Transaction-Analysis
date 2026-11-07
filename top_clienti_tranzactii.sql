SELECT
nume,
COUNT(*) AS total_tranzactii,
SUM(suma) AS suma_totala
FROM clienti
INNER JOIN conturi
ON clienti.id_client = conturi.id_client
INNER JOIN tranzactii 
ON conturi.id_cont = tranzactii.id_cont
GROUP BY clienti.id_client, clienti.nume
ORDER BY suma_totala DESC
LIMIT 10;