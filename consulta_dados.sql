--a. Dados completos de pessoas f�sicas.
SELECT * FROM PessoaFisica PF
INNER JOIN Pessoa P ON PF.Pessoa_idPessoa = P.idPessoa;
--b. Dados completos de pessoas jur�dicas.
SELECT * FROM PessoaJuridica PJ
INNER JOIN Pessoa P ON PJ.Pessoa_idPessoa = P.idPessoa;
--c. Movimenta��es de entrada, com produto,fornecedor, quantidade, pre�o unit�rio e valor total.
SELECT M.Produto_idProduto, M.Pessoa_idPessoa AS Fornecedor, M.quantidade, M.precoUnitario, M.quantidade * M.precoUnitario AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'E';
--d. Movimenta��es de sa�da, com produto, comprador, quantidade, pre�o unit�rio e valor total.
SELECT M.Produto_idProduto, M.Pessoa_idPessoa AS Comprador, M.quantidade, M.precoUnitario, M.quantidade * M.precoUnitario AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'S';
--e. Valor total das entradas agrupadas por produto.
SELECT M.Produto_idProduto, SUM(M.quantidade * M.precoUnitario) AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'E'
GROUP BY M.Produto_idProduto;
--Valor total das sa�das agrupadas por produto.
SELECT M.Produto_idProduto, SUM(M.quantidade * M.precoUnitario) AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'S'
GROUP BY M.Produto_idProduto;
--f. Operadores que n�o efetuaram movimenta��es de entrada (compra).
SELECT U.idUsuario
FROM Usuario U
WHERE U.idUsuario NOT IN (SELECT M.Usuario_idUsuario FROM Movimento M WHERE M.tipo = 'E');
--g. Valor total de entrada, agrupado por operador.
SELECT M.Usuario_idUsuario, SUM(M.quantidade * M.precoUnitario) AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'E'
GROUP BY M.Usuario_idUsuario;
--h. Valor total de sa�da, agrupado por operador.
SELECT M.Usuario_idUsuario, SUM(M.quantidade * M.precoUnitario) AS ValorTotal
FROM Movimento M
WHERE M.tipo = 'S'
GROUP BY M.Usuario_idUsuario;
--j. Valor m�dio de venda por produto, utilizando m�dia ponderada.
SELECT M.Produto_idProduto, SUM(M.quantidade * M.precoUnitario) / SUM(M.quantidade) AS PrecoMedioPonderado
FROM Movimento M
WHERE M.tipo = 'S'
GROUP BY M.Produto_idProduto;

