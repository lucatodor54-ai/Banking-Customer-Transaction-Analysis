SELECT
strftime('%Y-%m', data_tranzactie) AS luna,
COUNT(*) AS total_tranzactii,
SUM(suma) AS suma_totala,
ROUND(AVG(suma), 2) AS suma_medie
FROM tranzactii
GROUP BY luna
ORDER BY luna ASC;re