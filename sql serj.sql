create database marvel;
use marvel;

create table categoria(
catcod int primary key not null auto_increment,
catdesc varchar(50) not null);


create table carro(
carcod int primary key not null auto_increment,
carmarca varchar(35) not null, 
carvalor double not null,
carmodelo varchar(50) not null,
carcatcod int not null,
foreign key (carcatcod) references categoria (catcod)
);

create table cliente(
clicod int not null primary key auto_increment,
clinome varchar(88) not null,
clicnh varchar(11) not null,
clirenda double not null
);

create table aluguel(
alucod int not null primary key auto_increment,
qtddia int not null,
aluclidcod int not null,
alucarcod int not null,
foreign key (aluclicod) references client (clicod),
foreign key (alucarcod) references carro (carcod)
);

insert into categoria (catdesc) values 
               ('Particular'),
                  ('Esportivo'),
                    ('Luxo');


select * from cliente;
select * from carro;
select * from categoria;
select * from aluguel;

