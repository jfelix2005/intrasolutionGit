CREATE TABLE [dbo].[SC_TABLE_FIELD] (
    [SC_TABLE_FIELD_ID] NUMERIC (10)    NOT NULL,
    [SC_TABLE_ID]       NUMERIC (10)    NULL,
    [JSON_CONFIG]       NVARCHAR (1500) NULL,
    [NAME]              NVARCHAR (100)  NULL,
    [IS_DELETED]        NUMERIC (1)     NULL,
    [CREATED]           DATETIME        NULL,
    [UPDATED]           DATETIME        NULL,
    [CODE]              NVARCHAR (100)  NULL,
    [CREATED_BY]        NUMERIC (10)    NULL,
    [UPDATED_BY]        NUMERIC (10)    NULL,
    [OWNER_ID]          NUMERIC (10)    NULL,
    CONSTRAINT [PK_SC_TABLE_FIELD] PRIMARY KEY CLUSTERED ([SC_TABLE_FIELD_ID] ASC)
);


GO

