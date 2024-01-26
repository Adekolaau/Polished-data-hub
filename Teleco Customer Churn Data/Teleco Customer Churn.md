# Unlocking Customer Retention in Telecommunication: A Data-Driven Approach

**A Comprehensive Analysis and Recommendations for Reducing Churn**

![img 001](https://miro.medium.com/v2/resize:fit:1100/0*6x--29yulNYBf2s1)

**Introduction**

In today’s fiercely competitive telecommunication industry, retaining customers is paramount to sustained growth and profitability. Customer churn, the rate at which customers switch to competing services, poses a significant challenge for telecom companies. In this report, we present a data-driven analysis of customer churn and provide actionable recommendations to help a telecommunication company combat this pressing issue.

**About Dataset**

The core dataset used in this analysis is the [Telco customer churn dataset](https://www.kaggle.com/datasets/blastchar/telco-customer-churn/data) sourced from Kaggle.

**Context**

A telecommunication company is experiencing a massive customer loss. They intend to solve this problem and have hired a Data Analyst. It’s your responsibility as the data analyst to come up with a report/dashboard that best solves this problem.

**Content**

Each row represents a customer, each column contains the customer’s attributes described in the column Metadata.

The data set includes information about:

- Customers who left within the last month — the column is called Churn.
- Services that each customer has signed up for, such as phone, multiple lines, internet, online security, online backup, device protection, tech support, and streaming TV and movies.
- Customer account information, including how long they’ve been a customer, contract type, payment method, paperless billing, monthly charges, and total charges.
- Demographic info about customers, including gender, age range, and whether they have partners and dependents.

**Data Cleaning Process**

Our journey begins with data cleaning and preparation. The dataset contains valuable information about customers, their demographics, services, and billing preferences. During this phase, we addressed issues such as missing values and corrected inaccuracies. We also created new variables, like “NewTotalCharges,” to ensure data accuracy. Created a new column called “Tenure Segment” to categorize tenure into “Low,” “Medium,” and “High” segments based on specified criteria.

![img 002](https://miro.medium.com/v2/resize:fit:1100/format:webp/1*o97eY_xebd9TA9eN1p_cyQ.png)

**Data Analysis and Insights**

Our analysis reveals critical insights about the company’s customer base:

![img 003](https://miro.medium.com/v2/resize:fit:720/format:webp/1*WOrBzsjY7DjEOvxbP7NFFQ.png)

**Overall Data Analysis**

- Total Revenue: The company’s annual revenue is substantial at $16.06 million.
- Churn Rate: Alarmingly high at 26.54%, indicating a pressing issue.
- Customer Lifetime Value: Each customer contributes an average of $1.26 million in lifetime value.
- Churned Customers: A staggering 1,869 customers have already left.
- Total Customers: The company serves a total of 7,043 customers.

**_Insight:_** The high churn rate is a major concern, leading to substantial revenue loss.

**Gender Distribution Analysis**

- Females: Represent 49.52% of the customer base (3,488 individuals).
- Males: Comprise the remaining 50.48% (3,555 individuals).

_Insight:_ The customer base is almost evenly split between genders.

**Device Protection and Tech Support Analysis**

- Customers without tech support and device protection: 2,260 customers, generating $3.35M in revenue, with a 46.37% churn rate.
- Customers with tech support but without device protection: 835 customers, accounting for $2.22M in revenue, with a 19.52% churn rate.
- Customers with device protection but without tech support: 1,213 customers, contributing $3.91M in revenue, with a 32.81% churn rate.
- Customers with both tech support and device protection: 1,209 customers, generating $5.56M in revenue, with a 12.16% churn rate.
- Customers without internet service for tech support and device protection: 1,526 customers, accounting for $1.01M in revenue, with a 7.40% churn rate.

_Insight:_ Customers lacking tech support and device protection have a significantly higher churn rate.

**Online Backup and Online Security Analysis**

- Customers without online backup and online security: 2,195 customers, generating $3.22M in revenue, with a 48.15% churn rate.
- Customers with online backup but without online security: 1,303 customers, accounting for $4.26M in revenue, with a 31.01% churn rate.
- Customers with online security but without online backup: 893 customers, contributing $2.43M in revenue, with a 19.71% churn rate.
- Customers with both online backup and online security: 1,126 customers, generating $5.15M in revenue, with a 10.57% churn rate.
- Customers without internet service for online security and online backup: 1,526 customers, accounting for $1.01M in revenue, with a 7.40% churn rate.

_Insight:_ Customers without online security and backup services exhibit a higher churn rate.

**Internet and Phone Service Analysis**

- Customers with phone service and DSL internet: 1,739 customers, generating $4.1M in revenue, with a 16.62% churn rate.
- Customers with phone service and fiber optic internet: 3,096 customers, accounting for $9.92M in revenue, with a 41.89% churn rate.
- Customers with phone service but no internet service: 1,526 customers, contributing $1.01M in revenue, with a 7.40% churn rate.
- Customers with DSL internet but no phone service: 682 customers, generating $1.02M in revenue, with a 24.93% churn rate.

_Insight:_ Customers with fiber optic internet and phone service have a notably higher churn rate.

**Streaming Preferences Analysis**

- Customers not engaging in streaming: 2,018 customers, accounting for $2.86M in revenue, with a 34.44% churn rate.
- Customers exclusively streaming movies: 792 customers, contributing $2.01M in revenue, with a 31.19% churn rate.
- Customers exclusively streaming TV: 767 customers, generating $1.91M in revenue, with a 31.68% churn rate.
- Customers indulging in both TV and movie streaming: 1,940 customers, accounting for $8.25M in revenue, with a 29.43% churn rate.
- Customers without internet service for streaming: 1,526 customers, contributing $1.01M in revenue, with a 7.40% churn rate.

_Insight:_ Customers not engaging in streaming exhibit a higher churn rate.

**Partner and Dependents Analysis**

- Customers without partners and dependents: 3,280 customers, generating $5.29M in revenue, with a 34.24% churn rate.
- Customers with dependents but no partners: 361 customers, accounting for $484.74K in revenue, with a 21.33% churn rate.
- Customers with partners but no dependents: 1,653 customers, contributing $5.51M in revenue, with a 25.41% churn rate.
- Customers with both partners and dependents: 1,749 customers, generating $4.78M in revenue, with a 14.24% churn rate.

_Insight:_ Solo customers without partners or dependents exhibit a higher churn rate.

**Multiple Lines Analysis**

- Customers with multiple lines: 2,971 customers, accounting for $10.46M in revenue, with a 28.61% churn rate.
- Customers without multiple lines: 3,390 customers, contributing $4.57M in revenue, with a 25.04% churn rate.

_Insight:_ Customers with multiple lines exhibit a slightly higher churn rate.

**Contract Type by Tenure Segment Analysis**

- High-tenure customers (Month-to-month): 1,144 customers, accounting for $3.83M in revenue, with a 30.86% churn rate.
- High-tenure customers (One-year contract): 1,152 customers, generating $4.26M in revenue, with an 11.89% churn rate.
- High-tenure customers (Two-year contract): 1,537 customers, contributing $6.21M in revenue, with a 3.12% churn rate.
- Low-tenure customers (Month-to-month): 1,994 customers, accounting for $551.05K in revenue, with a 51.35% churn rate.
- Low-tenure customers (One-year contract): 124 customers, generating $37.42K in revenue, with a 10.48% churn rate.
- Low-tenure customers (Two-year contract): 68 customers, contributing $12.6K in revenue.
- Medium-tenure customers (Month-to-month): 737 customers, accounting for $928.54K in revenue, with a 37.72% churn rate.
- Medium-tenure customers (One-year contract): 197 customers, generating $169.89K in revenue, with an 8.12% churn rate.
- Medium-tenure customers (Two-year contract): 90 customers, contributing $55.66K in revenue.

_Insight:_ High-tenure customers on two-year contracts exhibit the lowest churn rate.

**Billing Preferences Analysis**

- Paperless billing: Preferred by 59.22% (4,171 customers), generating $10.75M in revenue, with a 33.57% churn rate.
- Non-paperless billing: Chosen by 40.78% (2,872 customers), accounting for $5.3M in revenue, with a 16.33% churn rate.

_Insight:_ Customers opting for paperless billing exhibit a higher churn rate.

**Senior Citizens Analysis**

**_Senior Citizens:_**

- Total Revenue: $12.84 million
- Churn Rate: Concerning at 23.61%
- Churned Customers: 1,393
- Customer Lifetime Value: $1.18M
- Total Customers: 5,901

**_Non-Senior Citizens:_**

- Total Revenue: $3.21 million
- Churn Rate: 41.68%
- Churned Customers: 476
- Customer Lifetime Value: $127.54K
- Total Customers: 1,142

_Insight:_ Senior citizens have a lower churn rate and higher customer lifetime value.

**Payment Method Analysis**

**_Bank Transfer:_**

- Total Revenue: $4.75 million
- Churn Rate: 16.71%
- Churned Customers: 258
- Customer Lifetime Value: $517.12K
- Total Customers: 1,544

**_Credit Card:_**

- Total Revenue: $4.67 million
- Churn Rate: 15.24%
- Churned Customers: 232
- Customer Lifetime Value: $562.88K
- Total Customers: 1,522

**_Electronic Checks:_**

- Total Revenue: $4.94 million
- Churn Rate: Concerning at 45.29%
- Churned Customers: 1,071
- Customer Lifetime Value: $217.9K
- Total Customers: 2,365

**_Mailed Checks:_**

- Total Revenue: $1.69 million
- Churn Rate: 19.11%
- Churned Customers: 308
- Customer Lifetime Value: $299.73K
- Total Customers: 1,612

_Insight:_ Customers using electronic checks have a significantly higher churn rate.

**Telecommunication Company Customer Retention Recommendations**

_Backed by Data Insights for Enhanced Customer Retention_

The journey to reducing customer churn and bolstering retention begins with informed strategies. Our data-driven analysis unveils key opportunities for the telecommunication company to enhance customer engagement and satisfaction while reducing churn.

1. **_Implement a Comprehensive Customer Retention Strategy:_** Address identified pain points systematically to create a holistic approach to customer retention.
2. **_Tailor Marketing and Service Offerings:_** Customize marketing and services to cater to the preferences and needs of both genders, ensuring inclusivity.
3. **_Educate and Promote Tech Support and Device Protection Services:_** Launch targeted campaigns to inform customers about the value of tech support and device protection services.
4. **_Promote Online Security and Backup Services:_** Consider bundling these services with existing offerings to increase adoption rates and overall satisfaction.
5. **_Enhance Fiber Optic Internet and Phone Service:_** Investigate and resolve issues related to fiber optic internet and phone service, focusing on the concerns of affected customers.
6. **_Encourage Streaming Services Adoption:_** Develop strategies to promote the adoption of streaming services among customers, potentially through enticing content offerings.
7. **_Tailored Retention Strategies for Diverse Households:_** Create retention strategies that cater to customers with specific household structures, acknowledging their unique needs.
8. **_Retaining Multiple Lines:_** Investigate reasons behind churn among customers with multiple lines and implement incentives to keep them engaged.
9. **_Optimize Contract Choices:_** Encourage customers to choose longer-term contracts by offering incentives for contract renewals, ultimately reducing churn.
10. **_Promote Paperless Billing Adoption:_** Analyze the reasons behind paperless billing preference and introduce incentives to encourage its adoption.
11. **_Focus on Non-Senior Citizens:_** Implement specialized retention strategies for non-senior citizens to reduce their churn rate and enhance their overall experience.
12. **_Improve Payment Options:_** Address issues related to electronic check payments, offering alternatives to improve customer satisfaction and retention.

In summary, the company needs to address the high churn rate as a top priority. This can be achieved through a multi-faceted approach, including improving customer education about services, promoting long-term contracts, exploring the reasons behind paperless billing churn, and enhancing payment options, especially for electronic checks. Additionally, creating targeted retention strategies for non-senior citizens and addressing the concerns of customers with fiber optic internet and phone service can help mitigate churn and boost revenue.

Thank you
