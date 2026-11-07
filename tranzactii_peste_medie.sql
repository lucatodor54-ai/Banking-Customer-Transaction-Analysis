SELECT 
nume,
suma,
tip
FROM clienti
INNER JOIN conturi
ON clienti.id_client = conturi.id_client
INNER JOIN tranzactii 
ON conturi.id_cont = tranzactii.id_cont
WHERE suma > (
SELECT
AVG(suma)
FROM tranzactii
)
ORDER BY suma DESC;