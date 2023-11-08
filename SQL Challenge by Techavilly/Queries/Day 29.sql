-- Question: Using the Employee dataset, please write a query to show the job title and department with the highest salary

WITH TopSalary AS 
(
SELECT TOP 1 job_title, department, MAX(salary) AS 'highest Salary'
FROM [Employee].[dbo].[Employee-Table]
GROUP BY job_title, department
ORDER BY 'highest Salary' DESC
)
SELECT job_title, department
FROM TopSalary;

/* Approach:
1. I began by creating a Common Table Expression (CTE) named "TopSalary" using the "WITH" clause.
2. Inside the CTE, I initiated a SELECT statement. This statement retrieved the top 1 row with the highest salary for each unique combination of "job_title" and "department." To accomplish this, I used the MAX(salary) function to find the maximum salary within each group.
3. After specifying the columns I wanted to select, "job_title" and "department," I provided an alias "highest Salary" for the calculated maximum salary in the result set.
4. I performed this selection operation on the "[Employee].[dbo].[Employee-Table]" table.
5. I grouped the rows by "job_title" and "department" using the GROUP BY clause. This ensured that I obtained only one row per unique combination of job title and department.
6. To determine the highest salaries within each group, I used the ORDER BY clause with "highest Salary" in descending order (DESC).
7. Finally, I selected the "job_title" and "department" from the "TopSalary" CTE. */