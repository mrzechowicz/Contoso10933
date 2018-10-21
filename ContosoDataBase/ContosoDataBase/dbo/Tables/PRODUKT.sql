CREATE TABLE [dbo].[PRODUKT] (
    [Prd_Id]          INT             IDENTITY (1, 1) NOT NULL,
    [Prd_ProducentId] INT             NULL,
    [Prd_Nazwa]       VARCHAR (100)   NULL,
    [Prd_Kolor]       VARCHAR (100)   NULL,
    [Prd_CenaNetto]   DECIMAL (18, 2) NULL,
    [Prd_CenaBrutto]  DECIMAL (18, 2) NULL,
    [Prd_InsertDate]  DATETIME        DEFAULT (getdate()) NULL,
    [Prd_UpdateDate]  DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([Prd_Id] ASC),
    CONSTRAINT [FK_ProducentId] FOREIGN KEY ([Prd_ProducentId]) REFERENCES [dbo].[PRODUCENT] ([Prc_Id]) ON DELETE SET NULL ON UPDATE SET NULL
);

