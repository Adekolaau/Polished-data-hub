-- Question: Using the Movie Data, write a query to show the top 10 movie titles whose language is English and French and the budget is more than 1,000,000

SELECT TOP 10 
 	title
FROM 
 	[Movies].[dbo].[Movie Data]
WHERE 
 	(original_language = 'en' OR original_language = 'fr') 
	AND budget > 1000000

![Screenshot 2023-10-12 134750](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/ca39e285-19c1-429c-a29c-346c2ef6b8e6)

/* Approach:
1. I began by using the SELECT statement to specify that I want to capture the top 10 movie titles.
2. Then, I used the FROM statement to specify the data source, which is the "Movie Data" table within the "Movies" database.
3. To filter the results, I employed the WHERE clause to ensure that the "original_language" is either English ('en') or French ('fr') and that the budget is greater than 1,000,000.
4. Finally, I used the ORDER BY clause to sort the results by budget in descending order, ensuring that the movies with the highest budgets appear at the top of the list. */
