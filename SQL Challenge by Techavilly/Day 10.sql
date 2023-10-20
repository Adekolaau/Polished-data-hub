-- Question: After seeing the Sales by Category, the Briggs company became curious and wanted to dig deeper to see which subcategory is selling the most. They need the help of an analyst. Please help the company to write a query to show the subcategory and the Total sales of each subcategory. Let your query display only the subcategory and the Total sales columns to see which product sells the most.

SELECT
   	sub_category AS Subcategory,
   	ROUND(SUM(sales), 2) AS TotalSales
FROM
   	[Movies].[dbo].[Orders]
GROUP BY
   	sub_category
ORDER BY
   	TotalSales DESC;

![Screenshot 2023-10-18 093927](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/bf5ba5dd-5de4-41ec-96af-3b99fd98cd1c)

/* Approach:**

1. I SELECTed the "sub_category" column as "Subcategory" and calculated the total sales using the 'SUM' function.
2. I grouped the results by subcategory using the 'GROUP BY' clause.
3. Finally, I ordered the results by total sales in descending order using the 'ORDER BY' clause. */