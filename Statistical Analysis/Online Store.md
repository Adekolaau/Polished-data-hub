# ONLINE STORE SHOPPING ACTIVITIES

**About:** Examine the uploaded dataset. This dataset belongs to an online store reporting shopping activities of 1000 customers over the last year. Each row corresponds to a unique customer. Here are the definitions of the columns:

1. **UID** : Unique user identifier code. Nominal data type.

2. **Age** : Age range of the user, ordinal data type

- 18-25yo
- 26-35yo
- 36-50yo
- 51+yo

letter characters (“yo”) are added to prevent Excel automatically converting the data values to numbers and/or produce errors.

3. **Gender** : Gender information of the customer, categorical data

- Female
- Male

4. **Mrt_Status** : Marital status of the customer, categorical data

- Married
- Single

5. **Occupation** : Profession/job information of the customer, categorical data

- Laborer
- Skilled
- Executive
- Unemployed

The intention is to have an idea about the income level of the customer without directly inquiring about their income.

6. **City** : Current city the customer resides in, categorical data

- İst : İstanbul,
- İzm : İzmir,
- Ank : Ankara

7. **City_Year** : Number of years resided in the current city, ordinal data

- 0yr : less than a year,
- 1yr : more than 1 year less than 2,
- 2yr : more than 2 year less than 3,
- 3yr : more than 3 year less than 4,
- 4+yr : 4 years or more

8. **Num_Purchase** : Number of purchases made by the user within the past year, numerical data

9. **Tot_Purchase** : Total amount of purchases made by the user within the past year, numerical data

**Business Question**

**Question 1:** Calculate the minimum, average, and maximum of all Total Purchase values. Calculate the 1st quartile, median, and 3rd quartile of all Total Purchase values. Comment on how different are our customers from each other in terms of Tot_Purchase? For example compare the range from the minimum to the 1st quartile against the range from the the 3rd quartile to the maximum.

**_Answer:_**

1. Minimum, Average, Maximum:
   To calculate the minimum, average, and maximum, I applied the following formula

- Minimum: =MIN(I2:I1001) and this resulted in a minimum of 106
- Average: =AVERAGE(I2:I1001) and this resulted in an average of 1197
- Maximum: =MAX(I2:I1001) and this resulted in a maximum of 4930

2. Quartiles and Median:
   To calculate the quartiles, I applied the following formulas:

- 1st Quartile (Q1): =QUARTILE.INC(I2:I1001, 1) and this resulted to a 1st quartile of 525
- Median: =MEDIAN(I2:I1001) and this resulted to a median of 943
- 3rd Quartile (Q3): =QUARTILE.INC(I2:I1001, 3) and this resulted to 3rd quartile of 1555

Comparison of Ranges:
• Range from Minimum to 1st Quartile (Q1): Minimum to Q1: 525 - 106 = 419
• Range from 3rd Quartile (Q3) to Maximum: Q3 to Maximum: 1555 - 4930 = -3375 (Negative because Q3 is lower than the Maximum)

**_Comments:_**
• The range analysis from the minimum to the 1st quartile (Q1) is 419, indicating that the majority of customers have relatively low total purchase amounts, with the minimum value being 106 and the 1st quartile at 525.
• The range analysis from the 3rd quartile (Q3) to the maximum is -3375, suggesting that a significant portion of customers (25% to 100%) has higher total purchase amounts, as the 3rd quartile is lower than the maximum. This indicates that a few customers have considerably higher total purchases, contributing to the wider spread of values in the upper range.

**Question 2:** Calculate the percentage breakdown of Gender and Mrt_Status columns. Namely what percentage of users are Female vs Male, and what percentage of users are Married vs Single. Comment on whether the breakdowns seem reasonable or they are unexpected?

**_Answer_**

1. For Gender:
   • I counted the number of females (F) and males (M) then Calculated the percentage of females and males using this formula.

=COUNTIF(C2:C1001, "F") / COUNTA(C2:C1001) this resulted to 0.503 (50%) female

=COUNTIF(C2:C1001, "M") / COUNTA(C2:C1001) this resulted to 0.497% (50%) male

2. For Mrt_Status:
   • I counted the number of Married and Single users then calculated the percentage of Married and Single users using this formula

=COUNTIF(D2:D1001, "Married") / COUNTA(D2:D1001) this resulted to 0.414 (41%) for married

=COUNTIF(D2:D1001, "Single") / COUNTA(D2:D1001) this resulted to 0.586 (59%) for single

