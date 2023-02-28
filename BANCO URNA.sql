-- a) Crie o modelo físico do banco proposto na imagem em anexo.

create database BANCO_URNA;

use BANCO_URNA;

create table partido(
id_partido int primary key not null auto_increment,
nome varchar(80) not null,
sigla varchar(15) not null
);

create table cargo(
id_cargo int primary key auto_increment not null,
nome varchar(80) not null,
descricao varchar(120) not null
);

create table candidato(
id_candidato int primary key not null auto_increment,
nome varchar(80) not null,
endereco varchar(120) not null,
id_partido_fk int not null,
id_cargo_fk int not null,
foreign key (id_partido_fk) references partido(id_partido),
foreign key (id_cargo_fk) references cargo(id_cargo)
);

create table eleitor(
id_eleitor int not null primary key auto_increment,
nome varchar(80) not null,
endereco varchar(120) not null
);

create table voto(
id_voto int not null primary key auto_increment,
data_voto date not null,
quantidade int not null,
id_cargo_fk int not null,
id_eleitor_fk int not null,
foreign key (id_eleitor_fk) references eleitor(id_eleitor),
foreign key (id_cargo_fk) references cargo(id_cargo)
);

-- b) Faça a inserção de 03 registros por tabela

select * from partido;
insert into partido values
(default,'cornorei','CRR'),
(default,'cornobaixo','CBB'),
(default,'PedroBola','PBG');

select * from cargo;
insert into cargo values
(default,'luffy','Kaizoku'),
(default,'coby','Almirante'),
(default,'Shanks','pai ausente');

select * from candidato;
insert into candidato values
(default,'PedroBola','Casas das bolas',1,1),
(default,'Luffy','Laugh tale',2,2),
(default,'Boca de 09','Casa dos pedrinhos',3,3);

select * from eleitor;
insert into eleitor values
(default,'Jooj Mugiwara','Rua jooj'),
(default,'Aninha123','Rua dos joojes'),
(default,'Barba Marrom','Rua Verde');

select * from voto;
insert into voto values
(default,'2022-01-01',1000,1,1),
(default,'2022-01-02',2000,3,3),
(default,'2022-01-03',3000,3,3);

-- c) Atualize um dado a sua escolha do primeiro registro de cada tabela, .

update partido set nome = 'JOOOJ' where id_partido  = 1;
update cargo set nome = 'Rei' where id_cargo  = 1;
update candidato set nome = 'kkkkkkkkkkkkkkk' where id_candidato  = 1;
update eleitor set nome = 'MANOO' where id_eleitor  = 1;
update voto set quantidade = 2 where id_voto  = 1;

-- d) Faça uma consulta em que mostre apenas a coluna onde você fez a atualização.

select nome from id_partido;
select nome from id_cargo;
select nome from id_candidato;
select nome from id_eleitor;
select voto from id_voto;

-- e) Delete o segundo registro de cada tabela.

delete from partido where nome = 'JOOOJ';
delete from cargo where nome = 'Rei';
delete from dandidato where nome = 'kkkkkkkkkkkkkkk';
delete from eleitor where nome = 'MANOO';
delete from voto where quantidade = 2;
