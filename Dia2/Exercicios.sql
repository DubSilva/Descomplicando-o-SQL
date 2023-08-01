-- Databricks notebook source
-- DBTITLE 1,1 - Selecione todos os clientes paulistanos
SELECT *

FROM silver.olist.cliente
WHERE descCidade = 'sao paulo'

-- COMMAND ----------

-- DBTITLE 1,2 - Selecione todos os clientes paulistas
SELECT *

FROM silver.olist.cliente
WHERE descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,3 - Selecione todos os vendedores cariocas e paulistas
SELECT *

FROM silver.olist.vendedor
WHERE descUF = 'SP'
OR descCidade = 'rio de janeiro'

-- COMMAND ----------

-- DBTITLE 1,4 - Selecione produtos de perfumaria e bebes com altura maior que 5cm.
SELECT * 

FROM silver.olist.produto
WHERE vlAlturaCm > 5 
AND descCategoria IN ('perfumaria', 'bebes')

-- COMMAND ----------

-- DBTITLE 1,5 - Selecione os pedidos com mais de um item.
SELECT *
FROM silver.olist.item_pedido
WHERE idPedidoItem > 1


-- COMMAND ----------

-- DBTITLE 1,6 - Selecione os pedidos que o frete é mais caro que o item.
SELECT *

FROM silver.olist.item_pedido
WHERE vlFrete > vlPreco

-- COMMAND ----------

-- DBTITLE 1,7. Lista de pedidos que ainda não foram enviados.
SELECT *

FROM silver.olist.pedido
WHERE dtEnvio IS NULL

-- COMMAND ----------

-- DBTITLE 1,8. Lista de pedidos que foram entregues com atraso.
SELECT *,
       CASE WHEN date(dtEstimativaEntrega) < date(dtEntregue) THEN 'Atrasado'
            ELSE 'Entregue no Prazo'
       END AS delivery_status
FROM silver.olist.pedido
WHERE date(dtEstimativaEntrega) < date(dtEntregue)



-- COMMAND ----------

-- DBTITLE 1,9. Lista de pedidos que foram entregues com 2 dias de antecedência.
SELECT *
FROM silver.olist.pedido
WHERE date_diff(date(dtEntregue), date(dtEstimativaEntrega)) = -2

-- COMMAND ----------

-- DBTITLE 1,10. Selecione os pedidos feitos em dezembro de 2017 e entregues com atraso.
SELECT *
FROM silver.olist.pedido

WHERE year(dtPedido) = 2017
AND month(dtPedido) = 12
AND date_diff(date(dtEntregue), date(dtEstimativaEntrega)) > 0


-- COMMAND ----------

-- DBTITLE 1,11. Selecione os pedidos com avaliação maior ou igual que 4.
SELECT * 

FROM silver.olist.avaliacao_pedido
WHERE vlNota >= 4

-- COMMAND ----------

-- DBTITLE 1,12. Selecione pedidos pagos com cartão de crédito com duas ou mais parcelas menores que R$40,00.
SELECT *

FROM silver.olist.pagamento_pedido
WHERE descTipoPagamento = 'credit_card'
AND nrParcelas >= 2 
AND vlPagamento/nrParcelas < 40

-- COMMAND ----------


