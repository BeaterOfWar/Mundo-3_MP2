ALTER TABLE PessoaFisica
ALTER COLUMN cpf BIGINT;

ALTER TABLE PessoaJuridica
ALTER COLUMN cnpj BIGINT;

INSERT INTO Usuario (Login, Senha)
VALUES ('op1', 'op1'),
       ('op2', 'op2');

INSERT INTO Pessoa (nome, logradouro, cidade, estado, telefone, email)
VALUES ('Fernanda', 'Rua Fulano de tal, 34', 'Maceio', 'AL', '3135-1311', 'fernandap@gmail.com'),
       ('Gabriela', 'Avenida Beltrano, 62', 'Recife', 'PE', '3212-2482', 'gabrielat@gmail.com'),
       ('Eduarda', 'Avenida Marechal Deodoro, 55', 'Fortaleza', 'CE', '1123-5745', 'duda554@gmail.com'),
       ('Alvenaria Agil', 'Rua das Maquinas, 88', 'São Paulo', 'SP', '4074-5321', 'alvenariaagil@gmail.com'),
       ('Cozinha da Luciana', 'Rua Augusto Peixoto, 75', 'Rio de Janeiro', 'RJ', '4126-7575', 'lucianareceitas@gmail.com');

INSERT INTO PessoaFisica (cpf, Pessoa_idPessoa)
VALUES ('52898121112', 1),
       ('31927426784', 2),
       ('51234124113', 3);

INSERT INTO PessoaJuridica (cnpj, Pessoa_idPessoa)
VALUES ('76279400000140', 4),
       ('52267334000120', 5);

INSERT INTO Produto (nome_produto, quantidade_produto, precoVenda_produto)
VALUES ('Banana', 100, 5.00),
       ('Laranja', 500, 2.00),
       ('Manga', 800, 4.00);

INSERT INTO Movimento (Pessoa_idPessoa, Usuario_idUsuario, Produto_idProduto, quantidade, tipo, precoUnitario)
VALUES (1, 1, 1, 10, 'S', 5.00),
       (2, 2, 2, 20, 'E', 2.00),
       (3, 1, 3, 30, 'E', 4.00);
