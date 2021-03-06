use db_secontrola;

DELETE FROM COTACAO;
INSERT INTO COTACAO(COD_MOEDA, DESCR_MOEDA, VALOR_EM_REAIS) 
VALUES 
(1, "REAL", 1),
(2, "DOLAR", 3.87),
(3, "EURO", 4.35);

DELETE FROM NIVEL_ACESSO;
INSERT INTO NIVEL_ACESSO(COD_NIVEL_AC, DESCR_NIVEL_AC) 
VALUES 
(1, "ADMIN_SIS"),
(2, "ADMIN_CONTA"),
(3, "US_CONTA");

DELETE FROM USUARIO;
INSERT INTO USUARIO(COD_US, NOME_US, SENHA_US,COD_MOEDA,COD_NIVEL_ACESSO, COD_US_GRUPO) 
VALUES 
-- ADMINISTRADOR DO SISTEMA
(1, "SUPORTE TECNICO", "QWERT-1234",1 ,1 , NULL),

-- GRUPO DOMÉSTICO I
(2, "FRANCISLAUDO DA SILVA", "4321CBA",1 ,2 , 2),
(3, "ANABELLE LANDERLEIA DA SILVA", "4321CBA",2 ,3 , 2),
(4, "MATHIAS TANTOS DA SILVA", "4321CBA",3 ,3 , 2),

-- GRUPO DOMÉSTICO II
(5, "EBERLADO PEREIRA MORALES", "1234ACBD",1 ,2 , 5),
(6, "VANDEILSON PEREIRA COSTA MORALES", "1234ACBD",1 ,3 , 5),
(7, "ETINALDO ROSSI  LOPES MORALES", "1234ACBD",1 ,3 , 5),
(8, "ERQUILES PEREIRA MORALES", "1234ACBD",1 ,3 , 5);

DELETE FROM CONTA_BANCO;
INSERT INTO CONTA_BANCO(COD_CONTA, COD_US, NUM_CONTA, NUM_AGENCIA, SALDO) 
VALUES 
(1, 2, 13405, 2017, 1500.56),
(2, 2, 45031, 3021, -12.50),
(3, 5, 37895, 153, 762.87);

DELETE FROM CATEGORIA;
INSERT INTO CATEGORIA(COD_CAT, TIPO_CAT, DESCR_CAT)
VALUES
(1, "DESPESA", "HABITACAO"),
(2, "DESPESA", "ALIMENTACAO"),
(3, "DESPESA", "SAUDE"),
(4, "DESPESA", "TRANSPORTE"),
(5, "DESPESA", "CUIDADOS PESSOAIS"),
(6, "DESPESA", "EDUCACAO"),
(7, "DESPESA", "LAZER"),
(8, "DESPESA", "IMPOSTOS"),
(9, "DESPESA", "OUTROS"),

(10, "RECEITA", "SALARIO"),
(11, "RECEITA", "RENDA EXTRA"),
(12, "RECEITA", "BENEFICIOS"),
(13, "RECEITA", "INVESTIMENTOS"),
(14, "RECEITA", "FGTS"),
(15, "RECEITA", "REEMBOLSOS"),
(16, "RECEITA", "SEGURO-DESEMPREGO"),
(17, "RECEITA", "FERIAS"),
(18, "RECEITA", "OUTROS");

