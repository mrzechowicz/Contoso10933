CREATE TABLE [dbo].[PRODUCENT] (
    [Prc_Id]               INT             IDENTITY (1, 1) NOT NULL,
    [Prc_Kod]              VARCHAR (20)    NULL,
    [Prc_Nazwa]            VARCHAR (200)   NULL,
    [Prc_DataZalozenia]    DATE            NULL,
    [Prc_Kraj]             VARCHAR (100)   NULL,
    [Prc_KrajISO]          VARCHAR (5)     NULL,
    [Prc_IloscPracownikow] INT             NULL,
    [Prc_KapitalZakladowy] DECIMAL (18, 2) NULL,
    [Prc_InsertDate]       DATETIME        DEFAULT (getdate()) NULL,
    [Prc_UpdateDate]       DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([Prc_Id] ASC)
);

