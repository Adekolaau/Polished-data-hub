-- Question: Your company received a lot of bad reviews about some of your products lately and the management wants to see which products they are and how many have been returned so far. Using the Orders and returns table, write a query to see the top 5 most returned products from the company. */

SELECT TOP 5 O.[Product Name], O.[Product ID], COUNT(R."Order ID") AS Product_count
FROM [Movies].[dbo].[Orders$] AS O
INNER JOIN [Movies].[dbo].[Returns] AS R ON O.[Order ID] = R.[Order ID]
WHERE Returned = 'Yes'
GROUP BY O.[Product Name], O.[Product ID]
ORDER BY Product_count DESC;

/* Approach:
1. I accessed the SQL database, particularly the "Movies" database, which contained the "Orders" and "Returns" tables.
2. I chose to retrieve the top 5 products that have been returned the most by using the 'SELECT TOP 5' clause.
3. To identify the products, I specifically selected the "Product Name" and "Product ID" columns from the "Orders" table and counted the number of times each product has been returned. I used the COUNT(R."Order ID") expression and aliased it as "Product_count."
4. In the process of combining information from the "Orders" and "Returns" tables, I employed an inner join operation. The join was based on the common "Order ID" column, connecting orders to their corresponding returns.
5. I narrowed down the results to only include cases where products were returned ("Returned = 'Yes'"). This filter helped isolate the products with returns.
6. To aggregate the data, I grouped the results by both the "Product Name" and "Product ID" columns. This allowed me to count the number of returns for each product, ensuring that each product was treated as a distinct entity in the analysis.
7. In order to present the results from highest to lowest return count, I employed the 'ORDER BY' clause, specifying "Product_count DESC" to achieve this descending order.

By following these steps, I generated a list of the top 5 products that had the highest number of returns, enabling the identification of products that were frequently returned by customers in the past.

