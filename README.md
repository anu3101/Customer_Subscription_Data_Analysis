# Project Title: <br>

Customer Subscription Data Analysis and Segmentation Using SQL, Snowflake and Power BI. <br>

# Project Objective: <br>

The objective of this project is to analyze the subscription data of over 100K customers from a digital streaming service. The goal is to extract actionable insights, segment the customer base, and visualize key metrics. This analysis will help in understanding customer behavior, revenue contributions, and identifying potential churn risks.

# Tools and Technologies Used:  <br>
Database: Snowflake <br>

Query Language: SQL (Snowflake) <br>

Data Visualization: Power BI <br>

# Dataset Overview:
The dataset contains detailed information about customer subscriptions, including account age, monthly and total charges, subscription type, payment methods, content preferences, and more. The key columns in the dataset include: <br>

CustomerID: Unique identifier for each customer. <br>
AccountAge: Number of months the customer has been with the service. <br>
MonthlyCharges: Amount charged to the customer monthly. <br>
TotalCharges: Total revenue generated from the customer. <br>
SubscriptionType: Type of subscription chosen by the customer. <br>
PaymentMethod: Method used by the customer for payment. <br>
ContentType: Type of content preferred by the customer. <br>
ViewingHoursPerWeek: Average hours of content viewed per week. <br>
average_revenue: Newly calculated column representing average revenue per user. <br>
CustomerSegment: Newly calculated column representing customer segments (e.g., Low, Medium, High). <br>

# Data Processing and Transformation:
**Data Cleaning**: The raw data was cleaned to remove inconsistencies, null values, and duplicates. <br>

**Data Transformation**: Calculated average_revenue based on monthly and total charges. <br>

**ETL Process**: Designed and executed an ETL process in Snowflake to ensure smooth data transformation and integrity. <br>

**SQL Query Execution**: SQL queries, ranging from basic to advanced, were executed on the clean dataset to extract meaningful insights: <br>

# Data Visualization: <br>
Connected Snowflake with Power BI to develop an interactive dashboard for enhancing data visualization.<br>

# Future Work. <br>
Automation: Automate the ETL process for real-time data updates. <br>

Deeper Analysis: Perform a deeper dive into content preferences and their impact on customer retention. <br>

