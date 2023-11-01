-- Question: Using the Bread Data, write a query to show the number of each type of bread delivered.

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

/* Approach:
1. I SELECT the bread names from the "bread_names" table (aliased as "BN").
2. I use a JOIN operation to combine the "customer_orders" and "bread_names" tables based on the "bread_id" column.
3. I then use a LEFT JOIN operation to combine the result with the "runner_orders" table based on the "order_id" column. This was used to filter out canceled orders.
4. I filtered the results to include only orders with a NULL cancellation status in the "runner_orders" table, which indicates that the order was delivered.
5. I group the results by bread name.
6. I count the number of deliveries for each bread type.
7. Finally, I order the results by the number of deliveries in descending order. */
