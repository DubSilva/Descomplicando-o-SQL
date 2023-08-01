-- Databricks notebook source
SELECT *
FROM silver.olist.item_pedido

ORDER BY vlPreco, vlFrete DESC 
LIMIT 5

-- COMMAND ----------

SELECT * 

FROM silver.olist.produto
WHERE descCategoria = 'perfumaria'
ORDER BY nrTamanhoNome DESC
LIMIT 5

-- COMMAND ----------

SELECT *,
          vlAlturaCm * vlComprimentoCm * vlLarguraCm AS volumeCm
FROM silver.olist.produto
WHERE descCategoria = 'perfumaria'

ORDER BY vlAlturaCm * vlComprimentoCm * vlLarguraCm DESC
LIMIT 5

-- COMMAND ----------


