CREATE DATABASE customer_churn;
use customer_churn;
 show databases;
 
USE customer_churn;

-- Q1: How many customers does the company currently have, how many customers have churned, 
--     how many have been retained, and what is the overall customer churn rate?

SELECT
    COUNT(*) AS total_customers,
    SUM(churn = 'Yes') AS churned_customers,
    SUM(churn = 'No') AS retained_customers,
    ROUND(SUM(churn = 'Yes') / COUNT(*) * 100, 2) AS churn_rate
FROM churn_customers;

-- Q2:How does customer churn differ based on gender, 
-- senior-citizen status?

SELECT
    gender,
    COUNT(*) AS total_customers,
    SUM(IF(churn = 'Yes', 1, 0)) AS churned_customers,
    ROUND(SUM(IF(churn = 'Yes', 1, 0)) / COUNT(*) * 100,2) AS churn_rate
FROM churn_customers
GROUP BY gender;

-- Q2A: Churn by senior citizen status

SELECT IF(senior_citizen = 1, 'Senior Citizen', 'Non-Senior Citizen') AS customer_type,
    COUNT(*) AS total_customers,
    SUM(IF(churn = 'Yes', 1, 0)) AS churned_customers,
    ROUND(SUM(IF(churn = 'Yes', 1, 0)) / COUNT(*) * 100,2) AS churn_rate
FROM churn_customers
GROUP BY senior_citizen;

-- Q3: How does customer churn change as customers stay with the company for longer periods?

SELECT tenure_group,
    COUNT(*) AS total_customers,
    SUM(IF(churn = 'Yes', 1, 0)) AS churned_customers,
    ROUND(SUM(IF(churn = 'Yes', 1, 0)) / COUNT(*) * 100,2) AS churn_rate,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM churn_customers
GROUP BY tenure_group
ORDER BY churn_rate DESC;

-- Q4: Which contract types have the highest churn rate, and how does customer value differ across contract types?

SELECT contract,
    COUNT(*) AS total_customers,
    SUM(IF(churn = 'Yes', 1, 0)) AS churned_customers,
    ROUND(SUM(IF(churn = 'Yes', 1, 0)) / COUNT(*) * 100,2) AS churn_rate,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charges
FROM churn_customers
GROUP BY contract
ORDER BY churn_rate DESC;

-- Q5: Which contract + internet service combinations have the highest churn?

SELECT contract,internet_service,
    COUNT(*) AS total_customers,
    SUM(IF(churn = 'Yes', 1, 0)) AS churned_customers,
    ROUND(SUM(IF(churn = 'Yes', 1, 0)) / COUNT(*) * 100,2) AS churn_rate
FROM churn_customers
GROUP BY contract, internet_service
ORDER BY churn_rate DESC;

-- Q6: Does the number of services a customer uses relate to their likelihood of churning?

SELECT total_services,
    COUNT(*) AS total_customers,
    SUM(IF(churn = 'Yes', 1, 0)) AS churned_customers,
    ROUND(SUM(IF(churn = 'Yes', 1, 0)) / COUNT(*) * 100,2) AS churn_rate
FROM churn_customers
GROUP BY total_services
ORDER BY total_services;

-- Q7: Which churned customers are paying more than the average monthly charge?

SELECT customer_id,contract,tenure,monthly_charges,internet_service
FROM churn_customers
WHERE churn = 'Yes'
  AND monthly_charges > (SELECT AVG(monthly_charges) FROM churn_customers)
ORDER BY monthly_charges DESC;

-- Q8:How many high-value customers are we losing, and how much monthly revenue do they represent?

SELECT
    COUNT(*) AS high_value_churned_customers,
    ROUND(AVG(monthly_charges), 2) AS avg_monthly_charge,
    ROUND(SUM(monthly_charges), 2) AS total_monthly_revenue_at_risk
FROM churn_customers
WHERE churn = 'Yes'
  AND monthly_charges > (SELECT AVG(monthly_charges)FROM churn_customers);
  
-- Q9:Which payment methods have a higher churn rate than the overall company churn rate?  
  
  SELECT payment_method,
    ROUND(SUM(IF(churn = 'Yes', 1, 0)) / COUNT(*) * 100,2) AS churn_rate
FROM churn_customers
GROUP BY payment_method
HAVING SUM(IF(churn = 'Yes', 1, 0)) / COUNT(*) >
    (SELECT SUM(IF(churn = 'Yes', 1, 0)) / COUNT(*) FROM churn_customers)
ORDER BY churn_rate DESC;

-- Q10:Which customer segments generate the most churned customers?

SELECT contract,
    COUNT(*) AS churned_customers,
    ROUND(COUNT(*) / (SELECT COUNT(*)
            FROM churn_customers
            WHERE churn = 'Yes') * 100,2) AS share_of_total_churn
FROM churn_customers
WHERE churn = 'Yes'
GROUP BY contract
ORDER BY share_of_total_churn DESC;