SELECT * 
FROM saas_users
LIMIT 5;


--1️⃣ Revenue by subscription plan

SELECT 
    plan_type,
    COUNT(*) AS total_users,
    SUM(monthly_revenue) AS total_revenue,
    AVG(monthly_revenue) AS avg_revenue
FROM saas_users
GROUP BY plan_type;
 --🧠 Insight:--

--which plan brings the most money?--

--2️⃣ Feature adoption impact on revenue
SELECT 
    advanced_feature_used,
    COUNT(*) AS users,
    AVG(monthly_revenue) AS avg_revenue
FROM saas_users
GROUP BY advanced_feature_used; --Advanced feature users generate higher revenue.--

--3️⃣ Upsell candidates--

SELECT 
    user_id,
    plan_type,
    feature_usage_score,
    monthly_revenue
FROM saas_users
WHERE plan_type = 'Basic'
  AND feature_usage_score > 70
ORDER BY feature_usage_score DESC; --These users should be targeted for upgrade emails.

--4️⃣ User activity vs feature usage
SELECT 
    CASE 
        WHEN active_days < 180 THEN 'Low Activity'
        WHEN active_days BETWEEN 180 AND 360 THEN 'Medium Activity'
        ELSE 'High Activity'
    END AS activity_segment,
    AVG(feature_usage_score) AS avg_feature_usage
FROM saas_users
GROUP BY activity_segment; --More active users adopt more features.

--I used SQLite in VS Code to analyze feature adoption patterns, segment users, and identify high-potential upsell customers using SQL queries.--

--CTEs
WITH high_usage_users AS (
    SELECT *
    FROM saas_users
    WHERE feature_usage_score > 70
)
SELECT plan_type, COUNT(*) AS users
FROM high_usage_users
GROUP BY plan_type;
--Basic and Pro plans have the most high-usage users.-- 


--Window Functions
SELECT 
    user_id,
    plan_type,
    monthly_revenue,
    RANK() OVER (PARTITION BY plan_type ORDER BY monthly_revenue DESC) AS revenue_rank
FROM saas_users;
--I used window functions to rank users within each plan.--



--CASE Statements
SELECT 
    user_id,
    CASE
        WHEN feature_usage_score > 70 THEN 'High Usage'
        WHEN feature_usage_score BETWEEN 40 AND 70 THEN 'Medium Usage'
        ELSE 'Low Usage'
    END AS usage_segment
FROM saas_users;



--Cohort Analysis in SQL
SELECT 
    strftime('%Y-%m', signup_date) AS signup_month,
    COUNT(*) AS users,
    AVG(monthly_revenue) AS avg_revenue
FROM saas_users
GROUP BY signup_month
ORDER BY signup_month;--Users who signed up earlier tend to have higher average revenue.--   
--I used cohort analysis to group users by signup month and analyze how revenue and user behavior changed over time 


--Business-Driven SQL Metrics
SELECT 
    plan_type,
    ROUND(AVG(feature_usage_score),2) AS avg_feature_usage,
    ROUND(SUM(monthly_revenue) * 1.0 / COUNT(*),2) AS arpu
FROM saas_users
GROUP BY plan_type;
--ARPU (Average Revenue Per User) is a key metric for SaaS businesses.--    


--TOP 10 USERS BY REVENUE

SELECT 
    user_id,
    plan_type,
    monthly_revenue
FROM saas_users
ORDER BY monthly_revenue DESC
LIMIT 10;
--Target these top users for premium features and loyalty programs.--       