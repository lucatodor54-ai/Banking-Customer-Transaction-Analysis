SELECT oras, 
COUNT(*) AS total_clienti
FROM clienti
GROUP BY oras
ORDER BY total_clienti DESC;