DELETE FROM SUBCATEGORIAS;
INSERT INTO SUBCATEGORIAS(COD_SUBCAT, COD_CAT, DESCR_SUBCAT)
VALUES
-- HABITAÇÃO
(1, 1, "ALUGUEL"),
(2, 1, "CONTA DE AGUA"),
(3, 1, "CONTA DE ENERGIA"),
(4, 1, "CONTA DE GAS"),
(5, 1, "CONDOMINIO"),
(6, 1, "IPTU"),
(7, 1, "TELEFONE FIXO"),
(8, 1, "CELULAR"),
(9, 1, "INTERNET"),
(10, 1, "TV POR ASSINATURA"),
(11, 1, "EMPREGADOS"),
(12, 1, "LAVANDERIA"),
(13, 1, "UTILIDADES DOMESTICAS"),
(14, 1, "DECORACAO"),
(15, 1, "MANUTENCAO "),
(16, 1, "OUTROS"),
-- ALIMENTAÇÃO
(17, 2, "SUPERMERCADO"),
(18, 2, "PADARIA"),
(19, 2, "ACOUGUE"),
(20, 2, "RESTAURANTE"),
(21, 2, "LANCHES"),
(22, 2, "VAREJAO"),
-- SAUDE
(23, 3, "PLANOS DE SAUDE"),
(24, 3, "MEDICOS E TERAPEUTAS"),
(25, 3, "DENTISTA"),
(26, 3, "MEDICAMENTO"),
-- TRANSPORTE
(27, 4, "PRESTACAO"),
(28, 4, "IPVA"),
(29, 4, "SEGURO OBRIGATORIO"),
(30, 4, "LICENCIAMENTO"),
(31, 4, "SEGURO"),
(32, 4, "COMBUSTIVEL"),
(33, 4, "ESTACIONAMENTO"),
(34, 4, "PEDAGIO"),
(35, 4, "LAVAGEM "),
(36, 4, "MANUTENCAO"),
(37, 4, "MULTAS"),
(38, 4, "ONIBUS"),
(39, 4, "METRO"),
(40, 4, "TREM"),
(41, 4, "TAXI"),
(42, 4, "OUTROS"),
-- CUIDADOS PESSOAIS"
(43, 5, "HIGIENE PESSOAL"),
(44, 5, "PERFUMARIA"),
(45, 5, "COSMETICOS"),
(46, 5, "BIJUTERIA"),
(47, 5, "CABELELEIRO"),
(48, 5, "VESTUARIO"),
(49, 5, "CLUBES"),
(50, 5, "ACESSORIOS"),
(51, 5, "ACADEMIA"),
(52, 5, "PRESENTES"),
(53, 5, "OUTROS"),
-- EDUCACAO
(54, 6, "FACULDADE"),
(55, 6, "POS-GRADUACAO"),
(56, 6, "CURSOS DIVERSOS"),
(57, 6, "IDIOMAS"),
(58, 6, "MATERIAL ESCOLAR"),
(59, 6, "OUTROS"),
-- LAZER
(60, 7, "BARES E BOATES"),
(61, 7, "CINEMA E TEATRO"),
(62, 7, "GAMES"),
(63, 7, "ESPORTES"),
(64, 7, "LIVRARIA"),
(65, 7, "PASSAGENS"),
(66, 7, "HOSPEDAGEM"),
(67, 7, "PASSEIOS"),
(68, 7, "FUNDO PARA VIAGENS"),
(69, 7, "OUTROS"),
-- IMPOSTOS
(70, 8, "INSS"),
(71, 8, "IR"),
(72, 8, "SINDICATO"),
(73, 8, "GPS/MEI	"),
-- OUTROS (DESPESAS)
(74, 9, "TARIFAS BANCARIAS"),
(75, 9, "DOACOES E DIZIMOS"),
(76, 9, "SEGURO DE VIDA"),
(77, 9, "EXTRAS DIARIOS"),
-- INVESTIMENTOS
(78, 13, "BOLSA DE VALORES"),
(79, 13, "TITULOS PUBLICOS"),
(80, 13, "CDBS"),
(81, 13, "IMOVEIS"),
(82, 13, "LEILOES"),
-- OUTROS (RECEITAS)
(83, 18, "HERANCAS"),
(84, 18, "LOTERIAS");

DELETE FROM FORMA_PGTO;
INSERT INTO FORMA_PGTO(COD_FORMA_PGTO, DESCR_FORMA_PGTO)
VALUES
(1, "DINHEIRO"),
(2, "CARTAO DE CREDITO"),
(3, "CARTAO DE DEBITO"),
(4, "CHEQUE"),
(5, "TRANSFERENCIA"),
(6, "INTERNET BANKING");

