-- Databricks notebook source
SELECT '1998-08-28' -- ANO-MES-DIA

-- COMMAND ----------

-- DBTITLE 1,Somando dias
SELECT date_add('1998-08-28', 2) -- ANO-MES-DIA

-- COMMAND ----------

-- DBTITLE 1,Subtraindo dias
SELECT date_add('1998-08-28', -2) -- ANO-MES-DIA

-- COMMAND ----------

-- DBTITLE 1,Subtraindo dias
SELECT date_sub('1998-08-28', 3) -- ANO-MES-DIA

-- COMMAND ----------

SELECT add_months('1998-08-28', 12)

-- COMMAND ----------

SELECT year('2023-01-01')

-- COMMAND ----------

SELECT month('1998-08-28')

-- COMMAND ----------

SELECT day('1998-08-28')

-- COMMAND ----------

SELECT dayofweek('1998-08-28')

-- COMMAND ----------

SELECT date_diff('2023-07-27', '1998-08-28')

-- COMMAND ----------

SELECT months_between('2023-07-27', '1998-08-28')

-- COMMAND ----------

SELECT idPedido,
       idCliente,
       dtPedido,
       dtEntregue,
      datediff(dtEntregue, dtPedido)  AS TempoDeEntrega

FROM  silver.olist.pedido 


-- COMMAND ----------


