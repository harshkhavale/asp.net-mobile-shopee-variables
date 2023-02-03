CREATE TABLE [dbo].[ProductImageTbl] (
    [ImageId]        INT            IDENTITY (1, 1) NOT NULL,
    [ProductId]      INT            NULL,
    [ImageName]      NVARCHAR (MAX) NULL,
    [ImageExtention] NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([ImageId] ASC),
    CONSTRAINT [FK_ProductImageTbl_ProductDataTbl] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductDataTbl] ([ProductId])
);

