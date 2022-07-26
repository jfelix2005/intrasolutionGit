CREATE TABLE [dbo].[FB_LANGUAGE] (
    [FB_LANGUAGE_ID] NUMERIC (10)  IDENTITY (1, 1) NOT NULL,
    [CODE]           NVARCHAR (50) NULL,
    [NAME]           NVARCHAR (50) NULL,
    [IS_DELETED]     NUMERIC (1)   NULL,
    [CREATED]        DATETIME      NULL,
    [UPDATED]        DATETIME      NULL,
    [CREATED_BY]     NUMERIC (10)  NULL,
    [UPDATED_BY]     NUMERIC (10)  NULL,
    [OWNER_ID]       NUMERIC (10)  NULL,
    CONSTRAINT [PK_FB_LANGUAGE] PRIMARY KEY CLUSTERED ([FB_LANGUAGE_ID] ASC)
);


GO

