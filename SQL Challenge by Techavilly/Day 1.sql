/* Question: Using the Movie Data, write a query to show the titles and movies released in 2017 whose vote count is more than 15 and runtime is more than 100 */

SELECT 
	original_title, release_date
FROM 
	[Movies].[dbo].[Movie Data]
WHERE 
	YEAR(release_date) = 2017
	AND vote_count > 15
	AND runtime > 100;

![Screenshot 2023-10-09 155326](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/f6411548-a779-4a24-abf3-a5e6852fbda3)

/* Approach:
1. SELECT Statement: Begin by specifying what needs to be displayed, which, in this case, is the 'titles' and 'movies' that meet the given criteria.
2. FROM Statement: Used the FROM statement to identify the source table, which is the "Movie Data" table in the "Movies" database.
3. WHERE Statement: Apply filtering conditions using the WHERE statement. Break down the WHERE statement into multiple conditions to ensure that only the desired results are returned:
    - Use the YEAR() function to extract the year from the "release_date" column.
    - Check if the extracted year is equal to 2017.
    - Use the AND operator to combine multiple conditions, ensuring that all requirements are met.
    - Filter movies with a "vote_count" greater than 15 and a "runtime" greater than 100 minutes. */
