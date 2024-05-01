--CRIA��O DO USU�RIO
INSERT INTO Usuario VALUES ('OP1', 'OP1')
INSERT INTO Usuario VALUES ('OP2', 'OP2')

SELECT * FROM Usuario

--Inserir alguns produtos na base de dados
INSERT INTO Produto VALUES ('Banana', '100', '5.00')
INSERT INTO Produto VALUES ('aaaa', '100', '5.00')
INSERT INTO Produto VALUES ('Laranja', '500', '2.00')
INSERT INTO Produto VALUES ('Manga', '800', '4.00')

SELECT * FROM Produto 

BEGIN TRAN DELETE Produto WHERE idProduto = 2
--COMMIT

/*
 2. Criar pessoas f�sicas e jur�dicas na base de dados:

Obter o pr�ximo id de pessoa a partir da sequence
Incluir na tabela pessoa os dados comuns
Incluir em pessoa f�sica o CPF, efetuando o
relacionamento com pessoa.
*/

SELECT * FROM Pessoa

INSERT INTO Pessoa VALUES ('EDUARDO FERNANDO', 'RUA FULANO DE TAL 123', 'FORTALEZA', 'CE', '85965203282', 'eduardofulano@tantofaz.com')
INSERT INTO Pessoa VALUES ('RAFAEL PESSOA', 'RUA FULANO DE TAL 125', 'MACEIO', 'AL', '8296523282', 'rafaelfulano@tantofaz.com')
INSERT INTO Pessoa VALUES ('DRUGSTORESLTDA', 'RUA FULANO DE TAL 123', 'SANTA CATARINA', 'ES', '8196653282', 'drugfulano@tantofaz.com')

SELECT * FROM PessoaJuridica

INSERT INTO Pessoafisica SELECT cpf = '77363270252', idPessoa FROM Pessoa WHERE idPessoa = 1
INSERT INTO Pessoafisica SELECT cpf = '15304243641', idPessoa FROM Pessoa WHERE idPessoa = 2
INSERT INTO PessoaJuridica SELECT cnpj = '44555252000152', idPessoa FROM Pessoa WHERE idPessoa = 3
