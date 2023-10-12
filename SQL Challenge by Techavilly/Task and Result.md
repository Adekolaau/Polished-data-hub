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

SELECT r.runner_id,
	
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
