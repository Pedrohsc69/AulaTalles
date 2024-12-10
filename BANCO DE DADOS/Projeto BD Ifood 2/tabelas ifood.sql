create database Ifood;

use ifood;

					/* TABELA RESTAURANTE */
create table restaurante(
	id integer primary key auto_increment,
    nome varchar(100) NOT NULL,
	id_endereco integer,
    telefone varchar(16) NOT NULL,
    id_categoria integer,
    id_horario_func integer,
    is_retirada boolean,
    
    foreign key (id_endereco) references endereco(id),
    foreign key (id_categoria) references categoria(id),
    foreign key (id_horario_func) references horario_funcionamento(id)
);

insert into restaurante (nome, id_endereco, telefone, id_categoria, id_horario_func, is_retirada) values ( /* 1 */
	'Bom Papo',
    '1',
    '87 99999-1989',
    '1',
    '2',
    '1'
);
insert into restaurante (nome, id_endereco, telefone, id_categoria, id_horario_func, is_retirada) values ( /* 2 */
	'Churrasco dois irmãos',
    '2',
    '87 99999-9999',
    '4',
    '3',
    '1'
);
insert into restaurante (nome, id_endereco, telefone, id_categoria, id_horario_func, is_retirada) values ( /* 3 */
	'Milharada',
    '3',
    '87 8889-1582',
    '5',
    '4',
    '1'
);
insert into restaurante (nome, id_endereco, telefone, id_categoria, id_horario_func, is_retirada) values ( /* 4 */
	'Dands lanches',
    '4',
    '87 94524-6523',
    '6',
    '5',
    '0'
);
insert into restaurante (nome, id_endereco, telefone, id_categoria, id_horario_func, is_retirada) values ( /* 5 */
	'Cantana',
    '5',
    '87 95412-5405',
    '7',
    '6',
    '0'
);
insert into restaurante (nome, id_endereco, telefone, id_categoria, id_horario_func, is_retirada) values ( /* 6 */
	'Lanchonete Frango assado',
    '6',
    '87 96584-9315',
    '8',
    '7',
    '1'
);
insert into restaurante (nome, id_endereco, telefone, id_categoria, id_horario_func, is_retirada) values ( /* 7 */
	'La Pizza',
    '7',
    '87 98769-1482',
    '9',
    '8',
    '1'
);
insert into restaurante (nome, id_endereco, telefone, id_categoria, id_horario_func, is_retirada) values ( /* 8 */
	'Pizza e Lanchs',
    '8',
    '87 93698-5646',
    '10',
    '9',
    '1'
);
insert into restaurante (nome, id_endereco, telefone, id_categoria, id_horario_func, is_retirada) values ( /* 9 */
	'Japa Food',
    '9',
    '87 98676-1205',
    '11',
    '10',
    '1'
);
insert into restaurante (nome, id_endereco, telefone, id_categoria, id_horario_func, is_retirada) values ( /* 10 */
	'Yoshi',
    '10',
    '87 98797-5648',
    '12',
    '11',
    '1'
);

select * from restaurante;


					/* TABELA CATEGORIA */
create table categoria(
	id integer primary key auto_increment,
    tipo varchar(80) NOT NULL,
    nome varchar(100) NOT NULL,
    descricao varchar(200)
);

insert into categoria (tipo, nome, descricao) values ( /* 1 */
	'Comida nordestina',
    'Comida nordestina',
    'Comidas típicas nordestinas'
);
insert into categoria (tipo, nome, descricao) values ( /* 2 */
	'Churrasco',
    'Churrascos',
    'Todo tipo de churrascos'
);
insert into categoria (tipo, nome, descricao) values ( /* 3 */
	'Comidas de milho',
    'Milhoandia',
    'Todo tipo de comida feitas com milho'
);
insert into categoria (tipo, nome, descricao) values ( /* 4 */
	'Lanchonete',
    'Tend tudo',
    'Lanchonete com multiplas escolhas de lanche'
);
insert into categoria (tipo, nome, descricao) values ( /* 5 */
	'Jantar',
    'Jantar',
    'Jantar com a morena'
);
insert into categoria (tipo, nome, descricao) values ( /* 6 */
	'Lanchonete',
    'Frango assado',
    'Diversidade em lanches'
);
insert into categoria (tipo, nome, descricao) values ( /* 7 */
	'Pizzaria',
    'La Pizza',
    'Pizzas quadradas'
);
insert into categoria (tipo, nome, descricao) values ( /* 8 */
	'Pizzaria e Lanchonete',
    'Vem com Nois',
    'Pizzas e Lanches'
);
insert into categoria (tipo, nome, descricao) values ( /* 9 */
	'Japonês',
    '',
    'Comidas japonesas'
);
insert into categoria (tipo, nome, descricao) values ( /* 10 */
	'Chinês e Japonês',
    'China e Japão',
    'Comidas Japonesas e chinesas'
);

select * from categoria;


					/* TABELA ENDERECO */
create table endereco(
	id integer primary key auto_increment,
    rua varchar(100) NOT NULL,
    bairro varchar(80) NOT NULL,
    cidade varchar(100) NOT NULL,
    estado varchar(60),
	numero_casa integer NOT NULL,
    complemento varchar(80),
    ponto_referencia varchar(100),
    cep varchar(8) NOT NULL
);
alter table endereco modify cep varchar(9);

