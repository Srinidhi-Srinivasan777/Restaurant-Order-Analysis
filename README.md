
🍽️ Restaurant Order Analysis

📌 Project Overview

An descriptive data analysis project using MySQL to analyze restaurant orders, menu items, customer purchasing patterns, and high-value orders.

The project demonstrates how raw CSV data can be loaded into a relational database and analyzed using SQL to answer practical business questions.

🎯 Objectives
Explore the restaurant's menu and pricing.
Analyze order volume and purchasing patterns.
Identify the most and least ordered menu items.
Analyze high-value customer orders.
Understand purchasing behavior across food categories.
Practice SQL-based data exploration and business analysis.


🛠️ Tools & Technologies
MySQL — Data storage and analysis
SQL — Data exploration, joins, aggregation, filtering and sorting
CSV — Raw source data
GitHub — Project version control and documentation


📂 Dataset

The project uses two raw CSV files:

File	Description
menu_items.csv	Contains menu item information such as item name, category and price
order_details.csv	Contains individual order records, including order date, time and item ID
restaurant_db_data_dictionary.csv	Data dictionary describing the database fields

The CSV files represent the raw data. They are imported into MySQL before performing the analysis.

🗄️ Database Structure

The analysis uses two main tables:

menu_items

Contains information about the restaurant's menu.

Key fields include:

menu_item_id
item_name
category
price
order_details

Contains individual order transactions.

Key fields include:

order_details_id
order_id
order_date
order_time
item_id

The tables are connected through the menu item identifier.

🔍 Analysis Performed

The SQL analysis focuses on the following business questions:

Menu Analysis
How many items are available on the menu?
What are the least and most expensive items?
How many items belong to each category?
What is the average price by category?
What are the least and most expensive Italian dishes?
Order Analysis
What is the date range of the orders?
How many unique orders were placed?
How many individual items were ordered?
Which orders contain the most items?
How many orders contain more than 12 items?
Combined Analysis

The menu and order tables are joined to analyze:

Most and least ordered menu items
Popular food categories
Top 5 highest-spending orders
Item/category composition of high-value orders


📁 Project Structure

Restaurant-Order-Analysis/

│

├── menu_items.csv

├── order_details.csv

├── restaurant_db_data_dictionary.csv

│
├── create_restaurant_db.sql

├── Exploring table 1.sql

├── Exploring table 2.sql

└── The analysis.sql


🚀 How to Use
1. Clone the repository
Clone this using the git clone command.

2. Open MySQL

Use MySQL Workbench or another MySQL client.

3. Create the database and tables

Run:

create_restaurant_db.sql


This script creates the restaurant_db database and loads the required table structure/data.

4. Explore the datasets

Run the scripts in this order:

Exploring table 1.sql
Exploring table 2.sql


These scripts explore the menu_items and order_details tables separately.

5. Run the main analysis

Finally, run:

The analysis.sql


This script combines the tables and performs the main business analysis.

Note: If you are loading the CSV files manually instead of using the provided database script, import menu_items.csv and order_details.csv into the corresponding MySQL tables before running the analysis queries.

📊 Key SQL Concepts Demonstrated

This project demonstrates practical use of:

SELECT
WHERE
GROUP BY
ORDER BY
COUNT()
SUM()
AVG()
MIN() / MAX()
ROUND()
LIMIT
Subqueries
LEFT JOIN
Aggregation and business-focused analysis
💡 Key Takeaways

The analysis helps identify:

Which menu items customers order most frequently.
Which items have relatively low demand.
Which categories contribute most to order volume.
Which orders have the highest spending.
What menu/category combinations appear in high-value orders.

These insights can support decisions around menu optimization, product positioning and customer purchasing behavior.

⚠️ Limitations
The analysis is based on the available restaurant order dataset.
No external customer demographic or operational data is included.

🔮 Future Improvements

Potential extensions include:

Revenue and profit analysis over time.

Monthly and weekly sales trends.

Customer segmentation.

Repeat-customer analysis.

Dashboard development using Power BI or Tableau.

Automated data loading and reporting.

