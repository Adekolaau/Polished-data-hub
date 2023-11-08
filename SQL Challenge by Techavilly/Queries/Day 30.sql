-- Question: Using the Employee dataset, write a query to determine the rank of employees based on their salaries in each department. For each department, find the employee(s) with the highest salary and rank them in Desc order.

SELECT
    first_name,
    last_name,
    department,
    salary,
    DENSE_RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS department_salary_rank
FROM [Employee].[dbo].[Employee-Table];

/* Approach:
1. I began by composing a SQL query to extract specific information from the Employee dataset. My objective was to determine the ranking of employees within each department based on their salaries, ensuring that employees with the same salaries would receive consecutive ranks.
2. To achieve this, I used the 'SELECT' statement to specify the columns I wanted to include in the result: 'first_name', 'last_name', 'department', and 'salary'.
3. I utilized the 'DENSE_RANK()' function, which allows me to assign ranks to employees within each department based on their salaries. This function handles cases where employees have the same salary by assigning consecutive ranks to them.
4. To define the ranking order, I applied the 'PARTITION BY' clause with 'department', which means that the ranking would be calculated separately for each department.
5. I employed the 'ORDER BY' clause with 'salary DESC' to ensure that employees with higher salaries would receive a lower rank.
6. By running this query on the '[Employee].[dbo].[Employee-Table]' table, I obtained the desired result, where employees in each department were ranked based on their salaries, and employees with the same salary received consecutive ranks. This provided a fair and accurate ranking within each department. */