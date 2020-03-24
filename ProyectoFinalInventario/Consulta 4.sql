use inventario;
select * from factura
inner join datospedido on datospedido.FacturaID = factura.IDfactura
inner join almacenaje on datospedido.AlmacenjeID = almacenaje.IDalmacenaje 
where almacenaje.fechaEntrada >= cast('2020-03-01' AS datetime) 
and almacenaje.fechaSalida < cast('2020-03-31' AS datetime)

 