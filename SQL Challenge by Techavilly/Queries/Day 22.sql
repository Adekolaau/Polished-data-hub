-- Question: Using the Employee Table dataset, write a query to show all the employees first name and last name and their respective salaries. Also, show the overall average salary of the company and calculate the difference between each employee's salary and the company average salary.

SELECT 
    e.first_name, 
    e.last_name, 
    e.salary,
    a.Company_Average,
    e.salary - a.Company_Average AS salary_diff
FROM [Employee].[dbo].[Employee-Table] e
CROSS JOIN (
    SELECT AVG(salary) AS Company_Average
    FROM [Employee].[dbo].[Employee-Table]
) a;

/* Approach:
1. First, a subquery was employed to calculate the average salary for the entire company. This was done by using the 'AVG' function on the salary column from the [Employee].[dbo].[Employee-Table] table and aliasing it as Company_Average.
2. Following that, the main part of the query was executed. It selected specific columns from the [Employee].[dbo].[Employee-Table] table.
3. Within the main part of the query, each employee's first_name, last_name, and salary were selected.
4. The subquery result, which is the company's average salary (Company_Average), was included in the main query to provide the overall average salary of the company for each employee's row.
5. Additionally, a new column called salary_diff was calculated by subtracting the Company_Average from each employee's salary. This represented the variance between an employee's salary and the average salary of the company.
6. The CROSS JOIN clause was used to combine the results from the main part of the query with the subquery. This ensured that the subquery's Company_Average value was available for every employee's row, enabling the calculation of the salary_difference.
7. As a result, the output of this query included each employee's first name, last name, salary, the company's average salary (Company_Average), and the difference between each employee's salary and the company's average salary (salary_difference).

By executing this query, a comprehensive report was generated that allowed for the evaluation of individual salaries in relation to the company's average salary. */
