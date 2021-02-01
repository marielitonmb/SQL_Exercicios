use cadastro;

select distinct carga from cursos
order by carga;

select carga from cursos
group by carga;

select carga, count(nome) from cursos
group by carga;

select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select carga, count(nome) from cursos where totaulas = 30
group by carga;

select ano, count(*) from cursos
group by ano
having count(ano) >= 5 # HAVING (equivale ao WHERE) só funciona com o mesmo campo usado no GROUP BY
order by count(*) desc;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);