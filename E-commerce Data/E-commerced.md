# Exploring E-commerce Growth Opportunities: A Case Study of Olist

![IMG 001](https://miro.medium.com/v2/resize:fit:720/format:webp/1*Y8W0IP_1enOFPhzgLYcvaA.png)

## INTRODUCTION

In the ever-evolving landscape of data technology, I recently engaged in a captivating data analysis challenge that ignited my passion for exploration and discovery. Despite my initial limited expertise in data analysis tools, I made the strategic decision to seize the dataset and embark on a journey of self-improvement. This dataset, the Olist E-commerce Public Dataset, beckoned with its promise of insights, trends, and untapped potential awaiting discovery. The challenge before me: To navigate the realms of exploration, cleansing, and analysis within the realm of Olist’s e-commerce universe.

## BUSINESS TASK AND APPROACH

The primary objective of this analysis is to provide Olist with insights that can drive strategic decisions. By addressing a series of key business questions, we intend to uncover patterns, trends, and opportunities within the dataset. This exploration will facilitate better decision-making and pave the way for Olist’s continued success.

## DATA SOURCES

The core dataset used in this analysis is the Olist sales dataset, sourced from Kaggle. This dataset spans from January 2017 to August 2018 and encompasses a comprehensive array of information. It includes details about orders, items, products, payments, customer and seller identification, as well as reviews. Supplementary information regarding sellers, customer behavior, and demographics complements the dataset.

Moreover, external sources, such as industry reports and market trends related to the Brazilian e-commerce sector, could be referenced for contextualization and benchmarking purposes.

## PROCESS PHASES

In this exploration, Microsoft SQL Server, Excel, and the symphony of R programming join forces to transform raw data into knowledge and insight. The process unfurls in four distinct movements:

**Explore Dataset and Perform Data Validation:** In this phase, the dataset’s integrity and consistency are assessed. The 9 different tables were explored using an Excel spreadsheet, from this process, potential data issues, such as

- Unwanted special characters

- Irrelevant columns

- Spelling errors

- Null and empty values

Addressing these concerns ensures the reliability of subsequent analyses.

**Data Cleaning:** This phase involves thorough data cleaning. It encompasses handling null and empty values, rectifying inconsistencies, removing duplicates, replacing special characters, and ensuring standardized formats. Clean data forms the foundation for accurate analysis.

Microsoft SQL Server Management Studio, complemented by judicious employment of Excel spreadsheets, was used for the data cleaning phase

**Deliverables**
Olist_customers_dataset

Our journey commences with a comprehensive audit, validating the dataset’s integrity

![IMG 002](https://miro.medium.com/v2/resize:fit:640/format:webp/1*amoc0FecCogNMWmzQOdPjw.png)

Data Validation: The initial step involved a meticulous examination of duplicate rows.

![IMG 003](https://miro.medium.com/v2/resize:fit:720/format:webp/1*VyVGocKIX3M0MXufcWtSTQ.png)

Outcome: No duplicates detected.

To ensure data completeness, a rigorous check for NULL values was conducted across all columns.

![IMG 004](https://miro.medium.com/v2/resize:fit:640/format:webp/1*aNfKJY8_of4R5pM5YMFtrQ.png)

Conclusion: The dataset showcased impeccable integrity, devoid of any NULL values.

**Olist_geolocation_dataset**

Data Preprocessing: Before importing the dataset into the SQL server, I detected encoding issues within the ‘geolocation_city’ column. To address this, I employed Power Query in Excel. I selected UTF-8 encoding and executed transformations. Subsequently, I copied and pasted the corrected column.

![IMG 005](https://miro.medium.com/v2/resize:fit:720/format:webp/1*dDhOu9OQ_FxSOoVMyk-vJA.png)

Validate Initial Dataset Size: I initiated the process by confirming the original size of the dataset, which boasted a staggering 1,000,163 rows:

![IMG 006](https://miro.medium.com/v2/resize:fit:640/format:webp/1*YygnrJUUVaJq1zHFl2ijYQ.png)

Data Refinement and Standardization: A meticulous audit of the ‘geolocation_city’ column unveiled the intrusion of special characters that might compromise data quality.

![IMG 007](https://miro.medium.com/v2/resize:fit:634/format:webp/1*eXRVS3B15Jn-v311iQoysw.png)

Each special character was systematically replaced, ensuring uniformity and data consistency.

The vigilance extended to rectifying misspelled city names and refining the dataset with accuracy.

![IMG 008](https://miro.medium.com/v2/resize:fit:640/format:webp/1*3zVxbv-dE4_PK_fJ3wm3xQ.png)

Residual irregularities such as excessive spaces were meticulously trimmed, setting the stage for a polished dataset.

![IMG 009](https://miro.medium.com/v2/resize:fit:640/format:webp/1*z3NDQB6gMXSVbtTTdN0eZA.png)

Validation: The magnitude of the dataset was validated for meticulous cleansing.

![IMG 010](https://miro.medium.com/v2/resize:fit:720/format:webp/1*7yGQTiOeDSP3xtQsIgoEtA.png)

![IMG 011](https://miro.medium.com/v2/resize:fit:720/format:webp/1*M45Zogn-6PYaSbpYpyp0jQ.png)

Upon this foundation, the pursuit for duplicate rows commenced, revealing their presence — a challenge promptly addressed.

Final Validation: A final sweep for NULL values was conducted, confirming the dataset’s flawless state across pivotal columns.

![IMG 012](https://miro.medium.com/v2/resize:fit:640/format:webp/1*4SLPwp8eu-O9Egr8K5veOA.png)

**Olist_order_items_dataset**

Data Validation: I began by assessing the dataset’s scale, discovering a total of 112,650 rows.

![IMG 013](https://miro.medium.com/v2/resize:fit:640/format:webp/1*mOnWo1_cGPmcIDk---uu-g.png)

Duplicate Check: An examination for duplicate rows was undertaken. Fortunately, no duplicates were identified within the dataset.

![IMG 014](https://miro.medium.com/v2/resize:fit:720/format:webp/1*JVtTloCOBgBpLfOQWCEm_w.png)

Data Type Enhancement: For data accuracy, the data type of the “order_item_id” column was transitioned from float to int. This was preceded by confirming the column’s content for irregularities.

New Column Introduction: A new column named “New_Order_Item_id” of datatype int was introduced, and its values were populated with those from the existing ‘order_item_id’ column.

Legacy Column Removal: Subsequently, the original ‘order_item_id’ column was dropped, and the newly created column was renamed “order_item_id.”

![IMG 015](https://miro.medium.com/v2/resize:fit:640/format:webp/1*j8hsWe0E4gnQWsnfNP6bAw.png)

NULL Values Inspection: A comprehensive inspection for NULL values was carried out across crucial columns such as ‘order_id’, ‘product_id’, ‘seller_id’, ‘shipping_limit_date’, ‘price’, ‘freight_value’, and ‘order_item_id.’

![IMG 016](https://miro.medium.com/v2/resize:fit:640/format:webp/1*yBmdseJ2AcnwMUtgnZ4Vtg.png)

With these meticulous steps, the ‘Olist_order_items_dataset’ was refined and prepared for further analysis.

**Olist_order_payments_dataset**

Data Validation: I initiated the data validation process for the ‘Olist_order_payments_dataset’ as follows:

- Dataset Size Check: To comprehend the dataset’s scale, I first queried the dataset, confirming a total of 103,886 rows.

![IMG 017](https://miro.medium.com/v2/resize:fit:640/format:webp/1*td2eWa0mIjKFIXrFrD7xtQ.png)

- Duplicate Check: Subsequently, I performed a meticulous examination of duplicate rows within the dataset. Fortunately, no duplicates were identified.

![IMG 018](https://miro.medium.com/v2/resize:fit:720/format:webp/1*3cS4jMCcNBLqYtQWNVEr6Q.png)

Data Type Enhancement: To ensure data accuracy, I proceeded to change the data type of two columns, namely “payment_sequential” and “payment_installments,” transitioning them from float to int. Before this transformation, I thoroughly assessed the content of the “payment_sequential” column for any irregularities.

New Columns Introduction: With the data type enhancement complete, I introduced two new columns: “payments_sequential_new” and “payments_installments_new,” both of datatype int. I then meticulously updated these new columns with values from the original columns, “payment_sequential” and “payment_installments.”

Legacy Column Removal: To finalize the data transformation process, I removed the original columns “payment_sequential” and “payment_installments.”

Column Renaming: The newly created columns, “payments_sequential_new” and “payments_installments_new,” were subsequently renamed as “payment_sequential” and “payment_installments” in the Object Explorer.

![IMG 019](https://miro.medium.com/v2/resize:fit:720/format:webp/1*po9kA9m1SrMZBTxJ3bBfkg.png)

Data Quality Check: To ensure the data’s accuracy and consistency, I performed a check on the ‘payment_type’ column for irregularities or misspellings.

![IMG 020](https://miro.medium.com/v2/resize:fit:640/format:webp/1*6EZQeS8PGyZmT7W_dpritg.png)

NULL Values Inspection: Lastly, I conducted a comprehensive inspection for NULL values across pivotal columns such as ‘order_id,’ ‘payment_type,’ ‘payment_value,’ ‘payment_sequential,’ and ‘payment_installments.’

![IMG 021](https://miro.medium.com/v2/resize:fit:640/format:webp/1*lSJH5y93Ou0mh6qgwH3adg.png)

The meticulous data cleaning steps undertaken on the ‘Olist_order_payments_dataset’ have prepared the dataset for further analysis, ensuring data quality and integrity for subsequent business inquiries.

**Olist_order_reviews_dataset**

Data Preprocessing: Before incorporating the dataset into the SQL server, I encountered encoding issues with the ‘review_comment_title’ and ‘review_comment_message’ columns. This called for an intervention using Power Query within Excel. By selecting UTF-8 encoding and applying requisite transformations, I rectified the anomalies. I subsequently transposed the refined columns into the dataset.

![IMG 022](https://miro.medium.com/v2/resize:fit:720/format:webp/1*aKb794IQuFfCL5SeQu7jqg.png)

Data Validation: To initiate the process, I began by checking the dataset’s size, revealing the presence of 100,000 rows.

![IMG 023](https://miro.medium.com/v2/resize:fit:640/format:webp/1*8yvaaMA3xLT2txru27_c9g.png)

Duplicate Check: To ensure data uniqueness, I conducted an exhaustive search for duplicate rows within the dataset. Gratifyingly, no duplicates were unearthed.

![IMG 024](https://miro.medium.com/v2/resize:fit:720/1*F8gPiRK8TCT2dWfAKnQXZA.png)

Text Standardization: Acknowledging the intricate nature of text data, I executed meticulous replacements for city names that bore special characters. This strategic process extended to both the ‘review_comment_title’ and ‘review_comment_message’ columns. Special characters were systematically substituted, guaranteeing data consistency and quality.

![IMG 025](https://miro.medium.com/v2/resize:fit:720/format:webp/1*9nn_ssFl0tXrz-qC0VsJ9A.png)

Data Type Enhancement: In pursuit of refining data representation, I resolved to convert the ‘review_score’ column’s data type from float to int. To ensure data conformity, I meticulously examined the column’s content for any irregularities that might impede the conversion.

New Column Introduction: Upon confirming the lack of irregularities, I introduced a new column, ‘review_score_new,’ with a data type of int. I subsequently migrated data from the original ‘review_score’ column to the new one.

Legacy Column Removal: Having successfully migrated data, I proceeded to eliminate the legacy ‘review_score’ column from the dataset.

Column Renaming: The newly introduced ‘review_score_new’ column was then renamed ‘review_score’ in the Object Explorer.

![IMG 026](https://miro.medium.com/v2/resize:fit:640/format:webp/1*fLwwsUcylwdiiL4nA6rWXg.png)

Data Type Optimization: Furthermore, I optimized the ‘review_creation_date’ column by modifying its data type from DateTime to date.

![IMG 027](https://miro.medium.com/v2/resize:fit:640/format:webp/1*hc4ElCRy3GOBg0gv2agijA.png)

Data Completeness: Recognizing the significance of non-null values, I utilized the COALESCE function to ensure that both ‘review_comment_title’ and ‘review_comment_message’ columns held either their original content or the placeholder ‘N/A’ in cases of NULL values.

![IMG 028](https://miro.medium.com/v2/resize:fit:640/format:webp/1*2pH-kpYeSwnJndp29QpdQQ.png)

The meticulous preprocessing and data transformation procedures executed on the ‘Olist_order_reviews_dataset’ serve as the foundation for enhanced data quality, accuracy, and compatibility with subsequent analytical inquiries.

**Olist_orders_dataset**

Data Validation: I initiated the data exploration process by inspecting the dataset’s size, confirming a total of 99,441 rows.

![IMG 029](https://miro.medium.com/v2/resize:fit:640/format:webp/1*HsOcoqghHkkaCb58DTRDpA.png)

Duplicate Check: In an endeavor to ensure data integrity, a comprehensive assessment was conducted for duplicate rows within the dataset. The outcome was positive, with no duplicates detected.

![IMG 030](https://miro.medium.com/v2/resize:fit:720/format:webp/1*qeAuHSauTlOzZOmk8ztcFg.png)

Date and Time Validation: Delving further into the dataset, the ‘order_estimated_delivery_date’ column was scrutinized, as it featured a datetime datatype. The objective was to ascertain whether any time component, other than midnight (00:00:00), was present.

Utilizing SQL’s DATEPART function, a comprehensive examination was executed to identify if any entries contained non-midnight time values. Fortunately, the query revealed that all entries adhered to the midnight time format (00:00:00), ensuring data consistency.

![IMG 031](https://miro.medium.com/v2/resize:fit:720/format:webp/1*LT22c95z5VKw2ImouRdWdQ.png)

![IMG 032](https://miro.medium.com/v2/resize:fit:640/format:webp/1*JArLCHAqsvmszgrxj81KNQ.png)

Data Type Refinement: Given the uniformity of time values, a decision was made to optimize data representation by converting the ‘order_estimated_delivery_date’ column from DateTime to date datatype. This enhancement not only streamlined data but also aligned it with analytical requirements.

![IMG 033](https://miro.medium.com/v2/resize:fit:720/format:webp/1*n0CslEc6cVvY8KpEUuR_MA.png)

The data validation and optimization processes have laid a solid foundation for subsequent data analysis and have fortified the integrity of the ‘Olist_orders_dataset.’

**Olist_products_dataset**

Data Validation: The exploration of the ‘Olist_products_dataset’ was initiated by assessing its size, revealing a total of 32,951 rows.

![IMG 034](https://miro.medium.com/v2/resize:fit:640/format:webp/1*MnlNj0p7iGmoXrCzo66WyQ.png)

Duplicate Check: An in-depth examination was performed to detect duplicate rows within the dataset. The outcome was favorable, as no duplicates were encountered, thus establishing the reliability of the dataset.

![IMG 035](https://miro.medium.com/v2/resize:fit:720/format:webp/1*v2rT2cbhxxFRqLQ87LiEgg.png)

Data Import Challenges and Remediation: During the process of data importation, Microsoft Excel was employed as the data source. Although Excel automatically inferred suitable data types for columns, this approach led to the identification of multiple irregularities.

Efforts to convert the data type from float to int proved challenging, with persistent difficulties arising. Notably, the presence of the value ‘40425.000000’ raised suspicions, as it did not conform to the expected data distribution. To address these issues, a more controlled approach was undertaken.

The dataset was imported using the ‘import flat file (CSV)’ option, granting the opportunity to precisely define data types and manage NULL values. Before uploading, meticulous steps were taken in Excel to eliminate any concealed decimal numbers and replace NULL values with zero, using custom formatting and replacements.

![IMG 036](https://miro.medium.com/v2/resize:fit:720/format:webp/1*DjEF2pYO3H5QL5uau5MkkA.png)

By meticulously curating the data in Excel before importation, the dataset was safeguarded against irregularities and ensured its proper representation. This process also provided insights into the intricacies of handling data types, specifically when choosing between ‘smallint’ and ‘int’ for the ‘product_weight_g’ column.

Category Name Validation: As an additional step, the ‘product_category_name’ column underwent scrutiny to identify any potential misspellings or irregularities. Distinct values were extracted and ordered for a comprehensive review.

![IMG 037](https://miro.medium.com/v2/resize:fit:640/format:webp/1*LkQTlQVB7lGZHDQgV1QNMg.png)

This process of data validation, cleaning, and refinement serves as a cornerstone for reliable analyses, safeguarding the quality and integrity of the ‘Olist_products_dataset.’

**Olist_sellers_dataset**

Data Validation: The journey through the ‘Olist_sellers_dataset’ began with an evaluation of its scope, revealing a total of 3,095 rows.

![IMG 038](https://miro.medium.com/v2/resize:fit:640/format:webp/1*j0ioFfMOE-Zls6bm0mLSVw.png)

Duplicate Check: A comprehensive assessment was executed to identify duplicate records within the dataset. The result affirmed that no duplicates were present, ensuring the dataset’s foundational integrity.

![IMG 039](https://miro.medium.com/v2/resize:fit:640/format:webp/1*p3RypWUc35x9n1CgRR2MVQ.png)

Data Transformation Process: In order to achieve the desired data transformation, a new column, ‘seller_zip_code_prefix_new’, was introduced to store the integer values. Data from the original column was seamlessly migrated to the new column using a CAST operation. The two columns were then compared to validate the accuracy of the transformation.

![IMG 040](https://miro.medium.com/v2/resize:fit:640/format:webp/1*8UJpr2AdnbP5VtO803COLw.png)

Column Refinement and Cleanup: To streamline the dataset and enhance clarity, the original ‘seller_zip_code_prefix’ column was removed, paving the way for the new ‘seller_zip_code_prefix_new’ column. The Object Explorer was leveraged to rename the new column to maintain coherence within the dataset.

![IMG 041](https://miro.medium.com/v2/resize:fit:640/format:webp/1*BmP0iCmnLtxyONR_8PQ7ZA.png)

This systematic approach to data validation, enhancement, and refinement culminated in a more robust and coherent ‘Olist_sellers_dataset,’ laying the groundwork for more accurate analyses and insights.

**Olist_product_category_name_translation_dataset**

Data Inspection: The journey through the ‘Olist_product_category_name_translation_dataset’ commenced with an examination of its scale, uncovering a total of 71 rows.

![IMG 042](https://miro.medium.com/v2/resize:fit:640/format:webp/1*S0w5aNg3D803sgwEQQ64eQ.png)

Data Comparison: An intriguing observation was made when comparing the columns ‘product_category_name’ and ‘product_category_name_english.’ Recognizing discrepancies in the ‘product_category_name_english’ column, a decision was made to address potential missing entries through data manipulation.

Data Enhancement: To bridge the gaps in the ‘product_category_name_english’ column, a left join was orchestrated between the ‘olist_products_dataset’ and the ‘product_category_name_translation’ table. This technique allowed for the identification of absent translations and incomplete entries in the ‘product_category_name_english’ column.

![IMG 043](https://miro.medium.com/v2/resize:fit:720/format:webp/1*Dhg5yNq5ngVXu-vpNF7l1Q.png)

Data Integration: To rectify the deficiencies and ensure a comprehensive dataset, missing entries were introduced into the ‘product_category_name_translation’ table. This was achieved through the addition of new rows with corresponding ‘product_category_name’ and ‘product_category_name_english’ values. The new entries included ‘pc_gamer’ with the translation ‘gaming PC’ and ‘portateis_cozinha_e_preparadores_de_alimentos’ with the translation ‘portable kitchen and food preparers.’

![IMG 044](https://miro.medium.com/v2/resize:fit:720/format:webp/1*mRaiBO7mYuwfknj6i7YOfg.png)

Validation of Update: A subsequent verification of the dataset affirmed the successful addition of the new rows, cementing the improvements made to the ‘Olist_product_category_name_translation_dataset.’

![IMG 045](https://miro.medium.com/v2/resize:fit:640/format:webp/1*hgjtXIyo0KoauouQZp5rjQ.png)

This meticulous approach to data enrichment and reconciliation ensures a more comprehensive and accurate ‘Olist_product_category_name_translation_dataset,’ facilitating more insightful analyses and coherent interpretations.

Analysis and Share Phase: This phase involves answering business questions and performing Exploratory data analysis, Business questions are meticulously addressed using analytical tools and visualization tools.

**Deliverables**

Question 1: What is the total revenue generated by Olist, and how has it changed over time?

ANS: To answer this question, I performed the following steps:

Step 1: I joined the necessary tables related to orders, using the ‘order_id’ as the common key, to get the purchase timestamp and payment value for each order

![IMG 046](https://miro.medium.com/v2/resize:fit:720/format:webp/1*h0942QdVh-foZPy8M7qHSQ.png)

Step 2: I built a query to calculate the total revenue over time by summing up the payment values for each purchase date. I also filtered out canceled orders and orders with no approval date:

![IMG 047](https://miro.medium.com/v2/resize:fit:720/format:webp/1*foJkl06YpwROfftpZwHpgg.png)

Revenue Summation: A final query was formulated to compute the sum of the total revenue, providing an overview of the cumulative revenue earned over the specified time period.

![IMG 048](https://miro.medium.com/v2/resize:fit:720/format:webp/1*p-faTvdb83B1L7CI-jaASQ.png)

Interpretation:

![IMG 049](https://miro.medium.com/v2/resize:fit:720/format:webp/1*rzZQVqYNzYvncpadOBSGbw.png)

The visualization illustrating Olist’s total revenue evolution over time reveals a consistent upward trajectory. However, a noticeable decline occurred at the close of September 2018. While this could be attributed to the conclusion of transaction records in the dataset, external factors such as seasonality, promotions, or shifts in Olist’s business strategy might also play a role. The pinnacle of revenue generation was evident in November 2017, followed by subsequent fluctuations leading to the pronounced downturn in the visualization’s final stages.

Question 2: How many orders were placed on Olist, and how does this vary by month or season?

ANS: To answer this question, I performed the following steps:

Step 1: A query was used to identify any missing values in the ‘order_purchase_timestamp’ column.

![IMG 050](https://miro.medium.com/v2/resize:fit:720/format:webp/1*EmLsDg6Ojnk4MQuMpr84Bw.png)

Step 2: A comprehensive query was formulated to calculate the total number of orders placed by month and season. The ‘order_purchase_timestamp’ was used to determine the year, month, and season of each order. Seasons were categorized based on the months they span (Winter: Dec-Feb, Spring: Mar-May, Summer: Jun-Aug, Fall: Sep-Nov).

![IMG 060](https://miro.medium.com/v2/resize:fit:720/format:webp/1*AUiCG9VI8ZfjtLl2oEYWgA.png)

Step 3: A final query was devised to calculate the sum of total orders across all months and seasons.

![IMG 061](https://miro.medium.com/v2/resize:fit:640/format:webp/1*9ScoM_Dj88WVeUjPnrgRVA.png)

Interpretation: The analysis of Olist’s orders by month and season yielded the following insights:

![IMG 062](https://miro.medium.com/v2/resize:fit:720/format:webp/1*RTe0nL8Cpdvre-AdiC6naA.png)

Orders by Month:

- The visualization of orders by month indicated that August had the highest volume of orders, closely followed by May, March, and June.

- There was a noticeable decrease in order volume in September, which aligns with the conclusion of business operations in that month as observed in previous analyses.

Orders by Season:

\*The analysis of orders by season revealed that the summer season experienced the highest surge in orders, followed by the spring season and then the winter season.

- The fall season demonstrated the lowest order trends, potentially attributed to business activities concluding during that period.

Question 3: What are the most popular product categories on Olist, and how do their sales volumes compare to each other?

ANS: To answer this question, I performed the following steps:

Step 1: A query was formulated to join multiple tables to gather information about product categories, orders, order items, and payments. The English translation of product category names was used for clarity.

Step 2: The query grouped the data by product category and calculated the count of distinct orders and the total revenue generated within each category.

Step 3: The results were then ordered by order count in descending order, and visualizations were created to showcase the popularity and sales volumes of various product categories.

![IMG 063](https://miro.medium.com/v2/resize:fit:720/format:webp/1*7Ca_3FRwGmO_OdrypR7I6A.png)

Interpretation: The analysis provided insights into the popularity and revenue generation of different product categories on Olist:

![IMG 064](https://miro.medium.com/v2/resize:fit:640/format:webp/1*_0dqVsGUGGAEkfq5dCQJBw.png)

By Order Count:

- The visualization based on order count highlighted that the “bed_bath_table” category was the most popular among customers.

- Other popular categories included “health_beauty,” “sports_leisure,” “computers_accessories,” and “furniture_decor,” among others.

By Total Revenue:

- The visualization based on total revenue confirmed that “bed_bath_table” maintained its position as the most popular category in terms of revenue.

- “Health_beauty” and “computers_accessories” also performed well in terms of revenue generation.

- Interestingly, despite “sports_leisure” ranking third in terms of order count, it ranked lower in revenue compared to the top categories.

Question 4: What is the average order value (AOV) on Olist, and how does this vary by product category or payment method?

ANS: To answer this question, I performed the following steps:

By Product Category:

1. A query was formulated to join multiple tables to gather information about product categories, orders, order items, and payments. The English translation of product category names was used for clarity.

2. The query calculated the average payment value within each product category.

3. The results were ordered by average order value in descending order, and visualizations were created to showcase the AOV in different product categories.

![IMG 065](https://miro.medium.com/v2/resize:fit:720/format:webp/1*YMMRQhk1oROSGu5q69-tOg.png)

By Payment Method:

1. A query was created to join multiple tables to retrieve information about orders, order items, and payments, focusing on payment types.

2. The query calculated the average payment value for each payment method.

3. The results were ordered by average order value in descending order, and visualizations were generated to display the AOV based on payment methods.

![IMG 066](https://miro.medium.com/v2/resize:fit:720/format:webp/1*zyrwhCeUq4OrCxhtEqJy2g.png)

Interpretation:

![IMG 067](https://miro.medium.com/v2/resize:fit:720/format:webp/1*5nHXUPboLR1cu1K5ZIw6oQ.png)

By Product Category:

- The visualization based on product categories indicates that the “computers” category has the highest average order value (AOV). Customers tend to spend more, on average, when purchasing items from this category.

- While the “bed_bath_table” category ranks high in terms of total revenue and order count, its AOV is not as competitive. This suggests that customers within this category make more purchases, but they may not spend as much on each order.

- Olist might consider implementing strategies to increase AOV within categories like “bed_bath_table,” such as cross-selling higher-priced products or offering bundles.

![IMG 068](https://miro.medium.com/v2/resize:fit:720/format:webp/1*qJiDeFr5wpfhBvGbYP8tpQ.png)

By Payment Method:

- The visualization based on payment methods reveals that credit cards are the most popular payment choice among Olist customers. This aligns with the modern trend of online transactions and digital payments.

- “Boletos” emerged as the second most popular payment method. This suggests that Olist caters to a diverse customer base, including those who prefer alternative payment methods like “boletos.”

- The widespread usage of credit cards and “boletos” indicates that Olist has successfully accommodated different customer preferences and needs.

These findings provide valuable insights into Olist’s marketing and business strategies. By understanding customer behavior in terms of AOV and payment preferences, Olist can tailor its efforts to optimize revenue and customer satisfaction.

Question 5: How many sellers are active on Olist, and how does this number change over time?

ANS: To answer this question, I performed the following steps:

1. A query was formulated to join the orders and order items datasets based on order IDs.

2. The query calculated the count of distinct seller IDs for each month and year.

3. The results were ordered by purchase year and purchase month.

![IMG 069](https://miro.medium.com/v2/resize:fit:720/format:webp/1*7F-ygZ6Dp1o0WTxLd_3yDQ.png)

4. A subquery was created to generate the total sum of orders within the 2 years

![IMG 070](https://miro.medium.com/v2/resize:fit:720/format:webp/1*u9ArIigZO31rvxcy-25HRg.png)

5. A visualization was generated to showcase the trend in the number of active sellers over time.

Interpretation:

![IMG 071](https://miro.medium.com/v2/resize:fit:720/format:webp/1*bbR1jmvmie6jj9qkO8OQ4g.png)

The visualization displays a clear and consistent upward trend in the count of active sellers on Olist from 2016 to 2018. This trend indicates that an increasing number of sellers are joining the Olist platform and engaging in selling their products over the years.

- 2016: The count of active sellers starts at a relatively low number, which is expected in the initial year of operation. However, there was little fall which later amounted to a steady rise in seller activity as the platform gained traction.
- 2017: The upward trajectory continues in 2017, with a notable increase in the number of active sellers. This suggests that Olist’s reputation and reach are expanding among sellers who recognize the platform’s potential.
- 2018: The growth trend persists in 2018, with the count of active sellers continuing to rise. This trend could be a result of Olist’s successful efforts to attract and retain sellers through various strategies and initiatives.

It’s important to note that the abrupt decrease observed at the end of the dataset could be due to limitations in data availability or other factors that impacted the recording of seller activity during that period. Overall, the visualization demonstrates that Olist has experienced consistent growth in seller engagement, indicating its attractiveness as a marketplace for sellers to connect with customers and expand their businesses.

Question 6: What is the distribution of seller ratings on Olist, and how does this impact sales performance?

ANS: To answer this question, I performed the following:

!. The query utilized multiple joins between the sellers, order items, orders, order reviews, and order payments datasets to gather relevant information.

2. Ratings were categorized into different levels (e.g., Excellent, Very Good, Good, Bad, Very Bad) for better visualization and interpretation.

3. The query calculated the number of orders, total revenue, and average revenue for each rating category.

4. The results were ordered by average revenue to observe the impact of ratings on sales performance.

![IMG 072](https://miro.medium.com/v2/resize:fit:720/format:webp/1*FHTIrnDJV8qNSBUR2rKT6A.png)

Interpretation:

![IMG 073](https://miro.medium.com/v2/resize:fit:720/format:webp/1*813-5CQ2jo4vB8CwNZ1VEw.png)

Distribution of Seller Ratings: The distribution of seller ratings reveals that products with “Excellent” ratings dominate the landscape, accounting for the highest number of orders. This suggests that items that receive excellent ratings tend to attract a significant volume of orders compared to other rating categories. The preference for products with excellent ratings indicates that customers on Olist prioritize quality and positive experiences when making purchasing decisions.

![IMG 074](https://miro.medium.com/v2/resize:fit:720/format:webp/1*21NALV1XCKc5oErqmT1Q5g.png)

Impact of Seller Ratings on Sales Performance: When assessing the impact of seller ratings on sales performance, several interesting insights emerge from the visualization. While products with “Excellent” ratings generate the highest total revenue and number of orders, it’s intriguing to note that their average revenue is not the highest. This indicates that although these products attract a large volume of orders, they might consist of lower-priced items that contribute to the overall revenue but not necessarily to high average order values.

On the contrary, products with a “Very Bad” rating exhibit the highest average revenue. This observation can be attributed to two possible scenarios:

1. Higher-Priced Items: Products with “Very Bad” ratings might include a few high-priced items that customers are willing to purchase despite the poor ratings. These items contribute to higher average revenue despite the negative feedback.

2. Limited Availability: Items with poor ratings might have limited availability, leading customers to choose them despite the low ratings if they fulfill specific needs or preferences.

Complex Dynamics: The relationship between seller ratings, sales volume, and average revenue highlights the complexity of buyer behavior and its impact on sales performance. While higher-rated products attract more orders, they might not necessarily lead to the highest average revenue due to pricing, market competition, and other factors. Conversely, lower-rated products with higher average revenue suggest that price points and perceived value might be driving purchasing decisions.

These observations emphasize the importance of understanding customer preferences, pricing strategies, and product value propositions when analyzing the impact of seller ratings on sales performance. It also underscores that a comprehensive analysis should consider multiple dimensions, such as average order value, to gain a holistic view of the relationship between ratings and sales outcomes on Olist.

Question 7: How many customers have made repeat purchases on Olist, and what percentage of total sales do they account for?

ANS: To answer this question, I performed the following:

Customer Retention and Revenue Exploration: In pursuit of customer loyalty insights, an intricate analysis was performed to identify customers making repeat purchases on Olist and their corresponding contribution to total sales.

Repeat Purchases Identification: By amalgamating the ‘olist_customers_dataset’ and ‘olist_orders_dataset,’ a comprehensive database was assembled. Through judicious inner joins, customers who exhibited more than one distinct order were isolated, capturing the essence of repeat purchasing.

Revenue Aggregation: In parallel, the revenue accrued by these repeat customers was meticulously consolidated. This was achieved by integrating the ‘olist_order_payments_dataset’ into the existing framework.

Repeat Customer and Revenue Synthesis: Employing the assembled datasets, a pivotal junction was reached. The number of distinct customers who engaged in repeat purchases was counted, amounting to an impressive total.

Cumulative Revenue Determination: Simultaneously, the cumulative revenue amassed by these loyal customers was computed, laying bare the extent of their financial contributions.

Percentage of Total Revenue: The cumulative revenue generated by repeat customers was then juxtaposed against the overall revenue. An intricate arithmetic calculation yielded the percentage of total sales that these loyal customers contributed.

![IMG 075](https://miro.medium.com/v2/resize:fit:720/format:webp/1*cDewtaQ4ARjVPjK_KMO5jQ.png)

The analysis indicates that 2,997 customers have made repeated purchases on Olist. These customers have contributed to a total revenue of approximately 6% of the overall sales. This finding suggests that while repeat customers make up a relatively small portion of the customer base, their loyalty and repeated purchases play a noteworthy role in driving a significant fraction of the total revenue.

Question 8: What is the average customer rating for products sold on Olist, and how does this impact sales performance?

ANS: To answer this question, I performed the following:

Product Category Analysis: To discern the relationship between average customer ratings and sales performance, an elaborate exploration of product categories was undertaken.

Data Integration: Leveraging the ‘olist_order_reviews_dataset,’ ‘olist_orders_dataset,’ ‘olist_order_items_dataset,’ ‘olist_order_payments_dataset,’ ‘olist_products_dataset,’ and ‘product_category_name_translation’ tables, an intricate web of data integration was spun.

Calculation of Average Customer Ratings: By computing the average customer ratings for each product category, valuable insights into product satisfaction were gleaned.

Quantifying Sales Performance: Concurrently, the total number of orders and the cumulative revenue generated for each product category were meticulously quantified.

Assessing Average Revenue: The average revenue per order was also computed, providing a granular understanding of the monetary aspect of sales performance.

Analysis and Implications: By juxtaposing the average customer ratings with sales performance metrics, a comprehensive evaluation of the impact of customer satisfaction on revenue generation was achieved.

![IMG 076](https://miro.medium.com/v2/resize:fit:720/format:webp/1*HB7_-i2f99zycYuEL3FeMA.png)

This data-driven exploration illuminates the intricate interplay between product quality, as mirrored by customer ratings, and its profound influence on sales performance. The analysis unveiled a striking pattern in average ratings, which predominantly fall within the range of 3 to 4.

Remarkably, a singular exception arises within the “security_and_services” product category, characterized by an average customer rating of 2. This outlier, however, occupies the lower rungs of revenue generation, accounting for just 2 total orders.

This juxtaposition underscores a vital correlation — lower average ratings correspond with diminished sales performance. It highlights the significance of product quality and customer satisfaction in driving revenue, emphasizing the need for enhancements in the “security_and_services” category to unlock its full sales potential.

Question 9: What is the average order cancellation rate on Olist, and how does this impact seller performance?

ANS: To answer this question, I performed the following steps:

Step 1: Identifying Cancelled Orders In the first step, a common table expression (CTE) named “Cancelled” was created. This CTE filtered orders with the “order_status” labeled as ‘canceled’ from the “Olist_orders_dataset.”

Step 2: Calculating Cancellation Rate In the second step, the cancellation rate was calculated. The total number of canceled orders (from the “Cancelled” CTE) was divided by the total number of orders (from the “Olist_orders_dataset”). This calculation was expressed as a percentage to determine the average order cancellation rate.

![IMG 077](https://miro.medium.com/v2/resize:fit:720/format:webp/1*d4Q3bCm0bRIvcprSZk88GA.png)

Results: The average order cancellation rate on Olist was computed as a percentage having ‘0.6285%’. This metric provides insights into the frequency of order cancellations on the platform which has a fairly low rate.

Question 10: What are the top-selling products on Olist, and how have their sales trends changed over time?

ANS: To answer this question, I performed the following steps:

Step 1: Data Preparation

- Data from the relevant datasets was integrated, filtering out canceled orders and ensuring that orders were approved.

- Key fields such as purchase year, product category name (in English), total quantity sold, and total revenue were extracted and aggregated.

Step 2: Identifying Top-Selling Products

- The query grouped the data by purchase year and product category name to determine the total quantity sold and total revenue for each category in each year.

- The results were sorted in descending order based on total quantity sold, revealing the top-selling product categories for each year.

![IMG 078](https://miro.medium.com/v2/resize:fit:720/format:webp/1*8T9ojTV8PWw0Mkmay3yQ6Q.png)

Results: The picture below presents the top-selling product categories on Olist for the years 2016, 2017, and 2018, along with the corresponding total quantity sold and total revenue for each category.

![IMG 079](https://miro.medium.com/v2/resize:fit:720/format:webp/1*NzzRfqibKC-iClPjcxs4FA.png)

Sales Trends Analysis:

![IMG 080](https://miro.medium.com/v2/resize:fit:720/format:webp/1*ZxOi7NLsU6h-iHaKvxNPWg.png)

- In 2016, “furniture_decor” and “health_beauty” were the top-selling categories.

![IMG 081](https://miro.medium.com/v2/resize:fit:720/format:webp/1*RvlEs3H8Y1Kh8hl7l3YOLA.png)

- In 2017, “bed_bath_table” emerged as the top-selling category, followed by “furniture_decor.”

![IMG 082](https://miro.medium.com/v2/resize:fit:720/format:webp/1*i5PPhb62DV9ZhDuAUG5cxQ.png)

- In 2018, “bed_bath_table” maintained its position as the top-selling category, with “health_beauty” also performing strongly.

Interpretation: The analysis reveals that the top-selling product categories on Olist have changed over time. Olist should take note of these trends to tailor their strategies and marketing efforts accordingly. For example, in 2017 and 2018, “bed_bath_table” was a consistently strong performer, suggesting potential opportunities for sellers and advertisers to focus on this category. Additionally, “health_beauty” remained popular across multiple years, indicating its enduring appeal to customers.

Question 11: Which payment methods are most commonly used by Olist customers, and how does this vary by product category or geographic region?

ANS: To answer this question, I performed the following steps:

-- Identify Common Payment Methods

SELECT
payment_type,
COUNT(\*) AS payment_count
FROM
[olist].[dbo].[olist_order_payments_dataset]
GROUP BY
payment_type
ORDER BY
payment_count DESC;

-- Analyze Payment Methods by Product Category:

SELECT
pc.product_category_name_english AS category_name,
op.payment_type,
COUNT(\*) AS payment_count
FROM
[olist].[dbo].[olist_order_payments_dataset] AS op
INNER JOIN [olist].[dbo].[olist_orders_dataset] AS o ON op.order_id = o.order_id
INNER JOIN [olist].[dbo].[olist_order_items_dataset] AS oi ON o.order_id = oi.order_id
INNER JOIN [olist].[dbo].[olist_products_dataset] AS p ON oi.product_id = p.product_id
INNER JOIN [olist].[dbo].[product_category_name_translation] AS pc ON p.product_category_name = pc.product_category_name
WHERE
order_status <> 'canceled' AND order_approved_at IS NOT NULL
GROUP BY
pc.product_category_name_english, op.payment_type
ORDER BY
category_name, payment_count DESC;

-- Analyze Payment Methods by Geographic Region:

SELECT
c.customer_city AS city,
op.payment_type,
COUNT(\*) AS payment_count
FROM
[olist].[dbo].[olist_order_payments_dataset] AS op
INNER JOIN [olist].[dbo].[olist_orders_dataset] AS o ON op.order_id = o.order_id
INNER JOIN [olist].[dbo].[olist_customers_dataset] AS c ON o.customer_id = c.customer_id
WHERE
order_status <> 'canceled' AND order_approved_at IS NOT NULL
GROUP BY
c.customer_city, op.payment_type
ORDER BY
city, payment_count DESC;

Identify Common Payment Methods:

![IMG 083](https://miro.medium.com/v2/resize:fit:640/format:webp/1*SRJ7hFIBxnyG3ydBqQb1rQ.png)

The most common payment method used by Olist customers, as revealed in the analysis, is credit card. This payment method has the highest usage count, indicating that it is the preferred choice among customers. The convenience, security, and efficiency associated with credit card payments likely contribute to its popularity.

Analyze Payment Methods by Product Category:

![IMG 084](https://miro.medium.com/v2/resize:fit:720/format:webp/1*oG9BKqe-S24u2nrba3_6jA.png)

Payment method preferences by geographic region also align with the broader trend — credit card payments are the most commonly used method across different cities. This uniformity indicates that credit card usage is not significantly affected by geographic location within the dataset. Therefore, Olist can focus on providing a consistent payment experience to customers in various regions.

Interpretation:

The visualization and analysis affirm the dominance of credit card payments among Olist customers. Credit cards are the preferred choice for online transactions, and this preference transcends product categories and geographic regions. Customers trust credit card payments for their online shopping, emphasizing the importance of providing secure and efficient credit card payment processing on the Olist platform.

Question 12: How do customer reviews and ratings affect sales and product performance on Olist?

Answer to this question has already been answered in Question 6

Question 13: Which product categories have the highest profit margins on Olist, and how can the company increase profitability across different categories?

ANS: To answer this question, I performed the following steps:

WITH Profitability AS (
SELECT
pc.product_category_name_english,
SUM(op.payment_value) AS total_revenue,
SUM(oi.price + oi.freight_value) AS total_cost
FROM
[olist].[dbo].[olist_order_items_dataset] AS oi
INNER JOIN [olist].[dbo].[olist_products_dataset] AS p ON oi.product_id = p.product_id
INNER JOIN [olist].[dbo].[olist_order_payments_dataset] AS op ON oi.order_id = op.order_id
INNER JOIN [olist].[dbo].[product_category_name_translation] AS pc ON p.product_category_name = pc.product_category_name
GROUP BY
pc.product_category_name_english
)
SELECT
product_category_name_english,
ROUND(SUM(total_revenue), 2) AS total_revenue,
ROUND(SUM(total_cost), 2) AS total_cost,
ROUND((SUM(total_revenue) - SUM(total_cost)) / SUM(total_revenue) \* 100, 2) AS profit_margin
FROM
Profitability
GROUP BY
product_category_name_english
ORDER BY
profit_margin DESC;

![IMG 085](https://miro.medium.com/v2/resize:fit:640/format:webp/1*TolYgPg8KJFNuIn20MuHLw.png)

Interpretation and Strategic Insights: The visualized data reveals significant variations in profit margins across different product categories on Olist.

![IMG 086](https://miro.medium.com/v2/resize:fit:720/format:webp/1*ldKH6sJwvPpx-MN4OWN9jg.png)

The product category with the highest profit margin is “fixed_telephony,” boasting an impressive margin of 67.89%.

Following closely is the “drinks” category, which exhibits a robust profit margin of 59.79%.

However, not all categories share this level of profitability:

“Furniture_mattress_and_upholstery” shows a notable negative profit margin of -9.17%, signaling potential concerns in this category’s profitability.

Additional categories with lower profit margins include “home_appliances_2,” “home_appliances,” “small_appliances_home_oven_and_coffee,” “music,” and “security_and_services,” with profit margins ranging from -8.89% to 0%.

These findings underscore the need for strategic measures to address profitability challenges. Olist can consider implementing dynamic pricing strategies for product categories with lower profit margins, such as offering discounts during slower periods to attract more customers and increase sales. It’s vital to balance profitability across categories to optimize overall business performance.

Question 14: How do Olist’s marketing spend and channel mix impact sales and customer acquisition costs, and how can the company optimize its marketing strategy to increase ROI?

Olist’s marketing spend and channel mix have a significant impact on sales and customer acquisition costs (CAC). To optimize its marketing strategy and increase Return on Investment (ROI), Olist should consider the following key strategies:

1. Customer Retention: Olist should prioritize strategies to retain existing customers. Repeat customers tend to have a lower CAC and higher lifetime value. Our analysis in Q7 revealed that there are 2,997 repeat customers on Olist, contributing approximately 6% of the overall sales revenue. By investing more in retaining these customers, Olist has the potential to improve the average order value. This can help offset customer acquisition costs, reduce the payback period, and ultimately increase ROI.

2. Focus on High-Potential Products: Our analysis in business Q4 has highlighted product categories with significant potential, such as computer accessories and fixed_telephony. Olist should capitalize on the growth potential of these products. Allocating more marketing resources to promote products in these categories and implementing sales promotion techniques can drive higher sales and profitability.

3. Data-Driven Decision-Making: Utilize data analytics tools to gain deeper insights into customer behavior, campaign performance, and ROI.

4. Resource Allocation: Continuously monitor the performance of marketing channels and allocate budgets based on ROI calculations. Reduce spending on underperforming channels and reallocate resources to high-ROI channels.

By implementing these strategies, Olist can enhance its marketing efficiency, reduce customer acquisition costs, and drive higher ROI, ultimately becoming more competitive and profitable in the market.

_Thank you for investing your valuable time in exploring these insights with me. Your feedback and comments are highly appreciated, so please feel free to share your thoughts and reviews. Your input is essential in my ongoing journey of discovery and analysis. I look forward to hearing from you!_
