USE DB_SECONTROLA;
/*
View para consultas (DESPESAS):
nome do usuario, moeda, cotacao(R$), grupo domestico, categoria, subcategoria, valor, conta, agencia, forma de pagamento 
*/
DROP VIEW IF EXISTS TODAS_DESPESAS;
CREATE VIEW TODAS_DESPESAS AS SELECT USU.COD_US AS 'ID_USUARIO', USU.NOME_US AS NOME, USU.COD_US_GRUPO AS 'GRUPO DOMESTICO' 
,COT.DESCR_MOEDA AS MOEDA, COT.VALOR_EM_REAIS AS 'COTACAO(R$)' 
,CAT.DESCR_CAT AS CATEGORIA, SUB.DESCR_SUBCAT AS SUBCATEGORIA 
,DES.DATA_DESP AS 'DATA', DES.VALOR 
,CON.NUM_CONTA AS 'CONTA DEBITADA', CON.NUM_AGENCIA AS AGENCIA 
,PGT.DESCR_FORMA_PGTO 'FORMA DE PAGAMENTO' 

   FROM USUARIO USU  
	INNER JOIN COTACAO COT ON USU.COD_MOEDA = COT.COD_MOEDA 
	RIGHT JOIN DESPESA DES ON USU.COD_US = DES.COD_US  -- RIGHT JOIN PARA MANTER APENAS TUPLAS ONDE HÁ DESPESAS LANÇADAS
	LEFT JOIN CATEGORIA CAT ON DES.COD_CAT = CAT.COD_CAT 
	LEFT JOIN SUBCATEGORIAS SUB ON DES.COD_SUBCAT = SUB.COD_SUBCAT 
    LEFT JOIN CONTA_BANCO CON ON DES.COD_CONTA = CON.COD_CONTA 
    LEFT JOIN FORMA_PGTO PGT ON DES.COD_FORMA_PGTO = PGT.COD_FORMA_PGTO 
;
-- VISUALIZAÇÃO:
SELECT * FROM TODAS_DESPESAS;