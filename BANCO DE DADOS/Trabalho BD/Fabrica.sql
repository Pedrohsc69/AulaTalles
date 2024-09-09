-- Criação da tabela setores
CREATE TABLE setores (
    nome_setor VARCHAR(50) PRIMARY KEY,
    produto_fabricado varchar(50),
    FOREIGN KEY (produto_fabricado) REFERENCES produtos(nome_produto)
);
INSERT INTO setores (nome_setor, produto_fabricado) VALUES
('Setor 1', 'Produto A'),  -- Produto A
('Setor 2', 'Produto B'),  -- Produto B
('Setor 3', 'Produto C');  -- Produto C
select * from setores;



-- Criação da tabela produtos
CREATE TABLE produtos (
    nome_produto VARCHAR(50) PRIMARY KEY,
    quantidade INT,
    valor DECIMAL(10, 2)
);
INSERT INTO produtos (nome_produto, quantidade, valor) VALUES
('Produto A', 100, 10.50),
('Produto B', 200, 20.00),
('Produto C', 150, 15.75);
select * from produtos;



-- Criação da tabela trabalhadores
CREATE TABLE funcionarios (
    id_funcionario INT NOT NULL PRIMARY KEY,
    nome_funcionario VARCHAR(50) NOT NULL,
    setor VARCHAR(50) NOT NULL,
    FOREIGN KEY (setor) REFERENCES setores(nome_setor)
);
INSERT INTO funcionarios (id_funcionario, nome_funcionario, setor) VALUES
(115,'Trabalhador 1', 'Setor 1'),
(147,'Trabalhador 2', 'Setor 2'),
(444,'Trabalhador 3', 'Setor 3');
select * from funcionarios;



-- Criação da tabela chefes
CREATE TABLE chefes (
    id_chefe INT NOT NULL PRIMARY KEY,
    nome_chefe VARCHAR(50) NOT NULL,
    setor VARCHAR(50) NOT NULL,
    FOREIGN KEY (setor) REFERENCES setores(nome_setor)
);
INSERT INTO chefes (id_chefe, nome_chefe, setor) VALUES
(293,'Chefe 1', 'Setor 1'),
(266,'Chefe 2', 'Setor 2'),
(222,'Chefe 3', 'Setor 3');
select * from chefes;



-- Criação da tabela compradores
CREATE TABLE compradores (
    nome VARCHAR(50) PRIMARY KEY,
    produto_comprado VARCHAR(50),
    valor_produto DECIMAL(10, 2),
    FOREIGN KEY (produto_comprado) REFERENCES produtos(nome_produto)
);
INSERT INTO compradores (nome, produto_comprado, valor_produto) VALUES
('Comprador 1', 'Produto A', 10.50),  
('Comprador 2', 'Produto B', 20.00),  
('Comprador 3', 'Produto C', 15.75);  
select * from compradores;