DELETE FROM RECEITA;
INSERT INTO RECEITA(COD_REC,COD_US, DATA_REC, COD_CAT, COD_SUBCAT, VALOR,COD_CONTA, COD_FORMA_PGTO)
VALUES
(1, 2, '2019/04/01', 10, null, 3080.34, 1, 5),
(2, 2, '2019/04/15', 10, null, 2320.22, 1, 5),
(3, 5, '2019/04/01', 10, null, 1937.32, 3, 5);

DELETE FROM DESPESA;
INSERT INTO DESPESA(COD_DESP, COD_US, DATA_DESP, COD_CAT, COD_SUBCAT, VALOR,COD_CONTA, COD_FORMA_PGTO)
VALUES
-- GRUPO DOMÉSTICO I
-- Mês: MaRço
(1, 2, '2019/03/01', 2, 20, 13.59,1, 3), -- ALIMENTAÇÃO - RESTAURANTE
(2, 2, '2019/03/01', 1, 1, 1500.87,1, 5), -- HABITAÇÃO - ALUGUEL
(3, 2, '2019/03/01', 1, 6, 93.46,1, 6), -- HABITAÇÃO - IPTU
(4, 2, '2019/03/01', 1, 9, 139.87,1, 6), -- HABITAÇÃO - INTERNET
(5, 2, '2019/03/01', 1, 4, 42.71,1, 6), -- HABITAÇÃO - CONTA DE GAS
(6, 2, '2019/03/01', 1, 2, 85.93,1, 6), -- HABITAÇÃO - CONTA DE AGUA
(7, 2, '2019/03/01', 1, 3, 98.42,1, 6), -- HABITAÇÃO - CONTA DE ENERGIA
(8, 4, '2019/03/02', 2, 21, 32.85,1, 1), -- ALIMENTAÇÃO - LANCHES
(9, 2, '2019/03/03', 1, 3, 437.51,1, 3), -- ALIMENTAÇÃO - SUPERMERCADO
(10, 3, '2019/03/03', 4,32, 129.10,1, 3),-- TRANSPORTE - COMBUSTÍVEL
(11, 2, '2019/03/04', 2, 20, 13.59,1, 3),
(12, 2, '2019/03/05', 2, 20, 13.59,1, 3),
(13, 3, '2019/04/06', 7, 61, 56.00,1, 3),-- LAZER - CINEMA E TEATRO
(14, 2, '2019/03/06', 2, 20, 13.59,1, 3),
(15, 3, '2019/03/06', 7, 64, 32.00,1, 3), -- LAZER - LIVRARIA
(16, 2, '2019/03/07', 2, 20, 13.59,1, 3),
(17, 2, '2019/03/08', 2, 20, 13.59,1, 3),
(18, 2, '2019/03/11', 2, 20, 13.59,1, 3),
(19, 3, '2019/03/12', 4,32, 87.99,1, 3),-- TRANSPORTE - COMBUSTÍVEL
(20, 2, '2019/03/12', 2, 20, 13.59,1, 3),
(21, 2, '2019/03/13', 2, 20, 13.59,1, 3),
(22, 2, '2019/03/14', 2, 20, 13.59,1, 3),
(23, 2, '2019/03/15', 2, 20, 13.59,1, 3),
(24, 4, '2019/03/15', 6, 54, 1637.77,1, 6), -- EDUCAÇÃO - FACULDADE
(25, 2, '2019/03/15', 5, 51, 160.32,1, 6),-- CUIDADOS PESSOAIS - ACADEMIA
(26, 3, '2019/03/15', 5, 51, 160.32,1, 6),-- CUIDADOS PESSOAIS - ACADEMIA
(27, 4, '2019/03/16', 2, 21, 36.75,1, 1), -- ALIMENTAÇÃO - LANCHES
(28, 4, '2019/03/16', 7, 60, 45.00,1, 1), -- LAZER - BARES E BOATES
(29, 4, '2019/03/18', 6, 57, 208.45,1, 6),-- EDUCAÇÃO - IDIOMAS
(30, 2, '2019/03/18', 2, 20, 13.59,1, 3),
(31, 2, '2019/03/19', 2, 20, 13.59,1, 3),
(32, 2, '2019/03/20', 2, 20, 13.59,1, 3),
(33, 2, '2019/03/20', 3, 26, 32.55,1, 3),-- SAUDE - MEDICAMENTO
(34, 2, '2019/03/21', 2, 20, 13.59,1, 3),
(35, 2, '2019/03/22', 2, 20, 13.59,1, 3),
(36, 2, '2019/03/23', 4,32, 123.71,1, 3),-- TRANSPORTE - COMBUSTÍVEL
(37, 2, '2019/03/25', 2, 20, 13.59,1, 3),
(38, 2, '2019/03/26', 2, 20, 13.59,1, 3),
(39, 2, '2019/03/27', 2, 20, 13.59,1, 3),
(40, 2, '2019/03/27', 4,32, 62.48,1, 3),-- TRANSPORTE - COMBUSTÍVEL
(41, 2, '2019/03/27', 7, 61, 23.00,1, 3),-- LAZER - CINEMA E TEATRO
(42, 2, '2019/03/28', 2, 20, 13.59,1, 3),
(43, 2, '2019/03/29', 2, 20, 13.59,1, 3),

