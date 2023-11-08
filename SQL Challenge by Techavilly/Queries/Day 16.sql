-- Question: Micro Bank wants to be sure they have enough data for this campaign and would like to see the total count of each job as contained in the dataset. Using the marketing data, write a query to show the count of each job, arrange the total count in Descending order

SELECT job, COUNT(*) AS total_count
FROM [Movies].[dbo].[Marketing_Data]
GROUP BY job
ORDER BY total_count DESC;

/* APPROACH:
1. Selected Columns: The query began by selecting the "job" column and calculated the count of records using the COUNT(*) function. The alias "total_count" was assigned to the count for clarity in the result.
2. Data Source: The data source was specified as the "Marketing_Data" table in the "Movies" database.
3. Grouping: Next, the data was grouped by the "job" column using the GROUP BY clause. This grouped the data by unique job titles, preparing it for aggregation.
4. Counting: The COUNT(*) function was applied within each group to calculate the total count of records associated with each job title.
5. Ordering: Finally, the results were ordered in descending order based on the "total_count" column. This arrangement allowed the job titles with the highest counts to appear at the top of the result set. */
