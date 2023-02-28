create database hotel_2c1_10;

use hotel_2c1_10;

create table cliente(
cod_cliente int primary key not null auto_increment,
nome varchar(80) not null,
cpf char(14) not null,
tipo_convenio varchar(40) not null
);

create table servico_copa(
cod_servico_copa int primary key not null auto_increment,
registro varchar(100) not null,
tipo_servico varchar(40) not null
);

create table servicos(
cod int primary key not null auto_increment,
itens varchar(50) not null,
tipo varchar(50) not null,
observacao varchar(100) not null,
foreign key (cod_servico_copa_fk) references servico_copa(cod_servico_copa)
);


create table reserva(
cod_reserva int primary key not null auto_increment,
dataInicio date not null,
dataFim date not null,
quarto int not null,
valor double(9,2),
foreign key (cod_cliente_fk) references cliente(cod_cliente)
); 

create table hospede(
cod_hospede int primary key not null auto_increment,
nome varchar(80) not null,
foreign key (cod_reserva_fk) references reserva(cod_reserva),
telefone char (15), 
email varchar(60)
);

create table quarto(
cod_quarto int primary key not null auto_increment,
numero int not null,
andar int not null,
classificacao varchar(40),
foreign key (cod_hospede_fk) references hospede(cod_hospede)
);

/*Exercicio 3 */

select * from cliente;
describe cliente;
insert into cliente(nome,cpf,tipo_convenio) values
('João','999.999.999-99','Individual'),
('Pedro','999.999.999-92','Individual'),
('Paula','999.999.999-91','Individual');

select * from servico_copa;
insert into servico_copa(registro,tipo_servico) values
('Hotel Valle Sul Reserva Noite','Frigobar'),
('Hotel Valle Sul Reserva Manhã','Limpeza diária'),
('Hotel Valle Sul Reserva 2 dias','Café da manhã)');

select * from servicos;
insert into servicos(itens,tipo,observacao,cod_servico_copa_fk) values
('Variedade no frigobar','Frigobar','Mini geladeira com varios itens sem ter que sair do quarto',01),
('Banheiro full resource','Suíte','Quarto de hotel, geralmente de grandes dimensões, dotado de casa de banho privativa e de uma ou mais salas',02),
('Quarto climatizado','Quarto','Um quarto  em um local com a temperatura agradável e ar condicionado',03);

select * from reserva;
insert into reserva(dataInicio,dataFim,quarto,valor,cod_cliente_fk) values
('2022/07/22','2022/07/26',20,99.99,01),
('2022/08/22','2022/08/28',30,99.99,02),
('2022/07/10','2022/07/14',20,99.99,03);

select * from hospede;
insert into hospede(nome,cod_reserva_fk,telefone,email) values
('Marcela',01,'55-98-234-5678','marcela@gmail.com'),
('Joao',02,'55-98-234-5678','marcela@gmail.com'),
('Sophia',03,'55-98-234-6678','sophia@gmail.com');

select * from quarto;
insert into quarto(numero,andar,classificacao,cod_hospede_fk) values
(102,2,'Quarto grande',01),
(103,3,'Quarto pequeno',02),
(104,1,'Quarto branco',03);








