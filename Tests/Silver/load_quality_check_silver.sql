
-- Para detectar valores de ID da Transação duplicados ou nulos:

SELECT 
Transaction_ID AS 'ID da Transação',
COUNT (*) AS 'Total'
FROM bronze.CafeSales
GROUP BY Transaction_ID
HAVING COUNT (*) > 1 OR Transaction_ID IS NULL
