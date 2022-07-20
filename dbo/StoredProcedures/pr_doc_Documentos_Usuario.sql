/*  
 *** Recupera la lista de Folders a los que tiene acceso el usuario  
  
 Tipo_Permiso_Modulo = 1: Sin Acceso, 2:Solo Lectura, 3:Acceso Total  
   
 [pr_doc_Documentos_Usuario] 156,1,1,'PRIMAX'  
 go  
   
 Select * from  doc_Folder  
 Select * from fb_uea_pe  
*/  
  
  
CREATE proc [dbo].[pr_doc_Documentos_Usuario]   
 @Usuario_Id  numeric(10,0),  
 @fb_uea_pe_Id     numeric(10,0),  
 @Tipo_Permiso_Modulo numeric(10,0), --1: Sin Acceso , 2:Solo Lectura, 3:Acceso Total  
 @folder_Categoria varchar(50)  
As  
  
Set Nocount on  
  
Declare @Tipo_Permiso_Folder varchar(1), @fb_empleado_id numeric(10,0)

Select @fb_empleado_id = fb_empleado_id from sc_user where SC_USER_ID = @Usuario_Id   

  
Declare @id_folder numeric(10,0) , @out_nro_child numeric(10,0)  
Declare @Flag varchar(1)  

-- Recupera la lista de folders de la Unidad   
Select f.doc_folder_id,'' as Tipo_Permiso_Folder   
 into #temp_folder  
 from doc_folder f   
 WHERE    
  (f.fb_uea_pe_id = @fb_uea_pe_Id OR f.fb_uea_pe_id = 0)  
  AND (f.folder_categoria = @folder_Categoria)
    
Declare mycur Cursor For   
 Select f.doc_folder_id From doc_Folder f   
  Where  (f.fb_uea_pe_id = @fb_uea_pe_Id OR f.fb_uea_pe_id = 0)  
  AND (f.folder_categoria = @folder_Categoria)   
  Order by 1  
  
Open mycur   
 Fetch From mycur Into @id_folder  
  
WHILE @@FETCH_STATUS = 0  
 BEGIN  
      
	  if(@Tipo_Permiso_Modulo = 3)  
		 Set @Flag = 'P'  
	  else 
		 /*  Verifica si la carpeta no tiene permisos */  
		 if (not Exists(select * from doc_Folder_Empleado where doc_folder_id = @id_folder and is_deleted = 0))  
			set @Flag = 'L' -- Visualiza con el rol  de lector  
		 else  
		 /* La carpeta tiene permisos y debe mostrarse al usuario si tiene acceso Flag*/  
			if exists(Select * from doc_Folder_Empleado where doc_folder_id = @id_folder and  fb_empleado_id= @fb_empleado_id and tipo_permiso='P' and is_deleted=0)  
				Set @Flag = 'P'  
			else
				if not exists(Select * from doc_Folder_Empleado where doc_folder_id = @id_folder and tipo_permiso='L' and is_deleted=0)
					Set @Flag = 'L'  
				else	
					if exists(Select * from doc_Folder_Empleado where doc_folder_id = @id_folder and  fb_empleado_id = @fb_empleado_id and tipo_permiso='L' and is_deleted=0)
						Set @Flag = 'L'  
					else			  
						Set @Flag = 'X'  
           
	UPDATE #temp_folder  
		set Tipo_Permiso_Folder = @Flag      
		where doc_folder_id = @id_folder   
    
	Fetch From mycur Into @id_folder  
 END  
CLOSE mycur  
DEALLOCATE mycur  

Select * from doc_documento where doc_folder_id in (
Select doc_folder_id From #temp_folder   
   Where Tipo_Permiso_Folder <> 'X')

GO

