-- Question: Now that you’ve identified phones as the business driver in terms of revenue. The company wants to know the total “phones sales” by year to understand how “each year” performed. As the Analyst, please help them to show the breakdown of the total sales by year in descending order. Let your output show only Total sales and sales year column.

SELECT
	YEAR(order_date) AS SalesYear,
	ROUND(SUM(sales), 2) AS TotalSales
FROM
   	[Movies].[dbo].[Orders]
WHERE
   	sub_category = 'Phones'
GROUP BY
   	YEAR(order_date)
ORDER BY
   	SalesYear DESC;

/* Approach:

1. I extracted the year from the "order_date" using the 'YEAR' function and alias it as "SalesYear."
2. I calculated the total sales for the "Phones" sub-category using the 'SUM' function and alias it as "TotalSales."
3. I filtered the results to include only orders in the "Phones" sub-category using the 'WHERE' clause.
4. I grouped the results by the "SalesYear" using the 'GROUP BY' clause to get the total sales for each year.
5. Finally, I ordered the results by "SalesYear" in descending order using the 'ORDER BY' clause. */