**_Comments:_**
• The percentage breakdown for Gender is approximately 50% for both male and female, this suggests a balanced representation of genders in the dataset, which is generally reasonable.
• For Mrt_Status, a higher percentage of single users was recorded compared to married users. This suggests that a significant portion of the customer base is not currently married which is generally reasonable.

**Question 3:** Prepare a frequency distribution of Num_Purchase. Present it as a table of values and also as a histogram.

**_Answer:_**

Frequency Distribution Table:

1. Initially, I identified the range of values in the “Num_Purchase” column.
2. Subsequently, I partitioned this range into bins. with each bin representing a specific range of values.
3. Following that, I computed the number of occurrences (frequency) in each bin using this formula:

- =COUNTIF(H$2:H$1001, "=0")
- =COUNTIF(H$2:H$1001, "=1")
- =COUNTIF(H$2:H$1001, "=2")
- =COUNTIF(H$2:H$1001, "=3")
- =COUNTIF(H$2:H$1001, "=4")
- =COUNTIF(H$2:H$1001, "=5")
- =COUNTIF(H$2:H$1001, "=6")
- =COUNTIF(H$2:H$1001, "=7")

4. A table was prepared featuring distinct columns for Bins and Frequency

![Screenshot 2024-01-29 111410](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/253e9f33-cc76-4b5b-a86e-beac09297ccb)

Frequency Distribution Histogram

1. Employing Excel's integrated histogram chart functionality, I visualized the frequency distribution.

![image](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/b8c5545e-01ae-4f45-a8cf-1d0de0f035ba)

**_Comments:_**
• The first bar with a larger bin size of 5 suggests that the majority of observations fall within the lower range of "Num_Purchase", specifically within the values 0 to 4.3.
• The second bar with a smaller bin size of 3 indicates that there is a subset of observations with "Num_Purchase" values in the range of 4.3 to 8.6.

**Question 4:** Prepare a histogram of Tot_Purchase. Divide the range [0, 5000] into 5 equal bins. Comment on the distribution of total purchases.

**_Answer:_**

Frequency Distribution Table:

1. Initially, I identified the range of values in the “Tot_Purchase” column.
2. Subsequently, I divided the range [0, 5000] into 5 equal bins. Each bin represents a range of values.
3. Following that, I counted the number of occurrences (frequency) in each bin using this formula:

- =COUNTIFS(I$2:I$1001, ">=0", I$2:I$1001, "<=1000")
- =COUNTIFS(I$2:I$1001, ">1000", I$2:I$1001, "<=2000")
- =COUNTIFS(I$2:I$1001, ">2000", I$2:I$1001, "<=3000")
- =COUNTIFS(I$2:I$1001, ">3000", I$2:I$1001, "<=4000")
- =COUNTIFS(I$2:I$1001, ">4000", I$2:I$1001, "<=5000")

4. A table was prepared with columns for Bins and Frequency

![Screenshot 2024-01-29 112555](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/7fdc2afe-d7e7-4567-807e-11721adaabea)

Frequency Distribution Histogram

1. Employing Excel's integrated histogram chart functionality, I visualized the frequency distribution.

![image](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/2d2e2af3-32c4-4cff-85f6-606503fb2517)

**_Comments:_**
• The frequency distribution table provides a clear breakdown of the number of purchases across two categories (bin).
• The fact that there are four occurrences within this range (first bin [0, 3200]) suggests that a significant number of customers have relatively lower total purchases. It indicates a concentration of customers with values within the [0, 3200] range.
• The presence of only one occurrence in this bin (second bin [3200, 6400]) suggests that there is a distinct group of customers with higher total purchases. This could be a smaller subset of customers who contribute significantly to the higher end of the total purchase distribution.
• The distribution is not evenly spread across all bins, indicating some level of concentration at specific total purchase ranges.

**Question 5:**
Prepare a bar chart of the sum of Tot_Purchase breakdown by Age. Here is how to do this: Partition the data by Age groups. Calculate the sum of Tot_Purchase in each group. Bars in the chart will correspond to Age group where height of each bar will equal the sum of Tot_Purchase values within each Age group. Comment on the distribution of total purchase across age groups.

**_Answer:_**

1. Intially, I created a column where I entered each age group
2. Following that, I calculated the sum of Tot_Purchase in each age group using this formula:

- =SUMIFS(I$2:I$1001, B$2:B$1001, "18-25")
- =SUMIFS(I$2:I$1001, B$2:B$1001, "26-35")
- =SUMIFS(I$2:I$1001, B$2:B$1001, "36-50")
- =SUMIFS(I$2:I$1001, B$2:B$1001, "51+")

