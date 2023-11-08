-- Question: Your company started consulting for Micro Bank who needs to analyze their marketing data to understand their customers better. This will help them plan their next marketing campaign. You are brought on board as the analyst for this job. They have an offer for customers who are divorced but they need data to back up the campaign. Using the marketing data, write a query to show the percentage of customers who are divorced and have balances greater than 2000 */

SELECT
    CONCAT(CAST(CAST((COUNT(*) * 100.0) AS DECIMAL (10, 2)) / 
	CAST((SELECT COUNT(*) FROM [Movies].[dbo].[Marketing_Data]) AS DECIMAL (10, 2)) AS DECIMAL (10, 2)), '%') AS Percentage
FROM [Movies].[dbo].[Marketing_Data]
WHERE marital = 'divorced' AND balance > 2000;

/* Approach: 
1. First, I used the SELECT statement to retrieve the desired information from the "Marketing_Data" table.
2. I applied the COUNT(*) function to count the number of records in the "Marketing_Data" table.
3. Next, I multiplied the count by 100.0 to obtain the percentage, and I cast this result to a DECIMAL with a precision of 10 and a scale of 2 to ensure two decimal places.
4. In the denominator part of the division, I performed a subquery using (SELECT COUNT(*) FROM [Movies].[dbo].[Marketing_Data]). This subquery counted the total number of records in the "Marketing_Data" table, serving as the divisor for the percentage calculation.
5. To ensure the division result and the final percentage are both in DECIMAL (10, 2) format, I cast the subquery's result to DECIMAL (10, 2).
6. I used the CONCAT function to combine the result of the division with the '%' symbol, formatting it as a percentage.
7. The WHERE clause was used to filter the data. It restricted the selection to only those records where the "marital" status is 'divorced' and the "balance" is greater than 2000. */
