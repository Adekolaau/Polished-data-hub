-- 🚀 Weekends are for bonus questions, and here's how I tackled my bonus question for the #30Daysqlchallenge by Techavilly! 🤖
--Challenge: Querying the Bonus data.
-- Question: As we conclude the analysis for the Brigs company, they got some reviews on their website regarding their new product. Please use the Bonus table to write a query that returns only the meaningful reviews. These are reviews that are readable in English. There are two columns in the table, let your output return only the review column.

SELECT Review
FROM [Movies].[dbo].[Bonus-Table]
WHERE translation NOT LIKE '%Not Clear%' AND translation NOT LIKE '%Unknown%'

/* Approach:

1. I SELECTed the "Review" column exclusively from the table.
2. I applied a WHERE clause to filter out reviews containing "Not Clear" or "Unknown" in the "translation" column. To be comprehensive, I used the % symbols as wildcards to account for any text that may appear before or after "Not Clear" or "Unknown." This helped ensure I captured only the meaningful reviews that were clearly in English. 🔍💬📊 */
