-- Databricks notebook source
-- DBTITLE 1,Média
SELECT avg(vlPreco), -- média do preço
       min(vlPreco), -- minimo do preço
       median(vlPreco), -- mediana do preço
       max(vlPreco), -- maximo preço
       std(vlPreco), -- desvio padrão
       percentile(vlPreco, 0,5), -- Percentil
       
       sum(vlPreco) / count(vlPreco) -- Média
FROM silver.olist.item_pedido



-- COMMAND ----------


