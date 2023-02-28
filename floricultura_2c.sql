create database floricultura_2c; 

use floricultura_2c;

-- criando tabela cliente
create table cliente(
 rg char (13) not null primary key,
 nome varchar(80) not null,
 telefone char(15) not null,
 endereco_comp varchar(120)
 );
-- Criando tabela produto
create table produto(
 cod_produto int not null primary key auto_increment,
 nome varchar(80) not null,
 tipo varchar(8) not null,
 preco decimal(9,2) not null,
 qtd_estoque int not null
 );
-- Criando tabela com chave estrangeira
create table item_pedido(
 cod_itempedido int not null primary key auto_increment,
 quantidade int not null,
 valor_total decimal(9,2),
cod_produto_fk int not null,
foreign key (cod_produto_fk) references produto(cod_produto)
);
-- Criando tabela pedido com duas chaves estrangeiras
create table pedido
 cod_pedido int not null primary key auto_increment,
 dt_compra date,
 total_pedido decimal(9,2),
 cod_itempedido_fk int not null,
 foreign key (cod_itempedido_fk) references item_pedido(cod_itempedido)
 );

 
 
 

