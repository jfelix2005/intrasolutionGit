CREATE TABLE [dbo].[inc_informe_preliminar_accion] (
    [inc_informe_preliminar_accion_id] NUMERIC (10)  IDENTITY (1, 1) NOT NULL,
    [inc_informe_preliminar_id]        NUMERIC (10)  NULL,
    [g_tipo_accion_correctiva_id]      NUMERIC (10)  NULL,
    [tipo_accion_correctiva_nombre]    VARCHAR (200) NULL,
    [codigo]                           VARCHAR (50)  NULL,
    [comentario_accion]                VARCHAR (MAX) NULL,
    [vc_UsuRegistro]                   VARCHAR (50)  NULL,
    [created]                          DATETIME      NULL,
    [created_by]                       NUMERIC (10)  NULL,
    [updated]                          DATETIME      NULL,
    [updated_by]                       NUMERIC (10)  NULL,
    [owner_id]                         NUMERIC (10)  NULL,
    [is_deleted]                       NUMERIC (10)  NULL,
    CONSTRAINT [inc_informe_preliminar_accion_id] PRIMARY KEY NONCLUSTERED ([inc_informe_preliminar_accion_id] ASC) WITH (ALLOW_PAGE_LOCKS = OFF, ALLOW_ROW_LOCKS = OFF)
);


GO

