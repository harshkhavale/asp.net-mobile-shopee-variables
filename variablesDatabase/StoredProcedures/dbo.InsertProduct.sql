create procedure InsertProduct(
    @ProductName         NVARCHAR (MAX),
    @ProductPrice        MONEY         ,
    @ProductSellingPrice MONEY         ,
    @ProductStock        INT           ,
    @ProductDetails      NVARCHAR (MAX),
    @ProductDescription  NVARCHAR (MAX),
    @ProductHighlight1   NVARCHAR (MAX),
    @ProductHighlight2   NVARCHAR (MAX),
    @30DaysReturn        INT           ,
    @FreeDelivery        INT           ,
    @CashOnDelivery      INT           ,
    @BrandId             INT           ,
    @CategoryId          INT           ,
    @SubCategoryId       INT           
)
as
insert into ProductDataTbl
values( @ProductName,
    @ProductPrice    ,   
    @ProductSellingPrice,
    @ProductStock       ,
    @ProductDetails     ,
    @ProductDescription ,
    @ProductHighlight1  ,
    @ProductHighlight2  ,
    @30DaysReturn       ,
    @FreeDelivery       ,
    @CashOnDelivery     ,
    @BrandId            ,
    @CategoryId         ,
    @SubCategoryId 
    )
select SCOPE_IDENTITY()
Return 0;