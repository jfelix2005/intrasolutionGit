CREATE TABLE [dbo].[emp_tipo_incidencia] (
    [emp_tipo_incidencia_id] NUMERIC (10)   IDENTITY (1, 1) NOT NULL,
    [codigo]                 VARCHAR (20)   NULL,
    [nombre]                 VARCHAR (100)  NULL,
    [descripcion]            VARCHAR (2048) NULL,
    [orden]                  INT            NULL,
    [estado]                 INT            NULL,
    [created]                DATETIME       NULL,
    [created_by]             NUMERIC (10)   NULL,
    [updated]                DATETIME       NULL,
    [updated_by]             NUMERIC (10)   NULL,
    [owner_id]               NUMERIC (10)   NULL,
    [is_deleted]             NUMERIC (1)    NULL,
    CONSTRAINT [PK_emp_tipo_incidencia] PRIMARY KEY CLUSTERED ([emp_tipo_incidencia_id] ASC)
);


GO

