create database Ifood;

use ifood;

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

create table categoria(
	id integer primary key auto_increment,
    tipo varchar(80) NOT NULL,
    nome varchar(100) NOT NULL,
    descricao varchar(200)
);

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

create table horario_funcionamento(
	id integer primary key auto_increment,
    dia_semana ENUM('Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado') NOT NULL,
    hora_abertura time NOT NULL,
    hora_fechamento time NOT NULL
);

create table forma_pagamento(
	id integer primary key auto_increment,
    tipo_pagamento ENUM('Pix', 'Cartão Debito', 'Cartão Crédito', 'Dinheiro')
);
alter table forma_pagamento
modify tipo_pagamento ENUM('Pix', 'Cartão Debito', 'Cartão Crédito', 'Dinheiro') NOT NULL;

create table histo_pagamento(
	id integer primary key auto_increment,
    data_paga date NOT NULL,
    id_forma_paga integer,
    valor decimal(10, 2) NOT NULL,
    
    foreign key (id_forma_paga) references forma_pagamento(id)
);

create table histo_entrega(
	id integer primary key auto_increment,
    id_status_entrega integer,
    id_pedido integer,
    data_hora datetime NOT NULL,
    
    foreign key (id_status_entrega) references status_entrega(id),
    foreign key (id_pedido) references pedido(id)
);

create table status_entrega(
	id integer primary key auto_increment,
    nome ENUM('Pendente', 'Acaminho', 'Entregue') NOT NULL
);

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

create table promocao(
	id integer primary key auto_increment,
    nome varchar(60) NOT NULL,
    codigo varchar(12) NOT NULL,
    tipo varchar(20),
    valor decimal(10, 2) NOT NULL,
    validade date NOT NULL
);

create table avaliacao(
	id integer primary key auto_increment,
    nota ENUM('1', '2', '3', '4', '5', '6', '7', '8', '9', '10'),
    id_pedido integer,
    id_restaurante integer,
    
    foreign key (id_pedido) references pedido(id),
    foreign key (id_restaurante) references restaurante(id)
);

create table acompanhamento(
	id integer primary key auto_increment,
    nome varchar(100),
    descricao varchar(200),
    valor decimal(10, 2)
);

create table produto_acompa(
	primary key (id_produto, id_acompanhamento),
	id_produto integer,
    id_acompanhamento integer,
    
    foreign key (id_produto) references produto(id),
    foreign key (id_acompanhamento) references acompanhamento(id)
);

create table restau_pagamento(
	primary key (id_restaurante, id_pagamento),
    id_restaurante integer,
    id_pagamento integer,
    
    foreign key (id_restaurante) references restaurante(id),
    foreign key (id_pagamento) references forma_pagamento(id)
);

create table pedido_produto(
	primary key (id_pedido, id_produto),
    id_pedido integer,
    id_produto integer,
    quantidade integer NOT NULL,
    
    foreign key (id_pedido) references pedido(id),
    foreign key (id_produto) references produto(id)
);

create table pedido_produto_acom(
	primary key (id_pedido_produto, id_acompanhamento),
    id_pedido_produto integer,
    id_acompanhamento integer,
    
    foreign key (id_pedido_produto, id_acompanhamento) references pedido_produto(id_pedido, id_produto)
);

