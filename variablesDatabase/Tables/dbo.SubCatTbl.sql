CREATE TABLE [dbo].[SubCatTbl] (
    [SubCatId]   INT            IDENTITY (1, 1) NOT NULL,
    [CategoryId] INT            NULL,
    [SubCatName] NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([SubCatId] ASC),
    CONSTRAINT [FK_SubCatTbl_CategoryiesTbl] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[CategoriesTbl] ([CategoryId])
);