insert into endereco (rua, bairro, cidade, numero_casa, cep) values ( /* 1 */
	'Ayrton Senna',
    'Centro',
    'Buenos Aires',
    '65',
    '56520-000'
);
insert into endereco (rua, bairro, cidade, numero_casa, cep) values ( /* 2 */
	'Graciliano',
    'Centro',
    'Arcoverde',
    '26',
    '56501-010'
);
insert into endereco (rua, bairro, cidade, numero_casa, cep) values ( /* 3 */
	'Rua um',
    'Coliseu',
    'Arcoverde',
    '29',
    '56501-010'
);
insert into endereco (rua, bairro, cidade, numero_casa, cep) values ( /* 4 */
	'Rua Oscar Nascimento Sobral',
    'Centro',
    'Petrolina',
    '30',
    '56501-200'
);
insert into endereco (rua, bairro, cidade, numero_casa, cep) values ( /* 5 */
	'Rua Oscar Nascimento Sobral',
    'Centro',
    'Petrolina',
    '49',
    '56501-200'
);
insert into endereco (rua, bairro, cidade, numero_casa, cep) values ( /* 6 */
	'Rua Nascimento',
    'Centro',
    'Petrolina',
    '55',
    '56354-999'
);
insert into endereco (rua, bairro, cidade, numero_casa, cep) values ( /* 7 */
	'Rua Ornaldo Silva',
    'Centro',
    'Petrolina',
    '137',
    '56354-999'
);
insert into endereco (rua, bairro, cidade, estado, numero_casa, complemento, ponto_referencia, cep) values ( /* 8 */
	'Rua Jonas Camelo',
    'Centro',
    'Petrolina',
    'Pernambuco',
    '137',
    'Condominio',
    'Conominio serra branca',
    '56354-999'
);
insert into endereco (rua, bairro, cidade, estado, numero_casa, complemento, ponto_referencia, cep) values ( /* 9 */
	'Rua quatro',
    'Centro',
    'Petrolina',
    'Pernambuco',
    '12',
    'Condominio',
    'Conominio serra branca',
    '56354-999'
);
insert into endereco (rua, bairro, cidade, estado, numero_casa, complemento, ponto_referencia, cep) values ( /* 10 */
	'Rua dez',
    'Centro',
    'Petrolina',
    'Pernambuco',
    '18',
    'Condominio',
    'Conominio serra branca',
    '56354-999'
);
insert into endereco (rua, bairro, cidade, estado, numero_casa, complemento, ponto_referencia, cep) values ( /* 11 */
	'Rua Gabriel Barbosa',
    'Dom Avelar',
    'Petrolina',
    'Pernambuco',
    '29',
    'Casa',
    'Próximo ao posto Dom Avelar',
    '56354-999'
);
insert into endereco (rua, bairro, cidade, estado, numero_casa, complemento, ponto_referencia, cep) values ( /* 12 */
	'Rua Emanuel de Freitas',
    'João de Deus',
    'Petrolina',
    'Pernambuco',
    '33',
    'Casa',
    'Próximo ao mercadinho Bom Jesus',
    '56354-999'
);

select * from endereco;


					/* TABELA HORARIO FUNCIONAMENTO */
create table horario_funcionamento(
	id integer primary key auto_increment,
    dia_semana ENUM('Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado') NOT NULL,
    hora_abertura time NOT NULL,
    hora_fechamento time NOT NULL
);
alter table horario_funcionamento modify dia_semana varchar(100);

insert into horario_funcionamento(dia_semana, hora_abertura, hora_fechamento) values ( /* 1 */
	'Domingo a domingo',
    '18:00:00',
    '00:00:00'
);
insert into horario_funcionamento(dia_semana, hora_abertura, hora_fechamento) values ( /* 2 */
	'Segunda a Sexta',
    '17:00:00',
    '22:30:00'
);
insert into horario_funcionamento(dia_semana, hora_abertura, hora_fechamento) values ( /* 3 */
	'Segunda a Sabado',
    '16:00:00',
    '23:00:00'
);
insert into horario_funcionamento(dia_semana, hora_abertura, hora_fechamento) values ( /* 4 */
	'Domingo a domingo',
    '15:00:00',
    '00:00:00'
);
insert into horario_funcionamento(dia_semana, hora_abertura, hora_fechamento) values ( /* 5 */
	'Domingo e sábado',
    '15:00:00',
    '00:00:00'
);
insert into horario_funcionamento(dia_semana, hora_abertura, hora_fechamento) values ( /* 6 */
	'Domingo a domingo',
    '08:00:00',
    '09:00:00'
);
insert into horario_funcionamento(dia_semana, hora_abertura, hora_fechamento) values ( /* 7 */
	'Segunda a sexta',
    '09:00:00',
    '17:00:00'
);
insert into horario_funcionamento(dia_semana, hora_abertura, hora_fechamento) values ( /* 8 */
	'Terça a domingo',
    '16:00:00',
    '00:00:00'
);
insert into horario_funcionamento(dia_semana, hora_abertura, hora_fechamento) values ( /* 9 */
	'Terça a domingo',
    '18:00:00',
    '00:00:00'
);
insert into horario_funcionamento(dia_semana, hora_abertura, hora_fechamento) values ( /* 10 */
	'Segunda a sexta',
    '08:00:00',
    '17:00:00'
);

select * from horario_funcionamento;


					/* TABELA FORMA DE PAGAMENTO */
create table forma_pagamento(
	id integer primary key auto_increment,
    tipo_pagamento ENUM('Pix', 'Cartão Debito', 'Cartão Crédito', 'Dinheiro')
);
alter table forma_pagamento
modify tipo_pagamento ENUM('Pix', 'Cartão Debito', 'Cartão Crédito', 'Dinheiro') NOT NULL;

insert into forma_pagamento (tipo_pagamento) values( /* 1 */
	'Pix'
);
insert into forma_pagamento (tipo_pagamento) values( /* 2 */
	'Cartão Debito'
);
insert into forma_pagamento (tipo_pagamento) values( /* 3 */
	'Cartão Crédito'
);
insert into forma_pagamento (tipo_pagamento) values( /* 4 */
	'Dinheiro'
);

select * from forma_pagamento;


					/* TABELA HISTORICO PAGAMENTO */
create table histo_pagamento(
	id integer primary key auto_increment,
    data_paga date NOT NULL,
    id_forma_paga integer,
    valor decimal(10, 2) NOT NULL,
    
    foreign key (id_forma_paga) references forma_pagamento(id)
);


					/* TABELA HISTORICO ENTREGA */
create table histo_entrega(
	id integer primary key auto_increment,
    id_status_entrega integer,
    id_pedido integer,
    data_hora datetime NOT NULL,
    
    foreign key (id_status_entrega) references status_entrega(id),
    foreign key (id_pedido) references pedido(id)
);


					/* TABELA STATUS ENTREGA */
create table status_entrega(
	id integer primary key auto_increment,
    nome ENUM('Pendente', 'Acaminho', 'Entregue') NOT NULL
);

insert into status_entrega (nome) values ( /* 1 */
	'Entregue'
);
insert into status_entrega (nome) values ( /* 2 */
	'Pendente'
);
insert into status_entrega (nome) values ( /* 3 */
	'Acaminho'
);

select * from status_entrega;


					/* TABELA PRODUTO */
create table produto(
	id integer primary key auto_increment,
    nome varchar(100) NOT NULL,
    descricao varchar(200) NOT NULL,
    preco decimal(10, 2) NOT NULL,
    id_categoria integer,
    id_restaurante integer,
    
    foreign key (id_categoria) references categoria(id),
    foreign key (id_restaurante) references restaurante(id)
);

