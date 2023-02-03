create procedure BindAllProducts
as
select P.*,I.*,B.BrandName,C.CategoryName,S.SubCatName,P.ProductPrice-P.ProductSellingPrice as DiscAmount from ProductDataTbl P
join BrandsTbl B on B.BrandId = P.BrandId
join CategoriesTbl C on C.CategoryId = P.CategoryId
join SubCatTbl S on S.SubCatId = P.SubCategoryId
CROSS APPLY(select top 1 * from ProductImageTbl I where I.ProductId = P.ProductId order by I.ProductId desc)I
order by P.ProductId desc
return 0