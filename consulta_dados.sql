--a. Dados completos de pessoas físicas.
SELECT * FROM PessoaFisica PF
INNER JOIN Pessoa P ON PF.Pessoa_idPessoa = P.idPessoa;
--b. Dados completos de pessoas jurídicas.
SELECT * FROM PessoaJuridica PJ
INNER JOIN Pessoa P ON PJ.Pessoa_idPessoa = P.idPessoa;
--c. Movimentações de entrada, com produto,fornecedor, quantidade, preço unitário e valor total.
SELECT M.Produto_idProduto, M.Pessoa_idPessoa AS Fornecedor, M.quantidade, M.precoUnitario, M.quantidade * M.precoUnitario AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'E';
--d. Movimentações de saída, com produto, comprador, quantidade, preço unitário e valor total.
SELECT M.Produto_idProduto, M.Pessoa_idPessoa AS Comprador, M.quantidade, M.precoUnitario, M.quantidade * M.precoUnitario AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'S';
--e. Valor total das entradas agrupadas por produto.
SELECT M.Produto_idProduto, SUM(M.quantidade * M.precoUnitario) AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'E'
GROUP BY M.Produto_idProduto;
--f. Valor total das saídas agrupadas por produto.
SELECT M.Produto_idProduto, SUM(M.quantidade * M.precoUnitario) AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'S'
GROUP BY M.Produto_idProduto;
--g. Operadores que não efetuaram movimentações de entrada (compra).
SELECT U.idUsuario
FROM Usuario U
WHERE U.idUsuario NOT IN (SELECT M.Usuario_idUsuario FROM Movimento M WHERE M.tipo = 'E');
--h. Valor total de entrada, agrupado por operador.
SELECT M.Usuario_idUsuario, SUM(M.quantidade * M.precoUnitario) AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'E'
GROUP BY M.Usuario_idUsuario;
--i. Valor total de saída, agrupado por operador.
SELECT M.Usuario_idUsuario, SUM(M.quantidade * M.precoUnitario) AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'S'
GROUP BY M.Usuario_idUsuario;
--j. Valor médio de venda por produto, utilizando média ponderada.
SELECT M.Produto_idProduto, SUM(M.quantidade * M.precoUnitario) / SUM(M.quantidade) AS PrecoMedioPonderado
FROM Movimento M
WHERE M.tipo = 'S'
GROUP BY M.Produto_idProduto;