insert into produto (nome, descricao, preco, id_categoria, id_restaurante) values( /* 1 */
	'Cuscuz recheado',
    'Cuscuz recheado com charque e quaijo coalho',
    '9.99',
    '1',
    '16'
); 
insert into produto (nome, descricao, preco, id_categoria, id_restaurante) values( /* 2 */
	'Almoço completo',
    'Arroz, Feijão, Macarrão, Salada, 5 tipos de carnes, Farofa, Molhos',
    '29.99',
    '4',
    '17'
); 
insert into produto (nome, descricao, preco, id_categoria, id_restaurante) values( /* 3 */
	'Bolo de milho',
    'Bolo de milho com café',
    '12.00',
    '5',
    '18'
); 
insert into produto (nome, descricao, preco, id_categoria, id_restaurante) values( /* 4 */
	'Hamburguer Artesanal',
    'Hamburguer Artesanal 100g, Alface, Tomate, Cebola, Cheedar',
    '9.99',
    '6',
    '25'
); 
insert into produto (nome, descricao, preco, id_categoria, id_restaurante) values( /* 5 */
	'Arroz com Polvo',
    'Arroz escorrido com polvo frito ao ahlo',
    '49.99',
    '7',
    '19'
); 
insert into produto (nome, descricao, preco, id_categoria, id_restaurante) values( /* 6 */
	'Cachorro quente na chapa',
    'Salsicha grelhada, Queijo mussarela, Presunto, Milho, Maionese da casa',
    '4.50',
    '8',
    '20'
); 
insert into produto (nome, descricao, preco, id_categoria, id_restaurante) values( /* 7 */
	'Pizza de Calabresa',
    'Calabresa, Cebola e Mussarela',
    '59.99',
    '9',
    '21'
); 
insert into produto (nome, descricao, preco, id_categoria, id_restaurante) values( /* 8 */
	'Pizza de Frango + Coxinha',
    'Frango, Mussarela, Tomate, Bacon e Coxinha de frango',
    '54.99',
    '10',
    '22'
); 
insert into produto (nome, descricao, preco, id_categoria, id_restaurante) values( /* 9 */
	'Risoto Misto',
    'Arroz, Carne de boi, Camarão e Carne de frango',
    '9.99',
    '11',
    '23'
); 
insert into produto (nome, descricao, preco, id_categoria, id_restaurante) values( /* 10 */
	'Uramaki Salmão',
    'Uramaki Salmão 12 unidades',
    '19.99',
    '12',
    '24'
); 

select * from produto;


					/* TABELA PEDIDO */
create table pedido(
	id integer primary key auto_increment,
    data_pedido date NOT NULL,
    id_restaurante integer,
    valor decimal(10, 2) NOT NULL,
    taxa_entrega decimal(10, 2),
    id_promo integer,
    id_status_entrega integer,
    id_forma_paga integer,
    obseracoes varchar(200),
    troco decimal(10, 2),
    id_endereco integer,
    
    foreign key (id_restaurante) references restaurante(id),
    foreign key (id_promo) references promocao(id),
    foreign key (id_status_entrega) references status_entrega(id),
    foreign key (id_forma_paga) references forma_pagamento(id),
    foreign key (id_endereco) references endereco(id)
);
							/* PEDIDOS JANEIRO */
