use inventario;
select nombres, apellidos, tipoRefinado
from persona
inner join cliente on persona.CI = cliente.PersonaID
inner join item on item.ClienteID = cliente.codigoCliente
where item.tipoRefinado = 'fino' or item.tipoRefinado = 'artesanal'