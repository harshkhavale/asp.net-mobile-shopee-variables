CREATE TABLE [dbo].[UserCartTbl] (
    [CartId]    INT            IDENTITY (1, 1) NOT NULL,
    [ProductId] INT            NULL,
    [DateTime]  DATETIME       NULL,
    [UserName]  NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([CartId] ASC),
    CONSTRAINT [FK_UserCartTbl_ProductDataTbl] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductDataTbl] ([ProductId])
);

