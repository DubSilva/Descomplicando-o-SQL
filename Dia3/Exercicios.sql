-- Databricks notebook source
-- DBTITLE 1,1. Qual pedido com maior valor de frete? E o menor?
SELECT  idPedido,
        sum(vlFrete) AS totalFrete
        
FROM silver.olist.item_pedido
GROUP BY idPedido

ORDER BY totalFrete DESC 


-- COMMAND ----------

-- DBTITLE 1,2. Qual vendedor tem mais pedidos?
SELECT  idVendedor,
        count(DISTINCT idPedido) AS qtdPedidos
FROM silver.olist.item_pedido
GROUP BY idVendedor
ORDER BY qtdPedidos DESC
LIMIT 3 

-- COMMAND ----------

-- DBTITLE 1,3. Qual vendedor tem mais itens vendidos? E o com menos?
select idVendedor,
       sum(idPedidoItem) AS qtditensPedidos
from silver.olist.item_pedido

group by idVendedor
order by qtditensPedidos

-- COMMAND ----------


