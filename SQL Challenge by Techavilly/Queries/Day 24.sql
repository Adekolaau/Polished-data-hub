-- Question: Our client is planning their logistic for 2024, they want to know the average number of days it takes to ship to the top 10 states. Using the sample superstore datasets, write a query to show the state and the average number of days between the order date and the ship date to the top 10 states.

SELECT TOP 10
    State,
    AVG(DATEDIFF(DAY, [Order Date], [Ship Date])) AS AvgDaysBetweenOrderAndShip
FROM [Movies].[dbo].[Orders$]
GROUP BY State
ORDER BY AvgDaysBetweenOrderAndShip;

/* Approach:
1. Initially, the query began by selecting the top 10 states with the shortest average shipping time. This was achieved by using the 'SELECT TOP 10' statement.
2. The query proceeded to retrieve the state names from the 'Orders$' table using the 'State' column. This allowed me to identify the specific states for which we wanted to calculate the average shipping duration.
3. To calculate the average number of days it took to ship orders to each state, the query utilized the 'AVG' function. I performed this calculation by using the 'DATEDIFF' function to find the difference in days between the order date ([Order Date]) and the ship date ([Ship Date]) for each individual order. The result of this calculation was aliased as 'AvgDaysBetweenOrderAndShip' for clarity.
4. In order to organize the results effectively, the query employed the 'GROUP BY' clause. By grouping the results based on the 'State' column, it ensured that the calculations were performed for each unique state in the dataset.
5. Lastly, to present the top 10 states in ascending order of average shipping time, the query used the 'ORDER BY' statement, sorting by the 'AvgDaysBetweenOrderAndShip'. This arrangement made it clear which states had the shortest average shipping times, thereby providing valuable information for logistics planning.

The final output of this query displayed the top 10 states and their respective average shipping times in days, thus assisting in the logistics planning process. */
