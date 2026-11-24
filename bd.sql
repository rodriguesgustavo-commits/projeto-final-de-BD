CREATE TABLE Cliente ( 
    id INT PRIMARY KEY,  
    email VARCHAR(100) NOT NULL,  
    nome VARCHAR(100) NOT NULL,  
    senha VARCHAR(255) NOT NULL,  
    cpf CHAR(11) NOT NULL,  
    celular VARCHAR(15)
); 

CREATE TABLE Endereco ( 
    id INT PRIMARY KEY,  
    idCliente INT NOT NULL,  
    cidade VARCHAR(100),  
    estado CHAR(2),  
    bairro VARCHAR(100),  
    numero VARCHAR(20),  
    rua VARCHAR(150)
); 

CREATE TABLE Compra ( 
    id INT PRIMARY KEY,  
    idCliente INT NOT NULL,  
    idEndereco INT NOT NULL,  
    forma_pagamento VARCHAR(50),  
    data DATETIME,  
    valor_total DECIMAL(10, 2)
); 

CREATE TABLE Produto ( 
    id INT PRIMARY KEY,  
    nome VARCHAR(100) NOT NULL,  
    descricao TEXT,  
    categoria VARCHAR(50),  
    preco DECIMAL(10, 2) NOT NULL,  
    quantidade INT NOT NULL
); 

CREATE TABLE Possui ( 
    idProduto INT,  
    idCompra INT,  
    valor_unitario DECIMAL(10, 2) NOT NULL,  
    quantidade INT NOT NULL,
    PRIMARY KEY (idProduto, idCompra)
); 

ALTER TABLE Endereco ADD FOREIGN KEY (idCliente) REFERENCES Cliente (id);
ALTER TABLE Compra ADD FOREIGN KEY (idCliente) REFERENCES Cliente (id);
ALTER TABLE Compra ADD FOREIGN KEY (idEndereco) REFERENCES Endereco (id);
ALTER TABLE Possui ADD FOREIGN KEY (idProduto) REFERENCES Produto (id);
ALTER TABLE Possui ADD FOREIGN KEY (idCompra) REFERENCES Compra (id);