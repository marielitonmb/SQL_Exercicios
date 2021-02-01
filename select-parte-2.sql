use cadastro;

select * from cursos
where nome like 'P%';

select * from cursos
where nome like '%A';

select * from cursos
where nome like '%a%';

select * from cursos
where nome not like '%a%';

update cursos set nome = 'PáOO' where idcurso = '9';

select * from cursos
where nome like 'PH%P%';

select * from cursos
where nome like 'PH%P_';

select * from cursos
where nome like 'p_P%';

select * from gafanhotos
where nome like '%silva%';

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select distinct carga from cursos
order by carga desc;

select count(*) from cursos;

select count(nome) from cursos;

select count(*) from cursos where carga > 40;

select max(carga) from cursos order by carga;

select * from cursos where ano = '2016';

select max(totaulas) from cursos where ano = '2016';

select max(totaulas) from cursos;

select min(totaulas) from cursos;

select nome, min(totaulas) from cursos where ano = '2016';

select sum(totaulas) from cursos where ano = '2016';

select avg(totaulas) from cursos;