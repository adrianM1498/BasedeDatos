use Inventario;
Select tipoMadera
from materiaprima
inner join proveedor on proveedor.IDproveedor = materiaprima.ProveedorID
where proveedor.nombre = 'IMPERIO'