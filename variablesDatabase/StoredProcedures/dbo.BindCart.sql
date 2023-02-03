CREATE procedure BindCart @usrnm nvarchar(max)
as
select U.*,I.*,P.ProductName,P.ProductPrice,P.ProductSellingPrice,B.BrandName,C.CategoryName,S.SubCatName,P.ProductPrice-P.ProductSellingPrice as DiscAmount from UserCartTbl U
join ProductDataTbl P on P.ProductId = U.ProductId
join BrandsTbl B on B.BrandId = P.BrandId
join CategoriesTbl C on C.CategoryId = P.CategoryId
join SubCatTbl S on S.SubCatId = P.SubCategoryId
CROSS APPLY(select top 1 * from ProductImageTbl I where I.ProductId = P.ProductId order by I.ProductId desc)I
where U.UserName = @usrnm
return 0