insert into pedido ( data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, id_forma_paga, id_endereco) 
 values ( /* 1 */
    '2024-01-12', /* data */
    '16', /* restaurante */
    '8.00', /* valor */
    '3.00', /* entrega */
    '1', /* promo */
    '1', /* status */
    '3', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, troco, id_forma_paga, id_endereco) 
 values ( /* 2 */
	'2024-01-15',/* data */
    '17', /* restaurante */
    '26.00', /* valor */
    '4.00', /* entrega */
    '2', /* promo */
    '3', /* status */
    '0.00', /*troco*/
    '4', /* pagamento */
    '2' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 3 */
	'2024-01-10',/* data */
    '21', /* restaurante */
    '34.00', /* valor */
    '4.00', /* entrega */
    '7', /* promo */
    '1', /* status */
    'Sem cebola', /* obseracao*/
    '0.00', /*troco*/
    '1', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 4 */
	'2024-01-12', /* data */
    '19', /* restaurante */
    '30.00', /* valor */
    '0.00', /* entrega */
    '3', /* promo */
    '2', /* status */
    'Sem observação', /* obseracao */
    '0.00', /* troco */
    '2', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, troco, id_forma_paga, id_endereco) 
 values ( /* 5 */
	'2024-01-22',/* data */
    '24', /* restaurante */
    '18.00', /* valor */
    '3.00', /* entrega */
    '10', /* promo */
    '3', /* status */
    '2.00', /*troco*/
    '4', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 6 */
	'2024-01-22',/* data */
    '23', /* restaurante */
    '9.00', /* valor */
    '4.00', /* entrega */
    '9', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '5' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 7 */
	'2024-01-02',/* data */
    '17', /* restaurante */
    '26.00', /* valor */
    '4.00', /* entrega */
    '2', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '4.00', /*troco*/
    '4', /* pagamento */
    '5' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 8 */
	'2024-01-09',/* data */
    '20', /* restaurante */
    '5.00', /* valor */
    '4.00', /* entrega */
    '6', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '7' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 9 */
	'2024-01-22',/* data */
    '25', /* restaurante */
    '5.00', /* valor */
    '3.00', /* entrega */
    '5', /* promo */
    '2', /* status */
    'Sem Cebola', /* obseracoes */
    '5.00', /*troco*/
    '2', /* pagamento */
    '3' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 10 */
	'2024-01-28',/* data */
    '16', /* restaurante */
    '8.00', /* valor */
    '4.00', /* entrega */
    '1', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '7' /* endereco */
 );

							/* PEDIDOS FEVEREIRO */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 1 */
	'2024-02-20',/* data */
    '19', /* restaurante */
    '34.00', /* valor */
    '4.00', /* entrega */
    '3', /* promo */
    '1', /* status */
    'Não coloque muito alho', /* obseracoes */
    '1.00', /*troco*/
    '4', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 2 */
	'2024-02-11',/* data */
    '23', /* restaurante */
    '9.00', /* valor */
    '4.00', /* entrega */
    '9', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '1.00', /*troco*/
    '4', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 3 */
	'2024-02-16',/* data */
    '18', /* restaurante */
    '8.00', /* valor */
    '0.00', /* entrega */
    '4', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 4 */
	'2024-02-10',/* data */
    '22', /* restaurante */
    '31.50', /* valor */
    '4.00', /* entrega */
    '8', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 5 */
	'2024-02-12',/* data */
    '22', /* restaurante */
    '31.50', /* valor */
    '4.00', /* entrega */
    '8', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 6 */
	'2024-02-10',/* data */
    '25', /* restaurante */
    '8.00', /* valor */
    '0.00', /* entrega */
    '5', /* promo */
    '1', /* status */
    'Sem tomate', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '3' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 7 */
	'2024-02-02',/* data */
    '22', /* restaurante */
    '27.50', /* valor */
    '0.00', /* entrega */
    '8', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '2.50', /*troco*/
    '4', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 8 */
	'2024-02-05',/* data */
    '19', /* restaurante */
    '34.00', /* valor */
    '4.00', /* entrega */
    '3', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 9 */
	'2024-02-02',/* data */
    '16', /* restaurante */
    '8.00', /* valor */
    '3.00', /* entrega */
    '1', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '5' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 10 */
	'2024-02-28',/* data */
    '25', /* restaurante */
    '12.00', /* valor */
    '4.00', /* entrega */
    '5', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '10' /* endereco */
 );
 
 							/* PEDIDOS MARÇO */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 1 */
	'2024-03-28',/* data */
    '24', /* restaurante */
    '19.00', /* valor */
    '4.00', /* entrega */
    '10', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '3' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 2 */
	'2024-03-03',/* data */
    '20', /* restaurante */
    '4.00', /* valor */
    '3.00', /* entrega */
    '6', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '1.00', /*troco*/
    '4', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 3 */
	'2024-03-12',/* data */
    '18', /* restaurante */
    '12.00', /* valor */
    '4.00', /* entrega */
    '4', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '5' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 4 */
	'2024-03-19',/* data */
    '22', /* restaurante */
    '27.50', /* valor */
    '0.00', /* entrega */
    '8', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '2.50', /*troco*/
    '4', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 5 */
	'2024-03-14',/* data */
    '25', /* restaurante */
    '4.00', /* valor */
    '2.00', /* entrega */
    '5', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '1.00', /*troco*/
    '4', /* pagamento */
    '3' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 6 */
	'2024-03-16',/* data */
    '20', /* restaurante */
    '3.00', /* valor */
    '2.00', /* entrega */
    '6', /* promo */
    '2', /* status */
    'Sem a maionese da casa', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '5' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 7 */
	'2024-03-05',/* data */
    '21', /* restaurante */
    '29.50', /* valor */
    '2.00', /* entrega */
    '7', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.50', /*troco*/
    '4', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 8 */
	'2024-03-26',/* data */
    '19', /* restaurante */
    '32.00', /* valor */
    '2.00', /* entrega */
    '3', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '8.00', /*troco*/
    '4', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 9 */
	'2024-03-03',/* data */
    '21', /* restaurante */
    '29.50', /* valor */
    '2.00', /* entrega */
    '7', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '5' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 10 */
	'2024-03-30',/* data */
    '16', /* restaurante */
    '7.00', /* valor */
    '2.00', /* entrega */
    '1', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '6' /* endereco */
 );
 
 							/* PEDIDOS ABRIL */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 1 */
	'2024-04-21',/* data */
    '25', /* restaurante */
    '4.00', /* valor */
    '2.00', /* entrega */
    '5', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '1.00', /*troco*/
    '4', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 2 */
	'2024-04-06',/* data */
    '19', /* restaurante */
    '22.00', /* valor */
    '2.00', /* entrega */
    '3', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 3 */
	'2024-04-14',/* data */
    '20', /* restaurante */
    '1.00', /* valor */
    '0.00', /* entrega */
    '5', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '4', /* pagamento */
    '7' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 4 */
	'2024-04-03',/* data */
    '18', /* restaurante */
    '14.00', /* valor */
    '6.00', /* entrega */
    '4', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '1.00', /*troco*/
    '4', /* pagamento */
    '5' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 5 */
	'2024-04-23',/* data */
    '21', /* restaurante */
    '36.00', /* valor */
    '6.00', /* entrega */
    '7', /* promo */
    '3', /* status */
    'Sem cebola', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 6 */
	'2024-04-17',/* data */
    '23', /* restaurante */
    '11.00', /* valor */
    '6.00', /* entrega */
    '9', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 7 */
	'2024-04-14',/* data */
    '24', /* restaurante */
    '17.00', /* valor */
    '2.00', /* entrega */
    '10', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 8 */
	'2024-04-07',/* data */
    '17', /* restaurante */
    '24.00', /* valor */
    '2.00', /* entrega */
    '2', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '4', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 9 */
	'2024-04-09',/* data */
    '16', /* restaurante */
    '7.00', /* valor */
    '2.00', /* entrega */
    '1', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '5' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 10 */
	'2024-04-29',/* data */
    '20', /* restaurante */
    '3.00', /* valor */
    '2.00', /* entrega */
    '6', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '1' /* endereco */
 );
 
 							/* PEDIDOS MAIO */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 1 */
	'2024-05-29',/* data */
    '20', /* restaurante */
    '3.00', /* valor */
    '2.00', /* entrega */
    '6', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 2 */
	'2024-05-27',/* data */
    '21', /* restaurante */
    '27.50', /* valor */
    '0.00', /* entrega */
    '7', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 3 */
	'2024-05-04',/* data */
    '23', /* restaurante */
    '7.00', /* valor */
    '2.00', /* entrega */
    '9', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '3.00', /*troco*/
    '4', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 4 */
	'2024-05-01',/* data */
    '19', /* restaurante */
    '30.00', /* valor */
    '0.00', /* entrega */
    '3', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 5 */
	'2024-05-10',/* data */
    '18', /* restaurante */
    '10.00', /* valor */
    '2.00', /* entrega */
    '4', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '7' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 6 */
	'2024-05-06',/* data */
    '20', /* restaurante */
    '3.00', /* valor */
    '2.00', /* entrega */
    '6', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '7' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 7 */
	'2024-05-08',/* data */
    '24', /* restaurante */
    '17.00', /* valor */
    '2.00', /* entrega */
    '10', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '3.00', /*troco*/
    '4', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 8 */
	'2024-05-30',/* data */
    '21', /* restaurante */
    '30.00', /* valor */
    '2.50', /* entrega */
    '7', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '4', /* pagamento */
    '2' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 9 */
	'2024-05-29',/* data */
    '16', /* restaurante */
    '8.00', /* valor */
    '3.00', /* entrega */
    '1', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 10 */
	'2024-05-24',/* data */
    '25', /* restaurante */
    '5.00', /* valor */
    '3.00', /* entrega */
    '5', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '3' /* endereco */
 );
 							/* PEDIDOS JUNHO */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 1 */
	'2024-06-24',/* data */
    '25', /* restaurante */
    '5.00', /* valor */
    '3.00', /* entrega */
    '5', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '3' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 2 */
	'2024-06-01',/* data */
    '16', /* restaurante */
    '5.00', /* valor */
    '0.00', /* entrega */
    '1', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '5.00', /*troco*/
    '4', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 3 */
	'2024-06-15',/* data */
    '18', /* restaurante */
    '11.00', /* valor */
    '3.00', /* entrega */
    '4', /* promo */
    '1', /* status */
    'Manda o café sem açucar', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 4 */
	'2024-06-29',/* data */
    '23', /* restaurante */
    '8.00', /* valor */
    '3.00', /* entrega */
    '9', /* promo */
    '3', /* status */
    'Deixa a carne de boi mal passada', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 5 */
	'2024-06-01',/* data */
    '16', /* restaurante */
    '5.00', /* valor */
    '0.00', /* entrega */
    '1', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '5.00', /*troco*/
    '4', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 6 */
	'2024-06-15',/* data */
    '19', /* restaurante */
    '32.00', /* valor */
    '2.00', /* entrega */
    '3', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 7 */
	'2024-06-18',/* data */
    '17', /* restaurante */
    '25.00', /* valor */
    '3.00', /* entrega */
    '2', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '5.00', /*troco*/
    '4', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 8 */
	'2024-06-08',/* data */
    '22', /* restaurante */
    '33.50', /* valor */
    '5.00', /* entrega */
    '8', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '6.50', /*troco*/
    '4', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 9 */
	'2024-06-03',/* data */
    '24', /* restaurante */
    '20.00', /* valor */
    '5.00', /* entrega */
    '10', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '2' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 10 */
	'2024-06-04',/* data */
    '23', /* restaurante */
    '9.00', /* valor */
    '4.00', /* entrega */
    '9', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '5' /* endereco */
 );
 
 							/* PEDIDOS JULHO */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 1 */
	'2024-07-24',/* data */
    '20', /* restaurante */
    '5.00', /* valor */
    '4.00', /* entrega */
    '6', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '5.00', /*troco*/
    '4', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 2 */
	'2024-07-09',/* data */
    '18', /* restaurante */
    '12.00', /* valor */
    '4.00', /* entrega */
    '4', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '3.00', /*troco*/
    '4', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 3 */
	'2024-07-12',/* data */
    '19', /* restaurante */
    '34.00', /* valor */
    '4.00', /* entrega */
    '3', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 4 */
	'2024-07-17',/* data */
    '25', /* restaurante */
    '6.00', /* valor */
    '4.00', /* entrega */
    '5', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '4.00', /*troco*/
    '4', /* pagamento */
    '7' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 5 */
	'2024-07-19',/* data */
    '20', /* restaurante */
    '5.00', /* valor */
    '4.00', /* entrega */
    '6', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '5.00', /*troco*/
    '4', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 6 */
	'2024-07-22',/* data */
    '22', /* restaurante */
    '21.50', /* valor */
    '4.00', /* entrega */
    '8', /* promo */
    '3', /* status */
    'Sem tomate na pizza', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '3' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 7 */
	'2024-07-24',/* data */
    '19', /* restaurante */
    '34.00', /* valor */
    '4.00', /* entrega */
    '3', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 8 */
	'2024-07-25',/* data */
    '25', /* restaurante */
    '6.00', /* valor */
    '4.00', /* entrega */
    '5', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 9 */
	'2024-07-28',/* data */
    '16', /* restaurante */
    '9.00', /* valor */
    '4.00', /* entrega */
    '1', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '1.00', /*troco*/
    '4', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 10 */
	'2024-07-30',/* data */
    '24', /* restaurante */
    '18.00', /* valor */
    '3.00', /* entrega */
    '10', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '3' /* endereco */
 );
 
 							/* PEDIDOS AGOSTO */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 1 */
	'2024-08-04',/* data */
    '24', /* restaurante */
    '18.00', /* valor */
    '3.00', /* entrega */
    '10', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '3' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 2 */
	'2024-08-04',/* data */
    '16', /* restaurante */
    '8.00', /* valor */
    '3.00', /* entrega */
    '1', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 3 */
	'2024-08-08',/* data */
    '18', /* restaurante */
    '8.00', /* valor */
    '0.00', /* entrega */
    '4', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '2.00', /*troco*/
    '4', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 4 */
	'2024-08-12',/* data */
    '25', /* restaurante */
    '5.00', /* valor */
    '3.00', /* entrega */
    '5', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '5.00', /*troco*/
    '4', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 5 */
	'2024-08-15',/* data */
    '17', /* restaurante */
    '25.00', /* valor */
    '3.00', /* entrega */
    '2', /* promo */
    '1', /* status */
    'Não precisa mandar os molhos', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '2' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 6 */
	'2024-08-19',/* data */
    '24', /* restaurante */
    '15.00', /* valor */
    '0.00', /* entrega */
    '10', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 7 */
	'2024-08-21',/* data */
    '19', /* restaurante */
    '33.00', /* valor */
    '3.00', /* entrega */
    '3', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 8 */
	'2024-08-22',/* data */
    '22', /* restaurante */
    '30.50', /* valor */
    '3.00', /* entrega */
    '8', /* promo */
    '2', /* status */
    'Sem bacon na pizza', /* obseracoes */
    '4.50', /*troco*/
    '4', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 9 */
	'2024-08-26',/* data */
    '18', /* restaurante */
    '11.00', /* valor */
    '3.00', /* entrega */
    '4', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '3' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 10 */
	'2024-08-30',/* data */
    '24', /* restaurante */
    '17.00', /* valor */
    '2.00', /* entrega */
    '10', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '6' /* endereco */
 );
 
 							/* PEDIDOS SETEMBRO */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 1 */
	'2024-09-03',/* data */
    '22', /* restaurante */
    '27.50', /* valor */
    '0.00', /* entrega */
    '8', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '7' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 2 */
	'2024-09-06',/* data */
    '21', /* restaurante */
    '35.00', /* valor */
    '5.00', /* entrega */
    '7', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '5.00', /*troco*/
    '4', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 3 */
	'2024-09-09',/* data */
    '24', /* restaurante */
    '13.00', /* valor */
    '3.00', /* entrega */
    '10', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 4 */
	'2024-09-10',/* data */
    '20', /* restaurante */
    '1.00', /* valor */
    '0.00', /* entrega */
    '6', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '4', /* pagamento */
    '2' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 5 */
	'2024-09-13',/* data */
    '21', /* restaurante */
    '34.00', /* valor */
    '4.00', /* entrega */
    '7', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '6.00', /*troco*/
    '4', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 6 */
	'2024-09-15',/* data */
    '23', /* restaurante */
    '5.00', /* valor */
    '0.00', /* entrega */
    '9', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 7 */
	'2024-09-17',/* data */
    '19', /* restaurante */
    '35.00', /* valor */
    '5.00', /* entrega */
    '4', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '7' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 8 */
	'2024-09-21',/* data */
    '20', /* restaurante */
    '5.00', /* valor */
    '4.00', /* entrega */
    '6', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '5.00', /*troco*/
    '4', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 9 */
	'2024-09-25',/* data */
    '24', /* restaurante */
    '20.00', /* valor */
    '5.00', /* entrega */
    '10', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '80.00', /*troco*/
    '4', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 10 */
	'2024-09-30',/* data */
    '16', /* restaurante */
    '10.00', /* valor */
    '5.00', /* entrega */
    '1', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '3' /* endereco */
 );
 
 							/* PEDIDOS OUTUBRO */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 1 */
	'2024-10-01',/* data */
    '16', /* restaurante */
    '10.00', /* valor */
    '5.00', /* entrega */
    '1', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '3' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 2 */
	'2024-10-04',/* data */
    '17', /* restaurante */
    '27.00', /* valor */
    '5.00', /* entrega */
    '2', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '23.00', /*troco*/
    '4', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 3 */
	'2024-10-08',/* data */
    '18', /* restaurante */
    '13.00', /* valor */
    '5.00', /* entrega */
    '4', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 4 */
	'2024-10-10',/* data */
    '25', /* restaurante */
    '7.00', /* valor */
    '5.00', /* entrega */
    '5', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '3.00', /*troco*/
    '4', /* pagamento */
    '5' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 5 */
	'2024-10-14',/* data */
    '21', /* restaurante */
    '35.00', /* valor */
    '5.00', /* entrega */
    '7', /* promo */
    '2', /* status */
    'Sem cebola', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 6 */
	'2024-10-16',/* data */
    '24', /* restaurante */
    '20.00', /* valor */
    '5.00', /* entrega */
    '10', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '30.00', /*troco*/
    '4', /* pagamento */
    '7' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 7 */
	'2024-10-18',/* data */
    '16', /* restaurante */
    '7.00', /* valor */
    '3.00', /* entrega */
    '1', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '13.00', /*troco*/
    '4', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 8 */
	'2024-10-20',/* data */
    '22', /* restaurante */
    '32.50', /* valor */
    '5.00', /* entrega */
    '8', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '2' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 9 */
	'2024-10-27',/* data */
    '17', /* restaurante */
    '27.00', /* valor */
    '5.00', /* entrega */
    '2', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '2' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 10 */
	'2024-10-31',/* data */
    '24', /* restaurante */
    '20.00', /* valor */
    '5.00', /* entrega */
    '10', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '30.00', /*troco*/
    '4', /* pagamento */
    '8' /* endereco */
 );
 
 							/* PEDIDOS NOVEMBRO */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 1 */
	'2024-11-01',/* data */
    '24', /* restaurante */
    '20.00', /* valor */
    '5.00', /* entrega */
    '10', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '30.00', /*troco*/
    '4', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 2 */
	'2024-11-04',/* data */
    '18', /* restaurante */
    '13.00', /* valor */
    '5.00', /* entrega */
    '4', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 3 */
	'2024-11-08',/* data */
    '20', /* restaurante */
    '1.00', /* valor */
    '0.00', /* entrega */
    '6', /* promo */
    '1', /* status */
    'Sem milho', /* obseracoes */
    '0.00', /*troco*/
    '4', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 4 */
	'2024-11-11',/* data */
    '21', /* restaurante */
    '35.00', /* valor */
    '5.00', /* entrega */
    '7', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '5.00', /*troco*/
    '4', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 5 */
	'2024-11-13',/* data */
    '20', /* restaurante */
    '6.00', /* valor */
    '5.00', /* entrega */
    '6', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 6 */
	'2024-11-15',/* data */
    '23', /* restaurante */
    '10.00', /* valor */
    '5.00', /* entrega */
    '9', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '4', /* pagamento */
    '2' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 7 */
	'2024-11-17',/* data */
    '16', /* restaurante */
    '9.00', /* valor */
    '4.00', /* entrega */
    '1', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '1.00', /*troco*/
    '4', /* pagamento */
    '3' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 8 */
	'2024-11-19',/* data */
    '18', /* restaurante */
    '11.00', /* valor */
    '3.00', /* entrega */
    '4', /* promo */
    '3', /* status */
    'Manda o café sem açucar', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '5' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 9 */
	'2024-11-23',/* data */
    '24', /* restaurante */
    '20.00', /* valor */
    '5.00', /* entrega */
    '10', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 10 */
	'2024-11-27',/* data */
    '25', /* restaurante */
    '7.00', /* valor */
    '5.00', /* entrega */
    '5', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '8' /* endereco */
 );
 
 							/* PEDIDOS DEZEMBRO */
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 1 */
	'2024-12-03',/* data */
    '24', /* restaurante */
    '20.00', /* valor */
    '5.00', /* entrega */
    '10', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 2 */
	'2024-12-05',/* data */
    '20', /* restaurante */
    '6.00', /* valor */
    '5.00', /* entrega */
    '6', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '14.00', /*troco*/
    '4', /* pagamento */
    '7' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 3 */
	'2024-12-08',/* data */
    '22', /* restaurante */
    '27.50', /* valor */
    '0.00', /* entrega */
    '8', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '2', /* pagamento */
    '9' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 4 */
	'2024-12-09',/* data */
    '23', /* restaurante */
    '8.00', /* valor */
    '3.00', /* entrega */
    '9', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '42.00', /*troco*/
    '4', /* pagamento */
    '8' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 5 */
	'2024-12-12',/* data */
    '17', /* restaurante */
    '22.00', /* valor */
    '0.00', /* entrega */
    '2', /* promo */
    '1', /* status */
    'Não precisa mandar os molhos', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '4' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 6 */
	'2024-12-14',/* data */
    '18', /* restaurante */
    '8.00', /* valor */
    '0.00', /* entrega */
    '4', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '12.00', /*troco*/
    '4', /* pagamento */
    '1' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 7 */
	'2024-12-16',/* data */
    '24', /* restaurante */
    '20.00', /* valor */
    '5.00', /* entrega */
    '10', /* promo */
    '2', /* status */
    '', /* obseracoes */
    '30.00', /*troco*/
    '4', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco)
 values ( /* 8 */
	'2024-12-20',/* data */
    '19', /* restaurante */
    '35.00', /* valor */
    '5.00', /* entrega */
    '3', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '1', /* pagamento */
    '10' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 9 */
	'2024-12-23',/* data */
    '22', /* restaurante */
    '32.50', /* valor */
    '5.00', /* entrega */
    '8', /* promo */
    '1', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '6' /* endereco */
 );
