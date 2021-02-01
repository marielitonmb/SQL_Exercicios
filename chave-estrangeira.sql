use cadastro;

describe gafanhotos;

alter table gafanhotos
add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos (idcurso);

select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = '6' where id = '1';

# só é possível deletar algo que não tenha vínculo com outra tabela
delete from cursos where idcurso = '28';