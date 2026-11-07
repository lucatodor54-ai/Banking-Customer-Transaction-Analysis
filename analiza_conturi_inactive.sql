SELECT
 nume,
oras,
conturi.id_cont
FROM clienti
INNER JOIN conturi
ON clienti.id_client = conturi.id_client
LEFT JOIN tranzactii
ON conturi.id_cont = tranzactii.id_cont
WHERE tranzactii.id_cont IS NULL;