-- Question: Write a query to show how many successful orders were delivered by each runner.

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

/* Approach:
I started by using SQL JOIN statements to bring together the relevant data from the "runners" and "runner_orders" tables. This is essential for linking the information needed to determine the number of successful orders for each runner. 
Next, I applied a WHERE clause to filter the combined data, ensuring that only successful orders are considered. This filter checks for rows where the "cancellation" column in the "runner_orders" table is NULL, effectively excluding any canceled or failed orders from the count. 
I employed the SQL GROUP BY clause to group the filtered data by "runner_id". With the data grouped by "runner_id," 
I used the COUNT function to calculate the number of successful orders for each runner. This count provides the specific metric we're interested in. */
