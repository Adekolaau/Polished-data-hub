-- Question: Using the share price dataset, write a query to show a table that displays the highest daily decrease and the highest daily increase in share price.

SELECT
    ROUND(MIN([close] - [open]), 2) AS highest_daily_decrease,
    ROUND(MAX([close] - [open]), 2) AS highest_daily_increase
FROM [Employee].[dbo].[SharePrice];

/* Approach:
1.The first step was to access the data from the 'SharePrice' table in the 'Employee' database.
2. Next, I calculated the daily price changes for each record by subtracting the 'open' price from the 'close' price. This was done for every row in the dataset.
3. To determine the highest daily decrease, I used the 'MIN' function to identify the smallest value among all the calculated price changes.
4. Similarly, I employed the 'MAX' function to find the largest value among all the daily price changes, which gave us the highest daily increase.
5. I rounded both the highest daily decrease and the highest daily increase to two decimal places, making the values more readable.
6. Finally, I presented the rounded values in the result set, where the column aliases 'highest_daily_decrease' and 'highest_daily_increase' were assigned to the respective values. */
