-- Databricks notebook source
-- DBTITLE 1,CONTAGEM LINHAS NÃO NULAS 
SELECT 
      count(*)
FROM silver.olist.pedido

-- COMMAND ----------

SELECT count(descSituacao),
       count(DISTINCT descSituacao)  
FROM silver.olist.pedido

-- COMMAND ----------

SELECT count(idPedido), 
       count(distinct idPedido),
       count(*)
      
FROM silver.olist.pedido

-- COMMAND ----------


