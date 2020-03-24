use Inventario;
Select direccion
from proveedor
inner join materiaprima on proveedor.IDproveedor = materiaprima.ProveedorID and materiaprima.tipoMadera like 'c%'
inner join item on materiaprima.CodigoMP = item.MateriaPrimaID
inner join almacenaje on item.codigoItem = almacenaje.ItemID
where almacenaje.fechaEntrada >= cast('2020-03-01' AS datetime) 
and almacenaje.fechaEntrada < cast('2020-03-31' AS datetime)
