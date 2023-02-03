CREATE TABLE [dbo].[ProductReviewTbl] (
    [ReviewId]  INT            IDENTITY (1, 1) NOT NULL,
    [ProductId] INT            NULL,
    [Review]    NVARCHAR (MAX) NULL,
    [UserName]  NVARCHAR (MAX) NULL,
    [DateTime]  DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ReviewId] ASC),
    CONSTRAINT [FK_ProductReviewTbl_ProductDataTbl] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[ProductDataTbl] ([ProductId])
);

