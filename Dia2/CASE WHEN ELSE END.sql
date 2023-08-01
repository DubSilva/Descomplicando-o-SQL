-- Databricks notebook source
-- DBTITLE 1,Criando condições (faixas de preço)
SELECT *,
        CASE WHEN vlPreco <= 100 THEN '0 - 100'
          ELSE '101 ou mais'
        END AS fxPreco
  

FROM silver.olist.item_pedido

-- COMMAND ----------

-- DBTITLE 1,Níveis de frete
SELECT *,
        CASE
            WHEN vlFrete / (vlFrete + vlPreco) = 0 THEN 'Frete Grátis'
            WHEN vlFrete / (vlFrete + vlPreco) <= 0.2 THEN 'Frete baixo'
            WHEN vlFrete / (vlFrete + vlPreco) <= 0.4 THEN 'Frete médio'
            ELSE 'Frete alto'
        END AS descFrete

FROM silver.olist.item_pedido


-- COMMAND ----------

-- DBTITLE 1,Regionalização
SELECT *,
        CASE 
          WHEN descUF IN ('SC', 'PR', 'RS') THEN 'Sul'
          WHEN descUF IN ('SP', 'MG', 'RJ', 'ES') THEN 'Sudeste'
          WHEN descUF IN ('GO', 'MT', 'MS', 'DF') THEN 'Centro-Oeste'
          WHEN descUF IN ('BA', 'SE', 'AL', 'PE', 'PI', 'MA', 'CE', 'RN', 'PB') THEN "Nordeste"
          WHEN descUF IN ('RO', 'AC', 'AM', 'PA', 'TO', 'AP', 'RR') THEN 'Norte'
          END AS descRegiao

FROM silver.olist.cliente

-- COMMAND ----------

SELECT *,
      CASE
        WHEN descUF = 'SP' THEN 'Paulista'
        WHEN descUF = 'RJ' THEN 'Fluminense'
        WHEN descUF = 'PR' THEN 'Paranaense'
        WHEN descUF = 'MG' THEN 'Mineiro'
        WHEN descUF = 'SC' THEN 'Catarinense'
        WHEN descUF = 'BA' THEN 'Baiano' 
        ELSE 'Não mapeado'
      END AS descGentilico

FROM silver.olist.vendedor

-- COMMAND ----------


