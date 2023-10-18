# Introduction to My Techavilly SQL Challenge Journey

I am excited to embark on this 30-day SQL challenge organized by Techavilly. Over the next month, I'll be tackling daily SQL questions, striving to find elegant and efficient solutions, and sharing my queries along with the results with all of you.

SQL is a powerful tool for managing and querying data, and I believe this challenge will be a great opportunity to sharpen my skills and learn from the diverse community of participants here on Techavilly.

Let's dive in and make the most of this challenge together! 🚀

**Day 1** -- Using the Movie Data, write a query to show the titles and movies released in 2017 whose vote count is more than 15 and runtime is more than 100

SELECT 

	original_title, release_date

FROM 

	[Movies].[dbo].[Movie Data]

WHERE 

	YEAR(release_date) = 2017
	AND vote_count > 15
	AND runtime > 100;

![Screenshot 2023-10-09 155326](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/f6411548-a779-4a24-abf3-a5e6852fbda3)

**_Approach:_**

**SELECT** Statement: Begin by specifying what needs to be displayed, which, in this case, is the 'titles' and 'movies' that meet the given criteria.

**FROM** Statement: Use the FROM statement to identify the source table, which is the "Movie Data" table in the "Movies" database.

**WHERE** Statement: Apply filtering conditions using the WHERE statement. Break down the WHERE statement into multiple conditions to ensure that only the desired results are returned:

- Use the YEAR() function to extract the year from the "release_date" column.
- Check if the extracted year is equal to 2017.
- Use the AND operator to combine multiple conditions, ensuring that all requirements are met.
- Filter movies with a "vote_count" greater than 15 and a "runtime" greater than 100 minutes.

**Day 2** -- Using the Bread Data, write a query to show how many breads were ordered.

SELECT 

	COUNT(*) AS total_bread_ordered

FROM 
	
 	[Bread Data].[dbo].[customer_orders];

![Screenshot 2023-10-11 175032](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/e1b8604d-e932-480d-8f63-3b8cabab1c34)

**_Approach:_**

The bread_id column, represent the 2 type of bread which is available, so for every order (quantity ordered), it is counted as 1, even if a single customer orders another of the same bread or 
a different bread, it is represented in a different row with the same customer_id, so in order to know how many breads were ordered, the best approach is to count the total rows available. 

**Day 3** -- Write a query to show how many successful orders were delivered by each runner.

SELECT 

	r.runner_id,
	COUNT(ro.order_id) AS successful_orders

FROM 
	
 	[Bread Data].[dbo].[runners] AS r
	INNER JOIN [Bread Data].[dbo].[runner_orders] AS ro ON r.runner_id = ro.runner_id

WHERE 
	
 	ro.cancellation IS NULL

GROUP BY 
	
 	r.runner_id

ORDER BY 

	r.runner_id;

![Screenshot 2023-10-11 175606](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/f259f377-5a40-4d01-b281-49618f9329d7)

**_Approach:_**

I started by using SQL JOIN statements to bring together the relevant data from the "runners" and "runner_orders" tables. This is essential for linking the information needed to determine the number of successful orders for each runner. Next, I applied a WHERE clause to filter the combined data, ensuring that only successful orders are considered. This filter checks for rows where the "cancellation" column in the "runner_orders" table is NULL, effectively excluding any canceled or failed orders from the count. I employed the SQL GROUP BY clause to group the filtered data by "runner_id". With the data grouped by "runner_id," I used the COUNT function to calculate the 
number of successful orders for each runner. This count provides the specific metric we're interested in.

**Day 4** -- Using the Movie Data, write a query to show the top 10 movie titles whose language is English and French and the budget is more than 1,000,000

SELECT TOP 10 
	
 	title

FROM 

 	[Movies].[dbo].[Movie Data]

WHERE 
	
 	(original_language = 'en' OR original_language = 'fr') 
	AND budget > 1000000

![Screenshot 2023-10-12 134750](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/ca39e285-19c1-429c-a29c-346c2ef6b8e6)

**_Approach:_**

1. I began by using the SELECT statement to specify that I want to capture the top 10 movie titles.
2. Then, I used the FROM statement to specify the data source, which is the "Movie Data" table within the "Movies" database.
3. To filter the results, I employed the WHERE clause to ensure that the "original_language" is either English ('en') or French ('fr') and that the budget is greater than 1,000,000.
4. Finally, I used the ORDER BY clause to sort the results by budget in descending order, ensuring that the movies with the highest budgets appear at the top of the list.

**Day 5** -- Using the Bread Data, write a query to show the number of each type of bread delivered.

SELECT
	
 	BN.bread_name AS Bread_Name,
	COUNT(RO.order_id) AS bread_deliveries

FROM
	
 	[Bread Data].[dbo].[customer_orders] AS CO

