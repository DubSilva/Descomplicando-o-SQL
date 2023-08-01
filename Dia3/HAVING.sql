-- Databricks notebook source
SELECT descUF,
       count(DISTINCT idClienteUnico) AS qtdCliente
FROM silver.olist.cliente

GROUP BY descUF


-- COMMAND ----------

SELECT descCategoria, 
       count(DISTINCT idProduto) AS qtdeProduto,
       avg(vlPesoGramas) AS mediaPeso

FROM silver.olist.produto

WHERE descCategoria LIKE '%moveis%'
OR descCategoria IN ('bebes', 'perfumaria')
GROUP BY descCategoria

HAVING count(DISTINCT idProduto) > 100
AND mediaPeso > 1000

ORDER BY mediaPeso

-- COMMAND ----------


