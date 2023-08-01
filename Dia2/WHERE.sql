-- Databricks notebook source
-- DBTITLE 1,Friltro valor do produto
SELECT * 

FROM  silver.olist.item_pedido

WHERE VLpreco >= 500

-- COMMAND ----------

-- DBTITLE 1,Comparando colunas
SELECT *

FROM silver.olist.item_pedido

WHERE vlPreco < vlFrete

-- COMMAND ----------

-- DBTITLE 1,Filtrando por duas condições
SELECT * 

FROM silver.olist.item_pedido

WHERE vlPreco >= 100
AND vlPreco < vlFrete

-- COMMAND ----------

-- DBTITLE 1,Filtrando por mais de um produto
SELECT * 
FROM silver.olist.produto

WHERE descCategoria = 'pet_shop' 
OR descCategoria = 'telefonia'
OR descCategoria = 'bebes'

-- COMMAND ----------

-- DBTITLE 1,Filtrando por mais de um produto com IN 
SELECT * 
FROM silver.olist.produto

WHERE descCategoria IN ('pet_shop', 'telefonia', 'bebes')


-- COMMAND ----------

-- DBTITLE 1,Where com data
SELECT idPedido,
       idCliente,
       dtPedido,
       descSituacao,
       date(dtPedido) -- formata data p/ (ano-mes-dia)

FROM silver.olist.pedido

WHERE date(dtPedido) >= '2017-01-01' 
AND date(dtPedido) <= '2017-01-31'

-- COMMAND ----------

SELECT * 

FROM silver.olist.pedido

WHERE year(dtPedido) = 2017
AND month(dtPedido) = 1

-- COMMAND ----------

SELECT * 

FROM silver.olist.pedido 

WHERE year(dtPedido) = 2017
AND month(dtPedido) IN (1, 6)

-- COMMAND ----------


