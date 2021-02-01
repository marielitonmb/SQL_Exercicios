use cadastro;

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values 
(DEFAULT, 'Creuza', '1930-03-15', 'F', '62.2', '1.68', 'Brasil');

# se a ordem dos dados forem as mesmas que estão na tabela, não precisa declarar os campos
insert into pessoas values 
(DEFAULT, 'Claudio', '1975-04-22', 'M', '99.1', '2.05', 'Brasil'),
(default, 'Pedro', '1999-12-3', 'M', '87.9', '1.98', default),
(default, 'Pamela', '1987-06-7', 'F', '70.2', '1.68', 'EUA');

select * from pessoas;