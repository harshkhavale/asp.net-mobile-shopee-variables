CREATE procedure SearchFunction @find nvarchar(max)
as
SET @find = '%' + @find + '%'
select *,P.ProductPrice-P.ProductSellingPrice as DiscAmount from ProductDataTbl P
join BrandsTbl B on B.BrandId = P.BrandId
join CategoriesTbl C on C.CategoryId = P.CategoryId
join SubCatTbl S on S.SubCatId = P.SubCategoryId
CROSS APPLY(select top 1 * from ProductImageTbl I where I.ProductId = P.ProductId order by I.ProductId desc)I
WHERE P.ProductHighlight1 LIKE @find or P.ProductHighlight2 LIKE @find or P.ProductName LIKE @find or B.BrandId LIKE @find or C.CategoryName LIKE @find
return 0;