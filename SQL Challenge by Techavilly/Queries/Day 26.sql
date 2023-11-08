-- Question: Using the employee table dataset, write a query to show the ratio of the analyst job title to the entire job titles

SELECT 
    SUM(CASE WHEN job_title = 'Analyst' THEN 1 ELSE 0 END) AS AnalystCount,
    SUM(CASE WHEN job_title = 'Analyst' THEN 1 ELSE 0 END) * 100 / COUNT(*) AS AnalystToTotalRatio
FROM [Employee].[dbo].[Employee-Table];

/* Approach: 
1. Initially, I selected the relevant data from the table [Employee].[dbo].[Employee-Table]
2. I used the 'SUM' function in conjunction with a 'CASE' statement to count the number of employees with the job title 'Analyst' and named it 'AnalystCount'. For each employee with the job title 'Analyst', I assigned a value of 1 and 0 for others
3. I computed the ratio of AnalystCount to the total count of employees. To do this, I used another 'SUM' function along with a 'CASE' statement to count analysts and divided it by the total count of employees. I then multiplied the result by 100 to convert it to a percentage
4. Finally, I executed the query and obtained the result, which provided the count of employees with the job title 'Analyst' as 'AnalystCount' and the ratio of analysts to the total number of employees as 'AnalystToTotalRatio'. In this specific case, the 'AnalystToTotalRatio' was 20.

By following these steps, I successfully calculated the number of employees with the job title 'Analyst' and determined the ratio of analysts within the organization. */