insert into pedido (data_pedido, id_restaurante, valor, taxa_entrega, id_promo, id_status_entrega, obseracoes, troco, id_forma_paga, id_endereco) 
 values ( /* 10 */
	'2024-12-28',/* data */
    '17', /* restaurante */
    '27.00', /* valor */
    '5.00', /* entrega */
    '2', /* promo */
    '3', /* status */
    '', /* obseracoes */
    '0.00', /*troco*/
    '3', /* pagamento */
    '5' /* endereco */
 );
 
select * from pedido;

					/* TABELA PROMOÇÃO*/
create table promocao(
	id integer primary key auto_increment,
    nome varchar(60) NOT NULL,
    codigo varchar(12) NOT NULL,
    tipo varchar(20),
    valor decimal(10, 2) NOT NULL,
    validade date NOT NULL
);

insert into promocao(nome, codigo, tipo, valor, validade) values( /* 1 */
	'Cuscuz na promo',
    'CUSCUZ5',
    'Desconto Cuscuz',
    '5.00',
    '2024-12-15'
);
insert into promocao(nome, codigo, tipo, valor, validade) values( /* 2 */
	'Promoção almoco completo',
    'ALMOCAO12',
    'Almoção no precinho',
    '8.00',
    '2024-08-15'
);
insert into promocao(nome, codigo, tipo, valor, validade) values( /* 3 */
	'Bolo de milho promoção',
    'MILHO4',
    'Desconto Bolo',
    '4.00',
    '2024-02-28'
);
insert into promocao(nome, codigo, tipo, valor, validade) values( /* 4 */
	'Burgão por 2 reais',
    'BURGAO2',
    'Desconto Artesanal',
    '8.00',
    '2024-12-31'
);
insert into promocao(nome, codigo, tipo, valor, validade) values( /* 5 */
	'Desconto Arroz com Polvo',
    'ARROZPOLVO20',
    'Desconto Cuscuz',
    '30.00',
    '2024-06-15'
);
insert into promocao(nome, codigo, tipo, valor, validade) values( /* 6 */
	'Chapa por 1 real',
    'CHAPA1',
    'Desconto Cuscuz',
    '3.50',
    '2024-01-31'
);
insert into promocao(nome, codigo, tipo, valor, validade) values( /* 7 */
	'Menor preço Pizza de Calabresa',
    'CALABRESA30',
    'Desconto Calabresa',
    '30.00',
    '2024-12-31'
);
insert into promocao(nome, codigo, tipo, valor, validade) values( /* 8 */
	'Pizza de Frango + Coxinha pela metade',
    'FRANGINHA27',
    'Desconto',
    '27.50',
    '2024-08-27'
);
insert into promocao(nome, codigo, tipo, valor, validade) values( /* 9 */
	'Risoto Misto',
    'RISMISTO5',
    'Desconto Risoto',
    '5.00',
    '2024-12-15'
);
insert into promocao(nome, codigo, tipo, valor, validade) values( /* 10 */
	'Uramaki Salmão',
    'URAMAKI5',
    'Desconto Cuscuz',
    '5.00',
    '2024-09-08'
);

