-- Databricks notebook source
-- DBTITLE 1,Consultando tabelas
SELECT * 
FROM silver.olist.pedido

-- COMMAND ----------

-- DBTITLE 1,Consultando tabelas com limite
SELECT * 
FROM silver.olist.pedido
LIMIT 10


-- COMMAND ----------

-- DBTITLE 1,Todas colunas +1
SELECT *,
vlPreco + vlFrete AS vlTotal

FROM silver.olist.item_pedido


-- COMMAND ----------

SELECT idPedido,
       idProduto,
       vlPreco,
       vlFrete,
       vlPreco + vlFrete as vlTotal

FROM silver.olist.item_pedido

-- COMMAND ----------


