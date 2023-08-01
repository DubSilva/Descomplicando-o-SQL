-- Databricks notebook source
SELECT descUF, 
count(DISTINCT idVendedor) AS qtVendedor 
FROM silver.olist.vendedor

GROUP BY descUF 
ORDER BY count(DISTINCT idVendedor) DESC ----- poderia colocar ORDER BY 2 (segunda coluna), ou renomear a coluna.




-- COMMAND ----------

SELECT descCategoria ,
       count(DISTINCT idProduto) AS qtdProdutos,
       avg(vlPesoGramas) AS mediaPeso,
       median(vlPesoGramas) AS medianaPeso,

       avg(vlComprimentoCm * vlAlturaCm * vlLarguraCm) AS mediaVolume,
       median(vlComprimentoCm * vlAlturaCm * vlLarguraCm) AS medianaVolume
 
FROM silver.olist.produto
GROUP BY descCategoria
ORDER BY medianaPeso DESC

-- COMMAND ----------

SELECT year(dtPedido),
       count(idPedido)

FROM silver.olist.pedido

GROUP BY year(dtPedido)
ORDER BY year(dtPedido)

-- COMMAND ----------

SELECT year(dtPedido) || '-' || month(dtPedido) AS anoMes,
       count(idPedido)

FROM silver.olist.pedido

GROUP BY anoMes
ORDER BY anoMes

-- COMMAND ----------


