CREATE TABLE Pessoa (
    idPessoa INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(255),
    logradouro VARCHAR(255),
    cidade VARCHAR(255),
    estado CHAR(2),
    telefone VARCHAR(11),
    email VARCHAR(255)
);

CREATE TABLE Movimento (
    idMovimento INT PRIMARY KEY IDENTITY(1,1),
    Pessoa_idPessoa INT,
    Usuario_idUsuario INT,
    Produto_idProduto INT,
    quantidade INT,
    precoUnitario NUMERIC,
    FOREIGN KEY (Pessoa_idPessoa) REFERENCES Pessoa(idPessoa)
);

CREATE TABLE PessoaFisica (
    idPF INT PRIMARY KEY IDENTITY(1,1),
    cpf INT,
    Pessoa_idPessoa INT,
    FOREIGN KEY (Pessoa_idPessoa) REFERENCES Pessoa(idPessoa)
);

CREATE TABLE PessoaJuridica (
    idPJ INT PRIMARY KEY IDENTITY(1,1),
    cnpj INT,
    Pessoa_idPessoa INT,
    FOREIGN KEY (Pessoa_idPessoa) REFERENCES Pessoa(idPessoa)
);

CREATE TABLE Usuario (
    idUsuario INT PRIMARY KEY IDENTITY(1,1),
    Login VARCHAR(25),
    Senha VARCHAR(30)
);

CREATE TABLE Produto (
    idProduto INT PRIMARY KEY IDENTITY(1,1),
    nome_produto VARCHAR(255),
    quantidade_produto INT,
    precoVenda_produto NUMERIC
);

CREATE SEQUENCE PessoaSeq
    AS INT
    START WITH 1
    INCREMENT BY 1;