use Inventario;
Select fechaEntrada
From almacenaje
inner join item on item.codigoItem = almacenaje.ItemID
inner join materiaprima on item.MateriaPrimaID = materiaprima.CodigoMP and materiaprima.tipoMadera like '%e'
where item.tipoRefinado = 'fino' or item.tipoRefinado = 'laminado' 
