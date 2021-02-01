USE exercicio_2;

/*Crie comandos SQL para inserir os dados apresentados a seguir:*/

/*Tabela TIPO:
1, Banco de dados
2, Programação
3, Modelagem de dados*/
INSERT INTO tipo (codigo, tipo) VALUES (1, 'Banco de dados');
INSERT INTO tipo (codigo, tipo) VALUES (2, 'Programação');
INSERT INTO tipo (codigo, tipo) VALUES (3, 'Modelagem de dados');
SELECT * FROM tipo;

/*Tabela INSTRUTOR:
1, André Milani, 1111-1111
2, Carlos Tosin, 1212-1212*/
INSERT INTO instrutor (codigo, instrutor, telefone) VALUES (1, 'André Milani', '1111-1111');
INSERT INTO instrutor (codigo, instrutor, telefone) VALUES (2, 'Carlos Tosin', '1212-1212');
SELECT * FROM instrutor;

/*Tabela CURSO:
1, Java Fundamentos, 2, 2, 270
2, Java Avançado, 2, 2, 330
3, SQL Completo, 1, 1, 170
4, Php Básico, 2, 1, 270*/
INSERT INTO curso (codigo, curso, tipo, instrutor, valor) VALUES (1, 'Java Fundamentos', 2, 2, 270);
INSERT INTO curso (codigo, curso, tipo, instrutor, valor) VALUES (2, 'Java Avançado', 2, 2, 330);
INSERT INTO curso (codigo, curso, tipo, instrutor, valor) VALUES (3, 'SQL Completo', 1, 1, 170);
INSERT INTO curso (codigo, curso, tipo, instrutor, valor) VALUES (4, 'Php Básico', 2, 1, 270);
SELECT * FROM curso;

/*Tabela ALUNO:
1, José, Rua XV de Novembro 72, jose@softblue.com.br
2, Wagner, Av. Paulista, wagner@softblue.com.br
3, Emílio, Rua Lajes 103, ap: 701, emilio@softblue.com.br
4, Cris, Rua Tauney 22, cris@softblue.com.br
5, Regina, Rua Salles 305, regina@softblue.com.br
6, Fernando, Av. Central 30, fernando@softblue.com.br*/
INSERT INTO aluno (codigo, aluno, endereco, email, nascimento) VALUES (1, 'José', 'Rua XV de Novembro 72', 'jose@softblue.com.br', '1990-02-15');
INSERT INTO aluno (codigo, aluno, endereco, email, nascimento) VALUES (2, 'Wagner', 'Av. Paulista', 'wagner@softblue.com.br', '1999-10-01');
INSERT INTO aluno (codigo, aluno, endereco, email, nascimento) VALUES (3, 'Emílio', 'Rua Lajes 103, ap: 701', 'emilio@softblue.com.br', '2003-12-23');
INSERT INTO aluno (codigo, aluno, endereco, email, nascimento) VALUES (4, 'Cris', 'Rua Tauney 22', 'cris@softblue.com.br', '1997-05-06');
INSERT INTO aluno (codigo, aluno, endereco, email, nascimento) VALUES (5, 'Regina', 'Rua Salles 305', 'regina@softblue.com.br', '1995-07-14');
INSERT INTO aluno (codigo, aluno, endereco, email, nascimento) VALUES (6, 'Fernando', 'Av. Central 30', 'fernando@softblue.com.br', '2004-03-29');
SELECT * FROM aluno;

/*Tabela PEDIDO:
1, 2, 15/04/2010, 11:23:32
2, 2, 15/04/2010, 14:36:21
3, 3, 16/04/2010, 11:17:45
4, 4, 17/04/2010, 14:27:22
5, 5, 18/04/2010, 11:18:19
6, 6, 19/04/2010, 13:47:35
7, 6, 20/04/2010, 18:13:44*/
INSERT INTO pedido (codigo, aluno, data, hora) VALUES (1, 2, '2010-04-15', '11:23:32');
INSERT INTO pedido (codigo, aluno, data, hora) VALUES (2, 2, '2010-04-15', '14:36:21');
INSERT INTO pedido (codigo, aluno, data, hora) VALUES (3, 3, '2010-04-16', '11:17:45');
INSERT INTO pedido (codigo, aluno, data, hora) VALUES (4, 4, '2010-04-17', '14:27:22');
INSERT INTO pedido (codigo, aluno, data, hora) VALUES (5, 5, '2010-04-18', '11:18:19');
INSERT INTO pedido (codigo, aluno, data, hora) VALUES (6, 6, '2010-04-19', '13:47:35');
INSERT INTO pedido (codigo, aluno, data, hora) VALUES (7, 6, '2010-04-20', '18:13:44');
SELECT * FROM pedido;

/*Tabela PEDIDO_DETALHE:
1, 1, 270
1, 2, 330
2, 1, 270
2, 2, 330
2, 3, 170
3, 4, 270
4, 2, 330
4, 4, 270
5, 3, 170
6, 3, 170
7, 4, 270*/
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (1, 1, 270);
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (1, 2, 330);
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (2, 1, 270);
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (2, 2, 330);
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (2, 3, 170);
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (3, 4, 270);
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (4, 2, 330);
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (4, 4, 270);
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (5, 3, 170);
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (6, 3, 170);
INSERT INTO pedido_detalhe (pedido, curso, valor) VALUES (7, 4, 270);
SELECT * FROM pedido_detalhe;

/*Exibir todas as informações de todos os alunos;*/
SELECT * FROM aluno;

/*Exibir somente o título de cada curso da Softblue;*/
SELECT curso FROM curso;
SELECT * FROM curso WHERE curso = 'SQL Completo';

/*Exibir somente o título e valor de cada curso da Softblue cujo preço seja maior que 200;*/
SELECT * FROM curso WHERE valor > 200;

/*Exibir somente o título e valor de cada curso da Softblue cujo preço seja maior que 200 e menor que 300;*/
SELECT curso, valor FROM curso WHERE valor > 200 AND valor < 300;

/*Exibir as informações da tabela PEDIDOS para os pedidos realizados entre 15/04/2010 e 18/04/2010;*/
SELECT * FROM pedido WHERE data BETWEEN '2010-04-15' AND '2010-04-18';

/*Exibir as informações da tabela PEDIDOS para os pedidos realizados na data de 15/04/2010;*/
SELECT * FROM pedido WHERE data = '2010-04-15';

/*Altere o endereço do aluno JOSÉ para 'Av. Brasil 778';*/
UPDATE aluno SET endereco = 'Av. Brasil 778' WHERE codigo = 1;

/*Altere o e-mail do aluno CRIS para 'cristiano@softblue.com.br';*/
UPDATE aluno SET email = 'cristiano@softblue.com.br' WHERE aluno = 'Cris';

/*Aumente em 10% o valor dos cursos abaixo de 300;*/
UPDATE curso SET valor = valor * 1.1 WHERE valor < 300;

/*Altere o nome do curso de Php Básico para Php Fundamentos;*/
UPDATE curso SET curso = 'Php Fundamentos' WHERE codigo = 4;