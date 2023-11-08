Question: write a query to find the 3rd highest sales from the Sample superstore data

SELECT DISTINCT TOP 1 Sales
FROM [Movies].[dbo].[Orders$]
WHERE Sales NOT IN (
    SELECT DISTINCT TOP 2 Sales
    FROM [Movies].[dbo].[Orders$]
    ORDER BY Sales DESC
)
ORDER BY Sales DESC;

/* Approach:
This query uses a subquery to find the top 2 sales values, and then in the outer query, it retrieves the top 1 sales value that is not in the top 2 sales values, effectively giving you the 3rd highest sales value. */
