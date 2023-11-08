-- Question: What's the total number of customers that have housing, loan and are single? */

SELECT loan, housing, marital, COUNT(*) AS Total_Customers
FROM [Movies].[dbo].[Marketing_Data]
WHERE housing = 'yes' AND loan = 'yes' AND marital = 'single'
GROUP BY loan, housing, marital;

/* APPROACH:
1. I started by examining the data in the [Movies].[dbo].[Marketing_Data] table, which contained information about customers, including details about loans, housing, and marital status.
2. My objective was to find the total number of customers who met specific criteria: those who had both housing and a loan, and were identified as 'single' in terms of their marital status.
3. To achieve this, I employed the SQL 'SELECT' statement, specifying the columns I was interested in: loan, housing, and marital.
4. I used the 'COUNT(*)' function to calculate the total count of customers that matched my criteria.
5. I proceeded to filter the data by applying the 'WHERE' clause, which ensured that only records meeting the conditions of having 'yes' for housing, 'yes' for loan, and 'single' for marital were included in our analysis.
6. The next step involved grouping the filtered data using the 'GROUP BY' clause. I grouped the data by the loan, housing, and marital columns, which allowed me to organize and aggregate the data based on these categories.
6. Finally, the query provided me with the desired result, showing the distinct combinations of loan, housing, and marital along with the count of customers who met these criteria. 

This information was presented in the form of a result set, giving me insights into the number of customers who had both housing and a loan while being classified as 'single' based on their marital status. */
