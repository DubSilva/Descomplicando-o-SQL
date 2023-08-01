-- Databricks notebook source
SELECT DISTINCT descUF
FROM silver.olist.vendedor
ORDER BY descUF

-- COMMAND ----------

SELECT DISTINCT descUF, descCidade
FROM silver.olist.vendedor
ORDER BY descUF, descCidade

-- COMMAND ----------


