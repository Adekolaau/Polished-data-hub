-- Question: Write a query to show the average duration of customers’ employment in management positions. The duration should be calculated in years. */

SELECT 
    CAST(AVG(duration / 52.0) AS DECIMAL(10, 2)) AS Avg_Duration_In_Years
FROM [Movies].[dbo].[Marketing_Data]
WHERE job = 'management';

/* Approach:
1. First, I accessed the database table named [Marketing_Data] from the [Movies].[dbo] database in MSSQL.
2. Next, I applied the 'SELECT' statement to retrieve specific information from this table.
3. In the 'SELECT' statement, I used the 'CAST' function to convert the result of the calculation to a specific data type. 
I intended to display the average duration in years, so I specified the result as a 'DECIMAL' with a format of '(10, 2)' to 
ensure two decimal places.
4. The core calculation involved taking the average '(AVG)' of the 'duration' column, which is divided by 52.0. This 
division is essential because the original data in the 'duration' column was in weeks. Dividing by 52.0 allowed me to 
convert weeks into years.
5. Finally, I filtered the results by using a 'WHERE' clause. Specifically, I requested records where the 'job' column 
matched the value 'management'. This ensured that the calculation was focused on individuals in management positions.

As a result, the query produced a single output, labeled as Avg_Duration_In_Years, which represents the average duration of 
employment in management positions in the database, expressed in years. */