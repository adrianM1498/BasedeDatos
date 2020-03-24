use Inventario;
Select codigoItem from item
where item.tipoRefinado = 'fino' or item.tipoRefinado = 'laminado'