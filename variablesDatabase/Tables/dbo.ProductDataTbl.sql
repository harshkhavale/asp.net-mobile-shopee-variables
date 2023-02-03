CREATE TABLE [dbo].[ProductDataTbl] (
    [ProductId]           INT            IDENTITY (1, 1) NOT NULL,
    [ProductName]         NVARCHAR (MAX) NULL,
    [ProductPrice]        MONEY          NULL,
    [ProductSellingPrice] MONEY          NULL,
    [ProductStock]        INT            NULL,
    [ProductDetails]      NVARCHAR (MAX) NULL,
    [ProductDescription]  NVARCHAR (MAX) NULL,
    [ProductHighlight1]   NVARCHAR (MAX) NULL,
    [ProductHighlight2]   NVARCHAR (MAX) NULL,
    [30DaysReturn]        INT            NULL,
    [FreeDelivery]        INT            NULL,
    [CashOnDelivery]      INT            NULL,
    [BrandId]             INT            NULL,
    [CategoryId]          INT            NULL,
    [SubCategoryId]       INT            NULL,
    PRIMARY KEY CLUSTERED ([ProductId] ASC),
    CONSTRAINT [FK_ProductDataTbl_BrandsTbl] FOREIGN KEY ([BrandId]) REFERENCES [dbo].[BrandsTbl] ([BrandId]),
    CONSTRAINT [FK_ProductDataTbl_CategoriesTbl] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[CategoriesTbl] ([CategoryId]),
    CONSTRAINT [FK_ProductDataTbl_SubCatTbl] FOREIGN KEY ([SubCategoryId]) REFERENCES [dbo].[SubCatTbl] ([SubCatId])
);

