# Customer-Churn-Analytics

End-to-end customer churn and retention analytics project using Python, SQL, and Power BI.



\# Customer Churn \& Retention Analytics



\## Project Overview



Customer churn is a major challenge for telecommunications companies because losing customers can directly affect recurring revenue.



This project analyzes customer churn behavior to understand which customer characteristics, services, contracts, tenure patterns, payment methods, and billing patterns are associated with customer churn.



The project follows an end-to-end data analytics workflow using Python, MySQL, and Power BI.



\---



\## Business Problem



A telecommunications company is experiencing customer churn and wants to understand which customer characteristics, services, contracts, and billing patterns are associated with customers leaving the company.



The objective is to:



\- Analyze overall customer churn

\- Identify high-churn customer segments

\- Understand the relationship between contract type and churn

\- Analyze churn across customer tenure groups

\- Identify payment methods associated with higher churn

\- Analyze the relationship between services and churn

\- Identify customers contributing to monthly revenue at risk

\- Build an interactive dashboard for business decision-making



\---



\## Dataset



The dataset used is the IBM Telco Customer Churn dataset.



The dataset contains customer-level information including:



\- Customer demographics

\- Tenure

\- Contract type

\- Internet service

\- Payment method

\- Monthly charges

\- Total charges

\- Additional services

\- Churn status



The dataset contains 7,043 customer records.



\---



\## Tools \& Technologies



\- Python

\- Pandas

\- NumPy

\- Jupyter Notebook

\- MySQL

\- SQL

\- Power BI

\- GitHub



\---



\## Project Workflow



\### 1. Data Cleaning \& Preparation — Python



The raw dataset was loaded and inspected using Pandas.



Data preparation included:



\- Checking dataset dimensions

\- Checking duplicate records

\- Checking missing values

\- Cleaning the `TotalCharges` column

\- Converting data types

\- Standardizing column names

\- Validating tenure and charge relationships



\### 2. Exploratory Data Analysis



Customer churn was analyzed across:



\- Gender

\- Senior citizen status

\- Tenure

\- Contract type

\- Internet service

\- Payment method

\- Monthly charges

\- Number of additional services



\### 3. Feature Engineering



Additional analytical features were created:



\- Tenure Group

\- Monthly Charge Group

\- Total Services

\- Risk Segment



\### 4. SQL Analysis — MySQL



The cleaned dataset was loaded into MySQL.



SQL analysis was performed to answer business questions related to:



\- Overall churn rate

\- Customer demographics

\- Tenure-based churn

\- Contract-based churn

\- Contract and internet service combinations

\- Number of services

\- High-value churned customers

\- Payment methods

\- Revenue at risk



\### 5. Power BI Dashboard



An interactive dashboard was created to monitor:



\- Total customers

\- Churned customers

\- Churn rate

\- Monthly revenue at risk

\- Churn rate by contract

\- Churn rate by tenure

\- Churn rate by payment method

\- Contract and internet service combinations

\- Churn rate by number of services



Interactive filters allow users to explore customer segments.



\---



\## Key Findings



\- Overall customer churn rate is \*\*26.54%\*\*.

\- Month-to-month contract customers have a substantially higher churn rate than customers on one-year or two-year contracts.

\- Customers with shorter tenure show higher churn rates.

\- Electronic check customers show a higher churn rate than the other payment methods in this dataset.

\- Fiber optic customers have a higher churn rate than DSL and customers without internet service.

\- The combination of month-to-month contracts and fiber optic internet shows a particularly high churn rate.

\- Customers with fewer or certain numbers of additional services show different churn patterns.

\- High-value churned customers represent a significant amount of monthly revenue at risk.



\---



\## Dashboard



The Power BI dashboard provides an interactive view of customer churn and retention patterns.



Users can filter the analysis by:



\- Contract

\- Internet Service

\- Payment Method

\- Tenure Group



\---



\## Project Files



| File | Description |

|---|---|

| `Customer\_Churn\_Analysis.ipynb` | Python data cleaning, EDA and feature engineering |

| `customer\_churn.csv` | Original dataset |

| `customer\_churn\_final.csv` | Cleaned and feature-engineered dataset |

| `Customer\_Churn\_Dashboard.pbix` | Power BI dashboard |

| `README.md` | Project documentation |



\---



\## Conclusion



This project demonstrates an end-to-end data analytics workflow from raw data preparation and exploratory analysis to SQL-based business analysis and interactive Power BI reporting.



The analysis helps identify customer segments with higher churn levels and highlights areas that can be investigated further for customer retention strategies.

