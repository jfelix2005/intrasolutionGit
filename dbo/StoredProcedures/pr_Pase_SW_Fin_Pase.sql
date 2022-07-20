


 
/*      
****************************************************************************************************************************************
Nombre: dbo.pr_Pase_SW_Fin_Pase
Fecha Creacion: 02/06/2020
Autor: Mauro Roque
Descripcion: store que inserta pase log con estado INSTALADO y actualiza version del pase en pm_parameter
Parametros: @ps_pase_id - ID de pase de software,
			@codigo_jira - Codigo del jira pase
			@Tipo_Pase - Tipo Pase
			@Version - NUEVA VERSION DEL PASE
			@Descripcion_Pase - descripcion del pase
			@Flag_Version_Requerida_App - 1 valida si requiere version de la app
			@Version_Requerida_App - version anterior del pase
			@Flag_Version_Requerida_Frw - 1 valida si requiere version del framework
			@Version_Requerida_Frw - version anterior del framework

tablas afectadas : pl_pase_log INSERTA , pm_parameter ACTUALIZA
Uso: exec pr_Pase_SW_Fin_Pase 1,2,'0.0.1','pase del modulo incidentes',1,'0.1.1',0,'n.a'
RESUMEN DE CAMBIOS
Fecha(dd-mm-aaaa)       Autor                  Comentarios
------------------      -----------------      -------------------------------------------------------------------------------------

**********************************************************************************************************
*/
create proc pr_Pase_SW_Fin_Pase
  @ps_pase_id   numeric(10,0),
  @codigo_jira varchar(50),
  @Tipo_Pase     varchar(32), 
  @Version  varchar(32),
  @Descripcion_Pase     varchar(1024),
  @Flag_Version_Requerida_App     int,
  @Version_Requerida_App     varchar(32),
  @Flag_Version_Requerida_Frw     int,
  @Version_Requerida_Frw    varchar(32)
as



DECLARE @Version_Actual_App varchar(32), @Version_Actual_Frw varchar(32)
DECLARE @OBSERVACION VARCHAR(500)

set @OBSERVACION = @ps_pase_id+'/'+@codigo_jira +'/'+@Tipo_Pase+'/'+@Version+'/'+@Descripcion_Pase+'/'+
					@Flag_Version_Requerida_App+'/'+@Version_Requerida_App+'/'+
					@Flag_Version_Requerida_Frw+'/'+@Version_Requerida_Frw


begin

UPDATE PM_PARAMETER
SET value=@Version
WHERE  CODE='VERSION'

-- Insert registro de pase_log y coloca estado INSTALADO.

INSERT INTO pl_pase_log
	VALUES(
	@ps_pase_id,
	@Version,
	@Descripcion_Pase,
	GETDATE(),
	null,
	@codigo_jira,
	GETDATE(),
	GETDATE(),
	@Flag_Version_Requerida_App,
	@Version_Requerida_App,
	@Tipo_Pase,
	3, --instalado
	@OBSERVACION,
	GETDATE(),
	1,
	GETDATE(),
	1,
	1,
	0)

end

GO

