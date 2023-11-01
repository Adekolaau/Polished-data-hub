-- Question: Using the Movie data, write a query to show the movie title with runtime of at least 250. Show the title and runtime columns in your output

SELECT title, runtime
FROM [Movies].[dbo].[Movie Data]
WHERE runtime >= 250;

/* Approach:
1. I began by identifying the table from which I needed to retrieve data. In this case, it was the [Movies].[dbo].[Movie Data] table.
2. I then specified the columns I wanted to include in the query's output. I selected the "title" and "runtime" columns.
3. To filter the results, I added a 'WHERE' clause. I used the condition 'runtime >= 250' to select movies with a runtime of at least 250 minutes.
4. After constructing the query, I executed it to retrieve the desired results.
5. The query returned a list of movie titles and their respective runtimes that met the specified condition. */
