-- Question Using the Bread Data, write a query to show how many breads were ordered.

SELECT 
	COUNT(*) AS total_bread_ordered
FROM 
 	[Bread Data].[dbo].[customer_orders];

/* Approach:
The bread_id column, represent the 2 type of bread which is available, so for every order (quantity ordered), it is counted as 1, even if a single customer orders another of the same bread or 
a different bread, it is represented in a different row with the same customer_id, so in order to know how many breads were ordered, the best approach is to count the total rows available. */
