CREATE TABLE [dbo].[fnz_categoria_egreso] (
    [fnz_categoria_egreso_id] NUMERIC (10)   IDENTITY (1, 1) NOT NULL,
    [codigo]                  VARCHAR (30)   NULL,
    [nombre]                  VARCHAR (200)  NULL,
    [observaciones]           VARCHAR (1024) NULL,
    [estado]                  INT            NULL,
    [fb_empresa_id]           NUMERIC (10)   NULL,
    [created]                 DATETIME       NULL,
    [created_by]              NUMERIC (10)   NULL,
    [updated]                 DATETIME       NULL,
    [updated_by]              NUMERIC (10)   NULL,
    [owner_id]                NUMERIC (10)   NULL,
    [is_deleted]              NUMERIC (1)    NULL,
    CONSTRAINT [PK_fnz_categoria_egreso] PRIMARY KEY CLUSTERED ([fnz_categoria_egreso_id] ASC)
);


GO

