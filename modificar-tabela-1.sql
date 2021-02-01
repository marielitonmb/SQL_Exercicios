use cadastro;

desc pessoas;

alter table pessoas
add column profissao varchar(15);

select * from pessoas;

alter table pessoas
drop column profissao;

# colocar uma coluna numa posição específica
alter table pessoas
add column profissao varchar(15) after nome;

alter table pessoas
add codigo int first;

# modificar parâmetros de uma coluna
alter table pessoas
modify column profissao varchar(20) default '';

# modificar o nome de uma coluna
alter table pessoas
change column profissao  prof varchar(20) default '';

# modificar o nome de uma tabela
alter table pessoas
rename to gafanhotos;