CREATE TABLE [dbo].[inc_prx_factor_posibilidad] (
    [iperc_prx_factor_posibilidad_id] NUMERIC (10)  IDENTITY (1, 1) NOT NULL,
    [codigo]                          VARCHAR (50)  NULL,
    [nombre]                          VARCHAR (100) NULL,
    [descripcion]                     VARCHAR (500) NULL,
    [estado]                          NUMERIC (1)   NULL,
    [created]                         DATETIME      NULL,
    [created_by]                      NUMERIC (10)  NULL,
    [updated]                         DATETIME      NULL,
    [updated_by]                      NUMERIC (10)  NULL,
    [owner_id]                        NUMERIC (10)  NULL,
    [is_deleted]                      NUMERIC (1)   NULL,
    CONSTRAINT [PK_inc_prx_factor_posibilidad] PRIMARY KEY CLUSTERED ([iperc_prx_factor_posibilidad_id] ASC)
);


GO

