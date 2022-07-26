CREATE TABLE [dbo].[sol_instalacion] (
    [sol_instalacion_id]        NUMERIC (10)  IDENTITY (1, 1) NOT NULL,
    [sol_solicitud_id]          NUMERIC (10)  NULL,
    [fb_cliente_id]             NUMERIC (10)  NULL,
    [pry_proyecto_id]           NUMERIC (10)  NULL,
    [sol_datos_id]              NUMERIC (10)  NULL,
    [estado]                    NUMERIC (1)   NULL,
    [created]                   DATETIME      NULL,
    [created_by]                NUMERIC (10)  NULL,
    [updated]                   DATETIME      NULL,
    [updated_by]                NUMERIC (10)  NULL,
    [owner_id]                  NUMERIC (10)  NULL,
    [is_deleted]                NUMERIC (1)   NULL,
    [descripcion]               VARCHAR (MAX) NULL,
    [fecha_solicitud]           DATETIME      NULL,
    [fb_solicitante_id]         NUMERIC (10)  NULL,
    [fb_responsable_id]         NUMERIC (10)  NULL,
    [fecha_creacion]            DATETIME      NULL,
    [aplicacion_web]            NUMERIC (1)   NULL,
    [base_datos]                NUMERIC (1)   NULL,
    [otros]                     NUMERIC (1)   NULL,
    [sol_estado_instalacion_id] NUMERIC (10)  NULL,
    [ubicacion]                 VARCHAR (500) NULL,
    [fb_eliminado_por_id]       NUMERIC (10)  NULL,
    [fecha_eliminacion]         DATETIME      NULL,
    [observacion]               VARCHAR (MAX) NULL,
    [codigo_app]                VARCHAR (200) NULL,
    [servidor_app]              VARCHAR (500) NULL,
    [ruta_war]                  VARCHAR (500) NULL,
    [ruta_asp]                  VARCHAR (500) NULL,
    [ruta_docs]                 VARCHAR (500) NULL,
    [url]                       VARCHAR (MAX) NULL,
    [usuario_app]               VARCHAR (200) NULL,
    [password_app]              VARCHAR (200) NULL,
    [ruta_conexion]             VARCHAR (500) NULL,
    [codigo_bd]                 VARCHAR (200) NULL,
    [servidor_bd]               VARCHAR (200) NULL,
    [nombre_bd]                 VARCHAR (200) NULL,
    [usuario_bd]                VARCHAR (200) NULL,
    [password_bd]               VARCHAR (200) NULL,
    CONSTRAINT [PK_sol_instalacion_id] PRIMARY KEY CLUSTERED ([sol_instalacion_id] ASC)
);


GO

