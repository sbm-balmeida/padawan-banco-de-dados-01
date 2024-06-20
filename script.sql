#Aula-02
CREATE DATABASE SUCOS; #comando para cria banco

DROP DATABASE SUCOS; #comando para apagar banco

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

#Desafio Aula-03
CREATE TABLE TABELA_DE_VENDEDORES (
NOME VARCHAR(100), 
PERCENTUAL_COMISSAO FLOAT);

#Aula-04
USE Sucos;

INSERT INTO tbproduto ( #comando para inserir dados na tabela
PRODUTO,
NOME,
EMBALAGEM,
TAMANHO,
SABOR,
PRECO_LISTA) VALUES (
'1040107', 
'Light - 350 ml - Melancia',
'Lata', 
'350 ml', 
'Melancia', 
4.56);

SELECT * FROM tbproduto; #comando para selecionar tudo da tabela tbproduto