JOIN
	
 	[Bread Data].[dbo].[bread_names] AS BN ON CO.bread_id = BN.bread_id

LEFT JOIN
	
 	[Bread Data].[dbo].[runner_orders] AS RO ON CO.order_id = RO.order_id

WHERE
	
 	RO.cancellation IS NULL

GROUP BY
	
 	BN.bread_name

ORDER BY

	bread_deliveries DESC;

![Screenshot 2023-10-13 100123](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/38f16eeb-f794-4add-b828-84ba3000437b)

**Approach:**
1. I SELECT the bread names from the "bread_names" table (aliased as "BN").
2. I use a JOIN operation to combine the "customer_orders" and "bread_names" tables
based on the "bread_id" column.
3. I then use a LEFT JOIN operation to combine the result with the "runner_orders" 
table based on the "order_id" column. This was used to filter out canceled orders.
4. I filtered the results to include only orders with a NULL cancellation status 
in the "runner_orders" table, which indicates that the order was delivered.
5. I group the results by bread name.
6. I count the number of deliveries for each bread type.
7. Finally, I order the results by the number of deliveries in descending order.

**Bonus** -- 🚀 Weekends are for bonus questions, and here's how I tackled my bonus question for the #30Daysqlchallenge

Question: The Briggs company wants to ship some of their products to customers in selected cities but they want to know the average days it’ll take to deliver those items to Dallas, LOS Angeles, Seattle, and Madison. Using sample superstore data, write a query to show the average delivery days to those cities. Only show the city and average delivery days columns in your output.

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

 ![Screenshot 2023-10-14 111502](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/9fb0956f-a6f0-4df9-a03e-e33c67a3b780)

**Approach:**

1. I SELECTed the "city" column, aliasing it as "City," and calculated the average delivery days using the AVG function along with DATEDIFF to find the difference in days between the "order_date" and "ship_date."
2. To focus solely on the specified cities, I employed the WHERE clause with the IN operator.
3. Grouping my results by city, I harnessed the power of the GROUP BY clause.
4. To keep things organized, I ordered the results in ascending order by city using the ORDER BY clause.

**Day 8** -- It's getting to the end of the year and the Briggs company wants to reward the customer who made the highest sales ever. Using the sample superstore, write a query to help the company identify this customer and category of business driving the sales. Let your output show the customer Name, the Category and the total sales. Round the total sales to the nearest whole number.

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

![Screenshot 2023-10-16 104724](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/b2e730a0-84eb-4d3d-a942-132182f1214c)

**Approach:**

1. To identify the customer and category responsible for the highest sales, I harnessed the power of SQL with a Common Table Expression (CTE) named "CustomerSales." This CTE is designed to aggregate the data from the "Orders" table by grouping it according to "customer_name" and "category." Here, we calculate the total sales for each customer and category. Notably, I ensured that the total sales are rounded to the nearest whole number using the ROUND function.
2. In the core part of the query, I focused on selecting just one row – the customer with the highest total sales. Achieving this entailed sorting the results in descending order of total sales using the ORDER BY clause. The top 1 row in this ordered list represents the customer and category driving the maximum sales.

**Day 9** -- The Briggs Company has 3 categories of business generating revenue for the company. They want to know which of them is driving the business. Write a query to show the total sales and percentage contribution by each category. Show category, Total Sales and Percentage contribution columns in your output.

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

![Screenshot 2023-10-17 161712](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/81cde191-00fa-4e26-b89c-6f659157819c)

**Approach:**

I SELECTed the "category" column as "Category."
2. I used the SUM function to calculate the total sales for each category.
3. I calculated the percentage contribution for each category by dividing the total sales of the category by the overall total sales (obtained using a subquery) and multiplying by 100.
4. I then GROUPed the results by the "category" using the GROUP BY clause.
5. Finally, I ORDERed the results by the "PercentageContribution" in descending order (highest to lowest) using the ORDER BY clause.

**Day 10** -- After seeing the Sales by Category, the Briggs company became curious and wanted to dig deeper to see which subcategory is selling the most. They need the help of an analyst. Please help the company to write a query to show the subcategory and the Total sales of each subcategory. Let your query display only the subcategory and the Total sales columns to see which product sells the most.

SELECT
    
    	sub_category AS Subcategory,
    	ROUND(SUM(sales), 2) AS TotalSales

FROM
    
    	[Movies].[dbo].[Orders]

GROUP BY
    	
     	sub_category

ORDER BY
    	
     	TotalSales DESC;

![Screenshot 2023-10-18 093927](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/bf5ba5dd-5de4-41ec-96af-3b99fd98cd1c)

**Approach:**

1. I SELECTed the "sub_category" column as "Subcategory" and calculated the total sales using the 'SUM' function.
2. I grouped the results by subcategory using the 'GROUP BY' clause.
3. Finally, I ordered the results by total sales in descending order using the 'ORDER BY' clause.
