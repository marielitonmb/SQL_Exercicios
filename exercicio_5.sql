USE exercicio_2;

/*Selecione os nomes de todos os alunos que já fizeram alguma matrícula na Softblue, sem repetição*/
SELECT DISTINCT(a.aluno) FROM pedido p INNER JOIN aluno a ON p.aluno = a.codigo;

/*Exiba o nome do aluno mais antigo da Softblue*/
SELECT DISTINCT(a.aluno) FROM pedido p
INNER JOIN aluno a ON p.aluno = a.codigo ORDER BY p.data ASC LIMIT 1;

/*Exiba o nome do aluno mais recente da Softblue*/
SELECT DISTINCT(a.aluno) FROM pedido p
INNER JOIN aluno a ON p.aluno = a.codigo ORDER BY p.data DESC LIMIT 1;

/*Exiba o nome do terceiro aluno mais antigo da Softblue*/
SELECT DISTINCT(a.aluno) FROM pedido p
INNER JOIN aluno a ON p.aluno = a.codigo ORDER BY p.data ASC LIMIT 2;

/*Exiba a quantidade de cursos que já foram vendidos pela Softblue*/
SELECT COUNT(*) FROM pedido_detalhe;

/*Exiba o valor total já arrecadado pelos cursos vendidos pela Softblue*/
SELECT SUM(valor) FROM pedido_detalhe;

/*Exiba o valor médio cobrado por curso para o pedido cujo CODIGO é 2*/
SELECT AVG(valor) FROM pedido_detalhe WHERE pedido = 2;

/*Exiba o valor do curso mais caro da Softblue*/
SELECT MAX(valor) FROM pedido_detalhe;

/*Exiba o valor do curso mais barato da Softblue*/
SELECT MIN(valor) FROM pedido_detalhe;

/*Exiba o valor total de cada pedido realizado na Softblue*/
SELECT pedido, SUM(valor) FROM pedido_detalhe GROUP BY pedido;

/*Exiba os nomes dos instrutores da Softblue e a quantidade de cursos que cada um tem sob sua
responsabilidade*/
SELECT instrutor.instrutor, COUNT(*) FROM curso
INNER JOIN instrutor ON curso.instrutor = instrutor.codigo GROUP BY instrutor;

/*Exiba o número do pedido, nome do aluno e valor para todos os pedidos realizados na Softblue cujo valor
total sejam maiores que 500*/
SELECT pedido, aluno.aluno, SUM(valor) FROM pedido_detalhe
INNER JOIN pedido ON pedido_detalhe.pedido = pedido.codigo
INNER JOIN aluno ON pedido.aluno = aluno.codigo GROUP BY pedido HAVING SUM(valor) > 500;

/*Exiba o número do pedido, nome do aluno e quantos cursos foram comprados no pedido para todos os
pedidos realizados na Softblue que compraram dois ou mais cursos*/
SELECT pedido, aluno.aluno, COUNT(*) FROM pedido_detalhe
INNER JOIN pedido ON pedido_detalhe.pedido = pedido.codigo
INNER JOIN aluno ON pedido.aluno = aluno.codigo GROUP BY pedido HAVING COUNT(*) > 1;

/*Exiba o nome e endereço de todos os alunos que morem em Avenidas (Av.)*/
SELECT aluno, endereco FROM aluno WHERE endereco LIKE 'Av%';

/*Exiba os nomes dos cursos de Java da Softblue*/
SELECT curso FROM curso WHERE curso LIKE '%java%';

/*Utilizando subquery, exiba uma lista com os nomes dos cursos disponibilizados pela Softblue informando
para cada curso qual o seu menor valor de venda já praticado*/
SELECT curso, (SELECT MIN(valor) FROM pedido_detalhe WHERE pedido_detalhe.curso = curso.codigo) AS Menor_Valor FROM curso;

/*Utilizando subquery e o parâmetro IN, exiba os nomes dos cursos disponibilizados pela Softblue cujo tipo
de curso seja 'Programação'*/
SELECT curso FROM curso WHERE tipo IN (SELECT codigo FROM tipo WHERE tipo = 'Programação');

/*Utilizando subquery e o parâmetro EXISTS, exiba novamente os nomes dos cursos disponibilizados pela
Softblue cujo tipo de curso seja 'Programação'*/
SELECT curso FROM curso WHERE EXISTS (SELECT codigo FROM tipo WHERE tipo.codigo = curso.tipo AND tipo.tipo = 'Programação');

/*Exiba uma lista com os nomes dos instrutores da Softblue e ao lado o total acumulado das vendas
referente aos cursos pelo qual o instrutor é responsável*/
SELECT instrutor, (SELECT SUM(pedido_detalhe.valor) FROM pedido_detalhe
INNER JOIN curso ON pedido_detalhe.curso = curso.codigo
WHERE curso.instrutor = instrutor.codigo) AS Total_de_Vendas FROM instrutor;

/*Crie uma visão que exiba os nomes dos alunos e quanto cada um já comprou em cursos*/
CREATE VIEW Alunos_e_Compras AS SELECT aluno, (SELECT SUM(pedido_detalhe.VALOR) FROM pedido_detalhe
INNER JOIN pedido ON pedido_detalhe.pedido = pedido.codigo
WHERE pedido.aluno = aluno.codigo) AS Total_de_Compras FROM aluno;

SELECT * FROM Alunos_e_Compras;