3. This was the result gotten:
   ![Screenshot 2024-01-29 124653](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/eb769070-57c8-42e6-9b29-fc1bff895235)

4. Then I visualized a bar chart using Excel's integrated histogram chart functionality

![image](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/3cfd4e64-582e-44da-bb1f-f4cf7198ff62)

**_Comment:_**

1. The 36-50 age group stands out as the highest contributor to total purchases, suggesting that individuals in their late thirties to fifties play a significant role in the store's revenue. This age group often includes individuals in their peak earning years, and their higher spending could be attributed to various factors such as family responsibilities and a more established career.
2. The 26-35 age group shows a significant increase in total purchases compared to the 18-25 group. This age range might represent individuals in their early to mid-career, with potentially higher disposable income, leading to increased purchasing power.
3. The 51+ age group shows a lower total purchase compared to the 36-50 age group but is higher than the 18-25 age group. Older individuals may have a more conservative spending pattern, but this can vary based on factors such as retirement status and lifestyle choices.
4. The 18-25 age group has the lowest total purchase among the specified categories. The lower total purchase may be indicative of the financial constraints or spending patterns typically associated with younger individuals.

**Question 6:** Prepare a bar chart of the sum of Tot_Purchase breakdown by Occupation. Comment on the distribution of purchases across occupation categories.

**_Answer:_**

1. Initially, I created a column where I entered each occupation group to partition the data
2. Following that, I calculated the sum of Tot_Purchase in each occupation group using this formula:

- =SUMIFS(I$2:I$1001, E$2:E$1001, "Skilled")
- =SUMIFS(I$2:I$1001, E$2:E$1001, "Laborer")
- =SUMIFS(I$2:I$1001, E$2:E$1001, "Executive")
- =SUMIFS(I$2:I$1001, E$2:E$1001, "Unemployed")

3. This was the result gotten:

![Screenshot 2024-01-29 140803](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/fec30463-0e50-4114-b1d1-75fa2b4fbc1b)

4. Then I visualized a bar chart using Excel's integrated histogram chart functionality

![image](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/7cce0e9f-cd89-460d-b421-69e0d03bc288)

**_Comment:_**

1. Skilled and Executive occupation groups stand out as the major contributors to total purchases, suggesting a positive correlation between occupation type and spending behavior.
2. The lower total purchases is the Laborer and Unemployed groups, this may be attributed to relatively lower income levels.

**Question 7:** Calculate a 95% Confidence Interval on the mean Tot_Purchase for each City value.

**_Answer:_**

1. Initially, I created a column where I entered each list of unique city values.
2. Subsequently, I calculated the mean for each city using this formula:

- =AVERAGEIFS(I2:I1001, F2:F1001, K21)
- =AVERAGEIFS(I2:I1001, F2:F1001, K22)
- =AVERAGEIFS(I2:I1001, F2:F1001, K23)

3. Following that, I proceeded to calculate the standard error of the mean using this formula:

- =STDEV.S(IF(F2:F1001 = K21, I2:I1001)) / SQRT(COUNTIFS(F2:F1001, K21))
- =STDEV.S(IF(F2:F1001 = K22, I2:I1001)) / SQRT(COUNTIFS(F2:F1001, K22))
- =STDEV.S(IF(F2:F1001 = K23, I2:I1001)) / SQRT(COUNTIFS(F2:F1001, K23))

_Note:_ After typing the formula, instead of pressing Enter, I pressed Ctrl + Shift + Enter. This enables Excel to surround the formula with curly braces ‘{ }’ to indicate that it’s an array formula. 4. Then I proceeded to calculate the margin of error by multiplying the standard error of the mean by the critical t-value by using this formula:

- =T.INV.2T(0.025, COUNTIFS(F2:F1001, K21)-1) \* (N21)
- =T.INV.2T(0.025, COUNTIFS(F2:F1001, K21)-1) \* (N22)
- =T.INV.2T(0.025, COUNTIFS(F2:F1001, K21)-1) \* (N23)

5. Lastly, I calculated the confidence limits, starting with the lower, and then the upper confidence limit by subtracting and adding the margin of error to the mean, respectively.

Lower Confidence Limit:

- =[Mean] - [Margin of Error]
- = M21 – O21
- = M22 – O22
- = M23 – O23

Upper Confidence Limit

- =[Mean] + [Margin of Error]
- = M21 + O21
- = M22 + O22
- = M23 + O23

6. This was the result gotten:

![Screenshot 2024-01-29 162700](https://github.com/Adekolaau/Polished-data-hub/assets/128713981/4d76be44-6c66-482c-9016-3b351a933e18)

                              THANK YOU 😊
