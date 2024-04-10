1-select name , Composer , Milliseconds from tracks

2-select FirstName , LastName , Address , City from customers

3-select name ,Milliseconds from tracks WHERE composer is null AND Milliseconds >2900000 

4-select LastName , FirstName from customers WHERE Company is null 

5-select  DISTINCT BillingCity   from invoices WHERE BillingState is NOT null 
order by BillingState DESC

6-select   Title  from albums  WHERE Title like "%of%"
order by Title ASC

7-select   t.name , g.name  from tracks t
join genres g on t.GenreId = g.GenreId 

8-select   name  from tracks t JOIN albums a on t.albumId = a.albumId
order by Title DESC
