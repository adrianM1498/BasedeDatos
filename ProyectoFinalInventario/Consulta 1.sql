use inventario;
select nombres, direccion, ID
from empleado
inner join persona on empleado.personaID = persona.CI and sueldo >= 2200;
select avg(sueldo) from empleado where sueldo = 2200;