select * from promocao;


					/* TABELA AVALIAÇÃO */
create table avaliacao(
	id integer primary key auto_increment,
    nota ENUM('1', '2', '3', '4', '5', '6', '7', '8', '9', '10'),
    id_pedido integer,
    id_restaurante integer,
    
    foreign key (id_pedido) references pedido(id),
    foreign key (id_restaurante) references restaurante(id)
);


					/* TABELA ACOMPANHAMENTO */
create table acompanhamento(
	id integer primary key auto_increment,
    nome varchar(100),
    descricao varchar(200),
    valor decimal(10, 2)
);
insert into acompanhamento (nome, descricao, valor) values( /* 1 */
	'Maionese caseira',
    'Maionese, temperos verdes e alho',
    '1.50'
);
insert into acompanhamento (nome, descricao, valor) values( /* 2 */
	'Molhos',
    'Molho de pimente, Molho de alho, Molho inglês',
    '3.00'
);
insert into acompanhamento (nome, descricao, valor) values( /* 3 */
	'Café',
    'Café',
    '1.00'
);
insert into acompanhamento (nome, descricao, valor) values( /* 4 */
	'Batata Frita',
    'Batata Frita',
    '4.00'
);
insert into acompanhamento (nome, descricao, valor) values( /* 5 */
	'Salada',
    'Alface, Tomate, Cebola, Pimentão',
    '4.50'
);
insert into acompanhamento (nome, descricao, valor) values( /* 6 */
	'Molho',
    'Molho de shoyu',
    '2.00'
);
insert into acompanhamento (nome, descricao, valor) values( /* 7 */
	'Sachê',
    'Sachê com Ketchup, Maionese e Mostarda',
    '1.00'
);
insert into acompanhamento (nome, descricao, valor) values( /* 8 */
	'Adicional de Camarão',
    'Mais camarão',
    '5.00'
);
insert into acompanhamento (nome, descricao, valor) values( /* 9 */
	'Molho Tarê',
    'Molho Tarê',
    '1.00'
);
insert into acompanhamento (nome, descricao, valor) values( /* 10 */
	'Queijo coalho',
    'Fatia extra de queijo coalho',
    '3.00'
);

					/* TABELA PRODUTO ACOMPANHAMENTO */
