-- Databricks notebook source
SELECT count(idVendedor),
       count(DISTINCT idVendedor)

FROM silver.olist.vendedor

WHERE descUF = 'RJ'

-- COMMAND ----------

SELECT count(DISTINCT idClienteUnico),
       count(DISTINCT descCidade)
FROM SILVER.olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

SELECT count(*) AS qtdProdutos,
       avg(vlPesoGramas) AS mediaPeso,
       median(vlPesoGramas) AS medianaPeso,
       std(vlPesoGramas) AS desviopadraoPedo,
       min(vlPesogramas) AS menorPeso,
       max(vlPesoGramas) AS maiorPeso
       

FROM silver.olist.produto

WHERE descCategoria = 'perfumaria'

-- COMMAND ----------


