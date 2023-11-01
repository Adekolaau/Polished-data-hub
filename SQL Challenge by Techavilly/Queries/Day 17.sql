-- Question: Just for clarity purposes, your company wants to see which education level got to the management job the most. Let your output show the education, job and the count of jobs columns. */

SELECT TOP 1 education, job, COUNT(job) AS job_count
FROM [Movies].[dbo].[Marketing_Data]
WHERE job = 'management'
GROUP BY education, job
ORDER BY job_count DESC;

/* Approach:
1. I selected the most using the 'TOP' 1 for 'education,' 'job,' and the count of 'job' columns from the 'Marketing_Data' table in the 'Movies' database.
2. To focus on the 'management' job, I filtered the results by including only rows where the 'job' is equal to 'management' using the WHERE clause.
3. I grouped the data based on two columns: 'education' and 'job.' This is done by using the GROUP BY clause, which allows me to see how education levels are distributed for the 'management' job.
4. To determine which education level was most common for the 'management' job, I counted the occurrences of each unique combination of 'education' and 'job.' The count result was aliased as 'job_count' using COUNT(job) AS job_count.
5. Finally, I arranged the results in descending order by 'job_count' using the ORDER BY clause. This way, I could easily identify the education level that was most prevalent for the 'management' job. */
