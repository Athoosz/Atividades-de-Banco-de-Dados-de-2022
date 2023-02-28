-- a) A sua escolha, elabore um banco com três tabelas. 

create database loja_de_roupa;
use loja_de_roupa;

create table departamento(
cod_departamento int primary key not null auto_increment,
endereco varchar(100) not null,
nome varchar(30) not null
);

create table produto(
id_produto int primary key not null auto_increment,
tipo varchar(10) not null,
cor varchar(10) not null,
estoque int not null
);

create table cliente(
cod int primary key not null auto_increment,
sexo varchar(9) not null,
nome varchar(45) not null
);

-- b) Insira  três registros condizentes com as tabelas criadas.

select * from departamento;
insert into departamento values
(default,'rua joaquim','NewgateStore1'),
(default,'rua vasconcelos','NewgateStore2'),
(default,'rua pedrinho','NewgateStore3');

select * from produto;
insert into produto values
(default,'calça','azul',10),
(default,'camisa','amarelo',50),
(default,'blusa','azul',40);

select * from cliente;
insert into cliente values
(default,'masculino','joao'),
(default,'masculino','pedro'),
(default,'feminino','ana');

-- c) Exclua um registro de cada tabela a sua escolha.

delete from departamento where nome = 'NewgateStore3';
delete from produto where estoque = 40;
delete from cliente where nome = 'ana';

-- d) Atualize um registro de cada tabela a sua escolha.

update departamento set endereco = 'rua jooj' where cod_departamento = 1;
update produto set estoque = 1 where id_produto  = 1;
update produto set nome = 'caio' where cod  = 1;














