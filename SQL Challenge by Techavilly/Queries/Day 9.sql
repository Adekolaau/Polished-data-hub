-- Question: The Briggs Company has 3 categories of business generating revenue for the company. They want to know which of them is driving the business. Write a query to show the total sales and percentage contribution by each category. Show category, Total Sales and Percentage contribution columns in your output.

SELECT
	category AS Category,
   	ROUND(SUM(sales), 2) AS TotalSales,
   	CONCAT(ROUND((SUM(sales) / (SELECT SUM(sales) FROM [Movies].[dbo].[Orders])) * 100, 2), '%') AS PercentageContribution
FROM
   	[Movies].[dbo].[Orders]
GROUP BY
   	category
ORDER BY
   	PercentageContribution DESC;

/* Approach:

I SELECTed the "category" column as "Category."
2. I used the SUM function to calculate the total sales for each category.
3. I calculated the percentage contribution for each category by dividing the total sales of the category by the overall total sales (obtained using a subquery) and multiplying by 100.
4. I then GROUPed the results by the "category" using the GROUP BY clause.
5. Finally, I ORDERed the results by the "PercentageContribution" in descending order (highest to lowest) using the ORDER BY clause.
