 Customer Churn & Retention Analytics

## Project Overview

Customer churn is an important challenge for telecommunications companies because losing customers can reduce recurring revenue and increase the cost of acquiring new customers.

This project analyzes customer churn behavior to identify customer segments, services, contract types, tenure patterns, payment methods, and billing characteristics associated with customer churn.

The project follows an end-to-end data analytics workflow using Python, MySQL, SQL, and Power BI.

---

## Business Problem

A telecommunications company is experiencing customer churn and wants to understand which customer characteristics, services, contracts, and billing patterns are associated with customers leaving the company.

The objectives of this analysis are to:

* Measure the overall customer churn rate
* Identify customer segments with higher churn
* Analyze churn by contract type and customer tenure
* Understand the relationship between internet service and churn
* Analyze churn across payment methods
* Examine the relationship between the number of services and churn
* Identify high-value churned customers
* Estimate monthly revenue at risk
* Build an interactive Power BI dashboard for business analysis

---

## Dataset

The project uses the IBM Telco Customer Churn sample dataset.

The dataset contains 7,043 customer records and includes information about:

* Customer demographics
* Tenure
* Phone and internet services
* Additional services
* Contract type
* Payment method
* Monthly charges
* Total charges
* Customer churn status

The dataset is a fictional/sample telecommunications dataset provided by IBM.

---

## Tools & Technologies

* Python
* Pandas
* NumPy
* Jupyter Notebook
* MySQL
* SQL
* Power BI
* GitHub

---

## Project Workflow

 1. Data Cleaning & Preparation — Python

The raw customer dataset was loaded and analyzed using Pandas.

Data preparation included:

* Inspecting the dataset structure
* Checking for duplicate records
* Checking missing values
* Cleaning blank values in TotalCharges
* Converting columns to appropriate data types
* Standardizing column names
* Validating customer tenure and charge relationships

The complete Python workflow is available in:

Customer_Churn_Analysis.ipynb

---

 2. Exploratory Data Analysis

Customer churn was analyzed across several dimensions, including:

* Gender
* Senior citizen status
* Customer tenure
* Contract type
* Internet service
* Payment method
* Monthly charges
* Number of additional services

---

 3. Feature Engineering

Additional analytical features were created to support segmentation and business analysis:

* Tenure Group
* Monthly Charge Group
* Total Services
* Risk Segment

The final processed dataset is available in:

`customer_churn_final.csv`

---

 4. SQL Analysis — MySQL

The cleaned dataset was loaded into MySQL and analyzed using SQL.

Business questions included:

* What is the overall customer churn rate?
* How does churn vary by customer demographics?
* Which tenure groups have higher churn?
* How does churn vary by contract type?
* Which contract and internet-service combinations have higher churn?
* How does the number of services relate to churn?
* Which high-value customers have churned?
* Which payment methods are associated with higher churn?
* How much monthly revenue is associated with high-value churned customers?
* What proportion of total churn comes from each contract type?

The SQL analysis is available in:

`customer_churn.sql`

---

## Key Findings

The analysis identified several notable patterns in the dataset:

* Overall customer churn rate is 26.54%.
* Month-to-month contract customers have a substantially higher churn rate than customers with one-year or two-year contracts.
* Customers with shorter tenure have higher churn rates.
* Electronic check customers have the highest churn rate among the payment methods analyzed.
* Fiber optic customers have a higher churn rate than DSL and customers without internet service.
* Month-to-month customers using fiber optic internet show a particularly high churn rate.
* Churn varies considerably based on the number of additional services used.
* High-value churned customers represent a significant amount of monthly revenue at risk.

These findings describe patterns in the sample dataset and should not be interpreted as causal relationships.

---

## Power BI Dashboard

The Power BI dashboard summarizes the analysis using interactive visualizations.

The dashboard includes:

* Total Customers
* Churned Customers
* Overall Churn Rate
* Monthly Revenue at Risk
* Churn Rate by Contract
* Churn Rate by Tenure
* Churn Rate by Payment Method
* Contract × Internet Service churn analysis
* Churn Rate by Number of Services
* Interactive filters for customer segmentation

Power BI file:

`customer_churn.pbix`

---

## Project Files

| File                            | Description                                        |
| ------------------------------- | -------------------------------------------------- |
| `Customer_Churn_Analysis.ipynb` | Python data cleaning, EDA, and feature engineering |
| `Customer_Churn.csv`            | Original/raw dataset                               |
| `customer_churn_final.csv`      | Cleaned and feature-engineered dataset             |
| `customer_churn.sql`            | MySQL business analysis queries                    |
| `customer_churn.pbix`           | Power BI dashboard                                 |
| `README.md`                     | Project documentation                              |

---

## Business Insights

The analysis highlights several areas that a telecommunications company could investigate further for retention planning:

1. Contract strategy
   Month-to-month customers show substantially higher churn than customers on longer-term contracts.

2. Early-tenure customers
   Customers in the early stages of their relationship with the company show higher churn rates, suggesting that onboarding and early customer experience are important areas for further investigation.

3. Payment behavior
   Electronic check customers show higher churn than the other payment methods in this dataset.

4. Service combinations
   Churn varies across combinations of contract type and internet service, with month-to-month fiber customers showing particularly high churn.

5. Revenue exposure
   High-value churned customers represent an important revenue-at-risk segment that can be prioritized for further retention analysis.

---

## Conclusion

This project demonstrates an end-to-end data analytics workflow:

Raw Data → Python Cleaning & EDA → Feature Engineering → MySQL & SQL Analysis → Power BI Dashboard → Business Insights

The project demonstrates practical skills in data cleaning, exploratory analysis, feature engineering, SQL querying, dashboard development, and communicating analytical findings.

---

## Data Source

IBM Telco Customer Churn sample dataset.

Source: IBM Cognos Analytics sample data documentation.

This project is created for educational and portfolio purposes.
