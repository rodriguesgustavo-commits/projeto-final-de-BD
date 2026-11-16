CREATE TABLE Cliente 
( 
 id INT PRIMARY KEY,  
 email VARCHAR,  
 nome VARCHAR,  
 senha VARCHAR,  
 cpf CHAR,  
 celular VARCHAR,  
); 

CREATE TABLE Endereco 
( 
 id INT PRIMARY KEY,  
 idCliente INT,  
 ciadade VARCHAR,  
 estado CHAR,  
 bairro VARCHAR,  
 numero VARCHAR,  
 rua VARCHAR,  
); 

CREATE TABLE Compra 
( 
 id INT PRIMARY KEY,  
 idCliente INT,  
 idEndereco INT,  
 forma_pagamento VARCHAR,  
 data DATETIME,  
 valor_total FLOAT,  
); 

CREATE TABLE Produto 
( 
 id INT PRIMARY KEY,  
 nome VARCHAR NOT NULL,  
 descricao FLOAT,  
 categoria VARCHAR,  
 preco FLOAT,  
 quantidade INT NOT NULL,  
); 

CREATE TABLE Possui 
( 
 id INT PRIMARY KEY,  
 id INT PRIMARY KEY,  
 valor_unitario FLOAT,  
 quantidade INT,  
); 

ALTER TABLE Endereco ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente)
ALTER TABLE Compra ADD FOREIGN KEY(idCliente) REFERENCES Cliente (idCliente)
ALTER TABLE Compra ADD FOREIGN KEY(idEndereco) REFERENCES Endereco (idEndereco)
ALTER TABLE Possui ADD FOREIGN KEY(id) REFERENCES Produto (id)
ALTER TABLE Possui ADD FOREIGN KEY(id) REFERENCES Compra (id)