-- GRUPO DOMÉSTICO I
-- Mês: Abril
(44, 2, '2019/04/01', 2, 20, 13.59,1, 3), -- ALIMENTAÇÃO - RESTAURANTE
(45, 2, '2019/04/01', 1, 1, 1500.87,1, 5), -- HABITAÇÃO - ALUGUEL
(46, 2, '2019/04/01', 1, 9, 139.87,1, 6), -- HABITAÇÃO - INTERNET
(47, 2, '2019/04/01', 1, 4, 35.73,1, 6), -- HABITAÇÃO - CONTA DE GAS
(48, 2, '2019/04/01', 1, 2, 75.49,1, 6), -- HABITAÇÃO - CONTA DE AGUA
(49, 2, '2019/04/01', 1, 3, 102.84,1, 6), -- HABITAÇÃO - CONTA DE ENERGIA
(50, 3, '2019/04/01', 4,32, 123.99,1, 3),-- TRANSPORTE - COMBUSTÍVEL
(51, 2, '2019/04/02', 2, 20, 13.59,1, 3),
(52, 4, '2019/04/03', 2, 21, 49.75,1, 1), -- ALIMENTAÇÃO - LANCHES
(53, 2, '2019/04/03', 2, 20, 13.59,1, 3),
(54, 2, '2019/04/04', 2, 20, 13.59,1, 3),
(55, 2, '2019/04/05', 2, 20, 13.59,1, 3),
(56, 3, '2019/04/05', 7, 61, 56.00,1, 3),-- LAZER - CINEMA E TEATRO
(57, 2, '2019/04/05', 9, 77, 3.87,1, 3),-- OUTROS - EXTRAS DIARIOS
(58, 2, '2019/04/06', 1, 3, 476.87,1, 3), -- ALIMENTAÇÃO - SUPERMERCADO
(59, 2, '2019/04/06', 4, 32, 73.84,1, 3),-- TRANSPORTE - COMBUSTÍVEL
(60, 4, '2019/04/06', 7, 60, 45.00,1, 1), -- LAZER - BARES E BOATES
(61, 2, '2019/04/08', 2, 20, 13.59,1, 3),
(62, 2, '2019/04/09', 2, 20, 13.59,1, 3),
(63, 3, '2019/04/10', 7, 64, 74.64,1, 3), -- LAZER - LIVRARIA
(64, 2, '2019/04/10', 2, 20, 13.59,1, 3),
(65, 2, '2019/04/11', 2, 20, 13.59,1, 3),
(66, 3, '2019/04/11', 9, 77, 4.80,1, 3),-- OUTROS - EXTRAS DIARIOS
(67, 2, '2019/04/12', 2, 20, 13.59,1, 3),
(68, 4, '2019/04/15', 6, 54, 1637.77,1, 6), -- EDUCAÇÃO - FACULDADE
(69, 3, '2019/04/15', 4,32, 127.94,1, 3),-- TRANSPORTE - COMBUSTÍVEL
(70, 2, '2019/04/15', 2, 20, 13.59,1, 3),
(71, 2, '2019/04/15', 5, 51, 160.32,1, 6),-- CUIDADOS PESSOAIS - ACADEMIA
(72, 3, '2019/04/15', 5, 51, 160.32,1, 6),-- CUIDADOS PESSOAIS - ACADEMIA
(73, 2, '2019/04/16', 2, 20, 13.59,1, 3),
(74, 2, '2019/04/17', 2, 20, 13.59,1, 3),
(75, 4, '2019/04/18', 6, 57, 208.45,1, 6),-- EDUCAÇÃO - IDIOMAS
(76, 2, '2019/04/18', 2, 20, 13.59,1, 3),
(77, 4, '2019/04/19', 2, 21, 32.85,1, 1), -- ALIMENTAÇÃO - LANCHES
(78, 2, '2019/04/19', 2, 20, 13.59,1, 3),
(79, 2, '2019/04/20', 4,32, 96.37,1, 3),-- TRANSPORTE - COMBUSTÍVEL
(80, 4, '2019/04/20', 7, 60, 45.00,1, 1), -- LAZER - BARES E BOATES
(81, 2, '2019/04/22', 2, 20, 13.59,1, 3),
(82, 2, '2019/04/22', 9, 77, 5.00,1, 3),-- OUTROS - EXTRAS DIARIOS
(83, 2, '2019/04/22', 9, 77, 3.87,1, 3),-- OUTROS - EXTRAS DIARIOS
(84, 2, '2019/04/23', 2, 20, 13.59,1, 3),
(85, 2, '2019/04/24', 2, 20, 13.59,1, 3),
(86, 2, '2019/04/24', 7, 61, 38.00,1, 3),-- LAZER - CINEMA E TEATRO
(87, 3, '2019/04/05', 3, 26, 67.78,1, 3),-- SAUDE - MEDICAMENTO
(88, 2, '2019/04/25', 2, 20, 13.59,1, 3),
(89, 2, '2019/04/26', 2, 20, 13.59,1, 3),
(90, 2, '2019/04/29', 2, 20, 13.59,1, 3),
(91, 4, '2019/04/29', 7, 61, 56.00,1, 3),-- LAZER - CINEMA E TEATRO
(92, 4, '2019/04/29', 2, 21, 47.98,1, 1), -- ALIMENTAÇÃO - LANCHES
(93, 2, '2019/04/30', 2, 20, 13.59,1, 3),

