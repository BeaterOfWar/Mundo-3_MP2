
INSERT INTO Usuario VALUES ('OP1', 'OP1')
INSERT INTO Usuario VALUES ('OP2', 'OP2')

SELECT * FROM Usuario

INSERT INTO Produto VALUES ('Banana', '100', '5.00')
INSERT INTO Produto VALUES ('Laranja', '500', '2.00')
INSERT INTO Produto VALUES ('Manga', '800', '4.00')

SELECT * FROM Produto 

BEGIN TRAN DELETE Produto WHERE idProduto = 2
--COMMIT


SELECT * FROM Pessoa

INSERT INTO Pessoa VALUES ('EDUARDO FERNANDO', 'RUA FULANO DE TAL 123', 'FORTALEZA', 'CE', '85965203282', 'eduardofulano@tantofaz.com')
INSERT INTO Pessoa VALUES ('RAFAEL PESSOA', 'RUA FULANO DE TAL 125', 'MACEIO', 'AL', '8296523282', 'rafaelfulano@tantofaz.com')
INSERT INTO Pessoa VALUES ('DRUGSTORESLTDA', 'RUA FULANO DE TAL 123', 'SANTA CATARINA', 'ES', '8196653282', 'drugfulano@tantofaz.com')

SELECT * FROM PessoaJuridica

INSERT INTO Pessoafisica SELECT cpf = '77363270252', idPessoa FROM Pessoa WHERE idPessoa = 1
INSERT INTO Pessoafisica SELECT cpf = '15304243641', idPessoa FROM Pessoa WHERE idPessoa = 2
INSERT INTO PessoaJuridica SELECT cnpj = '44555252000152', idPessoa FROM Pessoa WHERE idPessoa = 3


SELECT * FROM PessoaFisica

SELECT * FROM Movimento

INSERT INTO Movimento(Pessoa_idPessoa, Usuario_idUsuario, Produto_idProduto, quantidade, precoUnitario)
VALUES (1, 1, 1, 10, 5.00), -- Entrada
       (2, 2, 1, 5,  5.00),  -- Saída
       (3, 1, 3, 15,2.00), -- Entrada
       (1, 2, 4, 20, 4.00);  -- Saída
