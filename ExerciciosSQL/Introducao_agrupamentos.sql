select nome, cursopreferido from gafanhotos;

select nome, ano from cursos;

select gafanhotos.nome, gafanhotos.cursopreferido,
cursos.nome, cursos.ano from gafanhotos join cursos;

select g.nome, g.cursopreferido, c.nome, c.ano 
from gafanhotos as g join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, g.cursopreferido, c.nome, c.ano 
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;
