USE exercicio_2;

/*exiba uma lista com os títulos dos cursos da Softblue e o tipo de curso ao lado;*/
SELECT c.curso, t.tipo FROM curso c INNER JOIN tipo t ON c.tipo = t.codigo;

/*Exiba uma lista com os títulos dos cursos da Softblue, tipo do curso, nome do instrutor responsável pelo
mesmo e telefone;*/
SELECT c.curso, t.tipo, i.instrutor, i.telefone FROM curso c 
INNER JOIN tipo t ON c.tipo = t.codigo
INNER JOIN instrutor i ON c.instrutor = i.codigo ;

/*Exiba uma lista com o código e data e hora dos pedidos e os códigos dos cursos de cada pedido;*/
SELECT p.codigo, p.data, p.hora, pd.curso FROM pedido p INNER JOIN pedido_detalhe pd ON p.codigo = pd.pedido;

/*Exiba uma lista com o código e data e hora dos pedidos e os títulos dos cursos de cada pedido;*/
SELECT p.codigo, p.data, p.hora, pd.curso FROM pedido p
INNER JOIN pedido_detalhe pd ON p.codigo = pd.pedido
INNER JOIN curso c ON pd.curso = c.codigo;

/*Exiba uma lista com o código e data e hora dos pedidos, nome do aluno e os títulos dos cursos de cada
pedido;*/
SELECT p.codigo, p.data, p.hora, a.aluno, c.curso FROM pedido p
INNER JOIN pedido_detalhe pd ON p.codigo = pd.pedido
INNER JOIN curso c ON pd.curso = c.codigo
INNER JOIN aluno a ON p.aluno = a.codigo;

/*Crie uma visão que traga o título e preço somente dos cursos de programação da Softblue;*/
CREATE VIEW curso_preco AS SELECT curso, valor FROM curso c
INNER JOIN tipo t ON c.tipo = t.codigo WHERE t.tipo = 'programação';

SELECT * FROM curso_preco;

/*Crie uma visão que traga os títulos dos cursos, tipo do curso e nome do instrutor;*/
CREATE VIEW cursos_mais_detalhes AS SELECT curso, t.tipo, i.instrutor FROM curso c
INNER JOIN tipo t ON c.tipo = t.codigo
INNER JOIN instrutor i ON c.instrutor = i.codigo;

SELECT * FROM cursos_mais_detalhes;

/*Crie uma visão que exiba os pedidos realizados, informando o nome do aluno, data e código do pedido;*/
CREATE VIEW pedidos_realizados AS SELECT a.aluno, p.codigo, p.data, p.hora FROM pedido p
INNER JOIN aluno a ON p.aluno = a.codigo;

SELECT * FROM pedidos_realizados;
