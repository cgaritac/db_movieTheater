/*Consulta 1*/

Select c.Nombre_Cine, t.Horario_Peli, p.Genero_Peli, s.Sala_Peli, s.Precio_Cine
from Películas as p 
join Tand_Cine_Peli as tdcp on p.ID_Peli=tdcp.ID_Peli
join Tandas as t on tdcp.ID_Tanda=t.ID_Tanda
join Cines as c on tdcp.ID_Cine=c.ID_Cine
join Sal_Cine_Peli as slcp on c.ID_Cine=slcp.ID_Cine and p.ID_Peli=slcp.ID_Peli
join Salas as s on slcp.ID_Sala=s.ID_Sala
where p.Nombre_Peli like '%poca%'

/*Consulta 2*/

Select p.Nombre_Peli
from Películas as p 
join Cine_Peli as cp on p.ID_Peli=cp.ID_Peli
join Cines as c on cp.ID_Cine=c.ID_Cine
where c.Nombre_Cine like '%sol%'
group by p.Nombre_Peli

/*Consulta 3*/

Select p.Nombre_Peli, t.Horario_Peli, p.Director_Peli, pr.Protagonista_Peli, p.Genero_Peli, p.Clasificación_Peli, c.Dirección_Cine, c.Nombre_Cine, c.Teléfono_Cine, s.Precio_Cine, s.Sala_Peli
from Cines as c
join Cine_Peli as cp on c.ID_Cine=cp.ID_Cine
join Películas as p on cp.ID_Peli=p.ID_Peli
join Tand_Cine_Peli as tdcp on c.ID_Cine=tdcp.ID_Cine and p.ID_Peli=tdcp.ID_Peli
join Tandas as t on tdcp.ID_Tanda=t.ID_Tanda 
join Prot_Peli as pt on p.ID_Peli=pt.ID_Peli
join Protagonistas as pr on pt.ID_Actor=pr.ID_Actor
join Sal_Cine_Peli as slcp on c.ID_Cine=slcp.ID_Cine and p.ID_Peli=slcp.ID_Peli
join Salas as s on slcp.ID_Sala=s.ID_Sala
where c.Nombre_Cine like '%centro%'

