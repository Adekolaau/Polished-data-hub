-- Question: The director of Analytics has requested a detailed analysis of the Briggs company. To fulfill this request, he needs you to generate a table that displays the profit margin of “each segment”. The table should include the segments, total sales, total profit and the profit margin. To ensure accuracy, the profit margin should be arranged in descending order.

SELECT
    segment,
    ROUND(SUM(sales), 2) AS TotalSales,
    ROUND(SUM(profit), 2) AS TotalProfit,
    ROUND((SUM(profit) / SUM(sales)) * 100, 2) AS ProfitMargin
FROM
    [Movies].[dbo].[Orders]
GROUP BY
    segment
ORDER BY
    ProfitMargin DESC;

/* Approach:

1. I SELECTed the "segment" column to group the results by segments.
2. I calculated the total sales and total profit for each segment using the 'SUM' function.
3. I calculated the profit margin by dividing the total profit by the total sales and then multiplying by 100 to get a percentage.
4. I grouped the results by the segment using the 'GROUP BY' clause.
5. Finally, I ordered the results by profit margin in descending order using the 'ORDER BY' clause.