use inventario;
select avg(precio)
from materiaprima
inner join item on materiaprima.CodigoMP = item.MateriaPrimaID
inner join cliente on item.ClienteID = cliente.codigoCliente
where right(cliente.personaID,1) = '5'