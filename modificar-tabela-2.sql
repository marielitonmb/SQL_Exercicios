create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset = utf8;

describe cursos;

alter table cursos
add column idcursos int first;

alter table cursos
add primary key (idcursos);

create table if not exists teste(
id int,
nome varchar(10),
idade int
);

insert into teste value
('1', 'Mario', '22'),
('2', 'Luana', '12'),
('3', 'Bruno', '80');

select * from teste;

drop table if exists teste;