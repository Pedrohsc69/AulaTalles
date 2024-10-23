create database Ifood;

use ifood;

CREATE TABLE Restaurante (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE Categoria (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE Produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categoria(id)
);

CREATE TABLE Endereco (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cep VARCHAR(10) NOT NULL,
    tipo_logradouro VARCHAR(20) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(20) NOT NULL,
    id_restaurante INT,
    FOREIGN KEY (id_restaurante) REFERENCES Restaurante(id)
);

CREATE TABLE Promocao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    id_produto INT,
    FOREIGN KEY (id_produto) REFERENCES Produto(id)
);

CREATE TABLE Avaliacao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    comentario TEXT,
    nota INT NOT NULL,
    id_restaurante INT,
    FOREIGN KEY (id_restaurante) REFERENCES Restaurante(id)
);

CREATE TABLE Acompanhamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE Produto_Acompanhamento (
    id_produto INT,
    id_acompanhamento INT,
    PRIMARY KEY (id_produto, id_acompanhamento),
    FOREIGN KEY (id_produto) REFERENCES Produto(id),
    FOREIGN KEY (id_acompanhamento) REFERENCES Acompanhamento(id)
);

CREATE TABLE Forma_Pagamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(20) NOT NULL
);

CREATE TABLE Status_Entrega (
    id INT PRIMARY KEY AUTO_INCREMENT,
    status VARCHAR(20) NOT NULL
);

CREATE TABLE Pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    id_endereco INT,
    id_forma_pagamento INT,
    id_status_entrega INT,
    FOREIGN KEY (id_endereco) REFERENCES Endereco(id),
    FOREIGN KEY (id_forma_pagamento) REFERENCES Forma_Pagamento(id),
    FOREIGN KEY (id_status_entrega) REFERENCES Status_Entrega(id)
);

CREATE TABLE Historico_Pagamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    data_pagamento DATE NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id)
);

CREATE TABLE Historico_Entrega (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    status VARCHAR(20) NOT NULL,
    data_status DATE NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido(id)
);

CREATE TABLE Restaurante_Pagamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_restaurante INT,
    valor DECIMAL(10, 2) NOT NULL,
    data_pagamento DATE NOT NULL,
    FOREIGN KEY (id_restaurante) REFERENCES Restaurante(id)
);

CREATE TABLE Produto_Carrinho (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    quantidade INT NOT NULL,
    observacao TEXT,
    FOREIGN KEY (id_produto) REFERENCES Produto(id)
);

CREATE TABLE Produto_Carrinho_Acompanhamento (
    id_produto_carrinho INT,
    id_acompanhamento INT,
    PRIMARY KEY (id_produto_carrinho, id_acompanhamento),
    FOREIGN KEY (id_produto_carrinho) REFERENCES Produto_Carrinho(id),
    FOREIGN KEY (id_acompanhamento) REFERENCES Acompanhamento(id)
);




