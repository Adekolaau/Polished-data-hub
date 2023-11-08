/* 🚀 Weekends are for bonus questions, and here's how I tackled my bonus question for the #30Daysqlchallenge
Question: The Briggs company wants to ship some of their products to customers in selected cities but they want to know the average days it’ll take to deliver those items to Dallas, LOS Angeles, Seattle, and Madison. Using sample superstore data, write a query to show the average delivery days to those cities. Only show the city and average delivery days columns in your output. */

SELECT
	city AS City,
	AVG(DATEDIFF(day, order_date, ship_date)) AS AverageDeliveryDays
FROM
	[Movies].[dbo].[Orders]
WHERE
 	city IN ('Dallas', 'Los Angeles', 'Seattle', 'Madison')
GROUP BY
	city
ORDER BY
	city;

/* Approach:
1. I SELECTed the "city" column, aliasing it as "City," and calculated the average delivery days using the AVG function along with DATEDIFF to find the difference in days between the "order_date" and "ship_date."
2. To focus solely on the specified cities, I employed the WHERE clause with the IN operator.
3. Grouping my results by city, I harnessed the power of the GROUP BY clause.
4. To keep things organized, I ordered the results in ascending order by city using the ORDER BY clause. */
