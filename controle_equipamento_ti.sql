create database controle_equipamento_ti;

use controle_equipamento_ti;

create table chefe(
cod int primary key not null auto_increment,
sexo varchar(9) not null,
nome varchar(45) not null,
idade int not null
);

create table departamento(
cnpj char(18) primary key not null,
endereco varchar(45) not null,
nome varchar(45) not null,
cod_fk char(14) not null,
foreign key (cod_fk) references chefe(cod)
);

create table equipamentos(
idEquipamento int primary key not null auto_increment,
tipo varchar(45) not null,
nome varchar(45) not null,
cnpj_fk char(18) not null,
foreign key (cnpj_fk) references departamento(cnpj)
);

create table manutencao(
cod_manutencao int not null primary key auto_increment,
hora time not null,
dia date not null,
id_equipamento_fk int not null,
foreign key (id_equipamento_fk) references equipamento(id_equipamento)
);

select * from chefe;
describe chefe;
insert into chefe(cod,sexo,nome,idade) values
(1,'masculino','joao',30),
(2,'feminino','ana',20),
(3,'masculino','leonardo',33),
(4,'feminino','julia',29),
(5,'masculino','joao',35);

select * from departamento;
describe departamento;
insert into departamento(cnpj,endereco,nome,cod_fk) values
('14.278.631/0001-81','Rua jooj','bank',1),
('14.278.631/0001-82','Rua jooj','bank',2),
('14.278.631/0001-83','Rua jooj','bank',3),
('14.278.631/0001-84','Rua jooj','bank',4),
('14.278.631/0001-85','Rua jooj','bank',5);

select * from equipamentos;
describe equipamentos;
insert into equipamentos(tipo,nome,cnpj_fk) values
('placa de video','gtx 750ti','14.278.631/0001-81'),
('placa de video','gtx 750ti','14.278.631/0001-82'),
('placa de video','gtx 750ti','14.278.631/0001-83'),
('placa de video','gtx 750ti','14.278.631/0001-84'),
('placa de video','gtx 750ti','14.278.631/0001-85');

select * from manutencao;
describe manutencao;
insert into manutencao(hora,dia,id_equipamento_fk) values
('10:50:00','2022-06-05',1),
('10:50:00','2022-06-06',2),
('10:50:00','2022-06-07',3),
('10:50:00','2022-06-08',4),
('10:50:00','2022-06-09',5);