create table produto_acompa(
	primary key (id_produto, id_acompanhamento),
	id_produto integer,
    id_acompanhamento integer,
    
    foreign key (id_produto) references produto(id),
    foreign key (id_acompanhamento) references acompanhamento(id)
);


					/* TABELA RESTAURANTE PAGAMENTO */
create table restau_pagamento(
	primary key (id_restaurante, id_pagamento),
    id_restaurante integer,
    id_pagamento integer,
    
    foreign key (id_restaurante) references restaurante(id),
    foreign key (id_pagamento) references forma_pagamento(id)
);


					/* TABELA PEDIDO PRODUTO */
create table pedido_produto(
	primary key (id_pedido, id_produto),
    id_pedido integer,
    id_produto integer,
    quantidade integer NOT NULL,
    
    foreign key (id_pedido) references pedido(id),
    foreign key (id_produto) references produto(id)
);

insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 1 */
	'1',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 2 */
	'6',
    '3',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 3 */
	'7',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 4 */
	'8',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 5 */
	'10',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 6 */
	'11',
    '10',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 7 */
	'12',
    '3',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 8 */
	'13',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 9 */
	'14',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 10 */
	'15',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 11 */
	'15',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 12 */
	'16',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 13 */
	'17',
    '10',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 14 */
	'18',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 15 */
	'19',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 16 */
	'20',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 17 */
	'21',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 18 */
	'22',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 19 */
	'23',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 20 */
	'24',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 21 */
	'25',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 22 */
	'26',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 23 */
	'27',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 24 */
	'28',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 25 */
	'29',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 26 */
	'30',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 27 */
	'31',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 28 */
	'32',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 29 */
	'33',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 30 */
	'34',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 31 */
	'35',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 32 */
	'36',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 33 */
	'37',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 34 */
	'38',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 35 */
	'39',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 36 */
	'40',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 37 */
	'41',
    '10',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 38 */
	'42',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 39 */
	'43',
    '3',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 40 */
	'44',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 41 */
	'45',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 42 */
	'46',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 43 */
	'47',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 44 */
	'48',
    '10',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 45 */
	'49',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 46 */
	'50',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 47 */
	'51',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 48 */
	'52',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 49 */
	'53',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 50 */
	'54',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 51 */
	'55',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 52 */
	'56',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 53 */
	'57',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 54 */
	'58',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 55 */
	'59',
    '10',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 56 */
	'60',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 57 */
	'61',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 58 */
	'62',
    '3',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 59 */
	'63',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 60 */
	'64',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 61 */
	'65',
    '10',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 62 */
	'66',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 63 */
	'67',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 64 */
	'68',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 65 */
	'69',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 66 */
	'70',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 67 */
	'71',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 68 */
	'72',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 69 */
	'73',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 70 */
	'74',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 71 */
	'75',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 72 */
	'76',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 73 */
	'77',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 74 */
	'78',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 75 */
	'79',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 76 */
	'80',
    '3',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 77 */
	'81',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 78 */
	'82',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 79 */
	'83',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 80 */
	'84',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 81 */
	'85',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 82 */
	'86',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 83 */
	'87',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 84 */
	'88',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 85 */
	'89',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 86 */
	'90',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 87 */
	'91',
    '10',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 88 */
	'92',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 89 */
	'93',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 90 */
	'94',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 91 */
	'95',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 92 */
	'96',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 93 */
	'97',
    '3',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 94 */
	'98',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 95 */
	'99',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 96 */
	'100',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 97 */
	'101',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 98 */
	'102',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 99 */
	'103',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 100 */
	'104',
    '3',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 101 */
	'105',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 102 */
	'106',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 103 */
	'107',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 104 */
	'108',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 105 */
	'109',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 106 */
	'110',
    '8',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 107 */
	'111',
    '10',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 108 */
	'112',
    '2',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 109 */
	'113',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 110 */
	'114',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 111 */
	'115',
    '5',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 112 */
	'116',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 113 */
	'117',
    '7',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 114 */
	'118',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 115 */
	'119',
    '10',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 116 */
	'120',
    '3',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 117 */
	'121',
    '4',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 118 */
	'122',
    '11',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 119 */
	'123',
    '6',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 120 */
	'124',
    '9',
    '1'
);
insert into pedido_produto (id_pedido, id_produto, quantidade) values( /* 121 */
	'125',
    '3',
    '1'
);

