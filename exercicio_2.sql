/*Programe o código SQL necessário para gerar a estrutura do banco de dados criado no
exercício proposto do módulo Normalização de Dados.*/
CREATE DATABASE exercicio_2;

USE exercicio_2;

CREATE TABLE tipo
(
	codigo int unsigned not null auto_increment,
    tipo varchar(50) not null,
    PRIMARY KEY (codigo)    
);

CREATE TABLE instrutor
(
	codigo int unsigned not null auto_increment,
    instrutor varchar(50) not null,
    telefone varchar(15) not null,
    PRIMARY KEY (codigo)
);

CREATE TABLE curso
(
	codigo int unsigned not null auto_increment,
    curso varchar(50) not null,
    tipo int unsigned not null,
    instrutor int unsigned not null,
    valor int unsigned not null default '0',
    PRIMARY KEY (codigo),
    CONSTRAINT fk_curso_tipo FOREIGN KEY (tipo) REFERENCES tipo (codigo),
    CONSTRAINT fk_curso_instrutor FOREIGN KEY (instrutor) REFERENCES instrutor (codigo)
);

CREATE TABLE aluno
(
	codigo int unsigned not null auto_increment,
    aluno varchar(50) not null,
    endereco varchar(100) not null,
    email varchar(50) not null,
    PRIMARY KEY (codigo) 
);

CREATE TABLE pedido
(
	codigo int unsigned not null auto_increment,
    aluno int unsigned not null,
    data date,
    hora time,
    PRIMARY KEY (codigo),
    CONSTRAINT fk_pedido_aluno FOREIGN KEY (aluno) REFERENCES aluno (codigo)
);

CREATE TABLE pedido_detalhe
(
	pedido int unsigned not null,
    curso int unsigned not null,
    valor int unsigned not null default '0',
    CONSTRAINT fk_pedido_detalhe_pedido FOREIGN KEY (pedido) REFERENCES pedido (codigo),
    CONSTRAINT fk_pedido_detalhe_curso FOREIGN KEY (curso) REFERENCES curso (codigo)
);

/*Inclua a coluna DATA_NASCIMENTO na tabela ALUNO do tipo string, de tamanho 10
caracteres;*/
ALTER TABLE aluno ADD COLUMN data_nascimento varchar(10);

/*Altere a coluna DATA_NASCIMENTO para NASCIMENTO e seu tipo de dado para DATE;*/
ALTER TABLE aluno CHANGE COLUMN data_nascimento nascimento date not null;

/*Crie um novo índice na tabela ALUNO, para o campo ALUNO;*/
CREATE INDEX alunos ON aluno (aluno);

/*Inclua o campo EMAIL na tabela INSTRUTOR, com tamanho de 100 caracteres;*/
ALTER TABLE instrutor ADD COLUMN email varchar(100);

/*Crie um novo índice na tabela CURSO, para o campo INSTRUTOR;*/
CREATE INDEX instrutores ON curso (instrutor);

/*Remova o campo EMAIL da tabela INSTRUTOR;*/
ALTER TABLE instrutor DROP COLUMN email;