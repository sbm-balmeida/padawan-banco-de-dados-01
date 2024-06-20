#Aula-02
CREATE DATABASE SUCOS; #comando para cria banco

DROP DATABASE SUCOS; #comando para apagar banco

-------------------------------------------------------------------

#Aula-03
CREATE TABLE tbCliente #comando para criar tabela
(CPF VARCHAR(11),
NOME VARCHAR(100),
ENDERECO1 VARCHAR(150),
ENDERECO2 VARCHAR(150),
BAIRRO VARCHAR(50),
CIDADE VARCHAR(50),
ESTADO VARCHAR(50),
CEP VARCHAR(8),
IDADE SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA BIT(1));

USE Sucos; #comando para selecionar um banco

DROP TABLE tbcliente3; #comando para apagar uma tabela

-------------------------------------------------------------------

#Desafio Aula-03
CREATE TABLE TABELA_DE_VENDEDORES (
NOME VARCHAR(100), 
PERCENTUAL_COMISSAO FLOAT);

-------------------------------------------------------------------

#Aula-04
USE Sucos;

INSERT INTO tbproduto ( #comando para inserir dados na tabela
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES (
'1037797', 'Clean - 2 Litros - Laranja','PET', '2 Litros', 'Laranja', 16.0);

INSERT INTO tbproduto ( 
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES (
'1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31);

INSERT INTO tbproduto ( 
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES (
'1004327', 'Videira do Campo - 1,5 Litros - Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES(
'544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES (
'1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

SELECT * FROM tbproduto; #comando para selecionar e exibir tudo da tabela tbproduto

UPDATE tbproduto SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46 WHERE PRODUTO = '544931'; #comando para atualizar os valores da tabela
UPDATE tbproduto SET EMBALAGEM = 'Garrafa' WHERE PRODUTO = '1078680';

DELETE FROM tbproduto WHERE PRODUTO = '1078680'; #comando para apagar alguma informação dentro da tabela

ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO); 
#comando ALTER TABLE para alterar uma propriedade de uma tabela que já existe ex:tbproduto
#comandao ADD PRIMARY KEY para adicionar uma chave primaria em PRODUTO

ALTER TABLE tbcliente ADD PRIMARY KEY (CPF);

ALTER TABLE tbcliente ADD COLUMN (DATA_NASCIMENTO DATE); #comando ADD COLUMN irá adicionar uma coluna na tabela tbcliente

INSERT INTO tbcliente (
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, IDADE,
SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO) VALUES (
'00388934505', 'João da Silva', 'Rua projetada A número 10', '', 'Vila Roman', 
'CARATINGA', 'AM', '2222222', 30, 'M', 10000.00, 2000, 0, '1989-10-05');

-------------------------------------------------------------------

#Desafio Aula-04
INSERT INTO tabela_de_vendedores(
MATRICULA, NOME, PERCENTUAL_COMISSAO) VALUES(
'00233', 'João Geraldo da Fonseca', 0.10);

INSERT INTO tabela_de_vendedores(
MATRICULA, NOME, PERCENTUAL_COMISSAO) VALUES (
'00235', 'Márcio Almeida Silva', 0.08);

INSERT INTO tabela_de_vendedores(
MATRICULA, NOME, PERCENTUAL_COMISSAO) VALUES (
'00236', 'Cláudia Morais', 0.08);

UPDATE tabela_de_vendedores SET PERCENTUAL_COMISSAO = 0.11 WHERE MATRICULA = '00236';
UPDATE tabela_de_vendedores SET NOME = 'José Geraldo da Fonseca Junior' WHERE MATRICULA = '00233';

DELETE FROM tabela_de_vendedores WHERE MATRICULA = '00233';