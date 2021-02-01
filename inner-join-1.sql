select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select g.nome, g.cursopreferido, c.nome, c.ano
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, c.nome, c.ano
from gafanhotos as g join cursos as c # funciona também sem escrever "inner"
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;

select g.nome, c.nome, c.ano
from gafanhotos as g right join cursos as c # funciona sem escrever o "outer"
on c.idcurso = g.cursopreferido;