-- GRUPO DOMÉSTICO II
-- Mês: MaRço
(94, 6, '2019/03/05', 1, 1, 950,1, 5), -- HABITAÇÃO - ALUGUEL
(95, 6, '2019/03/05', 1, 3, 450.51,1, 3), -- ALIMENTAÇÃO - SUPERMERCADO
(96, 6, '2019/03/01', 1, 9, 139.87,1, 1), -- HABITAÇÃO - INTERNET
(97, 6, '2019/03/01', 1, 4, 25.74,1, 1), -- HABITAÇÃO - CONTA DE GAS
(98, 6, '2019/03/01', 1, 2, 83.96,1, 1), -- HABITAÇÃO - CONTA DE AGUA
(99, 6, '2019/03/01', 1, 3, 150.77,1, 1), -- HABITAÇÃO - CONTA DE ENERGIA

-- GRUPO DOMÉSTICO II
-- Mês: Abril
(100, 6, '2019/04/05', 1, 1, 950,1, 5), -- HABITAÇÃO - ALUGUEL
(101, 6, '2019/04/05', 1, 3, 450.51,1, 3), -- ALIMENTAÇÃO - SUPERMERCADO
(102, 6, '2019/04/01', 1, 9, 139.87,1, 1), -- HABITAÇÃO - INTERNET
(103, 6, '2019/04/01', 1, 4, 35.73,1, 1), -- HABITAÇÃO - CONTA DE GAS
(104, 6, '2019/04/01', 1, 2, 99.63,1, 1), -- HABITAÇÃO - CONTA DE AGUA
(105, 6, '2019/04/01', 1, 3, 102.84,1, 1); -- HABITAÇÃO - CONTA DE ENERGIA