select * from pedido_produto;




					/* TABELA PEDIDO PRODUTO ACOMP */
create table pedido_produto_acom(
	primary key (id_pedido_produto, id_acompanhamento),
    id_pedido_produto integer,
    id_acompanhamento integer,
    
    foreign key (id_pedido_produto, id_acompanhamento) references pedido_produto(id_pedido, id_produto)
);


					/* SELECTS */
select P.id AS id_produto, p.nome AS nome_produto, SUM(pp.quantidade) AS total_vendido, r.nome AS nome_restaurante
from produto p 
 join restaurante r
on p.id_restaurante = r.id
inner join pedido_produto pp
on p.id = pp.id_produto
inner join pedido pe
on pp.id_pedido = pe.id
group by p.id, p.nome, r.nome
order by total_vendido desc
limit 1;

select P.id AS id_produto, p.nome AS nome_produto, coalesce(SUM(pp.quantidade), 0)  AS total_vendido, r.nome AS nome_restaurante
from produto p 
inner join pedido_produto pp
on p.id = pp.id_produto
inner join pedido pe
on pp.id_pedido = pe.id
inner join restaurante r
on p.id_restaurante = r.id
group by p.id, p.nome, r.nome
order by total_vendido asc
limit 1;


select date_format(data_pedido, '%M') AS mes, COUNT(*) AS total_pedidos
from pedido
group by mes
order by field(mes, 'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro');


select fp.tipo_pagamento AS forma_pagamento, COUNT(p.id) AS total_utilizado
from pedido p
inner join forma_pagamento fp
on p.id_forma_paga = fp.id
group by fp.tipo_pagamento
order by total_utilizado desc
limit 1;

select e.id AS id_endereco, e.rua AS rua, COUNT(p.id_endereco) AS total_entregas
from pedido p
inner join endereco e
on p.id_endereco = e.id
group by e.id
order by total_entregas desc
limit 1;

select p.id AS id_pedido, pro.nome AS nome_produto, COUNT(pp.quantidade) AS quantidade
from pedido_produto pp
join pedido p
on pp.id_pedido = p.id
join produto pro
on pro.id = pp.id_produto
group by p.id, pro.nome
order by quantidade desc;

select date_format(data_pedido, '%M') AS mes, fp.tipo_pagamento AS tipo_pagamento, COUNT(p.id) AS total_pedidos
from pedido p
join forma_pagamento fp
on p.id_forma_paga = fp.id
where 
YEAR(p.data_pedido) = YEAR(curdate()) and
MONTH(p.data_pedido) = MONTH(curdate())
group by fp.tipo_pagamento, mes
order by field(mes, 'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'), total_pedidos desc;

select date_format(data_pedido, '%M') AS mes, fp.tipo_pagamento AS tipo_pagamento, COUNT(p.id) AS total_pedidos
from pedido p
join forma_pagamento fp
on p.id_forma_paga = fp.id
where
YEAR(p.data_pedido) = YEAR(curdate() - INTERVAL 1 MONTH) and
MONTH(p.data_pedido) = MONTH(curdate() - INTERVAL 1 MONTH)
group by fp.tipo_pagamento, mes
order by field(mes, 'Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'), total_pedidos desc;






















