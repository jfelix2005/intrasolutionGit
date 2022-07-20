/*
Creado Por : Jorge Felix
Fecha Creacion : 16/02/2022
Descripcion :	--Retorna todos los empleados asignados a una gerencia
				--si se envia como parametro el numero 0 retornara todos los empleados
Para: aplicacion movil nodejs
*/
create proc [dbo].[pr_movil_lista_empleado]

as
select fb_uea_pe_id,fb_empleado_id,nombreCompleto,* 
from fb_empleado

GO

