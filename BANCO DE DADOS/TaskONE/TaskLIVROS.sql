create database atividades;

use atividades;

create table livros(
	id integer auto_increment primary key,
    titulo varchar(50),
    autor varchar(100),
    editoira varchar(50),
    ano_publicacao integer,
    preco float
);

create table cliente (
	id integer auto_increment primary key,
    nome varchar(100),
    email varchar(100),
    endereco varchar(100)
);

create table pedidos(
	id integer auto_increment primary key,
    id_cliente integer,
    data_pedido date,
    total float,
    foreign key (id_cliente) references cliente(id)
);

