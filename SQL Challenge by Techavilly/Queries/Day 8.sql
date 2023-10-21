-- Question: It's getting to the end of the year and the Briggs company wants to reward the customer who made the highest sales ever. Using the sample superstore, write a query to help the company identify this customer and category of business driving the sales. Let your output show the customer Name, the Category and the total sales. Round the total sales to the nearest whole number.

WITH CustomerSales AS (
 	SELECT
       	customer_name,
       	category,
       	ROUND(SUM(sales), 0) AS total_sales
   	FROM
	 	[Movies].[dbo].[Orders]
   	GROUP BY
	 	customer_name, category
)
SELECT TOP 1
   	customer_name AS CustomerName,
   	category AS Category,
   	total_sales AS TotalSales
FROM
   	CustomerSales
ORDER BY
   	total_sales DESC;

/* Approach:

1. To identify the customer and category responsible for the highest sales, I harnessed the power of SQL with a Common Table Expression (CTE) named "CustomerSales." This CTE is designed to aggregate the data from the "Orders" table by grouping it according to "customer_name" and "category." Here, we calculate the total sales for each customer and category. Notably, I ensured that the total sales are rounded to the nearest whole number using the ROUND function.
2. In the core part of the query, I focused on selecting just one row – the customer with the highest total sales. Achieving this entailed sorting the results in descending order of total sales using the ORDER BY clause. The top 1 row in this ordered list represents the customer and category driving the maximum sales. */
