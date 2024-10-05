Declare cursorProduct cursor for

	select [ProductID],[ProductName] from Products
	order by [ProductID]
Declare @productID int
Declare @productName nvarchar(40)
open cursorProduct
fetch next from cursorProduct into @productID,@productName
/*@@ la bien toan cuc*/
while @@FETCH_STATUS = 0
/*ket thuc bien*/
begin
	print 'Id:' + Cast(@productID as NVARCHAR)
	print 'TITLE:' + @productName
	fetch next from cursorProduct into @productID,@productName
end

close cursorProduct
deallocate cursorProduct